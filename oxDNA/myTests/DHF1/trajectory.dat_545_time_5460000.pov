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
	<0.675090, 3.899319, 2.104704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.689812, 3.871391, 1.705952>,  <0.698645, 3.854635, 1.466700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.689812, 3.871391, 1.705952>,  <0.675090, 3.899319, 2.104704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.689812, 3.871391, 1.705952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985393, -0.163440, 0.047828,
		-0.166270, -0.984079, 0.062785,
		0.036805, -0.069820, -0.996880,
		0.700853, 3.850445, 1.406888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.918237, 3.266230, 1.861489>,  <0.675090, 3.899319, 2.104704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.918237, 3.266230, 1.861489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.027554, 3.519176, 1.571545>,  <1.093143, 3.670944, 1.397578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.027554, 3.519176, 1.571545>,  <0.918237, 3.266230, 1.861489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.027554, 3.519176, 1.571545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911768, -0.410455, -0.014320,
		-0.306579, -0.656992, -0.688745,
		0.273291, 0.632367, -0.724862,
		1.109541, 3.708887, 1.354086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.373832, 2.911429, 1.480939>,  <0.918237, 3.266230, 1.861489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.373832, 2.911429, 1.480939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.449291, 3.296299, 1.402317>,  <1.494567, 3.527221, 1.355144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.449291, 3.296299, 1.402317>,  <1.373832, 2.911429, 1.480939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.449291, 3.296299, 1.402317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976804, -0.204494, -0.063530,
		-0.101321, -0.180011, -0.978432,
		0.188648, 0.962174, -0.196555,
		1.505885, 3.584951, 1.343351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.833441, 2.886091, 0.881724>,  <1.373832, 2.911429, 1.480939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.833441, 2.886091, 0.881724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.874832, 3.238785, 1.065826>,  <1.899667, 3.450401, 1.176288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.874832, 3.238785, 1.065826>,  <1.833441, 2.886091, 0.881724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.874832, 3.238785, 1.065826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992603, -0.121083, 0.008804,
		0.063492, 0.455940, -0.887743,
		0.103477, 0.881735, 0.460256,
		1.905875, 3.503305, 1.203903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.375797, 3.360286, 0.556498>,  <1.833441, 2.886091, 0.881724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.375797, 3.360286, 0.556498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.347679, 3.484364, 0.935726>,  <2.330808, 3.558810, 1.163263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.347679, 3.484364, 0.935726>,  <2.375797, 3.360286, 0.556498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.347679, 3.484364, 0.935726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990311, -0.092406, 0.103661,
		0.119762, 0.946171, -0.300694,
		-0.070295, 0.310195, 0.948071,
		2.326591, 3.577422, 1.220147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.940931, 3.809026, 0.649230>,  <2.375797, 3.360286, 0.556498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.940931, 3.809026, 0.649230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.832027, 3.687836, 1.014542>,  <2.766685, 3.615121, 1.233729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.832027, 3.687836, 1.014542>,  <2.940931, 3.809026, 0.649230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.832027, 3.687836, 1.014542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961811, -0.113487, 0.249079,
		0.028180, 0.946217, 0.322303,
		-0.272260, -0.302976, 0.913280,
		2.750350, 3.596943, 1.288526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.422561, 4.165646, 1.082586>,  <2.940931, 3.809026, 0.649230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.422561, 4.165646, 1.082586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.256798, 3.885117, 1.314590>,  <3.157340, 3.716799, 1.453793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.256798, 3.885117, 1.314590>,  <3.422561, 4.165646, 1.082586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.256798, 3.885117, 1.314590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902615, -0.235202, 0.360508,
		-0.116413, 0.672924, 0.730494,
		-0.414408, -0.701322, 0.580011,
		3.132475, 3.674720, 1.488594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.634228, 4.301414, 1.756338>,  <3.422561, 4.165646, 1.082586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.634228, 4.301414, 1.756338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.550690, 3.911747, 1.721970>,  <3.500566, 3.677947, 1.701349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.550690, 3.911747, 1.721970>,  <3.634228, 4.301414, 1.756338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.550690, 3.911747, 1.721970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948489, -0.223174, 0.224861,
		-0.238227, -0.034534, 0.970595,
		-0.208847, -0.974167, -0.085921,
		3.488036, 3.619497, 1.696193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.732673, 3.539590, 1.343362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.626289, 3.221977, 1.562004>,  <4.562459, 3.031410, 1.693190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.626289, 3.221977, 1.562004>,  <4.732673, 3.539590, 1.343362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.626289, 3.221977, 1.562004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963754, 0.231414, -0.132762,
		-0.021075, -0.562103, -0.826798,
		-0.265959, -0.794033, 0.546606,
		4.546502, 2.983768, 1.725986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.190354, 3.324009, 0.982281>,  <4.732673, 3.539590, 1.343362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.190354, 3.324009, 0.982281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.148361, 3.160400, 1.344868>,  <4.123166, 3.062235, 1.562420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.148361, 3.160400, 1.344868>,  <4.190354, 3.324009, 0.982281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.148361, 3.160400, 1.344868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990416, 0.125265, -0.058181,
		-0.089752, -0.903886, -0.418252,
		-0.104981, -0.409021, 0.906466,
		4.116867, 3.037694, 1.616807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.677750, 2.682742, 1.012134>,  <4.190354, 3.324009, 0.982281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.677750, 2.682742, 1.012134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.698029, 2.860016, 1.370132>,  <3.710196, 2.966380, 1.584931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.698029, 2.860016, 1.370132>,  <3.677750, 2.682742, 1.012134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.698029, 2.860016, 1.370132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997354, 0.069228, 0.022213,
		-0.052114, -0.893754, 0.445520,
		0.050696, 0.443183, 0.894996,
		3.713237, 2.992971, 1.638631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.183319, 2.402385, 1.606212>,  <3.677750, 2.682742, 1.012134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.183319, 2.402385, 1.606212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.279533, 2.787842, 1.652756>,  <3.337262, 3.019116, 1.680682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.279533, 2.787842, 1.652756>,  <3.183319, 2.402385, 1.606212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.279533, 2.787842, 1.652756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970619, 0.239586, 0.022285,
		-0.006403, -0.118300, 0.992957,
		0.240535, 0.963641, 0.116358,
		3.351694, 3.076934, 1.687663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.640687, 2.640577, 2.146575>,  <3.183319, 2.402385, 1.606212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.640687, 2.640577, 2.146575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.806686, 2.952744, 1.959503>,  <2.906286, 3.140043, 1.847260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.806686, 2.952744, 1.959503>,  <2.640687, 2.640577, 2.146575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.806686, 2.952744, 1.959503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903074, 0.415824, -0.107464,
		0.110606, 0.466947, 0.877341,
		0.414999, 0.780417, -0.467681,
		2.931186, 3.186869, 1.819199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.488272, 3.229932, 2.515817>,  <2.640687, 2.640577, 2.146575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.488272, 3.229932, 2.515817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.548889, 3.326141, 2.132320>,  <2.585259, 3.383867, 1.902223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.548889, 3.326141, 2.132320>,  <2.488272, 3.229932, 2.515817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.548889, 3.326141, 2.132320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912214, 0.407561, -0.041942,
		0.380657, 0.880933, 0.281171,
		0.151542, 0.240522, -0.958741,
		2.594352, 3.398298, 1.844698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.304220, 3.958222, 2.450022>,  <2.488272, 3.229932, 2.515817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.304220, 3.958222, 2.450022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.283913, 3.813087, 2.077835>,  <2.271728, 3.726007, 1.854523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.283913, 3.813087, 2.077835>,  <2.304220, 3.958222, 2.450022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.283913, 3.813087, 2.077835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858628, 0.491696, -0.144889,
		0.510079, 0.791570, -0.336505,
		-0.050768, -0.362837, -0.930468,
		2.268682, 3.704236, 1.798694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.135072, 4.557456, 1.996396>,  <2.304220, 3.958222, 2.450022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.135072, 4.557456, 1.996396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.054710, 4.230843, 1.779911>,  <2.006493, 4.034874, 1.650020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.054710, 4.230843, 1.779911>,  <2.135072, 4.557456, 1.996396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.054710, 4.230843, 1.779911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822832, 0.440462, -0.359084,
		0.531588, 0.373185, -0.760360,
		-0.200904, -0.816533, -0.541212,
		1.994439, 3.985883, 1.617547>
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
