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
	<2.753474, 2.429949, 0.816341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.586040, 2.633265, 1.117387>,  <2.485580, 2.755254, 1.298015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.586040, 2.633265, 1.117387>,  <2.753474, 2.429949, 0.816341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.586040, 2.633265, 1.117387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304020, 0.702471, -0.643511,
		-0.855780, -0.498173, -0.139513,
		-0.418583, 0.508289, 0.752615,
		2.460465, 2.785751, 1.343171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.104730, 2.678679, 0.644257>,  <2.753474, 2.429949, 0.816341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.104730, 2.678679, 0.644257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.196087, 2.936432, 0.936177>,  <2.250901, 3.091084, 1.111329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.196087, 2.936432, 0.936177>,  <2.104730, 2.678679, 0.644257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.196087, 2.936432, 0.936177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377217, 0.749631, -0.543840,
		-0.897521, -0.151084, 0.414282,
		0.228393, 0.644382, 0.729801,
		2.264605, 3.129746, 1.155118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.556908, 3.070606, 0.982672>,  <2.104730, 2.678679, 0.644257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.556908, 3.070606, 0.982672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.878967, 3.307594, 0.993380>,  <2.072203, 3.449787, 0.999804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.878967, 3.307594, 0.993380>,  <1.556908, 3.070606, 0.982672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.878967, 3.307594, 0.993380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469663, 0.664518, -0.581234,
		-0.362153, 0.455406, 0.813297,
		0.805147, 0.592471, 0.026770,
		2.120512, 3.485336, 1.001410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.455619, 3.795924, 1.360709>,  <1.556908, 3.070606, 0.982672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.455619, 3.795924, 1.360709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.745323, 3.801373, 1.084951>,  <1.919145, 3.804643, 0.919497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.745323, 3.801373, 1.084951>,  <1.455619, 3.795924, 1.360709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.745323, 3.801373, 1.084951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525025, 0.659020, -0.538554,
		0.446987, 0.752002, 0.484455,
		0.724259, 0.013625, -0.689393,
		1.962601, 3.805461, 0.878133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.701081, 4.527363, 1.268174>,  <1.455619, 3.795924, 1.360709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.701081, 4.527363, 1.268174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.728905, 4.310513, 0.933208>,  <1.745599, 4.180402, 0.732229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.728905, 4.310513, 0.933208>,  <1.701081, 4.527363, 1.268174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.728905, 4.310513, 0.933208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407486, 0.750781, -0.519889,
		0.910558, 0.377397, -0.168685,
		0.069559, -0.542126, -0.837413,
		1.749772, 4.147875, 0.681984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.070827, 4.985630, 0.753673>,  <1.701081, 4.527363, 1.268174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.070827, 4.985630, 0.753673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.842663, 4.720144, 0.560131>,  <1.705764, 4.560853, 0.444006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.842663, 4.720144, 0.560131>,  <2.070827, 4.985630, 0.753673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.842663, 4.720144, 0.560131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479265, 0.747362, -0.460170,
		0.667034, -0.030592, -0.744399,
		-0.570413, -0.663713, -0.483854,
		1.671539, 4.521030, 0.414975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.978423, 5.270672, 0.213042>,  <2.070827, 4.985630, 0.753673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.978423, 5.270672, 0.213042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.698845, 4.985724, 0.187726>,  <1.531098, 4.814756, 0.172536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.698845, 4.985724, 0.187726>,  <1.978423, 5.270672, 0.213042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.698845, 4.985724, 0.187726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546496, 0.589082, -0.595251,
		0.461321, -0.381461, -0.801043,
		-0.698946, -0.712369, -0.063289,
		1.489161, 4.772014, 0.168739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.878756, 5.118773, -0.486926>,  <1.978423, 5.270672, 0.213042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.878756, 5.118773, -0.486926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.545307, 5.015661, -0.291529>,  <1.345238, 4.953794, -0.174291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.545307, 5.015661, -0.291529>,  <1.878756, 5.118773, -0.486926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.545307, 5.015661, -0.291529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527878, 0.632094, -0.567276,
		-0.162542, -0.730758, -0.663003,
		-0.833622, -0.257779, 0.488492,
		1.295221, 4.938327, -0.144981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.491866, 6.154057, 4.572772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.399193, 5.789762, 4.436022>,  <0.343589, 5.571184, 4.353972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.399193, 5.789762, 4.436022>,  <0.491866, 6.154057, 4.572772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.399193, 5.789762, 4.436022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405169, -0.409844, 0.817231,
		-0.884399, 0.050823, 0.463957,
		-0.231684, -0.910739, -0.341874,
		0.329688, 5.516540, 4.333460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.408931, 5.832592, 5.200907>,  <0.491866, 6.154057, 4.572772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.408931, 5.832592, 5.200907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.470497, 5.555573, 4.919003>,  <0.507437, 5.389362, 4.749860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.470497, 5.555573, 4.919003>,  <0.408931, 5.832592, 5.200907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.470497, 5.555573, 4.919003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390655, -0.612496, 0.687196,
		-0.907579, -0.381088, 0.176274,
		0.153915, -0.692547, -0.704762,
		0.516672, 5.347809, 4.707574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.295097, 5.190082, 5.467390>,  <0.408931, 5.832592, 5.200907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.295097, 5.190082, 5.467390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.475883, 5.087856, 5.125532>,  <0.584355, 5.026521, 4.920418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.475883, 5.087856, 5.125532>,  <0.295097, 5.190082, 5.467390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.475883, 5.087856, 5.125532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520269, -0.702731, 0.485273,
		-0.724603, -0.663970, -0.184646,
		0.451964, -0.255565, -0.854644,
		0.611473, 5.011188, 4.869139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.164365, 4.448369, 5.347830>,  <0.295097, 5.190082, 5.467390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.164365, 4.448369, 5.347830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.504745, 4.580460, 5.184450>,  <0.708974, 4.659714, 5.086422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.504745, 4.580460, 5.184450>,  <0.164365, 4.448369, 5.347830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.504745, 4.580460, 5.184450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487407, -0.786269, 0.379757,
		-0.195745, -0.522236, -0.830033,
		0.850952, 0.330228, -0.408450,
		0.760031, 4.679528, 5.061915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.522969, 3.915438, 4.959867>,  <0.164365, 4.448369, 5.347830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.522969, 3.915438, 4.959867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.824936, 4.171080, 5.018721>,  <1.006116, 4.324464, 5.054032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.824936, 4.171080, 5.018721>,  <0.522969, 3.915438, 4.959867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.824936, 4.171080, 5.018721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623022, -0.768941, 0.143432,
		0.204804, -0.016612, -0.978662,
		0.754916, 0.639104, 0.147132,
		1.051411, 4.362811, 5.062860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.025617, 3.549435, 4.816467>,  <0.522969, 3.915438, 4.959867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.025617, 3.549435, 4.816467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.216545, 3.859608, 4.981813>,  <1.331102, 4.045712, 5.081021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.216545, 3.859608, 4.981813>,  <1.025617, 3.549435, 4.816467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.216545, 3.859608, 4.981813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685707, -0.622861, 0.376630,
		0.549520, 0.103675, -0.829023,
		0.477319, 0.775432, 0.413366,
		1.359741, 4.092237, 5.105823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.695344, 3.432363, 4.625804>,  <1.025617, 3.549435, 4.816467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.695344, 3.432363, 4.625804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.697586, 3.656561, 4.957060>,  <1.698932, 3.791080, 5.155813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.697586, 3.656561, 4.957060>,  <1.695344, 3.432363, 4.625804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.697586, 3.656561, 4.957060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736242, -0.562728, 0.375878,
		0.676695, 0.607603, -0.415816,
		0.005606, 0.560496, 0.828138,
		1.699268, 3.824710, 5.205502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.411772, 3.587694, 4.723565>,  <1.695344, 3.432363, 4.625804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.411772, 3.587694, 4.723565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.201294, 3.622007, 5.061975>,  <2.075007, 3.642596, 5.265022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.201294, 3.622007, 5.061975>,  <2.411772, 3.587694, 4.723565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.201294, 3.622007, 5.061975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549398, -0.725086, 0.415226,
		0.649061, 0.683295, 0.334407,
		-0.526195, 0.085784, 0.846026,
		2.043435, 3.647743, 5.315783>
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
