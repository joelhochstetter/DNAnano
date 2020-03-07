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
	<5.809115, 3.254181, 3.605746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.693554, 2.873024, 3.568802>,  <5.624217, 2.644330, 3.546635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.693554, 2.873024, 3.568802>,  <5.809115, 3.254181, 3.605746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.693554, 2.873024, 3.568802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728204, 0.156098, 0.667347,
		-0.621493, 0.260056, -0.738997,
		-0.288903, -0.952893, -0.092360,
		5.606883, 2.587156, 3.541094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.078104, 3.196968, 3.407175>,  <5.809115, 3.254181, 3.605746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.078104, 3.196968, 3.407175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.225594, 2.909782, 3.643333>,  <5.314087, 2.737471, 3.785029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.225594, 2.909782, 3.643333>,  <5.078104, 3.196968, 3.407175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.225594, 2.909782, 3.643333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514221, 0.371561, 0.772994,
		-0.774351, -0.588617, -0.232189,
		0.368725, -0.717965, 0.590397,
		5.336211, 2.694393, 3.820453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.513602, 3.072621, 3.808503>,  <5.078104, 3.196968, 3.407175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.513602, 3.072621, 3.808503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.820362, 2.911232, 4.008133>,  <5.004418, 2.814399, 4.127911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.820362, 2.911232, 4.008133>,  <4.513602, 3.072621, 3.808503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.820362, 2.911232, 4.008133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468373, 0.179763, 0.865050,
		-0.438739, -0.897160, -0.051115,
		0.766900, -0.403472, 0.499075,
		5.050432, 2.790190, 4.157856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.211911, 2.623541, 4.164913>,  <4.513602, 3.072621, 3.808503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.211911, 2.623541, 4.164913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.544983, 2.731087, 4.358555>,  <4.744826, 2.795614, 4.474740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.544983, 2.731087, 4.358555>,  <4.211911, 2.623541, 4.164913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.544983, 2.731087, 4.358555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511567, 0.038803, 0.858367,
		0.211999, -0.962396, 0.169852,
		0.832680, 0.268864, 0.484104,
		4.794787, 2.811746, 4.503786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.248186, 2.316283, 4.716402>,  <4.211911, 2.623541, 4.164913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.248186, 2.316283, 4.716402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.550476, 2.548752, 4.837143>,  <4.731851, 2.688233, 4.909588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.550476, 2.548752, 4.837143>,  <4.248186, 2.316283, 4.716402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.550476, 2.548752, 4.837143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241730, -0.180822, 0.953347,
		0.608641, -0.793436, 0.003835,
		0.755727, 0.581173, 0.301854,
		4.777194, 2.723104, 4.927699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.698322, 1.853967, 5.127487>,  <4.248186, 2.316283, 4.716402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.698322, 1.853967, 5.127487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.745968, 2.233253, 5.245266>,  <4.774555, 2.460825, 5.315933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.745968, 2.233253, 5.245266>,  <4.698322, 1.853967, 5.127487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.745968, 2.233253, 5.245266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297752, -0.248796, 0.921653,
		0.947183, -0.197455, 0.252697,
		0.119115, 0.948215, 0.294447,
		4.781703, 2.517718, 5.333600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.197583, 1.857595, 5.726994>,  <4.698322, 1.853967, 5.127487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.197583, 1.857595, 5.726994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.978268, 2.189850, 5.765820>,  <4.846678, 2.389203, 5.789115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.978268, 2.189850, 5.765820>,  <5.197583, 1.857595, 5.726994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.978268, 2.189850, 5.765820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119197, -0.192500, 0.974031,
		0.827751, 0.522481, 0.204555,
		-0.548289, 0.830637, 0.097064,
		4.813781, 2.439041, 5.794939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.385177, 2.269277, 6.303101>,  <5.197583, 1.857595, 5.726994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.385177, 2.269277, 6.303101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.000465, 2.364861, 6.249615>,  <4.769639, 2.422211, 6.217523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.000465, 2.364861, 6.249615>,  <5.385177, 2.269277, 6.303101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.000465, 2.364861, 6.249615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167663, -0.127825, 0.977522,
		0.216495, 0.962580, 0.163004,
		-0.961779, 0.238959, -0.133716,
		4.711932, 2.436548, 6.209500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.586672, 2.106607, 2.547831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.209218, 2.092270, 2.416214>,  <3.982746, 2.083668, 2.337244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.209218, 2.092270, 2.416214>,  <4.586672, 2.106607, 2.547831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.209218, 2.092270, 2.416214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263154, 0.521730, -0.811509,
		0.200757, -0.852357, -0.482891,
		-0.943635, -0.035842, -0.329042,
		3.926128, 2.081517, 2.317501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.551085, 1.844758, 1.823815>,  <4.586672, 2.106607, 2.547831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.551085, 1.844758, 1.823815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.257531, 2.097672, 1.923119>,  <4.081399, 2.249420, 1.982700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.257531, 2.097672, 1.923119>,  <4.551085, 1.844758, 1.823815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.257531, 2.097672, 1.923119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261320, 0.600144, -0.756002,
		-0.626999, -0.489942, -0.605664,
		-0.733883, 0.632285, 0.248258,
		4.037366, 2.287357, 1.997596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.836109, 1.936468, 1.437869>,  <4.551085, 1.844758, 1.823815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.836109, 1.936468, 1.437869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.942735, 2.274643, 1.622986>,  <4.006711, 2.477548, 1.734056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.942735, 2.274643, 1.622986>,  <3.836109, 1.936468, 1.437869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.942735, 2.274643, 1.622986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285130, 0.389500, -0.875780,
		-0.920676, 0.365409, -0.137233,
		0.266565, 0.845438, 0.462792,
		4.022704, 2.528275, 1.761824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.546574, 2.513633, 1.157153>,  <3.836109, 1.936468, 1.437869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.546574, 2.513633, 1.157153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.880294, 2.652191, 1.328712>,  <4.080526, 2.735326, 1.431648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.880294, 2.652191, 1.328712>,  <3.546574, 2.513633, 1.157153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.880294, 2.652191, 1.328712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336202, 0.296893, -0.893769,
		-0.436933, 0.889868, 0.131240,
		0.834300, 0.346394, 0.428898,
		4.130584, 2.756109, 1.457382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.678552, 3.135551, 0.995106>,  <3.546574, 2.513633, 1.157153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.678552, 3.135551, 0.995106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.030606, 2.957581, 1.061321>,  <4.241839, 2.850798, 1.101051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.030606, 2.957581, 1.061321>,  <3.678552, 3.135551, 0.995106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.030606, 2.957581, 1.061321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352047, 0.377794, -0.856350,
		0.318472, 0.811981, 0.489144,
		0.880135, -0.444925, 0.165539,
		4.294647, 2.824103, 1.110983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.338212, 3.619155, 0.941278>,  <3.678552, 3.135551, 0.995106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.338212, 3.619155, 0.941278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.472154, 3.245163, 0.894485>,  <4.552519, 3.020768, 0.866410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.472154, 3.245163, 0.894485>,  <4.338212, 3.619155, 0.941278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.472154, 3.245163, 0.894485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471466, 0.273739, -0.838324,
		0.815838, 0.225564, 0.532475,
		0.334855, -0.934980, -0.116981,
		4.572610, 2.964669, 0.859391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.990880, 3.707386, 0.782361>,  <4.338212, 3.619155, 0.941278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.990880, 3.707386, 0.782361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.915458, 3.340332, 0.642422>,  <4.870204, 3.120100, 0.558458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.915458, 3.340332, 0.642422>,  <4.990880, 3.707386, 0.782361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.915458, 3.340332, 0.642422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520705, 0.208624, -0.827854,
		0.832654, -0.338263, 0.438480,
		-0.188555, -0.917635, -0.349847,
		4.858891, 3.065042, 0.537467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.635873, 3.456649, 0.495547>,  <4.990880, 3.707386, 0.782361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.635873, 3.456649, 0.495547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.353770, 3.246567, 0.305065>,  <5.184509, 3.120517, 0.190776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.353770, 3.246567, 0.305065>,  <5.635873, 3.456649, 0.495547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.353770, 3.246567, 0.305065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447460, 0.191251, -0.873615,
		0.549903, -0.829205, 0.100128,
		-0.705257, -0.525206, -0.476205,
		5.142193, 3.089005, 0.162204>
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
