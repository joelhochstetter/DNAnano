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
	<4.006714, 2.235041, 1.314665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.141914, 1.859447, 1.340176>,  <4.223034, 1.634092, 1.355482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.141914, 1.859447, 1.340176>,  <4.006714, 2.235041, 1.314665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.141914, 1.859447, 1.340176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510851, -0.126130, 0.850366,
		-0.790435, -0.320004, -0.522312,
		0.338000, -0.938983, 0.063777,
		4.243314, 1.577753, 1.359309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.372927, 1.864028, 1.438760>,  <4.006714, 2.235041, 1.314665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.372927, 1.864028, 1.438760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.683640, 1.660240, 1.586842>,  <3.870067, 1.537967, 1.675691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.683640, 1.660240, 1.586842>,  <3.372927, 1.864028, 1.438760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.683640, 1.660240, 1.586842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425442, 0.008911, 0.904942,
		-0.464341, -0.860442, -0.209829,
		0.776780, -0.509471, 0.370205,
		3.916674, 1.507399, 1.697903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.176603, 1.152664, 1.678590>,  <3.372927, 1.864028, 1.438760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.176603, 1.152664, 1.678590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.458054, 1.288536, 1.928238>,  <3.626924, 1.370059, 2.078027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.458054, 1.288536, 1.928238>,  <3.176603, 1.152664, 1.678590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.458054, 1.288536, 1.928238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576278, -0.241065, 0.780891,
		0.415707, -0.909123, 0.026131,
		0.703627, 0.339681, 0.624120,
		3.669142, 1.390440, 2.115474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.365801, 0.580059, 2.151956>,  <3.176603, 1.152664, 1.678590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.365801, 0.580059, 2.151956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.410515, 0.945641, 2.308002>,  <3.437343, 1.164990, 2.401630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.410515, 0.945641, 2.308002>,  <3.365801, 0.580059, 2.151956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.410515, 0.945641, 2.308002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620338, -0.242511, 0.745901,
		0.776328, -0.325385, 0.539852,
		0.111785, 0.913955, 0.390116,
		3.444050, 1.219827, 2.425037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.670457, 0.567075, 2.871063>,  <3.365801, 0.580059, 2.151956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.670457, 0.567075, 2.871063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.447235, 0.898617, 2.855186>,  <3.313302, 1.097542, 2.845661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.447235, 0.898617, 2.855186>,  <3.670457, 0.567075, 2.871063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.447235, 0.898617, 2.855186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576437, -0.352810, 0.737052,
		0.596906, 0.434194, 0.674670,
		-0.558054, 0.828855, -0.039691,
		3.279819, 1.147273, 2.843279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.474149, 0.682714, 3.495904>,  <3.670457, 0.567075, 2.871063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.474149, 0.682714, 3.495904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.212173, 0.929104, 3.320801>,  <3.054988, 1.076938, 3.215739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.212173, 0.929104, 3.320801>,  <3.474149, 0.682714, 3.495904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.212173, 0.929104, 3.320801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720118, -0.333106, 0.608663,
		0.229101, 0.713874, 0.661738,
		-0.654938, 0.615974, -0.437759,
		3.015692, 1.113896, 3.189473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.118650, 0.990936, 4.024708>,  <3.474149, 0.682714, 3.495904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.118650, 0.990936, 4.024708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.868584, 1.038647, 3.716179>,  <2.718544, 1.067273, 3.531061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.868584, 1.038647, 3.716179>,  <3.118650, 0.990936, 4.024708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.868584, 1.038647, 3.716179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777423, -0.182700, 0.601858,
		-0.069133, 0.975907, 0.206947,
		-0.625167, 0.119277, -0.771323,
		2.681034, 1.074430, 3.484782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.484026, 1.283417, 4.295538>,  <3.118650, 0.990936, 4.024708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.484026, 1.283417, 4.295538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.338066, 1.149345, 3.948090>,  <2.250490, 1.068903, 3.739620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.338066, 1.149345, 3.948090>,  <2.484026, 1.283417, 4.295538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.338066, 1.149345, 3.948090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865803, -0.220934, 0.448969,
		-0.342393, 0.915884, -0.209580,
		-0.364900, -0.335178, -0.868621,
		2.228596, 1.048792, 3.687503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.144736, -0.677293, 3.314992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.959457, -0.537205, 3.640640>,  <0.848290, -0.453152, 3.836030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.959457, -0.537205, 3.640640>,  <1.144736, -0.677293, 3.314992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.959457, -0.537205, 3.640640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516582, 0.853113, -0.073082,
		-0.720132, 0.386709, -0.576077,
		-0.463197, 0.350221, 0.814121,
		0.820498, -0.432139, 3.884877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.980109, -0.033809, 3.151662>,  <1.144736, -0.677293, 3.314992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.980109, -0.033809, 3.151662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.980804, -0.037136, 3.551647>,  <0.981222, -0.039132, 3.791639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.980804, -0.037136, 3.551647>,  <0.980109, -0.033809, 3.151662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.980804, -0.037136, 3.551647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441281, 0.897344, 0.006697,
		-0.897367, 0.441253, 0.005217,
		0.001726, -0.008312, 0.999964,
		0.981326, -0.039631, 3.851636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.724942, 0.241078, 3.213933>,  <0.980109, -0.033809, 3.151662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.724942, 0.241078, 3.213933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.672913, 0.631916, 3.146564>,  <1.641695, 0.866419, 3.106143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.672913, 0.631916, 3.146564>,  <1.724942, 0.241078, 3.213933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.672913, 0.631916, 3.146564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741350, 0.208639, 0.637863,
		0.658392, -0.041890, -0.751508,
		-0.130074, 0.977095, -0.168421,
		1.633891, 0.925045, 3.096038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.128946, 0.525160, 2.550358>,  <1.724942, 0.241078, 3.213933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.128946, 0.525160, 2.550358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.101303, 0.722843, 2.896996>,  <2.084718, 0.841453, 3.104978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.101303, 0.722843, 2.896996>,  <2.128946, 0.525160, 2.550358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.101303, 0.722843, 2.896996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673782, 0.663727, -0.324784,
		-0.735692, 0.561450, -0.378856,
		-0.069107, 0.494207, 0.866593,
		2.080571, 0.871105, 3.156973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.935208, 1.232959, 2.419263>,  <2.128946, 0.525160, 2.550358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.935208, 1.232959, 2.419263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.149124, 1.199463, 2.755592>,  <2.277474, 1.179365, 2.957390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.149124, 1.199463, 2.755592>,  <1.935208, 1.232959, 2.419263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.149124, 1.199463, 2.755592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699029, 0.602886, -0.384561,
		-0.474717, 0.793421, 0.380955,
		0.534791, -0.083741, 0.840824,
		2.309561, 1.174341, 3.007840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.178134, 1.881049, 2.584548>,  <1.935208, 1.232959, 2.419263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.178134, 1.881049, 2.584548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.428360, 1.637108, 2.779175>,  <2.578496, 1.490743, 2.895951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.428360, 1.637108, 2.779175>,  <2.178134, 1.881049, 2.584548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.428360, 1.637108, 2.779175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780116, 0.496461, -0.380717,
		-0.009380, 0.617743, 0.786324,
		0.625565, -0.609853, 0.486568,
		2.616029, 1.454152, 2.925145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.713750, 2.356339, 2.737135>,  <2.178134, 1.881049, 2.584548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.713750, 2.356339, 2.737135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.867920, 1.987442, 2.749260>,  <2.960422, 1.766104, 2.756535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.867920, 1.987442, 2.749260>,  <2.713750, 2.356339, 2.737135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.867920, 1.987442, 2.749260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822675, 0.328565, -0.463951,
		0.417915, 0.203755, 0.885342,
		0.385425, -0.922241, 0.030312,
		2.983547, 1.710770, 2.758354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.464998, 2.387421, 2.950291>,  <2.713750, 2.356339, 2.737135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.464998, 2.387421, 2.950291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429886, 2.050404, 2.737720>,  <3.408818, 1.848193, 2.610178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429886, 2.050404, 2.737720>,  <3.464998, 2.387421, 2.950291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.429886, 2.050404, 2.737720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820120, 0.241685, -0.518644,
		0.565418, -0.481360, 0.669772,
		-0.087781, -0.842544, -0.531426,
		3.403552, 1.797640, 2.578293>
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
