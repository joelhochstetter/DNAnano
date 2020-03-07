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
	<3.008679, 5.996630, 1.075919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.753052, 5.873283, 0.794067>,  <2.599675, 5.799275, 0.624957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.753052, 5.873283, 0.794067>,  <3.008679, 5.996630, 1.075919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.753052, 5.873283, 0.794067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065172, -0.891109, 0.449085,
		-0.766383, 0.332919, 0.549383,
		-0.639069, -0.308367, -0.704628,
		2.561331, 5.780773, 0.582679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.255833, 5.765671, 1.322375>,  <3.008679, 5.996630, 1.075919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.255833, 5.765671, 1.322375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.411594, 5.569695, 1.010395>,  <2.505051, 5.452108, 0.823207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.411594, 5.569695, 1.010395>,  <2.255833, 5.765671, 1.322375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.411594, 5.569695, 1.010395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097142, -0.820221, 0.563738,
		-0.915931, -0.295287, -0.271802,
		0.389403, -0.489942, -0.779950,
		2.528415, 5.422712, 0.776410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.838571, 5.184976, 1.055023>,  <2.255833, 5.765671, 1.322375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.838571, 5.184976, 1.055023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.222340, 5.078247, 1.018543>,  <2.452601, 5.014210, 0.996655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.222340, 5.078247, 1.018543>,  <1.838571, 5.184976, 1.055023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.222340, 5.078247, 1.018543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144799, -0.743722, 0.652618,
		-0.241960, -0.612930, -0.752178,
		0.959421, -0.266822, -0.091200,
		2.510166, 4.998200, 0.991183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.887969, 4.417670, 0.912294>,  <1.838571, 5.184976, 1.055023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.887969, 4.417670, 0.912294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.216396, 4.537827, 1.106453>,  <2.413453, 4.609921, 1.222948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.216396, 4.537827, 1.106453>,  <1.887969, 4.417670, 0.912294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.216396, 4.537827, 1.106453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159055, -0.696266, 0.699939,
		0.548222, -0.651903, -0.523903,
		0.821069, 0.300392, 0.485397,
		2.462717, 4.627944, 1.252072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.236573, 3.885631, 1.122461>,  <1.887969, 4.417670, 0.912294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.236573, 3.885631, 1.122461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.359871, 4.176659, 1.367615>,  <2.433850, 4.351275, 1.514707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.359871, 4.176659, 1.367615>,  <2.236573, 3.885631, 1.122461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.359871, 4.176659, 1.367615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148913, -0.599409, 0.786469,
		0.939579, -0.333692, -0.076421,
		0.308246, 0.727570, 0.612884,
		2.452345, 4.394929, 1.551480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.801797, 3.667705, 1.530641>,  <2.236573, 3.885631, 1.122461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.801797, 3.667705, 1.530641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.602615, 3.958725, 1.719410>,  <2.483106, 4.133337, 1.832671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.602615, 3.958725, 1.719410>,  <2.801797, 3.667705, 1.530641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.602615, 3.958725, 1.719410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166466, -0.614262, 0.771344,
		0.851076, 0.305535, 0.426987,
		-0.497954, 0.727551, 0.471923,
		2.453229, 4.176991, 1.860987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.903166, 3.514703, 2.229375>,  <2.801797, 3.667705, 1.530641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.903166, 3.514703, 2.229375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.594994, 3.767685, 2.261459>,  <2.410090, 3.919474, 2.280710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.594994, 3.767685, 2.261459>,  <2.903166, 3.514703, 2.229375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.594994, 3.767685, 2.261459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341963, -0.516155, 0.785268,
		0.538048, 0.577566, 0.613939,
		-0.770432, 0.632456, 0.080210,
		2.363864, 3.957422, 2.285522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.828723, 3.768446, 2.918233>,  <2.903166, 3.514703, 2.229375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.828723, 3.768446, 2.918233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.476265, 3.818398, 2.735809>,  <2.264790, 3.848368, 2.626355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.476265, 3.818398, 2.735809>,  <2.828723, 3.768446, 2.918233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.476265, 3.818398, 2.735809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444102, -0.549720, 0.707518,
		-0.162351, 0.825962, 0.539842,
		-0.881145, 0.124879, -0.456058,
		2.211921, 3.855861, 2.598992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.589463, 3.067362, 3.686622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.341969, 2.863937, 3.447113>,  <1.193472, 2.741882, 3.303407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.341969, 2.863937, 3.447113>,  <1.589463, 3.067362, 3.686622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.341969, 2.863937, 3.447113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122499, 0.815321, -0.565902,
		0.775987, -0.276797, -0.566770,
		-0.618739, -0.508561, -0.598771,
		1.156347, 2.711369, 3.267481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.909755, 3.010331, 3.040160>,  <1.589463, 3.067362, 3.686622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.909755, 3.010331, 3.040160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.510443, 3.033142, 3.045555>,  <1.270855, 3.046829, 3.048792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.510443, 3.033142, 3.045555>,  <1.909755, 3.010331, 3.040160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.510443, 3.033142, 3.045555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042085, 0.857846, -0.512181,
		-0.040779, -0.510733, -0.858772,
		-0.998282, 0.057028, 0.013488,
		1.210958, 3.050251, 3.049601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.558161, 2.991447, 2.429098>,  <1.909755, 3.010331, 3.040160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.558161, 2.991447, 2.429098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.450171, 3.228821, 2.732399>,  <1.385376, 3.371245, 2.914380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.450171, 3.228821, 2.732399>,  <1.558161, 2.991447, 2.429098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.450171, 3.228821, 2.732399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323168, 0.797661, -0.509214,
		-0.907015, 0.107568, -0.407128,
		-0.269975, 0.593435, 0.758253,
		1.369178, 3.406851, 2.959875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.001767, 3.423618, 2.303452>,  <1.558161, 2.991447, 2.429098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.001767, 3.423618, 2.303452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.262981, 3.601578, 2.548599>,  <1.419710, 3.708354, 2.695688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.262981, 3.601578, 2.548599>,  <1.001767, 3.423618, 2.303452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.262981, 3.601578, 2.548599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187305, 0.689231, -0.699913,
		-0.733799, 0.571861, 0.366761,
		0.653036, 0.444899, 0.612869,
		1.458892, 3.735048, 2.732460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.055421, 4.189368, 2.126473>,  <1.001767, 3.423618, 2.303452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.055421, 4.189368, 2.126473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.384243, 4.082169, 2.327431>,  <1.581537, 4.017849, 2.448005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.384243, 4.082169, 2.327431>,  <1.055421, 4.189368, 2.126473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.384243, 4.082169, 2.327431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476742, 0.806397, -0.349915,
		-0.311353, 0.527162, 0.790670,
		0.822056, -0.267999, 0.502395,
		1.630860, 4.001769, 2.478149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.380903, 4.822603, 2.382406>,  <1.055421, 4.189368, 2.126473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.380903, 4.822603, 2.382406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.681608, 4.561798, 2.342941>,  <1.862031, 4.405315, 2.319263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.681608, 4.561798, 2.342941>,  <1.380903, 4.822603, 2.382406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.681608, 4.561798, 2.342941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571280, 0.718667, -0.396430,
		0.329381, 0.241659, 0.912748,
		0.751763, -0.652011, -0.098660,
		1.907137, 4.366195, 2.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.939682, 5.170674, 2.531630>,  <1.380903, 4.822603, 2.382406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.939682, 5.170674, 2.531630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.088404, 4.858231, 2.330978>,  <2.177636, 4.670764, 2.210587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.088404, 4.858231, 2.330978>,  <1.939682, 5.170674, 2.531630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.088404, 4.858231, 2.330978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623096, 0.610541, -0.488867,
		0.688123, -0.130801, 0.713707,
		0.371803, -0.781109, -0.501629,
		2.199944, 4.623898, 2.180490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.626366, 5.245800, 2.480569>,  <1.939682, 5.170674, 2.531630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.626366, 5.245800, 2.480569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.536869, 5.010956, 2.169380>,  <2.483171, 4.870049, 1.982667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.536869, 5.010956, 2.169380>,  <2.626366, 5.245800, 2.480569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.536869, 5.010956, 2.169380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656728, 0.498985, -0.565440,
		0.720172, -0.637429, 0.273928,
		-0.223742, -0.587110, -0.777972,
		2.469746, 4.834823, 1.935988>
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
