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
	<1.530715, 1.029388, 3.684356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.321499, 1.335398, 3.534067>,  <1.195969, 1.519003, 3.443894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.321499, 1.335398, 3.534067>,  <1.530715, 1.029388, 3.684356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.321499, 1.335398, 3.534067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187962, 0.533511, 0.824643,
		0.831324, 0.360700, -0.422843,
		-0.523040, 0.765024, -0.375723,
		1.164587, 1.564905, 3.421350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.923826, 1.670563, 3.590182>,  <1.530715, 1.029388, 3.684356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.923826, 1.670563, 3.590182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.550255, 1.800821, 3.649149>,  <1.326112, 1.878977, 3.684529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.550255, 1.800821, 3.649149>,  <1.923826, 1.670563, 3.590182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.550255, 1.800821, 3.649149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326529, 0.609379, 0.722520,
		0.145453, 0.722918, -0.675450,
		-0.933928, 0.325647, 0.147418,
		1.270076, 1.898515, 3.693374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.877011, 2.440682, 3.582285>,  <1.923826, 1.670563, 3.590182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.877011, 2.440682, 3.582285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.592087, 2.289663, 3.818953>,  <1.421132, 2.199052, 3.960953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.592087, 2.289663, 3.818953>,  <1.877011, 2.440682, 3.582285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.592087, 2.289663, 3.818953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142699, 0.747486, 0.648770,
		-0.687204, 0.546557, -0.478567,
		-0.712311, -0.377546, 0.591669,
		1.378394, 2.176399, 3.996453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.541993, 3.048249, 3.717515>,  <1.877011, 2.440682, 3.582285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.541993, 3.048249, 3.717515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.496429, 2.754154, 3.984783>,  <1.469091, 2.577697, 4.145144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.496429, 2.754154, 3.984783>,  <1.541993, 3.048249, 3.717515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.496429, 2.754154, 3.984783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141859, 0.677693, 0.721532,
		-0.983311, -0.012597, -0.181495,
		-0.113909, -0.735237, 0.668170,
		1.462257, 2.533583, 4.185235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.893233, 3.112611, 4.044733>,  <1.541993, 3.048249, 3.717515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.893233, 3.112611, 4.044733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.123192, 2.895409, 4.289564>,  <1.261167, 2.765087, 4.436463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.123192, 2.895409, 4.289564>,  <0.893233, 3.112611, 4.044733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.123192, 2.895409, 4.289564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293605, 0.561334, 0.773758,
		-0.763735, -0.624539, 0.163279,
		0.574896, -0.543006, 0.612078,
		1.295661, 2.732507, 4.473187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.488372, 2.976155, 4.530450>,  <0.893233, 3.112611, 4.044733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.488372, 2.976155, 4.530450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.843277, 2.898363, 4.697756>,  <1.056220, 2.851688, 4.798139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.843277, 2.898363, 4.697756>,  <0.488372, 2.976155, 4.530450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.843277, 2.898363, 4.697756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249810, 0.559684, 0.790157,
		-0.387764, -0.805563, 0.448004,
		0.887262, -0.194478, 0.418263,
		1.109456, 2.840019, 4.823235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.352135, 2.710039, 5.164124>,  <0.488372, 2.976155, 4.530450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.352135, 2.710039, 5.164124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.727482, 2.847872, 5.174938>,  <0.952690, 2.930572, 5.181427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.727482, 2.847872, 5.174938>,  <0.352135, 2.710039, 5.164124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.727482, 2.847872, 5.174938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235031, 0.578767, 0.780890,
		0.253433, -0.739116, 0.624083,
		0.938367, 0.344582, 0.027036,
		1.008992, 2.951247, 5.183049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.469292, 2.598530, 5.854239>,  <0.352135, 2.710039, 5.164124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.469292, 2.598530, 5.854239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.703415, 2.881506, 5.695774>,  <0.843889, 3.051292, 5.600696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.703415, 2.881506, 5.695774>,  <0.469292, 2.598530, 5.854239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.703415, 2.881506, 5.695774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180958, 0.590250, 0.786676,
		0.790361, -0.388758, 0.473495,
		0.585307, 0.707440, -0.396161,
		0.879007, 3.093738, 5.576926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.295375, 4.997394, 0.831526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.428810, 5.037613, 1.206463>,  <1.508871, 5.061744, 1.431425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.428810, 5.037613, 1.206463>,  <1.295375, 4.997394, 0.831526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.428810, 5.037613, 1.206463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942350, -0.007744, -0.334540,
		-0.026378, 0.994902, -0.097334,
		0.333588, 0.100547, 0.937342,
		1.528887, 5.067777, 1.487665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.981664, 4.331019, 0.565468>,  <1.295375, 4.997394, 0.831526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.981664, 4.331019, 0.565468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.354195, 4.247414, 0.684761>,  <1.577713, 4.197250, 0.756337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.354195, 4.247414, 0.684761>,  <0.981664, 4.331019, 0.565468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.354195, 4.247414, 0.684761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045605, -0.879397, -0.473901,
		0.361317, 0.427756, -0.828538,
		0.931327, -0.209014, 0.298233,
		1.633593, 4.184710, 0.774231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.264814, 4.018726, 0.040328>,  <0.981664, 4.331019, 0.565468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.264814, 4.018726, 0.040328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.445930, 3.875229, 0.366833>,  <1.554601, 3.789130, 0.562735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.445930, 3.875229, 0.366833>,  <1.264814, 4.018726, 0.040328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.445930, 3.875229, 0.366833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014727, -0.912351, -0.409144,
		0.891494, 0.197278, -0.407822,
		0.452792, -0.358744, 0.816261,
		1.581768, 3.767606, 0.611711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.936790, 3.681149, -0.093040>,  <1.264814, 4.018726, 0.040328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.936790, 3.681149, -0.093040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.722839, 3.538853, 0.213516>,  <1.594469, 3.453475, 0.397450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.722839, 3.538853, 0.213516>,  <1.936790, 3.681149, -0.093040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.722839, 3.538853, 0.213516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024788, -0.900050, -0.435082,
		0.844567, -0.251712, 0.472597,
		-0.534876, -0.355741, 0.766392,
		1.562376, 3.432130, 0.443434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.323811, 3.223789, 0.249416>,  <1.936790, 3.681149, -0.093040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.323811, 3.223789, 0.249416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.935410, 3.128456, 0.256922>,  <1.702369, 3.071256, 0.261425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.935410, 3.128456, 0.256922>,  <2.323811, 3.223789, 0.249416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.935410, 3.128456, 0.256922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218862, -0.917766, -0.331367,
		0.096196, -0.317652, 0.943315,
		-0.971002, -0.238332, 0.018764,
		1.644109, 3.056956, 0.262551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.200381, 2.505204, 0.411307>,  <2.323811, 3.223789, 0.249416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.200381, 2.505204, 0.411307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.865997, 2.615150, 0.221308>,  <1.665367, 2.681118, 0.107308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.865997, 2.615150, 0.221308>,  <2.200381, 2.505204, 0.411307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.865997, 2.615150, 0.221308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109771, -0.764293, -0.635458,
		-0.537702, -0.583358, 0.608745,
		-0.835958, 0.274864, -0.474998,
		1.615210, 2.697610, 0.078808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.966382, 1.905281, 0.128076>,  <2.200381, 2.505204, 0.411307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.966382, 1.905281, 0.128076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.732773, 2.170044, -0.059879>,  <1.592607, 2.328902, -0.172653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.732773, 2.170044, -0.059879>,  <1.966382, 1.905281, 0.128076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.732773, 2.170044, -0.059879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126730, -0.646120, -0.752641,
		-0.801784, -0.380010, 0.461232,
		-0.584022, 0.661907, -0.469890,
		1.557566, 2.368616, -0.200846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.288523, 1.598279, 0.138345>,  <1.966382, 1.905281, 0.128076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.288523, 1.598279, 0.138345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.355110, 1.856659, -0.159658>,  <1.395062, 2.011687, -0.338461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.355110, 1.856659, -0.159658>,  <1.288523, 1.598279, 0.138345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.355110, 1.856659, -0.159658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440039, -0.627478, -0.642368,
		-0.882414, 0.434766, 0.179789,
		0.166467, 0.645949, -0.745009,
		1.405050, 2.050444, -0.383161>
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
