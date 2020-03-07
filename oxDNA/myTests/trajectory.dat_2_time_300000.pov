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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<42.389122, 46.453831, 57.582298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760849, 46.435677, 57.435707>,  <42.983887, 46.424786, 57.347752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760849, 46.435677, 57.435707>,  <42.389122, 46.453831, 57.582298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760849, 46.435677, 57.435707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367378, -0.214091, -0.905096,
		-0.037380, 0.975759, -0.215634,
		0.929320, -0.045387, -0.366475,
		43.039646, 46.422062, 57.325764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256565, 46.650436, 56.897209>,  <42.389122, 46.453831, 57.582298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256565, 46.650436, 56.897209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630791, 46.509399, 56.889149>,  <42.855324, 46.424778, 56.884312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630791, 46.509399, 56.889149>,  <42.256565, 46.650436, 56.897209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630791, 46.509399, 56.889149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111110, -0.239703, -0.964467,
		0.335236, 0.904555, -0.263433,
		0.935559, -0.352594, -0.020148,
		42.911457, 46.403622, 56.883106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594284, 46.972858, 56.293537>,  <42.256565, 46.650436, 56.897209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594284, 46.972858, 56.293537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764091, 46.624229, 56.391632>,  <42.865974, 46.415051, 56.450489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764091, 46.624229, 56.391632>,  <42.594284, 46.972858, 56.293537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764091, 46.624229, 56.391632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000134, -0.270795, -0.962637,
		0.905421, 0.408687, -0.114840,
		0.424516, -0.871576, 0.245237,
		42.891445, 46.362755, 56.465202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127274, 46.954479, 55.779396>,  <42.594284, 46.972858, 56.293537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127274, 46.954479, 55.779396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050011, 46.592789, 55.931747>,  <43.003654, 46.375774, 56.023159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050011, 46.592789, 55.931747>,  <43.127274, 46.954479, 55.779396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050011, 46.592789, 55.931747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171887, -0.351000, -0.920464,
		0.965994, -0.243263, -0.087626,
		-0.193158, -0.904225, 0.380878,
		42.992062, 46.321522, 56.046009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641083, 46.501202, 55.481369>,  <43.127274, 46.954479, 55.779396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641083, 46.501202, 55.481369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345474, 46.263245, 55.607826>,  <43.168110, 46.120468, 55.683701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345474, 46.263245, 55.607826>,  <43.641083, 46.501202, 55.481369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345474, 46.263245, 55.607826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015321, -0.483994, -0.874937,
		0.673508, -0.641753, 0.366797,
		-0.739021, -0.594897, 0.316142,
		43.123768, 46.084774, 55.702667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768833, 45.882515, 55.147533>,  <43.641083, 46.501202, 55.481369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768833, 45.882515, 55.147533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390991, 45.833271, 55.269234>,  <43.164288, 45.803726, 55.342255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390991, 45.833271, 55.269234>,  <43.768833, 45.882515, 55.147533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390991, 45.833271, 55.269234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224063, -0.435505, -0.871855,
		0.239838, -0.891728, 0.383795,
		-0.944603, -0.123110, 0.304253,
		43.107609, 45.796337, 55.360508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525311, 45.214642, 55.010941>,  <43.768833, 45.882515, 55.147533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525311, 45.214642, 55.010941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193199, 45.435234, 55.043209>,  <42.993935, 45.567589, 55.062572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193199, 45.435234, 55.043209>,  <43.525311, 45.214642, 55.010941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193199, 45.435234, 55.043209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377310, -0.449618, -0.809618,
		-0.410217, -0.702646, 0.581387,
		-0.830276, 0.551482, 0.080675,
		42.944115, 45.600677, 55.067410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957832, 44.753941, 55.022724>,  <43.525311, 45.214642, 55.010941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957832, 44.753941, 55.022724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801376, 45.106258, 54.915981>,  <42.707500, 45.317650, 54.851936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801376, 45.106258, 54.915981>,  <42.957832, 44.753941, 55.022724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801376, 45.106258, 54.915981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478430, -0.442297, -0.758602,
		-0.786201, -0.169049, 0.594399,
		-0.391142, 0.880793, -0.266857,
		42.684032, 45.370495, 54.835926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409100, 44.534523, 54.725262>,  <42.957832, 44.753941, 55.022724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409100, 44.534523, 54.725262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449684, 44.911095, 54.596634>,  <42.474037, 45.137039, 54.519459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449684, 44.911095, 54.596634>,  <42.409100, 44.534523, 54.725262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449684, 44.911095, 54.596634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391800, -0.259300, -0.882755,
		-0.914438, 0.215561, 0.342544,
		0.101466, 0.941433, -0.321571,
		42.480125, 45.193523, 54.500164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793552, 44.653835, 54.348618>,  <42.409100, 44.534523, 54.725262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793552, 44.653835, 54.348618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056213, 44.926876, 54.220329>,  <42.213810, 45.090702, 54.143356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056213, 44.926876, 54.220329>,  <41.793552, 44.653835, 54.348618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056213, 44.926876, 54.220329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347785, -0.103276, -0.931869,
		-0.669221, 0.723454, 0.169583,
		0.656650, 0.682604, -0.320720,
		42.253208, 45.131657, 54.124115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433384, 45.027939, 53.883854>,  <41.793552, 44.653835, 54.348618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433384, 45.027939, 53.883854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815498, 45.097366, 53.788109>,  <42.044769, 45.139023, 53.730659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815498, 45.097366, 53.788109>,  <41.433384, 45.027939, 53.883854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815498, 45.097366, 53.788109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225565, -0.095592, -0.969527,
		-0.191159, 0.980172, -0.052167,
		0.955290, 0.173567, -0.239365,
		42.102085, 45.149437, 53.716301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350975, 45.273849, 53.233917>,  <41.433384, 45.027939, 53.883854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350975, 45.273849, 53.233917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743874, 45.199978, 53.247124>,  <41.979610, 45.155655, 53.255047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743874, 45.199978, 53.247124>,  <41.350975, 45.273849, 53.233917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743874, 45.199978, 53.247124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027331, -0.033260, -0.999073,
		0.185609, 0.982235, -0.027622,
		0.982243, -0.184682, 0.033019,
		42.038548, 45.144573, 53.257030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607430, 45.690861, 52.737865>,  <41.350975, 45.273849, 53.233917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607430, 45.690861, 52.737865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880997, 45.414425, 52.831383>,  <42.045135, 45.248566, 52.887493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880997, 45.414425, 52.831383>,  <41.607430, 45.690861, 52.737865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880997, 45.414425, 52.831383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257440, -0.071238, -0.963665,
		0.682631, 0.719252, 0.129193,
		0.683915, -0.691087, 0.233794,
		42.086170, 45.207100, 52.901520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202858, 45.813820, 52.453228>,  <41.607430, 45.690861, 52.737865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202858, 45.813820, 52.453228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255760, 45.421337, 52.509422>,  <42.287502, 45.185848, 52.543140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255760, 45.421337, 52.509422>,  <42.202858, 45.813820, 52.453228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255760, 45.421337, 52.509422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380232, -0.080671, -0.921367,
		0.915387, 0.175273, 0.362418,
		0.132254, -0.981209, 0.140489,
		42.295437, 45.126976, 52.551571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847050, 45.685364, 52.097897>,  <42.202858, 45.813820, 52.453228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847050, 45.685364, 52.097897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654091, 45.340588, 52.160316>,  <42.538315, 45.133720, 52.197769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654091, 45.340588, 52.160316>,  <42.847050, 45.685364, 52.097897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654091, 45.340588, 52.160316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214553, -0.288988, -0.932981,
		0.849270, -0.416586, 0.324339,
		-0.482397, -0.861941, 0.156049,
		42.509373, 45.082005, 52.207130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256886, 45.277336, 51.906261>,  <42.847050, 45.685364, 52.097897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256886, 45.277336, 51.906261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928009, 45.050785, 51.883560>,  <42.730682, 44.914856, 51.869938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928009, 45.050785, 51.883560>,  <43.256886, 45.277336, 51.906261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928009, 45.050785, 51.883560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297404, -0.342427, -0.891232,
		0.485336, -0.749643, 0.449982,
		-0.822192, -0.566373, -0.056755,
		42.681351, 44.880875, 51.866535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468124, 44.617828, 51.635288>,  <43.256886, 45.277336, 51.906261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468124, 44.617828, 51.635288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075356, 44.617626, 51.559570>,  <42.839695, 44.617504, 51.514141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075356, 44.617626, 51.559570>,  <43.468124, 44.617828, 51.635288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075356, 44.617626, 51.559570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178420, -0.336567, -0.924602,
		-0.063243, -0.941660, 0.330572,
		-0.981920, -0.000506, -0.189296,
		42.780781, 44.617474, 51.502781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337223, 44.044456, 51.216106>,  <43.468124, 44.617828, 51.635288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337223, 44.044456, 51.216106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986984, 44.217964, 51.131096>,  <42.776840, 44.322067, 51.080090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986984, 44.217964, 51.131096>,  <43.337223, 44.044456, 51.216106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986984, 44.217964, 51.131096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109092, -0.251032, -0.961812,
		-0.470555, -0.865349, 0.172483,
		-0.875601, 0.433768, -0.212527,
		42.724304, 44.348095, 51.067337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915802, 43.523155, 50.771530>,  <43.337223, 44.044456, 51.216106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915802, 43.523155, 50.771530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807106, 43.904575, 50.719532>,  <42.741890, 44.133427, 50.688332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807106, 43.904575, 50.719532>,  <42.915802, 43.523155, 50.771530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807106, 43.904575, 50.719532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052481, -0.120195, -0.991362,
		-0.960939, -0.276216, -0.017381,
		-0.271741, 0.953550, -0.129996,
		42.725582, 44.190639, 50.680534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400360, 43.522232, 50.257950>,  <42.915802, 43.523155, 50.771530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400360, 43.522232, 50.257950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480896, 43.913876, 50.246601>,  <42.529217, 44.148861, 50.239792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480896, 43.913876, 50.246601>,  <42.400360, 43.522232, 50.257950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480896, 43.913876, 50.246601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039042, -0.020917, -0.999019,
		-0.978744, 0.202247, 0.034015,
		0.201337, 0.979111, -0.028369,
		42.541298, 44.207607, 50.238091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872135, 43.834267, 49.757050>,  <42.400360, 43.522232, 50.257950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872135, 43.834267, 49.757050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196259, 44.066750, 49.786991>,  <42.390732, 44.206238, 49.804955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196259, 44.066750, 49.786991>,  <41.872135, 43.834267, 49.757050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196259, 44.066750, 49.786991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001846, 0.125196, -0.992130,
		-0.586002, 0.804069, 0.100375,
		0.810307, 0.581205, 0.074850,
		42.439350, 44.241112, 49.809444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746719, 44.272587, 49.290295>,  <41.872135, 43.834267, 49.757050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746719, 44.272587, 49.290295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143532, 44.306156, 49.327866>,  <42.381618, 44.326298, 49.350407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143532, 44.306156, 49.327866>,  <41.746719, 44.272587, 49.290295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143532, 44.306156, 49.327866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090780, 0.040558, -0.995045,
		-0.087316, 0.995646, 0.032616,
		0.992036, 0.083923, 0.093926,
		42.441143, 44.331333, 49.356045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957886, 44.834969, 48.793690>,  <41.746719, 44.272587, 49.290295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957886, 44.834969, 48.793690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304955, 44.660122, 48.888409>,  <42.513195, 44.555214, 48.945240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304955, 44.660122, 48.888409>,  <41.957886, 44.834969, 48.793690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304955, 44.660122, 48.888409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243032, -0.042567, -0.969084,
		0.433680, 0.898398, 0.069298,
		0.867673, -0.437114, 0.236800,
		42.565258, 44.528988, 48.959450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460571, 45.173279, 48.449947>,  <41.957886, 44.834969, 48.793690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460571, 45.173279, 48.449947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639725, 44.827435, 48.541035>,  <42.747215, 44.619930, 48.595688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639725, 44.827435, 48.541035>,  <42.460571, 45.173279, 48.449947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639725, 44.827435, 48.541035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349803, -0.064937, -0.934570,
		0.822824, 0.498234, 0.273358,
		0.447884, -0.864607, 0.227715,
		42.774090, 44.568050, 48.609348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208218, 45.234531, 48.362232>,  <42.460571, 45.173279, 48.449947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208218, 45.234531, 48.362232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115128, 44.845825, 48.346634>,  <43.059273, 44.612602, 48.337273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115128, 44.845825, 48.346634>,  <43.208218, 45.234531, 48.362232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115128, 44.845825, 48.346634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538867, -0.095462, -0.836964,
		0.809606, -0.215796, 0.545866,
		-0.232723, -0.971761, -0.038999,
		43.045311, 44.554298, 48.334934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752663, 44.952412, 48.035404>,  <43.208218, 45.234531, 48.362232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752663, 44.952412, 48.035404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487083, 44.655064, 48.002983>,  <43.327736, 44.476654, 47.983532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487083, 44.655064, 48.002983>,  <43.752663, 44.952412, 48.035404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487083, 44.655064, 48.002983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396977, -0.258546, -0.880661,
		0.633703, -0.616889, 0.466763,
		-0.663950, -0.743372, -0.081050,
		43.287899, 44.432053, 47.978668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166920, 44.480068, 47.681992>,  <43.752663, 44.952412, 48.035404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166920, 44.480068, 47.681992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791870, 44.348793, 47.636101>,  <43.566841, 44.270027, 47.608566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791870, 44.348793, 47.636101>,  <44.166920, 44.480068, 47.681992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791870, 44.348793, 47.636101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159142, -0.111752, -0.980910,
		0.309098, -0.937980, 0.157009,
		-0.937620, -0.328184, -0.114730,
		43.510586, 44.250340, 47.601681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151237, 43.835632, 47.221298>,  <44.166920, 44.480068, 47.681992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151237, 43.835632, 47.221298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799538, 44.023735, 47.190887>,  <43.588516, 44.136597, 47.172642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799538, 44.023735, 47.190887>,  <44.151237, 43.835632, 47.221298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799538, 44.023735, 47.190887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106236, 0.037990, -0.993615,
		-0.464366, -0.881712, -0.083361,
		-0.879249, 0.470257, -0.076029,
		43.535763, 44.164810, 47.168079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812828, 43.665230, 46.504440>,  <44.151237, 43.835632, 47.221298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812828, 43.665230, 46.504440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596672, 43.985390, 46.608238>,  <43.466980, 44.177486, 46.670517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596672, 43.985390, 46.608238>,  <43.812828, 43.665230, 46.504440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596672, 43.985390, 46.608238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014354, 0.299584, -0.953962,
		-0.841293, -0.519235, -0.150403,
		-0.540389, 0.800403, 0.259491,
		43.434555, 44.225510, 46.686085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298840, 43.769012, 45.950359>,  <43.812828, 43.665230, 46.504440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298840, 43.769012, 45.950359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308311, 44.124027, 46.134415>,  <43.313995, 44.337036, 46.244846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308311, 44.124027, 46.134415>,  <43.298840, 43.769012, 45.950359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308311, 44.124027, 46.134415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130337, 0.459075, -0.878784,
		-0.991187, -0.039167, 0.126548,
		0.023676, 0.887534, 0.460134,
		43.315414, 44.390285, 46.272453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693718, 44.163551, 45.703140>,  <43.298840, 43.769012, 45.950359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693718, 44.163551, 45.703140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924446, 44.452393, 45.855896>,  <43.062881, 44.625698, 45.947548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924446, 44.452393, 45.855896>,  <42.693718, 44.163551, 45.703140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924446, 44.452393, 45.855896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105083, 0.529213, -0.841956,
		-0.810083, 0.445529, 0.381143,
		0.576822, 0.722106, 0.381889,
		43.097492, 44.669025, 45.970463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381489, 44.842239, 45.518066>,  <42.693718, 44.163551, 45.703140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381489, 44.842239, 45.518066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763962, 44.933334, 45.591667>,  <42.993446, 44.987991, 45.635826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763962, 44.933334, 45.591667>,  <42.381489, 44.842239, 45.518066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763962, 44.933334, 45.591667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008081, 0.607687, -0.794135,
		-0.292668, 0.760823, 0.579218,
		0.956180, 0.227737, 0.183999,
		43.050816, 45.001656, 45.646866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499886, 45.548973, 45.444111>,  <42.381489, 44.842239, 45.518066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499886, 45.548973, 45.444111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869019, 45.404556, 45.390411>,  <43.090500, 45.317905, 45.358192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869019, 45.404556, 45.390411>,  <42.499886, 45.548973, 45.444111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869019, 45.404556, 45.390411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052627, 0.463430, -0.884569,
		0.381585, 0.809246, 0.446670,
		0.922834, -0.361045, -0.134250,
		43.145870, 45.296242, 45.350136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875683, 46.074947, 45.178398>,  <42.499886, 45.548973, 45.444111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875683, 46.074947, 45.178398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083435, 45.751389, 45.068180>,  <43.208084, 45.557251, 45.002048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083435, 45.751389, 45.068180>,  <42.875683, 46.074947, 45.178398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083435, 45.751389, 45.068180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051270, 0.351367, -0.934833,
		0.853005, 0.471405, 0.223964,
		0.519379, -0.808900, -0.275549,
		43.239250, 45.508720, 44.985516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328785, 46.399399, 44.748039>,  <42.875683, 46.074947, 45.178398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328785, 46.399399, 44.748039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324738, 46.005596, 44.678013>,  <43.322308, 45.769314, 44.635998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324738, 46.005596, 44.678013>,  <43.328785, 46.399399, 44.748039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324738, 46.005596, 44.678013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221023, 0.168543, -0.960595,
		0.975216, -0.048412, 0.215893,
		-0.010117, -0.984505, -0.175066,
		43.321701, 45.710243, 44.625492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726410, 46.399281, 44.145592>,  <43.328785, 46.399399, 44.748039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726410, 46.399281, 44.145592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563957, 46.033844, 44.153667>,  <43.466488, 45.814583, 44.158512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563957, 46.033844, 44.153667>,  <43.726410, 46.399281, 44.145592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563957, 46.033844, 44.153667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002744, -0.023309, -0.999725,
		0.913812, -0.405962, 0.011973,
		-0.406129, -0.913593, 0.020186,
		43.442120, 45.759766, 44.159721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207851, 45.951008, 43.727810>,  <43.726410, 46.399281, 44.145592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207851, 45.951008, 43.727810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817627, 45.863110, 43.727818>,  <43.583492, 45.810371, 43.727821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817627, 45.863110, 43.727818>,  <44.207851, 45.951008, 43.727810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817627, 45.863110, 43.727818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029223, 0.129653, -0.991129,
		0.217795, -0.966903, -0.132906,
		-0.975557, -0.219747, 0.000018,
		43.524960, 45.797188, 43.727821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170155, 45.387054, 43.266670>,  <44.207851, 45.951008, 43.727810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170155, 45.387054, 43.266670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804916, 45.549759, 43.277958>,  <43.585773, 45.647381, 43.284733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804916, 45.549759, 43.277958>,  <44.170155, 45.387054, 43.266670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804916, 45.549759, 43.277958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041054, -0.022852, -0.998896,
		-0.405668, -0.913248, 0.037565,
		-0.913098, 0.406762, 0.028222,
		43.530987, 45.671787, 43.286427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728073, 44.972050, 42.843163>,  <44.170155, 45.387054, 43.266670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728073, 44.972050, 42.843163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567436, 45.337502, 42.868454>,  <43.471054, 45.556774, 42.883629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567436, 45.337502, 42.868454>,  <43.728073, 44.972050, 42.843163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567436, 45.337502, 42.868454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126741, 0.012935, -0.991852,
		-0.907007, -0.406331, 0.110600,
		-0.401590, 0.913634, 0.063231,
		43.446960, 45.611591, 42.887424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109585, 44.864162, 42.348610>,  <43.728073, 44.972050, 42.843163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109585, 44.864162, 42.348610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182190, 45.253002, 42.408051>,  <43.225754, 45.486305, 42.443714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182190, 45.253002, 42.408051>,  <43.109585, 44.864162, 42.348610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182190, 45.253002, 42.408051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394767, 0.210435, -0.894358,
		-0.900673, 0.103675, 0.421948,
		0.181515, 0.972095, 0.148605,
		43.236645, 45.544632, 42.452633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480522, 45.172859, 42.262741>,  <43.109585, 44.864162, 42.348610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480522, 45.172859, 42.262741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752922, 45.460575, 42.207787>,  <42.916363, 45.633205, 42.174816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752922, 45.460575, 42.207787>,  <42.480522, 45.172859, 42.262741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752922, 45.460575, 42.207787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318536, 0.122037, -0.940022,
		-0.659378, 0.683912, 0.312225,
		0.680996, 0.719285, -0.137382,
		42.957222, 45.676361, 42.166573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203743, 45.555988, 41.651497>,  <42.480522, 45.172859, 42.262741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203743, 45.555988, 41.651497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572304, 45.704422, 41.697639>,  <42.793442, 45.793484, 41.725327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572304, 45.704422, 41.697639>,  <42.203743, 45.555988, 41.651497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572304, 45.704422, 41.697639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039632, 0.205564, -0.977841,
		-0.386576, 0.905560, 0.174701,
		0.921406, 0.371086, 0.115355,
		42.848724, 45.815746, 41.732246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222462, 46.285732, 41.430603>,  <42.203743, 45.555988, 41.651497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222462, 46.285732, 41.430603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601097, 46.157623, 41.415653>,  <42.828278, 46.080757, 41.406681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601097, 46.157623, 41.415653>,  <42.222462, 46.285732, 41.430603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601097, 46.157623, 41.415653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059878, 0.288496, -0.955607,
		0.316835, 0.902329, 0.292264,
		0.946589, -0.320270, -0.037376,
		42.885075, 46.061543, 41.404442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615143, 46.795040, 41.096233>,  <42.222462, 46.285732, 41.430603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615143, 46.795040, 41.096233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833527, 46.462929, 41.051392>,  <42.964558, 46.263660, 41.024487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833527, 46.462929, 41.051392>,  <42.615143, 46.795040, 41.096233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833527, 46.462929, 41.051392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256829, 0.293217, -0.920903,
		0.797478, 0.473980, 0.373324,
		0.545955, -0.830281, -0.112102,
		42.997314, 46.213844, 41.017761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032082, 47.039062, 40.621838>,  <42.615143, 46.795040, 41.096233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032082, 47.039062, 40.621838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090744, 46.643593, 40.609035>,  <43.125942, 46.406311, 40.601353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090744, 46.643593, 40.609035>,  <43.032082, 47.039062, 40.621838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090744, 46.643593, 40.609035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376072, 0.085652, -0.922623,
		0.914911, 0.123273, 0.384372,
		0.146657, -0.988670, -0.032005,
		43.134743, 46.346992, 40.599434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550968, 46.969723, 40.114956>,  <43.032082, 47.039062, 40.621838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550968, 46.969723, 40.114956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427124, 46.589432, 40.121323>,  <43.352818, 46.361256, 40.125141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427124, 46.589432, 40.121323>,  <43.550968, 46.969723, 40.114956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427124, 46.589432, 40.121323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383142, -0.140060, -0.913009,
		0.870254, -0.276581, 0.407628,
		-0.309614, -0.950729, 0.015918,
		43.334240, 46.304214, 40.126099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124195, 46.549503, 39.895588>,  <43.550968, 46.969723, 40.114956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124195, 46.549503, 39.895588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795052, 46.336845, 39.815334>,  <43.597565, 46.209251, 39.767181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795052, 46.336845, 39.815334>,  <44.124195, 46.549503, 39.895588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795052, 46.336845, 39.815334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263452, -0.044084, -0.963665,
		0.503483, -0.845819, 0.176338,
		-0.822859, -0.531645, -0.200637,
		43.548195, 46.177353, 39.755142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409805, 46.396503, 39.196915>,  <44.124195, 46.549503, 39.895588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409805, 46.396503, 39.196915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038994, 46.249489, 39.226669>,  <43.816505, 46.161278, 39.244522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038994, 46.249489, 39.226669>,  <44.409805, 46.396503, 39.196915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038994, 46.249489, 39.226669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020538, -0.247838, -0.968584,
		0.374428, -0.896377, 0.237301,
		-0.927028, -0.367539, 0.074388,
		43.760887, 46.139229, 39.248985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312511, 45.623020, 38.882511>,  <44.409805, 46.396503, 39.196915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312511, 45.623020, 38.882511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951004, 45.793591, 38.897297>,  <43.734100, 45.895931, 38.906170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951004, 45.793591, 38.897297>,  <44.312511, 45.623020, 38.882511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951004, 45.793591, 38.897297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137520, -0.207506, -0.968519,
		-0.405332, -0.880399, 0.246179,
		-0.903766, 0.426426, 0.036964,
		43.679874, 45.921520, 38.908386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928207, 45.183533, 38.485680>,  <44.312511, 45.623020, 38.882511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928207, 45.183533, 38.485680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722603, 45.525455, 38.514256>,  <43.599239, 45.730610, 38.531403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722603, 45.525455, 38.514256>,  <43.928207, 45.183533, 38.485680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722603, 45.525455, 38.514256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151890, -0.008730, -0.988359,
		-0.844229, -0.518878, 0.134323,
		-0.514010, 0.854804, 0.071442,
		43.568401, 45.781898, 38.535686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389782, 45.049099, 38.080967>,  <43.928207, 45.183533, 38.485680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389782, 45.049099, 38.080967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398743, 45.448887, 38.071449>,  <43.404118, 45.688759, 38.065739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398743, 45.448887, 38.071449>,  <43.389782, 45.049099, 38.080967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398743, 45.448887, 38.071449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203143, -0.018752, -0.978969,
		-0.978893, 0.026760, 0.202615,
		0.022398, 0.999466, -0.023792,
		43.405460, 45.748726, 38.064312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656822, 45.321457, 37.856342>,  <43.389782, 45.049099, 38.080967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656822, 45.321457, 37.856342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922882, 45.610744, 37.782013>,  <43.082520, 45.784317, 37.737415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922882, 45.610744, 37.782013>,  <42.656822, 45.321457, 37.856342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922882, 45.610744, 37.782013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272803, 0.003710, -0.962063,
		-0.695093, 0.690609, 0.199764,
		0.665150, 0.723219, -0.185821,
		43.122429, 45.827709, 37.726265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371075, 45.792027, 37.451580>,  <42.656822, 45.321457, 37.856342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371075, 45.792027, 37.451580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762459, 45.847195, 37.390137>,  <42.997288, 45.880295, 37.353271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762459, 45.847195, 37.390137>,  <42.371075, 45.792027, 37.451580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762459, 45.847195, 37.390137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165430, 0.078702, -0.983076,
		-0.123498, 0.987311, 0.099823,
		0.978459, 0.137922, -0.153611,
		43.055996, 45.888573, 37.344055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359184, 46.335918, 36.988625>,  <42.371075, 45.792027, 37.451580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359184, 46.335918, 36.988625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722275, 46.168533, 36.976433>,  <42.940128, 46.068104, 36.969116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722275, 46.168533, 36.976433>,  <42.359184, 46.335918, 36.988625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722275, 46.168533, 36.976433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024194, 0.020316, -0.999501,
		0.418871, 0.908008, 0.008317,
		0.907723, -0.418461, -0.030478,
		42.994591, 46.042995, 36.967289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790989, 46.775158, 36.652817>,  <42.359184, 46.335918, 36.988625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790989, 46.775158, 36.652817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933998, 46.405060, 36.602070>,  <43.019802, 46.182999, 36.571621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933998, 46.405060, 36.602070>,  <42.790989, 46.775158, 36.652817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933998, 46.405060, 36.602070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002856, 0.134760, -0.990874,
		0.933900, 0.354622, 0.045537,
		0.357522, -0.925248, -0.126866,
		43.041256, 46.127487, 36.564011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135468, 46.848568, 36.040871>,  <42.790989, 46.775158, 36.652817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135468, 46.848568, 36.040871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159706, 46.453522, 36.098759>,  <43.174248, 46.216496, 36.133492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159706, 46.453522, 36.098759>,  <43.135468, 46.848568, 36.040871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159706, 46.453522, 36.098759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034737, -0.142815, -0.989140,
		0.997558, 0.064961, 0.025653,
		0.060592, -0.987615, 0.144723,
		43.177883, 46.157238, 36.142174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694752, 46.645752, 35.584419>,  <43.135468, 46.848568, 36.040871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694752, 46.645752, 35.584419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472168, 46.329521, 35.686665>,  <43.338615, 46.139782, 35.748013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472168, 46.329521, 35.686665>,  <43.694752, 46.645752, 35.584419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472168, 46.329521, 35.686665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144541, -0.395065, -0.907211,
		0.818204, -0.467881, 0.334109,
		-0.556462, -0.790576, 0.255616,
		43.305229, 46.092350, 35.763348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033562, 45.951691, 35.305569>,  <43.694752, 46.645752, 35.584419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033562, 45.951691, 35.305569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636368, 45.920845, 35.341412>,  <43.398052, 45.902336, 35.362919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636368, 45.920845, 35.341412>,  <44.033562, 45.951691, 35.305569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636368, 45.920845, 35.341412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065973, -0.267496, -0.961298,
		0.098102, -0.960468, 0.260532,
		-0.992987, -0.077117, 0.089607,
		43.338470, 45.897709, 35.368294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856438, 45.404140, 34.868992>,  <44.033562, 45.951691, 35.305569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856438, 45.404140, 34.868992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493660, 45.562592, 34.926296>,  <43.275993, 45.657661, 34.960678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493660, 45.562592, 34.926296>,  <43.856438, 45.404140, 34.868992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493660, 45.562592, 34.926296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287989, -0.334886, -0.897170,
		-0.307411, -0.854949, 0.417804,
		-0.906951, 0.396123, 0.143268,
		43.221577, 45.681431, 34.969276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393391, 44.957333, 34.408871>,  <43.856438, 45.404140, 34.868992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393391, 44.957333, 34.408871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196487, 45.293869, 34.498158>,  <43.078346, 45.495792, 34.551727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196487, 45.293869, 34.498158>,  <43.393391, 44.957333, 34.408871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196487, 45.293869, 34.498158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343227, 0.048044, -0.938023,
		-0.799923, -0.538363, 0.265121,
		-0.492259, 0.841342, 0.223212,
		43.048809, 45.546272, 34.565121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748062, 44.830658, 34.213318>,  <43.393391, 44.957333, 34.408871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748062, 44.830658, 34.213318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758804, 45.229786, 34.237415>,  <42.765247, 45.469265, 34.251873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758804, 45.229786, 34.237415>,  <42.748062, 44.830658, 34.213318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758804, 45.229786, 34.237415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252922, 0.065082, -0.965295,
		-0.967114, 0.010686, 0.254119,
		0.026853, 0.997823, 0.060239,
		42.766861, 45.529133, 34.255486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133732, 45.093727, 33.895565>,  <42.748062, 44.830658, 34.213318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133732, 45.093727, 33.895565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397507, 45.394146, 33.908649>,  <42.555771, 45.574398, 33.916500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397507, 45.394146, 33.908649>,  <42.133732, 45.093727, 33.895565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397507, 45.394146, 33.908649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128227, 0.155247, -0.979518,
		-0.740739, 0.641741, 0.198680,
		0.659441, 0.751044, 0.032709,
		42.595341, 45.619461, 33.918461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809448, 45.585007, 33.621330>,  <42.133732, 45.093727, 33.895565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809448, 45.585007, 33.621330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194809, 45.664513, 33.549393>,  <42.426025, 45.712215, 33.506229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194809, 45.664513, 33.549393>,  <41.809448, 45.585007, 33.621330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194809, 45.664513, 33.549393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203153, 0.103687, -0.973642,
		-0.174882, 0.974546, 0.140273,
		0.963403, 0.198769, -0.179848,
		42.483829, 45.724144, 33.495438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822163, 45.954838, 32.938873>,  <41.809448, 45.585007, 33.621330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822163, 45.954838, 32.938873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204155, 45.837502, 32.956558>,  <42.433350, 45.767101, 32.967167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204155, 45.837502, 32.956558>,  <41.822163, 45.954838, 32.938873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204155, 45.837502, 32.956558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088942, 0.140950, -0.986013,
		0.283006, 0.945561, 0.160696,
		0.954985, -0.293340, 0.044211,
		42.490650, 45.749500, 32.969822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<45.859573, 45.010925, 32.433777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.550980, 45.089703, 32.675777>,  <45.365826, 45.136971, 32.820976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.550980, 45.089703, 32.675777>,  <45.859573, 45.010925, 32.433777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550980, 45.089703, 32.675777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578304, -0.179423, 0.795847,
		0.265291, 0.963856, 0.024526,
		-0.771482, 0.196947, 0.605001,
		45.319534, 45.148788, 32.857277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007812, 45.553272, 32.944817>,  <45.859573, 45.010925, 32.433777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007812, 45.553272, 32.944817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.690704, 45.366062, 33.101006>,  <45.500439, 45.253735, 33.194721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.690704, 45.366062, 33.101006>,  <46.007812, 45.553272, 32.944817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690704, 45.366062, 33.101006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501410, -0.136507, 0.854374,
		-0.346567, 0.873107, 0.342892,
		-0.792767, -0.468027, 0.390476,
		45.452873, 45.225655, 33.218147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879490, 45.895073, 33.627979>,  <46.007812, 45.553272, 32.944817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879490, 45.895073, 33.627979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.722282, 45.527340, 33.620224>,  <45.627960, 45.306702, 33.615570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.722282, 45.527340, 33.620224>,  <45.879490, 45.895073, 33.627979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722282, 45.527340, 33.620224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414495, -0.195937, 0.888708,
		-0.820812, 0.341241, 0.458063,
		-0.393015, -0.919328, -0.019385,
		45.604378, 45.251541, 33.614410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.704823, 45.782253, 34.307571>,  <45.879490, 45.895073, 33.627979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.704823, 45.782253, 34.307571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.683548, 45.412529, 34.156403>,  <45.670784, 45.190697, 34.065701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.683548, 45.412529, 34.156403>,  <45.704823, 45.782253, 34.307571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683548, 45.412529, 34.156403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225146, -0.379812, 0.897247,
		-0.972872, -0.037362, 0.228307,
		-0.053191, -0.924309, -0.377920,
		45.667591, 45.135235, 34.043026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269241, 45.476963, 34.745621>,  <45.704823, 45.782253, 34.307571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269241, 45.476963, 34.745621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.450600, 45.172810, 34.559608>,  <45.559414, 44.990318, 34.448002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.450600, 45.172810, 34.559608>,  <45.269241, 45.476963, 34.745621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450600, 45.172810, 34.559608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166343, -0.440385, 0.882265,
		-0.875649, -0.477370, -0.073185,
		0.453396, -0.760381, -0.465030,
		45.586620, 44.944695, 34.420101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863457, 44.798717, 34.807945>,  <45.269241, 45.476963, 34.745621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863457, 44.798717, 34.807945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.251404, 44.715916, 34.756569>,  <45.484173, 44.666233, 34.725742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.251404, 44.715916, 34.756569>,  <44.863457, 44.798717, 34.807945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251404, 44.715916, 34.756569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039165, -0.387867, 0.920883,
		-0.240447, -0.898168, -0.368074,
		0.969872, -0.207008, -0.128439,
		45.542366, 44.653812, 34.718037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925850, 44.101559, 35.020287>,  <44.863457, 44.798717, 34.807945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925850, 44.101559, 35.020287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.293236, 44.258137, 35.042896>,  <45.513668, 44.352085, 35.056461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.293236, 44.258137, 35.042896>,  <44.925850, 44.101559, 35.020287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293236, 44.258137, 35.042896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119968, -0.411920, 0.903288,
		0.376870, -0.822857, -0.425294,
		0.918465, 0.391444, 0.056523,
		45.568775, 44.375568, 35.059853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233276, 43.602737, 35.477711>,  <44.925850, 44.101559, 35.020287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233276, 43.602737, 35.477711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.487778, 43.910511, 35.455288>,  <45.640480, 44.095177, 35.441833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.487778, 43.910511, 35.455288>,  <45.233276, 43.602737, 35.477711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487778, 43.910511, 35.455288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322725, -0.199452, 0.925239,
		0.700733, -0.606781, -0.375219,
		0.636256, 0.769438, -0.056061,
		45.678654, 44.141342, 35.438469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918537, 43.253555, 35.602276>,  <45.233276, 43.602737, 35.477711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918537, 43.253555, 35.602276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.947205, 43.638710, 35.706360>,  <45.964405, 43.869804, 35.768810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.947205, 43.638710, 35.706360>,  <45.918537, 43.253555, 35.602276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947205, 43.638710, 35.706360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211161, -0.269617, 0.939531,
		0.974820, -0.012390, -0.222648,
		0.071670, 0.962888, 0.260212,
		45.968704, 43.927578, 35.784424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312099, 43.251499, 36.274609>,  <45.918537, 43.253555, 35.602276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312099, 43.251499, 36.274609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.200211, 43.635529, 36.275955>,  <46.133080, 43.865948, 36.276764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.200211, 43.635529, 36.275955>,  <46.312099, 43.251499, 36.274609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.200211, 43.635529, 36.275955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023001, -0.010208, 0.999683,
		0.959806, 0.279554, 0.024938,
		-0.279720, 0.960076, 0.003368,
		46.116295, 43.923550, 36.276966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737560, 43.640896, 36.787437>,  <46.312099, 43.251499, 36.274609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737560, 43.640896, 36.787437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.385757, 43.825424, 36.740692>,  <46.174675, 43.936142, 36.712646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.385757, 43.825424, 36.740692>,  <46.737560, 43.640896, 36.787437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.385757, 43.825424, 36.740692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048700, 0.157033, 0.986392,
		0.473392, 0.873228, -0.115645,
		-0.879505, 0.461318, -0.116865,
		46.121906, 43.963821, 36.705631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.729103, 44.194130, 37.154995>,  <46.737560, 43.640896, 36.787437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.729103, 44.194130, 37.154995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.333389, 44.137928, 37.139149>,  <46.095959, 44.104206, 37.129642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.333389, 44.137928, 37.139149>,  <46.729103, 44.194130, 37.154995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.333389, 44.137928, 37.139149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078183, 0.280797, 0.956578,
		-0.123279, 0.949427, -0.288774,
		-0.989287, -0.140503, -0.039613,
		46.036602, 44.095776, 37.127266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.309669, 44.850056, 37.328205>,  <46.729103, 44.194130, 37.154995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.309669, 44.850056, 37.328205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.009972, 44.599510, 37.414280>,  <45.830154, 44.449184, 37.465923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.009972, 44.599510, 37.414280>,  <46.309669, 44.850056, 37.328205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009972, 44.599510, 37.414280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130798, 0.458453, 0.879041,
		-0.649250, 0.630470, -0.425420,
		-0.749244, -0.626361, 0.215186,
		45.785198, 44.411602, 37.478836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815647, 45.261040, 37.600670>,  <46.309669, 44.850056, 37.328205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815647, 45.261040, 37.600670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.728798, 44.891956, 37.728081>,  <45.676689, 44.670506, 37.804527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.728798, 44.891956, 37.728081>,  <45.815647, 45.261040, 37.600670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728798, 44.891956, 37.728081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134871, 0.351543, 0.926405,
		-0.966782, 0.158183, -0.200775,
		-0.217122, -0.922711, 0.318531,
		45.663662, 44.615143, 37.823639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337627, 45.403660, 38.012356>,  <45.815647, 45.261040, 37.600670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337627, 45.403660, 38.012356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.448677, 45.043995, 38.147663>,  <45.515308, 44.828194, 38.228848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.448677, 45.043995, 38.147663>,  <45.337627, 45.403660, 38.012356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448677, 45.043995, 38.147663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186950, 0.294812, 0.937089,
		-0.942325, -0.323396, -0.086252,
		0.277623, -0.899167, 0.338268,
		45.531963, 44.774246, 38.249142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845535, 45.289593, 38.525017>,  <45.337627, 45.403660, 38.012356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845535, 45.289593, 38.525017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.168167, 45.064995, 38.598942>,  <45.361748, 44.930237, 38.643295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.168167, 45.064995, 38.598942>,  <44.845535, 45.289593, 38.525017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168167, 45.064995, 38.598942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020372, 0.286048, 0.957999,
		-0.590774, -0.776468, 0.219282,
		0.806580, -0.561493, 0.184808,
		45.410141, 44.896545, 38.654385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714626, 44.904606, 39.225842>,  <44.845535, 45.289593, 38.525017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714626, 44.904606, 39.225842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.109200, 44.887577, 39.162422>,  <45.345943, 44.877357, 39.124371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.109200, 44.887577, 39.162422>,  <44.714626, 44.904606, 39.225842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109200, 44.887577, 39.162422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159283, 0.014343, 0.987129,
		-0.039757, -0.998990, 0.020931,
		0.986432, -0.042579, -0.158552,
		45.405128, 44.874805, 39.114857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828171, 44.430977, 39.669003>,  <44.714626, 44.904606, 39.225842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.828171, 44.430977, 39.669003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.188988, 44.596951, 39.621418>,  <45.405476, 44.696533, 39.592865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.188988, 44.596951, 39.621418>,  <44.828171, 44.430977, 39.669003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188988, 44.596951, 39.621418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183500, -0.119152, 0.975772,
		0.390706, -0.902016, -0.183620,
		0.902040, 0.414934, -0.118966,
		45.459599, 44.721432, 39.585728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300255, 43.969948, 39.890625>,  <44.828171, 44.430977, 39.669003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.300255, 43.969948, 39.890625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.488953, 44.322536, 39.899235>,  <45.602173, 44.534088, 39.904400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.488953, 44.322536, 39.899235>,  <45.300255, 43.969948, 39.890625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488953, 44.322536, 39.899235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260956, -0.162894, 0.951508,
		0.842233, -0.443254, -0.306870,
		0.471747, 0.881471, 0.021525,
		45.630478, 44.586979, 39.905693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863796, 43.848858, 40.226494>,  <45.300255, 43.969948, 39.890625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863796, 43.848858, 40.226494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.892502, 44.245640, 40.268204>,  <45.909725, 44.483707, 40.293232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.892502, 44.245640, 40.268204>,  <45.863796, 43.848858, 40.226494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892502, 44.245640, 40.268204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258199, -0.119460, 0.958677,
		0.963422, -0.041874, -0.264695,
		0.071764, 0.991956, 0.104278,
		45.914032, 44.543228, 40.299488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474934, 43.968082, 40.739414>,  <45.863796, 43.848858, 40.226494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474934, 43.968082, 40.739414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.283089, 44.319065, 40.742157>,  <46.167980, 44.529655, 40.743801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.283089, 44.319065, 40.742157>,  <46.474934, 43.968082, 40.739414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283089, 44.319065, 40.742157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123031, 0.059509, 0.990617,
		0.868813, 0.475954, -0.136495,
		-0.479611, 0.877454, 0.006855,
		46.139206, 44.582302, 40.744213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921902, 44.440559, 41.091038>,  <46.474934, 43.968082, 40.739414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921902, 44.440559, 41.091038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.564278, 44.615063, 41.131687>,  <46.349701, 44.719765, 41.156078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.564278, 44.615063, 41.131687>,  <46.921902, 44.440559, 41.091038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564278, 44.615063, 41.131687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141105, 0.058977, 0.988236,
		0.425136, 0.897885, -0.114288,
		-0.894063, 0.436261, 0.101622,
		46.296059, 44.745941, 41.162174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.002571, 44.992821, 41.532349>,  <46.921902, 44.440559, 41.091038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.002571, 44.992821, 41.532349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.610069, 44.918854, 41.554028>,  <46.374569, 44.874474, 41.567036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.610069, 44.918854, 41.554028>,  <47.002571, 44.992821, 41.532349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.610069, 44.918854, 41.554028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033105, 0.115289, 0.992780,
		-0.189828, 0.975969, -0.107007,
		-0.981259, -0.184915, 0.054194,
		46.315693, 44.863380, 41.570286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586136, 45.600994, 41.864582>,  <47.002571, 44.992821, 41.532349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586136, 45.600994, 41.864582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.395622, 45.253162, 41.916710>,  <46.281315, 45.044464, 41.947987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.395622, 45.253162, 41.916710>,  <46.586136, 45.600994, 41.864582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.395622, 45.253162, 41.916710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102831, 0.202272, 0.973916,
		-0.873260, 0.450456, -0.185758,
		-0.476279, -0.869584, 0.130315,
		46.252739, 44.992287, 41.955803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046879, 45.718975, 42.364128>,  <46.586136, 45.600994, 41.864582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046879, 45.718975, 42.364128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.057198, 45.319241, 42.374359>,  <46.063389, 45.079399, 42.380497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.057198, 45.319241, 42.374359>,  <46.046879, 45.718975, 42.364128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057198, 45.319241, 42.374359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382162, 0.013782, 0.923993,
		-0.923735, -0.033607, -0.381554,
		0.025794, -0.999340, 0.025574,
		46.064938, 45.019440, 42.382030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488552, 45.656895, 42.728001>,  <46.046879, 45.718975, 42.364128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488552, 45.656895, 42.728001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.661224, 45.298859, 42.772667>,  <45.764828, 45.084038, 42.799465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.661224, 45.298859, 42.772667>,  <45.488552, 45.656895, 42.728001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661224, 45.298859, 42.772667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210352, 0.020486, 0.977411,
		-0.877156, -0.445419, -0.179440,
		0.431682, -0.895088, 0.111664,
		45.790730, 45.030331, 42.806168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053246, 45.227024, 43.146217>,  <45.488552, 45.656895, 42.728001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053246, 45.227024, 43.146217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.408646, 45.046524, 43.179531>,  <45.621887, 44.938225, 43.199520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.408646, 45.046524, 43.179531>,  <45.053246, 45.227024, 43.146217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408646, 45.046524, 43.179531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135294, -0.084182, 0.987223,
		-0.438472, -0.888419, -0.135847,
		0.888503, -0.451249, 0.083286,
		45.675198, 44.911148, 43.204517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915184, 44.650761, 43.415985>,  <45.053246, 45.227024, 43.146217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915184, 44.650761, 43.415985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.300186, 44.696014, 43.514595>,  <45.531189, 44.723167, 43.573761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.300186, 44.696014, 43.514595>,  <44.915184, 44.650761, 43.415985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300186, 44.696014, 43.514595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216037, -0.229851, 0.948945,
		0.164022, -0.966628, -0.196793,
		0.962510, 0.113133, 0.246528,
		45.588940, 44.729954, 43.588554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091572, 44.074135, 43.900162>,  <44.915184, 44.650761, 43.415985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091572, 44.074135, 43.900162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.379463, 44.344662, 43.962872>,  <45.552200, 44.506977, 44.000496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.379463, 44.344662, 43.962872>,  <45.091572, 44.074135, 43.900162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379463, 44.344662, 43.962872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051383, -0.173301, 0.983528,
		0.692350, -0.715930, -0.089979,
		0.719730, 0.676322, 0.156771,
		45.595383, 44.547558, 44.009903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457031, 43.849056, 44.511665>,  <45.091572, 44.074135, 43.900162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457031, 43.849056, 44.511665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.582695, 44.227699, 44.482697>,  <45.658092, 44.454884, 44.465317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.582695, 44.227699, 44.482697>,  <45.457031, 43.849056, 44.511665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582695, 44.227699, 44.482697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276349, -0.018199, 0.960885,
		0.908259, -0.321885, -0.267311,
		0.314160, 0.946604, -0.072423,
		45.676945, 44.511681, 44.460968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174294, 43.865643, 44.673317>,  <45.457031, 43.849056, 44.511665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174294, 43.865643, 44.673317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.013512, 44.226315, 44.737080>,  <45.917042, 44.442719, 44.775337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.013512, 44.226315, 44.737080>,  <46.174294, 43.865643, 44.673317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.013512, 44.226315, 44.737080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313525, -0.028040, 0.949166,
		0.860310, 0.431501, -0.271428,
		-0.401955, 0.901676, 0.159410,
		45.892925, 44.496819, 44.784904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.663124, 44.221947, 45.104416>,  <46.174294, 43.865643, 44.673317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.663124, 44.221947, 45.104416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.331291, 44.444408, 45.124340>,  <46.132191, 44.577885, 45.136295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.331291, 44.444408, 45.124340>,  <46.663124, 44.221947, 45.104416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331291, 44.444408, 45.124340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123722, 0.096092, 0.987653,
		0.544505, 0.825503, -0.148525,
		-0.829583, 0.556158, 0.049810,
		46.082417, 44.611256, 45.139282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882027, 44.826359, 45.441422>,  <46.663124, 44.221947, 45.104416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882027, 44.826359, 45.441422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.491943, 44.778336, 45.515778>,  <46.257893, 44.749523, 45.560390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.491943, 44.778336, 45.515778>,  <46.882027, 44.826359, 45.441422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491943, 44.778336, 45.515778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159465, 0.201164, 0.966491,
		-0.153430, 0.972172, -0.177031,
		-0.975208, -0.120059, 0.185892,
		46.199383, 44.742317, 45.571545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748505, 45.377163, 45.899952>,  <46.882027, 44.826359, 45.441422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748505, 45.377163, 45.899952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.419617, 45.151386, 45.929207>,  <46.222282, 45.015919, 45.946762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.419617, 45.151386, 45.929207>,  <46.748505, 45.377163, 45.899952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419617, 45.151386, 45.929207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056057, 0.047571, 0.997294,
		-0.566397, 0.824099, -0.007473,
		-0.822224, -0.564445, 0.073141,
		46.172951, 44.982052, 45.951149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.247177, 45.727554, 46.384129>,  <46.748505, 45.377163, 45.899952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.247177, 45.727554, 46.384129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.146667, 45.340816, 46.365913>,  <46.086361, 45.108772, 46.354984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.146667, 45.340816, 46.365913>,  <46.247177, 45.727554, 46.384129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.146667, 45.340816, 46.365913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092636, -0.022809, 0.995439,
		-0.963473, 0.254346, -0.083833,
		-0.251274, -0.966844, -0.045537,
		46.071285, 45.050762, 46.352253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701813, 45.702976, 46.843254>,  <46.247177, 45.727554, 46.384129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701813, 45.702976, 46.843254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.878227, 45.347923, 46.790184>,  <45.984077, 45.134892, 46.758343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.878227, 45.347923, 46.790184>,  <45.701813, 45.702976, 46.843254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878227, 45.347923, 46.790184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051749, -0.172731, 0.983609,
		-0.895997, -0.426940, -0.122114,
		0.441035, -0.887630, -0.132673,
		46.010536, 45.081635, 46.750381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243935, 45.301128, 47.222900>,  <45.701813, 45.702976, 46.843254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243935, 45.301128, 47.222900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.606125, 45.133255, 47.197681>,  <45.823441, 45.032532, 47.182549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.606125, 45.133255, 47.197681>,  <45.243935, 45.301128, 47.222900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606125, 45.133255, 47.197681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006576, -0.134670, 0.990869,
		-0.424345, -0.897623, -0.119181,
		0.905477, -0.419687, -0.063050,
		45.877769, 45.007351, 47.178768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141033, 44.720047, 47.672588>,  <45.243935, 45.301128, 47.222900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141033, 44.720047, 47.672588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.534019, 44.767300, 47.614887>,  <45.769810, 44.795650, 47.580265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.534019, 44.767300, 47.614887>,  <45.141033, 44.720047, 47.672588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534019, 44.767300, 47.614887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178037, -0.364583, 0.913992,
		0.055381, -0.923647, -0.379222,
		0.982464, 0.118133, -0.144252,
		45.828758, 44.802738, 47.571613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492016, 44.089710, 47.871155>,  <45.141033, 44.720047, 47.672588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492016, 44.089710, 47.871155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.738716, 44.402710, 47.905361>,  <45.886734, 44.590511, 47.925884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.738716, 44.402710, 47.905361>,  <45.492016, 44.089710, 47.871155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738716, 44.402710, 47.905361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261289, -0.305993, 0.915476,
		0.742529, -0.542273, -0.393180,
		0.616748, 0.782501, 0.085518,
		45.923740, 44.637459, 47.931015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061268, 43.870991, 48.182037>,  <45.492016, 44.089710, 47.871155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061268, 43.870991, 48.182037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.100334, 44.263115, 48.250690>,  <46.123775, 44.498390, 48.291882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.100334, 44.263115, 48.250690>,  <46.061268, 43.870991, 48.182037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100334, 44.263115, 48.250690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259741, -0.191590, 0.946482,
		0.960727, -0.047860, -0.273338,
		0.097668, 0.980307, 0.171634,
		46.129635, 44.557209, 48.302181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703316, 44.000027, 48.555603>,  <46.061268, 43.870991, 48.182037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703316, 44.000027, 48.555603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.537331, 44.360958, 48.602264>,  <46.437740, 44.577518, 48.630260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.537331, 44.360958, 48.602264>,  <46.703316, 44.000027, 48.555603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.537331, 44.360958, 48.602264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124772, -0.070562, 0.989673,
		0.901244, 0.425228, -0.083306,
		-0.414959, 0.902331, 0.116650,
		46.412842, 44.631657, 48.637260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.215084, 44.381222, 48.909824>,  <46.703316, 44.000027, 48.555603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.215084, 44.381222, 48.909824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.865051, 44.568615, 48.958405>,  <46.655029, 44.681049, 48.987553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.865051, 44.568615, 48.958405>,  <47.215084, 44.381222, 48.909824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865051, 44.568615, 48.958405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156343, 0.036145, 0.987041,
		0.458023, 0.882732, -0.104874,
		-0.875084, 0.468484, 0.121454,
		46.602528, 44.709160, 48.994843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.384705, 45.077187, 49.167019>,  <47.215084, 44.381222, 48.909824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.384705, 45.077187, 49.167019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.008453, 44.977264, 49.258949>,  <46.782703, 44.917309, 49.314106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.008453, 44.977264, 49.258949>,  <47.384705, 45.077187, 49.167019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.008453, 44.977264, 49.258949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158736, 0.274751, 0.948322,
		-0.300043, 0.928498, -0.218785,
		-0.940626, -0.249808, 0.229823,
		46.726265, 44.902321, 49.327896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.052841, 45.589893, 49.619419>,  <47.384705, 45.077187, 49.167019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.052841, 45.589893, 49.619419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.823692, 45.271126, 49.696087>,  <46.686203, 45.079865, 49.742088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.823692, 45.271126, 49.696087>,  <47.052841, 45.589893, 49.619419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.823692, 45.271126, 49.696087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002932, 0.235831, 0.971790,
		-0.819640, 0.556148, -0.137437,
		-0.572871, -0.796921, 0.191666,
		46.651833, 45.032051, 49.753586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501209, 45.830566, 50.170990>,  <47.052841, 45.589893, 49.619419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501209, 45.830566, 50.170990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.451889, 45.434559, 50.198311>,  <46.422295, 45.196957, 50.214703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.451889, 45.434559, 50.198311>,  <46.501209, 45.830566, 50.170990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.451889, 45.434559, 50.198311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016093, 0.070813, 0.997360,
		-0.992239, 0.121878, -0.024664,
		-0.123303, -0.990016, 0.068302,
		46.414898, 45.137554, 50.218800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814537, 45.686943, 50.499134>,  <46.501209, 45.830566, 50.170990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814537, 45.686943, 50.499134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.069244, 45.387341, 50.572369>,  <46.222069, 45.207581, 50.616310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.069244, 45.387341, 50.572369>,  <45.814537, 45.686943, 50.499134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069244, 45.387341, 50.572369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205365, 0.064120, 0.976583,
		-0.743207, -0.659452, -0.112991,
		0.636764, -0.749007, 0.183083,
		46.260273, 45.162640, 50.627293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543549, 45.280186, 51.091846>,  <45.814537, 45.686943, 50.499134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543549, 45.280186, 51.091846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.906769, 45.114197, 51.114601>,  <46.124702, 45.014603, 51.128254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.906769, 45.114197, 51.114601>,  <45.543549, 45.280186, 51.091846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906769, 45.114197, 51.114601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140464, -0.173757, 0.974720,
		-0.394598, -0.893088, -0.216070,
		0.908054, -0.414972, 0.056883,
		46.179184, 44.989704, 51.131664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.578579, 44.811672, 51.654972>,  <45.543549, 45.280186, 51.091846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.578579, 44.811672, 51.654972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.963120, 44.884521, 51.572388>,  <46.193844, 44.928230, 51.522839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.963120, 44.884521, 51.572388>,  <45.578579, 44.811672, 51.654972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963120, 44.884521, 51.572388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232077, -0.132662, 0.963608,
		0.148107, -0.974285, -0.169802,
		0.961356, 0.182125, -0.206460,
		46.251526, 44.939159, 51.510448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.998245, 44.314426, 51.983334>,  <45.578579, 44.811672, 51.654972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.998245, 44.314426, 51.983334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.253807, 44.618153, 51.933960>,  <46.407143, 44.800388, 51.904335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.253807, 44.618153, 51.933960>,  <45.998245, 44.314426, 51.983334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253807, 44.618153, 51.933960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231383, -0.036653, 0.972172,
		0.733663, -0.649687, -0.199111,
		0.638905, 0.759318, -0.123435,
		46.445480, 44.845947, 51.896931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.594391, 44.138084, 52.446182>,  <45.998245, 44.314426, 51.983334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.594391, 44.138084, 52.446182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.594582, 44.532555, 52.379913>,  <46.594696, 44.769238, 52.340153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.594582, 44.532555, 52.379913>,  <46.594391, 44.138084, 52.446182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594582, 44.532555, 52.379913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217882, 0.161594, 0.962504,
		0.975975, -0.036555, -0.214795,
		0.000474, 0.986180, -0.165676,
		46.594723, 44.828407, 52.330212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.227482, 44.514954, 52.503853>,  <46.594391, 44.138084, 52.446182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.227482, 44.514954, 52.503853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.943832, 44.783031, 52.591480>,  <46.773643, 44.943878, 52.644058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.943832, 44.783031, 52.591480>,  <47.227482, 44.514954, 52.503853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.943832, 44.783031, 52.591480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414126, 0.144420, 0.898689,
		0.570656, 0.728002, -0.379955,
		-0.709121, 0.670191, 0.219070,
		46.731094, 44.984089, 52.657200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.423153, 44.777225, 53.129509>,  <47.227482, 44.514954, 52.503853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.423153, 44.777225, 53.129509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.063690, 44.951134, 53.106239>,  <46.848011, 45.055477, 53.092278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.063690, 44.951134, 53.106239>,  <47.423153, 44.777225, 53.129509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.063690, 44.951134, 53.106239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016219, 0.165455, 0.986084,
		0.438346, 0.885211, -0.155740,
		-0.898660, 0.434772, -0.058169,
		46.794090, 45.081566, 53.088787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.434326, 45.345226, 53.594608>,  <47.423153, 44.777225, 53.129509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.434326, 45.345226, 53.594608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.045906, 45.262184, 53.547333>,  <46.812855, 45.212360, 53.518967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.045906, 45.262184, 53.547333>,  <47.434326, 45.345226, 53.594608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.045906, 45.262184, 53.547333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151630, 0.153335, 0.976472,
		-0.184594, 0.966121, -0.180374,
		-0.971048, -0.207601, -0.118188,
		46.754593, 45.199905, 53.511875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.209824, 45.861046, 53.829159>,  <47.434326, 45.345226, 53.594608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.209824, 45.861046, 53.829159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.900230, 45.610287, 53.864822>,  <46.714474, 45.459831, 53.886219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.900230, 45.610287, 53.864822>,  <47.209824, 45.861046, 53.829159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.900230, 45.610287, 53.864822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016164, 0.121195, 0.992497,
		-0.632999, 0.769617, -0.083670,
		-0.773984, -0.626898, 0.089157,
		46.668034, 45.422218, 53.891571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692112, 46.205082, 54.259239>,  <47.209824, 45.861046, 53.829159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692112, 46.205082, 54.259239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.617638, 45.812233, 54.270393>,  <46.572952, 45.576523, 54.277088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.617638, 45.812233, 54.270393>,  <46.692112, 46.205082, 54.259239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.617638, 45.812233, 54.270393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023484, 0.023928, 0.999438,
		-0.982234, 0.186734, 0.018609,
		-0.186184, -0.982119, 0.027888,
		46.561783, 45.517597, 54.278759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.388065, 46.142605, 54.881100>,  <46.692112, 46.205082, 54.259239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.388065, 46.142605, 54.881100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.463516, 45.756664, 54.807919>,  <46.508789, 45.525101, 54.764008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.463516, 45.756664, 54.807919>,  <46.388065, 46.142605, 54.881100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.463516, 45.756664, 54.807919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049681, -0.176686, 0.983012,
		-0.980791, -0.194514, 0.014606,
		0.188629, -0.964855, -0.182956,
		46.520103, 45.467209, 54.753033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914558, 45.821499, 55.422134>,  <46.388065, 46.142605, 54.881100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914558, 45.821499, 55.422134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.203270, 45.563499, 55.321728>,  <46.376495, 45.408699, 55.261486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.203270, 45.563499, 55.321728>,  <45.914558, 45.821499, 55.422134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203270, 45.563499, 55.321728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018282, -0.344778, 0.938506,
		-0.691884, -0.681981, -0.237061,
		0.721777, -0.645004, -0.251014,
		46.419804, 45.369999, 55.246422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.711357, 45.271076, 55.786037>,  <45.914558, 45.821499, 55.422134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.711357, 45.271076, 55.786037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.089470, 45.188141, 55.685284>,  <46.316338, 45.138382, 55.624832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.089470, 45.188141, 55.685284>,  <45.711357, 45.271076, 55.786037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089470, 45.188141, 55.685284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172463, -0.337813, 0.925278,
		-0.276932, -0.918093, -0.283572,
		0.945286, -0.207334, -0.251888,
		46.373055, 45.125938, 55.609718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823902, 44.686558, 56.184380>,  <45.711357, 45.271076, 55.786037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823902, 44.686558, 56.184380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.182014, 44.839386, 56.092743>,  <46.396881, 44.931084, 56.037762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.182014, 44.839386, 56.092743>,  <45.823902, 44.686558, 56.184380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182014, 44.839386, 56.092743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360488, -0.319171, 0.876458,
		0.261749, -0.867266, -0.423482,
		0.895285, 0.382072, -0.229096,
		46.450600, 44.954006, 56.024014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.309605, 44.183727, 56.488155>,  <45.823902, 44.686558, 56.184380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.309605, 44.183727, 56.488155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.525574, 44.517498, 56.443970>,  <46.655155, 44.717762, 56.417458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.525574, 44.517498, 56.443970>,  <46.309605, 44.183727, 56.488155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525574, 44.517498, 56.443970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270571, -0.047785, 0.961513,
		0.797038, -0.549036, -0.251573,
		0.539927, 0.834431, -0.110467,
		46.687553, 44.767826, 56.410831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.886662, 44.082607, 56.952652>,  <46.309605, 44.183727, 56.488155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.886662, 44.082607, 56.952652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.931602, 44.478065, 56.912724>,  <46.958569, 44.715340, 56.888767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.931602, 44.478065, 56.912724>,  <46.886662, 44.082607, 56.952652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.931602, 44.478065, 56.912724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047854, 0.094960, 0.994330,
		0.992515, -0.116494, -0.036641,
		0.112354, 0.988641, -0.099824,
		46.965309, 44.774658, 56.882774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.537144, 44.273159, 57.277264>,  <46.886662, 44.082607, 56.952652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.537144, 44.273159, 57.277264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.291832, 44.589085, 57.280857>,  <47.144646, 44.778641, 57.283012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.291832, 44.589085, 57.280857>,  <47.537144, 44.273159, 57.277264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.291832, 44.589085, 57.280857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024369, 0.007558, 0.999675,
		0.789487, 0.613302, -0.023882,
		-0.613283, 0.789812, 0.008979,
		47.107845, 44.826027, 57.283550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.804382, 44.815178, 57.633266>,  <47.537144, 44.273159, 57.277264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.804382, 44.815178, 57.633266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.414665, 44.901398, 57.659485>,  <47.180836, 44.953129, 57.675217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.414665, 44.901398, 57.659485>,  <47.804382, 44.815178, 57.633266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.414665, 44.901398, 57.659485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070062, 0.013381, 0.997453,
		0.214123, 0.976401, -0.028138,
		-0.974291, 0.215549, 0.065544,
		47.122379, 44.966061, 57.679150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.817810, 45.344685, 58.137089>,  <47.804382, 44.815178, 57.633266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.817810, 45.344685, 58.137089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.455330, 45.179760, 58.099567>,  <47.237843, 45.080803, 58.077057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.455330, 45.179760, 58.099567>,  <47.817810, 45.344685, 58.137089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.455330, 45.179760, 58.099567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056627, -0.101500, 0.993223,
		-0.419040, 0.905370, 0.068631,
		-0.906200, -0.412314, -0.093801,
		47.183472, 45.056065, 58.071426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<45.923321, 44.977699, 58.072521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.320786, 45.018105, 58.092216>,  <46.559265, 45.042347, 58.104034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.320786, 45.018105, 58.092216>,  <45.923321, 44.977699, 58.072521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320786, 45.018105, 58.092216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043686, 0.056446, -0.997449,
		-0.103530, 0.993283, 0.051676,
		0.993666, 0.101009, 0.049236,
		46.618885, 45.048409, 58.106987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.021870, 45.597172, 57.719063>,  <45.923321, 44.977699, 58.072521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.021870, 45.597172, 57.719063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.359062, 45.382076, 57.713043>,  <46.561378, 45.253017, 57.709431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.359062, 45.382076, 57.713043>,  <46.021870, 45.597172, 57.719063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.359062, 45.382076, 57.713043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062165, -0.069590, -0.995637,
		0.534346, 0.840234, -0.092091,
		0.842977, -0.537739, -0.015048,
		46.611954, 45.220753, 57.708530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294498, 45.878479, 57.157475>,  <46.021870, 45.597172, 57.719063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294498, 45.878479, 57.157475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.546432, 45.571945, 57.208138>,  <46.697594, 45.388023, 57.238537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.546432, 45.571945, 57.208138>,  <46.294498, 45.878479, 57.157475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546432, 45.571945, 57.208138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037206, -0.133114, -0.990402,
		0.775840, 0.628500, -0.055328,
		0.629832, -0.766335, 0.126659,
		46.735382, 45.342045, 57.246136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845367, 46.025436, 56.720081>,  <46.294498, 45.878479, 57.157475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845367, 46.025436, 56.720081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.873894, 45.630096, 56.773861>,  <46.891010, 45.392891, 56.806129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.873894, 45.630096, 56.773861>,  <46.845367, 46.025436, 56.720081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.873894, 45.630096, 56.773861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144215, -0.123163, -0.981852,
		0.986973, 0.089416, 0.133751,
		0.071320, -0.988350, 0.134453,
		46.895290, 45.333591, 56.814198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501091, 45.757301, 56.472534>,  <46.845367, 46.025436, 56.720081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501091, 45.757301, 56.472534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.242043, 45.454502, 56.437782>,  <47.086613, 45.272823, 56.416931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.242043, 45.454502, 56.437782>,  <47.501091, 45.757301, 56.472534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.242043, 45.454502, 56.437782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017375, 0.128668, -0.991535,
		0.761767, -0.640627, -0.096480,
		-0.647618, -0.756995, -0.086884,
		47.047756, 45.227402, 56.411716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.645512, 45.550800, 55.828003>,  <47.501091, 45.757301, 56.472534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.645512, 45.550800, 55.828003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.300621, 45.356800, 55.886436>,  <47.093685, 45.240402, 55.921497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.300621, 45.356800, 55.886436>,  <47.645512, 45.550800, 55.828003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.300621, 45.356800, 55.886436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085323, -0.145213, -0.985714,
		0.499282, -0.862375, 0.083826,
		-0.862228, -0.484997, 0.146083,
		47.041954, 45.211300, 55.930260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.659584, 44.970123, 55.410202>,  <47.645512, 45.550800, 55.828003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.659584, 44.970123, 55.410202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.267059, 45.000069, 55.481113>,  <47.031544, 45.018036, 55.523659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.267059, 45.000069, 55.481113>,  <47.659584, 44.970123, 55.410202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.267059, 45.000069, 55.481113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182706, -0.073195, -0.980439,
		-0.060404, -0.994505, 0.085501,
		-0.981310, 0.074844, 0.177281,
		46.972668, 45.022530, 55.534298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.385391, 44.499840, 54.943302>,  <47.659584, 44.970123, 55.410202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.385391, 44.499840, 54.943302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.088417, 44.754223, 55.027534>,  <46.910233, 44.906853, 55.078075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.088417, 44.754223, 55.027534>,  <47.385391, 44.499840, 54.943302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.088417, 44.754223, 55.027534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333889, -0.078766, -0.939316,
		-0.580777, -0.767695, 0.270818,
		-0.742440, 0.635956, 0.210580,
		46.865685, 44.945011, 55.090710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.829666, 44.246853, 54.620853>,  <47.385391, 44.499840, 54.943302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.829666, 44.246853, 54.620853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.747528, 44.636703, 54.656487>,  <46.698246, 44.870613, 54.677868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.747528, 44.636703, 54.656487>,  <46.829666, 44.246853, 54.620853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.747528, 44.636703, 54.656487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295037, 0.025146, -0.955155,
		-0.933160, -0.222420, 0.282387,
		-0.205345, 0.974627, 0.089087,
		46.685925, 44.929092, 54.683212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165752, 44.252243, 54.345974>,  <46.829666, 44.246853, 54.620853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165752, 44.252243, 54.345974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.263474, 44.640053, 54.338722>,  <46.322105, 44.872738, 54.334370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.263474, 44.640053, 54.338722>,  <46.165752, 44.252243, 54.345974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263474, 44.640053, 54.338722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251749, 0.045357, -0.966729,
		-0.936449, 0.240742, 0.255158,
		0.244306, 0.969529, -0.018132,
		46.336765, 44.930912, 54.333282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698177, 44.531231, 53.903240>,  <46.165752, 44.252243, 54.345974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698177, 44.531231, 53.903240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.989159, 44.805656, 53.907749>,  <46.163746, 44.970310, 53.910454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.989159, 44.805656, 53.907749>,  <45.698177, 44.531231, 53.903240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.989159, 44.805656, 53.907749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038796, 0.057524, -0.997590,
		-0.685060, 0.725263, 0.068462,
		0.727453, 0.686065, 0.011270,
		46.207394, 45.011475, 53.911129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444675, 45.155533, 53.462906>,  <45.698177, 44.531231, 53.903240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444675, 45.155533, 53.462906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.844223, 45.174507, 53.464523>,  <46.083950, 45.185890, 53.465492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.844223, 45.174507, 53.464523>,  <45.444675, 45.155533, 53.462906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844223, 45.174507, 53.464523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007370, -0.070141, -0.997510,
		-0.047033, 0.996409, -0.070411,
		0.998866, 0.047435, 0.004045,
		46.143883, 45.188736, 53.465736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612823, 45.599766, 52.928047>,  <45.444675, 45.155533, 53.462906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612823, 45.599766, 52.928047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.979935, 45.447334, 52.972717>,  <46.200199, 45.355877, 52.999519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.979935, 45.447334, 52.972717>,  <45.612823, 45.599766, 52.928047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.979935, 45.447334, 52.972717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119930, -0.002100, -0.992780,
		0.378559, 0.924541, 0.043776,
		0.917774, -0.381076, 0.111675,
		46.255268, 45.333012, 53.006222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.024185, 46.049156, 52.647717>,  <45.612823, 45.599766, 52.928047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.024185, 46.049156, 52.647717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.246651, 45.716755, 52.643227>,  <46.380131, 45.517315, 52.640533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.246651, 45.716755, 52.643227>,  <46.024185, 46.049156, 52.647717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246651, 45.716755, 52.643227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089119, 0.073065, -0.993338,
		0.826282, 0.551455, 0.114694,
		0.556162, -0.830998, -0.011227,
		46.413498, 45.467457, 52.639858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.631508, 46.144547, 52.174793>,  <46.024185, 46.049156, 52.647717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.631508, 46.144547, 52.174793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.590797, 45.748562, 52.214035>,  <46.566372, 45.510971, 52.237579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.590797, 45.748562, 52.214035>,  <46.631508, 46.144547, 52.174793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590797, 45.748562, 52.214035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120980, -0.085569, -0.988960,
		0.987423, -0.112523, -0.111056,
		-0.101778, -0.989958, 0.098106,
		46.560265, 45.451576, 52.243465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.177944, 45.881271, 51.695515>,  <46.631508, 46.144547, 52.174793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.177944, 45.881271, 51.695515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.949852, 45.558556, 51.757378>,  <46.812996, 45.364925, 51.794495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.949852, 45.558556, 51.757378>,  <47.177944, 45.881271, 51.695515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.949852, 45.558556, 51.757378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028504, -0.207589, -0.977801,
		0.820988, -0.553166, 0.141371,
		-0.570233, -0.806792, 0.154661,
		46.778782, 45.316517, 51.803776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.419178, 45.333881, 51.167469>,  <47.177944, 45.881271, 51.695515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.419178, 45.333881, 51.167469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.067177, 45.197773, 51.300018>,  <46.855976, 45.116108, 51.379547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.067177, 45.197773, 51.300018>,  <47.419178, 45.333881, 51.167469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.067177, 45.197773, 51.300018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190147, -0.386929, -0.902291,
		0.435241, -0.857030, 0.275798,
		-0.880005, -0.340272, 0.331369,
		46.803177, 45.095692, 51.399429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.439247, 44.633923, 50.975395>,  <47.419178, 45.333881, 51.167469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.439247, 44.633923, 50.975395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.055641, 44.736698, 51.023193>,  <46.825478, 44.798363, 51.051872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.055641, 44.736698, 51.023193>,  <47.439247, 44.633923, 50.975395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.055641, 44.736698, 51.023193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160954, -0.146854, -0.975975,
		-0.233215, -0.955206, 0.182190,
		-0.959012, 0.256936, 0.119496,
		46.767937, 44.813778, 51.059044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963093, 44.086277, 50.726418>,  <47.439247, 44.633923, 50.975395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963093, 44.086277, 50.726418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.737045, 44.415398, 50.702286>,  <46.601418, 44.612869, 50.687809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.737045, 44.415398, 50.702286>,  <46.963093, 44.086277, 50.726418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737045, 44.415398, 50.702286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168699, -0.186824, -0.967800,
		-0.807579, -0.536744, 0.244383,
		-0.565117, 0.822802, -0.060327,
		46.567509, 44.662239, 50.684189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385555, 43.867950, 50.339821>,  <46.963093, 44.086277, 50.726418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385555, 43.867950, 50.339821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.394135, 44.266365, 50.305305>,  <46.399281, 44.505413, 50.284595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.394135, 44.266365, 50.305305>,  <46.385555, 43.867950, 50.339821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.394135, 44.266365, 50.305305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245986, -0.078403, -0.966097,
		-0.969036, 0.041945, 0.243330,
		0.021445, 0.996039, -0.086293,
		46.400570, 44.565178, 50.279419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.778549, 44.093719, 49.968636>,  <46.385555, 43.867950, 50.339821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.778549, 44.093719, 49.968636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.062546, 44.369019, 49.908985>,  <46.232944, 44.534199, 49.873196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.062546, 44.369019, 49.908985>,  <45.778549, 44.093719, 49.968636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062546, 44.369019, 49.908985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117064, -0.093464, -0.988717,
		-0.694415, 0.719434, 0.014210,
		0.709988, 0.688244, -0.149122,
		46.275543, 44.575493, 49.864250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482258, 44.511158, 49.544285>,  <45.778549, 44.093719, 49.968636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482258, 44.511158, 49.544285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.852882, 44.651882, 49.491043>,  <46.075256, 44.736317, 49.459099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.852882, 44.651882, 49.491043>,  <45.482258, 44.511158, 49.544285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852882, 44.651882, 49.491043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155774, 0.036796, -0.987107,
		-0.342378, 0.935347, 0.088897,
		0.926559, 0.351812, -0.133104,
		46.130852, 44.757427, 49.451111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388748, 45.082569, 49.148930>,  <45.482258, 44.511158, 49.544285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388748, 45.082569, 49.148930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.776108, 44.988144, 49.116737>,  <46.008522, 44.931488, 49.097424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.776108, 44.988144, 49.116737>,  <45.388748, 45.082569, 49.148930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776108, 44.988144, 49.116737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022822, 0.237469, -0.971127,
		0.248356, 0.942276, 0.224577,
		0.968400, -0.236060, -0.080481,
		46.066628, 44.917328, 49.092594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616093, 45.628979, 48.720554>,  <45.388748, 45.082569, 49.148930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616093, 45.628979, 48.720554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.878410, 45.327667, 48.700535>,  <46.035801, 45.146881, 48.688522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.878410, 45.327667, 48.700535>,  <45.616093, 45.628979, 48.720554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878410, 45.327667, 48.700535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157510, 0.201355, -0.966771,
		0.738327, 0.626119, 0.250696,
		0.655793, -0.753280, -0.050046,
		46.075150, 45.101685, 48.685520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228474, 45.842655, 48.438126>,  <45.616093, 45.628979, 48.720554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228474, 45.842655, 48.438126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.212547, 45.448124, 48.374165>,  <46.202991, 45.211407, 48.335789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.212547, 45.448124, 48.374165>,  <46.228474, 45.842655, 48.438126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212547, 45.448124, 48.374165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180386, 0.150308, -0.972043,
		0.982790, -0.067547, 0.171935,
		-0.039815, -0.986329, -0.159906,
		46.200603, 45.152225, 48.326195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806400, 45.639069, 47.974823>,  <46.228474, 45.842655, 48.438126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806400, 45.639069, 47.974823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.566566, 45.319462, 47.956646>,  <46.422665, 45.127697, 47.945740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.566566, 45.319462, 47.956646>,  <46.806400, 45.639069, 47.974823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.566566, 45.319462, 47.956646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029106, 0.034976, -0.998964,
		0.799781, -0.600288, 0.002285,
		-0.599586, -0.799019, -0.045445,
		46.386692, 45.079758, 47.943012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.104485, 45.122852, 47.548038>,  <46.806400, 45.639069, 47.974823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.104485, 45.122852, 47.548038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.718071, 45.021767, 47.569611>,  <46.486221, 44.961117, 47.582554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.718071, 45.021767, 47.569611>,  <47.104485, 45.122852, 47.548038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718071, 45.021767, 47.569611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010111, -0.245520, -0.969339,
		0.258205, -0.935872, 0.239737,
		-0.966037, -0.252712, 0.053931,
		46.428261, 44.945953, 47.585789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.067707, 44.420593, 47.111423>,  <47.104485, 45.122852, 47.548038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.067707, 44.420593, 47.111423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.707466, 44.592278, 47.138813>,  <46.491322, 44.695290, 47.155247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.707466, 44.592278, 47.138813>,  <47.067707, 44.420593, 47.111423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707466, 44.592278, 47.138813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123479, -0.101623, -0.987130,
		-0.416729, -0.897469, 0.144521,
		-0.900605, 0.429211, 0.068470,
		46.437286, 44.721043, 47.159355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591568, 43.922913, 46.916233>,  <47.067707, 44.420593, 47.111423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.591568, 43.922913, 46.916233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.426811, 44.282600, 46.857243>,  <46.327957, 44.498413, 46.821850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.426811, 44.282600, 46.857243>,  <46.591568, 43.922913, 46.916233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.426811, 44.282600, 46.857243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044829, -0.181639, -0.982343,
		-0.910131, -0.398005, 0.115126,
		-0.411889, 0.899221, -0.147473,
		46.303246, 44.552368, 46.813000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.915005, 44.103687, 33.654797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125206, 44.443810, 33.643288>,  <45.251328, 44.647881, 33.636383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125206, 44.443810, 33.643288>,  <44.915005, 44.103687, 33.654797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125206, 44.443810, 33.643288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600336, 0.346637, -0.720721,
		-0.602860, 0.396014, 0.692628,
		0.525506, 0.850303, -0.028768,
		45.282856, 44.698902, 33.634659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398697, 44.612503, 33.631142>,  <44.915005, 44.103687, 33.654797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398697, 44.612503, 33.631142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.723320, 44.812199, 33.509731>,  <44.918095, 44.932018, 33.436886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.723320, 44.812199, 33.509731>,  <44.398697, 44.612503, 33.631142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723320, 44.812199, 33.509731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508509, 0.347715, -0.787727,
		-0.287727, 0.793632, 0.536061,
		0.811561, 0.499242, -0.303522,
		44.966789, 44.961971, 33.418674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245831, 45.372704, 33.616821>,  <44.398697, 44.612503, 33.631142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245831, 45.372704, 33.616821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.547020, 45.295410, 33.365204>,  <44.727734, 45.249035, 33.214233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.547020, 45.295410, 33.365204>,  <44.245831, 45.372704, 33.616821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547020, 45.295410, 33.365204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523322, 0.403714, -0.750433,
		0.398959, 0.894247, 0.202864,
		0.752971, -0.193229, -0.629044,
		44.772911, 45.237442, 33.176491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651684, 45.285259, 33.083225>,  <44.245831, 45.372704, 33.616821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651684, 45.285259, 33.083225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.305817, 45.484280, 33.055561>,  <43.098297, 45.603691, 33.038963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.305817, 45.484280, 33.055561>,  <43.651684, 45.285259, 33.083225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305817, 45.484280, 33.055561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034477, 0.196140, 0.979970,
		0.501154, 0.844966, -0.186751,
		-0.864671, 0.497555, -0.069164,
		43.046417, 45.633545, 33.034813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723541, 46.043243, 33.293945>,  <43.651684, 45.285259, 33.083225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723541, 46.043243, 33.293945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.346481, 45.926800, 33.359264>,  <43.120247, 45.856934, 33.398457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.346481, 45.926800, 33.359264>,  <43.723541, 46.043243, 33.293945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346481, 45.926800, 33.359264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099448, 0.222069, 0.969946,
		-0.318625, 0.930559, -0.180383,
		-0.942650, -0.291110, 0.163299,
		43.063686, 45.839466, 33.408253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286182, 46.668247, 33.708767>,  <43.723541, 46.043243, 33.293945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286182, 46.668247, 33.708767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092842, 46.325554, 33.780746>,  <42.976837, 46.119938, 33.823933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092842, 46.325554, 33.780746>,  <43.286182, 46.668247, 33.708767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092842, 46.325554, 33.780746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040258, 0.183586, 0.982179,
		-0.874499, 0.481984, -0.054247,
		-0.483354, -0.856731, 0.179949,
		42.947838, 46.068535, 33.834732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861462, 46.819244, 34.267918>,  <43.286182, 46.668247, 33.708767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861462, 46.819244, 34.267918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833458, 46.420250, 34.263416>,  <42.816654, 46.180855, 34.260715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833458, 46.420250, 34.263416>,  <42.861462, 46.819244, 34.267918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833458, 46.420250, 34.263416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060230, -0.015487, 0.998064,
		-0.995726, 0.069199, 0.061163,
		-0.070012, -0.997483, -0.011253,
		42.812454, 46.121006, 34.260040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390621, 46.675137, 34.795242>,  <42.861462, 46.819244, 34.267918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390621, 46.675137, 34.795242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604713, 46.342781, 34.734383>,  <42.733170, 46.143368, 34.697865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604713, 46.342781, 34.734383>,  <42.390621, 46.675137, 34.795242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604713, 46.342781, 34.734383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047473, -0.150252, 0.987507,
		-0.843373, -0.535764, -0.040974,
		0.535227, -0.830892, -0.152153,
		42.765282, 46.093513, 34.688736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018429, 46.179008, 35.201946>,  <42.390621, 46.675137, 34.795242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018429, 46.179008, 35.201946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.391205, 46.047035, 35.141785>,  <42.614872, 45.967850, 35.105690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.391205, 46.047035, 35.141785>,  <42.018429, 46.179008, 35.201946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391205, 46.047035, 35.141785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126107, -0.093970, 0.987556,
		-0.339966, -0.939314, -0.045967,
		0.931944, -0.329939, -0.150400,
		42.670788, 45.948055, 35.096664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092648, 45.849068, 35.793659>,  <42.018429, 46.179008, 35.201946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092648, 45.849068, 35.793659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.463364, 45.880428, 35.646740>,  <42.685795, 45.899246, 35.558590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.463364, 45.880428, 35.646740>,  <42.092648, 45.849068, 35.793659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463364, 45.880428, 35.646740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371649, -0.050517, 0.926998,
		0.054123, -0.995641, -0.075956,
		0.926794, 0.078401, -0.367295,
		42.741402, 45.903950, 35.536552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461678, 45.132229, 35.972248>,  <42.092648, 45.849068, 35.793659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461678, 45.132229, 35.972248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.723679, 45.431889, 35.932774>,  <42.880878, 45.611683, 35.909088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.723679, 45.431889, 35.932774>,  <42.461678, 45.132229, 35.972248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723679, 45.431889, 35.932774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288528, -0.127255, 0.948977,
		0.698368, -0.650061, -0.299504,
		0.655007, 0.749151, -0.098690,
		42.920181, 45.656635, 35.903168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034851, 44.878082, 36.383293>,  <42.461678, 45.132229, 35.972248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034851, 44.878082, 36.383293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.086067, 45.267746, 36.308865>,  <43.116798, 45.501545, 36.264210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.086067, 45.267746, 36.308865>,  <43.034851, 44.878082, 36.383293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086067, 45.267746, 36.308865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352437, 0.130673, 0.926668,
		0.927035, -0.184228, -0.326598,
		0.128041, 0.974158, -0.186067,
		43.124481, 45.559994, 36.253044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711113, 45.046413, 36.484123>,  <43.034851, 44.878082, 36.383293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711113, 45.046413, 36.484123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492088, 45.378319, 36.527340>,  <43.360676, 45.577461, 36.553268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492088, 45.378319, 36.527340>,  <43.711113, 45.046413, 36.484123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492088, 45.378319, 36.527340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371847, 0.125619, 0.919755,
		0.749607, 0.543794, -0.377329,
		-0.547557, 0.829764, 0.108043,
		43.327820, 45.627247, 36.559753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207558, 45.519299, 36.869576>,  <43.711113, 45.046413, 36.484123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207558, 45.519299, 36.869576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837395, 45.669224, 36.891998>,  <43.615299, 45.759178, 36.905453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837395, 45.669224, 36.891998>,  <44.207558, 45.519299, 36.869576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837395, 45.669224, 36.891998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186835, 0.322492, 0.927950,
		0.329730, 0.869202, -0.368464,
		-0.925403, 0.374815, 0.056062,
		43.559772, 45.781670, 36.908817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294468, 46.203922, 37.191982>,  <44.207558, 45.519299, 36.869576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294468, 46.203922, 37.191982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915413, 46.087418, 37.244373>,  <43.687981, 46.017517, 37.275806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915413, 46.087418, 37.244373>,  <44.294468, 46.203922, 37.191982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915413, 46.087418, 37.244373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031902, 0.321736, 0.946292,
		-0.317754, 0.900919, -0.295597,
		-0.947636, -0.291258, 0.130974,
		43.631123, 46.000042, 37.283665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947472, 46.780796, 37.486595>,  <44.294468, 46.203922, 37.191982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947472, 46.780796, 37.486595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.705086, 46.476166, 37.578506>,  <43.559654, 46.293388, 37.633656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.705086, 46.476166, 37.578506>,  <43.947472, 46.780796, 37.486595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705086, 46.476166, 37.578506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033500, 0.313032, 0.949152,
		-0.794784, 0.567457, -0.215200,
		-0.605967, -0.761580, 0.229783,
		43.523296, 46.247692, 37.647442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397423, 47.063286, 38.030167>,  <43.947472, 46.780796, 37.486595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397423, 47.063286, 38.030167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.410873, 46.665131, 38.066093>,  <43.418941, 46.426235, 38.087650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.410873, 46.665131, 38.066093>,  <43.397423, 47.063286, 38.030167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410873, 46.665131, 38.066093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002542, 0.089951, 0.995943,
		-0.999431, -0.033259, 0.005555,
		0.033623, -0.995391, 0.089816,
		43.420959, 46.366512, 38.093037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920788, 46.894794, 38.524590>,  <43.397423, 47.063286, 38.030167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920788, 46.894794, 38.524590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125557, 46.551872, 38.502808>,  <43.248417, 46.346119, 38.489738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125557, 46.551872, 38.502808>,  <42.920788, 46.894794, 38.524590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125557, 46.551872, 38.502808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075224, -0.107884, 0.991313,
		-0.855731, -0.503381, -0.119718,
		0.511924, -0.857303, -0.054454,
		43.279133, 46.294682, 38.486473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452797, 46.456287, 38.898109>,  <42.920788, 46.894794, 38.524590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452797, 46.456287, 38.898109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.818558, 46.294579, 38.906326>,  <43.038013, 46.197552, 38.911259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.818558, 46.294579, 38.906326>,  <42.452797, 46.456287, 38.898109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818558, 46.294579, 38.906326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128994, -0.242902, 0.961436,
		-0.383696, -0.881793, -0.274261,
		0.914405, -0.404277, 0.020545,
		43.092880, 46.173294, 38.912491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435650, 45.891224, 39.268333>,  <42.452797, 46.456287, 38.898109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435650, 45.891224, 39.268333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.834801, 45.916885, 39.263996>,  <43.074291, 45.932281, 39.261395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.834801, 45.916885, 39.263996>,  <42.435650, 45.891224, 39.268333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834801, 45.916885, 39.263996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028769, -0.285623, 0.957910,
		0.058362, -0.956192, -0.286864,
		0.997881, 0.064158, -0.010839,
		43.134167, 45.936134, 39.260746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652615, 45.265320, 39.572803>,  <42.435650, 45.891224, 39.268333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652615, 45.265320, 39.572803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.921623, 45.556210, 39.627724>,  <43.083031, 45.730743, 39.660675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.921623, 45.556210, 39.627724>,  <42.652615, 45.265320, 39.572803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921623, 45.556210, 39.627724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134195, -0.062616, 0.988975,
		0.727806, -0.683535, 0.055479,
		0.672525, 0.727227, 0.137300,
		43.123383, 45.774376, 39.668915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707981, 45.211491, 40.227898>,  <42.652615, 45.265320, 39.572803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707981, 45.211491, 40.227898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.936073, 45.536015, 40.176338>,  <43.072929, 45.730728, 40.145401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.936073, 45.536015, 40.176338>,  <42.707981, 45.211491, 40.227898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936073, 45.536015, 40.176338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002653, 0.155093, 0.987896,
		0.821483, -0.563667, 0.086286,
		0.570227, 0.811311, -0.128902,
		43.107143, 45.779408, 40.137669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205788, 45.014072, 40.657051>,  <42.707981, 45.211491, 40.227898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205788, 45.014072, 40.657051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.198357, 45.412788, 40.625877>,  <43.193897, 45.652016, 40.607174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.198357, 45.412788, 40.625877>,  <43.205788, 45.014072, 40.657051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198357, 45.412788, 40.625877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265602, 0.080065, 0.960752,
		0.963903, -0.002848, -0.266236,
		-0.018580, 0.996785, -0.077932,
		43.192783, 45.711823, 40.602497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830906, 45.209740, 40.950672>,  <43.205788, 45.014072, 40.657051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830906, 45.209740, 40.950672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573242, 45.515293, 40.966324>,  <43.418644, 45.698627, 40.975716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573242, 45.515293, 40.966324>,  <43.830906, 45.209740, 40.950672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573242, 45.515293, 40.966324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079012, -0.117338, 0.989944,
		0.760797, 0.634593, 0.135941,
		-0.644163, 0.763887, 0.039130,
		43.379993, 45.744461, 40.978062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051315, 45.551338, 41.486752>,  <43.830906, 45.209740, 40.950672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051315, 45.551338, 41.486752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.684052, 45.699409, 41.430267>,  <43.463692, 45.788254, 41.396378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.684052, 45.699409, 41.430267>,  <44.051315, 45.551338, 41.486752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684052, 45.699409, 41.430267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119493, 0.081084, 0.989518,
		0.377751, 0.925414, -0.030214,
		-0.918164, 0.370181, -0.141211,
		43.408604, 45.810463, 41.387905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082195, 46.215084, 41.792721>,  <44.051315, 45.551338, 41.486752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082195, 46.215084, 41.792721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.702271, 46.090309, 41.783333>,  <43.474316, 46.015442, 41.777702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.702271, 46.090309, 41.783333>,  <44.082195, 46.215084, 41.792721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702271, 46.090309, 41.783333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034310, 0.029318, 0.998981,
		-0.310934, 0.949649, -0.038549,
		-0.949812, -0.311940, -0.023467,
		43.417328, 45.996727, 41.776295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672325, 46.793621, 42.078606>,  <44.082195, 46.215084, 41.792721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672325, 46.793621, 42.078606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.468407, 46.450706, 42.107330>,  <43.346054, 46.244957, 42.124565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.468407, 46.450706, 42.107330>,  <43.672325, 46.793621, 42.078606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468407, 46.450706, 42.107330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097949, 0.140770, 0.985185,
		-0.854698, 0.495214, -0.155735,
		-0.509801, -0.857290, 0.071810,
		43.315468, 46.193520, 42.128872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263180, 46.863060, 42.639763>,  <43.672325, 46.793621, 42.078606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263180, 46.863060, 42.639763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265938, 46.467354, 42.581367>,  <43.267593, 46.229931, 42.546329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265938, 46.467354, 42.581367>,  <43.263180, 46.863060, 42.639763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265938, 46.467354, 42.581367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034952, -0.146144, 0.988646,
		-0.999365, -0.001718, -0.035585,
		0.006899, -0.989262, -0.145991,
		43.268009, 46.170574, 42.537571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714779, 46.710598, 42.918827>,  <43.263180, 46.863060, 42.639763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714779, 46.710598, 42.918827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946922, 46.384865, 42.921593>,  <43.086208, 46.189426, 42.923252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946922, 46.384865, 42.921593>,  <42.714779, 46.710598, 42.918827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946922, 46.384865, 42.921593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218419, -0.147478, 0.964647,
		-0.784521, -0.561354, -0.263455,
		0.580362, -0.814329, 0.006911,
		43.121033, 46.140568, 42.923664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358673, 46.279919, 43.297638>,  <42.714779, 46.710598, 42.918827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358673, 46.279919, 43.297638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.703583, 46.077385, 43.293354>,  <42.910526, 45.955864, 43.290783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.703583, 46.077385, 43.293354>,  <42.358673, 46.279919, 43.297638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703583, 46.077385, 43.293354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157064, -0.287451, 0.944830,
		-0.481478, -0.813017, -0.327388,
		0.862270, -0.506335, -0.010706,
		42.962265, 45.925484, 43.290142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216545, 45.637245, 43.677513>,  <42.358673, 46.279919, 43.297638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216545, 45.637245, 43.677513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610321, 45.707428, 43.673500>,  <42.846584, 45.749538, 43.671093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610321, 45.707428, 43.673500>,  <42.216545, 45.637245, 43.677513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610321, 45.707428, 43.673500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054768, -0.252038, 0.966166,
		0.166994, -0.951678, -0.257725,
		0.984436, 0.175459, -0.010033,
		42.905651, 45.760067, 43.670490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477272, 45.219418, 44.102123>,  <42.216545, 45.637245, 43.677513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477272, 45.219418, 44.102123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.761368, 45.500290, 44.122131>,  <42.931824, 45.668816, 44.134136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.761368, 45.500290, 44.122131>,  <42.477272, 45.219418, 44.102123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761368, 45.500290, 44.122131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163922, -0.234070, 0.958301,
		0.684614, -0.672419, -0.281348,
		0.710235, 0.702186, 0.050023,
		42.974438, 45.710945, 44.137138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.486362, 44.356049, 44.357098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473305, 44.751892, 44.413124>,  <43.465469, 44.989399, 44.446739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473305, 44.751892, 44.413124>,  <43.486362, 44.356049, 44.357098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473305, 44.751892, 44.413124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024921, -0.140902, 0.989710,
		0.999156, 0.028816, 0.029262,
		-0.032643, 0.989604, 0.140065,
		43.463512, 45.048775, 44.455143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965786, 44.480419, 44.814934>,  <43.486362, 44.356049, 44.357098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965786, 44.480419, 44.814934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722488, 44.796101, 44.848888>,  <43.576511, 44.985508, 44.869263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722488, 44.796101, 44.848888>,  <43.965786, 44.480419, 44.814934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722488, 44.796101, 44.848888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113245, -0.192128, 0.974814,
		0.785634, 0.583308, 0.206233,
		-0.608240, 0.789201, 0.084886,
		43.540016, 45.032860, 44.874355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353943, 44.880493, 45.233326>,  <43.965786, 44.480419, 44.814934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353943, 44.880493, 45.233326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969330, 44.986057, 45.263809>,  <43.738564, 45.049397, 45.282101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969330, 44.986057, 45.263809>,  <44.353943, 44.880493, 45.233326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969330, 44.986057, 45.263809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046178, -0.118200, 0.991916,
		0.270783, 0.957278, 0.101466,
		-0.961532, 0.263909, 0.076212,
		43.680870, 45.065231, 45.286674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010303, 45.326363, 45.196632>,  <44.353943, 44.880493, 45.233326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010303, 45.326363, 45.196632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338539, 45.097969, 45.186745>,  <45.535480, 44.960934, 45.180813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338539, 45.097969, 45.186745>,  <45.010303, 45.326363, 45.196632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.338539, 45.097969, 45.186745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061267, 0.130891, -0.989502,
		0.568224, 0.810460, 0.142391,
		0.820590, -0.570983, -0.024721,
		45.584717, 44.926674, 45.179329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459946, 45.735931, 44.889515>,  <45.010303, 45.326363, 45.196632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459946, 45.735931, 44.889515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618660, 45.370422, 44.854710>,  <45.713890, 45.151115, 44.833824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618660, 45.370422, 44.854710>,  <45.459946, 45.735931, 44.889515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618660, 45.370422, 44.854710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014661, 0.101095, -0.994769,
		0.917793, 0.393437, 0.053510,
		0.396788, -0.913776, -0.087016,
		45.737698, 45.096291, 44.828606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904503, 45.810135, 44.358112>,  <45.459946, 45.735931, 44.889515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904503, 45.810135, 44.358112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866272, 45.414200, 44.400211>,  <45.843334, 45.176640, 44.425472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866272, 45.414200, 44.400211>,  <45.904503, 45.810135, 44.358112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.866272, 45.414200, 44.400211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123033, -0.116672, -0.985521,
		0.987789, -0.081246, 0.132934,
		-0.095579, -0.989842, 0.105252,
		45.837597, 45.117249, 44.431786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.525215, 45.440407, 44.083843>,  <45.904503, 45.810135, 44.358112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.525215, 45.440407, 44.083843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.242981, 45.157082, 44.075428>,  <46.073643, 44.987087, 44.070377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.242981, 45.157082, 44.075428>,  <46.525215, 45.440407, 44.083843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242981, 45.157082, 44.075428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253169, -0.224240, -0.941075,
		0.661861, -0.669331, 0.337543,
		-0.705582, -0.708317, -0.021038,
		46.031307, 44.944588, 44.069118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.839291, 44.840187, 43.734852>,  <46.525215, 45.440407, 44.083843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.839291, 44.840187, 43.734852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441902, 44.801277, 43.711037>,  <46.203468, 44.777931, 43.696747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441902, 44.801277, 43.711037>,  <46.839291, 44.840187, 43.734852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441902, 44.801277, 43.711037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081086, -0.235378, -0.968515,
		0.080203, -0.967023, 0.241730,
		-0.993475, -0.097278, -0.059534,
		46.143860, 44.772095, 43.693176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.794113, 44.188660, 43.466900>,  <46.839291, 44.840187, 43.734852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.794113, 44.188660, 43.466900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471237, 44.408760, 43.381413>,  <46.277512, 44.540821, 43.330120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471237, 44.408760, 43.381413>,  <46.794113, 44.188660, 43.466900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471237, 44.408760, 43.381413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066572, -0.274887, -0.959169,
		-0.586530, -0.788456, 0.185254,
		-0.807187, 0.550249, -0.213719,
		46.229080, 44.573833, 43.317295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.444218, 43.903580, 42.987427>,  <46.794113, 44.188660, 43.466900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.444218, 43.903580, 42.987427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252045, 44.251350, 42.941311>,  <46.136742, 44.460011, 42.913639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252045, 44.251350, 42.941311>,  <46.444218, 43.903580, 42.987427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252045, 44.251350, 42.941311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161062, -0.216686, -0.962864,
		-0.862118, -0.444018, 0.244133,
		-0.480429, 0.869422, -0.115294,
		46.107918, 44.512177, 42.906723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082451, 43.724529, 42.397709>,  <46.444218, 43.903580, 42.987427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082451, 43.724529, 42.397709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068840, 44.124252, 42.403622>,  <46.060673, 44.364086, 42.407169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068840, 44.124252, 42.403622>,  <46.082451, 43.724529, 42.397709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068840, 44.124252, 42.403622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050555, 0.013055, -0.998636,
		-0.998141, -0.034733, 0.050076,
		-0.034032, 0.999311, 0.014786,
		46.058632, 44.424046, 42.408058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555161, 43.933502, 41.966908>,  <46.082451, 43.724529, 42.397709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555161, 43.933502, 41.966908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792709, 44.255299, 41.971203>,  <45.935238, 44.448376, 41.973782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792709, 44.255299, 41.971203>,  <45.555161, 43.933502, 41.966908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792709, 44.255299, 41.971203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127786, 0.107494, -0.985959,
		-0.794350, 0.584157, 0.166640,
		0.593867, 0.804491, 0.010740,
		45.970871, 44.496647, 41.974426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157963, 44.422932, 41.736481>,  <45.555161, 43.933502, 41.966908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157963, 44.422932, 41.736481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532799, 44.548038, 41.674454>,  <45.757698, 44.623104, 41.637238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532799, 44.548038, 41.674454>,  <45.157963, 44.422932, 41.736481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532799, 44.548038, 41.674454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246199, 0.277185, -0.928738,
		-0.247497, 0.908485, 0.336749,
		0.937086, 0.312768, -0.155066,
		45.813923, 44.641869, 41.627934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.073250, 45.060005, 41.226124>,  <45.157963, 44.422932, 41.736481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.073250, 45.060005, 41.226124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459549, 44.959961, 41.198463>,  <45.691326, 44.899933, 41.181866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459549, 44.959961, 41.198463>,  <45.073250, 45.060005, 41.226124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459549, 44.959961, 41.198463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058657, 0.469990, -0.880720,
		0.252777, 0.846495, 0.468561,
		0.965745, -0.250111, -0.069150,
		45.749271, 44.884926, 41.177719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383842, 45.670963, 40.853725>,  <45.073250, 45.060005, 41.226124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383842, 45.670963, 40.853725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595284, 45.334766, 40.806141>,  <45.722149, 45.133049, 40.777592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595284, 45.334766, 40.806141>,  <45.383842, 45.670963, 40.853725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595284, 45.334766, 40.806141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099639, 0.200609, -0.974591,
		0.842999, 0.503323, 0.189789,
		0.528607, -0.840489, -0.118963,
		45.753864, 45.082619, 40.770451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940727, 45.823498, 40.436771>,  <45.383842, 45.670963, 40.853725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940727, 45.823498, 40.436771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942375, 45.426357, 40.389072>,  <45.943363, 45.188072, 40.360455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942375, 45.426357, 40.389072>,  <45.940727, 45.823498, 40.436771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942375, 45.426357, 40.389072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027829, 0.119317, -0.992466,
		0.999604, 0.000766, 0.028121,
		0.004116, -0.992856, -0.119248,
		45.943611, 45.128502, 40.353298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216610, 45.748013, 39.798157>,  <45.940727, 45.823498, 40.436771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216610, 45.748013, 39.798157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040840, 45.393574, 39.857121>,  <45.935379, 45.180908, 39.892498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040840, 45.393574, 39.857121>,  <46.216610, 45.748013, 39.798157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.040840, 45.393574, 39.857121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081408, -0.124145, -0.988919,
		0.894581, -0.446559, -0.017583,
		-0.439428, -0.886100, 0.147411,
		45.909012, 45.127743, 39.901344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580532, 45.311905, 39.454903>,  <46.216610, 45.748013, 39.798157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580532, 45.311905, 39.454903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230301, 45.119324, 39.470692>,  <46.020161, 45.003773, 39.480164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230301, 45.119324, 39.470692>,  <46.580532, 45.311905, 39.454903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.230301, 45.119324, 39.470692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139354, -0.329974, -0.933648,
		0.462535, -0.811984, 0.356012,
		-0.875581, -0.481456, 0.039471,
		45.967625, 44.974888, 39.482533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655418, 44.738426, 38.959354>,  <46.580532, 45.311905, 39.454903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655418, 44.738426, 38.959354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259941, 44.773838, 39.007782>,  <46.022655, 44.795086, 39.036839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259941, 44.773838, 39.007782>,  <46.655418, 44.738426, 38.959354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.259941, 44.773838, 39.007782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133960, -0.158225, -0.978274,
		-0.067449, -0.983427, 0.168294,
		-0.988689, 0.088528, 0.121068,
		45.963333, 44.800396, 39.044102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338245, 44.026192, 38.926815>,  <46.655418, 44.738426, 38.959354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338245, 44.026192, 38.926815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064896, 44.306683, 38.845543>,  <45.900887, 44.474976, 38.796780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064896, 44.306683, 38.845543>,  <46.338245, 44.026192, 38.926815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.064896, 44.306683, 38.845543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027101, -0.302480, -0.952770,
		-0.729566, -0.645591, 0.225710,
		-0.683373, 0.701226, -0.203183,
		45.859882, 44.517052, 38.784588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876755, 43.621941, 38.639317>,  <46.338245, 44.026192, 38.926815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876755, 43.621941, 38.639317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779533, 43.991257, 38.520344>,  <45.721203, 44.212845, 38.448959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779533, 43.991257, 38.520344>,  <45.876755, 43.621941, 38.639317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779533, 43.991257, 38.520344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266198, -0.358345, -0.894834,
		-0.932773, -0.138313, 0.332873,
		-0.243050, 0.923287, -0.297435,
		45.706619, 44.268242, 38.431114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331352, 43.413780, 38.245502>,  <45.876755, 43.621941, 38.639317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331352, 43.413780, 38.245502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441849, 43.769009, 38.098526>,  <45.508148, 43.982147, 38.010342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441849, 43.769009, 38.098526>,  <45.331352, 43.413780, 38.245502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441849, 43.769009, 38.098526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248742, -0.303229, -0.919880,
		-0.928342, 0.345507, 0.137137,
		0.276241, 0.888075, -0.367443,
		45.524719, 44.035431, 37.988293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914719, 43.506870, 37.679852>,  <45.331352, 43.413780, 38.245502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914719, 43.506870, 37.679852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191559, 43.787632, 37.612537>,  <45.357662, 43.956089, 37.572151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191559, 43.787632, 37.612537>,  <44.914719, 43.506870, 37.679852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191559, 43.787632, 37.612537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038419, -0.196991, -0.979652,
		-0.720774, 0.684487, -0.109371,
		0.692104, 0.701907, -0.168283,
		45.399189, 43.998203, 37.562054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748817, 44.063023, 37.054470>,  <44.914719, 43.506870, 37.679852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748817, 44.063023, 37.054470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147118, 44.077759, 37.088211>,  <45.386097, 44.086601, 37.108456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147118, 44.077759, 37.088211>,  <44.748817, 44.063023, 37.054470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147118, 44.077759, 37.088211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080440, 0.097078, -0.992021,
		-0.044735, 0.994595, 0.093702,
		0.995755, 0.036840, 0.084348,
		45.445843, 44.088810, 37.113514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.011215, 44.602245, 36.547161>,  <44.748817, 44.063023, 37.054470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.011215, 44.602245, 36.547161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360214, 44.413982, 36.599670>,  <45.569614, 44.301025, 36.631176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360214, 44.413982, 36.599670>,  <45.011215, 44.602245, 36.547161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360214, 44.413982, 36.599670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161330, 0.023882, -0.986612,
		0.461221, 0.881993, 0.096768,
		0.872495, -0.470657, 0.131277,
		45.621964, 44.272785, 36.639053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495461, 45.084473, 36.262997>,  <45.011215, 44.602245, 36.547161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495461, 45.084473, 36.262997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652321, 44.716572, 36.256367>,  <45.746437, 44.495831, 36.252388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652321, 44.716572, 36.256367>,  <45.495461, 45.084473, 36.262997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.652321, 44.716572, 36.256367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174874, 0.092230, -0.980262,
		0.903126, 0.381512, 0.197009,
		0.392152, -0.919751, -0.016579,
		45.769966, 44.440647, 36.251392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198196, 45.156067, 36.083237>,  <45.495461, 45.084473, 36.262997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198196, 45.156067, 36.083237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083260, 44.786560, 35.981968>,  <46.014297, 44.564857, 35.921207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083260, 44.786560, 35.981968>,  <46.198196, 45.156067, 36.083237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083260, 44.786560, 35.981968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050920, 0.249208, -0.967110,
		0.956474, -0.290783, -0.024570,
		-0.287342, -0.923764, -0.253168,
		45.997055, 44.509430, 35.906017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576717, 45.096825, 35.515141>,  <46.198196, 45.156067, 36.083237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.576717, 45.096825, 35.515141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.306953, 44.803085, 35.484436>,  <46.145096, 44.626842, 35.466015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.306953, 44.803085, 35.484436>,  <46.576717, 45.096825, 35.515141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306953, 44.803085, 35.484436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080099, 0.030579, -0.996318,
		0.733996, -0.678079, 0.038198,
		-0.674414, -0.734353, -0.076759,
		46.104630, 44.582779, 35.461407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.833344, 44.620113, 35.045502>,  <46.576717, 45.096825, 35.515141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.833344, 44.620113, 35.045502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439613, 44.549835, 35.051559>,  <46.203373, 44.507668, 35.055195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439613, 44.549835, 35.051559>,  <46.833344, 44.620113, 35.045502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439613, 44.549835, 35.051559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009639, -0.032125, -0.999437,
		0.176084, -0.983920, 0.029928,
		-0.984328, -0.175696, 0.015141,
		46.144314, 44.497128, 35.056103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.746735, 44.290321, 34.442577>,  <46.833344, 44.620113, 35.045502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.746735, 44.290321, 34.442577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.380013, 44.419621, 34.536369>,  <46.159981, 44.497200, 34.592644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.380013, 44.419621, 34.536369>,  <46.746735, 44.290321, 34.442577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.380013, 44.419621, 34.536369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176836, 0.197841, -0.964151,
		-0.358047, -0.925404, -0.124220,
		-0.916805, 0.323245, 0.234481,
		46.104969, 44.516594, 34.606712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.316608, 43.996651, 33.895790>,  <46.746735, 44.290321, 34.442577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.316608, 43.996651, 33.895790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092239, 44.286640, 34.055676>,  <45.957619, 44.460632, 34.151608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092239, 44.286640, 34.055676>,  <46.316608, 43.996651, 33.895790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092239, 44.286640, 34.055676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308245, 0.265212, -0.913590,
		-0.768340, -0.635667, 0.074706,
		-0.560927, 0.724975, 0.399715,
		45.923962, 44.504131, 34.175591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697319, 43.884769, 33.664352>,  <46.316608, 43.996651, 33.895790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697319, 43.884769, 33.664352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.676315, 44.266968, 33.780472>,  <45.663712, 44.496284, 33.850143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.676315, 44.266968, 33.780472>,  <45.697319, 43.884769, 33.664352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676315, 44.266968, 33.780472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516770, 0.222753, -0.826638,
		-0.854512, -0.193427, 0.482074,
		-0.052511, 0.955493, 0.290303,
		45.660561, 44.553616, 33.867561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<45.756325, 43.799484, 46.308701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.864098, 44.184681, 46.311634>,  <45.928761, 44.415798, 46.313393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.864098, 44.184681, 46.311634>,  <45.756325, 43.799484, 46.308701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864098, 44.184681, 46.311634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340181, 0.102298, -0.934779,
		-0.900935, 0.249362, 0.355154,
		0.269430, 0.962992, 0.007335,
		45.944927, 44.473579, 46.313835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111237, 44.223072, 46.148941>,  <45.756325, 43.799484, 46.308701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111237, 44.223072, 46.148941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.427864, 44.453712, 46.067993>,  <45.617840, 44.592094, 46.019424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.427864, 44.453712, 46.067993>,  <45.111237, 44.223072, 46.148941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427864, 44.453712, 46.067993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357362, 0.168166, -0.918702,
		-0.495690, 0.799535, 0.339170,
		0.791571, 0.576597, -0.202365,
		45.665337, 44.626690, 46.007282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930576, 44.802078, 45.708485>,  <45.111237, 44.223072, 46.148941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930576, 44.802078, 45.708485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.325737, 44.782642, 45.649567>,  <45.562832, 44.770981, 45.614216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.325737, 44.782642, 45.649567>,  <44.930576, 44.802078, 45.708485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325737, 44.782642, 45.649567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146278, 0.023886, -0.988955,
		0.051571, 0.998533, 0.016489,
		0.987898, -0.048589, -0.147296,
		45.622105, 44.768066, 45.605377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317924, 45.353027, 45.781696>,  <44.930576, 44.802078, 45.708485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317924, 45.353027, 45.781696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.933609, 45.244766, 45.757603>,  <43.703018, 45.179810, 45.743145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.933609, 45.244766, 45.757603>,  <44.317924, 45.353027, 45.781696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933609, 45.244766, 45.757603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025243, -0.301720, 0.953062,
		-0.276124, 0.914173, 0.296722,
		-0.960790, -0.270654, -0.060236,
		43.645370, 45.163570, 45.739532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929501, 45.540138, 46.362141>,  <44.317924, 45.353027, 45.781696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929501, 45.540138, 46.362141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.677261, 45.256214, 46.236588>,  <43.525917, 45.085861, 46.161255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.677261, 45.256214, 46.236588>,  <43.929501, 45.540138, 46.362141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677261, 45.256214, 46.236588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115791, -0.313862, 0.942381,
		-0.767425, 0.630607, 0.115731,
		-0.630596, -0.709806, -0.313885,
		43.488083, 45.043274, 46.142422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463772, 45.528946, 46.881542>,  <43.929501, 45.540138, 46.362141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463772, 45.528946, 46.881542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.410217, 45.192894, 46.671303>,  <43.378086, 44.991261, 46.545158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.410217, 45.192894, 46.671303>,  <43.463772, 45.528946, 46.881542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410217, 45.192894, 46.671303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156694, -0.505751, 0.848330,
		-0.978531, 0.195934, -0.063932,
		-0.133883, -0.840135, -0.525594,
		43.370052, 44.940853, 46.513626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767063, 45.305050, 47.050514>,  <43.463772, 45.528946, 46.881542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767063, 45.305050, 47.050514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.987938, 44.989246, 46.943363>,  <43.120464, 44.799763, 46.879070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.987938, 44.989246, 46.943363>,  <42.767063, 45.305050, 47.050514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987938, 44.989246, 46.943363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255586, -0.466142, 0.846987,
		-0.793577, -0.399229, -0.459186,
		0.552188, -0.789511, -0.267882,
		43.153595, 44.752392, 46.862999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347332, 44.690094, 46.975121>,  <42.767063, 45.305050, 47.050514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347332, 44.690094, 46.975121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.713348, 44.545147, 47.045982>,  <42.932961, 44.458179, 47.088501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.713348, 44.545147, 47.045982>,  <42.347332, 44.690094, 46.975121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713348, 44.545147, 47.045982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332791, -0.430078, 0.839216,
		-0.227909, -0.826877, -0.514132,
		0.915045, -0.362364, 0.177159,
		42.987862, 44.436440, 47.099129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174870, 44.114658, 47.330139>,  <42.347332, 44.690094, 46.975121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174870, 44.114658, 47.330139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.567856, 44.148636, 47.396538>,  <42.803646, 44.169022, 47.436375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.567856, 44.148636, 47.396538>,  <42.174870, 44.114658, 47.330139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567856, 44.148636, 47.396538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133975, -0.297591, 0.945246,
		0.129694, -0.950907, -0.280991,
		0.982461, 0.084946, 0.165994,
		42.862595, 44.174118, 47.446335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430183, 43.515541, 47.822140>,  <42.174870, 44.114658, 47.330139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430183, 43.515541, 47.822140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.709259, 43.799812, 47.858292>,  <42.876705, 43.970375, 47.879982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.709259, 43.799812, 47.858292>,  <42.430183, 43.515541, 47.822140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709259, 43.799812, 47.858292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006346, -0.120019, 0.992751,
		0.716376, -0.693202, -0.079226,
		0.697686, 0.710680, 0.090378,
		42.918564, 44.013016, 47.885406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990211, 43.284077, 48.338089>,  <42.430183, 43.515541, 47.822140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990211, 43.284077, 48.338089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.989563, 43.683990, 48.329754>,  <42.989174, 43.923939, 48.324753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.989563, 43.683990, 48.329754>,  <42.990211, 43.284077, 48.338089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989563, 43.683990, 48.329754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071338, 0.020670, 0.997238,
		0.997451, 0.003100, 0.071289,
		-0.001618, 0.999782, -0.020839,
		42.989079, 43.983925, 48.323502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133877, 43.369148, 48.960655>,  <42.990211, 43.284077, 48.338089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133877, 43.369148, 48.960655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.059944, 43.743027, 48.839207>,  <43.015583, 43.967354, 48.766338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.059944, 43.743027, 48.839207>,  <43.133877, 43.369148, 48.960655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059944, 43.743027, 48.839207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070285, 0.295581, 0.952729,
		0.980253, 0.197436, 0.011062,
		-0.184834, 0.934693, -0.303621,
		43.004494, 44.023434, 48.748119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689102, 43.881012, 49.230820>,  <43.133877, 43.369148, 48.960655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689102, 43.881012, 49.230820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.356697, 44.094799, 49.169155>,  <43.157253, 44.223072, 49.132156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.356697, 44.094799, 49.169155>,  <43.689102, 43.881012, 49.230820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356697, 44.094799, 49.169155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034655, 0.226860, 0.973310,
		0.555178, 0.814172, -0.170001,
		-0.831009, 0.534470, -0.154163,
		43.107395, 44.255138, 49.122906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704456, 44.552334, 49.498867>,  <43.689102, 43.881012, 49.230820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704456, 44.552334, 49.498867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.310410, 44.490776, 49.468269>,  <43.073982, 44.453842, 49.449909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.310410, 44.490776, 49.468269>,  <43.704456, 44.552334, 49.498867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310410, 44.490776, 49.468269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113241, 0.246454, 0.962516,
		-0.129275, 0.956857, -0.260215,
		-0.985121, -0.153896, -0.076495,
		43.014874, 44.444607, 49.445320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434959, 45.083984, 49.869980>,  <43.704456, 44.552334, 49.498867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434959, 45.083984, 49.869980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.137245, 44.817234, 49.855431>,  <42.958618, 44.657185, 49.846703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.137245, 44.817234, 49.855431>,  <43.434959, 45.083984, 49.869980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137245, 44.817234, 49.855431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148647, 0.112315, 0.982491,
		-0.651112, 0.736659, -0.182723,
		-0.744283, -0.666873, -0.036373,
		42.913960, 44.617172, 49.844521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893932, 45.462162, 50.152130>,  <43.434959, 45.083984, 49.869980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893932, 45.462162, 50.152130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.775505, 45.083019, 50.199303>,  <42.704449, 44.855534, 50.227608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.775505, 45.083019, 50.199303>,  <42.893932, 45.462162, 50.152130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775505, 45.083019, 50.199303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162631, 0.171689, 0.971635,
		-0.941220, 0.268489, -0.204982,
		-0.296067, -0.947859, 0.117932,
		42.686684, 44.798660, 50.234684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288250, 45.499615, 50.660995>,  <42.893932, 45.462162, 50.152130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288250, 45.499615, 50.660995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.413651, 45.119781, 50.662186>,  <42.488892, 44.891880, 50.662899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.413651, 45.119781, 50.662186>,  <42.288250, 45.499615, 50.660995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413651, 45.119781, 50.662186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228323, -0.072338, 0.970895,
		-0.921731, -0.305052, -0.239490,
		0.313497, -0.949585, 0.002974,
		42.507698, 44.834908, 50.663078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745144, 45.150482, 50.991344>,  <42.288250, 45.499615, 50.660995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745144, 45.150482, 50.991344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.046509, 44.887707, 51.002602>,  <42.227329, 44.730042, 51.009357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.046509, 44.887707, 51.002602>,  <41.745144, 45.150482, 50.991344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046509, 44.887707, 51.002602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284919, -0.287588, 0.914393,
		-0.592610, -0.696936, -0.403849,
		0.753415, -0.656942, 0.028143,
		42.272533, 44.690624, 51.011044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520218, 44.492207, 51.158607>,  <41.745144, 45.150482, 50.991344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520218, 44.492207, 51.158607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.897697, 44.552788, 51.276245>,  <42.124184, 44.589134, 51.346828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.897697, 44.552788, 51.276245>,  <41.520218, 44.492207, 51.158607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897697, 44.552788, 51.276245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281681, -0.098269, 0.954463,
		0.173455, -0.983568, -0.050075,
		0.943700, 0.151451, 0.294097,
		42.180809, 44.598221, 51.364475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568951, 44.285610, 51.944351>,  <41.520218, 44.492207, 51.158607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568951, 44.285610, 51.944351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.947311, 44.408760, 51.903408>,  <42.174328, 44.482651, 51.878841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.947311, 44.408760, 51.903408>,  <41.568951, 44.285610, 51.944351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947311, 44.408760, 51.903408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085067, 0.069104, 0.993976,
		0.313090, -0.948915, 0.039177,
		0.945906, 0.307871, -0.102357,
		42.231083, 44.501122, 51.872700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953133, 43.912132, 52.376495>,  <41.568951, 44.285610, 51.944351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953133, 43.912132, 52.376495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.139427, 44.259392, 52.307907>,  <42.251205, 44.467747, 52.266754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.139427, 44.259392, 52.307907>,  <41.953133, 43.912132, 52.376495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139427, 44.259392, 52.307907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117928, 0.131148, 0.984324,
		0.877029, -0.478659, -0.041299,
		0.465739, 0.868151, -0.171468,
		42.279148, 44.519836, 52.256466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384651, 43.886280, 52.800663>,  <41.953133, 43.912132, 52.376495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384651, 43.886280, 52.800663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.365486, 44.276356, 52.714207>,  <42.353989, 44.510399, 52.662334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.365486, 44.276356, 52.714207>,  <42.384651, 43.886280, 52.800663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365486, 44.276356, 52.714207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106380, 0.220137, 0.969651,
		0.993171, 0.023465, -0.114287,
		-0.047912, 0.975187, -0.216137,
		42.351112, 44.568913, 52.649364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912697, 44.203442, 53.223919>,  <42.384651, 43.886280, 52.800663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912697, 44.203442, 53.223919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.662659, 44.492962, 53.107048>,  <42.512634, 44.666676, 53.036926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.662659, 44.492962, 53.107048>,  <42.912697, 44.203442, 53.223919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662659, 44.492962, 53.107048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126085, 0.463036, 0.877325,
		0.770297, 0.511574, -0.380703,
		-0.625096, 0.723802, -0.292173,
		42.475128, 44.710102, 53.019398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271885, 44.804047, 53.457367>,  <42.912697, 44.203442, 53.223919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271885, 44.804047, 53.457367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.891052, 44.910641, 53.397331>,  <42.662552, 44.974598, 53.361309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.891052, 44.910641, 53.397331>,  <43.271885, 44.804047, 53.457367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891052, 44.910641, 53.397331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033488, 0.578620, 0.814909,
		0.304008, 0.770833, -0.559818,
		-0.952081, 0.266486, -0.150091,
		42.605427, 44.990585, 53.352303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323708, 45.498863, 53.544502>,  <43.271885, 44.804047, 53.457367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323708, 45.498863, 53.544502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.942558, 45.385204, 53.587017>,  <42.713871, 45.317009, 53.612526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.942558, 45.385204, 53.587017>,  <43.323708, 45.498863, 53.544502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942558, 45.385204, 53.587017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078067, 0.568221, 0.819165,
		-0.293158, 0.772261, -0.563624,
		-0.952871, -0.284145, 0.106290,
		42.656696, 45.299961, 53.618904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924397, 46.114395, 53.643787>,  <43.323708, 45.498863, 53.544502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924397, 46.114395, 53.643787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.727829, 45.808933, 53.811279>,  <42.609890, 45.625656, 53.911774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.727829, 45.808933, 53.811279>,  <42.924397, 46.114395, 53.643787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727829, 45.808933, 53.811279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057043, 0.507976, 0.859481,
		-0.869053, 0.398481, -0.293191,
		-0.491420, -0.763658, 0.418727,
		42.580402, 45.579834, 53.936897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499641, 46.442806, 54.068275>,  <42.924397, 46.114395, 53.643787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499641, 46.442806, 54.068275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.496445, 46.069572, 54.212105>,  <42.494526, 45.845634, 54.298405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.496445, 46.069572, 54.212105>,  <42.499641, 46.442806, 54.068275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496445, 46.069572, 54.212105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008592, 0.359511, 0.933101,
		-0.999931, 0.010543, 0.005145,
		-0.007988, -0.933081, 0.359577,
		42.494049, 45.789646, 54.319977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088905, 46.450768, 54.602234>,  <42.499641, 46.442806, 54.068275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088905, 46.450768, 54.602234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.272827, 46.102615, 54.672680>,  <42.383179, 45.893723, 54.714947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.272827, 46.102615, 54.672680>,  <42.088905, 46.450768, 54.602234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272827, 46.102615, 54.672680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240913, 0.313150, 0.918639,
		-0.854718, -0.379963, 0.353673,
		0.459802, -0.870382, 0.176117,
		42.410767, 45.841499, 54.725513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826706, 46.255650, 55.220333>,  <42.088905, 46.450768, 54.602234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826706, 46.255650, 55.220333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.177147, 46.072754, 55.159168>,  <42.387409, 45.963017, 55.122471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.177147, 46.072754, 55.159168>,  <41.826706, 46.255650, 55.220333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177147, 46.072754, 55.159168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282026, 0.228795, 0.931726,
		-0.391037, -0.859410, 0.329401,
		0.876100, -0.457239, -0.152909,
		42.439976, 45.935581, 55.113297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891323, 45.758480, 55.724072>,  <41.826706, 46.255650, 55.220333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891323, 45.758480, 55.724072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.272072, 45.781376, 55.603626>,  <42.500519, 45.795113, 55.531357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.272072, 45.781376, 55.603626>,  <41.891323, 45.758480, 55.724072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272072, 45.781376, 55.603626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302164, -0.010418, 0.953199,
		0.051430, -0.998306, -0.027214,
		0.951868, 0.057247, -0.301116,
		42.557632, 45.798550, 55.513290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225338, 45.268574, 56.129841>,  <41.891323, 45.758480, 55.724072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225338, 45.268574, 56.129841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.503502, 45.521011, 55.992363>,  <42.670399, 45.672474, 55.909878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.503502, 45.521011, 55.992363>,  <42.225338, 45.268574, 56.129841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503502, 45.521011, 55.992363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218267, 0.270178, 0.937744,
		0.684665, -0.727132, 0.050136,
		0.695409, 0.631097, -0.343690,
		42.712124, 45.710339, 55.889256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792850, 45.078995, 56.553574>,  <42.225338, 45.268574, 56.129841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792850, 45.078995, 56.553574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.845695, 45.442131, 56.394394>,  <42.877403, 45.660015, 56.298885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.845695, 45.442131, 56.394394>,  <42.792850, 45.078995, 56.553574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845695, 45.442131, 56.394394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324194, 0.339818, 0.882849,
		0.936720, -0.245653, -0.249421,
		0.132117, 0.907843, -0.397953,
		42.885330, 45.714485, 56.275009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531960, 45.262180, 56.636269>,  <42.792850, 45.078995, 56.553574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531960, 45.262180, 56.636269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.339706, 45.607880, 56.576859>,  <43.224354, 45.815300, 56.541210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.339706, 45.607880, 56.576859>,  <43.531960, 45.262180, 56.636269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339706, 45.607880, 56.576859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543334, 0.426441, 0.723144,
		0.688318, 0.266865, -0.674538,
		-0.480633, 0.864252, -0.148530,
		43.195518, 45.867157, 56.532299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109768, 45.864777, 56.659882>,  <43.531960, 45.262180, 56.636269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109768, 45.864777, 56.659882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.746147, 46.018204, 56.724991>,  <43.527973, 46.110260, 56.764057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.746147, 46.018204, 56.724991>,  <44.109768, 45.864777, 56.659882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746147, 46.018204, 56.724991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340553, 0.458845, 0.820661,
		0.240094, 0.801458, -0.547741,
		-0.909054, 0.383571, 0.162773,
		43.473431, 46.133274, 56.773823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238636, 46.568283, 56.776806>,  <44.109768, 45.864777, 56.659882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238636, 46.568283, 56.776806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.891487, 46.461227, 56.944218>,  <43.683197, 46.396992, 57.044662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.891487, 46.461227, 56.944218>,  <44.238636, 46.568283, 56.776806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891487, 46.461227, 56.944218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339316, 0.295980, 0.892895,
		-0.362852, 0.916932, -0.166057,
		-0.867873, -0.267643, 0.418526,
		43.631126, 46.380936, 57.069775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
