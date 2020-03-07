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
	<5.311594, 0.915160, 3.165681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.119339, 0.569504, 3.106014>,  <5.003986, 0.362110, 3.070215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.119339, 0.569504, 3.106014>,  <5.311594, 0.915160, 3.165681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.119339, 0.569504, 3.106014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771917, 0.497631, -0.395612,
		0.416093, -0.075002, -0.906224,
		-0.480636, -0.864140, -0.149165,
		4.975148, 0.310262, 3.061265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.131691, 0.657461, 2.414527>,  <5.311594, 0.915160, 3.165681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.131691, 0.657461, 2.414527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.862427, 0.587914, 2.702034>,  <4.700868, 0.546185, 2.874538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.862427, 0.587914, 2.702034>,  <5.131691, 0.657461, 2.414527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.862427, 0.587914, 2.702034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650789, 0.600867, -0.464147,
		-0.351182, -0.780211, -0.517631,
		-0.673160, -0.173868, 0.718767,
		4.660479, 0.535753, 2.917664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.444750, 0.955888, 2.156716>,  <5.131691, 0.657461, 2.414527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.444750, 0.955888, 2.156716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.398754, 0.873474, 2.545422>,  <4.371157, 0.824026, 2.778645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.398754, 0.873474, 2.545422>,  <4.444750, 0.955888, 2.156716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.398754, 0.873474, 2.545422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703512, 0.707540, 0.066766,
		-0.701319, -0.675971, -0.226307,
		-0.114989, -0.206034, 0.971765,
		4.364257, 0.811664, 2.836951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.611113, 0.963191, 2.297795>,  <4.444750, 0.955888, 2.156716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.611113, 0.963191, 2.297795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.825340, 1.040878, 2.626537>,  <3.953877, 1.087490, 2.823783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.825340, 1.040878, 2.626537>,  <3.611113, 0.963191, 2.297795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.825340, 1.040878, 2.626537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670633, 0.689276, 0.274136,
		-0.513243, -0.697982, 0.499403,
		0.535568, 0.194217, 0.821855,
		3.986011, 1.099144, 2.873094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.137504, 0.864163, 2.857854>,  <3.611113, 0.963191, 2.297795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.137504, 0.864163, 2.857854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.441437, 1.097214, 2.973232>,  <3.623797, 1.237044, 3.042459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.441437, 1.097214, 2.973232>,  <3.137504, 0.864163, 2.857854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.441437, 1.097214, 2.973232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649705, 0.664685, 0.368887,
		0.023198, -0.467697, 0.883585,
		0.759833, 0.582626, 0.288446,
		3.669387, 1.272002, 3.059766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.942869, 1.023066, 3.557619>,  <3.137504, 0.864163, 2.857854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.942869, 1.023066, 3.557619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.218220, 1.301094, 3.474659>,  <3.383430, 1.467911, 3.424883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.218220, 1.301094, 3.474659>,  <2.942869, 1.023066, 3.557619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.218220, 1.301094, 3.474659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577951, 0.698366, 0.422206,
		0.438303, -0.170771, 0.882456,
		0.688377, 0.695070, -0.207399,
		3.424733, 1.509615, 3.412439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.058965, 1.377872, 4.150366>,  <2.942869, 1.023066, 3.557619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.058965, 1.377872, 4.150366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.165623, 1.630119, 3.858826>,  <3.229617, 1.781467, 3.683902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.165623, 1.630119, 3.858826>,  <3.058965, 1.377872, 4.150366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.165623, 1.630119, 3.858826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529748, 0.727647, 0.435772,
		0.805151, 0.269911, 0.528090,
		0.266643, 0.630617, -0.728851,
		3.245616, 1.819304, 3.640171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.101849, 2.079433, 4.532538>,  <3.058965, 1.377872, 4.150366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.101849, 2.079433, 4.532538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.994232, 2.085541, 4.147335>,  <2.929662, 2.089206, 3.916213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.994232, 2.085541, 4.147335>,  <3.101849, 2.079433, 4.532538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.994232, 2.085541, 4.147335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576447, 0.798457, 0.173707,
		0.771573, 0.601858, -0.206017,
		-0.269042, 0.015270, -0.963007,
		2.913519, 2.090122, 3.858433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.377346, 2.607235, 4.350585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.404234, 2.929749, 4.115505>,  <2.420367, 3.123256, 3.974458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.404234, 2.929749, 4.115505>,  <2.377346, 2.607235, 4.350585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.404234, 2.929749, 4.115505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611573, -0.498698, -0.614231,
		-0.788328, -0.318132, -0.526622,
		0.067219, 0.806283, -0.587699,
		2.424400, 3.171633, 3.939196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.129919, 2.442914, 3.700839>,  <2.377346, 2.607235, 4.350585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.129919, 2.442914, 3.700839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.395833, 2.738754, 3.658791>,  <2.555382, 2.916258, 3.633561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.395833, 2.738754, 3.658791>,  <2.129919, 2.442914, 3.700839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.395833, 2.738754, 3.658791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596457, -0.610231, -0.521399,
		-0.449775, 0.283919, -0.846813,
		0.664786, 0.739600, -0.105121,
		2.595269, 2.960634, 3.627254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.338437, 2.490001, 2.945444>,  <2.129919, 2.442914, 3.700839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.338437, 2.490001, 2.945444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.609820, 2.600342, 3.217796>,  <2.772650, 2.666546, 3.381208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.609820, 2.600342, 3.217796>,  <2.338437, 2.490001, 2.945444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.609820, 2.600342, 3.217796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608703, -0.729994, -0.310788,
		0.411307, 0.625311, -0.663183,
		0.678459, 0.275853, 0.680881,
		2.813358, 2.683098, 3.422060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.956867, 2.438329, 2.628933>,  <2.338437, 2.490001, 2.945444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.956867, 2.438329, 2.628933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.065790, 2.437698, 3.013817>,  <3.131144, 2.437320, 3.244747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.065790, 2.437698, 3.013817>,  <2.956867, 2.438329, 2.628933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.065790, 2.437698, 3.013817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782383, -0.581747, -0.222368,
		0.560113, 0.813368, -0.157181,
		0.272307, -0.001575, 0.962209,
		3.147482, 2.437226, 3.302480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.680155, 2.665757, 2.824734>,  <2.956867, 2.438329, 2.628933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.680155, 2.665757, 2.824734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.555318, 2.401382, 3.097721>,  <3.480415, 2.242758, 3.261513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.555318, 2.401382, 3.097721>,  <3.680155, 2.665757, 2.824734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.555318, 2.401382, 3.097721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773943, -0.593497, -0.220848,
		0.551008, 0.459265, 0.696754,
		-0.312094, -0.660936, 0.682467,
		3.461690, 2.203102, 3.302461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.258120, 2.426364, 3.043068>,  <3.680155, 2.665757, 2.824734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.258120, 2.426364, 3.043068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.015367, 2.138954, 3.178959>,  <3.869714, 1.966508, 3.260493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.015367, 2.138954, 3.178959>,  <4.258120, 2.426364, 3.043068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.015367, 2.138954, 3.178959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681988, -0.690283, -0.241662,
		0.408148, 0.085029, 0.908948,
		-0.606883, -0.718526, 0.339726,
		3.833302, 1.923396, 3.280877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.705407, 2.009338, 3.440866>,  <4.258120, 2.426364, 3.043068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.705407, 2.009338, 3.440866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.392952, 1.781380, 3.338852>,  <4.205479, 1.644605, 3.277643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.392952, 1.781380, 3.338852>,  <4.705407, 2.009338, 3.440866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.392952, 1.781380, 3.338852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613099, -0.777366, -0.140752,
		-0.118042, -0.266309, 0.956632,
		-0.781137, -0.569896, -0.255036,
		4.158611, 1.610411, 3.262341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.698741, 1.453381, 3.886597>,  <4.705407, 2.009338, 3.440866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.698741, 1.453381, 3.886597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.488258, 1.317123, 3.574940>,  <4.361969, 1.235369, 3.387945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.488258, 1.317123, 3.574940>,  <4.698741, 1.453381, 3.886597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.488258, 1.317123, 3.574940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617030, -0.783434, -0.074201,
		-0.585132, -0.519801, 0.622437,
		-0.526208, -0.340645, -0.779144,
		4.330396, 1.214930, 3.341197>
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
