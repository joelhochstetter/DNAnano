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
	<-0.451715, 1.920248, 0.901342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.114067, 2.078300, 1.046303>,  <0.088521, 2.173132, 1.133279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.114067, 2.078300, 1.046303>,  <-0.451715, 1.920248, 0.901342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.114067, 2.078300, 1.046303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199207, -0.396402, 0.896204,
		0.497775, -0.828696, -0.255898,
		0.844119, 0.395132, 0.362401,
		0.139169, 2.196840, 1.155023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.170666, 1.494945, 1.349575>,  <-0.451715, 1.920248, 0.901342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.170666, 1.494945, 1.349575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.025425, 1.825848, 1.459353>,  <0.143080, 2.024390, 1.525221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.025425, 1.825848, 1.459353>,  <-0.170666, 1.494945, 1.349575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.025425, 1.825848, 1.459353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088708, -0.360600, 0.928493,
		0.867068, -0.430828, -0.250160,
		0.490228, 0.827257, 0.274447,
		0.172494, 2.074025, 1.541688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.481176, 1.468594, 1.675982>,  <-0.170666, 1.494945, 1.349575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.481176, 1.468594, 1.675982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.330513, 1.804310, 1.832811>,  <0.240115, 2.005739, 1.926909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.330513, 1.804310, 1.832811>,  <0.481176, 1.468594, 1.675982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.330513, 1.804310, 1.832811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088018, -0.388905, 0.917064,
		0.922161, 0.379929, 0.072611,
		-0.376658, 0.839290, 0.392074,
		0.217516, 2.056097, 1.950433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.032025, 1.662627, 2.201556>,  <0.481176, 1.468594, 1.675982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.032025, 1.662627, 2.201556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.653690, 1.780422, 2.256210>,  <0.426689, 1.851099, 2.289003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.653690, 1.780422, 2.256210>,  <1.032025, 1.662627, 2.201556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.653690, 1.780422, 2.256210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063183, -0.579819, 0.812292,
		0.318434, 0.759663, 0.567021,
		-0.945837, 0.294488, 0.136636,
		0.369939, 1.868769, 2.297201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.918677, 1.973505, 2.856556>,  <1.032025, 1.662627, 2.201556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.918677, 1.973505, 2.856556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.570423, 1.819794, 2.733705>,  <0.361471, 1.727567, 2.659994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.570423, 1.819794, 2.733705>,  <0.918677, 1.973505, 2.856556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.570423, 1.819794, 2.733705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094001, -0.482867, 0.870634,
		-0.482867, 0.786874, 0.384278,
		-0.870634, -0.384278, -0.307128,
		0.309233, 1.704510, 2.641567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.552044, 1.979677, 3.382439>,  <0.918677, 1.973505, 2.856556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.552044, 1.979677, 3.382439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.380638, 1.688263, 3.168669>,  <0.277795, 1.513415, 3.040406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.380638, 1.688263, 3.168669>,  <0.552044, 1.979677, 3.382439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.380638, 1.688263, 3.168669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162833, -0.519531, 0.838792,
		-0.888741, 0.446457, 0.103997,
		-0.428515, -0.728535, -0.534427,
		0.252084, 1.469702, 3.008341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.065200, 1.838443, 3.725156>,  <0.552044, 1.979677, 3.382439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.065200, 1.838443, 3.725156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.080395, 1.520226, 3.531404>,  <0.167751, 1.329295, 3.415153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.080395, 1.520226, 3.531404>,  <-0.065200, 1.838443, 3.725156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.080395, 1.520226, 3.531404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023323, -0.527674, 0.849126,
		-0.931112, -0.297773, -0.210620,
		0.363986, -0.795545, -0.484379,
		0.189591, 1.281562, 3.386090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.174898, 1.065202, 3.904286>,  <-0.065200, 1.838443, 3.725156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.174898, 1.065202, 3.904286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.240078, 0.717167, 3.718214>,  <-0.279186, 0.508346, 3.606570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.240078, 0.717167, 3.718214>,  <-0.174898, 1.065202, 3.904286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.240078, 0.717167, 3.718214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986581, -0.148597, -0.067653,
		-0.010260, -0.469962, 0.882627,
		-0.162950, -0.870089, -0.465180,
		-0.288963, 0.456140, 3.578660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.240279, -0.478350, -1.209216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.380650, -0.104305, -1.189545>,  <5.464872, 0.120121, -1.177742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.380650, -0.104305, -1.189545>,  <5.240279, -0.478350, -1.209216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.380650, -0.104305, -1.189545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644030, 0.202900, 0.737602,
		0.679762, -0.290515, 0.673442,
		0.350926, 0.935111, 0.049177,
		5.485928, 0.176228, -1.174791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.700969, -0.335707, -0.697593>,  <5.240279, -0.478350, -1.209216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.700969, -0.335707, -0.697593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.477299, -0.016808, -0.788559>,  <5.343096, 0.174532, -0.843139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.477299, -0.016808, -0.788559>,  <5.700969, -0.335707, -0.697593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.477299, -0.016808, -0.788559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522153, -0.125606, 0.843552,
		0.643955, 0.590440, 0.486522,
		-0.559176, 0.797248, -0.227416,
		5.309546, 0.222367, -0.856784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.815045, 0.226162, -0.258543>,  <5.700969, -0.335707, -0.697593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.815045, 0.226162, -0.258543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.449703, 0.221088, -0.421329>,  <5.230498, 0.218045, -0.519001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.449703, 0.221088, -0.421329>,  <5.815045, 0.226162, -0.258543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.449703, 0.221088, -0.421329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402879, -0.116464, 0.907813,
		-0.058911, 0.993114, 0.101264,
		-0.913356, -0.012683, -0.406965,
		5.175696, 0.217284, -0.543419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.354014, 0.776682, 0.049085>,  <5.815045, 0.226162, -0.258543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.354014, 0.776682, 0.049085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.167618, 0.435673, -0.045619>,  <5.055780, 0.231067, -0.102441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.167618, 0.435673, -0.045619>,  <5.354014, 0.776682, 0.049085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.167618, 0.435673, -0.045619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294686, -0.102769, 0.950052,
		-0.834273, 0.512486, -0.203337,
		-0.465991, -0.852524, -0.236760,
		5.027821, 0.179916, -0.116647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.662680, 0.882119, 0.223344>,  <5.354014, 0.776682, 0.049085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.662680, 0.882119, 0.223344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.793766, 0.505287, 0.251882>,  <4.872418, 0.279188, 0.269004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.793766, 0.505287, 0.251882>,  <4.662680, 0.882119, 0.223344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.793766, 0.505287, 0.251882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314278, -0.037490, 0.948591,
		-0.890972, -0.333290, -0.308361,
		0.327716, -0.942079, 0.071343,
		4.892081, 0.222664, 0.273284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.124657, 0.489796, 0.618326>,  <4.662680, 0.882119, 0.223344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.124657, 0.489796, 0.618326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.479540, 0.305275, 0.621561>,  <4.692470, 0.194563, 0.623502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.479540, 0.305275, 0.621561>,  <4.124657, 0.489796, 0.618326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.479540, 0.305275, 0.621561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143950, -0.260116, 0.954787,
		-0.438342, -0.848257, -0.297181,
		0.887206, -0.461302, 0.008087,
		4.745702, 0.166884, 0.623987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.069719, -0.249296, 0.896320>,  <4.124657, 0.489796, 0.618326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.069719, -0.249296, 0.896320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.409391, -0.055962, 0.981436>,  <4.613194, 0.060039, 1.032505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.409391, -0.055962, 0.981436>,  <4.069719, -0.249296, 0.896320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.409391, -0.055962, 0.981436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115659, -0.222935, 0.967948,
		0.515283, -0.846573, -0.133409,
		0.849180, 0.483337, 0.212789,
		4.664145, 0.089039, 1.045272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.567732, -0.699102, 1.161333>,  <4.069719, -0.249296, 0.896320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.567732, -0.699102, 1.161333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.607294, -0.346455, 1.345927>,  <4.631031, -0.134866, 1.456684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.607294, -0.346455, 1.345927>,  <4.567732, -0.699102, 1.161333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.607294, -0.346455, 1.345927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212117, -0.434422, 0.875376,
		0.972226, -0.184468, 0.144040,
		0.098904, 0.881617, 0.461486,
		4.636965, -0.081969, 1.484373>
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
