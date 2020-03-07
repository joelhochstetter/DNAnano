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
	<5.432687, 0.237269, -0.257933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.357151, 0.021679, 0.070419>,  <5.311830, -0.107675, 0.267430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.357151, 0.021679, 0.070419>,  <5.432687, 0.237269, -0.257933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.357151, 0.021679, 0.070419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613983, 0.717187, 0.329648,
		-0.766397, -0.441756, -0.466356,
		-0.188840, -0.538976, 0.820880,
		5.300499, -0.140014, 0.316683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.726362, 0.071576, -0.112552>,  <5.432687, 0.237269, -0.257933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.726362, 0.071576, -0.112552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.910706, 0.100277, 0.241276>,  <5.021312, 0.117497, 0.453572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.910706, 0.100277, 0.241276>,  <4.726362, 0.071576, -0.112552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.910706, 0.100277, 0.241276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748499, 0.566947, 0.343978,
		-0.476822, -0.820624, 0.314988,
		0.460858, 0.071752, 0.884569,
		5.048963, 0.121803, 0.506646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.227406, 0.176185, 0.208693>,  <4.726362, 0.071576, -0.112552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.227406, 0.176185, 0.208693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.515011, 0.238300, 0.479664>,  <4.687574, 0.275569, 0.642246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.515011, 0.238300, 0.479664>,  <4.227406, 0.176185, 0.208693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.515011, 0.238300, 0.479664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562931, 0.701761, 0.436624,
		-0.407590, -0.695282, 0.591991,
		0.719013, 0.155287, 0.677426,
		4.730715, 0.284886, 0.682892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.826078, 0.075318, 0.902686>,  <4.227406, 0.176185, 0.208693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.826078, 0.075318, 0.902686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.148098, 0.311993, 0.919674>,  <4.341310, 0.453997, 0.929867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.148098, 0.311993, 0.919674>,  <3.826078, 0.075318, 0.902686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.148098, 0.311993, 0.919674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561211, 0.736475, 0.377687,
		0.192194, -0.327891, 0.924959,
		0.805049, 0.591686, 0.042470,
		4.389613, 0.489498, 0.932415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.997436, 0.442039, 1.563077>,  <3.826078, 0.075318, 0.902686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.997436, 0.442039, 1.563077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.129929, 0.646774, 1.246014>,  <4.209424, 0.769616, 1.055776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.129929, 0.646774, 1.246014>,  <3.997436, 0.442039, 1.563077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.129929, 0.646774, 1.246014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426691, 0.830529, 0.357990,
		0.841559, 0.219644, 0.493492,
		0.331229, 0.511838, -0.792660,
		4.229298, 0.800326, 1.008216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.168561, 0.981445, 1.818362>,  <3.997436, 0.442039, 1.563077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.168561, 0.981445, 1.818362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.114983, 1.083427, 1.435310>,  <4.082835, 1.144617, 1.205479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.114983, 1.083427, 1.435310>,  <4.168561, 0.981445, 1.818362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.114983, 1.083427, 1.435310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413888, 0.863629, 0.287822,
		0.900419, 0.434904, -0.010158,
		-0.133948, 0.254956, -0.957630,
		4.074799, 1.159914, 1.148021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.295902, 1.699711, 1.794984>,  <4.168561, 0.981445, 1.818362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.295902, 1.699711, 1.794984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.081612, 1.614697, 1.468102>,  <3.953037, 1.563688, 1.271972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.081612, 1.614697, 1.468102>,  <4.295902, 1.699711, 1.794984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.081612, 1.614697, 1.468102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584360, 0.791930, 0.177119,
		0.609525, 0.572429, -0.548456,
		-0.535726, -0.212537, -0.817206,
		3.920894, 1.550935, 1.222940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.178050, 2.385284, 1.659737>,  <4.295902, 1.699711, 1.794984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.178050, 2.385284, 1.659737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.940247, 2.167984, 1.422607>,  <3.797565, 2.037604, 1.280330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.940247, 2.167984, 1.422607>,  <4.178050, 2.385284, 1.659737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.940247, 2.167984, 1.422607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694297, 0.718702, 0.037668,
		0.405600, 0.433989, -0.804451,
		-0.594508, -0.543250, -0.592824,
		3.761894, 2.005009, 1.244760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.048038, 3.172101, 1.940954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.766215, 2.907715, 1.837631>,  <2.597121, 2.749083, 1.775637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.766215, 2.907715, 1.837631>,  <3.048038, 3.172101, 1.940954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.766215, 2.907715, 1.837631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655249, -0.466159, -0.594428,
		0.272484, -0.588065, 0.761533,
		-0.704558, -0.660965, -0.258308,
		2.554848, 2.709425, 1.760139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.265283, 2.475402, 1.997337>,  <3.048038, 3.172101, 1.940954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.265283, 2.475402, 1.997337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.967257, 2.457512, 1.731140>,  <2.788442, 2.446778, 1.571422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.967257, 2.457512, 1.731140>,  <3.265283, 2.475402, 1.997337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.967257, 2.457512, 1.731140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522139, -0.659950, -0.540219,
		-0.415030, -0.749977, 0.515058,
		-0.745064, -0.044725, -0.665492,
		2.743738, 2.444095, 1.531493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.883949, 1.797324, 1.985502>,  <3.265283, 2.475402, 1.997337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.883949, 1.797324, 1.985502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.893936, 2.003662, 1.642975>,  <2.899928, 2.127465, 1.437459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.893936, 2.003662, 1.642975>,  <2.883949, 1.797324, 1.985502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.893936, 2.003662, 1.642975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436611, -0.776197, -0.454850,
		-0.899304, -0.362521, -0.244603,
		0.024968, 0.515845, -0.856318,
		2.901426, 2.158416, 1.386079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.752770, 1.357824, 1.372238>,  <2.883949, 1.797324, 1.985502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.752770, 1.357824, 1.372238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.951604, 1.673149, 1.227203>,  <3.070904, 1.862345, 1.140182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.951604, 1.673149, 1.227203>,  <2.752770, 1.357824, 1.372238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.951604, 1.673149, 1.227203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609283, -0.614630, -0.501003,
		-0.617804, 0.028122, -0.785829,
		0.497084, 0.788314, -0.362587,
		3.100729, 1.909643, 1.118427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.825922, 1.389146, 0.570802>,  <2.752770, 1.357824, 1.372238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.825922, 1.389146, 0.570802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.125579, 1.575401, 0.759254>,  <3.305374, 1.687154, 0.872326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.125579, 1.575401, 0.759254>,  <2.825922, 1.389146, 0.570802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.125579, 1.575401, 0.759254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660238, -0.582398, -0.474235,
		0.053564, 0.666329, -0.743731,
		0.749144, 0.465638, 0.471131,
		3.350322, 1.715093, 0.900594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.301250, 1.457982, 0.110971>,  <2.825922, 1.389146, 0.570802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.301250, 1.457982, 0.110971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.502428, 1.476395, 0.456207>,  <3.623134, 1.487442, 0.663349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.502428, 1.476395, 0.456207>,  <3.301250, 1.457982, 0.110971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.502428, 1.476395, 0.456207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729992, -0.557281, -0.395663,
		0.462772, 0.829047, -0.313885,
		0.502945, 0.046032, 0.863092,
		3.653311, 1.490204, 0.715135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.033976, 1.547782, -0.081154>,  <3.301250, 1.457982, 0.110971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.033976, 1.547782, -0.081154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.007886, 1.397438, 0.288597>,  <3.992232, 1.307232, 0.510448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.007886, 1.397438, 0.288597>,  <4.033976, 1.547782, -0.081154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.007886, 1.397438, 0.288597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654994, -0.714984, -0.244500,
		0.752813, 0.589515, 0.292820,
		-0.065225, -0.375859, 0.924379,
		3.988318, 1.284680, 0.565911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.700729, 1.339168, 0.158808>,  <4.033976, 1.547782, -0.081154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.700729, 1.339168, 0.158808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.446103, 1.120026, 0.375931>,  <4.293328, 0.988540, 0.506205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.446103, 1.120026, 0.375931>,  <4.700729, 1.339168, 0.158808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.446103, 1.120026, 0.375931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512485, -0.826445, -0.233128,
		0.576321, 0.129780, 0.806853,
		-0.636564, -0.547856, 0.542807,
		4.255134, 0.955669, 0.538773>
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
