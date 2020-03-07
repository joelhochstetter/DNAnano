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
	<3.196755, 4.219107, 3.320160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.019110, 3.870823, 3.235659>,  <2.912523, 3.661853, 3.184958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.019110, 3.870823, 3.235659>,  <3.196755, 4.219107, 3.320160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.019110, 3.870823, 3.235659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241637, 0.343441, -0.907557,
		0.862772, -0.352011, -0.362923,
		-0.444113, -0.870710, -0.211253,
		2.885876, 3.609610, 3.172283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.481117, 3.814410, 2.715854>,  <3.196755, 4.219107, 3.320160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.481117, 3.814410, 2.715854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.086351, 3.823959, 2.779645>,  <2.849492, 3.829689, 2.817920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.086351, 3.823959, 2.779645>,  <3.481117, 3.814410, 2.715854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.086351, 3.823959, 2.779645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128823, 0.478141, -0.868784,
		-0.096994, -0.877958, -0.468808,
		-0.986913, 0.023874, 0.159478,
		2.790277, 3.831121, 2.827488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.093829, 3.595745, 2.143527>,  <3.481117, 3.814410, 2.715854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.093829, 3.595745, 2.143527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.862000, 3.845493, 2.353005>,  <2.722902, 3.995342, 2.478692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.862000, 3.845493, 2.353005>,  <3.093829, 3.595745, 2.143527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.862000, 3.845493, 2.353005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113221, 0.574707, -0.810489,
		-0.807017, -0.529031, -0.262393,
		-0.579573, 0.624370, 0.523696,
		2.688128, 4.032804, 2.510114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.481314, 3.575816, 1.781520>,  <3.093829, 3.595745, 2.143527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.481314, 3.575816, 1.781520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.566210, 3.910477, 1.983499>,  <2.617147, 4.111273, 2.104686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.566210, 3.910477, 1.983499>,  <2.481314, 3.575816, 1.781520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.566210, 3.910477, 1.983499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066257, 0.527849, -0.846750,
		-0.974969, 0.146258, 0.167465,
		0.212240, 0.836651, 0.504945,
		2.629882, 4.161472, 2.134982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.965132, 4.053008, 1.533373>,  <2.481314, 3.575816, 1.781520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.965132, 4.053008, 1.533373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.308598, 4.217064, 1.656324>,  <2.514677, 4.315497, 1.730096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.308598, 4.217064, 1.656324>,  <1.965132, 4.053008, 1.533373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.308598, 4.217064, 1.656324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009246, 0.612016, -0.790791,
		-0.512456, 0.676182, 0.529308,
		0.858664, 0.410140, 0.307380,
		2.566197, 4.340106, 1.748538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.007660, 4.827519, 1.510453>,  <1.965132, 4.053008, 1.533373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.007660, 4.827519, 1.510453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.401506, 4.758392, 1.500117>,  <2.637814, 4.716916, 1.493916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.401506, 4.758392, 1.500117>,  <2.007660, 4.827519, 1.510453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.401506, 4.758392, 1.500117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087767, 0.616986, -0.782064,
		0.151096, 0.767764, 0.622662,
		0.984615, -0.172817, -0.025840,
		2.696891, 4.706547, 1.492365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.287432, 5.522117, 1.358060>,  <2.007660, 4.827519, 1.510453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.287432, 5.522117, 1.358060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.533407, 5.226063, 1.249211>,  <2.680993, 5.048430, 1.183902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.533407, 5.226063, 1.249211>,  <2.287432, 5.522117, 1.358060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.533407, 5.226063, 1.249211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151780, 0.449718, -0.880180,
		0.773830, 0.499954, 0.388887,
		0.614939, -0.740135, -0.272122,
		2.717889, 5.004022, 1.167575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.944385, 5.844853, 1.212312>,  <2.287432, 5.522117, 1.358060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.944385, 5.844853, 1.212312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.839479, 5.512756, 1.015573>,  <2.776536, 5.313498, 0.897529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.839479, 5.512756, 1.015573>,  <2.944385, 5.844853, 1.212312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.839479, 5.512756, 1.015573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132835, 0.473779, -0.870568,
		0.955810, -0.293653, -0.013970,
		-0.262264, -0.830242, -0.491850,
		2.760800, 5.263684, 0.868018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.024925, 3.539492, 4.627636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.733753, 3.766899, 4.474322>,  <0.559050, 3.903344, 4.382334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.733753, 3.766899, 4.474322>,  <1.024925, 3.539492, 4.627636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.733753, 3.766899, 4.474322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651913, 0.747069, -0.129991,
		0.212437, -0.344492, -0.914437,
		-0.727928, 0.568519, -0.383284,
		0.515375, 3.937455, 4.359337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.020959, 3.233402, 3.878987>,  <1.024925, 3.539492, 4.627636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.020959, 3.233402, 3.878987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388632, 3.075874, 3.877744>,  <1.609236, 2.981358, 3.876999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388632, 3.075874, 3.877744>,  <1.020959, 3.233402, 3.878987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.388632, 3.075874, 3.877744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368265, -0.856686, -0.361207,
		0.139589, 0.333159, -0.932480,
		0.919182, -0.393820, -0.003106,
		1.664387, 2.957728, 3.876812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.151662, 3.010743, 3.178506>,  <1.020959, 3.233402, 3.878987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.151662, 3.010743, 3.178506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.396025, 2.800476, 3.415307>,  <1.542642, 2.674316, 3.557388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.396025, 2.800476, 3.415307>,  <1.151662, 3.010743, 3.178506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.396025, 2.800476, 3.415307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290262, -0.844404, -0.450256,
		0.736575, 0.103228, -0.668432,
		0.610906, -0.525667, 0.592003,
		1.579296, 2.642776, 3.592908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.651003, 2.573489, 2.793231>,  <1.151662, 3.010743, 3.178506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.651003, 2.573489, 2.793231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.547499, 2.399700, 3.138316>,  <1.485396, 2.295427, 3.345368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.547499, 2.399700, 3.138316>,  <1.651003, 2.573489, 2.793231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.547499, 2.399700, 3.138316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427417, -0.749439, -0.505625,
		0.866232, -0.499574, 0.008224,
		-0.258760, -0.434473, 0.862714,
		1.469871, 2.269358, 3.397130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.946148, 1.896392, 2.740201>,  <1.651003, 2.573489, 2.793231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.946148, 1.896392, 2.740201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.624340, 1.950172, 2.971604>,  <1.431256, 1.982441, 3.110446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.624340, 1.950172, 2.971604>,  <1.946148, 1.896392, 2.740201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.624340, 1.950172, 2.971604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515813, -0.641029, -0.568347,
		0.294425, -0.755648, 0.585072,
		-0.804519, 0.134452, 0.578509,
		1.382984, 1.990508, 3.145157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.738902, 1.201795, 2.909926>,  <1.946148, 1.896392, 2.740201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.738902, 1.201795, 2.909926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.423065, 1.446678, 2.926647>,  <1.233563, 1.593608, 2.936679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.423065, 1.446678, 2.926647>,  <1.738902, 1.201795, 2.909926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.423065, 1.446678, 2.926647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530235, -0.646407, -0.548643,
		-0.308861, -0.455369, 0.835011,
		-0.789592, 0.612206, 0.041802,
		1.186188, 1.630340, 2.939188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.121691, 0.885807, 3.229556>,  <1.738902, 1.201795, 2.909926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.121691, 0.885807, 3.229556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.022358, 1.167389, 2.963389>,  <0.962758, 1.336338, 2.803689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.022358, 1.167389, 2.963389>,  <1.121691, 0.885807, 3.229556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.022358, 1.167389, 2.963389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536866, -0.671802, -0.510350,
		-0.806292, 0.230503, 0.544759,
		-0.248333, 0.703954, -0.665417,
		0.947858, 1.378575, 2.763764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.327785, 1.011850, 3.227321>,  <1.121691, 0.885807, 3.229556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.327785, 1.011850, 3.227321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.517591, 1.098804, 2.886128>,  <0.631475, 1.150977, 2.681413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.517591, 1.098804, 2.886128>,  <0.327785, 1.011850, 3.227321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.517591, 1.098804, 2.886128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639536, -0.580699, -0.503769,
		-0.604838, 0.784559, -0.136525,
		0.474516, 0.217386, -0.852982,
		0.659946, 1.164020, 2.630234>
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
