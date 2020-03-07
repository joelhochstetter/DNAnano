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
	<2.741774, 3.336310, 1.736837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.570049, 3.451561, 1.394451>,  <2.467015, 3.520712, 1.189020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.570049, 3.451561, 1.394451>,  <2.741774, 3.336310, 1.736837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.570049, 3.451561, 1.394451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889492, 0.299127, -0.345437,
		0.156512, -0.909673, -0.384706,
		-0.429311, 0.288128, -0.855964,
		2.441256, 3.537999, 1.137662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.145493, 3.066662, 1.158367>,  <2.741774, 3.336310, 1.736837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.145493, 3.066662, 1.158367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.933987, 3.380135, 1.027981>,  <2.807083, 3.568218, 0.949749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.933987, 3.380135, 1.027981>,  <3.145493, 3.066662, 1.158367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.933987, 3.380135, 1.027981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819997, 0.372523, -0.434547,
		-0.219117, -0.497063, -0.839593,
		-0.528765, 0.783681, -0.325964,
		2.775357, 3.615239, 0.930191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.499630, 3.308328, 0.453383>,  <3.145493, 3.066662, 1.158367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.499630, 3.308328, 0.453383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.260014, 3.604630, 0.574993>,  <3.116243, 3.782411, 0.647959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.260014, 3.604630, 0.574993>,  <3.499630, 3.308328, 0.453383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.260014, 3.604630, 0.574993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625006, 0.669909, -0.400736,
		-0.500516, -0.050041, -0.864280,
		-0.599042, 0.740755, 0.304024,
		3.080301, 3.826856, 0.666200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.358818, 3.757480, -0.184878>,  <3.499630, 3.308328, 0.453383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.358818, 3.757480, -0.184878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.360489, 3.965981, 0.156479>,  <3.361491, 4.091081, 0.361293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.360489, 3.965981, 0.156479>,  <3.358818, 3.757480, -0.184878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.360489, 3.965981, 0.156479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671871, 0.630619, -0.388471,
		-0.740656, 0.574993, -0.347579,
		0.004178, 0.521252, 0.853393,
		3.361742, 4.122356, 0.412497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.349146, 4.458232, -0.409956>,  <3.358818, 3.757480, -0.184878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.349146, 4.458232, -0.409956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.485958, 4.490913, -0.035503>,  <3.568045, 4.510522, 0.189168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.485958, 4.490913, -0.035503>,  <3.349146, 4.458232, -0.409956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.485958, 4.490913, -0.035503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728959, 0.605588, -0.319191,
		-0.592988, 0.791573, 0.147570,
		0.342029, 0.081704, 0.936131,
		3.588567, 4.515425, 0.245336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.378247, 5.172645, -0.332738>,  <3.349146, 4.458232, -0.409956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.378247, 5.172645, -0.332738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.630146, 5.011772, -0.066906>,  <3.781285, 4.915248, 0.092593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.630146, 5.011772, -0.066906>,  <3.378247, 5.172645, -0.332738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.630146, 5.011772, -0.066906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704707, 0.655724, -0.270948,
		-0.326811, 0.638964, 0.696361,
		0.629747, -0.402182, 0.664581,
		3.819070, 4.891118, 0.132468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.727921, 5.733143, -0.023019>,  <3.378247, 5.172645, -0.332738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.727921, 5.733143, -0.023019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.958584, 5.411392, 0.034172>,  <4.096982, 5.218341, 0.068487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.958584, 5.411392, 0.034172>,  <3.727921, 5.733143, -0.023019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.958584, 5.411392, 0.034172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816973, 0.566723, -0.106678,
		0.004780, 0.178327, 0.983960,
		0.576656, -0.804378, 0.142979,
		4.131581, 5.170079, 0.077066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.163662, 5.987058, 0.393029>,  <3.727921, 5.733143, -0.023019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.163662, 5.987058, 0.393029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.323929, 5.696785, 0.169296>,  <4.420089, 5.522621, 0.035057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.323929, 5.696785, 0.169296>,  <4.163662, 5.987058, 0.393029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.323929, 5.696785, 0.169296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837050, 0.538166, -0.098616,
		0.372578, -0.428677, 0.823057,
		0.400666, -0.725682, -0.559332,
		4.444129, 5.479080, 0.001497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.839111, 6.344917, 0.131428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.961810, 5.964279, 0.123699>,  <6.035429, 5.735897, 0.119062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.961810, 5.964279, 0.123699>,  <5.839111, 6.344917, 0.131428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.961810, 5.964279, 0.123699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920244, -0.301703, 0.249252,
		-0.243016, -0.058678, -0.968246,
		0.306748, -0.951594, -0.019321,
		6.053834, 5.678801, 0.117903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.336584, 5.886374, -0.355452>,  <5.839111, 6.344917, 0.131428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.336584, 5.886374, -0.355452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.514486, 5.669693, -0.070145>,  <5.621228, 5.539685, 0.101040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.514486, 5.669693, -0.070145>,  <5.336584, 5.886374, -0.355452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.514486, 5.669693, -0.070145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889438, -0.360776, 0.280609,
		0.105324, -0.759210, -0.642267,
		0.444755, -0.541701, 0.713269,
		5.647913, 5.507183, 0.143836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.126964, 5.175404, -0.506081>,  <5.336584, 5.886374, -0.355452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.126964, 5.175404, -0.506081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.189659, 5.194046, -0.111465>,  <5.227276, 5.205232, 0.125304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.189659, 5.194046, -0.111465>,  <5.126964, 5.175404, -0.506081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.189659, 5.194046, -0.111465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903990, -0.395547, 0.162309,
		0.397788, -0.917262, -0.019863,
		0.156737, 0.046609, 0.986540,
		5.236681, 5.208028, 0.184497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.793683, 4.552370, -0.312391>,  <5.126964, 5.175404, -0.506081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.793683, 4.552370, -0.312391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.841216, 4.797348, 0.000221>,  <4.869736, 4.944335, 0.187789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.841216, 4.797348, 0.000221>,  <4.793683, 4.552370, -0.312391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.841216, 4.797348, 0.000221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909434, -0.248771, 0.333231,
		0.398507, -0.750350, 0.527416,
		0.118834, 0.612445, 0.781530,
		4.876866, 4.981081, 0.234680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.900564, 4.281384, 0.346551>,  <4.793683, 4.552370, -0.312391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.900564, 4.281384, 0.346551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.682714, 4.616447, 0.330006>,  <4.552003, 4.817485, 0.320078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.682714, 4.616447, 0.330006>,  <4.900564, 4.281384, 0.346551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.682714, 4.616447, 0.330006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826402, -0.527592, 0.196739,
		0.142976, 0.141333, 0.979583,
		-0.544625, 0.837659, -0.041364,
		4.519326, 4.867745, 0.317596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.559796, 4.345347, 1.070997>,  <4.900564, 4.281384, 0.346551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.559796, 4.345347, 1.070997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.333935, 4.511734, 0.785862>,  <4.198418, 4.611566, 0.614781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.333935, 4.511734, 0.785862>,  <4.559796, 4.345347, 1.070997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.333935, 4.511734, 0.785862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797988, -0.495625, 0.342886,
		-0.210671, 0.762448, 0.611793,
		-0.564653, 0.415967, -0.712838,
		4.164539, 4.636524, 0.572010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.025387, 4.716794, 1.425482>,  <4.559796, 4.345347, 1.070997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.025387, 4.716794, 1.425482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.893354, 4.625206, 1.059177>,  <3.814135, 4.570253, 0.839395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.893354, 4.625206, 1.059177>,  <4.025387, 4.716794, 1.425482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.893354, 4.625206, 1.059177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759291, -0.511977, 0.401692,
		-0.560823, 0.827921, -0.004860,
		-0.330081, -0.228969, -0.915762,
		3.794330, 4.556516, 0.784449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.293800, 4.828998, 1.461013>,  <4.025387, 4.716794, 1.425482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.293800, 4.828998, 1.461013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.346624, 4.590736, 1.144089>,  <3.378319, 4.447779, 0.953934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.346624, 4.590736, 1.144089>,  <3.293800, 4.828998, 1.461013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.346624, 4.590736, 1.144089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787985, -0.548010, 0.280651,
		-0.601365, 0.587266, -0.541736,
		0.132060, -0.595654, -0.792311,
		3.386242, 4.412040, 0.906395>
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
