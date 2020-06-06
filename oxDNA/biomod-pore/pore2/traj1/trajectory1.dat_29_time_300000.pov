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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.387535, 16.742506, -1.784424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.603111, 16.934471, -2.061329>,  <22.732458, 17.049650, -2.227472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.603111, 16.934471, -2.061329>,  <22.387535, 16.742506, -1.784424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.603111, 16.934471, -2.061329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112801, 0.855546, 0.505289,
		0.834756, -0.194234, 0.515225,
		0.538943, 0.479910, -0.692262,
		22.764793, 17.078444, -2.269008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.917410, 16.876261, -1.255586>,  <22.387535, 16.742506, -1.784424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.917410, 16.876261, -1.255586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962475, 16.646343, -0.931384>,  <21.989513, 16.508392, -0.736863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962475, 16.646343, -0.931384>,  <21.917410, 16.876261, -1.255586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.962475, 16.646343, -0.931384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984424, 0.046227, 0.169622,
		-0.134965, -0.816990, -0.560635,
		0.112663, -0.574796, 0.810504,
		21.996273, 16.473904, -0.688233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502609, 16.195110, -1.328186>,  <21.917410, 16.876261, -1.255586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.502609, 16.195110, -1.328186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559383, 16.353619, -0.965347>,  <21.593447, 16.448725, -0.747644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559383, 16.353619, -0.965347>,  <21.502609, 16.195110, -1.328186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559383, 16.353619, -0.965347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982964, 0.164525, 0.081931,
		-0.116773, -0.903272, 0.412872,
		0.141934, 0.396272, 0.907096,
		21.601963, 16.472500, -0.693218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.965796, 15.958174, -0.948112>,  <21.502609, 16.195110, -1.328186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.965796, 15.958174, -0.948112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.092564, 16.303314, -0.790607>,  <21.168625, 16.510399, -0.696104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.092564, 16.303314, -0.790607>,  <20.965796, 15.958174, -0.948112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.092564, 16.303314, -0.790607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948324, 0.281438, 0.146540,
		0.015623, -0.419856, 0.907457,
		0.316919, 0.862852, 0.393762,
		21.187639, 16.562170, -0.672479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.783274, 16.017910, -0.256490>,  <20.965796, 15.958174, -0.948112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.783274, 16.017910, -0.256490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.802872, 16.369675, -0.445902>,  <20.814631, 16.580734, -0.559550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.802872, 16.369675, -0.445902>,  <20.783274, 16.017910, -0.256490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802872, 16.369675, -0.445902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873594, 0.267558, 0.406505,
		0.484183, 0.393757, 0.781359,
		0.048995, 0.879414, -0.473531,
		20.817570, 16.633499, -0.587961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.848747, 16.652081, 0.169469>,  <20.783274, 16.017910, -0.256490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.848747, 16.652081, 0.169469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648155, 16.699863, -0.173285>,  <20.527800, 16.728533, -0.378937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648155, 16.699863, -0.173285>,  <20.848747, 16.652081, 0.169469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.648155, 16.699863, -0.173285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805818, 0.296024, 0.512862,
		0.314924, 0.947681, -0.052188,
		-0.501478, 0.119458, -0.856883,
		20.497711, 16.735701, -0.430350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.455528, 17.314465, 0.117484>,  <20.848747, 16.652081, 0.169469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.455528, 17.314465, 0.117484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.292133, 16.996990, -0.062825>,  <20.194096, 16.806505, -0.171011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.292133, 16.996990, -0.062825>,  <20.455528, 17.314465, 0.117484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.292133, 16.996990, -0.062825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839495, 0.132822, 0.526883,
		-0.358309, 0.593647, -0.720554,
		-0.408488, -0.793689, -0.450773,
		20.169586, 16.758884, -0.198057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761068, 17.476189, -0.363304>,  <20.455528, 17.314465, 0.117484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.761068, 17.476189, -0.363304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.800575, 17.117622, -0.190476>,  <19.824280, 16.902483, -0.086779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.800575, 17.117622, -0.190476>,  <19.761068, 17.476189, -0.363304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.800575, 17.117622, -0.190476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712099, 0.239622, 0.659922,
		-0.695098, -0.372854, -0.614670,
		0.098766, -0.896416, 0.432070,
		19.830206, 16.848698, -0.060855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235497, 17.244570, -0.058059>,  <19.761068, 17.476189, -0.363304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.235497, 17.244570, -0.058059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.453003, 16.977562, 0.145406>,  <19.583506, 16.817358, 0.267485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.453003, 16.977562, 0.145406>,  <19.235497, 17.244570, -0.058059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.453003, 16.977562, 0.145406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734545, -0.085401, 0.673164,
		-0.405910, -0.739678, -0.536762,
		0.543765, -0.667520, 0.508661,
		19.616133, 16.777306, 0.298005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731222, 16.730988, 0.146214>,  <19.235497, 17.244570, -0.058059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731222, 16.730988, 0.146214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.050983, 16.764969, 0.384118>,  <19.242840, 16.785358, 0.526860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.050983, 16.764969, 0.384118>,  <18.731222, 16.730988, 0.146214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.050983, 16.764969, 0.384118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600727, 0.097994, 0.793425,
		0.009119, -0.991555, 0.129369,
		0.799402, 0.084951, 0.594760,
		19.290804, 16.790455, 0.562546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.778746, 16.241863, 0.788674>,  <18.731222, 16.730988, 0.146214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.778746, 16.241863, 0.788674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.891193, 16.624256, 0.822316>,  <18.958662, 16.853691, 0.842501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.891193, 16.624256, 0.822316>,  <18.778746, 16.241863, 0.788674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.891193, 16.624256, 0.822316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701065, 0.144726, 0.698256,
		0.655347, -0.255257, 0.710890,
		0.281119, 0.955980, 0.084105,
		18.975529, 16.911051, 0.847547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160841, 16.470459, 1.498377>,  <18.778746, 16.241863, 0.788674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.160841, 16.470459, 1.498377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935310, 16.743927, 1.313037>,  <18.799992, 16.908009, 1.201833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935310, 16.743927, 1.313037>,  <19.160841, 16.470459, 1.498377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.935310, 16.743927, 1.313037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509456, 0.153667, 0.846664,
		0.650042, 0.713428, 0.261659,
		-0.563826, 0.683671, -0.463351,
		18.766163, 16.949028, 1.174032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.024630, 17.095911, 1.913242>,  <19.160841, 16.470459, 1.498377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.024630, 17.095911, 1.913242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732815, 17.073078, 1.640620>,  <18.557726, 17.059378, 1.477047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732815, 17.073078, 1.640620>,  <19.024630, 17.095911, 1.913242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.732815, 17.073078, 1.640620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651206, 0.362579, 0.666684,
		0.209060, 0.930203, -0.301688,
		-0.729537, -0.057084, -0.681555,
		18.513954, 17.055952, 1.436153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.727757, 17.821859, 1.799925>,  <19.024630, 17.095911, 1.913242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.727757, 17.821859, 1.799925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520630, 17.479679, 1.803230>,  <18.396355, 17.274370, 1.805212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520630, 17.479679, 1.803230>,  <18.727757, 17.821859, 1.799925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520630, 17.479679, 1.803230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535103, 0.331408, 0.777067,
		-0.667482, 0.397956, -0.629364,
		-0.517815, -0.855453, 0.008261,
		18.365286, 17.223043, 1.805708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.929819, 18.079584, 1.035825>,  <18.727757, 17.821859, 1.799925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.929819, 18.079584, 1.035825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.778522, 17.721497, 0.941580>,  <18.687744, 17.506643, 0.885034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.778522, 17.721497, 0.941580>,  <18.929819, 18.079584, 1.035825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.778522, 17.721497, 0.941580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098965, 0.292167, -0.951233,
		0.920401, -0.336480, -0.199105,
		-0.378243, -0.895221, -0.235611,
		18.665051, 17.452930, 0.870897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200241, 18.823217, 1.170438>,  <18.929819, 18.079584, 1.035825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.200241, 18.823217, 1.170438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.305027, 18.586239, 0.865706>,  <19.367899, 18.444052, 0.682867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.305027, 18.586239, 0.865706>,  <19.200241, 18.823217, 1.170438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.305027, 18.586239, 0.865706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306837, 0.799566, -0.516280,
		0.915000, -0.098509, 0.391243,
		0.261966, -0.592444, -0.761829,
		19.383617, 18.408506, 0.637158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.553940, 18.683569, 1.853292>,  <19.200241, 18.823217, 1.170438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.553940, 18.683569, 1.853292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.424538, 18.329365, 1.986689>,  <19.346897, 18.116842, 2.066728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.424538, 18.329365, 1.986689>,  <19.553940, 18.683569, 1.853292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.424538, 18.329365, 1.986689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078616, 0.376381, 0.923123,
		-0.942955, 0.272417, -0.191376,
		-0.323505, -0.885509, 0.333494,
		19.327486, 18.063711, 2.086737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038029, 18.640171, 2.317515>,  <19.553940, 18.683569, 1.853292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038029, 18.640171, 2.317515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.205669, 18.290493, 2.415606>,  <19.306253, 18.080687, 2.474461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.205669, 18.290493, 2.415606>,  <19.038029, 18.640171, 2.317515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.205669, 18.290493, 2.415606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011823, 0.275325, 0.961278,
		-0.907863, -0.399972, 0.125724,
		0.419099, -0.874196, 0.245229,
		19.331400, 18.028234, 2.489175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628159, 18.509756, 2.920204>,  <19.038029, 18.640171, 2.317515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628159, 18.509756, 2.920204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990559, 18.341175, 2.935929>,  <19.207998, 18.240026, 2.945365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990559, 18.341175, 2.935929>,  <18.628159, 18.509756, 2.920204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990559, 18.341175, 2.935929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060034, 0.219884, 0.973677,
		-0.419003, -0.879789, 0.224516,
		0.905998, -0.421452, 0.039314,
		19.262358, 18.214739, 2.947724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.722952, 17.896055, 3.459851>,  <18.628159, 18.509756, 2.920204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.722952, 17.896055, 3.459851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057819, 18.099731, 3.379978>,  <19.258739, 18.221937, 3.332054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057819, 18.099731, 3.379978>,  <18.722952, 17.896055, 3.459851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057819, 18.099731, 3.379978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077836, 0.250457, 0.964994,
		0.541378, -0.823405, 0.170041,
		0.837169, 0.509191, -0.199682,
		19.308969, 18.252489, 3.320073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.454451, 17.703459, 3.861042>,  <18.722952, 17.896055, 3.459851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.454451, 17.703459, 3.861042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.469803, 18.096035, 3.785891>,  <19.479013, 18.331581, 3.740800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.469803, 18.096035, 3.785891>,  <19.454451, 17.703459, 3.861042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469803, 18.096035, 3.785891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163069, 0.179345, 0.970177,
		0.985868, -0.067871, -0.153160,
		0.038378, 0.981442, -0.187878,
		19.481316, 18.390469, 3.729527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.063822, 17.950905, 4.091387>,  <19.454451, 17.703459, 3.861042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.063822, 17.950905, 4.091387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.822819, 18.270149, 4.092436>,  <19.678217, 18.461697, 4.093065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.822819, 18.270149, 4.092436>,  <20.063822, 17.950905, 4.091387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.822819, 18.270149, 4.092436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307783, 0.229316, 0.923409,
		0.736381, 0.557166, -0.383809,
		-0.602505, 0.798110, 0.002622,
		19.642067, 18.509583, 4.093222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.374735, 18.673029, 4.079457>,  <20.063822, 17.950905, 4.091387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.374735, 18.673029, 4.079457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055969, 18.600471, 4.309944>,  <19.864710, 18.556936, 4.448236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055969, 18.600471, 4.309944>,  <20.374735, 18.673029, 4.079457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.055969, 18.600471, 4.309944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518404, 0.284358, 0.806473,
		-0.310141, 0.941401, -0.132574,
		-0.796913, -0.181393, 0.576217,
		19.816895, 18.546053, 4.482809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.153658, 19.252140, 4.556834>,  <20.374735, 18.673029, 4.079457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.153658, 19.252140, 4.556834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055763, 18.897381, 4.713556>,  <19.997026, 18.684525, 4.807590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055763, 18.897381, 4.713556>,  <20.153658, 19.252140, 4.556834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.055763, 18.897381, 4.713556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396462, 0.277232, 0.875192,
		-0.884828, 0.369529, 0.283773,
		-0.244738, -0.886900, 0.391807,
		19.982342, 18.631311, 4.831098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.660915, 19.335365, 5.146532>,  <20.153658, 19.252140, 4.556834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.660915, 19.335365, 5.146532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.919704, 19.032032, 5.178419>,  <20.074978, 18.850033, 5.197552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.919704, 19.032032, 5.178419>,  <19.660915, 19.335365, 5.146532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.919704, 19.032032, 5.178419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446107, 0.461226, 0.766981,
		-0.618395, -0.460654, 0.636699,
		0.646974, -0.758333, 0.079719,
		20.113796, 18.804533, 5.202335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637213, 19.050352, 5.817603>,  <19.660915, 19.335365, 5.146532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637213, 19.050352, 5.817603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.987232, 19.070438, 5.625034>,  <20.197245, 19.082491, 5.509493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.987232, 19.070438, 5.625034>,  <19.637213, 19.050352, 5.817603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.987232, 19.070438, 5.625034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365070, 0.584603, 0.724544,
		0.317823, -0.809764, 0.493225,
		0.875050, 0.050215, -0.481421,
		20.249746, 19.085503, 5.480608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.139351, 18.889626, 6.202740>,  <19.637213, 19.050352, 5.817603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.139351, 18.889626, 6.202740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.359520, 19.100250, 5.943583>,  <20.491621, 19.226625, 5.788090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.359520, 19.100250, 5.943583>,  <20.139351, 18.889626, 6.202740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359520, 19.100250, 5.943583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426150, 0.490121, 0.760380,
		0.717934, -0.694630, 0.045379,
		0.550424, 0.526565, -0.647892,
		20.524647, 19.258219, 5.749216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.691710, 19.053091, 6.553170>,  <20.139351, 18.889626, 6.202740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.691710, 19.053091, 6.553170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.729614, 19.301178, 6.241695>,  <20.752357, 19.450029, 6.054811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.729614, 19.301178, 6.241695>,  <20.691710, 19.053091, 6.553170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.729614, 19.301178, 6.241695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375836, 0.702031, 0.604897,
		0.921828, -0.349979, -0.166574,
		0.094761, 0.620216, -0.778687,
		20.758043, 19.487242, 6.008090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.448780, 19.188511, 6.348327>,  <20.691710, 19.053091, 6.553170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.448780, 19.188511, 6.348327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.199699, 19.487587, 6.256065>,  <21.050251, 19.667032, 6.200708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.199699, 19.487587, 6.256065>,  <21.448780, 19.188511, 6.348327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.199699, 19.487587, 6.256065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577686, 0.638133, 0.508985,
		0.527750, 0.183701, -0.829297,
		-0.622703, 0.747690, -0.230653,
		21.012888, 19.711893, 6.186869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.739948, 19.856764, 5.932353>,  <21.448780, 19.188511, 6.348327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.739948, 19.856764, 5.932353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.467701, 19.871174, 6.225053>,  <21.304352, 19.879820, 6.400673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.467701, 19.871174, 6.225053>,  <21.739948, 19.856764, 5.932353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.467701, 19.871174, 6.225053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666602, 0.444849, 0.598123,
		-0.303970, 0.894881, -0.326789,
		-0.680621, 0.036026, 0.731750,
		21.263515, 19.881981, 6.444578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.699066, 20.529087, 6.237030>,  <21.739948, 19.856764, 5.932353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.699066, 20.529087, 6.237030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.601460, 20.241837, 6.497722>,  <21.542896, 20.069487, 6.654137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.601460, 20.241837, 6.497722>,  <21.699066, 20.529087, 6.237030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.601460, 20.241837, 6.497722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719844, 0.316202, 0.617933,
		-0.649832, 0.619929, 0.439780,
		-0.244015, -0.718126, 0.651730,
		21.528255, 20.026400, 6.693241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647585, 20.889029, 6.910367>,  <21.699066, 20.529087, 6.237030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647585, 20.889029, 6.910367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.788532, 20.515038, 6.894079>,  <21.873100, 20.290644, 6.884307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.788532, 20.515038, 6.894079>,  <21.647585, 20.889029, 6.910367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.788532, 20.515038, 6.894079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718223, 0.242272, 0.652273,
		-0.599994, -0.259084, 0.756890,
		0.352367, -0.934976, -0.040718,
		21.894243, 20.234545, 6.881864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.621265, 20.601465, 7.555325>,  <21.647585, 20.889029, 6.910367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.621265, 20.601465, 7.555325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906933, 20.428230, 7.335362>,  <22.078333, 20.324289, 7.203385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906933, 20.428230, 7.335362>,  <21.621265, 20.601465, 7.555325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.906933, 20.428230, 7.335362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624656, 0.039826, 0.779884,
		-0.315858, -0.900471, 0.298974,
		0.714170, -0.433088, -0.549905,
		22.121183, 20.298304, 7.170391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.718910, 19.929487, 7.695149>,  <21.621265, 20.601465, 7.555325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.718910, 19.929487, 7.695149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.059776, 20.118195, 7.604596>,  <22.264296, 20.231419, 7.550264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.059776, 20.118195, 7.604596>,  <21.718910, 19.929487, 7.695149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.059776, 20.118195, 7.604596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360661, -0.216082, 0.907322,
		0.379129, -0.854835, -0.354286,
		0.852165, 0.471769, -0.226382,
		22.315426, 20.259726, 7.536682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.386259, 19.558653, 7.723987>,  <21.718910, 19.929487, 7.695149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.386259, 19.558653, 7.723987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.528316, 19.923931, 7.803938>,  <22.613550, 20.143097, 7.851909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.528316, 19.923931, 7.803938>,  <22.386259, 19.558653, 7.723987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.528316, 19.923931, 7.803938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431240, -0.349748, 0.831690,
		0.829401, -0.209173, -0.518016,
		0.355142, 0.913194, 0.199878,
		22.634859, 20.197889, 7.863901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.063717, 19.440083, 8.098376>,  <22.386259, 19.558653, 7.723987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.063717, 19.440083, 8.098376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.859970, 19.769974, 8.196657>,  <22.737722, 19.967909, 8.255626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.859970, 19.769974, 8.196657>,  <23.063717, 19.440083, 8.098376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.859970, 19.769974, 8.196657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484194, 0.038633, 0.874107,
		0.711408, 0.564209, -0.419007,
		-0.509366, 0.824728, 0.245703,
		22.707161, 20.017391, 8.270368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.586302, 19.813347, 8.442441>,  <23.063717, 19.440083, 8.098376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.586302, 19.813347, 8.442441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.227993, 19.948780, 8.557648>,  <23.013008, 20.030039, 8.626772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.227993, 19.948780, 8.557648>,  <23.586302, 19.813347, 8.442441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.227993, 19.948780, 8.557648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303430, -0.007754, 0.952822,
		0.324841, 0.940905, -0.095790,
		-0.895773, 0.338581, 0.288018,
		22.959261, 20.050354, 8.644053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.766624, 20.312555, 8.915435>,  <23.586302, 19.813347, 8.442441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.766624, 20.312555, 8.915435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.378788, 20.246929, 8.988074>,  <23.146086, 20.207554, 9.031658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.378788, 20.246929, 8.988074>,  <23.766624, 20.312555, 8.915435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.378788, 20.246929, 8.988074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177596, 0.038865, 0.983336,
		-0.168390, 0.985684, -0.008546,
		-0.969590, -0.164066, 0.181598,
		23.087912, 20.197710, 9.042554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.682657, 20.760983, 9.469578>,  <23.766624, 20.312555, 8.915435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.682657, 20.760983, 9.469578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.370090, 20.511383, 9.471095>,  <23.182550, 20.361624, 9.472006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.370090, 20.511383, 9.471095>,  <23.682657, 20.760983, 9.469578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.370090, 20.511383, 9.471095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046955, 0.064859, 0.996789,
		-0.622242, 0.778728, -0.079982,
		-0.781415, -0.624000, 0.003793,
		23.135666, 20.324183, 9.472233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.161608, 21.080566, 9.825445>,  <23.682657, 20.760983, 9.469578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.161608, 21.080566, 9.825445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.082294, 20.689438, 9.852412>,  <23.034706, 20.454760, 9.868592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.082294, 20.689438, 9.852412>,  <23.161608, 21.080566, 9.825445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.082294, 20.689438, 9.852412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030992, 0.075003, 0.996702,
		-0.979655, 0.195541, -0.045177,
		-0.198284, -0.977823, 0.067417,
		23.022810, 20.396091, 9.872638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.634178, 21.169239, 10.271260>,  <23.161608, 21.080566, 9.825445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.634178, 21.169239, 10.271260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.767418, 20.793407, 10.302842>,  <22.847363, 20.567909, 10.321792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.767418, 20.793407, 10.302842>,  <22.634178, 21.169239, 10.271260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.767418, 20.793407, 10.302842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079514, 0.111431, 0.990586,
		-0.939533, -0.323687, 0.111828,
		0.333100, -0.939580, 0.078955,
		22.867348, 20.511534, 10.326529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.043770, 20.844280, 10.595440>,  <22.634178, 21.169239, 10.271260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.043770, 20.844280, 10.595440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.354218, 20.595280, 10.635700>,  <22.540487, 20.445879, 10.659857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.354218, 20.595280, 10.635700>,  <22.043770, 20.844280, 10.595440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.354218, 20.595280, 10.635700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092573, 0.045408, 0.994670,
		-0.623752, -0.781302, -0.022384,
		0.776121, -0.622500, 0.100651,
		22.587053, 20.408529, 10.665895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.822615, 20.213217, 10.971799>,  <22.043770, 20.844280, 10.595440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.822615, 20.213217, 10.971799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.216785, 20.216213, 11.039776>,  <22.453287, 20.218010, 11.080563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.216785, 20.216213, 11.039776>,  <21.822615, 20.213217, 10.971799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.216785, 20.216213, 11.039776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169991, 0.006309, 0.985425,
		0.006309, -0.999952, 0.007490,
		-0.985425, -0.007490, -0.169943,
		22.512413, 20.218460, 11.090758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.907328, 19.789270, 11.437362>,  <21.822615, 20.213217, 10.971799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.907328, 19.789270, 11.437362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.242401, 20.003635, 11.479482>,  <22.443445, 20.132254, 11.504754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.242401, 20.003635, 11.479482>,  <21.907328, 19.789270, 11.437362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.242401, 20.003635, 11.479482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088819, -0.056562, 0.994440,
		0.538888, -0.842378, 0.000218,
		0.837682, 0.535911, 0.105300,
		22.493706, 20.164408, 11.511071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.407040, 19.493881, 11.944775>,  <21.907328, 19.789270, 11.437362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.407040, 19.493881, 11.944775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.487938, 19.885441, 11.956476>,  <22.536478, 20.120377, 11.963497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.487938, 19.885441, 11.956476>,  <22.407040, 19.493881, 11.944775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.487938, 19.885441, 11.956476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027640, -0.024155, 0.999326,
		0.978944, -0.202919, 0.022171,
		0.202247, 0.978897, 0.029255,
		22.548613, 20.179110, 11.965253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.000513, 19.520924, 12.480872>,  <22.407040, 19.493881, 11.944775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.000513, 19.520924, 12.480872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.853035, 19.888603, 12.425540>,  <22.764547, 20.109211, 12.392341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.853035, 19.888603, 12.425540>,  <23.000513, 19.520924, 12.480872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.853035, 19.888603, 12.425540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053618, 0.169598, 0.984054,
		0.928002, 0.355401, -0.111816,
		-0.368697, 0.919199, -0.138332,
		22.742426, 20.164362, 12.384041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.407589, 20.013609, 13.040983>,  <23.000513, 19.520924, 12.480872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.407589, 20.013609, 13.040983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.087715, 20.199062, 12.888381>,  <22.895790, 20.310333, 12.796820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.087715, 20.199062, 12.888381>,  <23.407589, 20.013609, 13.040983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.087715, 20.199062, 12.888381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298201, 0.244807, 0.922575,
		0.521131, 0.851537, -0.057513,
		-0.799687, 0.463632, -0.381506,
		22.847809, 20.338152, 12.773930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.521742, 20.634554, 13.288910>,  <23.407589, 20.013609, 13.040983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.521742, 20.634554, 13.288910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.127186, 20.617706, 13.225336>,  <22.890451, 20.607597, 13.187192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.127186, 20.617706, 13.225336>,  <23.521742, 20.634554, 13.288910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.127186, 20.617706, 13.225336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160997, 0.443676, 0.881608,
		0.033384, 0.895197, -0.444418,
		-0.986390, -0.042118, -0.158935,
		22.831268, 20.605070, 13.177655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.195795, 21.167561, 13.640359>,  <23.521742, 20.634554, 13.288910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.195795, 21.167561, 13.640359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.847729, 20.977669, 13.587534>,  <22.638889, 20.863733, 13.555839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.847729, 20.977669, 13.587534>,  <23.195795, 21.167561, 13.640359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.847729, 20.977669, 13.587534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381862, 0.480284, 0.789625,
		-0.311430, 0.737536, -0.599209,
		-0.870168, -0.474729, -0.132062,
		22.586678, 20.835251, 13.547915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.615419, 21.597862, 13.645276>,  <23.195795, 21.167561, 13.640359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.615419, 21.597862, 13.645276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445961, 21.246441, 13.733524>,  <22.344286, 21.035589, 13.786473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445961, 21.246441, 13.733524>,  <22.615419, 21.597862, 13.645276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.445961, 21.246441, 13.733524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435989, 0.411255, 0.800489,
		-0.794002, 0.242934, -0.557265,
		-0.423644, -0.878551, 0.220621,
		22.318869, 20.982876, 13.799710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.999651, 21.808317, 13.910608>,  <22.615419, 21.597862, 13.645276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.999651, 21.808317, 13.910608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.003696, 21.438923, 14.064009>,  <22.006124, 21.217287, 14.156049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.003696, 21.438923, 14.064009>,  <21.999651, 21.808317, 13.910608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.003696, 21.438923, 14.064009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190857, 0.374687, 0.907294,
		-0.981566, -0.082371, -0.172463,
		0.010115, -0.923485, 0.383501,
		22.006731, 21.161877, 14.179059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.414394, 21.701750, 14.272867>,  <21.999651, 21.808317, 13.910608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.414394, 21.701750, 14.272867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.671829, 21.442726, 14.436066>,  <21.826290, 21.287312, 14.533985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.671829, 21.442726, 14.436066>,  <21.414394, 21.701750, 14.272867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.671829, 21.442726, 14.436066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157564, 0.409553, 0.898577,
		-0.748978, -0.642599, 0.161551,
		0.643588, -0.647559, 0.407997,
		21.864906, 21.248459, 14.558465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.063955, 21.392500, 14.788726>,  <21.414394, 21.701750, 14.272867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.063955, 21.392500, 14.788726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.441654, 21.312588, 14.893406>,  <21.668274, 21.264641, 14.956214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.441654, 21.312588, 14.893406>,  <21.063955, 21.392500, 14.788726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.441654, 21.312588, 14.893406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178602, 0.356931, 0.916898,
		-0.276586, -0.912518, 0.301349,
		0.944246, -0.199780, 0.261699,
		21.724928, 21.252653, 14.971915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.960468, 21.148756, 15.459565>,  <21.063955, 21.392500, 14.788726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.960468, 21.148756, 15.459565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.355160, 21.213280, 15.452154>,  <21.591974, 21.251993, 15.447707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.355160, 21.213280, 15.452154>,  <20.960468, 21.148756, 15.459565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.355160, 21.213280, 15.452154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007817, 0.066781, 0.997737,
		0.162184, -0.984641, 0.064634,
		0.986730, 0.161312, -0.018528,
		21.651178, 21.261673, 15.446596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.258860, 20.536499, 15.783320>,  <20.960468, 21.148756, 15.459565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.258860, 20.536499, 15.783320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.501762, 20.852928, 15.812836>,  <21.647503, 21.042786, 15.830544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.501762, 20.852928, 15.812836>,  <21.258860, 20.536499, 15.783320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.501762, 20.852928, 15.812836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026880, -0.113275, 0.993200,
		0.794052, -0.601142, -0.090050,
		0.607255, 0.791073, 0.073788,
		21.683939, 21.090250, 15.834972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.719574, 20.396061, 16.313166>,  <21.258860, 20.536499, 15.783320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.719574, 20.396061, 16.313166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769478, 20.792263, 16.290075>,  <21.799419, 21.029985, 16.276222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769478, 20.792263, 16.290075>,  <21.719574, 20.396061, 16.313166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.769478, 20.792263, 16.290075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046389, 0.052293, 0.997554,
		0.991102, -0.127133, -0.039425,
		0.124760, 0.990506, -0.057725,
		21.806906, 21.089415, 16.272758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.244553, 20.461687, 16.852819>,  <21.719574, 20.396061, 16.313166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.244553, 20.461687, 16.852819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.057663, 20.807125, 16.777027>,  <21.945528, 21.014387, 16.731552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.057663, 20.807125, 16.777027>,  <22.244553, 20.461687, 16.852819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.057663, 20.807125, 16.777027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167284, 0.124094, 0.978068,
		0.868169, 0.488675, 0.086486,
		-0.467225, 0.863596, -0.189482,
		21.917496, 21.066204, 16.720182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.448145, 20.855045, 17.431746>,  <22.244553, 20.461687, 16.852819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.448145, 20.855045, 17.431746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.152176, 21.081501, 17.286415>,  <21.974594, 21.217375, 17.199217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.152176, 21.081501, 17.286415>,  <22.448145, 20.855045, 17.431746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.152176, 21.081501, 17.286415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358762, 0.124772, 0.925052,
		0.569039, 0.814813, 0.110787,
		-0.739922, 0.566137, -0.363325,
		21.930199, 21.251343, 17.177418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.479010, 21.554621, 17.744507>,  <22.448145, 20.855045, 17.431746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.479010, 21.554621, 17.744507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.109245, 21.477165, 17.613071>,  <21.887386, 21.430693, 17.534210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.109245, 21.477165, 17.613071>,  <22.479010, 21.554621, 17.744507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.109245, 21.477165, 17.613071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363274, 0.184597, 0.913212,
		-0.116175, 0.963550, -0.240987,
		-0.924411, -0.193637, -0.328587,
		21.831923, 21.419075, 17.514496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.085463, 22.041370, 18.111269>,  <22.479010, 21.554621, 17.744507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.085463, 22.041370, 18.111269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.842045, 21.745804, 17.995560>,  <21.695993, 21.568464, 17.926134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.842045, 21.745804, 17.995560>,  <22.085463, 22.041370, 18.111269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.842045, 21.745804, 17.995560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478556, 0.050954, 0.876577,
		-0.632975, 0.671870, -0.384620,
		-0.608544, -0.738914, -0.289275,
		21.659481, 21.524130, 17.908777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.387182, 22.302052, 18.166491>,  <22.085463, 22.041370, 18.111269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.387182, 22.302052, 18.166491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.359406, 21.903080, 18.159410>,  <21.342739, 21.663696, 18.155163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.359406, 21.903080, 18.159410>,  <21.387182, 22.302052, 18.166491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.359406, 21.903080, 18.159410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701558, 0.036214, 0.711691,
		-0.709221, 0.061837, -0.702269,
		-0.069441, -0.997429, -0.017698,
		21.338573, 21.603851, 18.154100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.704405, 22.216908, 18.481930>,  <21.387182, 22.302052, 18.166491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.704405, 22.216908, 18.481930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.879402, 21.858814, 18.448088>,  <20.984400, 21.643959, 18.427782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.879402, 21.858814, 18.448088>,  <20.704405, 22.216908, 18.481930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.879402, 21.858814, 18.448088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648401, -0.379255, 0.660107,
		-0.623038, -0.233932, -0.746391,
		0.437493, -0.895233, -0.084608,
		21.010651, 21.590244, 18.422705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.312210, 21.830288, 18.028587>,  <20.704405, 22.216908, 18.481930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.312210, 21.830288, 18.028587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.501686, 21.596729, 18.292309>,  <20.615372, 21.456594, 18.450542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.501686, 21.596729, 18.292309>,  <20.312210, 21.830288, 18.028587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501686, 21.596729, 18.292309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821081, -0.022064, 0.570385,
		-0.318500, -0.811527, -0.489879,
		0.473692, -0.583898, 0.659302,
		20.643793, 21.421560, 18.490099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.798756, 21.274284, 18.254475>,  <20.312210, 21.830288, 18.028587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.798756, 21.274284, 18.254475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093388, 21.301765, 18.523615>,  <20.270166, 21.318254, 18.685099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093388, 21.301765, 18.523615>,  <19.798756, 21.274284, 18.254475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093388, 21.301765, 18.523615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666809, 0.240268, 0.705433,
		-0.113200, -0.968272, 0.222789,
		0.736581, 0.068703, 0.672851,
		20.314362, 21.322376, 18.725470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502920, 20.891092, 18.805990>,  <19.798756, 21.274284, 18.254475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.502920, 20.891092, 18.805990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.792519, 21.120079, 18.959930>,  <19.966278, 21.257471, 19.052294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.792519, 21.120079, 18.959930>,  <19.502920, 20.891092, 18.805990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.792519, 21.120079, 18.959930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563534, 0.169108, 0.808599,
		0.397816, -0.802299, 0.445039,
		0.723998, 0.572468, 0.384849,
		20.009718, 21.291819, 19.075384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.647900, 20.649841, 19.468477>,  <19.502920, 20.891092, 18.805990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.647900, 20.649841, 19.468477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.817909, 21.011345, 19.488773>,  <19.919916, 21.228247, 19.500950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.817909, 21.011345, 19.488773>,  <19.647900, 20.649841, 19.468477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.817909, 21.011345, 19.488773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506062, 0.190771, 0.841135,
		0.750503, -0.383180, 0.538441,
		0.425025, 0.903758, 0.050739,
		19.945417, 21.282473, 19.503996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086481, 20.783661, 20.067860>,  <19.647900, 20.649841, 19.468477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.086481, 20.783661, 20.067860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.933079, 21.133129, 19.948112>,  <19.841038, 21.342810, 19.876265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.933079, 21.133129, 19.948112>,  <20.086481, 20.783661, 20.067860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933079, 21.133129, 19.948112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393614, 0.138611, 0.908766,
		0.835458, 0.466354, 0.290731,
		-0.383508, 0.873671, -0.299367,
		19.818026, 21.395231, 19.858303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.127836, 21.191645, 20.705399>,  <20.086481, 20.783661, 20.067860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.127836, 21.191645, 20.705399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.909481, 21.418983, 20.459150>,  <19.778467, 21.555386, 20.311401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.909481, 21.418983, 20.459150>,  <20.127836, 21.191645, 20.705399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.909481, 21.418983, 20.459150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538883, 0.324462, 0.777386,
		0.641570, 0.756114, 0.129152,
		-0.545887, 0.568346, -0.615622,
		19.745714, 21.589487, 20.274464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997149, 21.764404, 21.047321>,  <20.127836, 21.191645, 20.705399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.997149, 21.764404, 21.047321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.706978, 21.820614, 20.777802>,  <19.532875, 21.854340, 20.616089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.706978, 21.820614, 20.777802>,  <19.997149, 21.764404, 21.047321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.706978, 21.820614, 20.777802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537787, 0.495254, 0.682282,
		0.429579, 0.857308, -0.283700,
		-0.725429, 0.140523, -0.673800,
		19.489349, 21.862770, 20.575661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.793495, 22.481924, 20.936729>,  <19.997149, 21.764404, 21.047321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.793495, 22.481924, 20.936729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.479889, 22.268208, 20.810329>,  <19.291725, 22.139978, 20.734489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.479889, 22.268208, 20.810329>,  <19.793495, 22.481924, 20.936729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.479889, 22.268208, 20.810329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586302, 0.470171, 0.659689,
		-0.203893, 0.702476, -0.681877,
		-0.784014, -0.534291, -0.315998,
		19.244684, 22.107920, 20.715530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.303511, 22.957811, 20.832924>,  <19.793495, 22.481924, 20.936729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.303511, 22.957811, 20.832924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.087303, 22.622780, 20.864679>,  <18.957579, 22.421761, 20.883734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.087303, 22.622780, 20.864679>,  <19.303511, 22.957811, 20.832924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.087303, 22.622780, 20.864679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734492, 0.515793, 0.440998,
		-0.410320, 0.180056, -0.893990,
		-0.540518, -0.837578, 0.079391,
		18.925148, 22.371506, 20.888496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633848, 23.080530, 20.566916>,  <19.303511, 22.957811, 20.832924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.633848, 23.080530, 20.566916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.549999, 22.750320, 20.776514>,  <18.499689, 22.552195, 20.902273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.549999, 22.750320, 20.776514>,  <18.633848, 23.080530, 20.566916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.549999, 22.750320, 20.776514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854974, 0.414774, 0.311419,
		-0.474423, -0.382721, -0.792747,
		-0.209624, -0.825522, 0.523995,
		18.487112, 22.502665, 20.933712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.923756, 22.901056, 20.466587>,  <18.633848, 23.080530, 20.566916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.923756, 22.901056, 20.466587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.019348, 22.701881, 20.800041>,  <18.076704, 22.582376, 21.000113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.019348, 22.701881, 20.800041>,  <17.923756, 22.901056, 20.466587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.019348, 22.701881, 20.800041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807469, 0.374933, 0.455433,
		-0.539334, -0.781974, -0.312468,
		0.238982, -0.497938, 0.833633,
		18.091043, 22.552500, 21.050131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235157, 22.738260, 20.684069>,  <17.923756, 22.901056, 20.466587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.235157, 22.738260, 20.684069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.494011, 22.680538, 20.983507>,  <17.649323, 22.645905, 21.163170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.494011, 22.680538, 20.983507>,  <17.235157, 22.738260, 20.684069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.494011, 22.680538, 20.983507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695799, 0.289511, 0.657303,
		-0.311579, -0.946234, 0.086945,
		0.647134, -0.144306, 0.748594,
		17.688150, 22.637247, 21.208086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.931841, 22.299271, 21.184912>,  <17.235157, 22.738260, 20.684069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.931841, 22.299271, 21.184912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207188, 22.497910, 21.396400>,  <17.372395, 22.617092, 21.523294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207188, 22.497910, 21.396400>,  <16.931841, 22.299271, 21.184912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.207188, 22.497910, 21.396400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680703, 0.190430, 0.707375,
		0.250599, -0.846831, 0.469123,
		0.688363, 0.496601, 0.528719,
		17.413696, 22.646889, 21.555017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870195, 22.044127, 21.836191>,  <16.931841, 22.299271, 21.184912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870195, 22.044127, 21.836191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054859, 22.393074, 21.900496>,  <17.165657, 22.602442, 21.939079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054859, 22.393074, 21.900496>,  <16.870195, 22.044127, 21.836191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054859, 22.393074, 21.900496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621536, 0.188812, 0.760291,
		0.632899, -0.450916, 0.629375,
		0.461661, 0.872367, 0.160762,
		17.193357, 22.654785, 21.948725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019510, 22.019907, 22.547346>,  <16.870195, 22.044127, 21.836191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.019510, 22.019907, 22.547346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.998486, 22.398472, 22.419884>,  <16.985870, 22.625610, 22.343407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.998486, 22.398472, 22.419884>,  <17.019510, 22.019907, 22.547346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.998486, 22.398472, 22.419884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551155, 0.238602, 0.799561,
		0.832746, 0.217657, 0.509077,
		-0.052563, 0.946411, -0.318657,
		16.982718, 22.682396, 22.324287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044685, 22.318439, 23.129602>,  <17.019510, 22.019907, 22.547346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044685, 22.318439, 23.129602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911758, 22.604076, 22.883142>,  <16.832003, 22.775459, 22.735268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911758, 22.604076, 22.883142>,  <17.044685, 22.318439, 23.129602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911758, 22.604076, 22.883142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262598, 0.557392, 0.787627,
		0.905874, 0.423540, 0.002289,
		-0.332316, 0.714092, -0.616148,
		16.812063, 22.818304, 22.698298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.253382, 23.009077, 23.285442>,  <17.044685, 22.318439, 23.129602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.253382, 23.009077, 23.285442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936584, 23.124878, 23.070431>,  <16.746506, 23.194359, 22.941423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936584, 23.124878, 23.070431>,  <17.253382, 23.009077, 23.285442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936584, 23.124878, 23.070431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206899, 0.701062, 0.682425,
		0.574405, 0.651689, -0.495338,
		-0.791992, 0.289504, -0.537527,
		16.698986, 23.211729, 22.909172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276117, 23.780323, 23.103008>,  <17.253382, 23.009077, 23.285442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276117, 23.780323, 23.103008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.900517, 23.645889, 23.132200>,  <16.675156, 23.565229, 23.149715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.900517, 23.645889, 23.132200>,  <17.276117, 23.780323, 23.103008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.900517, 23.645889, 23.132200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237179, 0.786491, 0.570244,
		-0.249045, 0.518151, -0.818227,
		-0.939001, -0.336083, 0.072978,
		16.618816, 23.545065, 23.154093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.851501, 24.214729, 22.725155>,  <17.276117, 23.780323, 23.103008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.851501, 24.214729, 22.725155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.683018, 24.026451, 23.035259>,  <16.581928, 23.913485, 23.221321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.683018, 24.026451, 23.035259>,  <16.851501, 24.214729, 22.725155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.683018, 24.026451, 23.035259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134888, 0.877792, 0.459659,
		-0.896877, 0.089039, -0.433225,
		-0.421208, -0.470695, 0.775261,
		16.556656, 23.885242, 23.267838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285761, 24.542532, 22.885777>,  <16.851501, 24.214729, 22.725155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.285761, 24.542532, 22.885777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388577, 24.352299, 23.222288>,  <16.450266, 24.238159, 23.424196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388577, 24.352299, 23.222288>,  <16.285761, 24.542532, 22.885777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.388577, 24.352299, 23.222288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055813, 0.861772, 0.504217,
		-0.964788, -0.176558, 0.194965,
		0.257039, -0.475581, 0.841281,
		16.465689, 24.209625, 23.474672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776835, 24.502356, 23.449053>,  <16.285761, 24.542532, 22.885777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.776835, 24.502356, 23.449053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.139999, 24.484093, 23.615721>,  <16.357899, 24.473135, 23.715721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.139999, 24.484093, 23.615721>,  <15.776835, 24.502356, 23.449053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.139999, 24.484093, 23.615721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141812, 0.901976, 0.407834,
		-0.394448, -0.429366, 0.812438,
		0.907910, -0.045657, 0.416672,
		16.412373, 24.470396, 23.740723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857220, 25.245337, 23.713146>,  <15.776835, 24.502356, 23.449053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.857220, 25.245337, 23.713146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.707288, 25.530731, 23.949938>,  <15.617329, 25.701969, 24.092012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.707288, 25.530731, 23.949938>,  <15.857220, 25.245337, 23.713146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.707288, 25.530731, 23.949938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114535, 0.598001, -0.793269,
		-0.919992, -0.365143, -0.142428,
		-0.374829, 0.713488, 0.591978,
		15.594839, 25.744778, 24.127531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.238592, 25.531332, 23.354765>,  <15.857220, 25.245337, 23.713146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.238592, 25.531332, 23.354765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347400, 25.806355, 23.624067>,  <15.412684, 25.971367, 23.785648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347400, 25.806355, 23.624067>,  <15.238592, 25.531332, 23.354765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347400, 25.806355, 23.624067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033284, 0.692497, -0.720652,
		-0.961716, 0.218440, 0.165488,
		0.272020, 0.687554, 0.673256,
		15.429006, 26.012621, 23.826044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.612154, 25.011786, 22.816011>,  <15.238592, 25.531332, 23.354765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.612154, 25.011786, 22.816011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.637275, 25.088135, 22.424170>,  <15.652348, 25.133944, 22.189064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.637275, 25.088135, 22.424170>,  <15.612154, 25.011786, 22.816011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637275, 25.088135, 22.424170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279414, -0.938927, -0.200859,
		-0.958115, 0.286330, -0.005634,
		0.062802, 0.190872, -0.979604,
		15.656116, 25.145397, 22.130289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.057827, 24.813337, 22.389967>,  <15.612154, 25.011786, 22.816011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.057827, 24.813337, 22.389967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.365573, 24.818619, 22.134497>,  <15.550220, 24.821789, 21.981215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.365573, 24.818619, 22.134497>,  <15.057827, 24.813337, 22.389967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.365573, 24.818619, 22.134497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334239, -0.843694, -0.420077,
		-0.544393, 0.536661, -0.644694,
		0.769364, 0.013205, -0.638674,
		15.596382, 24.822580, 21.942894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.697293, 24.631304, 21.808804>,  <15.057827, 24.813337, 22.389967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.697293, 24.631304, 21.808804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.075931, 24.531666, 21.726912>,  <15.303113, 24.471884, 21.677776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.075931, 24.531666, 21.726912>,  <14.697293, 24.631304, 21.808804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.075931, 24.531666, 21.726912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321846, -0.691716, -0.646486,
		0.019420, 0.677850, -0.734944,
		0.946593, -0.249093, -0.204731,
		15.359908, 24.456938, 21.665493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.630821, 24.555601, 21.089224>,  <14.697293, 24.631304, 21.808804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.630821, 24.555601, 21.089224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.972678, 24.374065, 21.190115>,  <15.177793, 24.265144, 21.250648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.972678, 24.374065, 21.190115>,  <14.630821, 24.555601, 21.089224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.972678, 24.374065, 21.190115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066496, -0.577452, -0.813712,
		0.514942, 0.678660, -0.523693,
		0.854642, -0.453838, 0.252226,
		15.229071, 24.237913, 21.265783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970014, 24.365320, 20.465002>,  <14.630821, 24.555601, 21.089224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.970014, 24.365320, 20.465002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139554, 24.138454, 20.747471>,  <15.241278, 24.002335, 20.916952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139554, 24.138454, 20.747471>,  <14.970014, 24.365320, 20.465002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.139554, 24.138454, 20.747471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121759, -0.736911, -0.664934,
		0.897511, 0.367815, -0.243283,
		0.423851, -0.567163, 0.706171,
		15.266709, 23.968306, 20.959322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636185, 24.103863, 20.122213>,  <14.970014, 24.365320, 20.465002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636185, 24.103863, 20.122213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527524, 23.845734, 20.407804>,  <15.462328, 23.690857, 20.579159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527524, 23.845734, 20.407804>,  <15.636185, 24.103863, 20.122213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527524, 23.845734, 20.407804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154426, -0.761491, -0.629511,
		0.949925, -0.060750, 0.306514,
		-0.271651, -0.645322, 0.713978,
		15.446029, 23.652138, 20.621998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.049826, 23.433792, 20.093187>,  <15.636185, 24.103863, 20.122213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.049826, 23.433792, 20.093187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.738624, 23.303623, 20.308151>,  <15.551903, 23.225521, 20.437130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.738624, 23.303623, 20.308151>,  <16.049826, 23.433792, 20.093187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.738624, 23.303623, 20.308151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106083, -0.775068, -0.622909,
		0.619237, -0.541636, 0.568486,
		-0.778005, -0.325422, 0.537409,
		15.505222, 23.205997, 20.469374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.168619, 22.801691, 20.267719>,  <16.049826, 23.433792, 20.093187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.168619, 22.801691, 20.267719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.771329, 22.834805, 20.300333>,  <15.532954, 22.854673, 20.319902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.771329, 22.834805, 20.300333>,  <16.168619, 22.801691, 20.267719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.771329, 22.834805, 20.300333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115984, -0.748581, -0.652820,
		0.006994, -0.657855, 0.753112,
		-0.993227, 0.082783, 0.081536,
		15.473361, 22.859640, 20.324793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.882451, 22.113926, 20.235191>,  <16.168619, 22.801691, 20.267719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.882451, 22.113926, 20.235191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573085, 22.346390, 20.133934>,  <15.387465, 22.485868, 20.073179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573085, 22.346390, 20.133934>,  <15.882451, 22.113926, 20.235191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573085, 22.346390, 20.133934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286064, -0.676356, -0.678756,
		-0.565681, -0.452546, 0.689353,
		-0.773416, 0.581158, -0.253144,
		15.341061, 22.520737, 20.057991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254637, 21.650545, 20.341705>,  <15.882451, 22.113926, 20.235191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254637, 21.650545, 20.341705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.204177, 21.930714, 20.060709>,  <15.173902, 22.098816, 19.892111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.204177, 21.930714, 20.060709>,  <15.254637, 21.650545, 20.341705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.204177, 21.930714, 20.060709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228762, -0.709602, -0.666434,
		-0.965274, 0.076634, 0.249745,
		-0.126148, 0.700424, -0.702491,
		15.166332, 22.140841, 19.849962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023863, 21.234758, 19.808542>,  <15.254637, 21.650545, 20.341705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.023863, 21.234758, 19.808542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.101880, 21.567230, 19.600275>,  <15.148690, 21.766714, 19.475315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.101880, 21.567230, 19.600275>,  <15.023863, 21.234758, 19.808542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.101880, 21.567230, 19.600275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062680, -0.540342, -0.839108,
		-0.978790, 0.131026, -0.157488,
		0.195042, 0.831182, -0.520669,
		15.160393, 21.816586, 19.444075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495269, 21.338381, 19.166025>,  <15.023863, 21.234758, 19.808542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495269, 21.338381, 19.166025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.812142, 21.568756, 19.085287>,  <15.002267, 21.706982, 19.036844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.812142, 21.568756, 19.085287>,  <14.495269, 21.338381, 19.166025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.812142, 21.568756, 19.085287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012941, -0.346519, -0.937954,
		-0.610145, 0.740420, -0.281960,
		0.792184, 0.575936, -0.201845,
		15.049798, 21.741537, 19.024734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.304427, 21.758665, 18.604136>,  <14.495269, 21.338381, 19.166025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.304427, 21.758665, 18.604136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.703267, 21.732414, 18.619543>,  <14.942572, 21.716663, 18.628788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.703267, 21.732414, 18.619543>,  <14.304427, 21.758665, 18.604136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.703267, 21.732414, 18.619543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025722, -0.185719, -0.982266,
		0.071619, 0.980409, -0.183492,
		0.997100, -0.065629, 0.038519,
		15.002398, 21.712725, 18.631100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472193, 22.185377, 18.041195>,  <14.304427, 21.758665, 18.604136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.472193, 22.185377, 18.041195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792876, 21.959743, 18.120264>,  <14.985287, 21.824364, 18.167706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792876, 21.959743, 18.120264>,  <14.472193, 22.185377, 18.041195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792876, 21.959743, 18.120264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232672, -0.010113, -0.972503,
		0.550570, 0.825657, 0.123138,
		0.801708, -0.564082, 0.197675,
		15.033389, 21.790520, 18.179567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988708, 22.509214, 17.733406>,  <14.472193, 22.185377, 18.041195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.988708, 22.509214, 17.733406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.148379, 22.145653, 17.781662>,  <15.244182, 21.927517, 17.810616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.148379, 22.145653, 17.781662>,  <14.988708, 22.509214, 17.733406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.148379, 22.145653, 17.781662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465186, 0.087382, -0.880889,
		0.790100, 0.407751, 0.457690,
		0.399178, -0.908902, 0.120640,
		15.268132, 21.872982, 17.817854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714808, 22.549522, 17.559727>,  <14.988708, 22.509214, 17.733406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.714808, 22.549522, 17.559727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.645186, 22.157425, 17.522152>,  <15.603414, 21.922167, 17.499607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.645186, 22.157425, 17.522152>,  <15.714808, 22.549522, 17.559727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645186, 22.157425, 17.522152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642313, -0.040705, -0.765361,
		0.746418, -0.193549, 0.636709,
		-0.174052, -0.980246, -0.093936,
		15.592971, 21.863352, 17.493971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317661, 22.328588, 17.318596>,  <15.714808, 22.549522, 17.559727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.317661, 22.328588, 17.318596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.074039, 22.022163, 17.236425>,  <15.927867, 21.838308, 17.187122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.074039, 22.022163, 17.236425>,  <16.317661, 22.328588, 17.318596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.074039, 22.022163, 17.236425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481388, -0.151204, -0.863367,
		0.630333, -0.624726, 0.460865,
		-0.609053, -0.766064, -0.205426,
		15.891323, 21.792343, 17.174797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736076, 21.812250, 16.998613>,  <16.317661, 22.328588, 17.318596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736076, 21.812250, 16.998613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.362686, 21.707481, 16.900618>,  <16.138651, 21.644621, 16.841820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.362686, 21.707481, 16.900618>,  <16.736076, 21.812250, 16.998613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362686, 21.707481, 16.900618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319649, -0.297869, -0.899499,
		0.162623, -0.917971, 0.361777,
		-0.933476, -0.261921, -0.244988,
		16.082644, 21.628904, 16.827122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687271, 21.133924, 16.796392>,  <16.736076, 21.812250, 16.998613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687271, 21.133924, 16.796392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.371841, 21.300724, 16.615610>,  <16.182585, 21.400805, 16.507141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.371841, 21.300724, 16.615610>,  <16.687271, 21.133924, 16.796392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371841, 21.300724, 16.615610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484149, -0.032141, -0.874395,
		-0.379148, -0.908339, -0.176544,
		-0.788573, 0.416998, -0.451957,
		16.135269, 21.425823, 16.480022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510469, 20.713636, 16.195889>,  <16.687271, 21.133924, 16.796392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510469, 20.713636, 16.195889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.377861, 21.086201, 16.135792>,  <16.298296, 21.309738, 16.099733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.377861, 21.086201, 16.135792>,  <16.510469, 20.713636, 16.195889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.377861, 21.086201, 16.135792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456570, 0.019030, -0.889484,
		-0.825614, -0.363477, -0.431562,
		-0.331519, 0.931409, -0.150241,
		16.278404, 21.365623, 16.090719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.258585, 20.787724, 15.385442>,  <16.510469, 20.713636, 16.195889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.258585, 20.787724, 15.385442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.289219, 21.168480, 15.504129>,  <16.307600, 21.396933, 15.575342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.289219, 21.168480, 15.504129>,  <16.258585, 20.787724, 15.385442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.289219, 21.168480, 15.504129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701106, 0.160183, -0.694832,
		-0.708933, 0.261245, -0.655107,
		0.076584, 0.951889, 0.296720,
		16.312195, 21.454046, 15.593145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294203, 21.150341, 14.799440>,  <16.258585, 20.787724, 15.385442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294203, 21.150341, 14.799440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.444614, 21.397438, 15.075699>,  <16.534863, 21.545696, 15.241454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.444614, 21.397438, 15.075699>,  <16.294203, 21.150341, 14.799440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444614, 21.397438, 15.075699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760145, 0.220580, -0.611166,
		-0.529888, 0.754808, -0.386631,
		0.376030, 0.617745, 0.690646,
		16.557423, 21.582762, 15.282893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357481, 21.787653, 14.453820>,  <16.294203, 21.150341, 14.799440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.357481, 21.787653, 14.453820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.623444, 21.809315, 14.751804>,  <16.783022, 21.822311, 14.930594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.623444, 21.809315, 14.751804>,  <16.357481, 21.787653, 14.453820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.623444, 21.809315, 14.751804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712550, 0.253099, -0.654380,
		-0.223987, 0.965923, 0.129699,
		0.664907, 0.054156, 0.744960,
		16.822916, 21.825562, 14.975292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727989, 22.430365, 14.387461>,  <16.357481, 21.787653, 14.453820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727989, 22.430365, 14.387461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954796, 22.208256, 14.630825>,  <17.090879, 22.074991, 14.776843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954796, 22.208256, 14.630825>,  <16.727989, 22.430365, 14.387461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954796, 22.208256, 14.630825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790332, 0.158630, -0.591787,
		0.232091, 0.816400, 0.528795,
		0.567018, -0.555272, 0.608410,
		17.124901, 22.041674, 14.813348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.316145, 22.915155, 14.514668>,  <16.727989, 22.430365, 14.387461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.316145, 22.915155, 14.514668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431316, 22.538776, 14.585905>,  <17.500420, 22.312950, 14.628648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431316, 22.538776, 14.585905>,  <17.316145, 22.915155, 14.514668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.431316, 22.538776, 14.585905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848314, 0.164314, -0.503353,
		0.444364, 0.296011, 0.845528,
		0.287930, -0.940946, 0.178095,
		17.517694, 22.256493, 14.639334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.983017, 22.975212, 14.721845>,  <17.316145, 22.915155, 14.514668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.983017, 22.975212, 14.721845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.932987, 22.592113, 14.618244>,  <17.902969, 22.362255, 14.556084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.932987, 22.592113, 14.618244>,  <17.983017, 22.975212, 14.721845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.932987, 22.592113, 14.618244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834690, 0.039540, -0.549299,
		0.536329, -0.284890, 0.794474,
		-0.125076, -0.957745, -0.259001,
		17.895464, 22.304790, 14.540544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.574217, 22.651794, 14.873002>,  <17.983017, 22.975212, 14.721845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.574217, 22.651794, 14.873002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.394749, 22.406151, 14.613291>,  <18.287067, 22.258764, 14.457464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.394749, 22.406151, 14.613291>,  <18.574217, 22.651794, 14.873002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.394749, 22.406151, 14.613291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811388, 0.024632, -0.583989,
		0.374627, -0.788835, 0.487231,
		-0.448670, -0.614111, -0.649279,
		18.260147, 22.221918, 14.418507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038822, 22.135004, 14.680229>,  <18.574217, 22.651794, 14.873002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038822, 22.135004, 14.680229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.765457, 22.139187, 14.388247>,  <18.601439, 22.141697, 14.213058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.765457, 22.139187, 14.388247>,  <19.038822, 22.135004, 14.680229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.765457, 22.139187, 14.388247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708061, 0.252950, -0.659292,
		0.177746, -0.967423, -0.180275,
		-0.683414, 0.010459, -0.729955,
		18.560432, 22.142324, 14.169260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.452864, 21.810387, 14.227818>,  <19.038822, 22.135004, 14.680229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.452864, 21.810387, 14.227818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141842, 21.941753, 14.013321>,  <18.955229, 22.020573, 13.884624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141842, 21.941753, 14.013321>,  <19.452864, 21.810387, 14.227818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.141842, 21.941753, 14.013321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579629, 0.043692, -0.813708,
		-0.243805, -0.943522, -0.224332,
		-0.777553, 0.328416, -0.536241,
		18.908575, 22.040277, 13.852448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.634409, 21.510958, 13.617970>,  <19.452864, 21.810387, 14.227818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.634409, 21.510958, 13.617970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.375702, 21.810390, 13.559566>,  <19.220478, 21.990049, 13.524525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.375702, 21.810390, 13.559566>,  <19.634409, 21.510958, 13.617970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.375702, 21.810390, 13.559566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421029, 0.190809, -0.886750,
		-0.635945, -0.634995, -0.438584,
		-0.646768, 0.748581, -0.146007,
		19.181671, 22.034966, 13.515764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.320385, 21.330719, 12.959334>,  <19.634409, 21.510958, 13.617970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.320385, 21.330719, 12.959334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284420, 21.724678, 13.018515>,  <19.262842, 21.961054, 13.054023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284420, 21.724678, 13.018515>,  <19.320385, 21.330719, 12.959334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.284420, 21.724678, 13.018515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540352, 0.173026, -0.823457,
		-0.836622, 0.005907, -0.547749,
		-0.089911, 0.984900, 0.147950,
		19.257446, 22.020147, 13.062900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194386, 21.513426, 12.332337>,  <19.320385, 21.330719, 12.959334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.194386, 21.513426, 12.332337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335979, 21.843376, 12.508642>,  <19.420937, 22.041348, 12.614426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335979, 21.843376, 12.508642>,  <19.194386, 21.513426, 12.332337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.335979, 21.843376, 12.508642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486834, 0.239878, -0.839912,
		-0.798554, 0.511894, -0.316665,
		0.353985, 0.824877, 0.440763,
		19.442175, 22.090839, 12.640871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.073711, 22.149439, 11.841044>,  <19.194386, 21.513426, 12.332337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.073711, 22.149439, 11.841044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363239, 22.215763, 12.108953>,  <19.536955, 22.255558, 12.269699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363239, 22.215763, 12.108953>,  <19.073711, 22.149439, 11.841044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.363239, 22.215763, 12.108953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599810, 0.328592, -0.729558,
		-0.341048, 0.929804, 0.138388,
		0.723819, 0.165808, 0.669772,
		19.580385, 22.265505, 12.309885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.202518, 22.903263, 11.787679>,  <19.073711, 22.149439, 11.841044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.202518, 22.903263, 11.787679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.513775, 22.718067, 11.957448>,  <19.700529, 22.606949, 12.059310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.513775, 22.718067, 11.957448>,  <19.202518, 22.903263, 11.787679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.513775, 22.718067, 11.957448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606174, 0.376653, -0.700489,
		0.164459, 0.802355, 0.573742,
		0.778143, -0.462989, 0.424423,
		19.747217, 22.579170, 12.084775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.686483, 23.415777, 11.752749>,  <19.202518, 22.903263, 11.787679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.686483, 23.415777, 11.752749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.891987, 23.075455, 11.796904>,  <20.015289, 22.871262, 11.823396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.891987, 23.075455, 11.796904>,  <19.686483, 23.415777, 11.752749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.891987, 23.075455, 11.796904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536273, 0.218036, -0.815397,
		0.669676, 0.478112, 0.568281,
		0.513757, -0.850805, 0.110385,
		20.046114, 22.820213, 11.830019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.423826, 23.561388, 11.662207>,  <19.686483, 23.415777, 11.752749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.423826, 23.561388, 11.662207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.391766, 23.165794, 11.612427>,  <20.372530, 22.928438, 11.582559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.391766, 23.165794, 11.612427>,  <20.423826, 23.561388, 11.662207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.391766, 23.165794, 11.612427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455627, 0.074695, -0.887031,
		0.886555, -0.127800, 0.444620,
		-0.080152, -0.988983, -0.124450,
		20.367720, 22.869099, 11.575091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.028242, 23.397156, 11.225000>,  <20.423826, 23.561388, 11.662207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.028242, 23.397156, 11.225000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787434, 23.078495, 11.203402>,  <20.642948, 22.887299, 11.190442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787434, 23.078495, 11.203402>,  <21.028242, 23.397156, 11.225000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787434, 23.078495, 11.203402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330666, -0.187182, -0.924999,
		0.726797, -0.574722, 0.376113,
		-0.602019, -0.796654, -0.053998,
		20.606829, 22.839499, 11.187202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.475731, 22.768681, 11.047334>,  <21.028242, 23.397156, 11.225000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.475731, 22.768681, 11.047334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.096420, 22.689720, 10.947895>,  <20.868834, 22.642344, 10.888231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.096420, 22.689720, 10.947895>,  <21.475731, 22.768681, 11.047334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.096420, 22.689720, 10.947895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300113, -0.302320, -0.904729,
		0.103438, -0.932543, 0.345926,
		-0.948279, -0.197400, -0.248597,
		20.811937, 22.630501, 10.873316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.523247, 22.125633, 10.691832>,  <21.475731, 22.768681, 11.047334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.523247, 22.125633, 10.691832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.156197, 22.249191, 10.591796>,  <20.935966, 22.323326, 10.531775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.156197, 22.249191, 10.591796>,  <21.523247, 22.125633, 10.691832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.156197, 22.249191, 10.591796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129389, -0.362787, -0.922845,
		-0.375787, -0.879188, 0.292937,
		-0.917629, 0.308891, -0.250088,
		20.880909, 22.341860, 10.516769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.170530, 21.659584, 10.281079>,  <21.523247, 22.125633, 10.691832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.170530, 21.659584, 10.281079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963985, 21.987709, 10.182729>,  <20.840057, 22.184584, 10.123718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963985, 21.987709, 10.182729>,  <21.170530, 21.659584, 10.281079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.963985, 21.987709, 10.182729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033154, -0.267750, -0.962918,
		-0.855727, -0.505367, 0.111060,
		-0.516363, 0.820313, -0.245876,
		20.809076, 22.233803, 10.108966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.571295, 21.415600, 9.902342>,  <21.170530, 21.659584, 10.281079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.571295, 21.415600, 9.902342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.618591, 21.801903, 9.809967>,  <20.646969, 22.033684, 9.754542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.618591, 21.801903, 9.809967>,  <20.571295, 21.415600, 9.902342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.618591, 21.801903, 9.809967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063102, -0.224791, -0.972362,
		-0.990978, 0.129546, 0.034362,
		0.118241, 0.965757, -0.230937,
		20.654064, 22.091629, 9.740685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150421, 21.487007, 9.327929>,  <20.571295, 21.415600, 9.902342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150421, 21.487007, 9.327929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.392361, 21.804218, 9.298918>,  <20.537525, 21.994545, 9.281511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.392361, 21.804218, 9.298918>,  <20.150421, 21.487007, 9.327929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.392361, 21.804218, 9.298918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070294, -0.143890, -0.987094,
		-0.793231, 0.591945, -0.142777,
		0.604850, 0.793030, -0.072527,
		20.573816, 22.042128, 9.277160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.368484, 21.359818, 8.649628>,  <20.150421, 21.487007, 9.327929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.368484, 21.359818, 8.649628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.416763, 20.965286, 8.604742>,  <20.445730, 20.728567, 8.577810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.416763, 20.965286, 8.604742>,  <20.368484, 21.359818, 8.649628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.416763, 20.965286, 8.604742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938073, -0.150302, 0.312136,
		-0.324734, 0.067592, -0.943387,
		0.120695, -0.986327, -0.112215,
		20.452972, 20.669388, 8.571077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.751343, 21.205742, 8.338547>,  <20.368484, 21.359818, 8.649628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.751343, 21.205742, 8.338547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.905277, 20.855110, 8.454137>,  <19.997639, 20.644732, 8.523491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.905277, 20.855110, 8.454137>,  <19.751343, 21.205742, 8.338547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.905277, 20.855110, 8.454137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922148, -0.351827, 0.160811,
		-0.039294, -0.328365, -0.943733,
		0.384835, -0.876581, 0.288976,
		20.020727, 20.592136, 8.540830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.222523, 20.740746, 8.082265>,  <19.751343, 21.205742, 8.338547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.222523, 20.740746, 8.082265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.427864, 20.524456, 8.348825>,  <19.551069, 20.394682, 8.508760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.427864, 20.524456, 8.348825>,  <19.222523, 20.740746, 8.082265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.427864, 20.524456, 8.348825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852826, -0.408023, 0.325892,
		0.095689, -0.735620, -0.670601,
		0.513354, -0.540722, 0.666399,
		19.581871, 20.362240, 8.548744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.778597, 20.138348, 8.059474>,  <19.222523, 20.740746, 8.082265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.778597, 20.138348, 8.059474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980892, 20.104420, 8.402877>,  <19.102270, 20.084063, 8.608919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980892, 20.104420, 8.402877>,  <18.778597, 20.138348, 8.059474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980892, 20.104420, 8.402877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747663, -0.539563, 0.387133,
		0.430383, -0.837662, -0.336293,
		0.505738, -0.084818, 0.858508,
		19.132614, 20.078974, 8.660429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.598524, 19.542715, 8.241419>,  <18.778597, 20.138348, 8.059474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.598524, 19.542715, 8.241419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.725109, 19.750050, 8.559205>,  <18.801060, 19.874451, 8.749877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.725109, 19.750050, 8.559205>,  <18.598524, 19.542715, 8.241419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.725109, 19.750050, 8.559205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677159, -0.463070, 0.571859,
		0.664310, -0.718952, 0.204452,
		0.316464, 0.518338, 0.794466,
		18.820047, 19.905550, 8.797544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.457346, 19.034071, 8.755862>,  <18.598524, 19.542715, 8.241419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.457346, 19.034071, 8.755862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487022, 19.380356, 8.953869>,  <18.504827, 19.588127, 9.072673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487022, 19.380356, 8.953869>,  <18.457346, 19.034071, 8.755862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487022, 19.380356, 8.953869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659020, -0.329987, 0.675871,
		0.748458, -0.376370, 0.546038,
		0.074192, 0.865710, 0.495017,
		18.509279, 19.640068, 9.102374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442974, 18.845247, 9.463830>,  <18.457346, 19.034071, 8.755862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442974, 18.845247, 9.463830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.366402, 19.235905, 9.502856>,  <18.320457, 19.470299, 9.526272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.366402, 19.235905, 9.502856>,  <18.442974, 18.845247, 9.463830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.366402, 19.235905, 9.502856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623971, -0.197828, 0.755992,
		0.757637, 0.083843, 0.647269,
		-0.191433, 0.976645, 0.097567,
		18.308971, 19.528898, 9.532126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.403637, 19.018366, 10.151896>,  <18.442974, 18.845247, 9.463830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.403637, 19.018366, 10.151896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.196136, 19.333733, 10.019656>,  <18.071636, 19.522953, 9.940311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.196136, 19.333733, 10.019656>,  <18.403637, 19.018366, 10.151896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.196136, 19.333733, 10.019656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522082, 0.014077, 0.852779,
		0.676998, 0.614982, 0.404315,
		-0.518752, 0.788415, -0.330601,
		18.040510, 19.570257, 9.920476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.336487, 19.580971, 10.757569>,  <18.403637, 19.018366, 10.151896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.336487, 19.580971, 10.757569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.050488, 19.665401, 10.490969>,  <17.878889, 19.716061, 10.331008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.050488, 19.665401, 10.490969>,  <18.336487, 19.580971, 10.757569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.050488, 19.665401, 10.490969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662922, 0.098121, 0.742231,
		0.222066, 0.972532, 0.069771,
		-0.714997, 0.211077, -0.666502,
		17.835989, 19.728725, 10.291018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020428, 20.206415, 10.945046>,  <18.336487, 19.580971, 10.757569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020428, 20.206415, 10.945046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.766701, 19.971199, 10.744308>,  <17.614464, 19.830069, 10.623865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.766701, 19.971199, 10.744308>,  <18.020428, 20.206415, 10.945046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766701, 19.971199, 10.744308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573416, -0.077499, 0.815590,
		-0.518492, 0.805111, -0.288032,
		-0.634318, -0.588040, -0.501846,
		17.576405, 19.794786, 10.593755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325047, 20.535822, 11.140729>,  <18.020428, 20.206415, 10.945046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325047, 20.535822, 11.140729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.254597, 20.172577, 10.988773>,  <17.212328, 19.954630, 10.897600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.254597, 20.172577, 10.988773>,  <17.325047, 20.535822, 11.140729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254597, 20.172577, 10.988773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689895, -0.161407, 0.705686,
		-0.702158, 0.386371, -0.598073,
		-0.176123, -0.908111, -0.379889,
		17.201759, 19.900145, 10.874806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564474, 20.529083, 10.989033>,  <17.325047, 20.535822, 11.140729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564474, 20.529083, 10.989033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702457, 20.155304, 11.024374>,  <16.785248, 19.931036, 11.045579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702457, 20.155304, 11.024374>,  <16.564474, 20.529083, 10.989033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702457, 20.155304, 11.024374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736117, -0.210931, 0.643148,
		-0.582354, -0.286897, -0.760628,
		0.344957, -0.934451, 0.088353,
		16.805944, 19.874969, 11.050880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.981037, 20.146305, 11.012056>,  <16.564474, 20.529083, 10.989033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.981037, 20.146305, 11.012056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233318, 19.880497, 11.172369>,  <16.384687, 19.721012, 11.268557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233318, 19.880497, 11.172369>,  <15.981037, 20.146305, 11.012056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.233318, 19.880497, 11.172369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645143, -0.161970, 0.746697,
		-0.431282, -0.729505, -0.530867,
		0.630703, -0.664522, 0.400781,
		16.422529, 19.681141, 11.292603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616694, 19.555952, 11.264905>,  <15.981037, 20.146305, 11.012056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616694, 19.555952, 11.264905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.959186, 19.538292, 11.470789>,  <16.164680, 19.527697, 11.594319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.959186, 19.538292, 11.470789>,  <15.616694, 19.555952, 11.264905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.959186, 19.538292, 11.470789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516349, -0.042111, 0.855342,
		-0.016087, -0.998137, -0.058853,
		0.856227, -0.044149, 0.514709,
		16.216053, 19.525047, 11.625202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.501528, 19.091600, 11.738173>,  <15.616694, 19.555952, 11.264905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.501528, 19.091600, 11.738173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.820773, 19.270042, 11.900164>,  <16.012320, 19.377108, 11.997358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.820773, 19.270042, 11.900164>,  <15.501528, 19.091600, 11.738173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.820773, 19.270042, 11.900164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430497, -0.048027, 0.901313,
		0.421532, -0.893690, 0.153717,
		0.798112, 0.446107, 0.404976,
		16.060207, 19.403873, 12.021657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574217, 18.786938, 12.345711>,  <15.501528, 19.091600, 11.738173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.574217, 18.786938, 12.345711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.787251, 19.120777, 12.401993>,  <15.915072, 19.321081, 12.435761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.787251, 19.120777, 12.401993>,  <15.574217, 18.786938, 12.345711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.787251, 19.120777, 12.401993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298730, 0.029818, 0.953872,
		0.791903, -0.550053, 0.265200,
		0.532588, 0.834598, 0.140704,
		15.947028, 19.371157, 12.444204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.881075, 18.709436, 12.942406>,  <15.574217, 18.786938, 12.345711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.881075, 18.709436, 12.942406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.882394, 19.106030, 12.890326>,  <15.883185, 19.343985, 12.859077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.882394, 19.106030, 12.890326>,  <15.881075, 18.709436, 12.942406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.882394, 19.106030, 12.890326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245538, 0.127018, 0.961029,
		0.969381, 0.028800, 0.243865,
		0.003297, 0.991482, -0.130200,
		15.883383, 19.403475, 12.851266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.295290, 18.996080, 13.398576>,  <15.881075, 18.709436, 12.942406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.295290, 18.996080, 13.398576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046791, 19.302322, 13.331762>,  <15.897692, 19.486067, 13.291675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046791, 19.302322, 13.331762>,  <16.295290, 18.996080, 13.398576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046791, 19.302322, 13.331762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158393, 0.086069, 0.983618,
		0.767439, 0.637527, 0.067797,
		-0.621248, 0.765605, -0.167033,
		15.860416, 19.532003, 13.281652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433113, 19.472881, 13.994823>,  <16.295290, 18.996080, 13.398576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433113, 19.472881, 13.994823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.085777, 19.589951, 13.834658>,  <15.877377, 19.660192, 13.738558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.085777, 19.589951, 13.834658>,  <16.433113, 19.472881, 13.994823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.085777, 19.589951, 13.834658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367591, 0.162226, 0.915729,
		0.332966, 0.942351, -0.033284,
		-0.868338, 0.292672, -0.400416,
		15.825275, 19.677752, 13.714533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244930, 20.092926, 14.261244>,  <16.433113, 19.472881, 13.994823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.244930, 20.092926, 14.261244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.903962, 19.935356, 14.123720>,  <15.699382, 19.840815, 14.041206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.903962, 19.935356, 14.123720>,  <16.244930, 20.092926, 14.261244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903962, 19.935356, 14.123720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402623, 0.075018, 0.912287,
		-0.333583, 0.916075, -0.222550,
		-0.852418, -0.393927, -0.343808,
		15.648236, 19.817179, 14.020577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686810, 20.301498, 14.783943>,  <16.244930, 20.092926, 14.261244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.686810, 20.301498, 14.783943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.461665, 20.050903, 14.568279>,  <15.326578, 19.900545, 14.438881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.461665, 20.050903, 14.568279>,  <15.686810, 20.301498, 14.783943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.461665, 20.050903, 14.568279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603145, -0.134697, 0.786176,
		-0.565155, 0.767703, -0.302048,
		-0.562864, -0.626490, -0.539161,
		15.292806, 19.862957, 14.406531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.924811, 20.468422, 14.715539>,  <15.686810, 20.301498, 14.783943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.924811, 20.468422, 14.715539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985028, 20.073063, 14.707464>,  <15.021158, 19.835848, 14.702620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985028, 20.073063, 14.707464>,  <14.924811, 20.468422, 14.715539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985028, 20.073063, 14.707464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501545, -0.093955, 0.860014,
		-0.851932, -0.119344, -0.509870,
		0.150543, -0.988397, -0.020187,
		15.030191, 19.776545, 14.701408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.313179, 20.231668, 15.022984>,  <14.924811, 20.468422, 14.715539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.313179, 20.231668, 15.022984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.576713, 19.931801, 15.048067>,  <14.734833, 19.751881, 15.063117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.576713, 19.931801, 15.048067>,  <14.313179, 20.231668, 15.022984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.576713, 19.931801, 15.048067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254138, -0.143336, 0.956488,
		-0.708063, -0.646102, -0.284954,
		0.658833, -0.749671, 0.062709,
		14.774363, 19.706900, 15.066879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.915085, 19.703629, 15.392231>,  <14.313179, 20.231668, 15.022984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.915085, 19.703629, 15.392231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296666, 19.602802, 15.457270>,  <14.525615, 19.542307, 15.496293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296666, 19.602802, 15.457270>,  <13.915085, 19.703629, 15.392231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296666, 19.602802, 15.457270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196373, -0.115054, 0.973756,
		-0.226744, -0.960846, -0.159255,
		0.953952, -0.252067, 0.162596,
		14.582851, 19.527182, 15.506048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893846, 18.941648, 15.771976>,  <13.915085, 19.703629, 15.392231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893846, 18.941648, 15.771976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253455, 19.104355, 15.836843>,  <14.469221, 19.201979, 15.875764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253455, 19.104355, 15.836843>,  <13.893846, 18.941648, 15.771976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253455, 19.104355, 15.836843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010365, -0.350460, 0.936520,
		0.437777, -0.843635, -0.310856,
		0.899024, 0.406765, 0.162168,
		14.523163, 19.226385, 15.885494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.250322, 18.458929, 16.192282>,  <13.893846, 18.941648, 15.771976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.250322, 18.458929, 16.192282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.476933, 18.780659, 16.263960>,  <14.612901, 18.973696, 16.306967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.476933, 18.780659, 16.263960>,  <14.250322, 18.458929, 16.192282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.476933, 18.780659, 16.263960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007721, -0.212269, 0.977181,
		0.824006, -0.554984, -0.114047,
		0.566529, 0.804322, 0.179196,
		14.646893, 19.021955, 16.317719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878906, 18.236921, 16.441271>,  <14.250322, 18.458929, 16.192282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.878906, 18.236921, 16.441271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.845265, 18.617451, 16.559870>,  <14.825081, 18.845768, 16.631029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.845265, 18.617451, 16.559870>,  <14.878906, 18.236921, 16.441271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.845265, 18.617451, 16.559870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247744, -0.268244, 0.930950,
		0.965168, 0.151749, -0.213125,
		-0.084101, 0.951324, 0.296495,
		14.820035, 18.902847, 16.648819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.373751, 18.308109, 16.993717>,  <14.878906, 18.236921, 16.441271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.373751, 18.308109, 16.993717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.141255, 18.631508, 17.030579>,  <15.001758, 18.825548, 17.052696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.141255, 18.631508, 17.030579>,  <15.373751, 18.308109, 16.993717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.141255, 18.631508, 17.030579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033456, -0.136897, 0.990020,
		0.813045, 0.572356, 0.106619,
		-0.581240, 0.808497, 0.092155,
		14.966884, 18.874058, 17.058226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.688076, 18.761051, 17.467339>,  <15.373751, 18.308109, 16.993717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.688076, 18.761051, 17.467339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.303670, 18.871204, 17.477253>,  <15.073027, 18.937296, 17.483202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.303670, 18.871204, 17.477253>,  <15.688076, 18.761051, 17.467339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.303670, 18.871204, 17.477253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048384, 0.079236, 0.995681,
		0.272228, 0.958064, -0.089471,
		-0.961015, 0.275381, 0.024784,
		15.015366, 18.953819, 17.484688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.672793, 19.302067, 17.950405>,  <15.688076, 18.761051, 17.467339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.672793, 19.302067, 17.950405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.287425, 19.195389, 17.939877>,  <15.056204, 19.131382, 17.933559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.287425, 19.195389, 17.939877>,  <15.672793, 19.302067, 17.950405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.287425, 19.195389, 17.939877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035274, 0.028828, 0.998962,
		-0.265660, 0.963350, -0.037181,
		-0.963421, -0.266695, -0.026323,
		14.998399, 19.115379, 17.931980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.323484, 19.752026, 18.318047>,  <15.672793, 19.302067, 17.950405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.323484, 19.752026, 18.318047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091905, 19.426563, 18.339144>,  <14.952957, 19.231285, 18.351801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091905, 19.426563, 18.339144>,  <15.323484, 19.752026, 18.318047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091905, 19.426563, 18.339144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120292, 0.149211, 0.981461,
		-0.806441, 0.561872, -0.184262,
		-0.578950, -0.813656, 0.052741,
		14.918220, 19.182467, 18.354967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.917713, 19.961399, 18.775309>,  <15.323484, 19.752026, 18.318047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.917713, 19.961399, 18.775309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.820706, 19.573662, 18.759516>,  <14.762503, 19.341019, 18.750040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.820706, 19.573662, 18.759516>,  <14.917713, 19.961399, 18.775309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.820706, 19.573662, 18.759516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306587, 0.037966, 0.951085,
		-0.920429, 0.242759, -0.306395,
		-0.242517, -0.969343, -0.039482,
		14.747952, 19.282858, 18.747671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.237896, 19.962349, 18.908079>,  <14.917713, 19.961399, 18.775309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.237896, 19.962349, 18.908079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.387650, 19.601341, 18.993206>,  <14.477503, 19.384737, 19.044281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.387650, 19.601341, 18.993206>,  <14.237896, 19.962349, 18.908079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.387650, 19.601341, 18.993206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430710, 0.033989, 0.901850,
		-0.821173, -0.429302, -0.376000,
		0.374386, -0.902522, 0.212816,
		14.499967, 19.330585, 19.057051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.690470, 19.691284, 19.364361>,  <14.237896, 19.962349, 18.908079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.690470, 19.691284, 19.364361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.000793, 19.449474, 19.436666>,  <14.186986, 19.304388, 19.480049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.000793, 19.449474, 19.436666>,  <13.690470, 19.691284, 19.364361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.000793, 19.449474, 19.436666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295719, -0.095290, 0.950510,
		-0.557381, -0.790867, -0.252696,
		0.775807, -0.604523, 0.180762,
		14.233535, 19.268118, 19.490894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.527129, 18.913097, 19.620436>,  <13.690470, 19.691284, 19.364361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.527129, 18.913097, 19.620436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.880242, 19.049858, 19.749306>,  <14.092110, 19.131914, 19.826628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.880242, 19.049858, 19.749306>,  <13.527129, 18.913097, 19.620436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.880242, 19.049858, 19.749306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357254, 0.043245, 0.933005,
		0.305067, -0.938739, 0.160323,
		0.882782, 0.341905, 0.322176,
		14.145077, 19.152430, 19.845959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625679, 18.554033, 20.314711>,  <13.527129, 18.913097, 19.620436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625679, 18.554033, 20.314711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901034, 18.844131, 20.309973>,  <14.066247, 19.018190, 20.307131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901034, 18.844131, 20.309973>,  <13.625679, 18.554033, 20.314711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.901034, 18.844131, 20.309973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089082, 0.100738, 0.990917,
		0.719852, -0.681079, 0.133953,
		0.688387, 0.725247, -0.011844,
		14.107551, 19.061705, 20.306419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.138858, 18.308929, 20.709974>,  <13.625679, 18.554033, 20.314711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.138858, 18.308929, 20.709974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.159415, 18.708397, 20.708269>,  <14.171749, 18.948078, 20.707247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.159415, 18.708397, 20.708269>,  <14.138858, 18.308929, 20.709974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.159415, 18.708397, 20.708269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053413, 0.001513, 0.998571,
		0.997249, -0.051547, -0.053264,
		0.051392, 0.998670, -0.004262,
		14.174833, 19.007998, 20.706991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.731597, 18.448221, 21.113281>,  <14.138858, 18.308929, 20.709974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.731597, 18.448221, 21.113281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.511531, 18.782173, 21.106421>,  <14.379491, 18.982544, 21.102304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.511531, 18.782173, 21.106421>,  <14.731597, 18.448221, 21.113281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.511531, 18.782173, 21.106421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018489, 0.032716, 0.999294,
		0.834851, 0.549460, -0.033436,
		-0.550166, 0.834879, -0.017154,
		14.346481, 19.032637, 21.101274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.331818, 18.148985, 21.395756>,  <14.731597, 18.448221, 21.113281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.331818, 18.148985, 21.395756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.463046, 17.799416, 21.539215>,  <15.541783, 17.589674, 21.625290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.463046, 17.799416, 21.539215>,  <15.331818, 18.148985, 21.395756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.463046, 17.799416, 21.539215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483649, -0.170734, -0.858448,
		0.811451, 0.455092, 0.366659,
		0.328072, -0.873923, 0.358648,
		15.561467, 17.537239, 21.646809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976644, 18.197029, 21.162931>,  <15.331818, 18.148985, 21.395756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976644, 18.197029, 21.162931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.904159, 17.806610, 21.211088>,  <15.860667, 17.572359, 21.239983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.904159, 17.806610, 21.211088>,  <15.976644, 18.197029, 21.162931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.904159, 17.806610, 21.211088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694793, -0.213701, -0.686727,
		0.696006, -0.040796, 0.716876,
		-0.181213, -0.976047, 0.120393,
		15.849794, 17.513796, 21.247206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.582085, 17.884764, 21.073811>,  <15.976644, 18.197029, 21.162931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.582085, 17.884764, 21.073811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.329372, 17.581249, 21.010443>,  <16.177746, 17.399139, 20.972422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.329372, 17.581249, 21.010443>,  <16.582085, 17.884764, 21.073811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.329372, 17.581249, 21.010443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529875, -0.273586, -0.802735,
		0.565763, -0.591094, 0.574908,
		-0.631779, -0.758787, -0.158421,
		16.139839, 17.353613, 20.962915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.979240, 17.407236, 20.962296>,  <16.582085, 17.884764, 21.073811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.979240, 17.407236, 20.962296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.640697, 17.283459, 20.788895>,  <16.437572, 17.209192, 20.684855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.640697, 17.283459, 20.788895>,  <16.979240, 17.407236, 20.962296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.640697, 17.283459, 20.788895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531739, -0.444264, -0.721029,
		0.030530, -0.840758, 0.540550,
		-0.846358, -0.309445, -0.433500,
		16.386789, 17.190626, 20.658844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.141827, 16.734415, 20.656355>,  <16.979240, 17.407236, 20.962296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.141827, 16.734415, 20.656355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.798958, 16.826157, 20.471897>,  <16.593237, 16.881203, 20.361223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.798958, 16.826157, 20.471897>,  <17.141827, 16.734415, 20.656355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798958, 16.826157, 20.471897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331861, -0.438754, -0.835083,
		-0.393859, -0.868845, 0.299973,
		-0.857171, 0.229356, -0.461143,
		16.541805, 16.894962, 20.333555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915438, 16.053974, 20.220070>,  <17.141827, 16.734415, 20.656355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.915438, 16.053974, 20.220070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.741974, 16.378994, 20.064274>,  <16.637896, 16.574005, 19.970797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.741974, 16.378994, 20.064274>,  <16.915438, 16.053974, 20.220070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.741974, 16.378994, 20.064274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270674, -0.294817, -0.916416,
		-0.859461, -0.502838, -0.092086,
		-0.433661, 0.812549, -0.389489,
		16.611876, 16.622759, 19.947428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.807779, 15.835858, 19.508543>,  <16.915438, 16.053974, 20.220070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.807779, 15.835858, 19.508543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.709442, 16.223579, 19.510038>,  <16.650440, 16.456213, 19.510937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.709442, 16.223579, 19.510038>,  <16.807779, 15.835858, 19.508543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.709442, 16.223579, 19.510038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306845, 0.081483, -0.948265,
		-0.919461, -0.231976, -0.317457,
		-0.245842, 0.969303, 0.003740,
		16.635689, 16.514370, 19.511160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344366, 16.005371, 18.987560>,  <16.807779, 15.835858, 19.508543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.344366, 16.005371, 18.987560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550114, 16.339329, 19.065914>,  <16.673563, 16.539703, 19.112926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550114, 16.339329, 19.065914>,  <16.344366, 16.005371, 18.987560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.550114, 16.339329, 19.065914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197284, 0.107092, -0.974480,
		-0.834567, 0.539888, -0.109627,
		0.514370, 0.834896, 0.195887,
		16.704424, 16.589798, 19.124680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217609, 16.319365, 18.410786>,  <16.344366, 16.005371, 18.987560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217609, 16.319365, 18.410786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.516068, 16.532734, 18.570147>,  <16.695143, 16.660755, 18.665762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.516068, 16.532734, 18.570147>,  <16.217609, 16.319365, 18.410786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.516068, 16.532734, 18.570147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403520, 0.113639, -0.907886,
		-0.529564, 0.838179, -0.130457,
		0.746146, 0.533426, 0.398401,
		16.739912, 16.692762, 18.689667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.172375, 16.995111, 18.098000>,  <16.217609, 16.319365, 18.410786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.172375, 16.995111, 18.098000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552147, 16.957249, 18.217749>,  <16.780010, 16.934530, 18.289598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552147, 16.957249, 18.217749>,  <16.172375, 16.995111, 18.098000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.552147, 16.957249, 18.217749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313540, 0.336339, -0.888014,
		-0.016632, 0.936972, 0.349009,
		0.949429, -0.094659, 0.299372,
		16.836975, 16.928850, 18.307560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456799, 17.633459, 17.828787>,  <16.172375, 16.995111, 18.098000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456799, 17.633459, 17.828787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.761234, 17.386559, 17.908527>,  <16.943895, 17.238419, 17.956371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.761234, 17.386559, 17.908527>,  <16.456799, 17.633459, 17.828787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.761234, 17.386559, 17.908527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464359, 0.303901, -0.831874,
		0.452892, 0.725703, 0.517923,
		0.761091, -0.617252, 0.199353,
		16.989561, 17.201384, 17.968332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972755, 18.002150, 17.652767>,  <16.456799, 17.633459, 17.828787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972755, 18.002150, 17.652767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.138985, 17.638340, 17.649530>,  <17.238722, 17.420053, 17.647589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.138985, 17.638340, 17.649530>,  <16.972755, 18.002150, 17.652767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.138985, 17.638340, 17.649530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463912, 0.219602, -0.858231,
		0.782358, 0.352905, 0.513199,
		0.415574, -0.909524, -0.008091,
		17.263657, 17.365482, 17.647102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.673323, 18.129026, 17.458286>,  <16.972755, 18.002150, 17.652767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.673323, 18.129026, 17.458286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.536594, 17.765877, 17.361187>,  <17.454557, 17.547987, 17.302927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.536594, 17.765877, 17.361187>,  <17.673323, 18.129026, 17.458286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.536594, 17.765877, 17.361187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330538, 0.125654, -0.935391,
		0.879717, -0.399974, 0.257135,
		-0.341822, -0.907872, -0.242747,
		17.434048, 17.493515, 17.288363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.136003, 17.909843, 17.053934>,  <17.673323, 18.129026, 17.458286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.136003, 17.909843, 17.053934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849964, 17.642521, 16.971958>,  <17.678341, 17.482126, 16.922773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849964, 17.642521, 16.971958>,  <18.136003, 17.909843, 17.053934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.849964, 17.642521, 16.971958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336067, -0.071615, -0.939111,
		0.612940, -0.740429, 0.275808,
		-0.715097, -0.668309, -0.204938,
		17.635435, 17.442028, 16.910477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.437641, 17.613741, 16.470720>,  <18.136003, 17.909843, 17.053934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.437641, 17.613741, 16.470720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061409, 17.477970, 16.474760>,  <17.835670, 17.396507, 16.477184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061409, 17.477970, 16.474760>,  <18.437641, 17.613741, 16.470720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.061409, 17.477970, 16.474760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053896, -0.178578, -0.982449,
		0.335272, -0.923526, 0.186261,
		-0.940579, -0.339426, 0.010098,
		17.779236, 17.376143, 16.477789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407768, 16.838715, 16.184387>,  <18.437641, 17.613741, 16.470720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407768, 16.838715, 16.184387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.073181, 17.034084, 16.084980>,  <17.872429, 17.151306, 16.025335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.073181, 17.034084, 16.084980>,  <18.407768, 16.838715, 16.184387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.073181, 17.034084, 16.084980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225810, -0.106014, -0.968386,
		-0.499331, -0.866142, -0.021614,
		-0.836468, 0.488425, -0.248519,
		17.822241, 17.180613, 16.010424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059034, 16.454622, 15.673713>,  <18.407768, 16.838715, 16.184387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.059034, 16.454622, 15.673713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.915730, 16.826576, 15.640341>,  <17.829746, 17.049749, 15.620317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.915730, 16.826576, 15.640341>,  <18.059034, 16.454622, 15.673713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915730, 16.826576, 15.640341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024868, -0.079826, -0.996499,
		-0.933291, -0.359080, 0.005474,
		-0.358260, 0.929887, -0.083430,
		17.808252, 17.105543, 15.615312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701929, 16.477505, 15.025401>,  <18.059034, 16.454622, 15.673713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701929, 16.477505, 15.025401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.757164, 16.866810, 15.098825>,  <17.790304, 17.100393, 15.142880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.757164, 16.866810, 15.098825>,  <17.701929, 16.477505, 15.025401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.757164, 16.866810, 15.098825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108202, 0.199051, -0.973997,
		-0.984492, 0.114634, 0.132795,
		0.138086, 0.973261, 0.183561,
		17.798590, 17.158789, 15.153893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.122679, 16.795952, 14.623993>,  <17.701929, 16.477505, 15.025401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.122679, 16.795952, 14.623993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.342007, 17.126072, 14.677988>,  <17.473604, 17.324144, 14.710385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.342007, 17.126072, 14.677988>,  <17.122679, 16.795952, 14.623993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.342007, 17.126072, 14.677988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172842, 0.269774, -0.947284,
		-0.818212, 0.496083, 0.290569,
		0.548320, 0.825302, 0.134989,
		17.506502, 17.373663, 14.718485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794353, 17.401104, 14.302207>,  <17.122679, 16.795952, 14.623993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.794353, 17.401104, 14.302207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.178173, 17.509892, 14.331326>,  <17.408464, 17.575163, 14.348797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.178173, 17.509892, 14.331326>,  <16.794353, 17.401104, 14.302207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.178173, 17.509892, 14.331326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011569, 0.220253, -0.975374,
		-0.281303, 0.936762, 0.208197,
		0.959549, 0.271967, 0.072796,
		17.466038, 17.591482, 14.353165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.846540, 18.084658, 13.989399>,  <16.794353, 17.401104, 14.302207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.846540, 18.084658, 13.989399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.228153, 17.964775, 13.988789>,  <17.457121, 17.892845, 13.988422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.228153, 17.964775, 13.988789>,  <16.846540, 18.084658, 13.989399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.228153, 17.964775, 13.988789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060501, 0.197569, -0.978420,
		0.293541, 0.933350, 0.206619,
		0.954030, -0.299708, -0.001526,
		17.514362, 17.874863, 13.988331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.228073, 18.610952, 13.556333>,  <16.846540, 18.084658, 13.989399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.228073, 18.610952, 13.556333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.480812, 18.301533, 13.575880>,  <17.632456, 18.115881, 13.587608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.480812, 18.301533, 13.575880>,  <17.228073, 18.610952, 13.556333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.480812, 18.301533, 13.575880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217513, 0.116446, -0.969086,
		0.743946, 0.622945, 0.241833,
		0.631848, -0.773550, 0.048869,
		17.670366, 18.069468, 13.590541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.881901, 18.858898, 13.243900>,  <17.228073, 18.610952, 13.556333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.881901, 18.858898, 13.243900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.872223, 18.459957, 13.216484>,  <17.866417, 18.220592, 13.200034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.872223, 18.459957, 13.216484>,  <17.881901, 18.858898, 13.243900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.872223, 18.459957, 13.216484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387866, 0.053825, -0.920143,
		0.921398, -0.048847, 0.385538,
		-0.024194, -0.997355, -0.068540,
		17.864965, 18.160751, 13.195922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.546711, 18.645405, 12.919802>,  <17.881901, 18.858898, 13.243900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.546711, 18.645405, 12.919802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.322186, 18.320263, 12.857587>,  <18.187469, 18.125177, 12.820258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.322186, 18.320263, 12.857587>,  <18.546711, 18.645405, 12.919802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.322186, 18.320263, 12.857587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391064, -0.094877, -0.915460,
		0.729380, -0.574685, 0.371135,
		-0.561314, -0.812856, -0.155537,
		18.153791, 18.076406, 12.810925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.051151, 18.081553, 12.716384>,  <18.546711, 18.645405, 12.919802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.051151, 18.081553, 12.716384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.687225, 18.022911, 12.561082>,  <18.468870, 17.987726, 12.467900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.687225, 18.022911, 12.561082>,  <19.051151, 18.081553, 12.716384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687225, 18.022911, 12.561082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383431, 0.061016, -0.921552,
		0.158795, -0.987311, 0.000700,
		-0.909816, -0.146606, -0.388255,
		18.414280, 17.978930, 12.444606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169735, 17.513990, 12.291316>,  <19.051151, 18.081553, 12.716384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.169735, 17.513990, 12.291316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.813934, 17.630630, 12.150602>,  <18.600454, 17.700615, 12.066175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.813934, 17.630630, 12.150602>,  <19.169735, 17.513990, 12.291316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.813934, 17.630630, 12.150602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270025, -0.285608, -0.919519,
		-0.368607, -0.912905, 0.175309,
		-0.889503, 0.291603, -0.351784,
		18.547083, 17.718111, 12.045067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037842, 17.001459, 11.829467>,  <19.169735, 17.513990, 12.291316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037842, 17.001459, 11.829467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.830315, 17.328316, 11.728985>,  <18.705799, 17.524429, 11.668695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.830315, 17.328316, 11.728985>,  <19.037842, 17.001459, 11.829467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.830315, 17.328316, 11.728985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079030, -0.246744, -0.965853,
		-0.851224, -0.520954, 0.063437,
		-0.518818, 0.817144, -0.251206,
		18.674669, 17.573460, 11.653624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413103, 16.799765, 11.470073>,  <19.037842, 17.001459, 11.829467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.413103, 16.799765, 11.470073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.452896, 17.179878, 11.352044>,  <18.476772, 17.407946, 11.281227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.452896, 17.179878, 11.352044>,  <18.413103, 16.799765, 11.470073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.452896, 17.179878, 11.352044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145895, -0.279406, -0.949024,
		-0.984285, 0.137462, 0.110845,
		0.099484, 0.950282, -0.295071,
		18.482742, 17.464962, 11.263523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.967190, 16.867346, 10.785830>,  <18.413103, 16.799765, 11.470073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.967190, 16.867346, 10.785830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212460, 17.183270, 10.791659>,  <18.359621, 17.372824, 10.795156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212460, 17.183270, 10.791659>,  <17.967190, 16.867346, 10.785830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.212460, 17.183270, 10.791659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056082, -0.025124, -0.998110,
		-0.787952, 0.612835, -0.059700,
		0.613177, 0.789811, 0.014573,
		18.396412, 17.420214, 10.796031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759611, 17.201334, 10.255003>,  <17.967190, 16.867346, 10.785830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759611, 17.201334, 10.255003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.137264, 17.313004, 10.325059>,  <18.363855, 17.380005, 10.367093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.137264, 17.313004, 10.325059>,  <17.759611, 17.201334, 10.255003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.137264, 17.313004, 10.325059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245912, -0.242969, -0.938346,
		-0.219409, 0.928993, -0.298047,
		0.944133, 0.279175, 0.175140,
		18.420504, 17.396755, 10.377601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855675, 17.694237, 9.719412>,  <17.759611, 17.201334, 10.255003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.855675, 17.694237, 9.719412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.191708, 17.528126, 9.859015>,  <18.393328, 17.428459, 9.942776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.191708, 17.528126, 9.859015>,  <17.855675, 17.694237, 9.719412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.191708, 17.528126, 9.859015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186929, -0.382356, -0.904910,
		0.509231, 0.825439, -0.243584,
		0.840084, -0.415275, 0.349006,
		18.443733, 17.403543, 9.963717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363121, 17.886257, 9.259088>,  <17.855675, 17.694237, 9.719412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.363121, 17.886257, 9.259088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520485, 17.580326, 9.463154>,  <18.614902, 17.396767, 9.585594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520485, 17.580326, 9.463154>,  <18.363121, 17.886257, 9.259088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520485, 17.580326, 9.463154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445276, -0.326972, -0.833557,
		0.804338, 0.555093, 0.211926,
		0.393408, -0.764827, 0.510166,
		18.638508, 17.350878, 9.616203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026909, 17.886011, 8.971648>,  <18.363121, 17.886257, 9.259088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.026909, 17.886011, 8.971648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.000225, 17.528419, 9.148893>,  <18.984215, 17.313864, 9.255240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.000225, 17.528419, 9.148893>,  <19.026909, 17.886011, 8.971648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.000225, 17.528419, 9.148893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363447, -0.435364, -0.823629,
		0.929223, 0.106103, 0.353958,
		-0.066711, -0.893980, 0.443113,
		18.980211, 17.260225, 9.281827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.675911, 17.538925, 8.842246>,  <19.026909, 17.886011, 8.971648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.675911, 17.538925, 8.842246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.427597, 17.234543, 8.917694>,  <19.278608, 17.051914, 8.962963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.427597, 17.234543, 8.917694>,  <19.675911, 17.538925, 8.842246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.427597, 17.234543, 8.917694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519279, -0.579353, -0.628252,
		0.587348, -0.292062, 0.754800,
		-0.620783, -0.760954, 0.188620,
		19.241362, 17.006256, 8.974280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.096542, 16.923706, 8.875579>,  <19.675911, 17.538925, 8.842246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.096542, 16.923706, 8.875579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.716568, 16.826363, 8.797194>,  <19.488585, 16.767956, 8.750162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.716568, 16.826363, 8.797194>,  <20.096542, 16.923706, 8.875579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.716568, 16.826363, 8.797194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311411, -0.686294, -0.657285,
		0.025469, -0.685402, 0.727719,
		-0.949934, -0.243360, -0.195963,
		19.431587, 16.753355, 8.738404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.097464, 16.167259, 8.919997>,  <20.096542, 16.923706, 8.875579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.097464, 16.167259, 8.919997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757214, 16.257027, 8.729809>,  <19.553064, 16.310888, 8.615696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757214, 16.257027, 8.729809>,  <20.097464, 16.167259, 8.919997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757214, 16.257027, 8.729809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179811, -0.725628, -0.664178,
		-0.494068, -0.650462, 0.576885,
		-0.850626, 0.224419, -0.475470,
		19.502026, 16.324352, 8.587168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.754971, 15.574191, 8.910232>,  <20.097464, 16.167259, 8.919997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.754971, 15.574191, 8.910232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.597164, 15.776157, 8.603138>,  <19.502480, 15.897337, 8.418881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.597164, 15.776157, 8.603138>,  <19.754971, 15.574191, 8.910232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.597164, 15.776157, 8.603138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101543, -0.806430, -0.582545,
		-0.913262, -0.307781, 0.266879,
		-0.394515, 0.504916, -0.767735,
		19.478809, 15.927632, 8.372818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196283, 15.133593, 8.583020>,  <19.754971, 15.574191, 8.910232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.196283, 15.133593, 8.583020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.312386, 15.408531, 8.316695>,  <19.382046, 15.573494, 8.156900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.312386, 15.408531, 8.316695>,  <19.196283, 15.133593, 8.583020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.312386, 15.408531, 8.316695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174768, -0.722140, -0.669306,
		-0.940855, 0.077907, -0.329730,
		0.290254, 0.687346, -0.665813,
		19.399462, 15.614735, 8.116951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.885626, 14.902605, 7.898209>,  <19.196283, 15.133593, 8.583020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.885626, 14.902605, 7.898209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.173412, 15.159531, 7.792527>,  <19.346085, 15.313685, 7.729118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.173412, 15.159531, 7.792527>,  <18.885626, 14.902605, 7.898209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.173412, 15.159531, 7.792527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257248, -0.599802, -0.757668,
		-0.645131, 0.477149, -0.596771,
		0.719465, 0.642313, -0.264205,
		19.389252, 15.352224, 7.713265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.697145, 15.114301, 7.251009>,  <18.885626, 14.902605, 7.898209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.697145, 15.114301, 7.251009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.087395, 15.191051, 7.293613>,  <19.321545, 15.237102, 7.319176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.087395, 15.191051, 7.293613>,  <18.697145, 15.114301, 7.251009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.087395, 15.191051, 7.293613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202643, -0.601348, -0.772863,
		-0.084245, 0.775606, -0.625571,
		0.975622, 0.191877, 0.106510,
		19.380081, 15.248614, 7.325567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.007099, 15.266444, 6.611051>,  <18.697145, 15.114301, 7.251009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.007099, 15.266444, 6.611051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.309158, 15.133472, 6.837056>,  <19.490395, 15.053689, 6.972660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.309158, 15.133472, 6.837056>,  <19.007099, 15.266444, 6.611051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.309158, 15.133472, 6.837056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264551, -0.634055, -0.726627,
		0.599802, 0.698187, -0.390861,
		0.755149, -0.332430, 0.565013,
		19.535704, 15.033744, 7.006560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.689823, 15.253978, 6.220228>,  <19.007099, 15.266444, 6.611051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.689823, 15.253978, 6.220228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.617420, 14.978825, 6.501384>,  <19.573978, 14.813733, 6.670077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.617420, 14.978825, 6.501384>,  <19.689823, 15.253978, 6.220228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.617420, 14.978825, 6.501384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207626, -0.725314, -0.656362,
		0.961316, 0.027132, 0.274109,
		-0.181007, -0.687883, 0.702889,
		19.563118, 14.772460, 6.712251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223625, 14.654233, 6.107844>,  <19.689823, 15.253978, 6.220228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223625, 14.654233, 6.107844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.857059, 14.584332, 6.251867>,  <19.637119, 14.542391, 6.338281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.857059, 14.584332, 6.251867>,  <20.223625, 14.654233, 6.107844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.857059, 14.584332, 6.251867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082504, -0.797830, -0.597211,
		0.391630, -0.577000, 0.716726,
		-0.916416, -0.174753, 0.360059,
		19.582134, 14.531906, 6.359885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.164772, 13.963637, 6.460274>,  <20.223625, 14.654233, 6.107844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.164772, 13.963637, 6.460274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.830742, 14.096870, 6.285138>,  <19.630323, 14.176810, 6.180057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.830742, 14.096870, 6.285138>,  <20.164772, 13.963637, 6.460274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.830742, 14.096870, 6.285138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012022, -0.806736, -0.590789,
		-0.550003, -0.488090, 0.677691,
		-0.835076, 0.333083, -0.437839,
		19.580219, 14.196795, 6.153786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.622086, 13.556941, 6.468617>,  <20.164772, 13.963637, 6.460274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.622086, 13.556941, 6.468617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.549538, 13.757004, 6.129926>,  <19.506008, 13.877042, 5.926711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.549538, 13.757004, 6.129926>,  <19.622086, 13.556941, 6.468617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.549538, 13.757004, 6.129926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333723, -0.841219, -0.425418,
		-0.925058, 0.205413, 0.319488,
		-0.181372, 0.500157, -0.846727,
		19.495127, 13.907051, 5.875907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832632, 13.648894, 6.217548>,  <19.622086, 13.556941, 6.468617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.832632, 13.648894, 6.217548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017998, 13.608810, 5.865365>,  <19.129217, 13.584760, 5.654055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017998, 13.608810, 5.865365>,  <18.832632, 13.648894, 6.217548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017998, 13.608810, 5.865365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660696, -0.701207, -0.267937,
		-0.590533, 0.705880, -0.391157,
		0.463414, -0.100210, -0.880458,
		19.157022, 13.578748, 5.601228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.255287, 13.536942, 5.680458>,  <18.832632, 13.648894, 6.217548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.255287, 13.536942, 5.680458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604084, 13.396271, 5.544251>,  <18.813362, 13.311869, 5.462527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604084, 13.396271, 5.544251>,  <18.255287, 13.536942, 5.680458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604084, 13.396271, 5.544251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447625, -0.854402, -0.263874,
		-0.198140, 0.382520, -0.902451,
		0.871993, -0.351676, -0.340517,
		18.865683, 13.290768, 5.442096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177099, 13.357467, 5.021057>,  <18.255287, 13.536942, 5.680458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177099, 13.357467, 5.021057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.433475, 13.147408, 5.244991>,  <18.587301, 13.021372, 5.379352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.433475, 13.147408, 5.244991>,  <18.177099, 13.357467, 5.021057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.433475, 13.147408, 5.244991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547991, -0.823761, -0.145340,
		0.537496, -0.213630, -0.815758,
		0.640941, -0.525147, 0.559835,
		18.625757, 12.989863, 5.412942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400652, 12.852728, 4.651368>,  <18.177099, 13.357467, 5.021057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400652, 12.852728, 4.651368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.446728, 12.752571, 5.035875>,  <18.474373, 12.692477, 5.266580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.446728, 12.752571, 5.035875>,  <18.400652, 12.852728, 4.651368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.446728, 12.752571, 5.035875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569348, -0.809623, -0.142666,
		0.813987, -0.530863, -0.235818,
		0.115188, -0.250391, 0.961268,
		18.481285, 12.677454, 5.324256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805431, 12.233018, 4.881651>,  <18.400652, 12.852728, 4.651368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.805431, 12.233018, 4.881651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.494331, 12.276562, 5.129281>,  <18.307671, 12.302688, 5.277859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.494331, 12.276562, 5.129281>,  <18.805431, 12.233018, 4.881651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.494331, 12.276562, 5.129281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363600, -0.881304, -0.301825,
		0.512737, -0.459840, 0.725016,
		-0.777751, 0.108859, 0.619075,
		18.261005, 12.309219, 5.315003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730341, 11.686271, 5.360237>,  <18.805431, 12.233018, 4.881651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.730341, 11.686271, 5.360237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.384628, 11.858765, 5.256658>,  <18.177200, 11.962261, 5.194510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.384628, 11.858765, 5.256658>,  <18.730341, 11.686271, 5.360237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.384628, 11.858765, 5.256658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326927, -0.872818, -0.362365,
		-0.382279, -0.228528, 0.895342,
		-0.864281, 0.431236, -0.258948,
		18.125343, 11.988135, 5.178973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159889, 11.124331, 5.608628>,  <18.730341, 11.686271, 5.360237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.159889, 11.124331, 5.608628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018528, 11.395878, 5.351180>,  <17.933712, 11.558805, 5.196711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018528, 11.395878, 5.351180>,  <18.159889, 11.124331, 5.608628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018528, 11.395878, 5.351180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401943, -0.731465, -0.550818,
		-0.844718, 0.064039, 0.531367,
		-0.353402, 0.678866, -0.643621,
		17.912508, 11.599538, 5.158094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.453978, 10.960392, 5.347463>,  <18.159889, 11.124331, 5.608628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.453978, 10.960392, 5.347463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.580231, 11.237244, 5.087823>,  <17.655983, 11.403355, 4.932039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.580231, 11.237244, 5.087823>,  <17.453978, 10.960392, 5.347463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.580231, 11.237244, 5.087823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553086, -0.421648, -0.718546,
		-0.771019, 0.585806, 0.249721,
		0.315634, 0.692130, -0.649100,
		17.674921, 11.444882, 4.893093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944561, 11.412966, 5.077794>,  <17.453978, 10.960392, 5.347463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.944561, 11.412966, 5.077794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.220146, 11.413364, 4.787875>,  <17.385496, 11.413604, 4.613924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.220146, 11.413364, 4.787875>,  <16.944561, 11.412966, 5.077794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.220146, 11.413364, 4.787875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659723, -0.413270, -0.627673,
		-0.300162, 0.910608, -0.284070,
		0.688962, 0.000996, -0.724797,
		17.426834, 11.413663, 4.570436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723482, 11.931925, 4.656649>,  <16.944561, 11.412966, 5.077794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723482, 11.931925, 4.656649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.951466, 11.649368, 4.488764>,  <17.088257, 11.479835, 4.388034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.951466, 11.649368, 4.488764>,  <16.723482, 11.931925, 4.656649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.951466, 11.649368, 4.488764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647642, -0.071856, -0.758549,
		0.505674, 0.704165, -0.498444,
		0.569960, -0.706391, -0.419711,
		17.122454, 11.437451, 4.362851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.925934, 12.204581, 3.962807>,  <16.723482, 11.931925, 4.656649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.925934, 12.204581, 3.962807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.871487, 11.822220, 4.066899>,  <16.838818, 11.592803, 4.129354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.871487, 11.822220, 4.066899>,  <16.925934, 12.204581, 3.962807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.871487, 11.822220, 4.066899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629087, -0.119521, -0.768091,
		0.765325, -0.268258, -0.585078,
		-0.136117, -0.955904, 0.260230,
		16.830652, 11.535449, 4.144969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.185394, 11.741120, 3.530669>,  <16.925934, 12.204581, 3.962807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.185394, 11.741120, 3.530669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.858055, 11.586098, 3.700424>,  <16.661652, 11.493084, 3.802277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.858055, 11.586098, 3.700424>,  <17.185394, 11.741120, 3.530669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.858055, 11.586098, 3.700424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440923, -0.050260, -0.896136,
		0.368633, -0.920475, -0.129752,
		-0.818350, -0.387557, 0.424386,
		16.612551, 11.469831, 3.827740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029758, 11.081716, 3.137699>,  <17.185394, 11.741120, 3.530669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029758, 11.081716, 3.137699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716053, 11.284721, 3.280449>,  <16.527830, 11.406525, 3.366099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716053, 11.284721, 3.280449>,  <17.029758, 11.081716, 3.137699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.716053, 11.284721, 3.280449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391431, 0.041535, -0.919270,
		-0.481365, -0.860642, 0.166082,
		-0.784264, 0.507514, 0.356876,
		16.480774, 11.436975, 3.387511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644478, 10.809818, 3.150984>,  <17.029758, 11.081716, 3.137699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.644478, 10.809818, 3.150984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340412, 10.551888, 3.119117>,  <17.157972, 10.397129, 3.099997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340412, 10.551888, 3.119117>,  <17.644478, 10.809818, 3.150984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340412, 10.551888, 3.119117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574912, -0.610431, -0.544840,
		0.302696, -0.459969, 0.834747,
		-0.760165, -0.644827, -0.079667,
		17.112362, 10.358439, 3.095217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059938, 10.075116, 3.234843>,  <17.644478, 10.809818, 3.150984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.059938, 10.075116, 3.234843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.699608, 10.080215, 3.061245>,  <17.483410, 10.083275, 2.957087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.699608, 10.080215, 3.061245>,  <18.059938, 10.075116, 3.234843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.699608, 10.080215, 3.061245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226856, -0.838456, -0.495507,
		-0.370201, -0.544820, 0.752411,
		-0.900826, 0.012748, -0.433993,
		17.429359, 10.084040, 2.931048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752445, 9.376516, 3.283813>,  <18.059938, 10.075116, 3.234843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.752445, 9.376516, 3.283813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662643, 9.552280, 2.935902>,  <17.608763, 9.657739, 2.727154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662643, 9.552280, 2.935902>,  <17.752445, 9.376516, 3.283813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662643, 9.552280, 2.935902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174605, -0.859981, -0.479528,
		-0.958703, -0.259523, 0.116345,
		-0.224503, 0.439411, -0.869780,
		17.595293, 9.684104, 2.674968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562981, 8.836571, 2.815290>,  <17.752445, 9.376516, 3.283813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.562981, 8.836571, 2.815290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.616863, 9.139126, 2.559249>,  <17.649193, 9.320659, 2.405625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.616863, 9.139126, 2.559249>,  <17.562981, 8.836571, 2.815290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.616863, 9.139126, 2.559249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073277, -0.651826, -0.754820,
		-0.988173, 0.054774, -0.143230,
		0.134706, 0.756388, -0.640103,
		17.657274, 9.366042, 2.367218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.062510, 8.811822, 2.138817>,  <17.562981, 8.836571, 2.815290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.062510, 8.811822, 2.138817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431587, 8.965816, 2.147007>,  <17.653034, 9.058213, 2.151920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431587, 8.965816, 2.147007>,  <17.062510, 8.811822, 2.138817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.431587, 8.965816, 2.147007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303113, -0.691606, -0.655594,
		-0.238235, 0.611119, -0.754836,
		0.922695, 0.384987, 0.020473,
		17.708395, 9.081312, 2.153148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364754, 8.925338, 1.472010>,  <17.062510, 8.811822, 2.138817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364754, 8.925338, 1.472010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.711239, 8.876804, 1.665899>,  <17.919130, 8.847684, 1.782233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.711239, 8.876804, 1.665899>,  <17.364754, 8.925338, 1.472010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.711239, 8.876804, 1.665899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328577, -0.592526, -0.735493,
		0.376452, 0.796361, -0.473385,
		0.866211, -0.121334, 0.484723,
		17.971102, 8.840405, 1.811316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.074991, 9.214095, 1.156675>,  <17.364754, 8.925338, 1.472010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.074991, 9.214095, 1.156675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.096035, 8.871822, 1.362603>,  <18.108662, 8.666458, 1.486160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.096035, 8.871822, 1.362603>,  <18.074991, 9.214095, 1.156675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.096035, 8.871822, 1.362603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366058, -0.463124, -0.807166,
		0.929104, 0.230920, 0.288864,
		0.052611, -0.855682, 0.514820,
		18.111818, 8.615118, 1.517049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.861334, 8.966874, 1.353864>,  <18.074991, 9.214095, 1.156675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.861334, 8.966874, 1.353864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.567108, 8.705418, 1.282651>,  <18.390572, 8.548544, 1.239923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.567108, 8.705418, 1.282651>,  <18.861334, 8.966874, 1.353864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.567108, 8.705418, 1.282651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437773, -0.258062, -0.861254,
		0.517007, -0.711448, 0.475968,
		-0.735567, -0.653641, -0.178033,
		18.346437, 8.509325, 1.229241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.227314, 8.362387, 1.158670>,  <18.861334, 8.966874, 1.353864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.227314, 8.362387, 1.158670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.862068, 8.384327, 0.997073>,  <18.642920, 8.397491, 0.900115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.862068, 8.384327, 0.997073>,  <19.227314, 8.362387, 1.158670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.862068, 8.384327, 0.997073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342716, -0.433449, -0.833467,
		-0.220826, -0.899507, 0.376991,
		-0.913116, 0.054851, -0.403992,
		18.588133, 8.400782, 0.875875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.064034, 7.687377, 0.908670>,  <19.227314, 8.362387, 1.158670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.064034, 7.687377, 0.908670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.905231, 8.003044, 0.721224>,  <18.809950, 8.192445, 0.608756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.905231, 8.003044, 0.721224>,  <19.064034, 7.687377, 0.908670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.905231, 8.003044, 0.721224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515684, -0.230572, -0.825171,
		-0.759248, -0.569254, -0.315423,
		-0.397005, 0.789168, -0.468616,
		18.786131, 8.239795, 0.580639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.918333, 7.474016, 0.202555>,  <19.064034, 7.687377, 0.908670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.918333, 7.474016, 0.202555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.940670, 7.872868, 0.223004>,  <18.954073, 8.112179, 0.235273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.940670, 7.872868, 0.223004>,  <18.918333, 7.474016, 0.202555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.940670, 7.872868, 0.223004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330884, 0.029827, -0.943200,
		-0.942018, 0.069586, -0.328268,
		0.055842, 0.997130, 0.051122,
		18.957422, 8.172007, 0.238341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.667196, 7.757040, -0.433067>,  <18.918333, 7.474016, 0.202555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.667196, 7.757040, -0.433067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.872147, 8.077950, -0.310542>,  <18.995117, 8.270495, -0.237028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.872147, 8.077950, -0.310542>,  <18.667196, 7.757040, -0.433067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.872147, 8.077950, -0.310542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405013, 0.088773, -0.909991,
		-0.757254, 0.590319, -0.279446,
		0.512378, 0.802273, 0.306311,
		19.025860, 8.318631, -0.218649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.625717, 8.251632, -0.965143>,  <18.667196, 7.757040, -0.433067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.625717, 8.251632, -0.965143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976170, 8.264706, -0.772756>,  <19.186441, 8.272550, -0.657323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976170, 8.264706, -0.772756>,  <18.625717, 8.251632, -0.965143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976170, 8.264706, -0.772756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475888, 0.100716, -0.873720,
		-0.076998, 0.994378, 0.072686,
		0.876129, 0.032684, 0.480968,
		19.239008, 8.274511, -0.628465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047371, 8.733445, -1.243315>,  <18.625717, 8.251632, -0.965143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.047371, 8.733445, -1.243315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.307568, 8.501801, -1.046748>,  <19.463686, 8.362814, -0.928808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.307568, 8.501801, -1.046748>,  <19.047371, 8.733445, -1.243315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.307568, 8.501801, -1.046748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605196, 0.004274, -0.796065,
		0.458910, 0.815237, 0.353256,
		0.650492, -0.579111, 0.491417,
		19.502716, 8.328067, -0.899323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.015631, 8.880709, -0.471803>,  <19.047371, 8.733445, -1.243315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.015631, 8.880709, -0.471803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.639446, 9.006866, -0.522490>,  <18.413734, 9.082561, -0.552902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.639446, 9.006866, -0.522490>,  <19.015631, 8.880709, -0.471803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.639446, 9.006866, -0.522490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028885, 0.297302, 0.954346,
		0.338669, 0.901187, -0.270491,
		-0.940462, 0.315395, -0.126717,
		18.357307, 9.101485, -0.560505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848503, 9.644166, -0.371699>,  <19.015631, 8.880709, -0.471803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.848503, 9.644166, -0.371699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.546101, 9.399639, -0.278109>,  <18.364658, 9.252923, -0.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.546101, 9.399639, -0.278109>,  <18.848503, 9.644166, -0.371699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.546101, 9.399639, -0.278109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018606, 0.377380, 0.925872,
		-0.654299, 0.695612, -0.296676,
		-0.756007, -0.611317, 0.233977,
		18.319298, 9.216244, -0.207916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177990, 9.969472, -0.251456>,  <18.848503, 9.644166, -0.371699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177990, 9.969472, -0.251456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.259415, 9.646938, -0.029326>,  <18.308270, 9.453418, 0.103952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.259415, 9.646938, -0.029326>,  <18.177990, 9.969472, -0.251456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.259415, 9.646938, -0.029326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002468, 0.566778, 0.823867,
		-0.979058, -0.169080, 0.113386,
		0.203564, -0.806334, 0.555326,
		18.320484, 9.405038, 0.137272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.062828, 17.742035, 17.545801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.172989, 18.111576, 17.439482>,  <21.239084, 18.333302, 17.375690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.172989, 18.111576, 17.439482>,  <21.062828, 17.742035, 17.545801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.172989, 18.111576, 17.439482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258902, -0.337551, -0.905002,
		-0.925810, 0.180423, -0.332150,
		0.275401, 0.923854, -0.265796,
		21.255610, 18.388733, 17.359743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.785181, 17.865746, 16.902157>,  <21.062828, 17.742035, 17.545801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.785181, 17.865746, 16.902157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.065994, 18.149715, 16.924639>,  <21.234482, 18.320097, 16.938128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.065994, 18.149715, 16.924639>,  <20.785181, 17.865746, 16.902157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.065994, 18.149715, 16.924639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193287, -0.113987, -0.974498,
		-0.685412, 0.694994, -0.217241,
		0.702033, 0.709923, 0.056205,
		21.276604, 18.362692, 16.941500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.686913, 18.285254, 16.294065>,  <20.785181, 17.865746, 16.902157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.686913, 18.285254, 16.294065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.051605, 18.388657, 16.421766>,  <21.270420, 18.450699, 16.498386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.051605, 18.388657, 16.421766>,  <20.686913, 18.285254, 16.294065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.051605, 18.388657, 16.421766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357068, -0.114466, -0.927038,
		-0.203101, 0.959204, -0.196666,
		0.911730, 0.258506, 0.319253,
		21.325125, 18.466208, 16.517542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.871260, 18.761497, 15.855794>,  <20.686913, 18.285254, 16.294065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.871260, 18.761497, 15.855794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.234489, 18.660225, 15.989243>,  <21.452427, 18.599463, 16.069311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.234489, 18.660225, 15.989243>,  <20.871260, 18.761497, 15.855794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.234489, 18.660225, 15.989243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333749, -0.043780, -0.941645,
		0.253012, 0.966428, 0.044743,
		0.908073, -0.253180, 0.333621,
		21.506912, 18.584270, 16.089329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.412504, 19.354954, 15.798151>,  <20.871260, 18.761497, 15.855794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.412504, 19.354954, 15.798151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.600449, 19.002155, 15.812658>,  <21.713215, 18.790476, 15.821362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.600449, 19.002155, 15.812658>,  <21.412504, 19.354954, 15.798151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.600449, 19.002155, 15.812658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170881, 0.050570, -0.983993,
		0.866043, 0.468538, 0.174477,
		0.469862, -0.881995, 0.036269,
		21.741407, 18.737556, 15.823539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.031895, 19.420090, 15.459443>,  <21.412504, 19.354954, 15.798151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.031895, 19.420090, 15.459443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.994949, 19.021915, 15.449816>,  <21.972782, 18.783010, 15.444039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.994949, 19.021915, 15.449816>,  <22.031895, 19.420090, 15.459443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.994949, 19.021915, 15.449816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191727, 0.005940, -0.981430,
		0.977093, -0.095262, 0.190303,
		-0.092363, -0.995435, -0.024068,
		21.967241, 18.723286, 15.442595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.541561, 19.150841, 14.988836>,  <22.031895, 19.420090, 15.459443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.541561, 19.150841, 14.988836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.255993, 18.872917, 15.023615>,  <22.084652, 18.706163, 15.044482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.255993, 18.872917, 15.023615>,  <22.541561, 19.150841, 14.988836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.255993, 18.872917, 15.023615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000868, -0.123291, -0.992370,
		0.700227, -0.708548, 0.087417,
		-0.713919, -0.694809, 0.086947,
		22.041817, 18.664474, 15.049699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.738869, 18.642529, 14.590791>,  <22.541561, 19.150841, 14.988836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.738869, 18.642529, 14.590791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.346428, 18.567688, 14.610504>,  <22.110964, 18.522783, 14.622332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.346428, 18.567688, 14.610504>,  <22.738869, 18.642529, 14.590791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.346428, 18.567688, 14.610504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032791, -0.090236, -0.995380,
		0.190686, -0.978187, 0.082395,
		-0.981103, -0.187103, 0.049283,
		22.052097, 18.511557, 14.625289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.680666, 18.089499, 14.060514>,  <22.738869, 18.642529, 14.590791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.680666, 18.089499, 14.060514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.318966, 18.245293, 14.130520>,  <22.101946, 18.338770, 14.172523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.318966, 18.245293, 14.130520>,  <22.680666, 18.089499, 14.060514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318966, 18.245293, 14.130520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197075, -0.017075, -0.980240,
		-0.378803, -0.920873, 0.092199,
		-0.904251, 0.389488, 0.175013,
		22.047691, 18.362139, 14.183023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.156954, 17.626139, 13.772429>,  <22.680666, 18.089499, 14.060514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.156954, 17.626139, 13.772429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.009014, 17.997322, 13.790760>,  <21.920250, 18.220032, 13.801759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.009014, 17.997322, 13.790760>,  <22.156954, 17.626139, 13.772429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.009014, 17.997322, 13.790760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217247, -0.038416, -0.975360,
		-0.903336, -0.370693, 0.215805,
		-0.369850, 0.927961, 0.045830,
		21.898060, 18.275711, 13.804509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471994, 17.567444, 13.438840>,  <22.156954, 17.626139, 13.772429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471994, 17.567444, 13.438840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.551239, 17.958088, 13.405416>,  <21.598785, 18.192474, 13.385363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.551239, 17.958088, 13.405416>,  <21.471994, 17.567444, 13.438840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.551239, 17.958088, 13.405416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333261, -0.013057, -0.942744,
		-0.921785, 0.214617, 0.322880,
		0.198113, 0.976611, -0.083559,
		21.610672, 18.251072, 13.380349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.812611, 17.868660, 13.295897>,  <21.471994, 17.567444, 13.438840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.812611, 17.868660, 13.295897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.087067, 18.126934, 13.161848>,  <21.251740, 18.281898, 13.081419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.087067, 18.126934, 13.161848>,  <20.812611, 17.868660, 13.295897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.087067, 18.126934, 13.161848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382081, -0.072155, -0.921307,
		-0.619053, 0.760189, 0.197196,
		0.686139, 0.645683, -0.335122,
		21.292908, 18.320639, 13.061312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.468937, 18.207548, 12.723609>,  <20.812611, 17.868660, 13.295897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.468937, 18.207548, 12.723609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.847755, 18.321877, 12.665080>,  <21.075047, 18.390472, 12.629963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.847755, 18.321877, 12.665080>,  <20.468937, 18.207548, 12.723609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.847755, 18.321877, 12.665080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114506, -0.125116, -0.985512,
		-0.299985, 0.950081, -0.085763,
		0.947047, 0.285819, -0.146323,
		21.131870, 18.407621, 12.621183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.465607, 18.634506, 12.164286>,  <20.468937, 18.207548, 12.723609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.465607, 18.634506, 12.164286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.849522, 18.524811, 12.188288>,  <21.079870, 18.458994, 12.202689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.849522, 18.524811, 12.188288>,  <20.465607, 18.634506, 12.164286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849522, 18.524811, 12.188288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047002, -0.053750, -0.997448,
		0.276764, 0.960158, -0.038698,
		0.959788, -0.274239, 0.060005,
		21.137459, 18.442539, 12.206289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.838537, 18.972361, 11.639701>,  <20.465607, 18.634506, 12.164286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.838537, 18.972361, 11.639701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.081547, 18.663849, 11.715641>,  <21.227352, 18.478743, 11.761206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.081547, 18.663849, 11.715641>,  <20.838537, 18.972361, 11.639701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.081547, 18.663849, 11.715641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089215, -0.171245, -0.981181,
		0.789275, 0.613029, -0.035226,
		0.607524, -0.771279, 0.189851,
		21.263803, 18.432465, 11.772596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.435270, 19.037687, 11.189735>,  <20.838537, 18.972361, 11.639701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.435270, 19.037687, 11.189735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.403908, 18.650379, 11.284650>,  <21.385090, 18.417994, 11.341599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.403908, 18.650379, 11.284650>,  <21.435270, 19.037687, 11.189735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.403908, 18.650379, 11.284650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125818, -0.245728, -0.961139,
		0.988950, -0.045506, 0.141093,
		-0.078408, -0.968270, 0.237287,
		21.380384, 18.359898, 11.355836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974859, 18.762644, 11.038166>,  <21.435270, 19.037687, 11.189735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974859, 18.762644, 11.038166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.736145, 18.442207, 11.019842>,  <21.592916, 18.249945, 11.008848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.736145, 18.442207, 11.019842>,  <21.974859, 18.762644, 11.038166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.736145, 18.442207, 11.019842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333898, -0.196020, -0.922002,
		0.729628, -0.565535, 0.384465,
		-0.596787, -0.801091, -0.045809,
		21.557108, 18.201880, 11.006100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.301361, 18.405268, 10.514073>,  <21.974859, 18.762644, 11.038166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.301361, 18.405268, 10.514073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.965588, 18.201557, 10.589952>,  <21.764124, 18.079330, 10.635479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.965588, 18.201557, 10.589952>,  <22.301361, 18.405268, 10.514073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965588, 18.201557, 10.589952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015728, -0.371672, -0.928231,
		0.543232, -0.776206, 0.320004,
		-0.839435, -0.509278, 0.189696,
		21.713757, 18.048773, 10.646860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.476826, 17.743177, 10.317878>,  <22.301361, 18.405268, 10.514073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.476826, 17.743177, 10.317878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.078186, 17.749054, 10.285444>,  <21.839003, 17.752581, 10.265984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.078186, 17.749054, 10.285444>,  <22.476826, 17.743177, 10.317878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078186, 17.749054, 10.285444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066146, -0.444226, -0.893470,
		-0.049145, -0.895794, 0.441744,
		-0.996599, 0.014690, -0.081084,
		21.779207, 17.753462, 10.261119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.254696, 17.033865, 10.000185>,  <22.476826, 17.743177, 10.317878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.254696, 17.033865, 10.000185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.958363, 17.297401, 9.947891>,  <21.780561, 17.455524, 9.916514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.958363, 17.297401, 9.947891>,  <22.254696, 17.033865, 10.000185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.958363, 17.297401, 9.947891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068098, -0.267306, -0.961203,
		-0.668227, -0.703189, 0.242895,
		-0.740834, 0.658842, -0.130735,
		21.736113, 17.495054, 9.908670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.749887, 16.657330, 9.619485>,  <22.254696, 17.033865, 10.000185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.749887, 16.657330, 9.619485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.701458, 17.048992, 9.554254>,  <21.672400, 17.283989, 9.515115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.701458, 17.048992, 9.554254>,  <21.749887, 16.657330, 9.619485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.701458, 17.048992, 9.554254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085996, -0.153323, -0.984427,
		-0.988912, -0.133212, -0.065640,
		-0.121073, 0.979156, -0.163078,
		21.665136, 17.342739, 9.505330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.344917, 16.596092, 9.083355>,  <21.749887, 16.657330, 9.619485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.344917, 16.596092, 9.083355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.524017, 16.953690, 9.090212>,  <21.631477, 17.168247, 9.094326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.524017, 16.953690, 9.090212>,  <21.344917, 16.596092, 9.083355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.524017, 16.953690, 9.090212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093441, -0.027716, -0.995239,
		-0.889262, 0.447221, -0.095946,
		0.447751, 0.893994, 0.017142,
		21.658342, 17.221888, 9.095355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.901413, 16.533422, 9.642018>,  <21.344917, 16.596092, 9.083355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.901413, 16.533422, 9.642018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.091869, 16.307800, 9.372165>,  <21.206142, 16.172426, 9.210253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.091869, 16.307800, 9.372165>,  <20.901413, 16.533422, 9.642018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.091869, 16.307800, 9.372165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093663, -0.730286, 0.676691,
		-0.874367, -0.385389, -0.294888,
		0.476141, -0.564056, -0.674634,
		21.234713, 16.138584, 9.169775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.554293, 15.857358, 9.667642>,  <20.901413, 16.533422, 9.642018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.554293, 15.857358, 9.667642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.912575, 15.769024, 9.513268>,  <21.127544, 15.716023, 9.420643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.912575, 15.769024, 9.513268>,  <20.554293, 15.857358, 9.667642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.912575, 15.769024, 9.513268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150655, -0.665892, 0.730678,
		-0.418350, -0.712615, -0.563172,
		0.895705, -0.220835, -0.385935,
		21.181286, 15.702773, 9.397487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.584352, 15.148879, 9.400123>,  <20.554293, 15.857358, 9.667642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.584352, 15.148879, 9.400123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.941494, 15.263863, 9.538791>,  <21.155779, 15.332852, 9.621992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.941494, 15.263863, 9.538791>,  <20.584352, 15.148879, 9.400123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.941494, 15.263863, 9.538791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138064, -0.557999, 0.818276,
		0.428663, -0.778463, -0.458524,
		0.892853, 0.287459, 0.346671,
		21.209351, 15.350101, 9.642792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.811182, 14.673925, 9.836877>,  <20.584352, 15.148879, 9.400123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.811182, 14.673925, 9.836877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.099945, 14.937187, 9.922370>,  <21.273203, 15.095144, 9.973666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.099945, 14.937187, 9.922370>,  <20.811182, 14.673925, 9.836877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.099945, 14.937187, 9.922370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077872, -0.384172, 0.919971,
		0.687595, -0.647490, -0.328589,
		0.721907, 0.658155, 0.213734,
		21.316517, 15.134634, 9.986490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.486403, 14.354769, 10.062064>,  <20.811182, 14.673925, 9.836877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.486403, 14.354769, 10.062064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.453274, 14.717594, 10.227171>,  <21.433397, 14.935289, 10.326235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.453274, 14.717594, 10.227171>,  <21.486403, 14.354769, 10.062064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.453274, 14.717594, 10.227171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038292, -0.410988, 0.910836,
		0.995829, 0.091241, -0.000695,
		-0.082820, 0.907063, 0.412767,
		21.428429, 14.989714, 10.351001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.832478, 14.249514, 10.649349>,  <21.486403, 14.354769, 10.062064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.832478, 14.249514, 10.649349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.686382, 14.610767, 10.739636>,  <21.598726, 14.827520, 10.793809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.686382, 14.610767, 10.739636>,  <21.832478, 14.249514, 10.649349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686382, 14.610767, 10.739636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016566, -0.248737, 0.968430,
		0.930768, 0.349966, 0.105809,
		-0.365236, 0.903135, 0.225719,
		21.576811, 14.881708, 10.807352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.091806, 14.404050, 11.287083>,  <21.832478, 14.249514, 10.649349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.091806, 14.404050, 11.287083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.771759, 14.643879, 11.294262>,  <21.579731, 14.787776, 11.298570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.771759, 14.643879, 11.294262>,  <22.091806, 14.404050, 11.287083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.771759, 14.643879, 11.294262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016688, -0.007659, 0.999831,
		0.599609, 0.800284, -0.003877,
		-0.800119, 0.599572, 0.017947,
		21.531723, 14.823750, 11.299646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.251406, 14.876161, 11.790911>,  <22.091806, 14.404050, 11.287083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.251406, 14.876161, 11.790911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.853588, 14.906155, 11.761909>,  <21.614897, 14.924151, 11.744509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.853588, 14.906155, 11.761909>,  <22.251406, 14.876161, 11.790911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.853588, 14.906155, 11.761909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071148, 0.020597, 0.997253,
		0.076272, 0.996972, -0.015150,
		-0.994545, 0.074985, -0.072504,
		21.555225, 14.928650, 11.740158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.100183, 15.485892, 12.238410>,  <22.251406, 14.876161, 11.790911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.100183, 15.485892, 12.238410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.760597, 15.283844, 12.176298>,  <21.556845, 15.162615, 12.139030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.760597, 15.283844, 12.176298>,  <22.100183, 15.485892, 12.238410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.760597, 15.283844, 12.176298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192670, 0.022250, 0.981011,
		-0.492073, 0.862762, -0.116211,
		-0.848965, -0.505120, -0.155280,
		21.505907, 15.132308, 12.129714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.636091, 15.873137, 12.525668>,  <22.100183, 15.485892, 12.238410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.636091, 15.873137, 12.525668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.459194, 15.514759, 12.509149>,  <21.353056, 15.299732, 12.499237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.459194, 15.514759, 12.509149>,  <21.636091, 15.873137, 12.525668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.459194, 15.514759, 12.509149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289248, 0.098886, 0.952133,
		-0.848975, 0.433018, -0.302881,
		-0.442241, -0.895945, -0.041298,
		21.326521, 15.245975, 12.496759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.040009, 15.955973, 12.915915>,  <21.636091, 15.873137, 12.525668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.040009, 15.955973, 12.915915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.123280, 15.564964, 12.929277>,  <21.173243, 15.330359, 12.937294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.123280, 15.564964, 12.929277>,  <21.040009, 15.955973, 12.915915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123280, 15.564964, 12.929277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338605, -0.039987, 0.940079,
		-0.917610, -0.207014, -0.339317,
		0.208178, -0.977520, 0.033404,
		21.185734, 15.271708, 12.939299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.542336, 15.708709, 13.242734>,  <21.040009, 15.955973, 12.915915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.542336, 15.708709, 13.242734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.808632, 15.413746, 13.288372>,  <20.968410, 15.236768, 13.315755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.808632, 15.413746, 13.288372>,  <20.542336, 15.708709, 13.242734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.808632, 15.413746, 13.288372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251561, -0.077849, 0.964705,
		-0.702500, -0.670946, -0.237331,
		0.665741, -0.737408, 0.114095,
		21.008354, 15.192524, 13.322600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.152809, 15.217158, 13.497198>,  <20.542336, 15.708709, 13.242734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.152809, 15.217158, 13.497198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.532467, 15.135563, 13.593122>,  <20.760262, 15.086606, 13.650678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.532467, 15.135563, 13.593122>,  <20.152809, 15.217158, 13.497198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.532467, 15.135563, 13.593122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201359, 0.192228, 0.960470,
		-0.242023, -0.959915, 0.141378,
		0.949147, -0.203988, 0.239812,
		20.817211, 15.074367, 13.665066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.162180, 14.634729, 13.984562>,  <20.152809, 15.217158, 13.497198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.162180, 14.634729, 13.984562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.477581, 14.876652, 14.029242>,  <20.666821, 15.021805, 14.056049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.477581, 14.876652, 14.029242>,  <20.162180, 14.634729, 13.984562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.477581, 14.876652, 14.029242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291772, 0.207968, 0.933605,
		0.541421, -0.768738, 0.340448,
		0.788501, 0.604806, 0.111698,
		20.714130, 15.058093, 14.062751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.246479, 14.588724, 14.613584>,  <20.162180, 14.634729, 13.984562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.246479, 14.588724, 14.613584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.492142, 14.888424, 14.514439>,  <20.639540, 15.068244, 14.454951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.492142, 14.888424, 14.514439>,  <20.246479, 14.588724, 14.613584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.492142, 14.888424, 14.514439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103666, 0.387946, 0.915834,
		0.782345, -0.536771, 0.315931,
		0.614157, 0.749250, -0.247862,
		20.676390, 15.113199, 14.440080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656874, 14.557342, 15.111262>,  <20.246479, 14.588724, 14.613584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656874, 14.557342, 15.111262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.682343, 14.929024, 14.965647>,  <20.697624, 15.152033, 14.878277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.682343, 14.929024, 14.965647>,  <20.656874, 14.557342, 15.111262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682343, 14.929024, 14.965647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002571, 0.364931, 0.931031,
		0.997968, -0.058343, 0.025624,
		0.063670, 0.929205, -0.364039,
		20.701445, 15.207786, 14.856435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.169613, 14.944567, 15.584329>,  <20.656874, 14.557342, 15.111262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.169613, 14.944567, 15.584329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.990658, 15.251331, 15.400288>,  <20.883286, 15.435390, 15.289863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.990658, 15.251331, 15.400288>,  <21.169613, 14.944567, 15.584329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.990658, 15.251331, 15.400288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016761, 0.507179, 0.861678,
		0.894184, 0.393214, -0.214051,
		-0.447386, 0.766911, -0.460102,
		20.856441, 15.481404, 15.262257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.503559, 15.559846, 15.794923>,  <21.169613, 14.944567, 15.584329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.503559, 15.559846, 15.794923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.151993, 15.699688, 15.665133>,  <20.941053, 15.783593, 15.587258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.151993, 15.699688, 15.665133>,  <21.503559, 15.559846, 15.794923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.151993, 15.699688, 15.665133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139455, 0.462200, 0.875742,
		0.456135, 0.814953, -0.357480,
		-0.878916, 0.349604, -0.324475,
		20.888319, 15.804569, 15.567790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<21.439865, 16.272116, 16.124647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.075439, 16.171375, 15.994091>,  <20.856785, 16.110931, 15.915757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.075439, 16.171375, 15.994091>,  <21.439865, 16.272116, 16.124647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.075439, 16.171375, 15.994091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403125, 0.378460, 0.833222,
		-0.086321, 0.890696, -0.446329,
		-0.911065, -0.251851, -0.326393,
		20.802120, 16.095819, 15.896173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.006908, 16.772255, 16.305122>,  <21.439865, 16.272116, 16.124647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.006908, 16.772255, 16.305122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.714588, 16.503288, 16.258152>,  <20.539196, 16.341909, 16.229971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.714588, 16.503288, 16.258152>,  <21.006908, 16.772255, 16.305122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.714588, 16.503288, 16.258152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484137, 0.389334, 0.783601,
		-0.481188, 0.629505, -0.610067,
		-0.730800, -0.672416, -0.117423,
		20.495348, 16.301563, 16.222925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325003, 17.165569, 16.281666>,  <21.006908, 16.772255, 16.305122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325003, 17.165569, 16.281666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.261009, 16.788479, 16.398743>,  <20.222612, 16.562223, 16.468988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.261009, 16.788479, 16.398743>,  <20.325003, 17.165569, 16.281666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.261009, 16.788479, 16.398743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507179, 0.332885, 0.794957,
		-0.846861, -0.021267, -0.531389,
		-0.159985, -0.942728, 0.292694,
		20.213013, 16.505661, 16.486551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.681778, 17.087555, 16.466997>,  <20.325003, 17.165569, 16.281666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.681778, 17.087555, 16.466997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.829494, 16.761852, 16.646156>,  <19.918125, 16.566431, 16.753653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.829494, 16.761852, 16.646156>,  <19.681778, 17.087555, 16.466997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.829494, 16.761852, 16.646156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534811, 0.207945, 0.818985,
		-0.760000, -0.541985, -0.358680,
		0.369292, -0.814255, 0.447898,
		19.940283, 16.517576, 16.780525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.085798, 16.865147, 16.966566>,  <19.681778, 17.087555, 16.466997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.085798, 16.865147, 16.966566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.410851, 16.666470, 17.088501>,  <19.605883, 16.547264, 17.161661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.410851, 16.666470, 17.088501>,  <19.085798, 16.865147, 16.966566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410851, 16.666470, 17.088501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255714, 0.166133, 0.952371,
		-0.523678, -0.851879, 0.007994,
		0.812632, -0.496692, 0.304837,
		19.654640, 16.517462, 17.179953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864599, 16.491175, 17.584225>,  <19.085798, 16.865147, 16.966566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864599, 16.491175, 17.584225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.263306, 16.498825, 17.615446>,  <19.502529, 16.503414, 17.634178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.263306, 16.498825, 17.615446>,  <18.864599, 16.491175, 17.584225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.263306, 16.498825, 17.615446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078285, 0.011673, 0.996863,
		0.018165, -0.999749, 0.013134,
		0.996766, 0.019136, 0.078053,
		19.562336, 16.504562, 17.638863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.935738, 16.048719, 18.120161>,  <18.864599, 16.491175, 17.584225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.935738, 16.048719, 18.120161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.287315, 16.237316, 18.091444>,  <19.498262, 16.350475, 18.074213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.287315, 16.237316, 18.091444>,  <18.935738, 16.048719, 18.120161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.287315, 16.237316, 18.091444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112594, -0.058859, 0.991896,
		0.463447, -0.879903, -0.104821,
		0.878942, 0.471494, -0.071793,
		19.550999, 16.378765, 18.069906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.358501, 15.689022, 18.494747>,  <18.935738, 16.048719, 18.120161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.358501, 15.689022, 18.494747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.518604, 16.055283, 18.479891>,  <19.614666, 16.275040, 18.470976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.518604, 16.055283, 18.479891>,  <19.358501, 15.689022, 18.494747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518604, 16.055283, 18.479891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035719, 0.024913, 0.999051,
		0.915708, -0.401202, -0.022734,
		0.400255, 0.915651, -0.037143,
		19.638681, 16.329977, 18.468748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.888342, 15.742669, 18.959173>,  <19.358501, 15.689022, 18.494747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.888342, 15.742669, 18.959173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.753365, 16.116398, 18.913261>,  <19.672379, 16.340635, 18.885714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.753365, 16.116398, 18.913261>,  <19.888342, 15.742669, 18.959173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.753365, 16.116398, 18.913261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101036, 0.085281, 0.991221,
		0.935908, 0.346077, 0.065622,
		-0.337442, 0.934322, -0.114781,
		19.652132, 16.396694, 18.878826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.133505, 16.019554, 19.520847>,  <19.888342, 15.742669, 18.959173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.133505, 16.019554, 19.520847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.923630, 16.336666, 19.396780>,  <19.797705, 16.526934, 19.322340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.923630, 16.336666, 19.396780>,  <20.133505, 16.019554, 19.520847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.923630, 16.336666, 19.396780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167013, 0.261407, 0.950670,
		0.834751, 0.550608, -0.004753,
		-0.524688, 0.792778, -0.310169,
		19.766224, 16.574499, 19.303730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361891, 16.595165, 19.925665>,  <20.133505, 16.019554, 19.520847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361891, 16.595165, 19.925665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.996037, 16.685078, 19.791256>,  <19.776524, 16.739025, 19.710611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.996037, 16.685078, 19.791256>,  <20.361891, 16.595165, 19.925665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.996037, 16.685078, 19.791256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266539, 0.289650, 0.919271,
		0.303966, 0.930363, -0.205011,
		-0.914638, 0.224783, -0.336022,
		19.721645, 16.752512, 19.690449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.226416, 17.267702, 20.158468>,  <20.361891, 16.595165, 19.925665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.226416, 17.267702, 20.158468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.862179, 17.107101, 20.119238>,  <19.643637, 17.010740, 20.095699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.862179, 17.107101, 20.119238>,  <20.226416, 17.267702, 20.158468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862179, 17.107101, 20.119238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269364, 0.396533, 0.877613,
		-0.313475, 0.825564, -0.469230,
		-0.910591, -0.401504, -0.098074,
		19.589001, 16.986650, 20.089815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.656391, 17.806601, 20.244984>,  <20.226416, 17.267702, 20.158468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.656391, 17.806601, 20.244984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.489376, 17.451309, 20.321630>,  <19.389168, 17.238134, 20.367619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.489376, 17.451309, 20.321630>,  <19.656391, 17.806601, 20.244984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489376, 17.451309, 20.321630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446822, 0.384320, 0.807867,
		-0.791210, 0.251696, -0.557347,
		-0.417536, -0.888227, 0.191615,
		19.364115, 17.184841, 20.379114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903740, 17.874342, 20.403725>,  <19.656391, 17.806601, 20.244984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.903740, 17.874342, 20.403725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.959965, 17.511509, 20.562439>,  <18.993700, 17.293808, 20.657667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.959965, 17.511509, 20.562439>,  <18.903740, 17.874342, 20.403725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.959965, 17.511509, 20.562439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706237, 0.189011, 0.682279,
		-0.693882, -0.376128, -0.614049,
		0.140562, -0.907085, 0.396787,
		19.002134, 17.239384, 20.681475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.199823, 17.749277, 20.674812>,  <18.903740, 17.874342, 20.403725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.199823, 17.749277, 20.674812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.408588, 17.440891, 20.820812>,  <18.533848, 17.255859, 20.908413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.408588, 17.440891, 20.820812>,  <18.199823, 17.749277, 20.674812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.408588, 17.440891, 20.820812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610941, -0.039237, 0.790704,
		-0.595282, -0.635670, -0.491491,
		0.521911, -0.770963, 0.364999,
		18.565163, 17.209602, 20.930311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.722130, 17.296968, 20.933125>,  <18.199823, 17.749277, 20.674812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.722130, 17.296968, 20.933125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.062611, 17.211830, 21.125023>,  <18.266899, 17.160748, 21.240162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.062611, 17.211830, 21.125023>,  <17.722130, 17.296968, 20.933125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.062611, 17.211830, 21.125023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486436, 0.023295, 0.873406,
		-0.197075, -0.976808, -0.083706,
		0.851200, -0.212844, 0.479746,
		18.317970, 17.147976, 21.268946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546888, 16.826685, 21.541315>,  <17.722130, 17.296968, 20.933125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.546888, 16.826685, 21.541315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.908337, 16.961178, 21.647463>,  <18.125206, 17.041874, 21.711151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.908337, 16.961178, 21.647463>,  <17.546888, 16.826685, 21.541315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.908337, 16.961178, 21.647463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255349, -0.074559, 0.963970,
		0.343903, -0.938823, 0.018483,
		0.903619, 0.336232, 0.265368,
		18.179422, 17.062048, 21.727074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777481, 16.416946, 22.171320>,  <17.546888, 16.826685, 21.541315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777481, 16.416946, 22.171320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.995956, 16.751938, 22.178366>,  <18.127041, 16.952932, 22.182594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.995956, 16.751938, 22.178366>,  <17.777481, 16.416946, 22.171320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.995956, 16.751938, 22.178366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185263, 0.100263, 0.977561,
		0.816920, -0.537194, 0.209916,
		0.546186, 0.837479, 0.017615,
		18.159813, 17.003181, 22.183651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.154985, 16.387201, 22.744320>,  <17.777481, 16.416946, 22.171320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.154985, 16.387201, 22.744320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.174873, 16.778706, 22.664764>,  <18.186806, 17.013609, 22.617031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.174873, 16.778706, 22.664764>,  <18.154985, 16.387201, 22.744320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.174873, 16.778706, 22.664764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250688, 0.204990, 0.946115,
		0.966790, 0.002819, 0.255556,
		0.049720, 0.978760, -0.198889,
		18.189789, 17.072334, 22.605097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.565727, 16.727516, 23.357809>,  <18.154985, 16.387201, 22.744320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.565727, 16.727516, 23.357809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.344456, 17.024593, 23.206865>,  <18.211693, 17.202839, 23.116299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.344456, 17.024593, 23.206865>,  <18.565727, 16.727516, 23.357809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.344456, 17.024593, 23.206865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278979, 0.261666, 0.923960,
		0.784961, 0.616391, 0.062448,
		-0.553179, 0.742693, -0.377358,
		18.178501, 17.247402, 23.093658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842974, 17.445307, 23.662861>,  <18.565727, 16.727516, 23.357809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842974, 17.445307, 23.662861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.466911, 17.512329, 23.544180>,  <18.241274, 17.552542, 23.472971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.466911, 17.512329, 23.544180>,  <18.842974, 17.445307, 23.662861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.466911, 17.512329, 23.544180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183705, 0.484125, 0.855497,
		0.286983, 0.858807, -0.424372,
		-0.940156, 0.167554, -0.296703,
		18.184864, 17.562595, 23.455170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.786741, 18.111952, 23.775557>,  <18.842974, 17.445307, 23.662861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.786741, 18.111952, 23.775557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.417225, 17.960148, 23.755241>,  <18.195515, 17.869064, 23.743052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.417225, 17.960148, 23.755241>,  <18.786741, 18.111952, 23.775557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.417225, 17.960148, 23.755241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273409, 0.560943, 0.781403,
		-0.268062, 0.735740, -0.621957,
		-0.923792, -0.379512, -0.050790,
		18.140087, 17.846294, 23.740004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159775, 18.613016, 23.770521>,  <18.786741, 18.111952, 23.775557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.159775, 18.613016, 23.770521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.053429, 18.268398, 23.943521>,  <17.989622, 18.061628, 24.047321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.053429, 18.268398, 23.943521>,  <18.159775, 18.613016, 23.770521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.053429, 18.268398, 23.943521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249267, 0.494828, 0.832473,
		-0.931226, 0.113516, -0.346311,
		-0.265864, -0.861545, 0.432501,
		17.973669, 18.009935, 24.073273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.517443, 18.679909, 23.922510>,  <18.159775, 18.613016, 23.770521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.517443, 18.679909, 23.922510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.678272, 18.442318, 24.201229>,  <17.774771, 18.299765, 24.368462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.678272, 18.442318, 24.201229>,  <17.517443, 18.679909, 23.922510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.678272, 18.442318, 24.201229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073453, 0.737646, 0.671180,
		-0.912656, -0.321046, 0.252960,
		0.402075, -0.593976, 0.696799,
		17.798895, 18.264126, 24.410269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.963207, 19.018126, 23.661318>,  <17.517443, 18.679909, 23.922510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.963207, 19.018126, 23.661318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.094521, 19.368763, 23.802067>,  <17.173307, 19.579145, 23.886517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.094521, 19.368763, 23.802067>,  <16.963207, 19.018126, 23.661318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094521, 19.368763, 23.802067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497984, 0.155927, -0.853053,
		-0.802647, 0.455268, -0.385342,
		0.328283, 0.876594, 0.351870,
		17.193005, 19.631741, 23.907627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801264, 19.534372, 23.239429>,  <16.963207, 19.018126, 23.661318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801264, 19.534372, 23.239429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.102810, 19.750656, 23.388733>,  <17.283737, 19.880426, 23.478315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.102810, 19.750656, 23.388733>,  <16.801264, 19.534372, 23.239429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.102810, 19.750656, 23.388733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353390, 0.145241, -0.924132,
		-0.553899, 0.828577, -0.081588,
		0.753865, 0.540708, 0.373259,
		17.328970, 19.912868, 23.500711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.888304, 20.145559, 22.784283>,  <16.801264, 19.534372, 23.239429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.888304, 20.145559, 22.784283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.225060, 20.130043, 22.999584>,  <17.427113, 20.120733, 23.128765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.225060, 20.130043, 22.999584>,  <16.888304, 20.145559, 22.784283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.225060, 20.130043, 22.999584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515201, 0.354601, -0.780273,
		-0.160598, 0.934213, 0.318520,
		0.841888, -0.038792, 0.538256,
		17.477627, 20.118406, 23.161060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235270, 20.673367, 22.564913>,  <16.888304, 20.145559, 22.784283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.235270, 20.673367, 22.564913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.530544, 20.457592, 22.726944>,  <17.707708, 20.328127, 22.824163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.530544, 20.457592, 22.726944>,  <17.235270, 20.673367, 22.564913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.530544, 20.457592, 22.726944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568349, 0.173844, -0.804213,
		0.363400, 0.823886, 0.434917,
		0.738187, -0.539435, 0.405080,
		17.752001, 20.295761, 22.848469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.854670, 21.059765, 22.538883>,  <17.235270, 20.673367, 22.564913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.854670, 21.059765, 22.538883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.944469, 20.671124, 22.568785>,  <17.998350, 20.437939, 22.586725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.944469, 20.671124, 22.568785>,  <17.854670, 21.059765, 22.538883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944469, 20.671124, 22.568785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501866, 0.049523, -0.863527,
		0.835303, 0.231377, 0.498732,
		0.224499, -0.971603, 0.074754,
		18.011820, 20.379642, 22.591211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.648977, 20.970737, 22.461388>,  <17.854670, 21.059765, 22.538883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.648977, 20.970737, 22.461388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.486557, 20.612221, 22.390074>,  <18.389105, 20.397110, 22.347286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.486557, 20.612221, 22.390074>,  <18.648977, 20.970737, 22.461388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.486557, 20.612221, 22.390074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532341, -0.073417, -0.843340,
		0.742790, -0.437346, 0.506944,
		-0.406050, -0.896291, -0.178284,
		18.364742, 20.343334, 22.336588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.168198, 20.517868, 22.288502>,  <18.648977, 20.970737, 22.461388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.168198, 20.517868, 22.288502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.848347, 20.315811, 22.158621>,  <18.656437, 20.194576, 22.080692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.848347, 20.315811, 22.158621>,  <19.168198, 20.517868, 22.288502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.848347, 20.315811, 22.158621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466753, -0.182632, -0.865325,
		0.377811, -0.843491, 0.381814,
		-0.799625, -0.505142, -0.324702,
		18.608459, 20.164268, 22.061211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435350, 19.903337, 21.880804>,  <19.168198, 20.517868, 22.288502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435350, 19.903337, 21.880804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.065632, 19.958027, 21.738262>,  <18.843801, 19.990841, 21.652737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.065632, 19.958027, 21.738262>,  <19.435350, 19.903337, 21.880804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.065632, 19.958027, 21.738262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310836, -0.272176, -0.910660,
		-0.221496, -0.952485, 0.209073,
		-0.924294, 0.136720, -0.356352,
		18.788343, 19.999044, 21.631357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.240562, 19.217230, 21.610474>,  <19.435350, 19.903337, 21.880804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.240562, 19.217230, 21.610474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.004086, 19.497513, 21.450724>,  <18.862200, 19.665684, 21.354874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.004086, 19.497513, 21.450724>,  <19.240562, 19.217230, 21.610474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.004086, 19.497513, 21.450724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222101, -0.334592, -0.915816,
		-0.775348, -0.630123, 0.042180,
		-0.591190, 0.700709, -0.399377,
		18.826729, 19.707726, 21.330912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.941921, 18.891176, 21.150751>,  <19.240562, 19.217230, 21.610474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.941921, 18.891176, 21.150751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.930080, 19.275261, 21.039669>,  <18.922976, 19.505711, 20.973021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.930080, 19.275261, 21.039669>,  <18.941921, 18.891176, 21.150751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.930080, 19.275261, 21.039669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243217, -0.262557, -0.933761,
		-0.969520, -0.095183, -0.225767,
		-0.029601, 0.960210, -0.277705,
		18.921200, 19.563324, 20.956358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520485, 18.930368, 20.590443>,  <18.941921, 18.891176, 21.150751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.520485, 18.930368, 20.590443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.739655, 19.263950, 20.564226>,  <18.871157, 19.464100, 20.548496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.739655, 19.263950, 20.564226>,  <18.520485, 18.930368, 20.590443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.739655, 19.263950, 20.564226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180272, -0.194222, -0.964251,
		-0.816873, 0.516521, -0.256757,
		0.547923, 0.833957, -0.065541,
		18.904032, 19.514137, 20.544563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567163, 19.016722, 19.848877>,  <18.520485, 18.930368, 20.590443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567163, 19.016722, 19.848877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.843555, 19.266571, 19.994421>,  <19.009390, 19.416481, 20.081747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.843555, 19.266571, 19.994421>,  <18.567163, 19.016722, 19.848877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.843555, 19.266571, 19.994421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471656, -0.008117, -0.881745,
		-0.547805, 0.780884, -0.300215,
		0.690978, 0.624623, 0.363862,
		19.050848, 19.453959, 20.103580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.580456, 19.471426, 19.316792>,  <18.567163, 19.016722, 19.848877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.580456, 19.471426, 19.316792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.928764, 19.474655, 19.513441>,  <19.137749, 19.476593, 19.631432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.928764, 19.474655, 19.513441>,  <18.580456, 19.471426, 19.316792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928764, 19.474655, 19.513441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491683, -0.020141, -0.870541,
		0.002873, 0.999765, -0.021508,
		0.870769, 0.008074, 0.491625,
		19.189995, 19.477077, 19.660929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.924690, 19.868418, 18.878544>,  <18.580456, 19.471426, 19.316792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.924690, 19.868418, 18.878544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.200001, 19.686581, 19.104685>,  <19.365187, 19.577478, 19.240370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.200001, 19.686581, 19.104685>,  <18.924690, 19.868418, 18.878544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200001, 19.686581, 19.104685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593267, -0.095794, -0.799286,
		0.417508, 0.885533, 0.203763,
		0.688274, -0.454594, 0.565352,
		19.406483, 19.550203, 19.274290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620432, 20.102678, 18.692446>,  <18.924690, 19.868418, 18.878544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620432, 20.102678, 18.692446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.705299, 19.757126, 18.875179>,  <19.756220, 19.549795, 18.984819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.705299, 19.757126, 18.875179>,  <19.620432, 20.102678, 18.692446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.705299, 19.757126, 18.875179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734226, -0.167580, -0.657898,
		0.644900, 0.475006, 0.598727,
		0.212170, -0.863879, 0.456834,
		19.768951, 19.497963, 19.012230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.344835, 20.092766, 19.032063>,  <19.620432, 20.102678, 18.692446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.344835, 20.092766, 19.032063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.238884, 19.721100, 18.928921>,  <20.175314, 19.498100, 18.867037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.238884, 19.721100, 18.928921>,  <20.344835, 20.092766, 19.032063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.238884, 19.721100, 18.928921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884204, -0.127346, -0.449407,
		0.384738, -0.347033, 0.855304,
		-0.264879, -0.929167, -0.257853,
		20.159420, 19.442350, 18.851564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.939438, 19.780817, 18.852833>,  <20.344835, 20.092766, 19.032063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.939438, 19.780817, 18.852833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.703644, 19.478519, 18.738739>,  <20.562168, 19.297140, 18.670282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.703644, 19.478519, 18.738739>,  <20.939438, 19.780817, 18.852833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703644, 19.478519, 18.738739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727466, -0.343178, -0.594157,
		0.351145, -0.557744, 0.752076,
		-0.589483, -0.755745, -0.285235,
		20.526798, 19.251797, 18.653168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.414148, 19.188686, 18.815876>,  <20.939438, 19.780817, 18.852833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.414148, 19.188686, 18.815876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.089897, 19.109547, 18.595427>,  <20.895346, 19.062063, 18.463158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.089897, 19.109547, 18.595427>,  <21.414148, 19.188686, 18.815876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.089897, 19.109547, 18.595427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582928, -0.361816, -0.727520,
		-0.055465, -0.911013, 0.408631,
		-0.810629, -0.197851, -0.551123,
		20.846708, 19.050192, 18.430090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.680145, 18.646381, 18.499399>,  <21.414148, 19.188686, 18.815876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.680145, 18.646381, 18.499399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.355484, 18.757504, 18.293859>,  <21.160686, 18.824177, 18.170536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.355484, 18.757504, 18.293859>,  <21.680145, 18.646381, 18.499399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.355484, 18.757504, 18.293859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429300, -0.312856, -0.847244,
		-0.396131, -0.908265, 0.134668,
		-0.811654, 0.277807, -0.513850,
		21.111988, 18.840845, 18.139704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.423244, 18.066719, 18.158251>,  <21.680145, 18.646381, 18.499399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.423244, 18.066719, 18.158251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.325840, 18.388878, 17.942089>,  <21.267397, 18.582172, 17.812391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.325840, 18.388878, 17.942089>,  <21.423244, 18.066719, 18.158251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.325840, 18.388878, 17.942089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503728, -0.371116, -0.780084,
		-0.828830, -0.462177, -0.315330,
		-0.243513, 0.805397, -0.540404,
		21.252787, 18.630497, 17.779968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.821037, 14.186549, 13.420279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.559845, 14.487793, 13.388176>,  <21.403130, 14.668539, 13.368915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.559845, 14.487793, 13.388176>,  <21.821037, 14.186549, 13.420279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559845, 14.487793, 13.388176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149158, 0.023983, -0.988523,
		-0.742541, -0.657458, -0.127993,
		-0.652982, 0.753110, -0.080256,
		21.363951, 14.713726, 13.364100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396502, 13.967686, 12.861397>,  <21.821037, 14.186549, 13.420279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.396502, 13.967686, 12.861397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.321857, 14.359352, 12.893429>,  <21.277071, 14.594352, 12.912648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.321857, 14.359352, 12.893429>,  <21.396502, 13.967686, 12.861397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.321857, 14.359352, 12.893429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179152, 0.046230, -0.982735,
		-0.965962, -0.197732, 0.166792,
		-0.186608, 0.979165, 0.080080,
		21.265875, 14.653102, 12.917453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.700039, 14.110037, 12.543478>,  <21.396502, 13.967686, 12.861397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.700039, 14.110037, 12.543478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.914246, 14.446968, 12.519138>,  <21.042770, 14.649127, 12.504535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.914246, 14.446968, 12.519138>,  <20.700039, 14.110037, 12.543478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.914246, 14.446968, 12.519138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148295, 0.022858, -0.988679,
		-0.831401, 0.538480, 0.137154,
		0.535519, 0.842328, -0.060850,
		21.074902, 14.699667, 12.500883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.448742, 14.415085, 11.962818>,  <20.700039, 14.110037, 12.543478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.448742, 14.415085, 11.962818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.774269, 14.642139, 12.012597>,  <20.969585, 14.778372, 12.042464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.774269, 14.642139, 12.012597>,  <20.448742, 14.415085, 11.962818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.774269, 14.642139, 12.012597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078553, 0.319644, -0.944276,
		-0.575784, 0.758695, 0.304722,
		0.813820, 0.567636, 0.124448,
		21.018415, 14.812430, 12.049932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.247673, 14.994179, 11.645133>,  <20.448742, 14.415085, 11.962818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.247673, 14.994179, 11.645133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.646954, 14.998371, 11.668748>,  <20.886522, 15.000887, 11.682917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.646954, 14.998371, 11.668748>,  <20.247673, 14.994179, 11.645133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.646954, 14.998371, 11.668748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052347, 0.327817, -0.943290,
		-0.029240, 0.944683, 0.326678,
		0.998201, 0.010481, 0.059036,
		20.946413, 15.001515, 11.686459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.496181, 15.577616, 11.310548>,  <20.247673, 14.994179, 11.645133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.496181, 15.577616, 11.310548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.830154, 15.357544, 11.305053>,  <21.030539, 15.225500, 11.301756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.830154, 15.357544, 11.305053>,  <20.496181, 15.577616, 11.310548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830154, 15.357544, 11.305053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138567, 0.234310, -0.962236,
		0.532622, 0.801499, 0.271870,
		0.834933, -0.550181, -0.013738,
		21.080635, 15.192490, 11.300932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.936613, 15.993059, 11.005381>,  <20.496181, 15.577616, 11.310548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.936613, 15.993059, 11.005381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.098598, 15.631840, 10.948101>,  <21.195789, 15.415108, 10.913733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.098598, 15.631840, 10.948101>,  <20.936613, 15.993059, 11.005381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.098598, 15.631840, 10.948101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227239, 0.251107, -0.940908,
		0.885644, 0.348495, 0.306898,
		0.404966, -0.903049, -0.143199,
		21.220089, 15.360925, 10.905141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.562773, 16.176062, 10.744027>,  <20.936613, 15.993059, 11.005381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.562773, 16.176062, 10.744027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.516521, 15.796535, 10.626463>,  <21.488771, 15.568820, 10.555924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.516521, 15.796535, 10.626463>,  <21.562773, 16.176062, 10.744027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.516521, 15.796535, 10.626463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161673, 0.273972, -0.948051,
		0.980047, -0.157139, 0.121718,
		-0.115629, -0.948814, -0.293910,
		21.481833, 15.511891, 10.538290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.143862, 16.084034, 10.376022>,  <21.562773, 16.176062, 10.744027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.143862, 16.084034, 10.376022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.909546, 15.783070, 10.255539>,  <21.768955, 15.602490, 10.183249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.909546, 15.783070, 10.255539>,  <22.143862, 16.084034, 10.376022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.909546, 15.783070, 10.255539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067280, 0.325220, -0.943242,
		0.807665, -0.572807, -0.139889,
		-0.585790, -0.752412, -0.301207,
		21.733809, 15.557346, 10.165176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.436605, 15.719593, 9.838959>,  <22.143862, 16.084034, 10.376022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.436605, 15.719593, 9.838959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.057072, 15.604759, 9.786350>,  <21.829351, 15.535859, 9.754785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.057072, 15.604759, 9.786350>,  <22.436605, 15.719593, 9.838959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.057072, 15.604759, 9.786350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094952, 0.137846, -0.985892,
		0.301164, -0.947935, -0.103534,
		-0.948833, -0.287085, -0.131522,
		21.772421, 15.518634, 9.746894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.368622, 15.428506, 9.100122>,  <22.436605, 15.719593, 9.838959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.368622, 15.428506, 9.100122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.983227, 15.508007, 9.171891>,  <21.751989, 15.555708, 9.214952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.983227, 15.508007, 9.171891>,  <22.368622, 15.428506, 9.100122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.983227, 15.508007, 9.171891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090874, 0.387593, -0.917341,
		-0.251865, -0.900150, -0.355379,
		-0.963486, 0.198752, 0.179421,
		21.694181, 15.567633, 9.225718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.919279, 15.263434, 8.444668>,  <22.368622, 15.428506, 9.100122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.919279, 15.263434, 8.444668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.714756, 15.539509, 8.649493>,  <21.592043, 15.705153, 8.772388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.714756, 15.539509, 8.649493>,  <21.919279, 15.263434, 8.444668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.714756, 15.539509, 8.649493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151549, 0.514089, -0.844242,
		-0.845931, -0.509269, -0.158260,
		-0.511306, 0.690187, 0.512063,
		21.561363, 15.746565, 8.803112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.333126, 15.432922, 8.112453>,  <21.919279, 15.263434, 8.444668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.333126, 15.432922, 8.112453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.395569, 15.756027, 8.339838>,  <21.433035, 15.949890, 8.476269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.395569, 15.756027, 8.339838>,  <21.333126, 15.432922, 8.112453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.395569, 15.756027, 8.339838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180792, 0.589163, -0.787528,
		-0.971053, 0.020167, 0.238011,
		0.156109, 0.807762, 0.568463,
		21.442402, 15.998356, 8.510377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.838301, 15.950735, 8.075827>,  <21.333126, 15.432922, 8.112453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.838301, 15.950735, 8.075827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.185585, 16.138481, 8.140207>,  <21.393955, 16.251129, 8.178836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.185585, 16.138481, 8.140207>,  <20.838301, 15.950735, 8.075827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.185585, 16.138481, 8.140207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234164, 0.673552, -0.701067,
		-0.437465, 0.570986, 0.694694,
		0.868212, 0.469364, 0.160951,
		21.446049, 16.279291, 8.188493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.673399, 15.497820, 7.512119>,  <20.838301, 15.950735, 8.075827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.673399, 15.497820, 7.512119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.286919, 15.415661, 7.449807>,  <20.055031, 15.366365, 7.412420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.286919, 15.415661, 7.449807>,  <20.673399, 15.497820, 7.512119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286919, 15.415661, 7.449807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238168, 0.479998, 0.844321,
		-0.098649, 0.852886, -0.512694,
		-0.966201, -0.205399, -0.155779,
		19.997059, 15.354041, 7.403073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361683, 16.085932, 7.251545>,  <20.673399, 15.497820, 7.512119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361683, 16.085932, 7.251545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.067642, 15.866516, 7.410909>,  <19.891216, 15.734867, 7.506527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.067642, 15.866516, 7.410909>,  <20.361683, 16.085932, 7.251545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.067642, 15.866516, 7.410909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140506, 0.698171, 0.702008,
		-0.663235, 0.460071, -0.590301,
		-0.735104, -0.548537, 0.398408,
		19.847111, 15.701955, 7.530431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728468, 16.492094, 7.179403>,  <20.361683, 16.085932, 7.251545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.728468, 16.492094, 7.179403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.646389, 16.234100, 7.473855>,  <19.597141, 16.079304, 7.650527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.646389, 16.234100, 7.473855>,  <19.728468, 16.492094, 7.179403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.646389, 16.234100, 7.473855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474073, 0.723513, 0.501781,
		-0.856241, -0.246016, -0.454233,
		-0.205198, -0.644985, 0.736130,
		19.584829, 16.040606, 7.694694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.948448, 16.607149, 7.401791>,  <19.728468, 16.492094, 7.179403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.948448, 16.607149, 7.401791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.107746, 16.397999, 7.703255>,  <19.203325, 16.272509, 7.884133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.107746, 16.397999, 7.703255>,  <18.948448, 16.607149, 7.401791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.107746, 16.397999, 7.703255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468807, 0.590190, 0.657188,
		-0.788431, -0.615041, -0.010089,
		0.398243, -0.522877, 0.753659,
		19.227219, 16.241135, 7.929352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407831, 16.569725, 7.947324>,  <18.948448, 16.607149, 7.401791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407831, 16.569725, 7.947324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.738815, 16.491085, 8.157719>,  <18.937405, 16.443901, 8.283956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.738815, 16.491085, 8.157719>,  <18.407831, 16.569725, 7.947324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.738815, 16.491085, 8.157719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318630, 0.606908, 0.728105,
		-0.462372, -0.770072, 0.439548,
		0.827458, -0.196602, 0.525986,
		18.987053, 16.432104, 8.315515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168730, 16.414433, 8.628996>,  <18.407831, 16.569725, 7.947324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168730, 16.414433, 8.628996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.560688, 16.479328, 8.675447>,  <18.795862, 16.518265, 8.703317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.560688, 16.479328, 8.675447>,  <18.168730, 16.414433, 8.628996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.560688, 16.479328, 8.675447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182976, 0.498705, 0.847239,
		0.079542, -0.851453, 0.518364,
		0.979895, 0.162239, 0.116127,
		18.854656, 16.528000, 8.710284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.402046, 16.082138, 9.209681>,  <18.168730, 16.414433, 8.628996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.402046, 16.082138, 9.209681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.679790, 16.361008, 9.138340>,  <18.846437, 16.528330, 9.095535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.679790, 16.361008, 9.138340>,  <18.402046, 16.082138, 9.209681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.679790, 16.361008, 9.138340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181180, 0.409222, 0.894266,
		0.696445, -0.588630, 0.410462,
		0.694361, 0.697175, -0.178353,
		18.888100, 16.570160, 9.084834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.764587, 16.084412, 9.838335>,  <18.402046, 16.082138, 9.209681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.764587, 16.084412, 9.838335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.861744, 16.440708, 9.684670>,  <18.920038, 16.654486, 9.592471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.861744, 16.440708, 9.684670>,  <18.764587, 16.084412, 9.838335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.861744, 16.440708, 9.684670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019805, 0.391386, 0.920014,
		0.969851, -0.231072, 0.077422,
		0.242891, 0.890743, -0.384163,
		18.934610, 16.707932, 9.569422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.240440, 16.404102, 10.244922>,  <18.764587, 16.084412, 9.838335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.240440, 16.404102, 10.244922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.054405, 16.704136, 10.056851>,  <18.942783, 16.884155, 9.944009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.054405, 16.704136, 10.056851>,  <19.240440, 16.404102, 10.244922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.054405, 16.704136, 10.056851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218738, 0.417276, 0.882062,
		0.857815, 0.513083, -0.029999,
		-0.465089, 0.750084, -0.470176,
		18.914879, 16.929161, 9.915798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.625849, 17.016487, 10.442732>,  <19.240440, 16.404102, 10.244922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.625849, 17.016487, 10.442732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.275623, 17.153267, 10.306225>,  <19.065489, 17.235334, 10.224320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.275623, 17.153267, 10.306225>,  <19.625849, 17.016487, 10.442732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.275623, 17.153267, 10.306225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149132, 0.480597, 0.864168,
		0.459513, 0.807526, -0.369797,
		-0.875561, 0.341948, -0.341268,
		19.012955, 17.255852, 10.203844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626671, 17.733919, 10.759947>,  <19.625849, 17.016487, 10.442732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.626671, 17.733919, 10.759947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.255989, 17.656731, 10.630961>,  <19.033581, 17.610418, 10.553570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.255989, 17.656731, 10.630961>,  <19.626671, 17.733919, 10.759947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.255989, 17.656731, 10.630961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373909, 0.387659, 0.842563,
		-0.037583, 0.901378, -0.431398,
		-0.926704, -0.192970, -0.322464,
		18.977978, 17.598841, 10.534223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.272455, 18.380995, 10.859234>,  <19.626671, 17.733919, 10.759947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.272455, 18.380995, 10.859234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.014587, 18.075218, 10.861451>,  <18.859867, 17.891752, 10.862782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.014587, 18.075218, 10.861451>,  <19.272455, 18.380995, 10.859234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.014587, 18.075218, 10.861451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435592, 0.373282, 0.819097,
		-0.628222, 0.525631, -0.573628,
		-0.644668, -0.764442, 0.005543,
		18.821186, 17.845886, 10.863114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.693987, 18.662819, 10.903039>,  <19.272455, 18.380995, 10.859234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.693987, 18.662819, 10.903039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.631561, 18.286800, 11.024336>,  <18.594107, 18.061190, 11.097114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.631561, 18.286800, 11.024336>,  <18.693987, 18.662819, 10.903039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.631561, 18.286800, 11.024336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279888, 0.336506, 0.899125,
		-0.947263, 0.055445, -0.315624,
		-0.156062, -0.940048, 0.303242,
		18.584743, 18.004786, 11.115309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059090, 18.670071, 11.320538>,  <18.693987, 18.662819, 10.903039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.059090, 18.670071, 11.320538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.252769, 18.333084, 11.415025>,  <18.368977, 18.130892, 11.471717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.252769, 18.333084, 11.415025>,  <18.059090, 18.670071, 11.320538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252769, 18.333084, 11.415025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329365, 0.074617, 0.941250,
		-0.810599, -0.533554, -0.241349,
		0.484199, -0.842468, 0.236218,
		18.398029, 18.080343, 11.485890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286840, 18.620243, 11.107697>,  <18.059090, 18.670071, 11.320538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286840, 18.620243, 11.107697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.132614, 18.989063, 11.094056>,  <17.040079, 19.210356, 11.085872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.132614, 18.989063, 11.094056>,  <17.286840, 18.620243, 11.107697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.132614, 18.989063, 11.094056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400301, 0.133863, -0.906554,
		-0.831323, -0.363187, -0.420711,
		-0.385566, 0.922050, -0.034101,
		17.016945, 19.265678, 11.083826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950256, 18.723070, 10.423428>,  <17.286840, 18.620243, 11.107697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.950256, 18.723070, 10.423428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.011280, 19.096245, 10.553874>,  <17.047895, 19.320150, 10.632142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.011280, 19.096245, 10.553874>,  <16.950256, 18.723070, 10.423428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.011280, 19.096245, 10.553874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536190, 0.199057, -0.820291,
		-0.830196, 0.300004, -0.469864,
		0.152561, 0.932938, 0.326115,
		17.057049, 19.376127, 10.651709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798056, 19.126577, 9.797918>,  <16.950256, 18.723070, 10.423428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.798056, 19.126577, 9.797918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.031693, 19.341808, 10.041002>,  <17.171875, 19.470947, 10.186852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.031693, 19.341808, 10.041002>,  <16.798056, 19.126577, 9.797918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.031693, 19.341808, 10.041002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565693, 0.267065, -0.780171,
		-0.582091, 0.799468, -0.148397,
		0.584090, 0.538078, 0.607710,
		17.206919, 19.503231, 10.223315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.855621, 19.866730, 9.521063>,  <16.798056, 19.126577, 9.797918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.855621, 19.866730, 9.521063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.176521, 19.798431, 9.749882>,  <17.369062, 19.757452, 9.887173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.176521, 19.798431, 9.749882>,  <16.855621, 19.866730, 9.521063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.176521, 19.798431, 9.749882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595764, 0.167707, -0.785455,
		0.038179, 0.970937, 0.236269,
		0.802252, -0.170748, 0.572047,
		17.417196, 19.747208, 9.921495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284843, 20.414257, 9.397109>,  <16.855621, 19.866730, 9.521063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.284843, 20.414257, 9.397109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.553120, 20.176033, 9.573961>,  <17.714087, 20.033098, 9.680073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.553120, 20.176033, 9.573961>,  <17.284843, 20.414257, 9.397109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553120, 20.176033, 9.573961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622589, 0.128009, -0.772008,
		0.403182, 0.793045, 0.456645,
		0.670691, -0.595561, 0.442131,
		17.754328, 19.997364, 9.706600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.904848, 20.725765, 9.473282>,  <17.284843, 20.414257, 9.397109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.904848, 20.725765, 9.473282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.035667, 20.347992, 9.486465>,  <18.114159, 20.121328, 9.494375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.035667, 20.347992, 9.486465>,  <17.904848, 20.725765, 9.473282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035667, 20.347992, 9.486465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811952, 0.262986, -0.521125,
		0.483500, 0.197195, 0.852843,
		0.327050, -0.944432, 0.032959,
		18.133781, 20.064663, 9.496353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595440, 20.827280, 9.743632>,  <17.904848, 20.725765, 9.473282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.595440, 20.827280, 9.743632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.582802, 20.464046, 9.576593>,  <18.575220, 20.246107, 9.476370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.582802, 20.464046, 9.576593>,  <18.595440, 20.827280, 9.743632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582802, 20.464046, 9.576593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958006, 0.091623, -0.271717,
		0.285003, -0.408645, 0.867054,
		-0.031593, -0.908083, -0.417597,
		18.573324, 20.191622, 9.451314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183271, 20.533741, 9.866347>,  <18.595440, 20.827280, 9.743632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183271, 20.533741, 9.866347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.058571, 20.351608, 9.532764>,  <18.983751, 20.242329, 9.332615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.058571, 20.351608, 9.532764>,  <19.183271, 20.533741, 9.866347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.058571, 20.351608, 9.532764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904843, 0.125568, -0.406808,
		0.289950, -0.881424, 0.372856,
		-0.311752, -0.455330, -0.833958,
		18.965046, 20.215010, 9.282577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665491, 19.975403, 9.819513>,  <19.183271, 20.533741, 9.866347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.665491, 19.975403, 9.819513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.523323, 20.069447, 9.457652>,  <19.438023, 20.125874, 9.240535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.523323, 20.069447, 9.457652>,  <19.665491, 19.975403, 9.819513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.523323, 20.069447, 9.457652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920332, -0.081058, -0.382647,
		-0.163294, -0.968583, -0.187571,
		-0.355421, 0.235111, -0.904654,
		19.416697, 20.139980, 9.186255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.241459, 19.822216, 9.561887>,  <19.665491, 19.975403, 9.819513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.241459, 19.822216, 9.561887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.050354, 19.976181, 9.246017>,  <19.935690, 20.068560, 9.056496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.050354, 19.976181, 9.246017>,  <20.241459, 19.822216, 9.561887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.050354, 19.976181, 9.246017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856931, 0.006289, -0.515392,
		-0.193415, -0.922931, -0.332849,
		-0.477764, 0.384913, -0.789672,
		19.907024, 20.091656, 9.009115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445223, 19.447685, 9.025768>,  <20.241459, 19.822216, 9.561887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.445223, 19.447685, 9.025768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.317421, 19.795593, 8.875349>,  <20.240740, 20.004339, 8.785097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.317421, 19.795593, 8.875349>,  <20.445223, 19.447685, 9.025768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.317421, 19.795593, 8.875349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825196, 0.060314, -0.561618,
		-0.465798, -0.489754, -0.737003,
		-0.319506, 0.869772, -0.376048,
		20.221569, 20.056524, 8.762534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.408695, 19.455034, 8.184619>,  <20.445223, 19.447685, 9.025768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.408695, 19.455034, 8.184619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.484489, 19.819962, 8.329819>,  <20.529966, 20.038918, 8.416939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.484489, 19.819962, 8.329819>,  <20.408695, 19.455034, 8.184619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.484489, 19.819962, 8.329819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833144, 0.046241, -0.551120,
		-0.519583, 0.406861, -0.751331,
		0.189487, 0.912319, 0.363000,
		20.541336, 20.093657, 8.438719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.741838, 18.889868, 13.832845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.867721, 19.231766, 13.997948>,  <14.943251, 19.436905, 14.097010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.867721, 19.231766, 13.997948>,  <14.741838, 18.889868, 13.832845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.867721, 19.231766, 13.997948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382237, 0.283913, -0.879368,
		-0.868823, 0.434515, -0.237366,
		0.314708, 0.854745, 0.412758,
		14.962133, 19.488190, 14.121775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538149, 19.503611, 13.410696>,  <14.741838, 18.889868, 13.832845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.538149, 19.503611, 13.410696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875005, 19.590031, 13.608332>,  <15.077118, 19.641882, 13.726913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875005, 19.590031, 13.608332>,  <14.538149, 19.503611, 13.410696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.875005, 19.590031, 13.608332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411357, 0.335080, -0.847648,
		-0.348692, 0.917085, 0.193311,
		0.842140, 0.216048, 0.494089,
		15.127646, 19.654844, 13.756558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.730980, 20.116556, 13.247622>,  <14.538149, 19.503611, 13.410696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.730980, 20.116556, 13.247622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080674, 19.955631, 13.356327>,  <15.290491, 19.859076, 13.421551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080674, 19.955631, 13.356327>,  <14.730980, 20.116556, 13.247622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080674, 19.955631, 13.356327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360794, 0.163802, -0.918148,
		0.324867, 0.900729, 0.288354,
		0.874236, -0.402313, 0.271764,
		15.342945, 19.834938, 13.437856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.252668, 20.600809, 12.957032>,  <14.730980, 20.116556, 13.247622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.252668, 20.600809, 12.957032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442327, 20.260769, 13.048695>,  <15.556121, 20.056744, 13.103692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442327, 20.260769, 13.048695>,  <15.252668, 20.600809, 12.957032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442327, 20.260769, 13.048695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512139, 0.054585, -0.857166,
		0.716171, 0.523781, 0.461252,
		0.474144, -0.850103, 0.229156,
		15.584570, 20.005737, 13.117441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.930173, 20.675798, 12.636392>,  <15.252668, 20.600809, 12.957032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.930173, 20.675798, 12.636392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913646, 20.288483, 12.734950>,  <15.903729, 20.056093, 12.794085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913646, 20.288483, 12.734950>,  <15.930173, 20.675798, 12.636392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913646, 20.288483, 12.734950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602683, -0.220844, -0.766812,
		0.796910, 0.116815, 0.592696,
		-0.041318, -0.968288, 0.246396,
		15.901250, 19.997995, 12.808868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.573002, 20.485653, 12.569383>,  <15.930173, 20.675798, 12.636392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.573002, 20.485653, 12.569383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407352, 20.123512, 12.531781>,  <16.307962, 19.906227, 12.509220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407352, 20.123512, 12.531781>,  <16.573002, 20.485653, 12.569383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.407352, 20.123512, 12.531781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576340, -0.180880, -0.796940,
		0.704510, -0.384209, 0.596699,
		-0.414123, -0.905354, -0.094003,
		16.283115, 19.851906, 12.503580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095762, 19.979643, 12.515913>,  <16.573002, 20.485653, 12.569383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.095762, 19.979643, 12.515913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.767460, 19.828686, 12.344360>,  <16.570478, 19.738111, 12.241429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.767460, 19.828686, 12.344360>,  <17.095762, 19.979643, 12.515913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.767460, 19.828686, 12.344360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503125, -0.121896, -0.855574,
		0.270608, -0.917996, 0.289922,
		-0.820754, -0.377392, -0.428881,
		16.521235, 19.715467, 12.215696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.354235, 19.395485, 12.247704>,  <17.095762, 19.979643, 12.515913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.354235, 19.395485, 12.247704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.014194, 19.452682, 12.044969>,  <16.810171, 19.487001, 11.923327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.014194, 19.452682, 12.044969>,  <17.354235, 19.395485, 12.247704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.014194, 19.452682, 12.044969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448094, -0.309208, -0.838810,
		-0.276659, -0.940183, 0.198785,
		-0.850101, 0.142990, -0.506836,
		16.759165, 19.495581, 11.892918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338091, 18.870041, 11.800514>,  <17.354235, 19.395485, 12.247704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338091, 18.870041, 11.800514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.072010, 19.123589, 11.642671>,  <16.912361, 19.275717, 11.547965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.072010, 19.123589, 11.642671>,  <17.338091, 18.870041, 11.800514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.072010, 19.123589, 11.642671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352949, -0.198780, -0.914283,
		-0.657978, -0.747458, -0.091495,
		-0.665201, 0.633871, -0.394608,
		16.872450, 19.313749, 11.524288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449358, 18.164890, 11.661783>,  <17.338091, 18.870041, 11.800514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449358, 18.164890, 11.661783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.818172, 18.053429, 11.769261>,  <18.039461, 17.986551, 11.833749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.818172, 18.053429, 11.769261>,  <17.449358, 18.164890, 11.661783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.818172, 18.053429, 11.769261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285046, -0.019111, 0.958323,
		-0.261908, -0.960201, -0.097051,
		0.922037, -0.278656, 0.268696,
		18.094784, 17.969831, 11.849871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325388, 17.583775, 11.942593>,  <17.449358, 18.164890, 11.661783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325388, 17.583775, 11.942593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666882, 17.704712, 12.112167>,  <17.871778, 17.777275, 12.213912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666882, 17.704712, 12.112167>,  <17.325388, 17.583775, 11.942593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.666882, 17.704712, 12.112167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410720, -0.109442, 0.905170,
		0.320069, -0.946895, 0.030744,
		0.853736, 0.302344, 0.423937,
		17.923002, 17.795414, 12.239348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299862, 17.121883, 12.542517>,  <17.325388, 17.583775, 11.942593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.299862, 17.121883, 12.542517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574181, 17.401104, 12.624888>,  <17.738771, 17.568636, 12.674312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574181, 17.401104, 12.624888>,  <17.299862, 17.121883, 12.542517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.574181, 17.401104, 12.624888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224941, -0.065798, 0.972148,
		0.692161, -0.713016, 0.111897,
		0.685795, 0.698053, 0.205929,
		17.779919, 17.610519, 12.686667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.705368, 16.837009, 13.083181>,  <17.299862, 17.121883, 12.542517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.705368, 16.837009, 13.083181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759411, 17.231823, 13.117855>,  <17.791836, 17.468710, 13.138659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759411, 17.231823, 13.117855>,  <17.705368, 16.837009, 13.083181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759411, 17.231823, 13.117855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045703, -0.081184, 0.995651,
		0.989776, -0.138482, 0.034142,
		0.135108, 0.987032, 0.086683,
		17.799944, 17.527933, 13.143860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.198254, 16.851746, 13.666372>,  <17.705368, 16.837009, 13.083181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.198254, 16.851746, 13.666372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038811, 17.215767, 13.620920>,  <17.943144, 17.434179, 13.593649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038811, 17.215767, 13.620920>,  <18.198254, 16.851746, 13.666372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038811, 17.215767, 13.620920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049097, 0.144894, 0.988228,
		0.915806, 0.388337, -0.102437,
		-0.398608, 0.910055, -0.113629,
		17.919228, 17.488783, 13.586831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709311, 17.290426, 13.929551>,  <18.198254, 16.851746, 13.666372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.709311, 17.290426, 13.929551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.357426, 17.479084, 13.953747>,  <18.146296, 17.592279, 13.968264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.357426, 17.479084, 13.953747>,  <18.709311, 17.290426, 13.929551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.357426, 17.479084, 13.953747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139584, 0.134536, 0.981028,
		0.454558, 0.871466, -0.184187,
		-0.879712, 0.471644, 0.060488,
		18.093512, 17.620577, 13.971893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753248, 17.872042, 14.342744>,  <18.709311, 17.290426, 13.929551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.753248, 17.872042, 14.342744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366707, 17.769379, 14.349497>,  <18.134781, 17.707781, 14.353549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366707, 17.769379, 14.349497>,  <18.753248, 17.872042, 14.342744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.366707, 17.769379, 14.349497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049905, -0.122704, 0.991188,
		-0.252323, 0.958682, 0.131384,
		-0.966355, -0.256656, 0.016882,
		18.076799, 17.692383, 14.354562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449818, 18.222971, 14.910530>,  <18.753248, 17.872042, 14.342744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449818, 18.222971, 14.910530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.182167, 17.933170, 14.844355>,  <18.021576, 17.759291, 14.804649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.182167, 17.933170, 14.844355>,  <18.449818, 18.222971, 14.910530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.182167, 17.933170, 14.844355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039494, -0.187636, 0.981444,
		-0.742098, 0.663244, 0.096939,
		-0.669126, -0.724500, -0.165439,
		17.981430, 17.715820, 14.794724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.888367, 18.407822, 15.358498>,  <18.449818, 18.222971, 14.910530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.888367, 18.407822, 15.358498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.834988, 18.019463, 15.278950>,  <17.802959, 17.786448, 15.231221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.834988, 18.019463, 15.278950>,  <17.888367, 18.407822, 15.358498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.834988, 18.019463, 15.278950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363656, -0.138696, 0.921150,
		-0.921925, 0.195245, -0.334565,
		-0.133447, -0.970898, -0.198870,
		17.794954, 17.728193, 15.219289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093292, 18.163139, 15.417919>,  <17.888367, 18.407822, 15.358498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093292, 18.163139, 15.417919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.357941, 17.873142, 15.494488>,  <17.516729, 17.699144, 15.540429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.357941, 17.873142, 15.494488>,  <17.093292, 18.163139, 15.417919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.357941, 17.873142, 15.494488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418249, -0.144936, 0.896695,
		-0.622353, -0.673335, -0.399120,
		0.661622, -0.724992, 0.191420,
		17.556427, 17.655645, 15.551914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630732, 17.704620, 15.809701>,  <17.093292, 18.163139, 15.417919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630732, 17.704620, 15.809701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009621, 17.600399, 15.884405>,  <17.236954, 17.537867, 15.929228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009621, 17.600399, 15.884405>,  <16.630732, 17.704620, 15.809701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.009621, 17.600399, 15.884405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250087, -0.236128, 0.938989,
		-0.200549, -0.936141, -0.288826,
		0.947225, -0.260545, 0.186762,
		17.293787, 17.522234, 15.940433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507399, 17.232378, 16.369831>,  <16.630732, 17.704620, 15.809701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507399, 17.232378, 16.369831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.903774, 17.278748, 16.396973>,  <17.141600, 17.306570, 16.413258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.903774, 17.278748, 16.396973>,  <16.507399, 17.232378, 16.369831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.903774, 17.278748, 16.396973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045418, -0.186247, 0.981453,
		0.126412, -0.975640, -0.179294,
		0.990938, 0.115924, 0.067855,
		17.201056, 17.313524, 16.417330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.633190, 16.655748, 16.665895>,  <16.507399, 17.232378, 16.369831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.633190, 16.655748, 16.665895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949337, 16.890907, 16.734827>,  <17.139025, 17.032001, 16.776186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949337, 16.890907, 16.734827>,  <16.633190, 16.655748, 16.665895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949337, 16.890907, 16.734827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029784, -0.244087, 0.969296,
		0.611908, -0.771233, -0.175408,
		0.790368, 0.587896, 0.172329,
		17.186447, 17.067276, 16.786526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.176430, 16.236290, 16.999493>,  <16.633190, 16.655748, 16.665895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.176430, 16.236290, 16.999493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.237652, 16.622337, 17.084457>,  <17.274385, 16.853966, 17.135437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.237652, 16.622337, 17.084457>,  <17.176430, 16.236290, 16.999493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.237652, 16.622337, 17.084457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005925, -0.215839, 0.976411,
		0.988200, -0.148187, -0.038753,
		0.153055, 0.965119, 0.212414,
		17.283569, 16.911873, 17.148182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<21.303764, 20.599987, 19.266825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.115246, 20.868023, 19.037441>,  <21.002134, 21.028845, 18.899811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.115246, 20.868023, 19.037441>,  <21.303764, 20.599987, 19.266825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.115246, 20.868023, 19.037441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654295, -0.170360, -0.736801,
		-0.591419, -0.722464, -0.358148,
		-0.471298, 0.670092, -0.573458,
		20.973856, 21.069050, 18.865404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.572109, 20.425491, 18.608173>,  <21.303764, 20.599987, 19.266825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.572109, 20.425491, 18.608173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.378757, 20.767303, 18.532156>,  <21.262747, 20.972391, 18.486546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.378757, 20.767303, 18.532156>,  <21.572109, 20.425491, 18.608173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.378757, 20.767303, 18.532156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461280, 0.064124, -0.884934,
		-0.744018, -0.515425, -0.425175,
		-0.483381, 0.854532, -0.190046,
		21.233744, 21.023663, 18.475142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.224861, 20.329554, 18.001745>,  <21.572109, 20.425491, 18.608173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.224861, 20.329554, 18.001745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.265263, 20.723133, 18.060589>,  <21.289503, 20.959282, 18.095894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.265263, 20.723133, 18.060589>,  <21.224861, 20.329554, 18.001745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.265263, 20.723133, 18.060589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271648, 0.114969, -0.955505,
		-0.957082, 0.136473, -0.255676,
		0.101006, 0.983950, 0.147108,
		21.295565, 21.018318, 18.104721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.888433, 20.577612, 17.453955>,  <21.224861, 20.329554, 18.001745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.888433, 20.577612, 17.453955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.095901, 20.894501, 17.582556>,  <21.220383, 21.084635, 17.659718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.095901, 20.894501, 17.582556>,  <20.888433, 20.577612, 17.453955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.095901, 20.894501, 17.582556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259761, 0.212245, -0.942060,
		-0.814560, 0.572131, -0.095704,
		0.518669, 0.792224, 0.321504,
		21.251501, 21.132168, 17.679007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656158, 21.196356, 17.069284>,  <20.888433, 20.577612, 17.453955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656158, 21.196356, 17.069284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.026897, 21.264236, 17.203241>,  <21.249342, 21.304964, 17.283615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.026897, 21.264236, 17.203241>,  <20.656158, 21.196356, 17.069284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026897, 21.264236, 17.203241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264312, 0.338544, -0.903066,
		-0.266625, 0.925522, 0.268925,
		0.926850, 0.169700, 0.334891,
		21.304953, 21.315145, 17.303709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.886723, 21.902130, 16.808636>,  <20.656158, 21.196356, 17.069284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.886723, 21.902130, 16.808636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.219425, 21.703037, 16.906973>,  <21.419048, 21.583582, 16.965975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.219425, 21.703037, 16.906973>,  <20.886723, 21.902130, 16.808636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.219425, 21.703037, 16.906973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284724, 0.002320, -0.958607,
		0.476560, 0.867327, 0.143646,
		0.831759, -0.497733, 0.245843,
		21.468952, 21.553717, 16.980726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.479498, 22.284874, 16.531677>,  <20.886723, 21.902130, 16.808636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.479498, 22.284874, 16.531677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.621140, 21.916847, 16.598717>,  <21.706125, 21.696032, 16.638941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.621140, 21.916847, 16.598717>,  <21.479498, 22.284874, 16.531677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.621140, 21.916847, 16.598717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344262, -0.038386, -0.938089,
		0.869536, 0.389880, 0.303151,
		0.354105, -0.920065, 0.167599,
		21.727371, 21.640827, 16.648996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.034943, 22.318256, 16.118004>,  <21.479498, 22.284874, 16.531677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.034943, 22.318256, 16.118004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.953449, 21.932800, 16.187159>,  <21.904552, 21.701527, 16.228651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.953449, 21.932800, 16.187159>,  <22.034943, 22.318256, 16.118004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.953449, 21.932800, 16.187159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313102, -0.231446, -0.921086,
		0.927610, -0.133525, 0.348872,
		-0.203733, -0.963641, 0.172885,
		21.892330, 21.643707, 16.239023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.650215, 21.975712, 16.045296>,  <22.034943, 22.318256, 16.118004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.650215, 21.975712, 16.045296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.364391, 21.707172, 15.966612>,  <22.192898, 21.546049, 15.919401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.364391, 21.707172, 15.966612>,  <22.650215, 21.975712, 16.045296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.364391, 21.707172, 15.966612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420626, -0.187618, -0.887622,
		0.558999, -0.716999, 0.416451,
		-0.714559, -0.671350, -0.196710,
		22.150024, 21.505768, 15.907598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.974819, 21.467005, 15.614068>,  <22.650215, 21.975712, 16.045296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.974819, 21.467005, 15.614068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.582066, 21.424896, 15.551043>,  <22.346415, 21.399632, 15.513227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.582066, 21.424896, 15.551043>,  <22.974819, 21.467005, 15.614068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.582066, 21.424896, 15.551043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183194, -0.314684, -0.931351,
		0.048461, -0.943341, 0.328268,
		-0.981882, -0.105271, -0.157564,
		22.287500, 21.393314, 15.503774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.992451, 20.896975, 15.164721>,  <22.974819, 21.467005, 15.614068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.992451, 20.896975, 15.164721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.605865, 20.985325, 15.112322>,  <22.373915, 21.038334, 15.080882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.605865, 20.985325, 15.112322>,  <22.992451, 20.896975, 15.164721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.605865, 20.985325, 15.112322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018432, -0.568472, -0.822496,
		-0.256137, -0.792499, 0.553479,
		-0.966465, 0.220873, -0.131000,
		22.315926, 21.051586, 15.073022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.593721, 20.284878, 15.122412>,  <22.992451, 20.896975, 15.164721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.593721, 20.284878, 15.122412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.394753, 20.576561, 14.934443>,  <22.275372, 20.751570, 14.821661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.394753, 20.576561, 14.934443>,  <22.593721, 20.284878, 15.122412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.394753, 20.576561, 14.934443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018600, -0.550534, -0.834606,
		-0.867309, -0.406410, 0.287411,
		-0.497422, 0.729207, -0.469924,
		22.245525, 20.795322, 14.793466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.370991, 19.983040, 14.586737>,  <22.593721, 20.284878, 15.122412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.370991, 19.983040, 14.586737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.271297, 20.349453, 14.461027>,  <22.211481, 20.569300, 14.385601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.271297, 20.349453, 14.461027>,  <22.370991, 19.983040, 14.586737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.271297, 20.349453, 14.461027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044846, -0.335084, -0.941120,
		-0.967404, -0.220465, 0.124595,
		-0.249234, 0.916031, -0.314275,
		22.196527, 20.624262, 14.366745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.916964, 19.805506, 14.119378>,  <22.370991, 19.983040, 14.586737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.916964, 19.805506, 14.119378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.995502, 20.183197, 14.013636>,  <22.042625, 20.409811, 13.950191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.995502, 20.183197, 14.013636>,  <21.916964, 19.805506, 14.119378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.995502, 20.183197, 14.013636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065519, -0.281635, -0.957282,
		-0.978343, 0.170640, -0.117163,
		0.196347, 0.944227, -0.264355,
		22.054407, 20.466465, 13.934329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.335913, 19.380575, 14.068493>,  <21.916964, 19.805506, 14.119378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.335913, 19.380575, 14.068493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.488651, 19.029343, 13.953140>,  <21.580294, 18.818604, 13.883928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.488651, 19.029343, 13.953140>,  <21.335913, 19.380575, 14.068493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.488651, 19.029343, 13.953140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153379, -0.247494, 0.956672,
		-0.911410, -0.409533, 0.040175,
		0.381846, -0.878083, -0.288382,
		21.603205, 18.765917, 13.866626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.914486, 18.869337, 14.369758>,  <21.335913, 19.380575, 14.068493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.914486, 18.869337, 14.369758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.276093, 18.710209, 14.307154>,  <21.493057, 18.614733, 14.269591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.276093, 18.710209, 14.307154>,  <20.914486, 18.869337, 14.369758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.276093, 18.710209, 14.307154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004510, -0.374964, 0.927029,
		-0.427478, -0.837341, -0.340767,
		0.904014, -0.397822, -0.156512,
		21.547297, 18.590864, 14.260201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.845261, 18.325462, 14.822319>,  <20.914486, 18.869337, 14.369758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.845261, 18.325462, 14.822319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.240067, 18.357094, 14.766397>,  <21.476950, 18.376072, 14.732844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.240067, 18.357094, 14.766397>,  <20.845261, 18.325462, 14.822319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.240067, 18.357094, 14.766397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153353, -0.205129, 0.966646,
		0.047765, -0.975535, -0.214593,
		0.987016, 0.079080, -0.139804,
		21.536171, 18.380817, 14.724456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.139008, 17.687618, 15.091345>,  <20.845261, 18.325462, 14.822319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.139008, 17.687618, 15.091345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.407658, 17.983562, 15.075745>,  <21.568848, 18.161129, 15.066384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.407658, 17.983562, 15.075745>,  <21.139008, 17.687618, 15.091345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.407658, 17.983562, 15.075745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225992, -0.154448, 0.961807,
		0.705581, -0.654790, -0.270935,
		0.671627, 0.739862, -0.039001,
		21.609146, 18.205521, 15.064044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.724895, 17.497677, 15.525570>,  <21.139008, 17.687618, 15.091345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.724895, 17.497677, 15.525570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.791374, 17.890797, 15.493351>,  <21.831263, 18.126669, 15.474020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.791374, 17.890797, 15.493351>,  <21.724895, 17.497677, 15.525570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.791374, 17.890797, 15.493351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133761, 0.103397, 0.985605,
		0.976978, -0.153031, 0.148645,
		0.166198, 0.982798, -0.080547,
		21.841234, 18.185637, 15.469187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.172470, 17.607698, 16.126762>,  <21.724895, 17.497677, 15.525570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.172470, 17.607698, 16.126762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.068439, 17.973083, 16.001575>,  <22.006021, 18.192314, 15.926463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.068439, 17.973083, 16.001575>,  <22.172470, 17.607698, 16.126762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.068439, 17.973083, 16.001575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250095, 0.249334, 0.935567,
		0.932637, 0.321592, 0.163605,
		-0.260078, 0.913461, -0.312967,
		21.990416, 18.247122, 15.907685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.591379, 18.085953, 16.587847>,  <22.172470, 17.607698, 16.126762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.591379, 18.085953, 16.587847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.252018, 18.241333, 16.444006>,  <22.048401, 18.334560, 16.357700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.252018, 18.241333, 16.444006>,  <22.591379, 18.085953, 16.587847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.252018, 18.241333, 16.444006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252776, 0.299578, 0.919977,
		0.465095, 0.871412, -0.155973,
		-0.848405, 0.388451, -0.359604,
		21.997496, 18.357868, 16.336124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.526695, 18.825668, 16.817034>,  <22.591379, 18.085953, 16.587847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.526695, 18.825668, 16.817034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.158390, 18.703568, 16.719858>,  <21.937407, 18.630306, 16.661552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.158390, 18.703568, 16.719858>,  <22.526695, 18.825668, 16.817034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.158390, 18.703568, 16.719858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353908, 0.391531, 0.849384,
		-0.164158, 0.868058, -0.468538,
		-0.920761, -0.305253, -0.242940,
		21.882162, 18.611992, 16.646976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.146782, 19.316639, 16.987087>,  <22.526695, 18.825668, 16.817034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.146782, 19.316639, 16.987087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.854103, 19.045834, 16.955412>,  <21.678495, 18.883350, 16.936407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.854103, 19.045834, 16.955412>,  <22.146782, 19.316639, 16.987087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.854103, 19.045834, 16.955412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489741, 0.441352, 0.751905,
		-0.474101, 0.588949, -0.654498,
		-0.731698, -0.677014, -0.079187,
		21.634594, 18.842730, 16.931656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.526474, 19.693399, 17.114920>,  <22.146782, 19.316639, 16.987087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.526474, 19.693399, 17.114920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.428730, 19.310417, 17.176321>,  <21.370083, 19.080627, 17.213161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.428730, 19.310417, 17.176321>,  <21.526474, 19.693399, 17.114920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.428730, 19.310417, 17.176321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693757, 0.283223, 0.662182,
		-0.677487, 0.055318, -0.733452,
		-0.244361, -0.957458, 0.153502,
		21.355421, 19.023180, 17.222372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.750364, 19.659864, 17.125570>,  <21.526474, 19.693399, 17.114920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.750364, 19.659864, 17.125570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.891880, 19.343605, 17.325453>,  <20.976789, 19.153849, 17.445383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.891880, 19.343605, 17.325453>,  <20.750364, 19.659864, 17.125570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.891880, 19.343605, 17.325453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673583, 0.155299, 0.722612,
		-0.648936, -0.592248, -0.477624,
		0.353791, -0.790649, 0.499707,
		20.998018, 19.106411, 17.475365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.112417, 19.321850, 17.449514>,  <20.750364, 19.659864, 17.125570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.112417, 19.321850, 17.449514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.430550, 19.189243, 17.652512>,  <20.621429, 19.109680, 17.774309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.430550, 19.189243, 17.652512>,  <20.112417, 19.321850, 17.449514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.430550, 19.189243, 17.652512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526380, 0.037490, 0.849422,
		-0.300624, -0.942704, -0.144687,
		0.795330, -0.331517, 0.507491,
		20.669149, 19.089788, 17.804758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.837214, 18.717184, 17.730230>,  <20.112417, 19.321850, 17.449514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.837214, 18.717184, 17.730230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.142776, 18.851959, 17.950382>,  <20.326115, 18.932823, 18.082474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.142776, 18.851959, 17.950382>,  <19.837214, 18.717184, 17.730230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.142776, 18.851959, 17.950382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478826, -0.275825, 0.833455,
		0.432629, -0.900219, -0.049371,
		0.763910, 0.336936, 0.550378,
		20.371950, 18.953039, 18.115496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.882685, 18.219929, 18.178263>,  <19.837214, 18.717184, 17.730230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.882685, 18.219929, 18.178263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.030067, 18.558208, 18.332684>,  <20.118496, 18.761175, 18.425337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.030067, 18.558208, 18.332684>,  <19.882685, 18.219929, 18.178263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.030067, 18.558208, 18.332684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480908, -0.181996, 0.857674,
		0.795593, -0.501670, 0.339645,
		0.368455, 0.845698, 0.386051,
		20.140604, 18.811918, 18.448500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.152155, 17.523252, 18.332726>,  <19.882685, 18.219929, 18.178263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.152155, 17.523252, 18.332726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.989925, 17.160580, 18.379095>,  <19.892588, 16.942976, 18.406918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.989925, 17.160580, 18.379095>,  <20.152155, 17.523252, 18.332726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989925, 17.160580, 18.379095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504205, -0.327694, -0.798995,
		0.762423, -0.265600, 0.590057,
		-0.405572, -0.906682, 0.115924,
		19.868254, 16.888575, 18.413872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.561270, 17.200920, 17.986389>,  <20.152155, 17.523252, 18.332726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.561270, 17.200920, 17.986389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.260632, 16.938438, 18.013224>,  <20.080248, 16.780949, 18.029324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.260632, 16.938438, 18.013224>,  <20.561270, 17.200920, 17.986389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.260632, 16.938438, 18.013224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193671, -0.316752, -0.928526,
		0.630553, -0.684882, 0.365156,
		-0.751595, -0.656205, 0.067087,
		20.035152, 16.741577, 18.033350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.828466, 16.573931, 17.859945>,  <20.561270, 17.200920, 17.986389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.828466, 16.573931, 17.859945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.437119, 16.547241, 17.781622>,  <20.202311, 16.531227, 17.734629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.437119, 16.547241, 17.781622>,  <20.828466, 16.573931, 17.859945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437119, 16.547241, 17.781622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206737, -0.282081, -0.936851,
		0.007278, -0.957067, 0.289774,
		-0.978370, -0.066726, -0.195808,
		20.143608, 16.527224, 17.722879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.741083, 15.898072, 17.663588>,  <20.828466, 16.573931, 17.859945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.741083, 15.898072, 17.663588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.423889, 16.084709, 17.506887>,  <20.233572, 16.196692, 17.412868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.423889, 16.084709, 17.506887>,  <20.741083, 15.898072, 17.663588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423889, 16.084709, 17.506887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205292, -0.400762, -0.892886,
		-0.573613, -0.788467, 0.222010,
		-0.792984, 0.466594, -0.391748,
		20.185993, 16.224688, 17.389362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.382418, 15.457549, 17.304001>,  <20.741083, 15.898072, 17.663588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.382418, 15.457549, 17.304001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.247295, 15.802040, 17.152121>,  <20.166222, 16.008736, 17.060991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.247295, 15.802040, 17.152121>,  <20.382418, 15.457549, 17.304001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.247295, 15.802040, 17.152121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088723, -0.372484, -0.923788,
		-0.937025, -0.345748, 0.049416,
		-0.337804, 0.861228, -0.379703,
		20.145954, 16.060408, 17.038210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.930157, 15.282894, 16.794933>,  <20.382418, 15.457549, 17.304001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.930157, 15.282894, 16.794933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.027470, 15.661217, 16.708897>,  <20.085857, 15.888210, 16.657274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.027470, 15.661217, 16.708897>,  <19.930157, 15.282894, 16.794933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.027470, 15.661217, 16.708897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190312, -0.263991, -0.945564,
		-0.951102, 0.189103, -0.244222,
		0.243281, 0.945806, -0.215094,
		20.100454, 15.944959, 16.644369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.641562, 15.352015, 16.092924>,  <19.930157, 15.282894, 16.794933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.641562, 15.352015, 16.092924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.921299, 15.634190, 16.139023>,  <20.089142, 15.803493, 16.166681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.921299, 15.634190, 16.139023>,  <19.641562, 15.352015, 16.092924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.921299, 15.634190, 16.139023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284372, -0.126667, -0.950309,
		-0.655783, 0.697365, -0.289190,
		0.699344, 0.705434, 0.115245,
		20.131102, 15.845819, 16.173595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.611973, 15.642015, 15.487561>,  <19.641562, 15.352015, 16.092924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.611973, 15.642015, 15.487561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.963783, 15.794613, 15.601330>,  <20.174870, 15.886172, 15.669591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.963783, 15.794613, 15.601330>,  <19.611973, 15.642015, 15.487561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.963783, 15.794613, 15.601330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358706, -0.138795, -0.923074,
		-0.312673, 0.913891, -0.258918,
		0.879526, 0.381496, 0.284421,
		20.227640, 15.909061, 15.686656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.765659, 16.190979, 15.034932>,  <19.611973, 15.642015, 15.487561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.765659, 16.190979, 15.034932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.113598, 16.069874, 15.190727>,  <20.322361, 15.997211, 15.284204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.113598, 16.069874, 15.190727>,  <19.765659, 16.190979, 15.034932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.113598, 16.069874, 15.190727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368647, -0.125720, -0.921029,
		0.327820, 0.944737, 0.002256,
		0.869847, -0.302763, 0.389488,
		20.374552, 15.979045, 15.307573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.294121, 16.456661, 14.598103>,  <19.765659, 16.190979, 15.034932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.294121, 16.456661, 14.598103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.455765, 16.148193, 14.794872>,  <20.552752, 15.963112, 14.912934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.455765, 16.148193, 14.794872>,  <20.294121, 16.456661, 14.598103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.455765, 16.148193, 14.794872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339482, -0.372937, -0.863522,
		0.849380, 0.515957, 0.111091,
		0.404110, -0.771172, 0.491924,
		20.576998, 15.916842, 14.942450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.799171, 16.345320, 14.208581>,  <20.294121, 16.456661, 14.598103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.799171, 16.345320, 14.208581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.791332, 16.006279, 14.420689>,  <20.786629, 15.802855, 14.547954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.791332, 16.006279, 14.420689>,  <20.799171, 16.345320, 14.208581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791332, 16.006279, 14.420689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293255, -0.511916, -0.807430,
		0.955833, 0.139681, 0.258595,
		-0.019597, -0.847603, 0.530269,
		20.785454, 15.751998, 14.579769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.448841, 16.065231, 14.063280>,  <20.799171, 16.345320, 14.208581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.448841, 16.065231, 14.063280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.213696, 15.768265, 14.191799>,  <21.072609, 15.590084, 14.268910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.213696, 15.768265, 14.191799>,  <21.448841, 16.065231, 14.063280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.213696, 15.768265, 14.191799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384373, -0.605821, -0.696591,
		0.711811, -0.286001, 0.641505,
		-0.587863, -0.742418, 0.321298,
		21.037336, 15.545540, 14.288189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.898905, 15.515981, 14.147149>,  <21.448841, 16.065231, 14.063280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.898905, 15.515981, 14.147149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.539459, 15.340485, 14.147614>,  <21.323792, 15.235187, 14.147892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.539459, 15.340485, 14.147614>,  <21.898905, 15.515981, 14.147149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.539459, 15.340485, 14.147614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261444, -0.537604, -0.801641,
		0.352337, -0.720061, 0.597804,
		-0.898613, -0.438741, 0.001162,
		21.269875, 15.208862, 14.147963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.027182, 14.753741, 14.060774>,  <21.898905, 15.515981, 14.147149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.027182, 14.753741, 14.060774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.663902, 14.852043, 13.925255>,  <21.445934, 14.911024, 13.843944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.663902, 14.852043, 13.925255>,  <22.027182, 14.753741, 14.060774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.663902, 14.852043, 13.925255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204856, -0.444877, -0.871848,
		-0.364981, -0.861214, 0.353692,
		-0.908197, 0.245752, -0.338797,
		21.391443, 14.925770, 13.823616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<17.711857, 16.155581, 17.617298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.570423, 16.529285, 17.635769>,  <17.485563, 16.753508, 17.646852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.570423, 16.529285, 17.635769>,  <17.711857, 16.155581, 17.617298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.570423, 16.529285, 17.635769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154124, -0.106881, 0.982254,
		0.922619, 0.340191, 0.181784,
		-0.353583, 0.934263, 0.046179,
		17.464348, 16.809565, 17.649622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.991823, 16.395033, 18.260185>,  <17.711857, 16.155581, 17.617298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.991823, 16.395033, 18.260185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.679905, 16.626778, 18.165310>,  <17.492754, 16.765825, 18.108385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.679905, 16.626778, 18.165310>,  <17.991823, 16.395033, 18.260185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679905, 16.626778, 18.165310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221125, 0.099556, 0.970151,
		0.585684, 0.808966, 0.050479,
		-0.779794, 0.579364, -0.237191,
		17.445967, 16.800587, 18.094152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.060175, 17.062950, 18.718876>,  <17.991823, 16.395033, 18.260185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.060175, 17.062950, 18.718876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.687252, 17.003258, 18.587097>,  <17.463499, 16.967443, 18.508030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.687252, 17.003258, 18.587097>,  <18.060175, 17.062950, 18.718876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.687252, 17.003258, 18.587097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342327, 0.070192, 0.936955,
		-0.116696, 0.986308, -0.116525,
		-0.932306, -0.149229, -0.329449,
		17.407560, 16.958488, 18.488262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.778143, 17.399170, 19.216181>,  <18.060175, 17.062950, 18.718876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.778143, 17.399170, 19.216181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.457428, 17.224285, 19.053217>,  <17.264999, 17.119354, 18.955439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.457428, 17.224285, 19.053217>,  <17.778143, 17.399170, 19.216181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.457428, 17.224285, 19.053217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508600, 0.141268, 0.849335,
		-0.313784, 0.888195, -0.335632,
		-0.801789, -0.437210, -0.407408,
		17.216890, 17.093122, 18.930994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.125526, 17.803162, 19.276379>,  <17.778143, 17.399170, 19.216181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.125526, 17.803162, 19.276379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.019108, 17.419910, 19.234030>,  <16.955257, 17.189959, 19.208620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.019108, 17.419910, 19.234030>,  <17.125526, 17.803162, 19.276379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019108, 17.419910, 19.234030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652218, 0.098043, 0.751665,
		-0.709811, 0.269029, -0.650992,
		-0.266045, -0.958129, -0.105873,
		16.939295, 17.132471, 19.202269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454580, 17.887600, 19.462631>,  <17.125526, 17.803162, 19.276379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454580, 17.887600, 19.462631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.524239, 17.495041, 19.494970>,  <16.566034, 17.259506, 19.514374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.524239, 17.495041, 19.494970>,  <16.454580, 17.887600, 19.462631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.524239, 17.495041, 19.494970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479256, -0.012745, 0.877583,
		-0.860225, -0.191574, -0.472559,
		0.174145, -0.981395, 0.080849,
		16.576483, 17.200623, 19.519224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.842000, 17.527092, 19.414557>,  <16.454580, 17.887600, 19.462631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.842000, 17.527092, 19.414557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.082897, 17.259380, 19.588621>,  <16.227436, 17.098753, 19.693060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.082897, 17.259380, 19.588621>,  <15.842000, 17.527092, 19.414557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.082897, 17.259380, 19.588621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590233, -0.006269, 0.807209,
		-0.537521, -0.742983, -0.398807,
		0.602243, -0.669281, 0.435163,
		16.263571, 17.058596, 19.719170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.385691, 17.193865, 19.768681>,  <15.842000, 17.527092, 19.414557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.385691, 17.193865, 19.768681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.728055, 17.072311, 19.936047>,  <15.933474, 16.999378, 20.036467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.728055, 17.072311, 19.936047>,  <15.385691, 17.193865, 19.768681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728055, 17.072311, 19.936047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429601, 0.032545, 0.902432,
		-0.287853, -0.952153, -0.102694,
		0.855911, -0.303885, 0.418414,
		15.984828, 16.981146, 20.061571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.298969, 16.708834, 20.197020>,  <15.385691, 17.193865, 19.768681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.298969, 16.708834, 20.197020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.632413, 16.871971, 20.346022>,  <15.832479, 16.969854, 20.435423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.632413, 16.871971, 20.346022>,  <15.298969, 16.708834, 20.197020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.632413, 16.871971, 20.346022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409052, 0.002640, 0.912507,
		0.371179, -0.913047, 0.169030,
		0.833609, 0.407845, 0.372503,
		15.882496, 16.994326, 20.457773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.325671, 16.400509, 20.808882>,  <15.298969, 16.708834, 20.197020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.325671, 16.400509, 20.808882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.582351, 16.704403, 20.850874>,  <15.736359, 16.886740, 20.876070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.582351, 16.704403, 20.850874>,  <15.325671, 16.400509, 20.808882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.582351, 16.704403, 20.850874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249069, 0.076971, 0.965422,
		0.725387, -0.645658, 0.238619,
		0.641699, 0.759737, 0.104980,
		15.774860, 16.932323, 20.882368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628389, 16.286068, 21.462580>,  <15.325671, 16.400509, 20.808882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628389, 16.286068, 21.462580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.681685, 16.678757, 21.408220>,  <15.713663, 16.914370, 21.375605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.681685, 16.678757, 21.408220>,  <15.628389, 16.286068, 21.462580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.681685, 16.678757, 21.408220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075382, 0.146764, 0.986295,
		0.988213, -0.121169, 0.093559,
		0.133239, 0.981722, -0.135901,
		15.721657, 16.973274, 21.367451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.165928, 16.492752, 22.048885>,  <15.628389, 16.286068, 21.462580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.165928, 16.492752, 22.048885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.960572, 16.804306, 21.904789>,  <15.837359, 16.991238, 21.818331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.960572, 16.804306, 21.904789>,  <16.165928, 16.492752, 22.048885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.960572, 16.804306, 21.904789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280484, 0.244432, 0.928214,
		0.811025, 0.577576, 0.092975,
		-0.513388, 0.778883, -0.360241,
		15.806556, 17.037971, 21.796717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308353, 17.094196, 22.239870>,  <16.165928, 16.492752, 22.048885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.308353, 17.094196, 22.239870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.922750, 17.118210, 22.136272>,  <15.691387, 17.132618, 22.074114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.922750, 17.118210, 22.136272>,  <16.308353, 17.094196, 22.239870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.922750, 17.118210, 22.136272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260016, -0.009734, 0.965555,
		0.055446, 0.998149, 0.024993,
		-0.964011, 0.060035, -0.258995,
		15.633546, 17.136221, 22.058575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597702, 17.299685, 22.768545>,  <16.308353, 17.094196, 22.239870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.597702, 17.299685, 22.768545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.382111, 17.585197, 22.589651>,  <16.252756, 17.756504, 22.482315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.382111, 17.585197, 22.589651>,  <16.597702, 17.299685, 22.768545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382111, 17.585197, 22.589651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320381, 0.317327, 0.892558,
		0.779010, 0.624355, 0.057649,
		-0.538979, 0.713781, -0.447233,
		16.220417, 17.799332, 22.455481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902937, 17.358137, 23.518661>,  <16.597702, 17.299685, 22.768545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902937, 17.358137, 23.518661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.251907, 17.542164, 23.584648>,  <17.461288, 17.652580, 23.624241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.251907, 17.542164, 23.584648>,  <16.902937, 17.358137, 23.518661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.251907, 17.542164, 23.584648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200487, -0.029048, -0.979266,
		-0.445735, 0.887409, -0.117580,
		0.872425, 0.460067, 0.164966,
		17.513636, 17.680183, 23.634138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037176, 17.941301, 22.990002>,  <16.902937, 17.358137, 23.518661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.037176, 17.941301, 22.990002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.394272, 17.818024, 23.121473>,  <17.608530, 17.744057, 23.200356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.394272, 17.818024, 23.121473>,  <17.037176, 17.941301, 22.990002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.394272, 17.818024, 23.121473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306935, -0.118059, -0.944380,
		0.329854, 0.943970, -0.010801,
		0.892741, -0.308192, 0.328680,
		17.662094, 17.725567, 23.220078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.537304, 18.287956, 22.619839>,  <17.037176, 17.941301, 22.990002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.537304, 18.287956, 22.619839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.737652, 17.966316, 22.747932>,  <17.857861, 17.773333, 22.824789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.737652, 17.966316, 22.747932>,  <17.537304, 18.287956, 22.619839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737652, 17.966316, 22.747932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379070, -0.128821, -0.916358,
		0.778096, 0.580369, 0.240287,
		0.500871, -0.804100, 0.320236,
		17.887913, 17.725086, 22.844004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.146708, 18.284180, 22.226494>,  <17.537304, 18.287956, 22.619839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.146708, 18.284180, 22.226494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.173218, 17.907570, 22.358637>,  <18.189123, 17.681604, 22.437923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.173218, 17.907570, 22.358637>,  <18.146708, 18.284180, 22.226494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.173218, 17.907570, 22.358637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492268, -0.257136, -0.831597,
		0.867917, 0.217739, 0.446441,
		0.066275, -0.941526, 0.330359,
		18.193100, 17.625113, 22.457745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.877838, 18.082603, 22.285610>,  <18.146708, 18.284180, 22.226494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.877838, 18.082603, 22.285610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.648865, 17.760227, 22.225231>,  <18.511480, 17.566801, 22.189003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.648865, 17.760227, 22.225231>,  <18.877838, 18.082603, 22.285610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.648865, 17.760227, 22.225231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451870, -0.156455, -0.878257,
		0.684205, -0.570951, 0.453739,
		-0.572432, -0.805939, -0.150948,
		18.477135, 17.518446, 22.179947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.278149, 17.583599, 22.170202>,  <18.877838, 18.082603, 22.285610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.278149, 17.583599, 22.170202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.938869, 17.424561, 22.030216>,  <18.735302, 17.329138, 21.946224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.938869, 17.424561, 22.030216>,  <19.278149, 17.583599, 22.170202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.938869, 17.424561, 22.030216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449597, -0.191116, -0.872546,
		0.280036, -0.897437, 0.340862,
		-0.848200, -0.397595, -0.349966,
		18.684410, 17.305283, 21.925226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451227, 16.937893, 21.877382>,  <19.278149, 17.583599, 22.170202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.451227, 16.937893, 21.877382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.102497, 17.019142, 21.699097>,  <18.893259, 17.067892, 21.592125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.102497, 17.019142, 21.699097>,  <19.451227, 16.937893, 21.877382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.102497, 17.019142, 21.699097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375229, -0.307929, -0.874290,
		-0.314839, -0.929473, 0.192242,
		-0.871826, 0.203125, -0.445713,
		18.840950, 17.080080, 21.565382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.442978, 16.425934, 21.442301>,  <19.451227, 16.937893, 21.877382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.442978, 16.425934, 21.442301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.164333, 16.673138, 21.296535>,  <18.997147, 16.821461, 21.209076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.164333, 16.673138, 21.296535>,  <19.442978, 16.425934, 21.442301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.164333, 16.673138, 21.296535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162619, -0.358700, -0.919179,
		-0.698778, -0.699569, 0.149373,
		-0.696609, 0.618011, -0.364415,
		18.955351, 16.858541, 21.187212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038700, 15.991147, 20.958244>,  <19.442978, 16.425934, 21.442301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038700, 15.991147, 20.958244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.009609, 16.375446, 20.851158>,  <18.992155, 16.606026, 20.786905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.009609, 16.375446, 20.851158>,  <19.038700, 15.991147, 20.958244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.009609, 16.375446, 20.851158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151966, -0.254619, -0.955027,
		-0.985706, -0.110140, -0.127484,
		-0.072726, 0.960749, -0.267717,
		18.987791, 16.663671, 20.770844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.609917, 16.087805, 20.391617>,  <19.038700, 15.991147, 20.958244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.609917, 16.087805, 20.391617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.843891, 16.412235, 20.391485>,  <18.984276, 16.606894, 20.391407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.843891, 16.412235, 20.391485>,  <18.609917, 16.087805, 20.391617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.843891, 16.412235, 20.391485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115400, -0.083623, -0.989793,
		-0.802826, 0.578930, -0.142513,
		0.584938, 0.811078, -0.000327,
		19.019373, 16.655560, 20.391388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474701, 16.388903, 19.734446>,  <18.609917, 16.087805, 20.391617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.474701, 16.388903, 19.734446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.803402, 16.585129, 19.850424>,  <19.000622, 16.702866, 19.920010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.803402, 16.585129, 19.850424>,  <18.474701, 16.388903, 19.734446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803402, 16.585129, 19.850424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392877, -0.119183, -0.911835,
		-0.412759, 0.863215, -0.290672,
		0.821753, 0.490567, 0.289944,
		19.049929, 16.732298, 19.937407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.496973, 16.967121, 19.285851>,  <18.474701, 16.388903, 19.734446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.496973, 16.967121, 19.285851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.871510, 16.915901, 19.416611>,  <19.096231, 16.885168, 19.495068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.871510, 16.915901, 19.416611>,  <18.496973, 16.967121, 19.285851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.871510, 16.915901, 19.416611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329222, -0.003196, -0.944247,
		0.121957, 0.991762, 0.039164,
		0.936344, -0.128051, 0.326900,
		19.152412, 16.877485, 19.514681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841572, 17.512817, 18.968235>,  <18.496973, 16.967121, 19.285851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841572, 17.512817, 18.968235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.102642, 17.219822, 19.045671>,  <19.259283, 17.044025, 19.092133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.102642, 17.219822, 19.045671>,  <18.841572, 17.512817, 18.968235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.102642, 17.219822, 19.045671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348297, 0.063164, -0.935254,
		0.672834, 0.677844, 0.296349,
		0.652675, -0.732488, 0.193591,
		19.298445, 17.000076, 19.103748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.494246, 17.643986, 18.697048>,  <18.841572, 17.512817, 18.968235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.494246, 17.643986, 18.697048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.516178, 17.247555, 18.745642>,  <19.529337, 17.009697, 18.774797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.516178, 17.247555, 18.745642>,  <19.494246, 17.643986, 18.697048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.516178, 17.247555, 18.745642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228884, -0.105951, -0.967671,
		0.971908, 0.080863, 0.221032,
		0.054830, -0.991078, 0.121482,
		19.532627, 16.950232, 18.782087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.955406, 18.133638, 18.897865>,  <19.494246, 17.643986, 18.697048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.955406, 18.133638, 18.897865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.004597, 18.530602, 18.896933>,  <20.034111, 18.768780, 18.896374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.004597, 18.530602, 18.896933>,  <19.955406, 18.133638, 18.897865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.004597, 18.530602, 18.896933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418887, 0.054036, 0.906429,
		0.899672, -0.110495, 0.422352,
		0.122978, 0.992407, -0.002330,
		20.041491, 18.828323, 18.896235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084682, 18.386583, 19.614834>,  <19.955406, 18.133638, 18.897865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084682, 18.386583, 19.614834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.028137, 18.741356, 19.438938>,  <19.994209, 18.954220, 19.333401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.028137, 18.741356, 19.438938>,  <20.084682, 18.386583, 19.614834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028137, 18.741356, 19.438938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389213, 0.358634, 0.848466,
		0.910236, 0.291094, 0.294508,
		-0.141363, 0.886931, -0.439739,
		19.985729, 19.007435, 19.307016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.366764, 19.008190, 20.024220>,  <20.084682, 18.386583, 19.614834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.366764, 19.008190, 20.024220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.071251, 19.176239, 19.813431>,  <19.893944, 19.277069, 19.686958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.071251, 19.176239, 19.813431>,  <20.366764, 19.008190, 20.024220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.071251, 19.176239, 19.813431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409082, 0.341849, 0.846045,
		0.535588, 0.840616, -0.080687,
		-0.738781, 0.420124, -0.526971,
		19.849617, 19.302277, 19.655340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.272272, 19.589109, 20.362732>,  <20.366764, 19.008190, 20.024220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.272272, 19.589109, 20.362732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.940628, 19.540543, 20.144434>,  <19.741642, 19.511402, 20.013456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.940628, 19.540543, 20.144434>,  <20.272272, 19.589109, 20.362732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.940628, 19.540543, 20.144434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539505, 0.429833, 0.724002,
		0.146673, 0.894708, -0.421883,
		-0.829109, -0.121417, -0.545744,
		19.691895, 19.504118, 19.980711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.033787, 20.203127, 20.527742>,  <20.272272, 19.589109, 20.362732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.033787, 20.203127, 20.527742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.734997, 19.971806, 20.396538>,  <19.555723, 19.833014, 20.317816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.734997, 19.971806, 20.396538>,  <20.033787, 20.203127, 20.527742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.734997, 19.971806, 20.396538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629643, 0.456911, 0.628317,
		-0.213486, 0.675868, -0.705426,
		-0.746976, -0.578304, -0.328012,
		19.510904, 19.798315, 20.298134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.480816, 20.644667, 20.463552>,  <20.033787, 20.203127, 20.527742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.480816, 20.644667, 20.463552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.294678, 20.290852, 20.476498>,  <19.182995, 20.078562, 20.484264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.294678, 20.290852, 20.476498>,  <19.480816, 20.644667, 20.463552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.294678, 20.290852, 20.476498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461207, 0.273518, 0.844083,
		-0.755475, 0.377865, -0.535235,
		-0.465346, -0.884537, 0.032362,
		19.155073, 20.025490, 20.486206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.751637, 20.744268, 20.442034>,  <19.480816, 20.644667, 20.463552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.751637, 20.744268, 20.442034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.810322, 20.396355, 20.630480>,  <18.845533, 20.187607, 20.743547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.810322, 20.396355, 20.630480>,  <18.751637, 20.744268, 20.442034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.810322, 20.396355, 20.630480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622104, 0.289156, 0.727581,
		-0.769065, -0.399830, -0.498673,
		0.146714, -0.869784, 0.471116,
		18.854336, 20.135420, 20.771814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373705, 21.325409, 20.225138>,  <18.751637, 20.744268, 20.442034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.373705, 21.325409, 20.225138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.624844, 21.592495, 20.385120>,  <18.775526, 21.752747, 20.481110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.624844, 21.592495, 20.385120>,  <18.373705, 21.325409, 20.225138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.624844, 21.592495, 20.385120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659384, -0.183270, -0.729126,
		-0.413548, 0.721505, -0.555346,
		0.627846, 0.667715, 0.399958,
		18.813198, 21.792809, 20.505108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.482433, 21.809153, 19.757275>,  <18.373705, 21.325409, 20.225138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.482433, 21.809153, 19.757275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.804211, 21.832214, 19.993765>,  <18.997276, 21.846052, 20.135658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.804211, 21.832214, 19.993765>,  <18.482433, 21.809153, 19.757275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804211, 21.832214, 19.993765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571805, -0.344860, -0.744387,
		0.160973, 0.936882, -0.310387,
		0.804442, 0.057655, 0.591226,
		19.045544, 21.849510, 20.171133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979515, 22.193922, 19.424368>,  <18.482433, 21.809153, 19.757275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979515, 22.193922, 19.424368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.210144, 22.002827, 19.689495>,  <19.348522, 21.888170, 19.848572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.210144, 22.002827, 19.689495>,  <18.979515, 22.193922, 19.424368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210144, 22.002827, 19.689495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690510, -0.148738, -0.707865,
		0.436761, 0.865819, 0.244126,
		0.576572, -0.477739, 0.662820,
		19.383116, 21.859505, 19.888342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.629152, 22.590153, 19.493937>,  <18.979515, 22.193922, 19.424368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.629152, 22.590153, 19.493937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.677689, 22.205914, 19.593962>,  <19.706810, 21.975370, 19.653976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.677689, 22.205914, 19.593962>,  <19.629152, 22.590153, 19.493937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.677689, 22.205914, 19.593962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746306, -0.077810, -0.661040,
		0.654450, 0.266833, 0.707457,
		0.121339, -0.960597, 0.250062,
		19.714090, 21.917734, 19.668980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.315693, 22.516737, 19.485577>,  <19.629152, 22.590153, 19.493937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.315693, 22.516737, 19.485577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.210041, 22.131935, 19.513226>,  <20.146650, 21.901054, 19.529814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.210041, 22.131935, 19.513226>,  <20.315693, 22.516737, 19.485577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.210041, 22.131935, 19.513226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832527, -0.263591, -0.487256,
		0.486963, -0.071155, 0.870519,
		-0.264132, -0.962007, 0.069121,
		20.130802, 21.843332, 19.533962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.967100, 22.030893, 19.634497>,  <20.315693, 22.516737, 19.485577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.967100, 22.030893, 19.634497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.691814, 21.790897, 19.471338>,  <20.526644, 21.646900, 19.373444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.691814, 21.790897, 19.471338>,  <20.967100, 22.030893, 19.634497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.691814, 21.790897, 19.471338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692357, -0.375127, -0.616377,
		0.216807, -0.706606, 0.673574,
		-0.688212, -0.599989, -0.407894,
		20.485352, 21.610901, 19.348970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.253218, 21.333189, 19.612938>,  <20.967100, 22.030893, 19.634497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.253218, 21.333189, 19.612938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.967861, 21.346119, 19.332930>,  <20.796648, 21.353878, 19.164925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.967861, 21.346119, 19.332930>,  <21.253218, 21.333189, 19.612938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.967861, 21.346119, 19.332930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676243, -0.230198, -0.699789,
		-0.183765, -0.972607, 0.142360,
		-0.713390, 0.032327, -0.700021,
		20.753843, 21.355816, 19.122923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<13.745267, 20.207726, 21.081863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.929736, 19.852821, 21.085630>,  <14.040418, 19.639879, 21.087891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.929736, 19.852821, 21.085630>,  <13.745267, 20.207726, 21.081863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.929736, 19.852821, 21.085630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141847, 0.063243, -0.987866,
		0.875899, 0.456912, 0.155021,
		0.461172, -0.887261, 0.009417,
		14.068088, 19.586643, 21.088455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.269123, 20.303600, 20.703707>,  <13.745267, 20.207726, 21.081863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.269123, 20.303600, 20.703707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.264440, 19.903645, 20.700010>,  <14.261629, 19.663671, 20.697792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.264440, 19.903645, 20.700010>,  <14.269123, 20.303600, 20.703707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.264440, 19.903645, 20.700010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135818, 0.007564, -0.990705,
		0.990664, -0.012855, 0.135715,
		-0.011709, -0.999889, -0.009240,
		14.260927, 19.603678, 20.697239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970681, 20.016586, 20.476543>,  <14.269123, 20.303600, 20.703707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.970681, 20.016586, 20.476543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.700795, 19.726894, 20.419626>,  <14.538863, 19.553080, 20.385475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.700795, 19.726894, 20.419626>,  <14.970681, 20.016586, 20.476543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.700795, 19.726894, 20.419626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375962, -0.171334, -0.910658,
		0.635148, -0.667931, 0.387886,
		-0.674715, -0.724232, -0.142295,
		14.498381, 19.509624, 20.376938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.365814, 19.490208, 20.087454>,  <14.970681, 20.016586, 20.476543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.365814, 19.490208, 20.087454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.981204, 19.400436, 20.024078>,  <14.750438, 19.346575, 19.986053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.981204, 19.400436, 20.024078>,  <15.365814, 19.490208, 20.087454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.981204, 19.400436, 20.024078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180863, -0.083043, -0.979996,
		0.206781, -0.970946, 0.120438,
		-0.961525, -0.224427, -0.158437,
		14.692746, 19.333109, 19.976547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.335283, 18.745060, 19.863131>,  <15.365814, 19.490208, 20.087454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.335283, 18.745060, 19.863131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.993983, 18.900883, 19.724445>,  <14.789204, 18.994377, 19.641235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.993983, 18.900883, 19.724445>,  <15.335283, 18.745060, 19.863131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.993983, 18.900883, 19.724445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185642, -0.394394, -0.899994,
		-0.487342, -0.832284, 0.264198,
		-0.853249, 0.389559, -0.346712,
		14.738008, 19.017750, 19.620432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.190681, 18.263521, 19.215260>,  <15.335283, 18.745060, 19.863131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.190681, 18.263521, 19.215260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.958886, 18.588669, 19.191811>,  <14.819809, 18.783758, 19.177742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.958886, 18.588669, 19.191811>,  <15.190681, 18.263521, 19.215260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.958886, 18.588669, 19.191811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033323, -0.095504, -0.994871,
		-0.814299, -0.574563, 0.082431,
		-0.579489, 0.812869, -0.058623,
		14.785039, 18.832529, 19.174223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.645720, 18.002293, 18.813927>,  <15.190681, 18.263521, 19.215260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.645720, 18.002293, 18.813927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.671557, 18.400665, 18.788784>,  <14.687059, 18.639688, 18.773699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.671557, 18.400665, 18.788784>,  <14.645720, 18.002293, 18.813927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.671557, 18.400665, 18.788784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043153, -0.065715, -0.996905,
		-0.996978, 0.061679, -0.047222,
		0.064591, 0.995930, -0.062855,
		14.690935, 18.699444, 18.769928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.140161, 18.133060, 18.277960>,  <14.645720, 18.002293, 18.813927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.140161, 18.133060, 18.277960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.368987, 18.460838, 18.292112>,  <14.506283, 18.657505, 18.300604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.368987, 18.460838, 18.292112>,  <14.140161, 18.133060, 18.277960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.368987, 18.460838, 18.292112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010002, 0.036167, -0.999296,
		-0.820146, 0.572018, 0.012494,
		0.572067, 0.819443, 0.035383,
		14.540607, 18.706671, 18.302727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.793355, 18.632612, 17.936218>,  <14.140161, 18.133060, 18.277960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.793355, 18.632612, 17.936218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.170432, 18.765884, 17.929045>,  <14.396679, 18.845848, 17.924740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.170432, 18.765884, 17.929045>,  <13.793355, 18.632612, 17.936218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.170432, 18.765884, 17.929045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049495, 0.086477, -0.995024,
		-0.329969, 0.938890, 0.098012,
		0.942693, 0.333178, -0.017936,
		14.453240, 18.865837, 17.923664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773284, 19.253532, 17.554150>,  <13.793355, 18.632612, 17.936218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773284, 19.253532, 17.554150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.154773, 19.133747, 17.543299>,  <14.383666, 19.061876, 17.536789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.154773, 19.133747, 17.543299>,  <13.773284, 19.253532, 17.554150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.154773, 19.133747, 17.543299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056584, 0.267342, -0.961939,
		0.295318, 0.915887, 0.271915,
		0.953722, -0.299464, -0.027127,
		14.440889, 19.043907, 17.535160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127847, 19.881605, 17.265232>,  <13.773284, 19.253532, 17.554150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.127847, 19.881605, 17.265232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.370271, 19.569370, 17.204073>,  <14.515725, 19.382030, 17.167377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.370271, 19.569370, 17.204073>,  <14.127847, 19.881605, 17.265232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.370271, 19.569370, 17.204073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139607, 0.293626, -0.945671,
		0.783072, 0.551788, 0.286930,
		0.606060, -0.780586, -0.152897,
		14.552089, 19.335194, 17.158203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811070, 20.147287, 17.115652>,  <14.127847, 19.881605, 17.265232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.811070, 20.147287, 17.115652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.795360, 19.774952, 16.970325>,  <14.785933, 19.551552, 16.883129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.795360, 19.774952, 16.970325>,  <14.811070, 20.147287, 17.115652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.795360, 19.774952, 16.970325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342060, 0.329104, -0.880162,
		0.938857, -0.158845, 0.305476,
		-0.039276, -0.930837, -0.363317,
		14.783577, 19.495701, 16.861330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.313880, 20.612625, 17.436258>,  <14.811070, 20.147287, 17.115652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.313880, 20.612625, 17.436258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.404502, 21.001736, 17.455751>,  <15.458875, 21.235203, 17.467447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.404502, 21.001736, 17.455751>,  <15.313880, 20.612625, 17.436258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.404502, 21.001736, 17.455751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152943, -0.013881, 0.988138,
		0.961916, -0.231320, 0.145635,
		0.226554, 0.972779, 0.048731,
		15.472468, 21.293570, 17.470371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.728302, 20.694971, 17.985548>,  <15.313880, 20.612625, 17.436258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.728302, 20.694971, 17.985548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.600558, 21.069439, 17.926762>,  <15.523911, 21.294119, 17.891489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.600558, 21.069439, 17.926762>,  <15.728302, 20.694971, 17.985548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.600558, 21.069439, 17.926762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129915, 0.110370, 0.985363,
		0.938686, 0.333779, 0.086374,
		-0.319360, 0.936168, -0.146966,
		15.504750, 21.350288, 17.882671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.123205, 21.110479, 18.327484>,  <15.728302, 20.694971, 17.985548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.123205, 21.110479, 18.327484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.789361, 21.328613, 18.296398>,  <15.589055, 21.459494, 18.277746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.789361, 21.328613, 18.296398>,  <16.123205, 21.110479, 18.327484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.789361, 21.328613, 18.296398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120070, 0.317795, 0.940526,
		0.537598, 0.775640, -0.330713,
		-0.834608, 0.545334, -0.077715,
		15.538979, 21.492214, 18.273083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269625, 21.780649, 18.579029>,  <16.123205, 21.110479, 18.327484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269625, 21.780649, 18.579029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.872359, 21.740425, 18.602749>,  <15.634001, 21.716290, 18.616980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.872359, 21.740425, 18.602749>,  <16.269625, 21.780649, 18.579029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.872359, 21.740425, 18.602749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015619, 0.388909, 0.921144,
		-0.115694, 0.915772, -0.384679,
		-0.993162, -0.100562, 0.059298,
		15.574410, 21.710257, 18.620539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121326, 22.493498, 18.786295>,  <16.269625, 21.780649, 18.579029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121326, 22.493498, 18.786295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.816968, 22.237965, 18.831774>,  <15.634353, 22.084644, 18.859062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.816968, 22.237965, 18.831774>,  <16.121326, 22.493498, 18.786295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.816968, 22.237965, 18.831774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269782, 0.470827, 0.839964,
		-0.590128, 0.608454, -0.530597,
		-0.760899, -0.638832, 0.113698,
		15.588698, 22.046314, 18.865883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439828, 22.913528, 18.743172>,  <16.121326, 22.493498, 18.786295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.439828, 22.913528, 18.743172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.380351, 22.572819, 18.944117>,  <15.344666, 22.368393, 19.064684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.380351, 22.572819, 18.944117>,  <15.439828, 22.913528, 18.743172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380351, 22.572819, 18.944117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340679, 0.521035, 0.782599,
		-0.928347, -0.054779, -0.367655,
		-0.148691, -0.851776, 0.502363,
		15.335744, 22.317286, 19.094826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.783170, 23.106640, 19.120327>,  <15.439828, 22.913528, 18.743172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.783170, 23.106640, 19.120327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.913512, 22.801617, 19.343870>,  <14.991717, 22.618603, 19.477997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.913512, 22.801617, 19.343870>,  <14.783170, 23.106640, 19.120327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.913512, 22.801617, 19.343870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036806, 0.580441, 0.813470,
		-0.944703, -0.285644, 0.161073,
		0.325856, -0.762558, 0.558858,
		15.011270, 22.572849, 19.511528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.372012, 23.306259, 19.741392>,  <14.783170, 23.106640, 19.120327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.372012, 23.306259, 19.741392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.650138, 23.040379, 19.850727>,  <14.817014, 22.880852, 19.916328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.650138, 23.040379, 19.850727>,  <14.372012, 23.306259, 19.741392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650138, 23.040379, 19.850727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000997, 0.381211, 0.924488,
		-0.718705, -0.642537, 0.265724,
		0.695314, -0.664699, 0.273337,
		14.858732, 22.840969, 19.932728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.234929, 23.102045, 20.520376>,  <14.372012, 23.306259, 19.741392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.234929, 23.102045, 20.520376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.609046, 22.980148, 20.448420>,  <14.833516, 22.907009, 20.405247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.609046, 22.980148, 20.448420>,  <14.234929, 23.102045, 20.520376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.609046, 22.980148, 20.448420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312789, 0.474169, 0.822999,
		-0.165505, -0.826012, 0.538806,
		0.935292, -0.304743, -0.179890,
		14.889633, 22.888725, 20.394453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.462084, 22.851357, 21.125668>,  <14.234929, 23.102045, 20.520376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.462084, 22.851357, 21.125668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.792268, 22.958626, 20.926992>,  <14.990378, 23.022987, 20.807787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.792268, 22.958626, 20.926992>,  <14.462084, 22.851357, 21.125668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792268, 22.958626, 20.926992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315342, 0.510724, 0.799825,
		0.468160, -0.816851, 0.337017,
		0.825461, 0.268171, -0.496688,
		15.039906, 23.039078, 20.777987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032383, 22.766432, 21.595411>,  <14.462084, 22.851357, 21.125668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032383, 22.766432, 21.595411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.129989, 23.024399, 21.305710>,  <15.188552, 23.179178, 21.131889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.129989, 23.024399, 21.305710>,  <15.032383, 22.766432, 21.595411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.129989, 23.024399, 21.305710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485466, 0.565279, 0.666919,
		0.839512, -0.514338, -0.175149,
		0.244014, 0.644915, -0.724252,
		15.203193, 23.217873, 21.088434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454347, 23.208216, 21.936020>,  <15.032383, 22.766432, 21.595411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454347, 23.208216, 21.936020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.449260, 23.425858, 21.600452>,  <15.446208, 23.556442, 21.399111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.449260, 23.425858, 21.600452>,  <15.454347, 23.208216, 21.936020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.449260, 23.425858, 21.600452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554056, 0.702250, 0.447065,
		0.832382, -0.459123, -0.310395,
		-0.012717, 0.544106, -0.838920,
		15.445445, 23.589088, 21.348776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.123220, 23.421083, 21.710028>,  <15.454347, 23.208216, 21.936020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.123220, 23.421083, 21.710028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.865178, 23.691494, 21.567575>,  <15.710352, 23.853741, 21.482105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.865178, 23.691494, 21.567575>,  <16.123220, 23.421083, 21.710028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.865178, 23.691494, 21.567575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443896, 0.710939, 0.545456,
		0.621927, 0.193793, -0.758716,
		-0.645107, 0.676025, -0.356128,
		15.671646, 23.894302, 21.460737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521395, 24.068739, 21.373531>,  <16.123220, 23.421083, 21.710028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.521395, 24.068739, 21.373531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.154850, 24.165607, 21.501051>,  <15.934923, 24.223728, 21.577562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.154850, 24.165607, 21.501051>,  <16.521395, 24.068739, 21.373531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.154850, 24.165607, 21.501051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395752, 0.668239, 0.629949,
		-0.060479, 0.703428, -0.708189,
		-0.916364, 0.242169, 0.318798,
		15.879941, 24.238258, 21.596691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.023584, 23.939283, 21.938526>,  <16.521395, 24.068739, 21.373531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.023584, 23.939283, 21.938526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.051987, 23.574661, 22.100525>,  <17.069029, 23.355888, 22.197723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.051987, 23.574661, 22.100525>,  <17.023584, 23.939283, 21.938526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.051987, 23.574661, 22.100525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817746, -0.179301, -0.546940,
		0.571183, 0.370020, 0.732690,
		0.071006, -0.911557, 0.404996,
		17.073288, 23.301193, 22.222023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.739416, 23.775858, 22.249300>,  <17.023584, 23.939283, 21.938526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.739416, 23.775858, 22.249300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.575115, 23.430908, 22.130915>,  <17.476534, 23.223938, 22.059883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.575115, 23.430908, 22.130915>,  <17.739416, 23.775858, 22.249300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.575115, 23.430908, 22.130915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832050, -0.221825, -0.508415,
		0.372793, -0.455088, 0.808654,
		-0.410753, -0.862374, -0.295961,
		17.451889, 23.172195, 22.042126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.295273, 23.251148, 22.287815>,  <17.739416, 23.775858, 22.249300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.295273, 23.251148, 22.287815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.018581, 23.076309, 22.057873>,  <17.852568, 22.971405, 21.919909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.018581, 23.076309, 22.057873>,  <18.295273, 23.251148, 22.287815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018581, 23.076309, 22.057873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722140, -0.424276, -0.546354,
		-0.005085, -0.793053, 0.609131,
		-0.691728, -0.437100, -0.574854,
		17.811064, 22.945179, 21.885416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.458839, 22.538870, 22.240240>,  <18.295273, 23.251148, 22.287815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.458839, 22.538870, 22.240240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.223949, 22.571426, 21.918112>,  <18.083015, 22.590960, 21.724834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.223949, 22.571426, 21.918112>,  <18.458839, 22.538870, 22.240240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.223949, 22.571426, 21.918112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593481, -0.633255, -0.496757,
		-0.550406, -0.769652, 0.323559,
		-0.587225, 0.081392, -0.805321,
		18.047781, 22.595844, 21.676516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221807, 21.832321, 22.079069>,  <18.458839, 22.538870, 22.240240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.221807, 21.832321, 22.079069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.211815, 22.080437, 21.765478>,  <18.205818, 22.229305, 21.577324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.211815, 22.080437, 21.765478>,  <18.221807, 21.832321, 22.079069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.211815, 22.080437, 21.765478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707380, -0.543172, -0.452303,
		-0.706392, -0.565869, -0.425208,
		-0.024983, 0.620287, -0.783977,
		18.204319, 22.266523, 21.530285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354757, 21.421141, 21.604910>,  <18.221807, 21.832321, 22.079069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.354757, 21.421141, 21.604910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.377125, 21.765335, 21.402353>,  <18.390545, 21.971851, 21.280819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.377125, 21.765335, 21.402353>,  <18.354757, 21.421141, 21.604910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.377125, 21.765335, 21.402353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592175, -0.436934, -0.677065,
		-0.803867, -0.262011, -0.533993,
		0.055921, 0.860487, -0.506393,
		18.393902, 22.023481, 21.250435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.334995, 21.208614, 20.959572>,  <18.354757, 21.421141, 21.604910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.334995, 21.208614, 20.959572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.507748, 21.568165, 20.929914>,  <18.611399, 21.783895, 20.912121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.507748, 21.568165, 20.929914>,  <18.334995, 21.208614, 20.959572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.507748, 21.568165, 20.929914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501800, -0.307776, -0.808375,
		-0.749451, 0.311915, -0.583979,
		0.431880, 0.898878, -0.074144,
		18.637312, 21.837828, 20.907671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.995796, 20.585905, 20.814728>,  <18.334995, 21.208614, 20.959572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.995796, 20.585905, 20.814728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.253311, 20.318638, 20.963907>,  <18.407820, 20.158278, 21.053415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.253311, 20.318638, 20.963907>,  <17.995796, 20.585905, 20.814728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.253311, 20.318638, 20.963907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480031, 0.026909, 0.876839,
		-0.595910, -0.743525, -0.303417,
		0.643787, -0.668166, 0.372950,
		18.446447, 20.118189, 21.075792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.583200, 20.178940, 21.189730>,  <17.995796, 20.585905, 20.814728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.583200, 20.178940, 21.189730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.951756, 20.113560, 21.330769>,  <18.172890, 20.074331, 21.415392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.951756, 20.113560, 21.330769>,  <17.583200, 20.178940, 21.189730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951756, 20.113560, 21.330769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382482, -0.220482, 0.897271,
		-0.068916, -0.961599, -0.265666,
		0.921389, -0.163449, 0.352599,
		18.228172, 20.064526, 21.436548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523417, 19.517311, 21.682404>,  <17.583200, 20.178940, 21.189730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.523417, 19.517311, 21.682404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.856236, 19.715233, 21.782694>,  <18.055927, 19.833986, 21.842869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.856236, 19.715233, 21.782694>,  <17.523417, 19.517311, 21.682404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.856236, 19.715233, 21.782694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210306, -0.136863, 0.968008,
		0.513288, -0.858160, -0.009817,
		0.832049, 0.494803, 0.250727,
		18.105850, 19.863674, 21.857912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.892406, 19.115503, 22.244823>,  <17.523417, 19.517311, 21.682404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.892406, 19.115503, 22.244823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.022774, 19.493397, 22.258982>,  <18.100994, 19.720133, 22.267477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.022774, 19.493397, 22.258982>,  <17.892406, 19.115503, 22.244823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.022774, 19.493397, 22.258982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015201, -0.042670, 0.998974,
		0.945276, -0.325045, -0.028268,
		0.325918, 0.944735, 0.035394,
		18.120548, 19.776817, 22.269600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.389330, 19.143599, 22.799509>,  <17.892406, 19.115503, 22.244823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.389330, 19.143599, 22.799509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.258335, 19.516613, 22.738682>,  <18.179739, 19.740421, 22.702185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.258335, 19.516613, 22.738682>,  <18.389330, 19.143599, 22.799509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258335, 19.516613, 22.738682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041198, 0.174883, 0.983727,
		0.943957, 0.315893, -0.095691,
		-0.327487, 0.932538, -0.152068,
		18.160089, 19.796375, 22.693062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.532053, 19.405478, 23.394062>,  <18.389330, 19.143599, 22.799509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.532053, 19.405478, 23.394062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.309959, 19.694263, 23.228903>,  <18.176702, 19.867535, 23.129808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.309959, 19.694263, 23.228903>,  <18.532053, 19.405478, 23.394062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.309959, 19.694263, 23.228903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284343, 0.301756, 0.909996,
		0.781577, 0.622666, 0.037740,
		-0.555235, 0.721963, -0.412896,
		18.143389, 19.910852, 23.105034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.669174, 20.021852, 23.730743>,  <18.532053, 19.405478, 23.394062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.669174, 20.021852, 23.730743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.300938, 20.032860, 23.574921>,  <18.079996, 20.039463, 23.481428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.300938, 20.032860, 23.574921>,  <18.669174, 20.021852, 23.730743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.300938, 20.032860, 23.574921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366233, 0.285498, 0.885643,
		0.135588, 0.957984, -0.252749,
		-0.920592, 0.027517, -0.389555,
		18.024759, 20.041115, 23.458054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.291517, 20.457109, 24.129330>,  <18.669174, 20.021852, 23.730743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.291517, 20.457109, 24.129330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.000797, 20.277081, 23.921793>,  <17.826365, 20.169064, 23.797272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.000797, 20.277081, 23.921793>,  <18.291517, 20.457109, 24.129330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.000797, 20.277081, 23.921793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657436, 0.237166, 0.715213,
		-0.198845, 0.860923, -0.468265,
		-0.726800, -0.450071, -0.518842,
		17.782757, 20.142059, 23.766140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.671583, 20.822256, 24.238243>,  <18.291517, 20.457109, 24.129330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.671583, 20.822256, 24.238243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.547810, 20.449463, 24.162704>,  <17.473545, 20.225788, 24.117382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.547810, 20.449463, 24.162704>,  <17.671583, 20.822256, 24.238243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547810, 20.449463, 24.162704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691375, 0.084146, 0.717579,
		-0.652879, 0.352607, -0.670386,
		-0.309434, -0.931981, -0.188846,
		17.454979, 20.169868, 24.106050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<22.072767, 18.494553, 9.016731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.955566, 18.112877, 9.040960>,  <21.885246, 17.883871, 9.055498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.955566, 18.112877, 9.040960>,  <22.072767, 18.494553, 9.016731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.955566, 18.112877, 9.040960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271984, 0.143919, 0.951479,
		-0.916611, 0.262310, -0.301693,
		-0.293001, -0.954191, 0.060573,
		21.867666, 17.826620, 9.059133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.375221, 18.587042, 9.193389>,  <22.072767, 18.494553, 9.016731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.375221, 18.587042, 9.193389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.479500, 18.220409, 9.314663>,  <21.542067, 18.000431, 9.387427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.479500, 18.220409, 9.314663>,  <21.375221, 18.587042, 9.193389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479500, 18.220409, 9.314663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499083, 0.140874, 0.855027,
		-0.826410, -0.374216, -0.420724,
		0.260696, -0.916579, 0.303184,
		21.557709, 17.945436, 9.405618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.788450, 18.402203, 9.730391>,  <21.375221, 18.587042, 9.193389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.788450, 18.402203, 9.730391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.076168, 18.130692, 9.789545>,  <21.248798, 17.967785, 9.825038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.076168, 18.130692, 9.789545>,  <20.788450, 18.402203, 9.730391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.076168, 18.130692, 9.789545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231947, -0.033992, 0.972134,
		-0.654838, -0.733554, -0.181891,
		0.719296, -0.678780, 0.147887,
		21.291958, 17.927057, 9.833911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.527231, 18.064642, 10.348824>,  <20.788450, 18.402203, 9.730391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.527231, 18.064642, 10.348824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.904839, 17.941910, 10.300355>,  <21.131403, 17.868271, 10.271274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.904839, 17.941910, 10.300355>,  <20.527231, 18.064642, 10.348824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.904839, 17.941910, 10.300355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117228, -0.031326, 0.992611,
		-0.308359, -0.951248, 0.006397,
		0.944019, -0.306831, -0.121173,
		21.188044, 17.849861, 10.264003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.521524, 17.525843, 10.734397>,  <20.527231, 18.064642, 10.348824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.521524, 17.525843, 10.734397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.898884, 17.652023, 10.693427>,  <21.125299, 17.727732, 10.668845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.898884, 17.652023, 10.693427>,  <20.521524, 17.525843, 10.734397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.898884, 17.652023, 10.693427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134123, -0.080418, 0.987696,
		0.303333, -0.945528, -0.118176,
		0.943398, 0.315451, -0.102423,
		21.181904, 17.746658, 10.662700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.965117, 17.044746, 11.083135>,  <20.521524, 17.525843, 10.734397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.965117, 17.044746, 11.083135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.146713, 17.400597, 11.063284>,  <21.255671, 17.614107, 11.051373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.146713, 17.400597, 11.063284>,  <20.965117, 17.044746, 11.083135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.146713, 17.400597, 11.063284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056599, 0.026791, 0.998037,
		0.889207, -0.455908, -0.038189,
		0.453990, 0.889624, -0.049627,
		21.282909, 17.667484, 11.048396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.320923, 17.102160, 11.693363>,  <20.965117, 17.044746, 11.083135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.320923, 17.102160, 11.693363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.357998, 17.487820, 11.593910>,  <21.380243, 17.719215, 11.534238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.357998, 17.487820, 11.593910>,  <21.320923, 17.102160, 11.693363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.357998, 17.487820, 11.593910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031121, 0.246781, 0.968572,
		0.995209, -0.097514, -0.007131,
		0.092689, 0.964153, -0.248633,
		21.385805, 17.777065, 11.519320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.894621, 17.284208, 12.114783>,  <21.320923, 17.102160, 11.693363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.894621, 17.284208, 12.114783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.735371, 17.635544, 12.008940>,  <21.639820, 17.846346, 11.945434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.735371, 17.635544, 12.008940>,  <21.894621, 17.284208, 12.114783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.735371, 17.635544, 12.008940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216710, 0.370346, 0.903261,
		0.891367, 0.302266, -0.337788,
		-0.398124, 0.878339, -0.264610,
		21.615934, 17.899046, 11.929557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.347403, 17.930798, 12.225793>,  <21.894621, 17.284208, 12.114783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.347403, 17.930798, 12.225793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.981102, 18.091492, 12.226859>,  <21.761322, 18.187908, 12.227499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.981102, 18.091492, 12.226859>,  <22.347403, 17.930798, 12.225793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.981102, 18.091492, 12.226859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208830, 0.470335, 0.857423,
		0.343205, 0.785743, -0.514605,
		-0.915751, 0.401737, 0.002665,
		21.706377, 18.212013, 12.227658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.347223, 18.686136, 12.371097>,  <22.347403, 17.930798, 12.225793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.347223, 18.686136, 12.371097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.977474, 18.569290, 12.469242>,  <21.755625, 18.499182, 12.528130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.977474, 18.569290, 12.469242>,  <22.347223, 18.686136, 12.371097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.977474, 18.569290, 12.469242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139664, 0.339389, 0.930220,
		-0.355007, 0.894138, -0.272924,
		-0.924372, -0.292117, 0.245364,
		21.700163, 18.481655, 12.542851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.165907, 19.219000, 12.728573>,  <22.347223, 18.686136, 12.371097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.165907, 19.219000, 12.728573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.915745, 18.927788, 12.840888>,  <21.765648, 18.753061, 12.908277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.915745, 18.927788, 12.840888>,  <22.165907, 19.219000, 12.728573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.915745, 18.927788, 12.840888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095164, 0.285995, 0.953494,
		-0.774476, 0.623040, -0.109580,
		-0.625405, -0.728030, 0.280787,
		21.728123, 18.709379, 12.925124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.766716, 19.526110, 13.346512>,  <22.165907, 19.219000, 12.728573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.766716, 19.526110, 13.346512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.722622, 19.128685, 13.356939>,  <21.696165, 18.890230, 13.363196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.722622, 19.128685, 13.356939>,  <21.766716, 19.526110, 13.346512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.722622, 19.128685, 13.356939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284617, -0.006425, 0.958620,
		-0.952282, 0.113092, 0.283493,
		-0.110234, -0.993564, 0.026070,
		21.689552, 18.830616, 13.364760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.530581, 20.159386, 13.346400>,  <21.766716, 19.526110, 13.346512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.530581, 20.159386, 13.346400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.833290, 20.418613, 13.380571>,  <22.014915, 20.574150, 13.401074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.833290, 20.418613, 13.380571>,  <21.530581, 20.159386, 13.346400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.833290, 20.418613, 13.380571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347492, -0.288156, -0.892309,
		-0.553660, 0.704964, -0.443267,
		0.756776, 0.648068, 0.085429,
		22.060324, 20.613033, 13.406200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.595478, 20.710257, 12.840944>,  <21.530581, 20.159386, 13.346400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.595478, 20.710257, 12.840944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.978054, 20.646969, 12.939075>,  <22.207600, 20.608997, 12.997954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.978054, 20.646969, 12.939075>,  <21.595478, 20.710257, 12.840944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.978054, 20.646969, 12.939075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248927, 0.003035, -0.968517,
		0.152492, 0.987400, 0.042287,
		0.956442, -0.158218, 0.245328,
		22.264986, 20.599504, 13.012674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.894501, 21.128618, 12.354198>,  <21.595478, 20.710257, 12.840944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.894501, 21.128618, 12.354198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.188278, 20.892990, 12.489009>,  <22.364544, 20.751614, 12.569896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.188278, 20.892990, 12.489009>,  <21.894501, 21.128618, 12.354198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.188278, 20.892990, 12.489009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401936, -0.022599, -0.915389,
		0.546845, 0.807766, 0.220171,
		0.734444, -0.589070, 0.337028,
		22.408611, 20.716269, 12.590117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.497025, 21.381891, 12.106770>,  <21.894501, 21.128618, 12.354198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.497025, 21.381891, 12.106770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.566875, 20.997356, 12.191941>,  <22.608786, 20.766636, 12.243045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.566875, 20.997356, 12.191941>,  <22.497025, 21.381891, 12.106770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.566875, 20.997356, 12.191941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251896, -0.165439, -0.953508,
		0.951869, 0.220144, 0.213267,
		0.174627, -0.961336, 0.212930,
		22.619263, 20.708956, 12.255820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.202219, 21.283255, 11.931948>,  <22.497025, 21.381891, 12.106770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.202219, 21.283255, 11.931948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.993607, 20.942375, 11.915154>,  <22.868439, 20.737848, 11.905078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.993607, 20.942375, 11.915154>,  <23.202219, 21.283255, 11.931948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.993607, 20.942375, 11.915154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419113, -0.213008, -0.882594,
		0.743203, -0.477895, 0.468258,
		-0.521530, -0.852199, -0.041984,
		22.837147, 20.686716, 11.902559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.655735, 20.768734, 11.679644>,  <23.202219, 21.283255, 11.931948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.655735, 20.768734, 11.679644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.290897, 20.614742, 11.623245>,  <23.071995, 20.522346, 11.589406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.290897, 20.614742, 11.623245>,  <23.655735, 20.768734, 11.679644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.290897, 20.614742, 11.623245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226184, -0.185663, -0.956227,
		0.341950, -0.904058, 0.256417,
		-0.912091, -0.384979, -0.140996,
		23.017269, 20.499249, 11.580947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.822481, 20.203588, 11.282521>,  <23.655735, 20.768734, 11.679644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.822481, 20.203588, 11.282521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.428547, 20.223259, 11.215972>,  <23.192186, 20.235062, 11.176043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.428547, 20.223259, 11.215972>,  <23.822481, 20.203588, 11.282521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.428547, 20.223259, 11.215972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154351, -0.189487, -0.969675,
		-0.079209, -0.980651, 0.179024,
		-0.984836, 0.049175, -0.166373,
		23.133097, 20.238012, 11.166059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.653324, 19.681223, 10.907482>,  <23.822481, 20.203588, 11.282521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.653324, 19.681223, 10.907482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.352386, 19.930275, 10.821398>,  <23.171824, 20.079706, 10.769747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.352386, 19.930275, 10.821398>,  <23.653324, 19.681223, 10.907482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.352386, 19.930275, 10.821398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058055, -0.262751, -0.963116,
		-0.656210, -0.737086, 0.161532,
		-0.752342, 0.622628, -0.215211,
		23.126684, 20.117064, 10.756834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.255411, 19.246355, 10.438610>,  <23.653324, 19.681223, 10.907482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.255411, 19.246355, 10.438610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.134171, 19.626038, 10.404824>,  <23.061426, 19.853848, 10.384553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.134171, 19.626038, 10.404824>,  <23.255411, 19.246355, 10.438610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.134171, 19.626038, 10.404824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168178, -0.140523, -0.975689,
		-0.938002, -0.281525, 0.202228,
		-0.303099, 0.949208, -0.084464,
		23.043242, 19.910801, 10.379485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.524763, 19.253271, 10.156699>,  <23.255411, 19.246355, 10.438610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.524763, 19.253271, 10.156699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.730576, 19.585121, 10.070001>,  <22.854063, 19.784231, 10.017982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.730576, 19.585121, 10.070001>,  <22.524763, 19.253271, 10.156699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.730576, 19.585121, 10.070001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223082, -0.114555, -0.968045,
		-0.827945, 0.546441, 0.126132,
		0.514531, 0.829626, -0.216747,
		22.884935, 19.834009, 10.004976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.273388, 19.373430, 9.531162>,  <22.524763, 19.253271, 10.156699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.273388, 19.373430, 9.531162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.538116, 19.672623, 9.511085>,  <22.696953, 19.852139, 9.499038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.538116, 19.672623, 9.511085>,  <22.273388, 19.373430, 9.531162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.538116, 19.672623, 9.511085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316036, 0.217665, -0.923441,
		-0.679790, 0.627016, 0.380443,
		0.661821, 0.747979, -0.050193,
		22.736664, 19.897017, 9.496026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.856308, 19.860102, 9.271177>,  <22.273388, 19.373430, 9.531162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.856308, 19.860102, 9.271177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.232796, 19.972454, 9.196122>,  <22.458689, 20.039865, 9.151089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.232796, 19.972454, 9.196122>,  <21.856308, 19.860102, 9.271177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.232796, 19.972454, 9.196122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279813, 0.337137, -0.898912,
		-0.189230, 0.898579, 0.395915,
		0.941221, 0.280883, -0.187638,
		22.515162, 20.056719, 9.139831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.832914, 20.508600, 9.031878>,  <21.856308, 19.860102, 9.271177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.832914, 20.508600, 9.031878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.181358, 20.353500, 8.911334>,  <22.390425, 20.260441, 8.839007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.181358, 20.353500, 8.911334>,  <21.832914, 20.508600, 9.031878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.181358, 20.353500, 8.911334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207031, 0.266501, -0.941337,
		0.445316, 0.882399, 0.151875,
		0.871109, -0.387750, -0.301361,
		22.442692, 20.237175, 8.820926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.089909, 21.089737, 8.618363>,  <21.832914, 20.508600, 9.031878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.089909, 21.089737, 8.618363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.311920, 20.776539, 8.506033>,  <22.445127, 20.588621, 8.438635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.311920, 20.776539, 8.506033>,  <22.089909, 21.089737, 8.618363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.311920, 20.776539, 8.506033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187921, 0.210845, -0.959286,
		0.810326, 0.585205, -0.030116,
		0.555029, -0.782994, -0.280825,
		22.478430, 20.541641, 8.421785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.496464, 21.513952, 9.011523>,  <22.089909, 21.089737, 8.618363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.496464, 21.513952, 9.011523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.309082, 21.776882, 8.775397>,  <21.196653, 21.934641, 8.633721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.309082, 21.776882, 8.775397>,  <21.496464, 21.513952, 9.011523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.309082, 21.776882, 8.775397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316913, 0.498676, 0.806777,
		0.824692, 0.565017, -0.025292,
		-0.468455, 0.657327, -0.590315,
		21.168545, 21.974081, 8.598303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.679798, 22.311049, 9.198654>,  <21.496464, 21.513952, 9.011523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.679798, 22.311049, 9.198654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.317337, 22.288437, 9.030993>,  <21.099859, 22.274870, 8.930397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.317337, 22.288437, 9.030993>,  <21.679798, 22.311049, 9.198654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.317337, 22.288437, 9.030993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402697, 0.418295, 0.814165,
		0.129305, 0.906550, -0.401804,
		-0.906154, -0.056530, -0.419153,
		21.045490, 22.271479, 8.905248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334234, 23.076223, 9.119709>,  <21.679798, 22.311049, 9.198654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334234, 23.076223, 9.119709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.079922, 22.770313, 9.161470>,  <20.927334, 22.586767, 9.186527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.079922, 22.770313, 9.161470>,  <21.334234, 23.076223, 9.119709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.079922, 22.770313, 9.161470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276800, 0.352166, 0.894070,
		-0.720532, 0.539533, -0.435590,
		-0.635780, -0.764777, 0.104404,
		20.889187, 22.540880, 9.192792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.708195, 23.328650, 9.349602>,  <21.334234, 23.076223, 9.119709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.708195, 23.328650, 9.349602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.705269, 22.951096, 9.481677>,  <20.703512, 22.724564, 9.560923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.705269, 22.951096, 9.481677>,  <20.708195, 23.328650, 9.349602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705269, 22.951096, 9.481677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326922, 0.314311, 0.891252,
		-0.945023, -0.101425, -0.310877,
		-0.007317, -0.943887, 0.330189,
		20.703074, 22.667931, 9.580734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148520, 23.283447, 9.806845>,  <20.708195, 23.328650, 9.349602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148520, 23.283447, 9.806845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.339474, 22.942951, 9.894018>,  <20.454046, 22.738653, 9.946322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.339474, 22.942951, 9.894018>,  <20.148520, 23.283447, 9.806845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.339474, 22.942951, 9.894018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186127, 0.144431, 0.971852,
		-0.858754, -0.504512, -0.089489,
		0.477387, -0.851239, 0.217934,
		20.482689, 22.687580, 9.959398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.729492, 22.790695, 10.125305>,  <20.148520, 23.283447, 9.806845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.729492, 22.790695, 10.125305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.079960, 22.648079, 10.255050>,  <20.290239, 22.562510, 10.332896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.079960, 22.648079, 10.255050>,  <19.729492, 22.790695, 10.125305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079960, 22.648079, 10.255050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313968, 0.088438, 0.945306,
		-0.365724, -0.930085, -0.034456,
		0.876168, -0.356539, 0.324361,
		20.342810, 22.541117, 10.352358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.586134, 22.212584, 10.640986>,  <19.729492, 22.790695, 10.125305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.586134, 22.212584, 10.640986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.960270, 22.335354, 10.711341>,  <20.184752, 22.409016, 10.753553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.960270, 22.335354, 10.711341>,  <19.586134, 22.212584, 10.640986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960270, 22.335354, 10.711341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198188, 0.042817, 0.979228,
		0.293019, -0.950770, 0.100877,
		0.935340, 0.306925, 0.175885,
		20.240871, 22.427431, 10.764107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.795843, 21.782166, 11.102383>,  <19.586134, 22.212584, 10.640986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.795843, 21.782166, 11.102383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.032845, 22.103287, 11.129069>,  <20.175045, 22.295959, 11.145082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.032845, 22.103287, 11.129069>,  <19.795843, 21.782166, 11.102383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032845, 22.103287, 11.129069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215890, 0.078453, 0.973261,
		0.776101, -0.591062, 0.219801,
		0.592502, 0.802802, 0.066717,
		20.210594, 22.344128, 11.149084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.216339, 21.523264, 11.510488>,  <19.795843, 21.782166, 11.102383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.216339, 21.523264, 11.510488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.250294, 21.921818, 11.511675>,  <20.270666, 22.160950, 11.512387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.250294, 21.921818, 11.511675>,  <20.216339, 21.523264, 11.510488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.250294, 21.921818, 11.511675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139606, 0.008944, 0.990167,
		0.986562, -0.084467, 0.139861,
		0.084887, 0.996386, 0.002968,
		20.275761, 22.220734, 11.512566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.621256, 21.668732, 12.042841>,  <20.216339, 21.523264, 11.510488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.621256, 21.668732, 12.042841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.445900, 22.022835, 11.980704>,  <20.340687, 22.235296, 11.943422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.445900, 22.022835, 11.980704>,  <20.621256, 21.668732, 12.042841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.445900, 22.022835, 11.980704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393483, -0.033645, 0.918716,
		0.808074, 0.463882, 0.363084,
		-0.438391, 0.885258, -0.155341,
		20.314383, 22.288412, 11.934102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.814020, 22.158613, 12.688849>,  <20.621256, 21.668732, 12.042841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.814020, 22.158613, 12.688849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.479313, 22.267845, 12.499009>,  <20.278488, 22.333384, 12.385105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.479313, 22.267845, 12.499009>,  <20.814020, 22.158613, 12.688849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479313, 22.267845, 12.499009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520571, -0.128010, 0.844167,
		0.169770, 0.953437, 0.249271,
		-0.836770, 0.273078, -0.474600,
		20.228283, 22.349768, 12.356629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.573538, 22.563396, 13.153485>,  <20.814020, 22.158613, 12.688849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.573538, 22.563396, 13.153485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.264362, 22.465801, 12.919209>,  <20.078857, 22.407244, 12.778643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.264362, 22.465801, 12.919209>,  <20.573538, 22.563396, 13.153485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.264362, 22.465801, 12.919209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627928, 0.161837, 0.761259,
		-0.090952, 0.956179, -0.278298,
		-0.772938, -0.243989, -0.585692,
		20.032480, 22.392605, 12.743501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.975994, 22.985859, 13.478597>,  <20.573538, 22.563396, 13.153485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.975994, 22.985859, 13.478597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.811863, 22.728661, 13.219929>,  <19.713385, 22.574341, 13.064728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.811863, 22.728661, 13.219929>,  <19.975994, 22.985859, 13.478597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.811863, 22.728661, 13.219929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812412, -0.064387, 0.579518,
		-0.414266, 0.763157, -0.495959,
		-0.410330, -0.642998, -0.646671,
		19.688765, 22.535761, 13.025928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.257452, 23.250925, 13.479335>,  <19.975994, 22.985859, 13.478597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.257452, 23.250925, 13.479335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.247810, 22.870762, 13.355305>,  <19.242025, 22.642664, 13.280887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.247810, 22.870762, 13.355305>,  <19.257452, 23.250925, 13.479335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.247810, 22.870762, 13.355305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740749, -0.191308, 0.643966,
		-0.671349, 0.245211, -0.699401,
		-0.024106, -0.950407, -0.310075,
		19.240578, 22.585640, 13.262282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.529970, 23.139751, 13.390313>,  <19.257452, 23.250925, 13.479335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.529970, 23.139751, 13.390313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.733269, 22.796398, 13.418215>,  <18.855247, 22.590385, 13.434956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.733269, 22.796398, 13.418215>,  <18.529970, 23.139751, 13.390313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.733269, 22.796398, 13.418215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751008, -0.402110, 0.523731,
		-0.421515, -0.318566, -0.849023,
		0.508244, -0.858384, 0.069750,
		18.885742, 22.538883, 13.439141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.062477, 22.660858, 13.123580>,  <18.529970, 23.139751, 13.390313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.062477, 22.660858, 13.123580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.326176, 22.467968, 13.354355>,  <18.484394, 22.352234, 13.492820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.326176, 22.467968, 13.354355>,  <18.062477, 22.660858, 13.123580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.326176, 22.467968, 13.354355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749823, -0.478975, 0.456451,
		0.056226, -0.733513, -0.677345,
		0.659245, -0.482224, 0.576936,
		18.523949, 22.323301, 13.527435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.676939, 22.182724, 13.291637>,  <18.062477, 22.660858, 13.123580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.676939, 22.182724, 13.291637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.975735, 22.170330, 13.557281>,  <18.155012, 22.162893, 13.716668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.975735, 22.170330, 13.557281>,  <17.676939, 22.182724, 13.291637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975735, 22.170330, 13.557281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570835, -0.541960, 0.616787,
		0.340811, -0.839833, -0.422527,
		0.746991, -0.030986, 0.664111,
		18.199833, 22.161034, 13.756515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.814320, 21.473982, 13.517212>,  <17.676939, 22.182724, 13.291637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.814320, 21.473982, 13.517212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.929958, 21.723560, 13.807623>,  <17.999342, 21.873308, 13.981870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.929958, 21.723560, 13.807623>,  <17.814320, 21.473982, 13.517212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.929958, 21.723560, 13.807623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588084, -0.482681, 0.648982,
		0.755369, -0.614582, 0.227392,
		0.289095, 0.623946, 0.726027,
		18.016687, 21.910744, 14.025431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.852911, 21.075621, 14.266338>,  <17.814320, 21.473982, 13.517212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.852911, 21.075621, 14.266338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.877995, 21.462399, 14.365198>,  <17.893044, 21.694466, 14.424514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.877995, 21.462399, 14.365198>,  <17.852911, 21.075621, 14.266338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.877995, 21.462399, 14.365198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531325, -0.177284, 0.828411,
		0.844844, -0.183264, 0.502646,
		0.062707, 0.966946, 0.247150,
		17.896807, 21.752481, 14.439343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022764, 21.081844, 14.904506>,  <17.852911, 21.075621, 14.266338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022764, 21.081844, 14.904506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.880585, 21.449451, 14.836319>,  <17.795277, 21.670015, 14.795407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.880585, 21.449451, 14.836319>,  <18.022764, 21.081844, 14.904506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.880585, 21.449451, 14.836319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659179, -0.117172, 0.742801,
		0.662674, 0.376397, 0.647447,
		-0.355450, 0.919019, -0.170466,
		17.773949, 21.725157, 14.785179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837976, 21.341129, 15.639807>,  <18.022764, 21.081844, 14.904506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.837976, 21.341129, 15.639807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.628212, 21.568707, 15.386414>,  <17.502354, 21.705254, 15.234378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.628212, 21.568707, 15.386414>,  <17.837976, 21.341129, 15.639807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.628212, 21.568707, 15.386414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633335, 0.236631, 0.736812,
		0.569105, 0.787598, 0.236240,
		-0.524410, 0.568942, -0.633482,
		17.470888, 21.739389, 15.196369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.634588, 21.957674, 16.002201>,  <17.837976, 21.341129, 15.639807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.634588, 21.957674, 16.002201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.379822, 21.895351, 15.700191>,  <17.226963, 21.857958, 15.518986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.379822, 21.895351, 15.700191>,  <17.634588, 21.957674, 16.002201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379822, 21.895351, 15.700191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763605, -0.007228, 0.645644,
		-0.106053, 0.987761, -0.114372,
		-0.636915, -0.155808, -0.755025,
		17.188747, 21.848610, 15.473684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.139750, 22.328381, 16.187792>,  <17.634588, 21.957674, 16.002201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.139750, 22.328381, 16.187792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.954979, 22.117771, 15.902304>,  <16.844116, 21.991405, 15.731010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.954979, 22.117771, 15.902304>,  <17.139750, 22.328381, 16.187792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954979, 22.117771, 15.902304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869228, 0.108834, 0.482284,
		-0.176257, 0.843166, -0.507943,
		-0.461927, -0.526524, -0.713720,
		16.816401, 21.959814, 15.688188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537214, 22.642422, 16.059338>,  <17.139750, 22.328381, 16.187792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.537214, 22.642422, 16.059338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.453514, 22.280544, 15.910883>,  <16.403294, 22.063417, 15.821811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.453514, 22.280544, 15.910883>,  <16.537214, 22.642422, 16.059338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453514, 22.280544, 15.910883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814734, -0.048585, 0.577796,
		-0.540761, 0.423281, -0.726919,
		-0.209253, -0.904695, -0.371134,
		16.390738, 22.009136, 15.799542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714032, 22.548523, 15.887304>,  <16.537214, 22.642422, 16.059338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.714032, 22.548523, 15.887304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.889316, 22.197018, 15.962936>,  <15.994486, 21.986115, 16.008316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.889316, 22.197018, 15.962936>,  <15.714032, 22.548523, 15.887304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.889316, 22.197018, 15.962936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755449, -0.246056, 0.607251,
		-0.487105, -0.408942, -0.771683,
		0.438208, -0.878762, 0.189080,
		16.020779, 21.933390, 16.019661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.113314, 22.055073, 15.999947>,  <15.714032, 22.548523, 15.887304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.113314, 22.055073, 15.999947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.428788, 21.873360, 16.165646>,  <15.618073, 21.764332, 16.265064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.428788, 21.873360, 16.165646>,  <15.113314, 22.055073, 15.999947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.428788, 21.873360, 16.165646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568188, -0.281253, 0.773343,
		-0.234802, -0.845299, -0.479936,
		0.788689, -0.454276, 0.414249,
		15.665395, 21.737076, 16.289919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.861186, 21.593378, 16.573051>,  <15.113314, 22.055073, 15.999947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.861186, 21.593378, 16.573051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.254838, 21.565434, 16.638296>,  <15.491030, 21.548666, 16.677443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.254838, 21.565434, 16.638296>,  <14.861186, 21.593378, 16.573051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.254838, 21.565434, 16.638296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176659, -0.299346, 0.937648,
		-0.016679, -0.951584, -0.306937,
		0.984131, -0.069862, 0.163113,
		15.550077, 21.544476, 16.687229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.014284, 20.911798, 16.693077>,  <14.861186, 21.593378, 16.573051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.014284, 20.911798, 16.693077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.260072, 21.174549, 16.867865>,  <15.407544, 21.332199, 16.972736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.260072, 21.174549, 16.867865>,  <15.014284, 20.911798, 16.693077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.260072, 21.174549, 16.867865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294182, -0.323152, 0.899461,
		0.732041, -0.681240, -0.005327,
		0.614469, 0.656875, 0.436969,
		15.444412, 21.371613, 16.998955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224456, 20.145948, 16.487768>,  <15.014284, 20.911798, 16.693077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.224456, 20.145948, 16.487768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.069991, 19.778637, 16.452797>,  <14.977312, 19.558250, 16.431814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.069991, 19.778637, 16.452797>,  <15.224456, 20.145948, 16.487768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.069991, 19.778637, 16.452797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043307, 0.076629, -0.996119,
		0.921414, -0.388449, 0.010176,
		-0.386162, -0.918278, -0.087430,
		14.954143, 19.503153, 16.426567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.706405, 19.675169, 16.092299>,  <15.224456, 20.145948, 16.487768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.706405, 19.675169, 16.092299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.326932, 19.559158, 16.041878>,  <15.099249, 19.489552, 16.011625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.326932, 19.559158, 16.041878>,  <15.706405, 19.675169, 16.092299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326932, 19.559158, 16.041878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118822, 0.042475, -0.992007,
		0.293062, -0.956075, -0.005834,
		-0.948681, -0.290027, -0.126051,
		15.042328, 19.472151, 16.004063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798840, 19.083941, 15.629886>,  <15.706405, 19.675169, 16.092299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798840, 19.083941, 15.629886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.432092, 19.235619, 15.579992>,  <15.212043, 19.326626, 15.550056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.432092, 19.235619, 15.579992>,  <15.798840, 19.083941, 15.629886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432092, 19.235619, 15.579992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072499, -0.149092, -0.986162,
		-0.392546, -0.913226, 0.109207,
		-0.916871, 0.379196, -0.124734,
		15.157030, 19.349377, 15.542572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454824, 18.650719, 15.228903>,  <15.798840, 19.083941, 15.629886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454824, 18.650719, 15.228903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.250268, 18.988144, 15.163324>,  <15.127534, 19.190599, 15.123978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.250268, 18.988144, 15.163324>,  <15.454824, 18.650719, 15.228903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.250268, 18.988144, 15.163324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108608, -0.125804, -0.986092,
		-0.852457, -0.522084, -0.027283,
		-0.511391, 0.843565, -0.163945,
		15.096850, 19.241213, 15.114141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.190196, 18.502804, 14.623452>,  <15.454824, 18.650719, 15.228903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.190196, 18.502804, 14.623452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.147796, 18.900486, 14.630638>,  <15.122355, 19.139095, 14.634950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.147796, 18.900486, 14.630638>,  <15.190196, 18.502804, 14.623452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147796, 18.900486, 14.630638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223218, 0.041398, -0.973889,
		-0.968988, -0.099224, -0.226312,
		-0.106002, 0.994204, 0.017965,
		15.115995, 19.198748, 14.636027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
