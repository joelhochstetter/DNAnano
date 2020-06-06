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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.567503, 34.953159, 34.677277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236645, 35.001762, 34.896755>,  <24.038130, 35.030922, 35.028442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236645, 35.001762, 34.896755>,  <24.567503, 34.953159, 34.677277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.236645, 35.001762, 34.896755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560641, 0.110903, 0.820599,
		0.038854, 0.986376, -0.159853,
		-0.827147, 0.121503, 0.548694,
		23.988501, 35.038212, 35.061363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613291, 35.591640, 35.167484>,  <24.567503, 34.953159, 34.677277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613291, 35.591640, 35.167484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357790, 35.318317, 35.308952>,  <24.204489, 35.154324, 35.393833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357790, 35.318317, 35.308952>,  <24.613291, 35.591640, 35.167484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357790, 35.318317, 35.308952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525150, -0.051231, 0.849466,
		-0.562327, 0.728332, 0.391563,
		-0.638753, -0.683307, 0.353675,
		24.166164, 35.113327, 35.415054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.231956, 35.778023, 35.787437>,  <24.613291, 35.591640, 35.167484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.231956, 35.778023, 35.787437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295097, 35.383881, 35.761669>,  <24.332981, 35.147396, 35.746208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295097, 35.383881, 35.761669>,  <24.231956, 35.778023, 35.787437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295097, 35.383881, 35.761669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624192, 0.049017, 0.779732,
		-0.765158, -0.163291, 0.622791,
		0.157851, -0.985360, -0.064419,
		24.342453, 35.088272, 35.742344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.055725, 35.442471, 36.397808>,  <24.231956, 35.778023, 35.787437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.055725, 35.442471, 36.397808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312939, 35.193733, 36.219006>,  <24.467268, 35.044491, 36.111725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312939, 35.193733, 36.219006>,  <24.055725, 35.442471, 36.397808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312939, 35.193733, 36.219006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595223, 0.038543, 0.802635,
		-0.481886, -0.782191, 0.394921,
		0.643036, -0.621845, -0.447005,
		24.505850, 35.007179, 36.084904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.153170, 34.970207, 36.850586>,  <24.055725, 35.442471, 36.397808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.153170, 34.970207, 36.850586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463732, 34.969929, 36.598492>,  <24.650068, 34.969761, 36.447235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463732, 34.969929, 36.598492>,  <24.153170, 34.970207, 36.850586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463732, 34.969929, 36.598492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630205, 0.010618, 0.776356,
		0.006158, -0.999943, 0.008677,
		0.776404, -0.000688, -0.630235,
		24.696653, 34.969719, 36.409420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600494, 34.410011, 37.080940>,  <24.153170, 34.970207, 36.850586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.600494, 34.410011, 37.080940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840944, 34.671040, 36.896420>,  <24.985214, 34.827656, 36.785706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840944, 34.671040, 36.896420>,  <24.600494, 34.410011, 37.080940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.840944, 34.671040, 36.896420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618694, -0.014654, 0.785495,
		0.505831, -0.757586, -0.412551,
		0.601126, 0.652570, -0.461302,
		25.021282, 34.866810, 36.758030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257061, 34.330528, 37.369564>,  <24.600494, 34.410011, 37.080940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257061, 34.330528, 37.369564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359451, 34.671349, 37.186920>,  <25.420885, 34.875839, 37.077335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359451, 34.671349, 37.186920>,  <25.257061, 34.330528, 37.369564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359451, 34.671349, 37.186920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415419, 0.329549, 0.847836,
		0.872871, -0.406711, -0.269599,
		0.255978, 0.852047, -0.456608,
		25.436245, 34.926964, 37.049938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984411, 34.475452, 37.636879>,  <25.257061, 34.330528, 37.369564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984411, 34.475452, 37.636879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818790, 34.820221, 37.519817>,  <25.719418, 35.027084, 37.449581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818790, 34.820221, 37.519817>,  <25.984411, 34.475452, 37.636879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818790, 34.820221, 37.519817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361610, 0.450803, 0.816097,
		0.835343, 0.232083, -0.498338,
		-0.414054, 0.861925, -0.292652,
		25.694574, 35.078800, 37.432022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484589, 35.014904, 37.533192>,  <25.984411, 34.475452, 37.636879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484589, 35.014904, 37.533192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145460, 35.221703, 37.580368>,  <25.941982, 35.345783, 37.608673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145460, 35.221703, 37.580368>,  <26.484589, 35.014904, 37.533192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145460, 35.221703, 37.580368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430804, 0.541836, 0.721680,
		0.309204, 0.662665, -0.682106,
		-0.847821, 0.517000, 0.117942,
		25.891113, 35.376804, 37.615749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753595, 35.731842, 37.559017>,  <26.484589, 35.014904, 37.533192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753595, 35.731842, 37.559017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413490, 35.720615, 37.769260>,  <26.209427, 35.713879, 37.895409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413490, 35.720615, 37.769260>,  <26.753595, 35.731842, 37.559017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413490, 35.720615, 37.769260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442863, 0.501541, 0.743188,
		-0.284475, 0.864678, -0.414011,
		-0.850263, -0.028069, 0.525610,
		26.158411, 35.712196, 37.926945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701132, 36.316971, 38.027534>,  <26.753595, 35.731842, 37.559017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701132, 36.316971, 38.027534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418749, 36.101749, 38.211765>,  <26.249319, 35.972618, 38.322304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418749, 36.101749, 38.211765>,  <26.701132, 36.316971, 38.027534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418749, 36.101749, 38.211765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230141, 0.440736, 0.867633,
		-0.669820, 0.718509, -0.187314,
		-0.705958, -0.538049, 0.460572,
		26.206961, 35.940334, 38.349937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229069, 36.854374, 38.389538>,  <26.701132, 36.316971, 38.027534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229069, 36.854374, 38.389538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184189, 36.490211, 38.548824>,  <26.157261, 36.271713, 38.644398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184189, 36.490211, 38.548824>,  <26.229069, 36.854374, 38.389538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184189, 36.490211, 38.548824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266954, 0.358399, 0.894587,
		-0.957156, 0.206677, 0.202824,
		-0.112198, -0.910403, 0.398217,
		26.150530, 36.217091, 38.668289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736202, 36.851711, 38.915157>,  <26.229069, 36.854374, 38.389538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736202, 36.851711, 38.915157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979189, 36.538883, 38.970802>,  <26.124981, 36.351189, 39.004189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979189, 36.538883, 38.970802>,  <25.736202, 36.851711, 38.915157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979189, 36.538883, 38.970802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352360, 0.422260, 0.835188,
		-0.711916, -0.458332, 0.532078,
		0.607469, -0.782067, 0.139116,
		26.161430, 36.304264, 39.012539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799368, 36.802555, 39.654305>,  <25.736202, 36.851711, 38.915157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.799368, 36.802555, 39.654305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119267, 36.586628, 39.549229>,  <26.311205, 36.457073, 39.486183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119267, 36.586628, 39.549229>,  <25.799368, 36.802555, 39.654305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119267, 36.586628, 39.549229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461891, 0.273768, 0.843628,
		-0.383490, -0.796020, 0.468281,
		0.799745, -0.539818, -0.262687,
		26.359190, 36.424683, 39.470421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018095, 36.452538, 40.328125>,  <25.799368, 36.802555, 39.654305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018095, 36.452538, 40.328125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327307, 36.310429, 40.117901>,  <26.512835, 36.225163, 39.991768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327307, 36.310429, 40.117901>,  <26.018095, 36.452538, 40.328125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327307, 36.310429, 40.117901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532720, -0.086269, 0.841883,
		-0.344435, -0.930774, 0.122571,
		0.773029, -0.355270, -0.525556,
		26.559216, 36.203846, 39.960236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277998, 35.903141, 40.712059>,  <26.018095, 36.452538, 40.328125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277998, 35.903141, 40.712059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580730, 35.981171, 40.462532>,  <26.762371, 36.027988, 40.312817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580730, 35.981171, 40.462532>,  <26.277998, 35.903141, 40.712059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580730, 35.981171, 40.462532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644852, -0.067149, 0.761352,
		0.106630, -0.978488, -0.176613,
		0.756833, 0.195072, -0.623820,
		26.807781, 36.039692, 40.275387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919672, 35.555237, 40.935089>,  <26.277998, 35.903141, 40.712059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919672, 35.555237, 40.935089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060266, 35.852219, 40.706978>,  <27.144623, 36.030407, 40.570110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060266, 35.852219, 40.706978>,  <26.919672, 35.555237, 40.935089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060266, 35.852219, 40.706978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667560, 0.228314, 0.708686,
		0.656369, -0.629791, -0.415381,
		0.351487, 0.742452, -0.570282,
		27.165712, 36.074955, 40.535892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553476, 35.567745, 41.171627>,  <26.919672, 35.555237, 40.935089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553476, 35.567745, 41.171627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533798, 35.925701, 40.994198>,  <27.521992, 36.140472, 40.887741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533798, 35.925701, 40.994198>,  <27.553476, 35.567745, 41.171627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533798, 35.925701, 40.994198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626022, 0.373675, 0.684444,
		0.778252, -0.244016, -0.578601,
		-0.049193, 0.894887, -0.443572,
		27.519041, 36.194168, 40.861126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257008, 35.765350, 41.057270>,  <27.553476, 35.567745, 41.171627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257008, 35.765350, 41.057270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008976, 36.076283, 41.099724>,  <27.860157, 36.262840, 41.125195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008976, 36.076283, 41.099724>,  <28.257008, 35.765350, 41.057270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008976, 36.076283, 41.099724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506298, 0.293141, 0.811006,
		0.599306, 0.556623, -0.575330,
		-0.620077, 0.777328, 0.106136,
		27.822952, 36.309483, 41.131565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714167, 36.218620, 41.067539>,  <28.257008, 35.765350, 41.057270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714167, 36.218620, 41.067539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379160, 36.374153, 41.221100>,  <28.178156, 36.467472, 41.313236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379160, 36.374153, 41.221100>,  <28.714167, 36.218620, 41.067539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379160, 36.374153, 41.221100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536148, 0.449226, 0.714661,
		0.105424, 0.804367, -0.584705,
		-0.837515, 0.388831, 0.383901,
		28.127905, 36.490803, 41.336269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901056, 36.895229, 41.278378>,  <28.714167, 36.218620, 41.067539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901056, 36.895229, 41.278378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568623, 36.820530, 41.487919>,  <28.369162, 36.775711, 41.613644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568623, 36.820530, 41.487919>,  <28.901056, 36.895229, 41.278378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568623, 36.820530, 41.487919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381644, 0.493640, 0.781452,
		-0.404530, 0.849379, -0.338985,
		-0.831086, -0.186749, 0.523853,
		28.319298, 36.764503, 41.645073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779364, 37.469936, 41.586506>,  <28.901056, 36.895229, 41.278378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779364, 37.469936, 41.586506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566065, 37.198666, 41.788780>,  <28.438086, 37.035904, 41.910145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566065, 37.198666, 41.788780>,  <28.779364, 37.469936, 41.586506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566065, 37.198666, 41.788780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341174, 0.374595, 0.862136,
		-0.774111, 0.632259, 0.031626,
		-0.533247, -0.678179, 0.505688,
		28.406092, 36.995213, 41.940487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475136, 37.789070, 42.108154>,  <28.779364, 37.469936, 41.586506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475136, 37.789070, 42.108154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500385, 37.410660, 42.235306>,  <28.515535, 37.183613, 42.311596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500385, 37.410660, 42.235306>,  <28.475136, 37.789070, 42.108154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500385, 37.410660, 42.235306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513991, 0.303841, 0.802181,
		-0.855470, 0.112750, 0.505429,
		0.063124, -0.946027, 0.317880,
		28.519323, 37.126850, 42.330669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704260, 37.956955, 42.809433>,  <28.475136, 37.789070, 42.108154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704260, 37.956955, 42.809433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707623, 37.557034, 42.816544>,  <28.709641, 37.317081, 42.820808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707623, 37.557034, 42.816544>,  <28.704260, 37.956955, 42.809433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707623, 37.557034, 42.816544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508501, 0.019581, 0.860839,
		-0.861020, 0.001804, 0.508567,
		0.008405, -0.999807, 0.017777,
		28.710144, 37.257092, 42.821877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488077, 37.785614, 43.538857>,  <28.704260, 37.956955, 42.809433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488077, 37.785614, 43.538857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711296, 37.528927, 43.328415>,  <28.845228, 37.374916, 43.202152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711296, 37.528927, 43.328415>,  <28.488077, 37.785614, 43.538857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711296, 37.528927, 43.328415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626107, -0.090465, 0.774472,
		-0.544586, -0.761586, 0.351301,
		0.558047, -0.641718, -0.526100,
		28.878710, 37.336411, 43.170586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638323, 37.230812, 43.969231>,  <28.488077, 37.785614, 43.538857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638323, 37.230812, 43.969231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955145, 37.301929, 43.735638>,  <29.145239, 37.344601, 43.595482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955145, 37.301929, 43.735638>,  <28.638323, 37.230812, 43.969231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955145, 37.301929, 43.735638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610443, -0.234085, 0.756679,
		-0.002170, -0.955822, -0.293940,
		0.792057, 0.177791, -0.583983,
		29.192762, 37.355267, 43.560444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124207, 36.738514, 44.036053>,  <28.638323, 37.230812, 43.969231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124207, 36.738514, 44.036053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342829, 37.035423, 43.880974>,  <29.474001, 37.213570, 43.787926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342829, 37.035423, 43.880974>,  <29.124207, 36.738514, 44.036053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342829, 37.035423, 43.880974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789703, -0.302795, 0.533558,
		0.278656, -0.597781, -0.751671,
		0.546553, 0.742276, -0.387693,
		29.506794, 37.258106, 43.764668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771935, 36.566936, 43.631031>,  <29.124207, 36.738514, 44.036053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771935, 36.566936, 43.631031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855471, 36.934532, 43.764805>,  <29.905592, 37.155090, 43.845070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855471, 36.934532, 43.764805>,  <29.771935, 36.566936, 43.631031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855471, 36.934532, 43.764805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886463, -0.322311, 0.332114,
		0.413001, 0.227107, -0.881959,
		0.208839, 0.918988, 0.334437,
		29.918123, 37.210228, 43.865135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006424, 35.968143, 43.835823>,  <29.771935, 36.566936, 43.631031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006424, 35.968143, 43.835823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853897, 35.632595, 43.991199>,  <29.762381, 35.431267, 44.084423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853897, 35.632595, 43.991199>,  <30.006424, 35.968143, 43.835823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853897, 35.632595, 43.991199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504961, -0.162954, -0.847621,
		0.774345, -0.519360, -0.361462,
		-0.381319, -0.838875, 0.388440,
		29.739502, 35.380932, 44.107731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084528, 35.397449, 43.341156>,  <30.006424, 35.968143, 43.835823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084528, 35.397449, 43.341156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778248, 35.330162, 43.589481>,  <29.594481, 35.289791, 43.738476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778248, 35.330162, 43.589481>,  <30.084528, 35.397449, 43.341156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778248, 35.330162, 43.589481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601914, -0.152833, -0.783800,
		0.226727, -0.973831, 0.015773,
		-0.765699, -0.168214, 0.620814,
		29.548538, 35.279697, 43.775726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736141, 34.762947, 43.211666>,  <30.084528, 35.397449, 43.341156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736141, 34.762947, 43.211666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474428, 35.007381, 43.389874>,  <29.317400, 35.154041, 43.496799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474428, 35.007381, 43.389874>,  <29.736141, 34.762947, 43.211666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474428, 35.007381, 43.389874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674677, -0.205515, -0.708925,
		-0.341655, -0.764418, 0.546752,
		-0.654281, 0.611088, 0.445520,
		29.278143, 35.190708, 43.523529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091192, 34.392963, 42.940739>,  <29.736141, 34.762947, 43.211666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091192, 34.392963, 42.940739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997379, 34.749104, 43.096825>,  <28.941092, 34.962788, 43.190475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997379, 34.749104, 43.096825>,  <29.091192, 34.392963, 42.940739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997379, 34.749104, 43.096825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763391, 0.079836, -0.640984,
		-0.601854, -0.448220, 0.660961,
		-0.234533, 0.890351, 0.390217,
		28.927019, 35.016209, 43.213890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392040, 34.444603, 43.044434>,  <29.091192, 34.392963, 42.940739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392040, 34.444603, 43.044434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481054, 34.831776, 42.997818>,  <28.534464, 35.064079, 42.969849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481054, 34.831776, 42.997818>,  <28.392040, 34.444603, 43.044434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481054, 34.831776, 42.997818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902806, 0.159477, -0.399384,
		-0.367992, 0.194092, 0.909346,
		0.222537, 0.967934, -0.116541,
		28.547815, 35.122154, 42.962856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728420, 34.295467, 43.355125>,  <28.392040, 34.444603, 43.044434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728420, 34.295467, 43.355125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460030, 34.000431, 43.385456>,  <27.298996, 33.823410, 43.403656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460030, 34.000431, 43.385456>,  <27.728420, 34.295467, 43.355125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460030, 34.000431, 43.385456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340633, -0.397464, -0.852052,
		0.658606, -0.545875, 0.517937,
		-0.670975, -0.737593, 0.075829,
		27.258738, 33.779152, 43.408203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141161, 33.698772, 43.237289>,  <27.728420, 34.295467, 43.355125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141161, 33.698772, 43.237289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760303, 33.628780, 43.137047>,  <27.531790, 33.586784, 43.076900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760303, 33.628780, 43.137047>,  <28.141161, 33.698772, 43.237289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760303, 33.628780, 43.137047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300164, -0.380615, -0.874662,
		0.057661, -0.908028, 0.414922,
		-0.952143, -0.174979, -0.250611,
		27.474661, 33.576286, 43.061863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023523, 33.004765, 43.043972>,  <28.141161, 33.698772, 43.237289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023523, 33.004765, 43.043972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760855, 33.232048, 42.845612>,  <27.603252, 33.368420, 42.726597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760855, 33.232048, 42.845612>,  <28.023523, 33.004765, 43.043972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760855, 33.232048, 42.845612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411575, -0.280989, -0.866978,
		-0.631970, -0.773420, -0.049344,
		-0.656673, 0.568213, -0.495897,
		27.563852, 33.402512, 42.696842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773962, 32.626881, 42.511177>,  <28.023523, 33.004765, 43.043972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773962, 32.626881, 42.511177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695223, 33.001659, 42.395668>,  <27.647980, 33.226524, 42.326363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695223, 33.001659, 42.395668>,  <27.773962, 32.626881, 42.511177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695223, 33.001659, 42.395668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255984, -0.235203, -0.937631,
		-0.946426, -0.258493, -0.193543,
		-0.196849, 0.936942, -0.288772,
		27.636168, 33.282742, 42.309036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635839, 32.597569, 41.878506>,  <27.773962, 32.626881, 42.511177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635839, 32.597569, 41.878506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721012, 32.988319, 41.886154>,  <27.772116, 33.222771, 41.890743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721012, 32.988319, 41.886154>,  <27.635839, 32.597569, 41.878506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721012, 32.988319, 41.886154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288562, -0.044173, -0.956442,
		-0.933484, 0.209174, -0.291296,
		0.212930, 0.976880, 0.019125,
		27.784891, 33.281384, 41.891891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301586, 32.877041, 41.300503>,  <27.635839, 32.597569, 41.878506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301586, 32.877041, 41.300503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573675, 33.154167, 41.396255>,  <27.736929, 33.320442, 41.453709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573675, 33.154167, 41.396255>,  <27.301586, 32.877041, 41.300503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573675, 33.154167, 41.396255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301945, 0.032745, -0.952763,
		-0.667925, 0.720373, -0.186918,
		0.680224, 0.692813, 0.239384,
		27.777742, 33.362011, 41.468071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154572, 33.410580, 40.896679>,  <27.301586, 32.877041, 41.300503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154572, 33.410580, 40.896679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521225, 33.520760, 41.012547>,  <27.741217, 33.586868, 41.082066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521225, 33.520760, 41.012547>,  <27.154572, 33.410580, 40.896679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521225, 33.520760, 41.012547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278363, 0.080192, -0.957122,
		-0.286869, 0.957964, -0.003169,
		0.916635, 0.275451, 0.289667,
		27.796215, 33.603394, 41.099445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347382, 34.046055, 40.688290>,  <27.154572, 33.410580, 40.896679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347382, 34.046055, 40.688290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702202, 33.874008, 40.755390>,  <27.915094, 33.770779, 40.795650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702202, 33.874008, 40.755390>,  <27.347382, 34.046055, 40.688290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702202, 33.874008, 40.755390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268292, 0.184550, -0.945495,
		0.375713, 0.883709, 0.279102,
		0.887051, -0.430115, 0.167755,
		27.968317, 33.744972, 40.805717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808628, 34.531654, 40.510864>,  <27.347382, 34.046055, 40.688290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808628, 34.531654, 40.510864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997202, 34.181602, 40.467224>,  <28.110346, 33.971573, 40.441040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997202, 34.181602, 40.467224>,  <27.808628, 34.531654, 40.510864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997202, 34.181602, 40.467224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350985, 0.299671, -0.887134,
		0.809048, 0.379934, 0.448432,
		0.471435, -0.875127, -0.109097,
		28.138632, 33.919064, 40.434494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511810, 34.704948, 40.262566>,  <27.808628, 34.531654, 40.510864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511810, 34.704948, 40.262566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435883, 34.323860, 40.167660>,  <28.390326, 34.095207, 40.110718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435883, 34.323860, 40.167660>,  <28.511810, 34.704948, 40.262566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435883, 34.323860, 40.167660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351787, 0.159613, -0.922372,
		0.916633, -0.258547, 0.304857,
		-0.189817, -0.952721, -0.237260,
		28.378937, 34.038044, 40.096481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976547, 34.557503, 39.579735>,  <28.511810, 34.704948, 40.262566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976547, 34.557503, 39.579735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743336, 34.232857, 39.594479>,  <28.603409, 34.038071, 39.603325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743336, 34.232857, 39.594479>,  <28.976547, 34.557503, 39.579735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743336, 34.232857, 39.594479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013252, -0.054860, -0.998406,
		0.812344, -0.581611, 0.042741,
		-0.583028, -0.811615, 0.036858,
		28.568428, 33.989372, 39.605537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267834, 34.152554, 39.081642>,  <28.976547, 34.557503, 39.579735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267834, 34.152554, 39.081642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888256, 34.044956, 39.147545>,  <28.660509, 33.980396, 39.187088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888256, 34.044956, 39.147545>,  <29.267834, 34.152554, 39.081642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888256, 34.044956, 39.147545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164371, -0.024116, -0.986104,
		0.269229, -0.962840, -0.021330,
		-0.948946, -0.268994, 0.164756,
		28.603573, 33.964256, 39.196972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145121, 33.505531, 38.722595>,  <29.267834, 34.152554, 39.081642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145121, 33.505531, 38.722595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775099, 33.646801, 38.778515>,  <28.553085, 33.731564, 38.812065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775099, 33.646801, 38.778515>,  <29.145121, 33.505531, 38.722595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775099, 33.646801, 38.778515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196359, -0.129596, -0.971930,
		-0.325145, -0.926538, 0.189232,
		-0.925054, 0.353175, 0.139796,
		28.497583, 33.752754, 38.820454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719500, 33.121368, 38.275414>,  <29.145121, 33.505531, 38.722595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719500, 33.121368, 38.275414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458094, 33.410259, 38.366020>,  <28.301250, 33.583591, 38.420383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458094, 33.410259, 38.366020>,  <28.719500, 33.121368, 38.275414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458094, 33.410259, 38.366020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314910, 0.012701, -0.949036,
		-0.688294, -0.691543, 0.219135,
		-0.653516, 0.722224, 0.226516,
		28.262039, 33.626926, 38.433975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142857, 32.976120, 37.901142>,  <28.719500, 33.121368, 38.275414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142857, 32.976120, 37.901142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116003, 33.366699, 37.983166>,  <28.099892, 33.601048, 38.032379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116003, 33.366699, 37.983166>,  <28.142857, 32.976120, 37.901142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116003, 33.366699, 37.983166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234316, 0.184344, -0.954523,
		-0.969840, -0.112129, 0.216421,
		-0.067133, 0.976445, 0.205057,
		28.095863, 33.659634, 38.044682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447710, 33.163414, 37.561058>,  <28.142857, 32.976120, 37.901142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447710, 33.163414, 37.561058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639908, 33.503849, 37.645699>,  <27.755226, 33.708111, 37.696484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639908, 33.503849, 37.645699>,  <27.447710, 33.163414, 37.561058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639908, 33.503849, 37.645699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138368, 0.311831, -0.940009,
		-0.866012, 0.422391, 0.267596,
		0.480496, 0.851086, 0.211604,
		27.784058, 33.759174, 37.709179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001226, 33.669640, 37.674591>,  <27.447710, 33.163414, 37.561058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001226, 33.669640, 37.674591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351240, 33.815552, 37.547314>,  <27.561249, 33.903099, 37.470947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351240, 33.815552, 37.547314>,  <27.001226, 33.669640, 37.674591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351240, 33.815552, 37.547314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449438, 0.368118, -0.813938,
		-0.179773, 0.855234, 0.486062,
		0.875036, 0.364779, -0.318197,
		27.613750, 33.924984, 37.451855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865839, 34.211617, 37.275173>,  <27.001226, 33.669640, 37.674591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865839, 34.211617, 37.275173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250877, 34.242615, 37.171322>,  <27.481899, 34.261215, 37.109013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250877, 34.242615, 37.171322>,  <26.865839, 34.211617, 37.275173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250877, 34.242615, 37.171322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269226, 0.381356, -0.884356,
		0.030477, 0.921174, 0.387955,
		0.962595, 0.077495, -0.259627,
		27.539656, 34.265862, 37.093433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037344, 34.852154, 36.904545>,  <26.865839, 34.211617, 37.275173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037344, 34.852154, 36.904545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325939, 34.607296, 36.775093>,  <27.499096, 34.460381, 36.697422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325939, 34.607296, 36.775093>,  <27.037344, 34.852154, 36.904545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325939, 34.607296, 36.775093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128181, 0.341227, -0.931200,
		0.680458, 0.713333, 0.167726,
		0.721489, -0.612144, -0.323627,
		27.542385, 34.423653, 36.678005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485401, 35.272228, 36.512074>,  <27.037344, 34.852154, 36.904545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485401, 35.272228, 36.512074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546509, 34.901455, 36.374985>,  <27.583174, 34.678989, 36.292732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546509, 34.901455, 36.374985>,  <27.485401, 35.272228, 36.512074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546509, 34.901455, 36.374985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281952, 0.291501, -0.914074,
		0.947188, 0.236273, -0.216818,
		0.152768, -0.926932, -0.342723,
		27.592339, 34.623375, 36.272167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879635, 35.314320, 35.918705>,  <27.485401, 35.272228, 36.512074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879635, 35.314320, 35.918705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687984, 34.965328, 35.880299>,  <27.572994, 34.755932, 35.857254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687984, 34.965328, 35.880299>,  <27.879635, 35.314320, 35.918705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687984, 34.965328, 35.880299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335548, 0.283143, -0.898464,
		0.811077, -0.398260, -0.428420,
		-0.479127, -0.872479, -0.096015,
		27.544247, 34.703583, 35.851494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162872, 35.064442, 35.266911>,  <27.879635, 35.314320, 35.918705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162872, 35.064442, 35.266911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835899, 34.842735, 35.329647>,  <27.639715, 34.709713, 35.367287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835899, 34.842735, 35.329647>,  <28.162872, 35.064442, 35.266911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835899, 34.842735, 35.329647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246014, 0.089731, -0.965104,
		0.520847, -0.827491, -0.209705,
		-0.817432, -0.554262, 0.156839,
		27.590670, 34.676456, 35.376698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104370, 34.550480, 34.704361>,  <28.162872, 35.064442, 35.266911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104370, 34.550480, 34.704361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737991, 34.577591, 34.862576>,  <27.518164, 34.593857, 34.957504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737991, 34.577591, 34.862576>,  <28.104370, 34.550480, 34.704361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737991, 34.577591, 34.862576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384763, 0.131698, -0.913571,
		-0.114014, -0.988970, -0.094548,
		-0.915946, 0.067782, 0.395535,
		27.463207, 34.597927, 34.981236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815460, 34.227680, 34.352478>,  <28.104370, 34.550480, 34.704361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815460, 34.227680, 34.352478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182549, 34.362930, 34.269093>,  <29.402802, 34.444080, 34.219063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182549, 34.362930, 34.269093>,  <28.815460, 34.227680, 34.352478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182549, 34.362930, 34.269093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295933, -0.932062, -0.209008,
		-0.264972, 0.130120, -0.955436,
		0.917722, 0.338126, -0.208464,
		29.457865, 34.464367, 34.206554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182966, 33.697872, 33.925278>,  <28.815460, 34.227680, 34.352478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182966, 33.697872, 33.925278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529415, 33.878460, 34.011082>,  <29.737284, 33.986813, 34.062565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529415, 33.878460, 34.011082>,  <29.182966, 33.697872, 33.925278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529415, 33.878460, 34.011082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493856, -0.706767, -0.506544,
		-0.077082, 0.544664, -0.835105,
		0.866121, 0.451466, 0.214507,
		29.789251, 34.013901, 34.075432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590450, 34.308304, 33.671627>,  <29.182966, 33.697872, 33.925278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590450, 34.308304, 33.671627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917967, 34.131668, 33.818367>,  <30.114477, 34.025688, 33.906410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917967, 34.131668, 33.818367>,  <29.590450, 34.308304, 33.671627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917967, 34.131668, 33.818367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007811, -0.647524, -0.762005,
		0.574040, 0.621057, -0.533635,
		0.818790, -0.441589, 0.366853,
		30.163605, 33.999191, 33.928425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125404, 34.454327, 33.268543>,  <29.590450, 34.308304, 33.671627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125404, 34.454327, 33.268543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147381, 34.100365, 33.453552>,  <30.160566, 33.887989, 33.564556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147381, 34.100365, 33.453552>,  <30.125404, 34.454327, 33.268543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147381, 34.100365, 33.453552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060867, -0.459391, -0.886146,
		0.996633, 0.076839, 0.028621,
		0.054942, -0.884904, 0.462521,
		30.163864, 33.834892, 33.592308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847689, 34.694736, 33.436451>,  <30.125404, 34.454327, 33.268543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847689, 34.694736, 33.436451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529202, 34.924946, 33.511074>,  <30.338108, 35.063072, 33.555847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529202, 34.924946, 33.511074>,  <30.847689, 34.694736, 33.436451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529202, 34.924946, 33.511074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012143, -0.293094, 0.956007,
		0.604886, 0.763457, 0.226378,
		-0.796220, 0.575526, 0.186559,
		30.290335, 35.097603, 33.567043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925306, 35.154022, 33.906010>,  <30.847689, 34.694736, 33.436451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925306, 35.154022, 33.906010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538874, 35.052734, 33.926281>,  <30.307014, 34.991962, 33.938442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538874, 35.052734, 33.926281>,  <30.925306, 35.154022, 33.906010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538874, 35.052734, 33.926281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129706, -0.306116, 0.943117,
		-0.223300, 0.917700, 0.328577,
		-0.966081, -0.253217, 0.050675,
		30.249050, 34.976768, 33.941483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629511, 35.562420, 34.390224>,  <30.925306, 35.154022, 33.906010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629511, 35.562420, 34.390224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495173, 35.191792, 34.322491>,  <30.414570, 34.969414, 34.281849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495173, 35.191792, 34.322491>,  <30.629511, 35.562420, 34.390224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495173, 35.191792, 34.322491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304340, -0.276879, 0.911436,
		-0.891395, 0.254566, 0.374982,
		-0.335845, -0.926571, -0.169334,
		30.394419, 34.913818, 34.271690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081982, 35.380642, 34.980755>,  <30.629511, 35.562420, 34.390224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081982, 35.380642, 34.980755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256926, 35.068176, 34.802544>,  <30.361893, 34.880695, 34.695618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256926, 35.068176, 34.802544>,  <30.081982, 35.380642, 34.980755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256926, 35.068176, 34.802544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258949, -0.365044, 0.894253,
		-0.861198, -0.506479, 0.042626,
		0.437360, -0.781167, -0.445528,
		30.388134, 34.833828, 34.668884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889540, 34.795639, 35.408638>,  <30.081982, 35.380642, 34.980755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889540, 34.795639, 35.408638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196863, 34.674744, 35.182945>,  <30.381256, 34.602207, 35.047531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196863, 34.674744, 35.182945>,  <29.889540, 34.795639, 35.408638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196863, 34.674744, 35.182945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373669, -0.503912, 0.778745,
		-0.519685, -0.809153, -0.274225,
		0.768309, -0.302233, -0.564231,
		30.427355, 34.584072, 35.013676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931404, 34.066895, 35.476406>,  <29.889540, 34.795639, 35.408638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931404, 34.066895, 35.476406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294878, 34.177177, 35.351009>,  <30.512962, 34.243347, 35.275772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294878, 34.177177, 35.351009>,  <29.931404, 34.066895, 35.476406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294878, 34.177177, 35.351009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417478, -0.598107, 0.684090,
		0.001108, -0.752498, -0.658593,
		0.908686, 0.275706, -0.313489,
		30.567484, 34.259888, 35.256962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402578, 33.556587, 35.535015>,  <29.931404, 34.066895, 35.476406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402578, 33.556587, 35.535015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690504, 33.832230, 35.501553>,  <30.863260, 33.997616, 35.481476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690504, 33.832230, 35.501553>,  <30.402578, 33.556587, 35.535015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690504, 33.832230, 35.501553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528116, -0.465420, 0.710266,
		0.450513, -0.555441, -0.698945,
		0.719813, 0.689108, -0.083660,
		30.906448, 34.038963, 35.476456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139822, 33.252457, 35.483150>,  <30.402578, 33.556587, 35.535015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139822, 33.252457, 35.483150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224203, 33.630257, 35.583881>,  <31.274832, 33.856937, 35.644318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224203, 33.630257, 35.583881>,  <31.139822, 33.252457, 35.483150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224203, 33.630257, 35.583881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720442, -0.324348, 0.612994,
		0.660653, 0.052113, -0.748881,
		0.210954, 0.944501, 0.251826,
		31.287489, 33.913609, 35.659428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864264, 33.284771, 35.560993>,  <31.139822, 33.252457, 35.483150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864264, 33.284771, 35.560993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697781, 33.587448, 35.762657>,  <31.597891, 33.769054, 35.883656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697781, 33.587448, 35.762657>,  <31.864264, 33.284771, 35.560993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697781, 33.587448, 35.762657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558305, -0.224964, 0.798553,
		0.717681, 0.613842, -0.328836,
		-0.416209, 0.756696, 0.504163,
		31.572918, 33.814457, 35.913906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435074, 33.703728, 35.750896>,  <31.864264, 33.284771, 35.560993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435074, 33.703728, 35.750896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155266, 33.794247, 36.022030>,  <31.987381, 33.848560, 36.184711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155266, 33.794247, 36.022030>,  <32.435074, 33.703728, 35.750896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155266, 33.794247, 36.022030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638577, -0.227823, 0.735062,
		0.320772, 0.947040, 0.014857,
		-0.699518, 0.226300, 0.677837,
		31.945410, 33.862137, 36.225380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752155, 34.106209, 36.192139>,  <32.435074, 33.703728, 35.750896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752155, 34.106209, 36.192139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424957, 33.979847, 36.384426>,  <32.228638, 33.904030, 36.499798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424957, 33.979847, 36.384426>,  <32.752155, 34.106209, 36.192139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424957, 33.979847, 36.384426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539780, -0.132739, 0.831275,
		-0.198794, 0.939460, 0.279100,
		-0.817996, -0.315905, 0.480714,
		32.179558, 33.885075, 36.528641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812901, 34.404575, 36.846134>,  <32.752155, 34.106209, 36.192139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812901, 34.404575, 36.846134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549355, 34.111946, 36.916229>,  <32.391228, 33.936371, 36.958286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549355, 34.111946, 36.916229>,  <32.812901, 34.404575, 36.846134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549355, 34.111946, 36.916229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365518, -0.107732, 0.924549,
		-0.657493, 0.673202, 0.338382,
		-0.658862, -0.731569, 0.175235,
		32.351696, 33.892475, 36.968800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508808, 34.522301, 37.495815>,  <32.812901, 34.404575, 36.846134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508808, 34.522301, 37.495815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438126, 34.132515, 37.440403>,  <32.395714, 33.898643, 37.407158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438126, 34.132515, 37.440403>,  <32.508808, 34.522301, 37.495815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438126, 34.132515, 37.440403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273791, -0.183852, 0.944053,
		-0.945417, 0.128894, 0.299289,
		-0.176708, -0.974466, -0.138526,
		32.385113, 33.840176, 37.398846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014664, 34.269619, 37.938484>,  <32.508808, 34.522301, 37.495815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014664, 34.269619, 37.938484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215584, 33.941025, 37.830513>,  <32.336136, 33.743870, 37.765728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215584, 33.941025, 37.830513>,  <32.014664, 34.269619, 37.938484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215584, 33.941025, 37.830513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214830, -0.183822, 0.959196,
		-0.837582, -0.539793, 0.084145,
		0.502299, -0.821482, -0.269930,
		32.366272, 33.694580, 37.749535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789051, 33.804588, 38.357983>,  <32.014664, 34.269619, 37.938484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789051, 33.804588, 38.357983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122532, 33.623344, 38.231724>,  <32.322620, 33.514599, 38.155968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122532, 33.623344, 38.231724>,  <31.789051, 33.804588, 38.357983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122532, 33.623344, 38.231724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094813, -0.445659, 0.890168,
		-0.544013, -0.772063, -0.328587,
		0.833703, -0.453108, -0.315646,
		32.372643, 33.487411, 38.137032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742214, 33.113846, 38.611145>,  <31.789051, 33.804588, 38.357983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742214, 33.113846, 38.611145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129505, 33.128906, 38.512253>,  <32.361877, 33.137943, 38.452919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129505, 33.128906, 38.512253>,  <31.742214, 33.113846, 38.611145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129505, 33.128906, 38.512253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222021, -0.584414, 0.780491,
		-0.115095, -0.810581, -0.574204,
		0.968225, 0.037655, -0.247229,
		32.419971, 33.140202, 38.438084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938311, 32.454308, 38.568550>,  <31.742214, 33.113846, 38.611145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938311, 32.454308, 38.568550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276257, 32.657986, 38.634182>,  <32.479023, 32.780193, 38.673561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276257, 32.657986, 38.634182>,  <31.938311, 32.454308, 38.568550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276257, 32.657986, 38.634182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194068, -0.577524, 0.792971,
		0.498540, -0.638110, -0.586748,
		0.844864, 0.509197, 0.164082,
		32.529716, 32.810745, 38.683407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365788, 31.935015, 38.831268>,  <31.938311, 32.454308, 38.568550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365788, 31.935015, 38.831268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523609, 32.289295, 38.929134>,  <32.618301, 32.501862, 38.987854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523609, 32.289295, 38.929134>,  <32.365788, 31.935015, 38.831268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523609, 32.289295, 38.929134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124224, -0.315236, 0.940848,
		0.910437, -0.340823, -0.234403,
		0.394555, 0.885701, 0.244664,
		32.641975, 32.555004, 39.002533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883007, 31.745649, 39.293186>,  <32.365788, 31.935015, 38.831268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883007, 31.745649, 39.293186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883202, 32.138443, 39.368771>,  <32.883320, 32.374119, 39.414120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883202, 32.138443, 39.368771>,  <32.883007, 31.745649, 39.293186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883202, 32.138443, 39.368771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027460, -0.188898, 0.981613,
		0.999623, 0.004710, -0.027058,
		0.000488, 0.981985, 0.188957,
		32.883347, 32.433037, 39.425457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412483, 31.883545, 39.761192>,  <32.883007, 31.745649, 39.293186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412483, 31.883545, 39.761192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124706, 32.158020, 39.804173>,  <32.952038, 32.322704, 39.829960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124706, 32.158020, 39.804173>,  <33.412483, 31.883545, 39.761192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124706, 32.158020, 39.804173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127813, -0.282868, 0.950605,
		0.682686, 0.670175, 0.291212,
		-0.719446, 0.686186, 0.107453,
		32.908871, 32.363876, 39.836407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538353, 32.269463, 40.311016>,  <33.412483, 31.883545, 39.761192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538353, 32.269463, 40.311016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142483, 32.312527, 40.273163>,  <32.904961, 32.338364, 40.250450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142483, 32.312527, 40.273163>,  <33.538353, 32.269463, 40.311016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142483, 32.312527, 40.273163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133862, -0.458090, 0.878769,
		0.051253, 0.882363, 0.467771,
		-0.989674, 0.107656, -0.094637,
		32.845581, 32.344822, 40.244770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321400, 32.379169, 40.934261>,  <33.538353, 32.269463, 40.311016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321400, 32.379169, 40.934261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975975, 32.274666, 40.761745>,  <32.768719, 32.211964, 40.658237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975975, 32.274666, 40.761745>,  <33.321400, 32.379169, 40.934261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975975, 32.274666, 40.761745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289917, -0.442557, 0.848582,
		-0.412565, 0.857840, 0.306433,
		-0.863562, -0.261255, -0.431285,
		32.716908, 32.196289, 40.632359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761665, 32.579388, 41.398056>,  <33.321400, 32.379169, 40.934261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761665, 32.579388, 41.398056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648815, 32.275742, 41.163399>,  <32.581104, 32.093555, 41.022602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648815, 32.275742, 41.163399>,  <32.761665, 32.579388, 41.398056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648815, 32.275742, 41.163399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346925, -0.489380, 0.800094,
		-0.894454, 0.429249, -0.125289,
		-0.282125, -0.759113, -0.586645,
		32.564178, 32.048008, 40.987404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166748, 32.433270, 41.706974>,  <32.761665, 32.579388, 41.398056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166748, 32.433270, 41.706974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210510, 32.108612, 41.477444>,  <32.236767, 31.913818, 41.339725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210510, 32.108612, 41.477444>,  <32.166748, 32.433270, 41.706974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210510, 32.108612, 41.477444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447833, -0.555624, 0.700519,
		-0.887399, 0.180339, -0.424265,
		0.109401, -0.811640, -0.573822,
		32.243332, 31.865120, 41.305298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561314, 32.048988, 41.773495>,  <32.166748, 32.433270, 41.706974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561314, 32.048988, 41.773495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820787, 31.768009, 41.656345>,  <31.976471, 31.599422, 41.586056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820787, 31.768009, 41.656345>,  <31.561314, 32.048988, 41.773495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820787, 31.768009, 41.656345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384882, -0.634779, 0.670016,
		-0.656560, -0.321909, -0.682131,
		0.648687, -0.702446, -0.292874,
		32.015392, 31.557276, 41.568481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246187, 31.443512, 41.552696>,  <31.561314, 32.048988, 41.773495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246187, 31.443512, 41.552696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611963, 31.313894, 41.649685>,  <31.831429, 31.236124, 41.707878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611963, 31.313894, 41.649685>,  <31.246187, 31.443512, 41.552696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611963, 31.313894, 41.649685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402091, -0.659262, 0.635370,
		-0.046036, -0.678505, -0.733152,
		0.914442, -0.324044, 0.242471,
		31.886295, 31.216681, 41.722427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156158, 30.620638, 41.591782>,  <31.246187, 31.443512, 41.552696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156158, 30.620638, 41.591782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501513, 30.716442, 41.769413>,  <31.708725, 30.773924, 41.875992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501513, 30.716442, 41.769413>,  <31.156158, 30.620638, 41.591782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501513, 30.716442, 41.769413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185195, -0.668276, 0.720493,
		0.469331, -0.704302, -0.532622,
		0.863384, 0.239511, 0.444075,
		31.760529, 30.788296, 41.902637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615803, 29.934912, 41.774754>,  <31.156158, 30.620638, 41.591782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615803, 29.934912, 41.774754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721409, 30.230717, 42.022438>,  <31.784773, 30.408199, 42.171047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721409, 30.230717, 42.022438>,  <31.615803, 29.934912, 41.774754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721409, 30.230717, 42.022438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306414, -0.544421, 0.780843,
		0.914553, -0.395888, 0.082861,
		0.264015, 0.739512, 0.619207,
		31.800613, 30.452570, 42.208199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815615, 29.556084, 42.368504>,  <31.615803, 29.934912, 41.774754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815615, 29.556084, 42.368504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776157, 29.926285, 42.514771>,  <31.752483, 30.148405, 42.602531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776157, 29.926285, 42.514771>,  <31.815615, 29.556084, 42.368504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776157, 29.926285, 42.514771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262509, -0.378641, 0.887536,
		0.959874, -0.008439, 0.280305,
		-0.098645, 0.925505, 0.365663,
		31.746565, 30.203936, 42.624470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201496, 29.431833, 42.981735>,  <31.815615, 29.556084, 42.368504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201496, 29.431833, 42.981735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993151, 29.766573, 43.049126>,  <31.868145, 29.967417, 43.089561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993151, 29.766573, 43.049126>,  <32.201496, 29.431833, 42.981735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993151, 29.766573, 43.049126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356439, -0.392541, 0.847858,
		0.775664, 0.381565, 0.502746,
		-0.520861, 0.836851, 0.168476,
		31.836893, 30.017628, 43.099667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359886, 29.535061, 43.677490>,  <32.201496, 29.431833, 42.981735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359886, 29.535061, 43.677490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025616, 29.743223, 43.607262>,  <31.825054, 29.868120, 43.565125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025616, 29.743223, 43.607262>,  <32.359886, 29.535061, 43.677490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025616, 29.743223, 43.607262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342374, -0.243637, 0.907426,
		0.429454, 0.818424, 0.381775,
		-0.835673, 0.520407, -0.175576,
		31.774914, 29.899345, 43.554588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192303, 29.998552, 44.242256>,  <32.359886, 29.535061, 43.677490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192303, 29.998552, 44.242256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836752, 29.964481, 44.062195>,  <31.623421, 29.944038, 43.954159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836752, 29.964481, 44.062195>,  <32.192303, 29.998552, 44.242256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836752, 29.964481, 44.062195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450712, -0.013620, 0.892565,
		-0.082158, 0.996273, -0.026284,
		-0.888881, -0.085178, -0.450151,
		31.570087, 29.938929, 43.927151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782806, 30.369932, 44.639427>,  <32.192303, 29.998552, 44.242256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782806, 30.369932, 44.639427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505524, 30.156401, 44.445728>,  <31.339155, 30.028282, 44.329510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505524, 30.156401, 44.445728>,  <31.782806, 30.369932, 44.639427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505524, 30.156401, 44.445728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599965, 0.055090, 0.798128,
		-0.399385, 0.843797, -0.358467,
		-0.693205, -0.533828, -0.484246,
		31.297562, 29.996252, 44.300453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201551, 30.839050, 44.637939>,  <31.782806, 30.369932, 44.639427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201551, 30.839050, 44.637939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073757, 30.462029, 44.598915>,  <30.997080, 30.235815, 44.575500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073757, 30.462029, 44.598915>,  <31.201551, 30.839050, 44.637939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073757, 30.462029, 44.598915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545355, 0.098701, 0.832374,
		-0.774929, 0.319136, -0.545561,
		-0.319488, -0.942555, -0.097556,
		30.977911, 30.179262, 44.569649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495087, 30.791046, 44.912346>,  <31.201551, 30.839050, 44.637939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495087, 30.791046, 44.912346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654181, 30.424068, 44.908386>,  <30.749638, 30.203882, 44.906010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654181, 30.424068, 44.908386>,  <30.495087, 30.791046, 44.912346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654181, 30.424068, 44.908386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212677, -0.102685, 0.971712,
		-0.892510, -0.384380, -0.235961,
		0.397736, -0.917447, -0.009899,
		30.773502, 30.148834, 44.905418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967136, 30.343340, 45.258057>,  <30.495087, 30.791046, 44.912346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967136, 30.343340, 45.258057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308090, 30.136181, 45.286964>,  <30.512663, 30.011887, 45.304310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308090, 30.136181, 45.286964>,  <29.967136, 30.343340, 45.258057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308090, 30.136181, 45.286964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253367, -0.288151, 0.923458,
		-0.457433, -0.805451, -0.376834,
		0.852385, -0.517897, 0.072265,
		30.563807, 29.980812, 45.308643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726667, 29.644669, 45.544693>,  <29.967136, 30.343340, 45.258057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726667, 29.644669, 45.544693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118439, 29.696774, 45.606335>,  <30.353502, 29.728037, 45.643318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118439, 29.696774, 45.606335>,  <29.726667, 29.644669, 45.544693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118439, 29.696774, 45.606335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106875, -0.312899, 0.943754,
		0.171156, -0.940811, -0.292541,
		0.979430, 0.130264, 0.154104,
		30.412268, 29.735853, 45.652565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873995, 29.085644, 46.034367>,  <29.726667, 29.644669, 45.544693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873995, 29.085644, 46.034367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218702, 29.288431, 46.041706>,  <30.425528, 29.410103, 46.046112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218702, 29.288431, 46.041706>,  <29.873995, 29.085644, 46.034367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218702, 29.288431, 46.041706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230193, -0.423021, 0.876393,
		0.452065, -0.751025, -0.481247,
		0.861770, 0.506967, 0.018353,
		30.477234, 29.440521, 46.047211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294245, 28.564423, 46.090984>,  <29.873995, 29.085644, 46.034367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294245, 28.564423, 46.090984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474937, 28.893478, 46.229088>,  <30.583353, 29.090912, 46.311951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474937, 28.893478, 46.229088>,  <30.294245, 28.564423, 46.090984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474937, 28.893478, 46.229088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111448, -0.435997, 0.893021,
		0.885166, -0.364927, -0.288635,
		0.451731, 0.822639, 0.345260,
		30.610456, 29.140270, 46.332664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903425, 28.391197, 46.593307>,  <30.294245, 28.564423, 46.090984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903425, 28.391197, 46.593307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770042, 28.756208, 46.688049>,  <30.690012, 28.975214, 46.744896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770042, 28.756208, 46.688049>,  <30.903425, 28.391197, 46.593307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770042, 28.756208, 46.688049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019979, -0.258021, 0.965933,
		0.942554, 0.317365, 0.104270,
		-0.333457, 0.912527, 0.236858,
		30.670006, 29.029966, 46.759106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350334, 28.592731, 47.124790>,  <30.903425, 28.391197, 46.593307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350334, 28.592731, 47.124790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044174, 28.847614, 47.160866>,  <30.860477, 29.000544, 47.182510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044174, 28.847614, 47.160866>,  <31.350334, 28.592731, 47.124790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044174, 28.847614, 47.160866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016824, -0.159899, 0.986990,
		0.643335, 0.753924, 0.133107,
		-0.765399, 0.637205, 0.090185,
		30.814554, 29.038776, 47.187920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441084, 28.783230, 47.699123>,  <31.350334, 28.592731, 47.124790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441084, 28.783230, 47.699123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058643, 28.893263, 47.658722>,  <30.829180, 28.959284, 47.634483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058643, 28.893263, 47.658722>,  <31.441084, 28.783230, 47.699123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058643, 28.893263, 47.658722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128200, -0.082723, 0.988292,
		0.263509, 0.957855, 0.114357,
		-0.956100, 0.275085, -0.100999,
		30.771812, 28.975788, 47.628422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304476, 29.130737, 48.279190>,  <31.441084, 28.783230, 47.699123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304476, 29.130737, 48.279190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949314, 29.026512, 48.127541>,  <30.736217, 28.963976, 48.036552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949314, 29.026512, 48.127541>,  <31.304476, 29.130737, 48.279190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949314, 29.026512, 48.127541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319563, -0.243472, 0.915751,
		-0.330918, 0.934252, 0.132913,
		-0.887903, -0.260564, -0.379122,
		30.682943, 28.948343, 48.013805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917507, 29.310102, 48.750328>,  <31.304476, 29.130737, 48.279190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917507, 29.310102, 48.750328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686562, 29.059019, 48.541470>,  <30.547995, 28.908369, 48.416157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686562, 29.059019, 48.541470>,  <30.917507, 29.310102, 48.750328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686562, 29.059019, 48.541470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385363, -0.354293, 0.852040,
		-0.719824, 0.693152, -0.037339,
		-0.577364, -0.627708, -0.522144,
		30.513353, 28.870707, 48.384827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352753, 29.385277, 49.010326>,  <30.917507, 29.310102, 48.750328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352753, 29.385277, 49.010326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307930, 29.024815, 48.842819>,  <30.281036, 28.808538, 48.742317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307930, 29.024815, 48.842819>,  <30.352753, 29.385277, 49.010326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307930, 29.024815, 48.842819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371058, -0.352992, 0.858902,
		-0.921824, 0.251631, -0.294826,
		-0.112056, -0.901154, -0.418766,
		30.274313, 28.754469, 48.717190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699377, 29.219803, 49.184711>,  <30.352753, 29.385277, 49.010326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699377, 29.219803, 49.184711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890083, 28.874470, 49.118557>,  <30.004507, 28.667271, 49.078865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890083, 28.874470, 49.118557>,  <29.699377, 29.219803, 49.184711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890083, 28.874470, 49.118557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312411, -0.342277, 0.886141,
		-0.821642, -0.370813, -0.432900,
		0.476764, -0.863334, -0.165383,
		30.033113, 28.615469, 49.068943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198467, 28.620174, 49.233402>,  <29.699377, 29.219803, 49.184711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198467, 28.620174, 49.233402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580868, 28.543192, 49.321968>,  <29.810308, 28.497004, 49.375107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580868, 28.543192, 49.321968>,  <29.198467, 28.620174, 49.233402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580868, 28.543192, 49.321968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249129, -0.134075, 0.959145,
		-0.154902, -0.972104, -0.176121,
		0.956002, -0.192450, 0.221411,
		29.867668, 28.485456, 49.388390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246246, 27.946323, 49.535149>,  <29.198467, 28.620174, 49.233402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246246, 27.946323, 49.535149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568130, 28.158104, 49.642570>,  <29.761261, 28.285172, 49.707024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568130, 28.158104, 49.642570>,  <29.246246, 27.946323, 49.535149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568130, 28.158104, 49.642570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323643, 0.012006, 0.946103,
		0.497692, -0.848255, 0.181015,
		0.804710, 0.529452, 0.268556,
		29.809544, 28.316940, 49.723137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336418, 27.756832, 50.268295>,  <29.246246, 27.946323, 49.535149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336418, 27.756832, 50.268295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613346, 28.043343, 50.233318>,  <29.779503, 28.215248, 50.212334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613346, 28.043343, 50.233318>,  <29.336418, 27.756832, 50.268295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613346, 28.043343, 50.233318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261819, 0.362264, 0.894548,
		0.672419, -0.596417, 0.438337,
		0.692317, 0.716276, -0.087440,
		29.821041, 28.258224, 50.207085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651737, 27.738356, 50.901382>,  <29.336418, 27.756832, 50.268295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651737, 27.738356, 50.901382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725142, 28.107185, 50.765087>,  <29.769184, 28.328484, 50.683308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725142, 28.107185, 50.765087>,  <29.651737, 27.738356, 50.901382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725142, 28.107185, 50.765087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272540, 0.380763, 0.883596,
		0.944482, -0.069282, 0.321175,
		0.183509, 0.922073, -0.340742,
		29.780193, 28.383808, 50.662865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319792, 27.358995, 51.001568>,  <29.651737, 27.738356, 50.901382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319792, 27.358995, 51.001568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036921, 27.295382, 50.726002>,  <29.867199, 27.257214, 50.560661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036921, 27.295382, 50.726002>,  <30.319792, 27.358995, 51.001568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036921, 27.295382, 50.726002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690947, 0.051243, -0.721087,
		0.149980, -0.985942, 0.073647,
		-0.707176, -0.159035, -0.688919,
		29.824768, 27.247671, 50.519325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604107, 26.919458, 50.544769>,  <30.319792, 27.358995, 51.001568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604107, 26.919458, 50.544769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288670, 27.073729, 50.353199>,  <30.099407, 27.166290, 50.238255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288670, 27.073729, 50.353199>,  <30.604107, 26.919458, 50.544769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288670, 27.073729, 50.353199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500567, -0.049730, -0.864268,
		-0.357146, -0.921293, -0.153841,
		-0.788593, 0.385677, -0.478930,
		30.052092, 27.189432, 50.209518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291790, 26.415808, 50.124977>,  <30.604107, 26.919458, 50.544769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291790, 26.415808, 50.124977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263599, 26.784691, 49.972893>,  <30.246685, 27.006021, 49.881641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263599, 26.784691, 49.972893>,  <30.291790, 26.415808, 50.124977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263599, 26.784691, 49.972893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620420, -0.257942, -0.740638,
		-0.781097, -0.288088, -0.553979,
		-0.070475, 0.922210, -0.380213,
		30.242456, 27.061354, 49.858829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117237, 26.323654, 49.382317>,  <30.291790, 26.415808, 50.124977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117237, 26.323654, 49.382317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275776, 26.690388, 49.401623>,  <30.370899, 26.910427, 49.413208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275776, 26.690388, 49.401623>,  <30.117237, 26.323654, 49.382317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275776, 26.690388, 49.401623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541682, -0.191074, -0.818578,
		-0.741276, 0.350586, -0.572363,
		0.396346, 0.916832, 0.048267,
		30.394680, 26.965437, 49.416103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682556, 25.726969, 48.955673>,  <30.117237, 26.323654, 49.382317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682556, 25.726969, 48.955673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493578, 26.073523, 48.890953>,  <29.380192, 26.281454, 48.852123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493578, 26.073523, 48.890953>,  <29.682556, 25.726969, 48.955673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493578, 26.073523, 48.890953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342865, 0.011550, -0.939314,
		-0.811937, -0.499247, -0.302509,
		-0.472443, 0.866383, -0.161796,
		29.351845, 26.333437, 48.842415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122164, 25.529734, 48.589703>,  <29.682556, 25.726969, 48.955673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122164, 25.529734, 48.589703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213245, 25.914101, 48.526726>,  <29.267895, 26.144720, 48.488937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213245, 25.914101, 48.526726>,  <29.122164, 25.529734, 48.589703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213245, 25.914101, 48.526726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280024, -0.219482, -0.934566,
		-0.932598, 0.168715, -0.319057,
		0.227702, 0.960918, -0.157444,
		29.281555, 26.202375, 48.479492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874311, 25.746441, 47.854168>,  <29.122164, 25.529734, 48.589703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874311, 25.746441, 47.854168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186283, 25.950436, 47.999287>,  <29.373466, 26.072832, 48.086357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186283, 25.950436, 47.999287>,  <28.874311, 25.746441, 47.854168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186283, 25.950436, 47.999287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497630, -0.153763, -0.853652,
		-0.379567, 0.846327, -0.373709,
		0.779931, 0.509987, 0.362795,
		29.420263, 26.103432, 48.108124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944117, 26.147285, 47.314812>,  <28.874311, 25.746441, 47.854168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944117, 26.147285, 47.314812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291271, 26.183947, 47.510105>,  <29.499563, 26.205944, 47.627281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291271, 26.183947, 47.510105>,  <28.944117, 26.147285, 47.314812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291271, 26.183947, 47.510105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473210, 0.146500, -0.868683,
		-0.151144, 0.984955, 0.083775,
		0.867887, 0.091653, 0.488233,
		29.551638, 26.211443, 47.656574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162441, 26.709572, 46.976124>,  <28.944117, 26.147285, 47.314812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162441, 26.709572, 46.976124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477781, 26.533112, 47.147652>,  <29.666986, 26.427235, 47.250568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477781, 26.533112, 47.147652>,  <29.162441, 26.709572, 46.976124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477781, 26.533112, 47.147652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544325, 0.175307, -0.820352,
		0.286726, 0.880143, 0.378334,
		0.788352, -0.441153, 0.428819,
		29.714287, 26.400766, 47.276299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689659, 27.101810, 46.817760>,  <29.162441, 26.709572, 46.976124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689659, 27.101810, 46.817760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867292, 26.754488, 46.906158>,  <29.973871, 26.546095, 46.959198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867292, 26.754488, 46.906158>,  <29.689659, 27.101810, 46.817760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867292, 26.754488, 46.906158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687698, 0.172212, -0.705276,
		0.574337, 0.465178, 0.673607,
		0.444082, -0.868304, 0.220994,
		30.000517, 26.493998, 46.972458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320179, 27.270014, 46.817783>,  <29.689659, 27.101810, 46.817760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320179, 27.270014, 46.817783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322781, 26.871229, 46.786724>,  <30.324341, 26.631958, 46.768089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322781, 26.871229, 46.786724>,  <30.320179, 27.270014, 46.817783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322781, 26.871229, 46.786724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532835, 0.069159, -0.843388,
		0.846194, -0.035888, 0.531665,
		0.006502, -0.996960, -0.077644,
		30.324732, 26.572142, 46.763432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938301, 27.178528, 46.621952>,  <30.320179, 27.270014, 46.817783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938301, 27.178528, 46.621952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776241, 26.826159, 46.524109>,  <30.679007, 26.614737, 46.465405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776241, 26.826159, 46.524109>,  <30.938301, 27.178528, 46.621952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776241, 26.826159, 46.524109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499622, 0.010727, -0.866177,
		0.765658, -0.473139, 0.435782,
		-0.405148, -0.880922, -0.244604,
		30.654697, 26.561882, 46.450729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455889, 26.683756, 46.446304>,  <30.938301, 27.178528, 46.621952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455889, 26.683756, 46.446304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142628, 26.559170, 46.231022>,  <30.954672, 26.484419, 46.101852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142628, 26.559170, 46.231022>,  <31.455889, 26.683756, 46.446304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142628, 26.559170, 46.231022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557026, 0.033318, -0.829826,
		0.276392, -0.949674, 0.147400,
		-0.783153, -0.311463, -0.538202,
		30.907682, 26.465731, 46.069561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737291, 26.318911, 45.877544>,  <31.455889, 26.683756, 46.446304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737291, 26.318911, 45.877544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365835, 26.418798, 45.767803>,  <31.142962, 26.478731, 45.701958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365835, 26.418798, 45.767803>,  <31.737291, 26.318911, 45.877544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365835, 26.418798, 45.767803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323871, 0.185049, -0.927828,
		-0.180932, -0.950471, -0.252721,
		-0.928639, 0.249722, -0.274348,
		31.087244, 26.493715, 45.685497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620457, 25.987356, 45.205975>,  <31.737291, 26.318911, 45.877544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620457, 25.987356, 45.205975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334595, 26.267019, 45.214432>,  <31.163078, 26.434816, 45.219505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334595, 26.267019, 45.214432>,  <31.620457, 25.987356, 45.205975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334595, 26.267019, 45.214432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106579, 0.138718, -0.984580,
		-0.691310, -0.701382, -0.173651,
		-0.714655, 0.699157, 0.021145,
		31.120197, 26.476767, 45.220776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106417, 25.894875, 44.612694>,  <31.620457, 25.987356, 45.205975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106417, 25.894875, 44.612694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069714, 26.271006, 44.743763>,  <31.047691, 26.496683, 44.822403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069714, 26.271006, 44.743763>,  <31.106417, 25.894875, 44.612694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069714, 26.271006, 44.743763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014140, 0.327793, -0.944643,
		-0.995681, -0.091313, -0.016782,
		-0.091759, 0.940326, 0.327669,
		31.042187, 26.553104, 44.842064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568642, 26.175079, 44.281322>,  <31.106417, 25.894875, 44.612694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568642, 26.175079, 44.281322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752378, 26.510458, 44.398632>,  <30.862619, 26.711685, 44.469017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752378, 26.510458, 44.398632>,  <30.568642, 26.175079, 44.281322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752378, 26.510458, 44.398632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007124, 0.326683, -0.945107,
		-0.888232, 0.436215, 0.144085,
		0.459340, 0.838448, 0.293278,
		30.890181, 26.761992, 44.486614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396376, 26.610960, 43.812931>,  <30.568642, 26.175079, 44.281322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396376, 26.610960, 43.812931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683144, 26.852268, 43.952698>,  <30.855204, 26.997053, 44.036556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683144, 26.852268, 43.952698>,  <30.396376, 26.610960, 43.812931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683144, 26.852268, 43.952698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078455, 0.428202, -0.900271,
		-0.692729, 0.672834, 0.259656,
		0.716918, 0.603273, 0.349415,
		30.898218, 27.033251, 44.057522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293226, 27.306248, 43.560726>,  <30.396376, 26.610960, 43.812931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293226, 27.306248, 43.560726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688515, 27.307478, 43.621933>,  <30.925688, 27.308216, 43.658657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688515, 27.307478, 43.621933>,  <30.293226, 27.306248, 43.560726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688515, 27.307478, 43.621933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136508, 0.434382, -0.890325,
		-0.069204, 0.900724, 0.428845,
		0.988219, 0.003073, 0.153016,
		30.984980, 27.308399, 43.667839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587128, 27.987457, 43.596828>,  <30.293226, 27.306248, 43.560726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587128, 27.987457, 43.596828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898750, 27.753822, 43.505692>,  <31.085724, 27.613642, 43.451008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898750, 27.753822, 43.505692>,  <30.587128, 27.987457, 43.596828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898750, 27.753822, 43.505692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213982, 0.589308, -0.779056,
		0.589307, 0.558173, 0.584088,
		0.779056, -0.584088, -0.227844,
		31.132467, 27.578596, 43.437340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084280, 28.517490, 43.393745>,  <30.587128, 27.987457, 43.596828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084280, 28.517490, 43.393745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184019, 28.151085, 43.268051>,  <31.243862, 27.931242, 43.192635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184019, 28.151085, 43.268051>,  <31.084280, 28.517490, 43.393745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184019, 28.151085, 43.268051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186779, 0.363884, -0.912525,
		0.950232, 0.168842, 0.261825,
		0.249346, -0.916014, -0.314237,
		31.258823, 27.876280, 43.173779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770109, 28.563356, 43.014137>,  <31.084280, 28.517490, 43.393745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770109, 28.563356, 43.014137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615648, 28.213686, 42.896358>,  <31.522972, 28.003883, 42.825691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615648, 28.213686, 42.896358>,  <31.770109, 28.563356, 43.014137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615648, 28.213686, 42.896358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033754, 0.305606, -0.951560,
		0.921817, -0.377388, -0.088504,
		-0.386154, -0.874176, -0.294451,
		31.499802, 27.951433, 42.808022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232914, 28.231625, 42.461445>,  <31.770109, 28.563356, 43.014137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232914, 28.231625, 42.461445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856012, 28.098455, 42.446873>,  <31.629871, 28.018555, 42.438129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856012, 28.098455, 42.446873>,  <32.232914, 28.231625, 42.461445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856012, 28.098455, 42.446873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063007, 0.283041, -0.957036,
		0.328933, -0.899471, -0.287672,
		-0.942249, -0.332926, -0.036428,
		31.573338, 27.998579, 42.435944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165359, 27.770191, 41.915943>,  <32.232914, 28.231625, 42.461445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165359, 27.770191, 41.915943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782213, 27.872133, 41.968906>,  <31.552324, 27.933298, 42.000687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782213, 27.872133, 41.968906>,  <32.165359, 27.770191, 41.915943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782213, 27.872133, 41.968906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113500, 0.087604, -0.989668,
		-0.263822, -0.963003, -0.054987,
		-0.957870, 0.254855, 0.132413,
		31.494852, 27.948589, 42.008629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868559, 27.491413, 41.373989>,  <32.165359, 27.770191, 41.915943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868559, 27.491413, 41.373989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561558, 27.724787, 41.480228>,  <31.377357, 27.864811, 41.543972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561558, 27.724787, 41.480228>,  <31.868559, 27.491413, 41.373989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561558, 27.724787, 41.480228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299535, 0.039917, -0.953250,
		-0.566760, -0.811179, 0.144122,
		-0.767504, 0.583434, 0.265600,
		31.331306, 27.899817, 41.559910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292217, 27.158535, 41.080296>,  <31.868559, 27.491413, 41.373989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292217, 27.158535, 41.080296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169111, 27.529285, 41.166256>,  <31.095247, 27.751736, 41.217834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169111, 27.529285, 41.166256>,  <31.292217, 27.158535, 41.080296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169111, 27.529285, 41.166256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218875, 0.150842, -0.964023,
		-0.925945, -0.343729, 0.156446,
		-0.307765, 0.926875, 0.214905,
		31.076782, 27.807348, 41.230728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560619, 27.239243, 40.705292>,  <31.292217, 27.158535, 41.080296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560619, 27.239243, 40.705292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716734, 27.604980, 40.748459>,  <30.810402, 27.824423, 40.774361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716734, 27.604980, 40.748459>,  <30.560619, 27.239243, 40.705292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716734, 27.604980, 40.748459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278634, 0.229018, -0.932692,
		-0.877519, 0.333947, 0.344150,
		0.390286, 0.914347, 0.107919,
		30.833820, 27.879284, 40.780834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112371, 27.635159, 40.388622>,  <30.560619, 27.239243, 40.705292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112371, 27.635159, 40.388622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431993, 27.873188, 40.423031>,  <30.623766, 28.016006, 40.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431993, 27.873188, 40.423031>,  <30.112371, 27.635159, 40.388622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431993, 27.873188, 40.423031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095417, 0.266757, -0.959029,
		-0.593639, 0.758109, 0.269934,
		0.799055, 0.595073, 0.086021,
		30.671709, 28.051710, 40.448837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951530, 28.342495, 40.099037>,  <30.112371, 27.635159, 40.388622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951530, 28.342495, 40.099037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350117, 28.357992, 40.069233>,  <30.589270, 28.367290, 40.051350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350117, 28.357992, 40.069233>,  <29.951530, 28.342495, 40.099037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350117, 28.357992, 40.069233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083973, 0.446582, -0.890793,
		-0.001235, 0.893903, 0.448258,
		0.996467, 0.038742, -0.074512,
		30.649057, 28.369616, 40.046879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077435, 28.996048, 39.834187>,  <29.951530, 28.342495, 40.099037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077435, 28.996048, 39.834187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412430, 28.787666, 39.768192>,  <30.613426, 28.662638, 39.728596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412430, 28.787666, 39.768192>,  <30.077435, 28.996048, 39.834187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412430, 28.787666, 39.768192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190617, 0.561460, -0.805250,
		0.512134, 0.642936, 0.569519,
		0.837486, -0.520956, -0.164989,
		30.663675, 28.631380, 39.718697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480610, 29.496157, 39.675819>,  <30.077435, 28.996048, 39.834187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480610, 29.496157, 39.675819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667908, 29.172972, 39.532742>,  <30.780287, 28.979061, 39.446896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667908, 29.172972, 39.532742>,  <30.480610, 29.496157, 39.675819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667908, 29.172972, 39.532742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277929, 0.518944, -0.808364,
		0.838752, 0.279096, 0.467548,
		0.468242, -0.807962, -0.357696,
		30.808380, 28.930584, 39.425434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142899, 29.673374, 39.641518>,  <30.480610, 29.496157, 39.675819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142899, 29.673374, 39.641518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045734, 29.396637, 39.369534>,  <30.987436, 29.230595, 39.206341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045734, 29.396637, 39.369534>,  <31.142899, 29.673374, 39.641518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045734, 29.396637, 39.369534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311797, 0.608076, -0.730086,
		0.918573, -0.389357, 0.068005,
		-0.242912, -0.691841, -0.679963,
		30.972860, 29.189085, 39.165546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624537, 29.696259, 39.069279>,  <31.142899, 29.673374, 39.641518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624537, 29.696259, 39.069279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314217, 29.518332, 38.890274>,  <31.128025, 29.411575, 38.782871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314217, 29.518332, 38.890274>,  <31.624537, 29.696259, 39.069279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314217, 29.518332, 38.890274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124174, 0.587740, -0.799464,
		0.618644, -0.675792, -0.400731,
		-0.775797, -0.444823, -0.447517,
		31.081476, 29.384886, 38.756020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799606, 29.737732, 38.398232>,  <31.624537, 29.696259, 39.069279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799606, 29.737732, 38.398232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410606, 29.646292, 38.380409>,  <31.177206, 29.591429, 38.369717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410606, 29.646292, 38.380409>,  <31.799606, 29.737732, 38.398232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410606, 29.646292, 38.380409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073537, 0.482908, -0.872578,
		0.220985, -0.845306, -0.486439,
		-0.972501, -0.228598, -0.044554,
		31.118856, 29.577713, 38.367043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714989, 29.395805, 37.801090>,  <31.799606, 29.737732, 38.398232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714989, 29.395805, 37.801090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337919, 29.503239, 37.880314>,  <31.111677, 29.567699, 37.927849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337919, 29.503239, 37.880314>,  <31.714989, 29.395805, 37.801090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337919, 29.503239, 37.880314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101119, 0.335712, -0.936521,
		-0.318025, -0.902862, -0.289308,
		-0.942674, 0.268583, 0.198061,
		31.055117, 29.583813, 37.939732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269600, 29.086512, 37.214661>,  <31.714989, 29.395805, 37.801090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269600, 29.086512, 37.214661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096012, 29.400816, 37.390957>,  <30.991859, 29.589399, 37.496735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096012, 29.400816, 37.390957>,  <31.269600, 29.086512, 37.214661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096012, 29.400816, 37.390957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010063, 0.484944, -0.874487,
		-0.900872, -0.383934, -0.202543,
		-0.433967, 0.785763, 0.440736,
		30.965822, 29.636545, 37.523178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640203, 29.161972, 36.758118>,  <31.269600, 29.086512, 37.214661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640203, 29.161972, 36.758118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716997, 29.502333, 36.953712>,  <30.763073, 29.706549, 37.071068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716997, 29.502333, 36.953712>,  <30.640203, 29.161972, 36.758118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716997, 29.502333, 36.953712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004062, 0.498937, -0.866628,
		-0.981389, 0.164394, 0.099245,
		0.191986, 0.850903, 0.488984,
		30.774593, 29.757603, 37.100407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056198, 29.679174, 36.609673>,  <30.640203, 29.161972, 36.758118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056198, 29.679174, 36.609673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378696, 29.892168, 36.712765>,  <30.572195, 30.019964, 36.774620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378696, 29.892168, 36.712765>,  <30.056198, 29.679174, 36.609673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378696, 29.892168, 36.712765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105103, 0.557672, -0.823380,
		-0.582170, 0.636758, 0.505586,
		0.806246, 0.532485, 0.257735,
		30.620569, 30.051914, 36.790085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903870, 30.319613, 36.250408>,  <30.056198, 29.679174, 36.609673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903870, 30.319613, 36.250408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281246, 30.371134, 36.372608>,  <30.507671, 30.402046, 36.445927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281246, 30.371134, 36.372608>,  <29.903870, 30.319613, 36.250408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281246, 30.371134, 36.372608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201620, 0.508584, -0.837073,
		-0.263190, 0.851324, 0.453849,
		0.943441, 0.128804, 0.305498,
		30.564278, 30.409775, 36.464256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034739, 31.013035, 36.151115>,  <29.903870, 30.319613, 36.250408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034739, 31.013035, 36.151115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405140, 30.862644, 36.164715>,  <30.627380, 30.772409, 36.172874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405140, 30.862644, 36.164715>,  <30.034739, 31.013035, 36.151115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405140, 30.862644, 36.164715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242397, 0.523113, -0.817066,
		0.289411, 0.764849, 0.575541,
		0.926005, -0.375977, 0.034002,
		30.682941, 30.749851, 36.174915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521154, 31.601702, 36.282284>,  <30.034739, 31.013035, 36.151115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521154, 31.601702, 36.282284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704548, 31.302345, 36.090572>,  <30.814583, 31.122732, 35.975548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704548, 31.302345, 36.090572>,  <30.521154, 31.601702, 36.282284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704548, 31.302345, 36.090572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258818, 0.628364, -0.733602,
		0.850181, 0.212298, 0.481790,
		0.458482, -0.748391, -0.479276,
		30.842093, 31.077827, 35.946789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235498, 31.807489, 36.146637>,  <30.521154, 31.601702, 36.282284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235498, 31.807489, 36.146637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164829, 31.500626, 35.899979>,  <31.122427, 31.316507, 35.751984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164829, 31.500626, 35.899979>,  <31.235498, 31.807489, 36.146637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164829, 31.500626, 35.899979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316068, 0.549103, -0.773684,
		0.932141, -0.331593, 0.145461,
		-0.176675, -0.767158, -0.616648,
		31.111826, 31.270477, 35.714985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681597, 31.993204, 35.618462>,  <31.235498, 31.807489, 36.146637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681597, 31.993204, 35.618462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522188, 31.660088, 35.464764>,  <31.426542, 31.460218, 35.372547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522188, 31.660088, 35.464764>,  <31.681597, 31.993204, 35.618462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522188, 31.660088, 35.464764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060174, 0.394305, -0.917008,
		0.915183, -0.388568, -0.107026,
		-0.398521, -0.832790, -0.384243,
		31.402632, 31.410252, 35.349491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147423, 31.720535, 35.095963>,  <31.681597, 31.993204, 35.618462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147423, 31.720535, 35.095963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755888, 31.650728, 35.053200>,  <31.520967, 31.608845, 35.027542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755888, 31.650728, 35.053200>,  <32.147423, 31.720535, 35.095963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755888, 31.650728, 35.053200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011603, 0.474222, -0.880329,
		0.204331, -0.862936, -0.462159,
		-0.978833, -0.174516, -0.106911,
		31.462238, 31.598373, 35.021126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385334, 31.065971, 35.441051>,  <32.147423, 31.720535, 35.095963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385334, 31.065971, 35.441051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671902, 31.230873, 35.215916>,  <32.843842, 31.329815, 35.080833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671902, 31.230873, 35.215916>,  <32.385334, 31.065971, 35.441051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671902, 31.230873, 35.215916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683031, 0.250073, -0.686245,
		-0.142157, 0.876076, 0.460740,
		0.716421, 0.412254, -0.562838,
		32.886829, 31.354549, 35.047066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233723, 30.874308, 35.419548>,  <32.385334, 31.065971, 35.441051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233723, 30.874308, 35.419548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552406, 30.940317, 35.186989>,  <33.743614, 30.979923, 35.047451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552406, 30.940317, 35.186989>,  <33.233723, 30.874308, 35.419548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552406, 30.940317, 35.186989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438606, -0.819715, 0.368364,
		-0.415793, -0.548483, -0.725453,
		0.796706, 0.165025, -0.581401,
		33.791416, 30.989824, 35.012569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441269, 30.306797, 35.238876>,  <33.233723, 30.874308, 35.419548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441269, 30.306797, 35.238876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766716, 30.530653, 35.175835>,  <33.961983, 30.664967, 35.138008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766716, 30.530653, 35.175835>,  <33.441269, 30.306797, 35.238876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766716, 30.530653, 35.175835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564787, -0.696415, 0.442743,
		0.138018, -0.449235, -0.882689,
		0.813613, 0.559638, -0.157604,
		34.010799, 30.698544, 35.128555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994797, 29.829611, 34.938404>,  <33.441269, 30.306797, 35.238876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994797, 29.829611, 34.938404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135704, 30.157948, 35.118237>,  <34.220249, 30.354950, 35.226135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135704, 30.157948, 35.118237>,  <33.994797, 29.829611, 34.938404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135704, 30.157948, 35.118237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605690, -0.566163, 0.559105,
		0.713476, 0.075356, -0.696616,
		0.352266, 0.820841, 0.449586,
		34.241383, 30.404200, 35.253113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765408, 29.699589, 34.856903>,  <33.994797, 29.829611, 34.938404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765408, 29.699589, 34.856903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661537, 29.961823, 35.140530>,  <34.599216, 30.119164, 35.310707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661537, 29.961823, 35.140530>,  <34.765408, 29.699589, 34.856903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661537, 29.961823, 35.140530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385704, -0.602738, 0.698527,
		0.885326, 0.454878, -0.096348,
		-0.259672, 0.655586, 0.709068,
		34.583637, 30.158499, 35.353249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143284, 29.561453, 35.396076>,  <34.765408, 29.699589, 34.856903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143284, 29.561453, 35.396076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895958, 29.798698, 35.602337>,  <34.747562, 29.941046, 35.726093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895958, 29.798698, 35.602337>,  <35.143284, 29.561453, 35.396076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895958, 29.798698, 35.602337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252101, -0.471762, 0.844917,
		0.744399, 0.652424, 0.142174,
		-0.618317, 0.593113, 0.515656,
		34.710464, 29.976633, 35.757034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500996, 29.718405, 36.042305>,  <35.143284, 29.561453, 35.396076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500996, 29.718405, 36.042305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109619, 29.768185, 36.108227>,  <34.874794, 29.798054, 36.147778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109619, 29.768185, 36.108227>,  <35.500996, 29.718405, 36.042305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109619, 29.768185, 36.108227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079808, -0.508145, 0.857566,
		0.190469, 0.852233, 0.487259,
		-0.978444, 0.124452, 0.164801,
		34.816086, 29.805521, 36.157665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488312, 29.948914, 36.710644>,  <35.500996, 29.718405, 36.042305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488312, 29.948914, 36.710644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130341, 29.798820, 36.614056>,  <34.915558, 29.708765, 36.556103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130341, 29.798820, 36.614056>,  <35.488312, 29.948914, 36.710644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130341, 29.798820, 36.614056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039891, -0.606265, 0.794262,
		-0.444428, 0.701173, 0.557530,
		-0.894926, -0.375233, -0.241470,
		34.861862, 29.686251, 36.541615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032337, 29.992542, 37.313828>,  <35.488312, 29.948914, 36.710644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032337, 29.992542, 37.313828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832558, 29.722004, 37.097267>,  <34.712692, 29.559681, 36.967331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832558, 29.722004, 37.097267>,  <35.032337, 29.992542, 37.313828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832558, 29.722004, 37.097267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099854, -0.665698, 0.739510,
		-0.860571, 0.315285, 0.400016,
		-0.499446, -0.676344, -0.541399,
		34.682724, 29.519100, 36.934849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430199, 29.763096, 37.713692>,  <35.032337, 29.992542, 37.313828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430199, 29.763096, 37.713692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478580, 29.460798, 37.456253>,  <34.507610, 29.279419, 37.301788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478580, 29.460798, 37.456253>,  <34.430199, 29.763096, 37.713692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478580, 29.460798, 37.456253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066702, -0.653081, 0.754345,
		-0.990414, -0.048313, -0.129404,
		0.120956, -0.755745, -0.643598,
		34.514866, 29.234076, 37.263172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896992, 29.326891, 37.901676>,  <34.430199, 29.763096, 37.713692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896992, 29.326891, 37.901676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162071, 29.110115, 37.694939>,  <34.321121, 28.980049, 37.570896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162071, 29.110115, 37.694939>,  <33.896992, 29.326891, 37.901676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162071, 29.110115, 37.694939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038648, -0.664482, 0.746305,
		-0.747887, -0.514551, -0.419407,
		0.662700, -0.541942, -0.516844,
		34.360882, 28.947533, 37.539886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631889, 28.618076, 37.805241>,  <33.896992, 29.326891, 37.901676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631889, 28.618076, 37.805241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023899, 28.562660, 37.748177>,  <34.259106, 28.529411, 37.713936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023899, 28.562660, 37.748177>,  <33.631889, 28.618076, 37.805241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023899, 28.562660, 37.748177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005913, -0.696784, 0.717257,
		-0.198774, -0.703775, -0.682048,
		0.980028, -0.138539, -0.142664,
		34.317909, 28.521099, 37.705376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679535, 27.875305, 37.740955>,  <33.631889, 28.618076, 37.805241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679535, 27.875305, 37.740955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022446, 28.046858, 37.854897>,  <34.228191, 28.149790, 37.923264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022446, 28.046858, 37.854897>,  <33.679535, 27.875305, 37.740955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022446, 28.046858, 37.854897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045054, -0.613636, 0.788302,
		0.512884, -0.662958, -0.545378,
		0.857275, 0.428880, 0.284855,
		34.279629, 28.175522, 37.940353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988953, 27.358961, 38.036930>,  <33.679535, 27.875305, 37.740955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988953, 27.358961, 38.036930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209381, 27.661663, 38.177582>,  <34.341640, 27.843285, 38.261974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209381, 27.661663, 38.177582>,  <33.988953, 27.358961, 38.036930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209381, 27.661663, 38.177582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107820, -0.353281, 0.929283,
		0.827462, -0.550016, -0.113091,
		0.551073, 0.756753, 0.351629,
		34.374702, 27.888689, 38.283070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404945, 27.007484, 38.370934>,  <33.988953, 27.358961, 38.036930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404945, 27.007484, 38.370934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429169, 27.381222, 38.511410>,  <34.443703, 27.605465, 38.595695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429169, 27.381222, 38.511410>,  <34.404945, 27.007484, 38.370934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429169, 27.381222, 38.511410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052102, -0.348399, 0.935897,
		0.996804, -0.074971, 0.027584,
		0.060555, 0.934343, 0.351192,
		34.447334, 27.661526, 38.616768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996075, 26.983246, 38.847683>,  <34.404945, 27.007484, 38.370934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996075, 26.983246, 38.847683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768314, 27.304853, 38.916203>,  <34.631660, 27.497818, 38.957314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768314, 27.304853, 38.916203>,  <34.996075, 26.983246, 38.847683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768314, 27.304853, 38.916203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070818, -0.159623, 0.984635,
		0.819007, 0.572779, 0.033950,
		-0.569397, 0.804018, 0.171295,
		34.597496, 27.546059, 38.967590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370815, 27.388464, 39.318626>,  <34.996075, 26.983246, 38.847683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370815, 27.388464, 39.318626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980698, 27.476233, 39.328873>,  <34.746628, 27.528894, 39.335022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980698, 27.476233, 39.328873>,  <35.370815, 27.388464, 39.318626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980698, 27.476233, 39.328873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035167, -0.268694, 0.962583,
		0.218097, 0.937900, 0.269772,
		-0.975293, 0.219423, 0.025618,
		34.688110, 27.542059, 39.336559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133640, 27.886158, 39.908920>,  <35.370815, 27.388464, 39.318626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133640, 27.886158, 39.908920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802631, 27.686487, 39.806133>,  <34.604027, 27.566685, 39.744461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802631, 27.686487, 39.806133>,  <35.133640, 27.886158, 39.908920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802631, 27.686487, 39.806133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200568, -0.164659, 0.965743,
		-0.524391, 0.850710, 0.036139,
		-0.827518, -0.499179, -0.256971,
		34.554375, 27.536734, 39.729042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627625, 28.150379, 40.404972>,  <35.133640, 27.886158, 39.908920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627625, 28.150379, 40.404972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495564, 27.806154, 40.249832>,  <34.416328, 27.599619, 40.156746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495564, 27.806154, 40.249832>,  <34.627625, 28.150379, 40.404972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495564, 27.806154, 40.249832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410808, -0.238943, 0.879854,
		-0.849846, 0.449817, -0.274640,
		-0.330150, -0.860565, -0.387852,
		34.396519, 27.547985, 40.133476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953140, 28.262785, 40.479492>,  <34.627625, 28.150379, 40.404972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953140, 28.262785, 40.479492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005154, 27.866789, 40.457542>,  <34.036362, 27.629192, 40.444370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005154, 27.866789, 40.457542>,  <33.953140, 28.262785, 40.479492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005154, 27.866789, 40.457542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469292, -0.110208, 0.876139,
		-0.873416, -0.088177, -0.478925,
		0.130036, -0.989989, -0.054877,
		34.044163, 27.569792, 40.441078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334526, 27.986914, 40.763615>,  <33.953140, 28.262785, 40.479492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334526, 27.986914, 40.763615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575573, 27.667732, 40.759277>,  <33.720203, 27.476223, 40.756676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575573, 27.667732, 40.759277>,  <33.334526, 27.986914, 40.763615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575573, 27.667732, 40.759277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276514, -0.221528, 0.935129,
		-0.748591, -0.560530, -0.354143,
		0.602620, -0.797955, -0.010839,
		33.756359, 27.428347, 40.756027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923721, 27.413147, 41.027126>,  <33.334526, 27.986914, 40.763615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923721, 27.413147, 41.027126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309715, 27.323088, 41.080971>,  <33.541309, 27.269053, 41.113277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309715, 27.323088, 41.080971>,  <32.923721, 27.413147, 41.027126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309715, 27.323088, 41.080971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203943, -0.321196, 0.924792,
		-0.164978, -0.919860, -0.355866,
		0.964982, -0.225147, 0.134609,
		33.599209, 27.255545, 41.121353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970222, 26.810165, 41.455624>,  <32.923721, 27.413147, 41.027126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970222, 26.810165, 41.455624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335243, 26.970203, 41.489487>,  <33.554256, 27.066225, 41.509804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335243, 26.970203, 41.489487>,  <32.970222, 26.810165, 41.455624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335243, 26.970203, 41.489487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013221, -0.235773, 0.971718,
		0.408740, -0.885627, -0.220446,
		0.912555, 0.400094, 0.084661,
		33.609009, 27.090231, 41.514885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349613, 26.321880, 41.765476>,  <32.970222, 26.810165, 41.455624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349613, 26.321880, 41.765476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517838, 26.676329, 41.843369>,  <33.618771, 26.888998, 41.890102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517838, 26.676329, 41.843369>,  <33.349613, 26.321880, 41.765476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517838, 26.676329, 41.843369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132717, -0.272409, 0.952985,
		0.897506, -0.374943, -0.232168,
		0.420559, 0.886122, 0.194727,
		33.644005, 26.942165, 41.901787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879311, 26.195896, 42.285664>,  <33.349613, 26.321880, 41.765476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879311, 26.195896, 42.285664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814705, 26.590153, 42.305359>,  <33.775940, 26.826706, 42.317177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814705, 26.590153, 42.305359>,  <33.879311, 26.195896, 42.285664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814705, 26.590153, 42.305359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241075, -0.008978, 0.970465,
		0.956972, 0.168618, -0.236163,
		-0.161517, 0.985641, 0.049242,
		33.766251, 26.885845, 42.320133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335205, 26.336899, 42.662697>,  <33.879311, 26.195896, 42.285664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335205, 26.336899, 42.662697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093719, 26.654736, 42.688469>,  <33.948830, 26.845438, 42.703934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093719, 26.654736, 42.688469>,  <34.335205, 26.336899, 42.662697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093719, 26.654736, 42.688469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047544, -0.044791, 0.997864,
		0.795781, 0.605489, -0.010738,
		-0.603715, 0.794592, 0.064431,
		33.912605, 26.893114, 42.707798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630783, 26.788280, 43.089653>,  <34.335205, 26.336899, 42.662697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630783, 26.788280, 43.089653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248886, 26.907219, 43.092758>,  <34.019749, 26.978582, 43.094620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248886, 26.907219, 43.092758>,  <34.630783, 26.788280, 43.089653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248886, 26.907219, 43.092758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005670, -0.044287, 0.999003,
		0.297392, 0.953743, 0.043968,
		-0.954739, 0.297345, 0.007763,
		33.962463, 26.996422, 43.095085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594517, 27.334414, 43.541767>,  <34.630783, 26.788280, 43.089653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594517, 27.334414, 43.541767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216488, 27.203783, 43.536400>,  <33.989670, 27.125404, 43.533180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216488, 27.203783, 43.536400>,  <34.594517, 27.334414, 43.541767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216488, 27.203783, 43.536400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037448, 0.067398, 0.997023,
		-0.324698, 0.942765, -0.075926,
		-0.945076, -0.326575, -0.013420,
		33.932964, 27.105810, 43.532375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197296, 27.860504, 43.936516>,  <34.594517, 27.334414, 43.541767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197296, 27.860504, 43.936516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967205, 27.533499, 43.947674>,  <33.829151, 27.337296, 43.954369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967205, 27.533499, 43.947674>,  <34.197296, 27.860504, 43.936516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967205, 27.533499, 43.947674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026605, 0.052779, 0.998252,
		-0.817557, 0.573484, -0.052111,
		-0.575232, -0.817515, 0.027892,
		33.794636, 27.288244, 43.956043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546516, 27.951422, 44.406792>,  <34.197296, 27.860504, 43.936516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546516, 27.951422, 44.406792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590836, 27.556875, 44.358128>,  <33.617428, 27.320147, 44.328930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590836, 27.556875, 44.358128>,  <33.546516, 27.951422, 44.406792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590836, 27.556875, 44.358128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113438, -0.109060, 0.987541,
		-0.987347, -0.123222, 0.099807,
		0.110801, -0.986368, -0.121659,
		33.624077, 27.260965, 44.321629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961269, 27.710819, 44.809017>,  <33.546516, 27.951422, 44.406792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961269, 27.710819, 44.809017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245506, 27.433735, 44.759686>,  <33.416046, 27.267485, 44.730087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245506, 27.433735, 44.759686>,  <32.961269, 27.710819, 44.809017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245506, 27.433735, 44.759686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005703, -0.180943, 0.983477,
		-0.703583, -0.698146, -0.132527,
		0.710590, -0.692713, -0.123326,
		33.458683, 27.225922, 44.722687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735725, 27.259411, 45.237972>,  <32.961269, 27.710819, 44.809017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735725, 27.259411, 45.237972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123642, 27.167797, 45.204411>,  <33.356392, 27.112829, 45.184273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123642, 27.167797, 45.204411>,  <32.735725, 27.259411, 45.237972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123642, 27.167797, 45.204411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102830, 0.071960, 0.992093,
		-0.221188, -0.970754, 0.093338,
		0.969795, -0.229037, -0.083906,
		33.414581, 27.099087, 45.179237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823204, 26.587397, 45.673832>,  <32.735725, 27.259411, 45.237972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823204, 26.587397, 45.673832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183323, 26.756741, 45.633354>,  <33.399395, 26.858347, 45.609066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183323, 26.756741, 45.633354>,  <32.823204, 26.587397, 45.673832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183323, 26.756741, 45.633354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118843, -0.015412, 0.992794,
		0.418748, -0.905831, -0.064189,
		0.900293, 0.423359, -0.101198,
		33.453411, 26.883747, 45.602993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242931, 26.239042, 46.164688>,  <32.823204, 26.587397, 45.673832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242931, 26.239042, 46.164688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499981, 26.538637, 46.100124>,  <33.654209, 26.718395, 46.061386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499981, 26.538637, 46.100124>,  <33.242931, 26.239042, 46.164688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499981, 26.538637, 46.100124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232654, 0.009960, 0.972509,
		0.730006, -0.662508, -0.167855,
		0.642623, 0.748989, -0.161406,
		33.692768, 26.763334, 46.051704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893959, 26.089062, 46.515701>,  <33.242931, 26.239042, 46.164688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893959, 26.089062, 46.515701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878757, 26.487135, 46.479546>,  <33.869637, 26.725979, 46.457851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878757, 26.487135, 46.479546>,  <33.893959, 26.089062, 46.515701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878757, 26.487135, 46.479546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150022, 0.095110, 0.984097,
		0.987952, 0.023839, -0.152914,
		-0.038004, 0.995181, -0.090387,
		33.867355, 26.785690, 46.452431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540722, 26.422871, 46.900871>,  <33.893959, 26.089062, 46.515701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540722, 26.422871, 46.900871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237007, 26.682636, 46.884155>,  <34.054779, 26.838495, 46.874126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237007, 26.682636, 46.884155>,  <34.540722, 26.422871, 46.900871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237007, 26.682636, 46.884155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152183, 0.239634, 0.958862,
		0.632712, 0.721690, -0.280781,
		-0.759286, 0.649414, -0.041791,
		34.009220, 26.877460, 46.871616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748791, 26.960760, 47.298111>,  <34.540722, 26.422871, 46.900871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748791, 26.960760, 47.298111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356682, 27.029119, 47.258396>,  <34.121418, 27.070135, 47.234566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356682, 27.029119, 47.258396>,  <34.748791, 26.960760, 47.298111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356682, 27.029119, 47.258396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047342, 0.284688, 0.957451,
		0.191894, 0.943263, -0.270981,
		-0.980273, 0.170901, -0.099286,
		34.062599, 27.080389, 47.228611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693737, 27.512032, 47.714161>,  <34.748791, 26.960760, 47.298111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693737, 27.512032, 47.714161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326553, 27.358410, 47.674458>,  <34.106243, 27.266237, 47.650635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326553, 27.358410, 47.674458>,  <34.693737, 27.512032, 47.714161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326553, 27.358410, 47.674458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124676, 0.041803, 0.991317,
		-0.376572, 0.922363, -0.086257,
		-0.917960, -0.384056, -0.099255,
		34.051167, 27.243193, 47.644680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258984, 27.991140, 47.964046>,  <34.693737, 27.512032, 47.714161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258984, 27.991140, 47.964046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059959, 27.645132, 47.989891>,  <33.940544, 27.437527, 48.005398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059959, 27.645132, 47.989891>,  <34.258984, 27.991140, 47.964046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059959, 27.645132, 47.989891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222912, 0.199490, 0.954209,
		-0.838300, 0.460372, -0.292082,
		-0.497558, -0.865021, 0.064610,
		33.910690, 27.385626, 48.009274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457592, 28.110977, 48.670425>,  <34.258984, 27.991140, 47.964046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457592, 28.110977, 48.670425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701145, 28.374840, 48.846661>,  <34.847279, 28.533157, 48.952400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701145, 28.374840, 48.846661>,  <34.457592, 28.110977, 48.670425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701145, 28.374840, 48.846661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150915, 0.448941, -0.880725,
		-0.778773, 0.602748, 0.173800,
		0.608881, 0.659656, 0.440587,
		34.883808, 28.572737, 48.978836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243111, 28.817339, 48.422237>,  <34.457592, 28.110977, 48.670425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243111, 28.817339, 48.422237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632629, 28.824373, 48.512939>,  <34.866341, 28.828594, 48.567360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632629, 28.824373, 48.512939>,  <34.243111, 28.817339, 48.422237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632629, 28.824373, 48.512939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197332, 0.430367, -0.880820,
		-0.113075, 0.902483, 0.415619,
		0.973794, 0.017584, 0.226752,
		34.924767, 28.829649, 48.580967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458275, 29.520376, 48.164780>,  <34.243111, 28.817339, 48.422237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458275, 29.520376, 48.164780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789841, 29.300228, 48.204765>,  <34.988781, 29.168139, 48.228756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789841, 29.300228, 48.204765>,  <34.458275, 29.520376, 48.164780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789841, 29.300228, 48.204765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316198, 0.313596, -0.895364,
		0.461434, 0.773789, 0.433970,
		0.828914, -0.550372, 0.099966,
		35.038513, 29.135117, 48.234756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040287, 30.004868, 47.974762>,  <34.458275, 29.520376, 48.164780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040287, 30.004868, 47.974762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144032, 29.620560, 47.935459>,  <35.206276, 29.389975, 47.911877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144032, 29.620560, 47.935459>,  <35.040287, 30.004868, 47.974762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144032, 29.620560, 47.935459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379023, 0.194835, -0.904644,
		0.888299, 0.197386, 0.414686,
		0.259359, -0.960770, -0.098258,
		35.221840, 29.332329, 47.905983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705601, 30.078974, 47.693241>,  <35.040287, 30.004868, 47.974762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705601, 30.078974, 47.693241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591305, 29.700912, 47.629951>,  <35.522728, 29.474075, 47.591976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591305, 29.700912, 47.629951>,  <35.705601, 30.078974, 47.693241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591305, 29.700912, 47.629951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214776, 0.097748, -0.971759,
		0.933930, -0.311653, 0.175066,
		-0.285739, -0.945155, -0.158226,
		35.505585, 29.417366, 47.582485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220966, 29.642673, 47.265282>,  <35.705601, 30.078974, 47.693241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220966, 29.642673, 47.265282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869972, 29.456251, 47.220001>,  <35.659378, 29.344397, 47.192833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869972, 29.456251, 47.220001>,  <36.220966, 29.642673, 47.265282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869972, 29.456251, 47.220001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130677, -0.005238, -0.991411,
		0.461462, -0.884739, 0.065499,
		-0.877483, -0.466058, -0.113197,
		35.606728, 29.316433, 47.186043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373775, 29.029188, 46.735744>,  <36.220966, 29.642673, 47.265282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373775, 29.029188, 46.735744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982113, 29.108469, 46.717979>,  <35.747116, 29.156038, 46.707321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982113, 29.108469, 46.717979>,  <36.373775, 29.029188, 46.735744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982113, 29.108469, 46.717979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029100, -0.079503, -0.996410,
		-0.201022, -0.976931, 0.072078,
		-0.979154, 0.198203, -0.044411,
		35.688366, 29.167929, 46.704655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150829, 28.492903, 46.351883>,  <36.373775, 29.029188, 46.735744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150829, 28.492903, 46.351883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899967, 28.804218, 46.339569>,  <35.749451, 28.991007, 46.332180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899967, 28.804218, 46.339569>,  <36.150829, 28.492903, 46.351883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899967, 28.804218, 46.339569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116512, -0.132823, -0.984268,
		-0.770133, -0.613698, 0.173980,
		-0.627152, 0.778288, -0.030788,
		35.711823, 29.037704, 46.330334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682529, 28.285294, 45.892670>,  <36.150829, 28.492903, 46.351883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682529, 28.285294, 45.892670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605793, 28.677357, 45.912628>,  <35.559750, 28.912594, 45.924603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605793, 28.677357, 45.912628>,  <35.682529, 28.285294, 45.892670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605793, 28.677357, 45.912628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277667, -0.005439, -0.960662,
		-0.941328, -0.198152, 0.273200,
		-0.191843, 0.980156, 0.049900,
		35.548241, 28.971403, 45.927597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002895, 28.373129, 45.546436>,  <35.682529, 28.285294, 45.892670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002895, 28.373129, 45.546436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194698, 28.723875, 45.532665>,  <35.309780, 28.934322, 45.524403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194698, 28.723875, 45.532665>,  <35.002895, 28.373129, 45.546436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194698, 28.723875, 45.532665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328022, 0.142706, -0.933829,
		-0.813927, 0.459070, 0.356059,
		0.479504, 0.876864, -0.034432,
		35.338551, 28.986935, 45.522335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583740, 28.804810, 45.186573>,  <35.002895, 28.373129, 45.546436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583740, 28.804810, 45.186573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932144, 29.001265, 45.190952>,  <35.141186, 29.119137, 45.193581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932144, 29.001265, 45.190952>,  <34.583740, 28.804810, 45.186573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932144, 29.001265, 45.190952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178254, 0.336741, -0.924571,
		-0.457779, 0.803361, 0.380853,
		0.871013, 0.491137, 0.010951,
		35.193447, 29.148605, 45.194237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375801, 29.464903, 44.971565>,  <34.583740, 28.804810, 45.186573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375801, 29.464903, 44.971565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759407, 29.386606, 44.889603>,  <34.989571, 29.339628, 44.840427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759407, 29.386606, 44.889603>,  <34.375801, 29.464903, 44.971565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759407, 29.386606, 44.889603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159768, 0.223706, -0.961473,
		0.234036, 0.954799, 0.183264,
		0.959011, -0.195740, -0.204902,
		35.047112, 29.327885, 44.828133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416435, 29.762991, 44.392845>,  <34.375801, 29.464903, 44.971565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416435, 29.762991, 44.392845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779514, 29.595285, 44.399826>,  <34.997360, 29.494661, 44.404015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779514, 29.595285, 44.399826>,  <34.416435, 29.762991, 44.392845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779514, 29.595285, 44.399826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143050, 0.270056, -0.952159,
		0.394493, 0.866768, 0.305105,
		0.907696, -0.419265, 0.017456,
		35.051823, 29.469505, 44.405064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103085, 30.234596, 44.260548>,  <34.416435, 29.762991, 44.392845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103085, 30.234596, 44.260548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166122, 29.860514, 44.133709>,  <35.203945, 29.636065, 44.057606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166122, 29.860514, 44.133709>,  <35.103085, 30.234596, 44.260548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166122, 29.860514, 44.133709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170214, 0.342028, -0.924145,
		0.972724, 0.091664, 0.213086,
		0.157592, -0.935208, -0.317096,
		35.213402, 29.579950, 44.038582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350166, 30.347982, 43.683929>,  <35.103085, 30.234596, 44.260548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350166, 30.347982, 43.683929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378902, 29.955969, 43.609772>,  <35.396145, 29.720760, 43.565277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378902, 29.955969, 43.609772>,  <35.350166, 30.347982, 43.683929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378902, 29.955969, 43.609772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233683, 0.197242, -0.952097,
		0.969656, 0.025070, 0.243187,
		0.071836, -0.980034, -0.185398,
		35.400452, 29.661959, 43.554153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925022, 30.263018, 43.361935>,  <35.350166, 30.347982, 43.683929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925022, 30.263018, 43.361935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695869, 29.962967, 43.229801>,  <35.558380, 29.782936, 43.150520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695869, 29.962967, 43.229801>,  <35.925022, 30.263018, 43.361935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695869, 29.962967, 43.229801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274575, 0.204097, -0.939656,
		0.772281, -0.629010, 0.089043,
		-0.572880, -0.750127, -0.330331,
		35.524006, 29.737928, 43.130703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233810, 30.176668, 42.730053>,  <35.925022, 30.263018, 43.361935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233810, 30.176668, 42.730053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888313, 29.979746, 42.687012>,  <35.681015, 29.861593, 42.661186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888313, 29.979746, 42.687012>,  <36.233810, 30.176668, 42.730053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888313, 29.979746, 42.687012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010057, 0.196639, -0.980424,
		0.503825, -0.847921, -0.164895,
		-0.863747, -0.492304, -0.107600,
		35.629189, 29.832054, 42.654732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348686, 29.656414, 42.329655>,  <36.233810, 30.176668, 42.730053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348686, 29.656414, 42.329655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951096, 29.693562, 42.306389>,  <35.712540, 29.715849, 42.292431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951096, 29.693562, 42.306389>,  <36.348686, 29.656414, 42.329655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951096, 29.693562, 42.306389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067186, 0.097221, -0.992993,
		-0.086562, -0.990921, -0.102875,
		-0.993978, 0.092867, -0.058160,
		35.652901, 29.721422, 42.288940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181599, 29.195599, 41.873169>,  <36.348686, 29.656414, 42.329655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181599, 29.195599, 41.873169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871628, 29.448393, 41.869713>,  <35.685646, 29.600069, 41.867638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871628, 29.448393, 41.869713>,  <36.181599, 29.195599, 41.873169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871628, 29.448393, 41.869713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105330, -0.142609, -0.984159,
		-0.623208, -0.761744, 0.177079,
		-0.774930, 0.631987, -0.008641,
		35.639149, 29.637989, 41.867119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593666, 28.952353, 41.412746>,  <36.181599, 29.195599, 41.873169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593666, 28.952353, 41.412746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513851, 29.339405, 41.474556>,  <35.465961, 29.571636, 41.511642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513851, 29.339405, 41.474556>,  <35.593666, 28.952353, 41.412746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513851, 29.339405, 41.474556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201106, 0.113904, -0.972925,
		-0.959032, -0.225208, 0.171868,
		-0.199534, 0.967630, 0.154528,
		35.453991, 29.629694, 41.520916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979595, 29.070072, 40.982334>,  <35.593666, 28.952353, 41.412746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979595, 29.070072, 40.982334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162315, 29.421585, 41.037575>,  <35.271950, 29.632492, 41.070717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162315, 29.421585, 41.037575>,  <34.979595, 29.070072, 40.982334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162315, 29.421585, 41.037575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024369, 0.167546, -0.985563,
		-0.889233, 0.446844, 0.097951,
		0.456805, 0.878782, 0.138098,
		35.299358, 29.685221, 41.079002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604919, 29.498030, 40.570591>,  <34.979595, 29.070072, 40.982334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604919, 29.498030, 40.570591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945580, 29.701027, 40.622974>,  <35.149975, 29.822824, 40.654404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945580, 29.701027, 40.622974>,  <34.604919, 29.498030, 40.570591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945580, 29.701027, 40.622974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068048, 0.140684, -0.987713,
		-0.519681, 0.850094, 0.085279,
		0.851646, 0.507493, 0.130958,
		35.201073, 29.853275, 40.662262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560291, 30.082481, 40.101692>,  <34.604919, 29.498030, 40.570591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560291, 30.082481, 40.101692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949364, 30.080795, 40.194530>,  <35.182808, 30.079782, 40.250233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949364, 30.080795, 40.194530>,  <34.560291, 30.082481, 40.101692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949364, 30.080795, 40.194530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231149, 0.109670, -0.966717,
		-0.021377, 0.993959, 0.107649,
		0.972683, -0.004217, 0.232097,
		35.241169, 30.079531, 40.264160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801289, 30.539356, 39.649414>,  <34.560291, 30.082481, 40.101692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801289, 30.539356, 39.649414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111423, 30.316578, 39.768517>,  <35.297504, 30.182911, 39.839977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111423, 30.316578, 39.768517>,  <34.801289, 30.539356, 39.649414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111423, 30.316578, 39.768517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354394, -0.006546, -0.935073,
		0.522736, 0.830522, 0.192304,
		0.775340, -0.556948, 0.297754,
		35.344025, 30.149494, 39.857841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425201, 30.926994, 39.455566>,  <34.801289, 30.539356, 39.649414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425201, 30.926994, 39.455566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555565, 30.550627, 39.492348>,  <35.633785, 30.324806, 39.514416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555565, 30.550627, 39.492348>,  <35.425201, 30.926994, 39.455566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555565, 30.550627, 39.492348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606081, 0.133303, -0.784153,
		0.725566, 0.311294, 0.613718,
		0.325913, -0.940918, 0.091949,
		35.653339, 30.268351, 39.519932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125252, 30.932098, 39.360832>,  <35.425201, 30.926994, 39.455566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125252, 30.932098, 39.360832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058659, 30.541056, 39.309341>,  <36.018703, 30.306431, 39.278446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058659, 30.541056, 39.309341>,  <36.125252, 30.932098, 39.360832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058659, 30.541056, 39.309341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709962, -0.028247, -0.703673,
		0.684280, -0.208538, 0.698766,
		-0.166480, -0.977606, -0.128725,
		36.008713, 30.247774, 39.270725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774590, 30.559723, 39.256989>,  <36.125252, 30.932098, 39.360832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774590, 30.559723, 39.256989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486042, 30.345623, 39.081200>,  <36.312912, 30.217163, 38.975727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486042, 30.345623, 39.081200>,  <36.774590, 30.559723, 39.256989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486042, 30.345623, 39.081200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571428, -0.101490, -0.814353,
		0.391279, -0.838575, 0.379068,
		-0.721368, -0.535249, -0.439474,
		36.269630, 30.185049, 38.949356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160488, 30.002138, 39.002708>,  <36.774590, 30.559723, 39.256989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160488, 30.002138, 39.002708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813862, 30.003885, 38.803093>,  <36.605885, 30.004932, 38.683323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813862, 30.003885, 38.803093>,  <37.160488, 30.002138, 39.002708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813862, 30.003885, 38.803093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488695, -0.195307, -0.850313,
		-0.101179, -0.980732, 0.167113,
		-0.866568, 0.004366, -0.499040,
		36.553890, 30.005196, 38.653381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190567, 29.297087, 38.701561>,  <37.160488, 30.002138, 39.002708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190567, 29.297087, 38.701561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947582, 29.553556, 38.513996>,  <36.801792, 29.707439, 38.401455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947582, 29.553556, 38.513996>,  <37.190567, 29.297087, 38.701561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947582, 29.553556, 38.513996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523660, -0.120639, -0.843342,
		-0.597300, -0.757852, -0.262474,
		-0.607464, 0.641176, -0.468915,
		36.765343, 29.745909, 38.373322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132755, 29.094805, 37.967693>,  <37.190567, 29.297087, 38.701561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132755, 29.094805, 37.967693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980530, 29.461647, 37.920219>,  <36.889194, 29.681753, 37.891735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980530, 29.461647, 37.920219>,  <37.132755, 29.094805, 37.967693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980530, 29.461647, 37.920219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647109, 0.172422, -0.742644,
		-0.660621, -0.359423, -0.659086,
		-0.380565, 0.917107, -0.118680,
		36.866360, 29.736778, 37.884617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884933, 29.164305, 37.267899>,  <37.132755, 29.094805, 37.967693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884933, 29.164305, 37.267899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984924, 29.521086, 37.418591>,  <37.044918, 29.735155, 37.509007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984924, 29.521086, 37.418591>,  <36.884933, 29.164305, 37.267899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984924, 29.521086, 37.418591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527869, 0.200632, -0.825288,
		-0.811704, 0.405172, -0.420681,
		0.249982, 0.891954, 0.376732,
		37.059917, 29.788671, 37.531609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835621, 29.771545, 36.623230>,  <36.884933, 29.164305, 37.267899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835621, 29.771545, 36.623230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024040, 29.948124, 36.928711>,  <37.137093, 30.054071, 37.112000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024040, 29.948124, 36.928711>,  <36.835621, 29.771545, 36.623230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024040, 29.948124, 36.928711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618745, 0.451700, -0.642745,
		-0.628701, 0.775300, -0.060370,
		0.471051, 0.441448, 0.763698,
		37.165356, 30.080559, 37.157822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071201, 30.450855, 36.375614>,  <36.835621, 29.771545, 36.623230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071201, 30.450855, 36.375614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311649, 30.382925, 36.687977>,  <37.455917, 30.342167, 36.875393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311649, 30.382925, 36.687977>,  <37.071201, 30.450855, 36.375614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311649, 30.382925, 36.687977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767578, 0.394670, -0.505034,
		-0.222431, 0.902992, 0.367600,
		0.601123, -0.169826, 0.780904,
		37.491985, 30.331978, 36.922249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519176, 31.029930, 36.428787>,  <37.071201, 30.450855, 36.375614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519176, 31.029930, 36.428787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708523, 30.763271, 36.659096>,  <37.822132, 30.603277, 36.797279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708523, 30.763271, 36.659096>,  <37.519176, 31.029930, 36.428787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708523, 30.763271, 36.659096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870268, 0.455028, -0.188638,
		-0.136237, 0.590368, 0.795554,
		0.473364, -0.666645, 0.575769,
		37.850533, 30.563278, 36.831825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877827, 31.429869, 36.910408>,  <37.519176, 31.029930, 36.428787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877827, 31.429869, 36.910408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059185, 31.073811, 36.928616>,  <38.167999, 30.860176, 36.939541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059185, 31.073811, 36.928616>,  <37.877827, 31.429869, 36.910408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059185, 31.073811, 36.928616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880093, 0.439030, -0.180800,
		0.140953, 0.122038, 0.982466,
		0.453397, -0.890146, 0.045522,
		38.195206, 30.806767, 36.942272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436634, 31.455784, 37.332653>,  <37.877827, 31.429869, 36.910408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436634, 31.455784, 37.332653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500267, 31.143250, 37.091255>,  <38.538445, 30.955729, 36.946415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500267, 31.143250, 37.091255>,  <38.436634, 31.455784, 37.332653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500267, 31.143250, 37.091255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940159, 0.306458, -0.148943,
		0.301321, -0.543691, 0.783330,
		0.159079, -0.781335, -0.603498,
		38.547989, 30.908850, 36.910206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033813, 31.249138, 37.569283>,  <38.436634, 31.455784, 37.332653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033813, 31.249138, 37.569283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975975, 31.112993, 37.197639>,  <38.941273, 31.031307, 36.974651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975975, 31.112993, 37.197639>,  <39.033813, 31.249138, 37.569283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975975, 31.112993, 37.197639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932100, 0.268282, -0.243341,
		0.332088, -0.901210, 0.278457,
		-0.144597, -0.340360, -0.929111,
		38.932594, 31.010885, 36.918907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517792, 30.836245, 37.529465>,  <39.033813, 31.249138, 37.569283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517792, 30.836245, 37.529465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424767, 30.949787, 37.157372>,  <39.368954, 31.017914, 36.934116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424767, 30.949787, 37.157372>,  <39.517792, 30.836245, 37.529465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424767, 30.949787, 37.157372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951288, 0.265437, -0.156826,
		0.202402, -0.921394, -0.331761,
		-0.232560, 0.283859, -0.930237,
		39.355000, 31.034945, 36.878300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038818, 30.550465, 36.979973>,  <39.517792, 30.836245, 37.529465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038818, 30.550465, 36.979973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864208, 30.854082, 36.786766>,  <39.759441, 31.036253, 36.670841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864208, 30.854082, 36.786766>,  <40.038818, 30.550465, 36.979973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864208, 30.854082, 36.786766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896324, 0.413320, -0.160528,
		0.077792, -0.503011, -0.860772,
		-0.436522, 0.759043, -0.483014,
		39.733253, 31.081795, 36.641861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462151, 30.686899, 36.501171>,  <40.038818, 30.550465, 36.979973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462151, 30.686899, 36.501171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252808, 31.026089, 36.534740>,  <40.127201, 31.229603, 36.554882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252808, 31.026089, 36.534740>,  <40.462151, 30.686899, 36.501171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252808, 31.026089, 36.534740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825903, 0.529029, -0.194969,
		-0.209728, -0.032722, -0.977212,
		-0.523353, 0.847973, 0.083927,
		40.095802, 31.280481, 36.559917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433506, 31.106712, 35.855995>,  <40.462151, 30.686899, 36.501171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433506, 31.106712, 35.855995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417873, 31.340931, 36.179874>,  <40.408493, 31.481462, 36.374203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417873, 31.340931, 36.179874>,  <40.433506, 31.106712, 35.855995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417873, 31.340931, 36.179874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803413, 0.500220, -0.322966,
		-0.594138, 0.637899, -0.489986,
		-0.039081, 0.585547, 0.809696,
		40.406151, 31.516596, 36.422783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446304, 31.706522, 35.533409>,  <40.433506, 31.106712, 35.855995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446304, 31.706522, 35.533409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611454, 31.707994, 35.897720>,  <40.710545, 31.708878, 36.116306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611454, 31.707994, 35.897720>,  <40.446304, 31.706522, 35.533409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611454, 31.707994, 35.897720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840719, 0.383090, -0.382666,
		-0.350319, 0.923704, 0.155075,
		0.412878, 0.003681, 0.910779,
		40.735317, 31.709099, 36.170956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899586, 32.281090, 35.410187>,  <40.446304, 31.706522, 35.533409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899586, 32.281090, 35.410187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001617, 32.064209, 35.730427>,  <41.062836, 31.934080, 35.922569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001617, 32.064209, 35.730427>,  <40.899586, 32.281090, 35.410187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001617, 32.064209, 35.730427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958987, 0.247710, -0.137780,
		-0.123611, 0.802906, 0.583148,
		0.255076, -0.542201, 0.800596,
		41.078140, 31.901548, 35.970604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550293, 32.562778, 35.668114>,  <40.899586, 32.281090, 35.410187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550293, 32.562778, 35.668114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528828, 32.182388, 35.789940>,  <41.515949, 31.954153, 35.863033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528828, 32.182388, 35.789940>,  <41.550293, 32.562778, 35.668114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528828, 32.182388, 35.789940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990509, -0.089343, -0.104445,
		0.126535, 0.296068, 0.946748,
		-0.053663, -0.950979, 0.304563,
		41.512730, 31.897095, 35.881310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256454, 32.323364, 35.556904>,  <41.550293, 32.562778, 35.668114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256454, 32.323364, 35.556904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089493, 32.015167, 35.749615>,  <41.989315, 31.830248, 35.865242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089493, 32.015167, 35.749615>,  <42.256454, 32.323364, 35.556904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089493, 32.015167, 35.749615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789618, -0.569924, -0.227356,
		0.449755, 0.285524, 0.846284,
		-0.417402, -0.770495, 0.481780,
		41.964272, 31.784019, 35.894150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919304, 32.357880, 35.908146>,  <42.256454, 32.323364, 35.556904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919304, 32.357880, 35.908146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741959, 32.001122, 35.943806>,  <42.635551, 31.787066, 35.965202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741959, 32.001122, 35.943806>,  <42.919304, 32.357880, 35.908146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741959, 32.001122, 35.943806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874852, -0.452235, -0.173543,
		0.195098, 0.001047, 0.980783,
		-0.443363, -0.891898, 0.089146,
		42.608952, 31.733553, 35.970551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455158, 31.995722, 36.112068>,  <42.919304, 32.357880, 35.908146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455158, 31.995722, 36.112068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181202, 31.721535, 36.013226>,  <43.016830, 31.557022, 35.953918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181202, 31.721535, 36.013226>,  <43.455158, 31.995722, 36.112068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181202, 31.721535, 36.013226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724030, -0.678341, -0.125036,
		-0.081918, -0.264551, 0.960886,
		-0.684887, -0.685468, -0.247111,
		42.975735, 31.515894, 35.939091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923958, 32.199890, 35.585140>,  <43.455158, 31.995722, 36.112068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923958, 32.199890, 35.585140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173412, 32.221516, 35.273205>,  <44.323086, 32.234489, 35.086044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173412, 32.221516, 35.273205>,  <43.923958, 32.199890, 35.585140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173412, 32.221516, 35.273205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774854, -0.089106, -0.625829,
		-0.103322, 0.994554, -0.013679,
		0.623639, 0.054063, -0.779840,
		44.360504, 32.237736, 35.039253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566315, 32.612785, 35.157753>,  <43.923958, 32.199890, 35.585140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566315, 32.612785, 35.157753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834335, 32.427074, 34.926071>,  <43.995148, 32.315647, 34.787064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834335, 32.427074, 34.926071>,  <43.566315, 32.612785, 35.157753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834335, 32.427074, 34.926071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688031, -0.095545, -0.719364,
		0.278646, 0.880521, -0.383458,
		0.670053, -0.464279, -0.579202,
		44.035351, 32.287792, 34.752312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459404, 32.887775, 34.562668>,  <43.566315, 32.612785, 35.157753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459404, 32.887775, 34.562668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653572, 32.549698, 34.473206>,  <43.770073, 32.346851, 34.419529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653572, 32.549698, 34.473206>,  <43.459404, 32.887775, 34.562668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653572, 32.549698, 34.473206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647721, -0.175843, -0.741307,
		0.587219, 0.504709, -0.632805,
		0.485419, -0.845191, -0.223652,
		43.799198, 32.296139, 34.406109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447891, 32.836102, 33.798870>,  <43.459404, 32.887775, 34.562668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447891, 32.836102, 33.798870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493694, 32.460480, 33.928520>,  <43.521175, 32.235107, 34.006310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493694, 32.460480, 33.928520>,  <43.447891, 32.836102, 33.798870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493694, 32.460480, 33.928520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634927, -0.320116, -0.703131,
		0.764038, -0.125277, -0.632891,
		0.114512, -0.939059, 0.324123,
		43.528049, 32.178761, 34.025757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573811, 32.502697, 33.191238>,  <43.447891, 32.836102, 33.798870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573811, 32.502697, 33.191238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465080, 32.239128, 33.471790>,  <43.399841, 32.080986, 33.640121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465080, 32.239128, 33.471790>,  <43.573811, 32.502697, 33.191238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465080, 32.239128, 33.471790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553628, -0.489071, -0.674022,
		0.787152, -0.571520, -0.231855,
		-0.271824, -0.658919, 0.701383,
		43.383533, 32.041451, 33.682205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655407, 31.825508, 32.984524>,  <43.573811, 32.502697, 33.191238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655407, 31.825508, 32.984524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389256, 31.752731, 33.274120>,  <43.229565, 31.709064, 33.447880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389256, 31.752731, 33.274120>,  <43.655407, 31.825508, 32.984524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389256, 31.752731, 33.274120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434687, -0.694026, -0.573912,
		0.606888, -0.696581, 0.382704,
		-0.665383, -0.181943, 0.723991,
		43.189640, 31.698149, 33.491318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612049, 31.047340, 33.218159>,  <43.655407, 31.825508, 32.984524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612049, 31.047340, 33.218159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260723, 31.207882, 33.322060>,  <43.049927, 31.304207, 33.384399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260723, 31.207882, 33.322060>,  <43.612049, 31.047340, 33.218159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260723, 31.207882, 33.322060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476567, -0.778156, -0.409093,
		0.037936, -0.483103, 0.874741,
		-0.878319, 0.401354, 0.259751,
		42.997227, 31.328289, 33.399986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196793, 30.437050, 33.472755>,  <43.612049, 31.047340, 33.218159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196793, 30.437050, 33.472755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907356, 30.710443, 33.434265>,  <42.733692, 30.874479, 33.411171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907356, 30.710443, 33.434265>,  <43.196793, 30.437050, 33.472755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907356, 30.710443, 33.434265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596338, -0.689261, -0.411461,
		-0.347550, -0.240350, 0.906334,
		-0.723595, 0.683485, -0.096223,
		42.690277, 30.915489, 33.405399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611317, 30.058954, 33.677765>,  <43.196793, 30.437050, 33.472755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611317, 30.058954, 33.677765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486721, 30.391191, 33.493118>,  <42.411964, 30.590534, 33.382332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486721, 30.391191, 33.493118>,  <42.611317, 30.058954, 33.677765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486721, 30.391191, 33.493118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690982, -0.531457, -0.489997,
		-0.652318, 0.166342, 0.739468,
		-0.311488, 0.830593, -0.461618,
		42.393276, 30.640369, 33.354633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826340, 30.115307, 33.695080>,  <42.611317, 30.058954, 33.677765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826340, 30.115307, 33.695080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942360, 30.351919, 33.394157>,  <42.011971, 30.493887, 33.213604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942360, 30.351919, 33.394157>,  <41.826340, 30.115307, 33.695080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942360, 30.351919, 33.394157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667634, -0.438140, -0.601912,
		-0.685665, 0.676848, 0.267845,
		0.290049, 0.591533, -0.752303,
		42.029373, 30.529379, 33.168465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176929, 30.408146, 33.400246>,  <41.826340, 30.115307, 33.695080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176929, 30.408146, 33.400246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468193, 30.423656, 33.126522>,  <41.642952, 30.432962, 32.962288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468193, 30.423656, 33.126522>,  <41.176929, 30.408146, 33.400246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468193, 30.423656, 33.126522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612749, -0.410532, -0.675279,
		-0.307116, 0.911021, -0.275172,
		0.728161, 0.038778, -0.684309,
		41.686642, 30.435289, 32.921230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789303, 30.498219, 32.740177>,  <41.176929, 30.408146, 33.400246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789303, 30.498219, 32.740177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154697, 30.384768, 32.623493>,  <41.373936, 30.316696, 32.553482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154697, 30.384768, 32.623493>,  <40.789303, 30.498219, 32.740177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154697, 30.384768, 32.623493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405391, -0.573591, -0.711794,
		0.034564, 0.768472, -0.638949,
		0.913490, -0.283627, -0.291706,
		41.428745, 30.299679, 32.535980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767971, 30.579031, 31.857079>,  <40.789303, 30.498219, 32.740177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767971, 30.579031, 31.857079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046265, 30.328976, 31.998590>,  <41.213242, 30.178944, 32.083496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046265, 30.328976, 31.998590>,  <40.767971, 30.579031, 31.857079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046265, 30.328976, 31.998590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119431, -0.586343, -0.801211,
		0.708303, 0.515176, -0.482598,
		0.695732, -0.625137, 0.353780,
		41.254986, 30.141434, 32.104725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258118, 30.573395, 31.390497>,  <40.767971, 30.579031, 31.857079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258118, 30.573395, 31.390497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292847, 30.231712, 31.595552>,  <41.313683, 30.026703, 31.718586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292847, 30.231712, 31.595552>,  <41.258118, 30.573395, 31.390497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292847, 30.231712, 31.595552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318433, -0.511379, -0.798181,
		0.943961, -0.093943, -0.316405,
		0.086819, -0.854205, 0.512636,
		41.318893, 29.975451, 31.749344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337624, 30.293625, 30.789474>,  <41.258118, 30.573395, 31.390497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337624, 30.293625, 30.789474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273823, 30.015268, 31.069557>,  <41.235542, 29.848253, 31.237608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273823, 30.015268, 31.069557>,  <41.337624, 30.293625, 30.789474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273823, 30.015268, 31.069557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411259, -0.597969, -0.687967,
		0.897455, -0.397700, -0.190815,
		-0.159503, -0.695894, 0.700208,
		41.225971, 29.806499, 31.279619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550686, 29.549564, 30.580542>,  <41.337624, 30.293625, 30.789474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550686, 29.549564, 30.580542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286751, 29.464653, 30.868860>,  <41.128387, 29.413706, 31.041851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286751, 29.464653, 30.868860>,  <41.550686, 29.549564, 30.580542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286751, 29.464653, 30.868860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553601, -0.511279, -0.657359,
		0.508072, -0.832786, 0.219844,
		-0.659840, -0.212279, 0.720797,
		41.088799, 29.400969, 31.085100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313904, 28.907038, 30.346592>,  <41.550686, 29.549564, 30.580542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313904, 28.907038, 30.346592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039406, 28.999674, 30.622400>,  <40.874706, 29.055256, 30.787886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039406, 28.999674, 30.622400>,  <41.313904, 28.907038, 30.346592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039406, 28.999674, 30.622400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706932, -0.435503, -0.557301,
		0.171224, -0.869887, 0.462578,
		-0.686243, 0.231588, 0.689520,
		40.833534, 29.069151, 30.829256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960571, 28.283566, 30.597105>,  <41.313904, 28.907038, 30.346592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960571, 28.283566, 30.597105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716965, 28.592955, 30.667349>,  <40.570801, 28.778587, 30.709496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716965, 28.592955, 30.667349>,  <40.960571, 28.283566, 30.597105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716965, 28.592955, 30.667349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778953, -0.541555, -0.316149,
		-0.149430, -0.329331, 0.932315,
		-0.609017, 0.773472, 0.175609,
		40.534260, 28.824997, 30.720032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312294, 28.062126, 30.939440>,  <40.960571, 28.283566, 30.597105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312294, 28.062126, 30.939440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217171, 28.396715, 30.741949>,  <40.160095, 28.597467, 30.623455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217171, 28.396715, 30.741949>,  <40.312294, 28.062126, 30.939440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217171, 28.396715, 30.741949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755111, -0.478930, -0.447698,
		-0.610946, 0.266352, 0.745521,
		-0.237807, 0.836470, -0.493726,
		40.145828, 28.647655, 30.593832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577106, 28.267412, 31.148344>,  <40.312294, 28.062126, 30.939440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577106, 28.267412, 31.148344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692501, 28.400591, 30.789251>,  <39.761738, 28.480497, 30.573795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692501, 28.400591, 30.789251>,  <39.577106, 28.267412, 31.148344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692501, 28.400591, 30.789251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718952, -0.543904, -0.432754,
		-0.632364, 0.770269, 0.082466,
		0.288484, 0.332947, -0.897732,
		39.779045, 28.500475, 30.519932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955196, 28.348722, 30.770929>,  <39.577106, 28.267412, 31.148344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955196, 28.348722, 30.770929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245201, 28.354366, 30.495495>,  <39.419205, 28.357752, 30.330235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245201, 28.354366, 30.495495>,  <38.955196, 28.348722, 30.770929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245201, 28.354366, 30.495495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564090, -0.561470, -0.605437,
		-0.395163, 0.827377, -0.399117,
		0.725017, 0.014108, -0.688587,
		39.462708, 28.358599, 30.288919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646549, 28.565121, 30.181604>,  <38.955196, 28.348722, 30.770929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646549, 28.565121, 30.181604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962242, 28.333597, 30.099543>,  <39.151657, 28.194683, 30.050304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962242, 28.333597, 30.099543>,  <38.646549, 28.565121, 30.181604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962242, 28.333597, 30.099543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583928, -0.603932, -0.542490,
		0.190098, 0.547947, -0.814627,
		0.789235, -0.578809, -0.205155,
		39.199013, 28.159954, 30.037996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836479, 28.640856, 29.413414>,  <38.646549, 28.565121, 30.181604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836479, 28.640856, 29.413414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847317, 28.320936, 29.653276>,  <38.853821, 28.128984, 29.797194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847317, 28.320936, 29.653276>,  <38.836479, 28.640856, 29.413414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847317, 28.320936, 29.653276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763578, -0.403710, -0.503951,
		0.645147, -0.444230, -0.621647,
		0.027095, -0.799799, 0.599656,
		38.855446, 28.080997, 29.833174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655884, 29.400955, 29.595787>,  <38.836479, 28.640856, 29.413414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655884, 29.400955, 29.595787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497784, 29.707396, 29.393061>,  <38.402924, 29.891260, 29.271425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497784, 29.707396, 29.393061>,  <38.655884, 29.400955, 29.595787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497784, 29.707396, 29.393061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229688, 0.616645, 0.752989,
		0.889393, 0.181209, -0.419694,
		-0.395251, 0.766102, -0.506818,
		38.379208, 29.937225, 29.241014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076828, 29.998203, 29.514017>,  <38.655884, 29.400955, 29.595787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076828, 29.998203, 29.514017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703033, 30.140165, 29.502804>,  <38.478756, 30.225342, 29.496075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703033, 30.140165, 29.502804>,  <39.076828, 29.998203, 29.514017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703033, 30.140165, 29.502804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164316, 0.499826, 0.850397,
		0.315822, 0.790074, -0.525394,
		-0.934482, 0.354904, -0.028034,
		38.422688, 30.246637, 29.494394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031200, 30.805359, 29.518398>,  <39.076828, 29.998203, 29.514017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031200, 30.805359, 29.518398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727692, 30.608011, 29.688503>,  <38.545586, 30.489603, 29.790565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727692, 30.608011, 29.688503>,  <39.031200, 30.805359, 29.518398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727692, 30.608011, 29.688503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115625, 0.540495, 0.833364,
		-0.641008, 0.681507, -0.353068,
		-0.758775, -0.493370, 0.425261,
		38.500057, 30.460001, 29.816082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579372, 31.274605, 29.830713>,  <39.031200, 30.805359, 29.518398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579372, 31.274605, 29.830713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528004, 30.934488, 30.034878>,  <38.497185, 30.730419, 30.157375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528004, 30.934488, 30.034878>,  <38.579372, 31.274605, 29.830713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528004, 30.934488, 30.034878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081610, 0.503865, 0.859919,
		-0.988356, 0.152083, 0.004687,
		-0.128418, -0.850289, 0.510409,
		38.489479, 30.679401, 30.188000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141560, 31.820087, 29.977388>,  <38.579372, 31.274605, 29.830713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141560, 31.820087, 29.977388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772789, 31.688950, 30.059914>,  <37.551525, 31.610268, 30.109428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772789, 31.688950, 30.059914>,  <38.141560, 31.820087, 29.977388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772789, 31.688950, 30.059914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114906, 0.740105, 0.662602,
		-0.369922, 0.587166, -0.719996,
		-0.921930, -0.327843, 0.206312,
		37.496208, 31.590597, 30.121807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913486, 31.979313, 29.768738>,  <38.141560, 31.820087, 29.977388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913486, 31.979313, 29.768738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756992, 32.322662, 29.901484>,  <38.663097, 32.528671, 29.981131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756992, 32.322662, 29.901484>,  <38.913486, 31.979313, 29.768738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756992, 32.322662, 29.901484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843650, 0.190443, 0.501983,
		0.367687, 0.476370, -0.798673,
		-0.391231, 0.858372, 0.331866,
		38.639622, 32.580173, 30.001043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401794, 32.591251, 29.560369>,  <38.913486, 31.979313, 29.768738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401794, 32.591251, 29.560369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184284, 32.653465, 29.890245>,  <39.053776, 32.690792, 30.088171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184284, 32.653465, 29.890245>,  <39.401794, 32.591251, 29.560369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184284, 32.653465, 29.890245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830185, -0.044173, 0.555735,
		0.122863, 0.986843, -0.105098,
		-0.543780, 0.155530, 0.824690,
		39.021149, 32.700123, 30.137653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471657, 33.248909, 29.926525>,  <39.401794, 32.591251, 29.560369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471657, 33.248909, 29.926525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419796, 32.919117, 30.146858>,  <39.388680, 32.721241, 30.279058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419796, 32.919117, 30.146858>,  <39.471657, 33.248909, 29.926525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419796, 32.919117, 30.146858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925951, 0.098042, 0.364695,
		-0.354690, 0.557328, 0.750720,
		-0.129653, -0.824483, 0.550833,
		39.380901, 32.671772, 30.312109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392803, 33.264286, 30.654394>,  <39.471657, 33.248909, 29.926525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392803, 33.264286, 30.654394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597443, 32.939945, 30.540707>,  <39.720226, 32.745338, 30.472494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597443, 32.939945, 30.540707>,  <39.392803, 33.264286, 30.654394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597443, 32.939945, 30.540707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822208, 0.365956, 0.435947,
		-0.249478, -0.456718, 0.853914,
		0.511600, -0.810854, -0.284219,
		39.750923, 32.696690, 30.455441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927704, 33.272717, 31.083679>,  <39.392803, 33.264286, 30.654394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927704, 33.272717, 31.083679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078144, 33.004246, 30.828159>,  <40.168407, 32.843163, 30.674847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078144, 33.004246, 30.828159>,  <39.927704, 33.272717, 31.083679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078144, 33.004246, 30.828159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910514, 0.139893, 0.389094,
		-0.171788, -0.727976, 0.663731,
		0.376102, -0.671178, -0.638801,
		40.190975, 32.802891, 30.636518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350285, 32.858284, 31.429710>,  <39.927704, 33.272717, 31.083679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350285, 32.858284, 31.429710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504910, 32.777847, 31.069683>,  <40.597687, 32.729584, 30.853666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504910, 32.777847, 31.069683>,  <40.350285, 32.858284, 31.429710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504910, 32.777847, 31.069683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920623, 0.025992, 0.389587,
		-0.054950, -0.979227, 0.195181,
		0.386567, -0.201096, -0.900070,
		40.620880, 32.717518, 30.799662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833797, 32.223164, 31.521166>,  <40.350285, 32.858284, 31.429710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833797, 32.223164, 31.521166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958797, 32.400761, 31.185259>,  <41.033798, 32.507320, 30.983715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958797, 32.400761, 31.185259>,  <40.833797, 32.223164, 31.521166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958797, 32.400761, 31.185259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948426, -0.195353, 0.249652,
		-0.053206, -0.874474, -0.482146,
		0.312502, 0.443996, -0.839767,
		41.052547, 32.533958, 30.933329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386578, 31.844694, 31.351019>,  <40.833797, 32.223164, 31.521166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386578, 31.844694, 31.351019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438843, 32.188232, 31.152903>,  <41.470200, 32.394356, 31.034033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438843, 32.188232, 31.152903>,  <41.386578, 31.844694, 31.351019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438843, 32.188232, 31.152903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988418, -0.073950, 0.132516,
		0.077184, -0.506869, -0.858561,
		0.130659, 0.858845, -0.495291,
		41.478039, 32.445885, 31.004316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955425, 31.712990, 31.037380>,  <41.386578, 31.844694, 31.351019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955425, 31.712990, 31.037380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921368, 32.110252, 31.005404>,  <41.900932, 32.348610, 30.986217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921368, 32.110252, 31.005404>,  <41.955425, 31.712990, 31.037380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921368, 32.110252, 31.005404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951173, 0.104910, 0.290281,
		0.296681, -0.051324, -0.953596,
		-0.085144, 0.993156, -0.079943,
		41.895824, 32.408199, 30.981421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561821, 31.993452, 30.725849>,  <41.955425, 31.712990, 31.037380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561821, 31.993452, 30.725849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410919, 32.297615, 30.937305>,  <42.320377, 32.480114, 31.064178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410919, 32.297615, 30.937305>,  <42.561821, 31.993452, 30.725849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410919, 32.297615, 30.937305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925912, 0.321480, 0.198339,
		-0.019128, 0.564298, -0.825349,
		-0.377256, 0.760407, 0.528640,
		42.297741, 32.525738, 31.095898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089165, 32.464314, 30.588354>,  <42.561821, 31.993452, 30.725849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089165, 32.464314, 30.588354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880833, 32.615669, 30.894442>,  <42.755833, 32.706482, 31.078094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880833, 32.615669, 30.894442>,  <43.089165, 32.464314, 30.588354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880833, 32.615669, 30.894442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797916, 0.534397, 0.278838,
		-0.303420, 0.755806, -0.580253,
		-0.520832, 0.378388, 0.765217,
		42.724583, 32.729187, 31.124006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135563, 33.213043, 30.654284>,  <43.089165, 32.464314, 30.588354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135563, 33.213043, 30.654284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028156, 33.117096, 31.027456>,  <42.963711, 33.059528, 31.251360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028156, 33.117096, 31.027456>,  <43.135563, 33.213043, 30.654284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028156, 33.117096, 31.027456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715432, 0.598864, 0.359888,
		-0.645025, 0.764085, 0.010804,
		-0.268515, -0.239866, 0.932933,
		42.947601, 33.045135, 31.307337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022049, 33.864765, 31.049442>,  <43.135563, 33.213043, 30.654284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022049, 33.864765, 31.049442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074745, 33.588200, 31.333580>,  <43.106361, 33.422260, 31.504063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074745, 33.588200, 31.333580>,  <43.022049, 33.864765, 31.049442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074745, 33.588200, 31.333580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650017, 0.601275, 0.464700,
		-0.748413, 0.400516, 0.528645,
		0.131741, -0.691416, 0.710344,
		43.114269, 33.380775, 31.546682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249233, 34.269257, 31.655993>,  <43.022049, 33.864765, 31.049442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249233, 34.269257, 31.655993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329105, 33.889423, 31.752674>,  <43.377029, 33.661522, 31.810682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329105, 33.889423, 31.752674>,  <43.249233, 34.269257, 31.655993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329105, 33.889423, 31.752674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829483, 0.295124, 0.474194,
		-0.521619, 0.105803, 0.846593,
		0.199679, -0.949583, 0.241705,
		43.389008, 33.604549, 31.825186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346928, 34.211761, 32.409161>,  <43.249233, 34.269257, 31.655993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346928, 34.211761, 32.409161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508953, 33.866489, 32.288597>,  <43.606171, 33.659328, 32.216259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508953, 33.866489, 32.288597>,  <43.346928, 34.211761, 32.409161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508953, 33.866489, 32.288597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796502, 0.171296, 0.579864,
		-0.448895, -0.474957, 0.756908,
		0.405066, -0.863176, -0.301410,
		43.630474, 33.607536, 32.198174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588463, 33.824921, 33.006542>,  <43.346928, 34.211761, 32.409161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588463, 33.824921, 33.006542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788532, 33.650486, 32.707298>,  <43.908573, 33.545826, 32.527752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788532, 33.650486, 32.707298>,  <43.588463, 33.824921, 33.006542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788532, 33.650486, 32.707298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827220, -0.014785, 0.561683,
		-0.256002, -0.899785, 0.353342,
		0.500169, -0.436084, -0.748105,
		43.938583, 33.519661, 32.482868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868275, 33.168171, 33.269680>,  <43.588463, 33.824921, 33.006542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868275, 33.168171, 33.269680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093395, 33.276413, 32.957264>,  <44.228466, 33.341358, 32.769814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093395, 33.276413, 32.957264>,  <43.868275, 33.168171, 33.269680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093395, 33.276413, 32.957264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779003, 0.142340, 0.610651,
		0.276421, -0.952108, -0.130696,
		0.562802, 0.270609, -0.781040,
		44.262238, 33.357597, 32.722950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541492, 32.915222, 33.393494>,  <43.868275, 33.168171, 33.269680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541492, 32.915222, 33.393494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631210, 33.178829, 33.106331>,  <44.685043, 33.336994, 32.934032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631210, 33.178829, 33.106331>,  <44.541492, 32.915222, 33.393494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631210, 33.178829, 33.106331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900856, 0.140754, 0.410666,
		0.371683, -0.738842, -0.562107,
		0.224299, 0.659015, -0.717906,
		44.698502, 33.376534, 32.890961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197468, 32.725338, 33.213375>,  <44.541492, 32.915222, 33.393494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197468, 32.725338, 33.213375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173428, 33.114452, 33.123871>,  <45.159004, 33.347923, 33.070168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173428, 33.114452, 33.123871>,  <45.197468, 32.725338, 33.213375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173428, 33.114452, 33.123871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888091, 0.154454, 0.432942,
		0.455722, -0.172700, -0.873208,
		-0.060102, 0.972789, -0.223761,
		45.155396, 33.406288, 33.056744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832981, 32.854946, 32.878902>,  <45.197468, 32.725338, 33.213375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832981, 32.854946, 32.878902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693214, 33.199421, 33.026558>,  <45.609356, 33.406105, 33.115150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693214, 33.199421, 33.026558>,  <45.832981, 32.854946, 32.878902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.693214, 33.199421, 33.026558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877195, 0.162207, 0.451904,
		0.329298, 0.481707, -0.812109,
		-0.349415, 0.861189, 0.369137,
		45.588390, 33.457779, 33.137299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333004, 33.229912, 32.930241>,  <45.832981, 32.854946, 32.878902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333004, 33.229912, 32.930241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107254, 33.468582, 33.158436>,  <45.971802, 33.611786, 33.295353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107254, 33.468582, 33.158436>,  <46.333004, 33.229912, 32.930241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107254, 33.468582, 33.158436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816623, 0.302371, 0.491629,
		0.120845, 0.743336, -0.657911,
		-0.564379, 0.596676, 0.570485,
		45.937939, 33.647587, 33.329582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618263, 33.847736, 32.921406>,  <46.333004, 33.229912, 32.930241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618263, 33.847736, 32.921406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400471, 33.846737, 33.256912>,  <46.269794, 33.846138, 33.458218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400471, 33.846737, 33.256912>,  <46.618263, 33.847736, 32.921406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400471, 33.846737, 33.256912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733608, 0.483387, 0.477658,
		-0.406642, 0.875403, -0.261365,
		-0.544483, -0.002496, 0.838768,
		46.237125, 33.845989, 33.508541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.679722, 34.577560, 33.322933>,  <46.618263, 33.847736, 32.921406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.679722, 34.577560, 33.322933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566925, 34.327610, 33.614140>,  <46.499249, 34.177639, 33.788864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566925, 34.327610, 33.614140>,  <46.679722, 34.577560, 33.322933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.566925, 34.327610, 33.614140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681268, 0.403874, 0.610541,
		-0.675540, 0.668142, 0.311820,
		-0.281992, -0.624877, 0.728017,
		46.482327, 34.140148, 33.832546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397991, 34.927441, 33.863586>,  <46.679722, 34.577560, 33.322933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397991, 34.927441, 33.863586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570992, 34.587624, 33.984402>,  <46.674789, 34.383736, 34.056892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570992, 34.587624, 33.984402>,  <46.397991, 34.927441, 33.863586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570992, 34.587624, 33.984402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575161, 0.517933, 0.633194,
		-0.694360, -0.100134, 0.712627,
		0.432498, -0.849540, 0.302039,
		46.700741, 34.332760, 34.075012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818317, 35.390354, 34.171989>,  <46.397991, 34.927441, 33.863586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818317, 35.390354, 34.171989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.899391, 35.011528, 34.271576>,  <46.948036, 34.784233, 34.331329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.899391, 35.011528, 34.271576>,  <46.818317, 35.390354, 34.171989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.899391, 35.011528, 34.271576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654604, 0.320131, 0.684843,
		-0.728293, 0.024167, 0.684839,
		0.202688, -0.947065, 0.248969,
		46.960197, 34.727409, 34.346268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.770473, 35.331604, 35.004204>,  <46.818317, 35.390354, 34.171989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.770473, 35.331604, 35.004204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.017975, 35.109886, 34.781528>,  <47.166473, 34.976856, 34.647923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.017975, 35.109886, 34.781528>,  <46.770473, 35.331604, 35.004204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.017975, 35.109886, 34.781528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779692, 0.346647, 0.521456,
		-0.096068, -0.756696, 0.646670,
		0.618750, -0.554298, -0.556688,
		47.203602, 34.943596, 34.614521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.188148, 34.884068, 35.452106>,  <46.770473, 35.331604, 35.004204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.188148, 34.884068, 35.452106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390793, 34.975365, 35.119541>,  <47.512379, 35.030144, 34.920002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390793, 34.975365, 35.119541>,  <47.188148, 34.884068, 35.452106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.390793, 34.975365, 35.119541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790502, 0.261985, 0.553598,
		0.344172, -0.937694, -0.047700,
		0.506609, 0.228240, -0.831417,
		47.542774, 35.043835, 34.870117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.997665, 34.742874, 35.465252>,  <47.188148, 34.884068, 35.452106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.997665, 34.742874, 35.465252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.904854, 35.069035, 35.253109>,  <47.849167, 35.264732, 35.125824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.904854, 35.069035, 35.253109>,  <47.997665, 34.742874, 35.465252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.904854, 35.069035, 35.253109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544632, 0.560668, 0.623721,
		0.805938, -0.144127, -0.574187,
		-0.232034, 0.815401, -0.530360,
		47.835243, 35.313656, 35.094002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.038681, 34.435585, 43.382332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.703293, 34.254044, 43.261681>,  <33.502060, 34.145119, 43.189289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.703293, 34.254044, 43.261681>,  <34.038681, 34.435585, 43.382332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703293, 34.254044, 43.261681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103838, 0.410309, -0.906016,
		0.534959, -0.790990, -0.296906,
		-0.838473, -0.453851, -0.301633,
		33.451752, 34.117889, 43.171192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265598, 34.229282, 42.734398>,  <34.038681, 34.435585, 43.382332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265598, 34.229282, 42.734398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872391, 34.163521, 42.701794>,  <33.636467, 34.124065, 42.682232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872391, 34.163521, 42.701794>,  <34.265598, 34.229282, 42.734398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872391, 34.163521, 42.701794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067491, 0.089150, -0.993729,
		0.170644, -0.982356, -0.076540,
		-0.983019, -0.164408, -0.081513,
		33.577484, 34.114201, 42.677341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137127, 33.695751, 42.270153>,  <34.265598, 34.229282, 42.734398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137127, 33.695751, 42.270153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.798996, 33.909176, 42.259361>,  <33.596115, 34.037231, 42.252888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.798996, 33.909176, 42.259361>,  <34.137127, 33.695751, 42.270153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798996, 33.909176, 42.259361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156120, 0.198414, -0.967604,
		-0.510924, -0.822157, -0.251026,
		-0.845330, 0.533563, -0.026981,
		33.545399, 34.069244, 42.251266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832611, 33.435204, 41.630505>,  <34.137127, 33.695751, 42.270153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832611, 33.435204, 41.630505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.661335, 33.787418, 41.711807>,  <33.558571, 33.998749, 41.760590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.661335, 33.787418, 41.711807>,  <33.832611, 33.435204, 41.630505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661335, 33.787418, 41.711807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027576, 0.212080, -0.976863,
		-0.903269, -0.423886, -0.066529,
		-0.428188, 0.880536, 0.203254,
		33.532879, 34.051579, 41.772785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365631, 33.459789, 41.105057>,  <33.832611, 33.435204, 41.630505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365631, 33.459789, 41.105057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.398037, 33.833462, 41.244045>,  <33.417480, 34.057667, 41.327438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.398037, 33.833462, 41.244045>,  <33.365631, 33.459789, 41.105057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398037, 33.833462, 41.244045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109447, 0.354845, -0.928497,
		-0.990686, 0.037193, 0.130992,
		0.081016, 0.934185, 0.347469,
		33.422340, 34.113716, 41.348286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015388, 33.810638, 40.557419>,  <33.365631, 33.459789, 41.105057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015388, 33.810638, 40.557419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.208542, 34.090935, 40.767479>,  <33.324432, 34.259113, 40.893517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.208542, 34.090935, 40.767479>,  <33.015388, 33.810638, 40.557419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208542, 34.090935, 40.767479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129545, 0.535941, -0.834257,
		-0.866052, 0.470876, 0.168017,
		0.482879, 0.700745, 0.525152,
		33.353405, 34.301159, 40.925026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823956, 34.429714, 40.383121>,  <33.015388, 33.810638, 40.557419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823956, 34.429714, 40.383121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.203445, 34.490513, 40.493992>,  <33.431137, 34.526993, 40.560513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.203445, 34.490513, 40.493992>,  <32.823956, 34.429714, 40.383121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203445, 34.490513, 40.493992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224517, 0.293243, -0.929301,
		-0.222531, 0.943878, 0.244079,
		0.948721, 0.151999, 0.277172,
		33.488060, 34.536114, 40.577145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976585, 35.012428, 39.946266>,  <32.823956, 34.429714, 40.383121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976585, 35.012428, 39.946266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.327473, 34.884941, 40.089882>,  <33.538006, 34.808449, 40.176052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.327473, 34.884941, 40.089882>,  <32.976585, 35.012428, 39.946266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327473, 34.884941, 40.089882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430686, 0.191971, -0.881849,
		0.212131, 0.928207, 0.305666,
		0.877217, -0.318713, 0.359043,
		33.590637, 34.789326, 40.197594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459843, 35.505733, 39.762394>,  <32.976585, 35.012428, 39.946266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459843, 35.505733, 39.762394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.662342, 35.171078, 39.846046>,  <33.783844, 34.970284, 39.896240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.662342, 35.171078, 39.846046>,  <33.459843, 35.505733, 39.762394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662342, 35.171078, 39.846046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546887, 0.123953, -0.827979,
		0.666800, 0.533540, 0.520301,
		0.506253, -0.836643, 0.209134,
		33.814217, 34.920086, 39.908787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236443, 35.649021, 39.847088>,  <33.459843, 35.505733, 39.762394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236443, 35.649021, 39.847088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.155323, 35.273849, 39.734547>,  <34.106651, 35.048748, 39.667023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.155323, 35.273849, 39.734547>,  <34.236443, 35.649021, 39.847088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155323, 35.273849, 39.734547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504729, 0.146086, -0.850827,
		0.839118, -0.314555, 0.443774,
		-0.202803, -0.937931, -0.281349,
		34.094482, 34.992470, 39.650143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897621, 35.363586, 39.556183>,  <34.236443, 35.649021, 39.847088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897621, 35.363586, 39.556183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581726, 35.156269, 39.424919>,  <34.392189, 35.031879, 39.346161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581726, 35.156269, 39.424919>,  <34.897621, 35.363586, 39.556183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581726, 35.156269, 39.424919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491502, -0.214510, -0.844044,
		0.367072, -0.827862, 0.424150,
		-0.789736, -0.518296, -0.328155,
		34.344807, 35.000782, 39.326473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132244, 34.656303, 39.480686>,  <34.897621, 35.363586, 39.556183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132244, 34.656303, 39.480686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.821575, 34.724991, 39.238266>,  <34.635174, 34.766201, 39.092812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.821575, 34.724991, 39.238266>,  <35.132244, 34.656303, 39.480686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821575, 34.724991, 39.238266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582329, -0.171102, -0.794743,
		-0.240167, -0.970174, 0.032895,
		-0.776668, 0.171715, -0.606054,
		34.588573, 34.776505, 39.056450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061005, 34.125237, 39.082428>,  <35.132244, 34.656303, 39.480686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061005, 34.125237, 39.082428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854897, 34.390007, 38.864674>,  <34.731232, 34.548870, 38.734020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854897, 34.390007, 38.864674>,  <35.061005, 34.125237, 39.082428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854897, 34.390007, 38.864674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473035, -0.310021, -0.824697,
		-0.714657, -0.682454, -0.153369,
		-0.515270, 0.661925, -0.544383,
		34.700317, 34.588585, 38.701359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888367, 33.758495, 38.574711>,  <35.061005, 34.125237, 39.082428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888367, 33.758495, 38.574711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854481, 34.130898, 38.432693>,  <34.834148, 34.354340, 38.347485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854481, 34.130898, 38.432693>,  <34.888367, 33.758495, 38.574711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854481, 34.130898, 38.432693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544982, -0.255008, -0.798728,
		-0.834158, -0.261150, -0.485780,
		-0.084710, 0.931006, -0.355039,
		34.829067, 34.410198, 38.326183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900623, 33.537376, 37.849564>,  <34.888367, 33.758495, 38.574711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900623, 33.537376, 37.849564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.930988, 33.936096, 37.839539>,  <34.949207, 34.175327, 37.833523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.930988, 33.936096, 37.839539>,  <34.900623, 33.537376, 37.849564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930988, 33.936096, 37.839539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522371, -0.061165, -0.850522,
		-0.849333, 0.051475, -0.525342,
		0.075913, 0.996799, -0.025060,
		34.953762, 34.235138, 37.832020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571484, 33.758194, 37.189781>,  <34.900623, 33.537376, 37.849564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571484, 33.758194, 37.189781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.795876, 34.065334, 37.313526>,  <34.930511, 34.249619, 37.387775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.795876, 34.065334, 37.313526>,  <34.571484, 33.758194, 37.189781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795876, 34.065334, 37.313526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349551, 0.119044, -0.929324,
		-0.750410, 0.629471, -0.201622,
		0.560980, 0.767851, 0.309364,
		34.964169, 34.295689, 37.406334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564232, 34.297710, 36.649536>,  <34.571484, 33.758194, 37.189781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564232, 34.297710, 36.649536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887390, 34.388874, 36.866928>,  <35.081284, 34.443573, 36.997364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887390, 34.388874, 36.866928>,  <34.564232, 34.297710, 36.649536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887390, 34.388874, 36.866928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473601, 0.297748, -0.828884,
		-0.350726, 0.927041, 0.132613,
		0.807894, 0.227905, 0.543476,
		35.129757, 34.457245, 37.029972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742134, 34.938705, 36.404018>,  <34.564232, 34.297710, 36.649536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742134, 34.938705, 36.404018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066856, 34.799248, 36.591389>,  <35.261688, 34.715572, 36.703812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066856, 34.799248, 36.591389>,  <34.742134, 34.938705, 36.404018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066856, 34.799248, 36.591389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578073, 0.366523, -0.729035,
		0.082483, 0.862619, 0.499085,
		0.811806, -0.348640, 0.468425,
		35.310398, 34.694656, 36.731915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205498, 35.471748, 36.283844>,  <34.742134, 34.938705, 36.404018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205498, 35.471748, 36.283844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.394573, 35.127491, 36.359589>,  <35.508018, 34.920937, 36.405033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.394573, 35.127491, 36.359589>,  <35.205498, 35.471748, 36.283844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394573, 35.127491, 36.359589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615386, 0.168576, -0.769988,
		0.630763, 0.480495, 0.609313,
		0.472691, -0.860643, 0.189358,
		35.536381, 34.869297, 36.416397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972469, 35.607220, 36.297203>,  <35.205498, 35.471748, 36.283844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972469, 35.607220, 36.297203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944214, 35.214222, 36.228260>,  <35.927261, 34.978424, 36.186893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944214, 35.214222, 36.228260>,  <35.972469, 35.607220, 36.297203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944214, 35.214222, 36.228260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525231, 0.110260, -0.843786,
		0.848023, -0.150133, 0.508249,
		-0.070640, -0.982498, -0.172357,
		35.923023, 34.919472, 36.176552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616493, 35.379753, 36.035709>,  <35.972469, 35.607220, 36.297203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616493, 35.379753, 36.035709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374092, 35.088165, 35.908363>,  <36.228653, 34.913212, 35.831955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374092, 35.088165, 35.908363>,  <36.616493, 35.379753, 36.035709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374092, 35.088165, 35.908363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550124, -0.094980, -0.829664,
		0.574565, -0.677920, 0.458584,
		-0.606002, -0.728974, -0.318368,
		36.192291, 34.869473, 35.812855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178631, 34.992790, 35.763329>,  <36.616493, 35.379753, 36.035709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178631, 34.992790, 35.763329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827698, 34.870831, 35.615093>,  <36.617138, 34.797657, 35.526154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827698, 34.870831, 35.615093>,  <37.178631, 34.992790, 35.763329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827698, 34.870831, 35.615093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458111, -0.302108, -0.835981,
		0.142930, -0.903200, 0.404724,
		-0.877328, -0.304896, -0.370586,
		36.564499, 34.779362, 35.503918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419300, 34.347939, 36.218174>,  <37.178631, 34.992790, 35.763329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419300, 34.347939, 36.218174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.754154, 34.152588, 36.316715>,  <37.955067, 34.035378, 36.375839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.754154, 34.152588, 36.316715>,  <37.419300, 34.347939, 36.218174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754154, 34.152588, 36.316715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386698, -0.209864, 0.898010,
		-0.386863, -0.847023, -0.364538,
		0.837139, -0.488373, 0.246354,
		38.005295, 34.006077, 36.390621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235409, 33.683273, 36.579418>,  <37.419300, 34.347939, 36.218174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235409, 33.683273, 36.579418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612778, 33.748882, 36.694691>,  <37.839199, 33.788246, 36.763855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612778, 33.748882, 36.694691>,  <37.235409, 33.683273, 36.579418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612778, 33.748882, 36.694691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275699, -0.094849, 0.956553,
		0.184227, -0.981887, -0.044263,
		0.943425, 0.164020, 0.288179,
		37.895805, 33.798088, 36.781143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455021, 33.115616, 37.125549>,  <37.235409, 33.683273, 36.579418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455021, 33.115616, 37.125549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703011, 33.425842, 37.173100>,  <37.851803, 33.611977, 37.201630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703011, 33.425842, 37.173100>,  <37.455021, 33.115616, 37.125549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703011, 33.425842, 37.173100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111753, -0.062681, 0.991757,
		0.776625, -0.628147, 0.047811,
		0.619972, 0.775566, 0.118876,
		37.889004, 33.658512, 37.208763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875057, 32.926163, 37.660416>,  <37.455021, 33.115616, 37.125549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875057, 32.926163, 37.660416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890240, 33.325741, 37.650043>,  <37.899349, 33.565487, 37.643822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890240, 33.325741, 37.650043>,  <37.875057, 32.926163, 37.660416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890240, 33.325741, 37.650043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009667, 0.026311, 0.999607,
		0.999233, -0.037691, 0.010655,
		0.037956, 0.998943, -0.025927,
		37.901627, 33.625423, 37.642265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442009, 33.183693, 38.123447>,  <37.875057, 32.926163, 37.660416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442009, 33.183693, 38.123447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182388, 33.486980, 38.098694>,  <38.026615, 33.668953, 38.083843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182388, 33.486980, 38.098694>,  <38.442009, 33.183693, 38.123447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182388, 33.486980, 38.098694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093118, 0.159913, 0.982729,
		0.755022, 0.632082, -0.174396,
		-0.649054, 0.758222, -0.061880,
		37.987671, 33.714447, 38.080132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572624, 33.571922, 38.654980>,  <38.442009, 33.183693, 38.123447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572624, 33.571922, 38.654980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228210, 33.745575, 38.549038>,  <38.021561, 33.849766, 38.485474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228210, 33.745575, 38.549038>,  <38.572624, 33.571922, 38.654980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228210, 33.745575, 38.549038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097643, 0.369991, 0.923890,
		0.499085, 0.821363, -0.276185,
		-0.861034, 0.434132, -0.264857,
		37.969902, 33.875816, 38.469582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627277, 34.284801, 38.955338>,  <38.572624, 33.571922, 38.654980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627277, 34.284801, 38.955338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241478, 34.220879, 38.871231>,  <38.009998, 34.182526, 38.820766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241478, 34.220879, 38.871231>,  <38.627277, 34.284801, 38.955338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241478, 34.220879, 38.871231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246572, 0.259673, 0.933687,
		-0.094615, 0.952381, -0.289858,
		-0.964495, -0.159811, -0.210262,
		37.952129, 34.172935, 38.808151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245865, 34.893917, 39.200466>,  <38.627277, 34.284801, 38.955338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245865, 34.893917, 39.200466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.984646, 34.592575, 39.169540>,  <37.827915, 34.411770, 39.150986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.984646, 34.592575, 39.169540>,  <38.245865, 34.893917, 39.200466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984646, 34.592575, 39.169540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445519, 0.299622, 0.843646,
		-0.612402, 0.585389, -0.531303,
		-0.653051, -0.753357, -0.077313,
		37.788731, 34.366570, 39.146347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585621, 35.247105, 39.408573>,  <38.245865, 34.893917, 39.200466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585621, 35.247105, 39.408573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523518, 34.852596, 39.431084>,  <37.486256, 34.615891, 39.444592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523518, 34.852596, 39.431084>,  <37.585621, 35.247105, 39.408573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523518, 34.852596, 39.431084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388942, 0.113393, 0.914257,
		-0.908086, 0.120056, -0.401207,
		-0.155256, -0.986270, 0.056275,
		37.476940, 34.556717, 39.447968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828957, 35.137444, 39.672447>,  <37.585621, 35.247105, 39.408573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828957, 35.137444, 39.672447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032761, 34.803070, 39.754055>,  <37.155041, 34.602448, 39.803020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032761, 34.803070, 39.754055>,  <36.828957, 35.137444, 39.672447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032761, 34.803070, 39.754055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452206, -0.058406, 0.889999,
		-0.732061, -0.545720, -0.407770,
		0.509506, -0.835930, 0.204021,
		37.185612, 34.552292, 39.815262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271591, 34.653084, 39.867294>,  <36.828957, 35.137444, 39.672447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271591, 34.653084, 39.867294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.624443, 34.534630, 40.013805>,  <36.836155, 34.463558, 40.101711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.624443, 34.534630, 40.013805>,  <36.271591, 34.653084, 39.867294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624443, 34.534630, 40.013805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419779, -0.141586, 0.896515,
		-0.213630, -0.944594, -0.249208,
		0.882127, -0.296134, 0.366274,
		36.889080, 34.445789, 40.123688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130554, 34.087425, 40.135006>,  <36.271591, 34.653084, 39.867294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130554, 34.087425, 40.135006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464264, 34.208599, 40.319275>,  <36.664490, 34.281303, 40.429836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464264, 34.208599, 40.319275>,  <36.130554, 34.087425, 40.135006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464264, 34.208599, 40.319275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416599, -0.200947, 0.886604,
		0.361154, -0.931585, -0.041442,
		0.834274, 0.302936, 0.460670,
		36.714546, 34.299480, 40.457478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377338, 33.573780, 40.685581>,  <36.130554, 34.087425, 40.135006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377338, 33.573780, 40.685581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526646, 33.934216, 40.773869>,  <36.616230, 34.150475, 40.826839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526646, 33.934216, 40.773869>,  <36.377338, 33.573780, 40.685581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526646, 33.934216, 40.773869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193728, -0.156957, 0.968418,
		0.907272, -0.404236, 0.115979,
		0.373266, 0.901087, 0.220714,
		36.638626, 34.204540, 40.840084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851494, 33.422935, 41.299412>,  <36.377338, 33.573780, 40.685581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851494, 33.422935, 41.299412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.812775, 33.820995, 41.292454>,  <36.789543, 34.059834, 41.288280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.812775, 33.820995, 41.292454>,  <36.851494, 33.422935, 41.299412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812775, 33.820995, 41.292454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095259, 0.008132, 0.995419,
		0.990735, 0.098016, 0.094010,
		-0.096803, 0.995152, -0.017394,
		36.783733, 34.119541, 41.287235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359013, 33.632854, 41.747997>,  <36.851494, 33.422935, 41.299412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359013, 33.632854, 41.747997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063290, 33.902012, 41.737968>,  <36.885857, 34.063507, 41.731949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063290, 33.902012, 41.737968>,  <37.359013, 33.632854, 41.747997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063290, 33.902012, 41.737968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013843, 0.022043, 0.999661,
		0.673221, 0.739408, -0.006982,
		-0.739312, 0.672896, -0.025075,
		36.841496, 34.103882, 41.730446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513805, 34.118614, 42.311390>,  <37.359013, 33.632854, 41.747997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513805, 34.118614, 42.311390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136395, 34.189255, 42.199265>,  <36.909950, 34.231640, 42.131989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136395, 34.189255, 42.199265>,  <37.513805, 34.118614, 42.311390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136395, 34.189255, 42.199265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269149, 0.084769, 0.959361,
		0.193189, 0.980625, -0.032449,
		-0.943524, 0.176604, -0.280310,
		36.853336, 34.242237, 42.115170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237663, 34.588169, 42.855549>,  <37.513805, 34.118614, 42.311390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237663, 34.588169, 42.855549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965057, 34.386406, 42.643471>,  <36.801495, 34.265350, 42.516224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965057, 34.386406, 42.643471>,  <37.237663, 34.588169, 42.855549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965057, 34.386406, 42.643471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536255, -0.148772, 0.830841,
		-0.497958, 0.850555, -0.169099,
		-0.681519, -0.504405, -0.530197,
		36.760601, 34.235085, 42.484413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573284, 34.839035, 43.030800>,  <37.237663, 34.588169, 42.855549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573284, 34.839035, 43.030800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459896, 34.484795, 42.883636>,  <36.391865, 34.272251, 42.795338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459896, 34.484795, 42.883636>,  <36.573284, 34.839035, 43.030800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459896, 34.484795, 42.883636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492551, -0.194724, 0.848219,
		-0.822824, 0.421658, -0.381005,
		-0.283468, -0.885600, -0.367912,
		36.374855, 34.219116, 42.773262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.840668, 34.750347, 43.161270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.981796, 34.377308, 43.130863>,  <36.066475, 34.153484, 43.112617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.981796, 34.377308, 43.130863>,  <35.840668, 34.750347, 43.161270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981796, 34.377308, 43.130863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381370, -0.217521, 0.898466,
		-0.854443, -0.288007, -0.432411,
		0.352823, -0.932597, -0.076022,
		36.087643, 34.097530, 43.108055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336590, 34.340462, 43.313820>,  <35.840668, 34.750347, 43.161270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336590, 34.340462, 43.313820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644714, 34.091587, 43.369678>,  <35.829590, 33.942261, 43.403194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644714, 34.091587, 43.369678>,  <35.336590, 34.340462, 43.313820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644714, 34.091587, 43.369678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447453, -0.371387, 0.813546,
		-0.454317, -0.689169, -0.564484,
		0.770313, -0.622188, 0.139643,
		35.875809, 33.904930, 43.411572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096378, 33.635471, 43.356411>,  <35.336590, 34.340462, 43.313820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096378, 33.635471, 43.356411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.456894, 33.618183, 43.528835>,  <35.673203, 33.607811, 43.632290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.456894, 33.618183, 43.528835>,  <35.096378, 33.635471, 43.356411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456894, 33.618183, 43.528835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412974, -0.386364, 0.824727,
		0.130904, -0.921333, -0.366073,
		0.901286, -0.043219, 0.431063,
		35.727280, 33.605217, 43.658154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969887, 32.947884, 43.789780>,  <35.096378, 33.635471, 43.356411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969887, 32.947884, 43.789780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295994, 33.136982, 43.923557>,  <35.491657, 33.250443, 44.003822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295994, 33.136982, 43.923557>,  <34.969887, 32.947884, 43.789780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295994, 33.136982, 43.923557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217616, -0.285092, 0.933470,
		0.536645, -0.833805, -0.129547,
		0.815264, 0.472750, 0.334442,
		35.540573, 33.278809, 44.023891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341652, 32.459145, 44.229797>,  <34.969887, 32.947884, 43.789780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341652, 32.459145, 44.229797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451767, 32.826195, 44.344467>,  <35.517834, 33.046425, 44.413269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451767, 32.826195, 44.344467>,  <35.341652, 32.459145, 44.229797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451767, 32.826195, 44.344467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334400, -0.188180, 0.923453,
		0.901330, -0.350076, 0.255051,
		0.275283, 0.917624, 0.286678,
		35.534351, 33.101482, 44.430470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837883, 32.414364, 44.780689>,  <35.341652, 32.459145, 44.229797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837883, 32.414364, 44.780689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677685, 32.779125, 44.816525>,  <35.581566, 32.997982, 44.838028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677685, 32.779125, 44.816525>,  <35.837883, 32.414364, 44.780689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677685, 32.779125, 44.816525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350781, -0.242913, 0.904404,
		0.846495, 0.330785, 0.417166,
		-0.400498, 0.911907, 0.089592,
		35.557537, 33.052696, 44.843403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996948, 32.594685, 45.535088>,  <35.837883, 32.414364, 44.780689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996948, 32.594685, 45.535088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729527, 32.858952, 45.398525>,  <35.569073, 33.017509, 45.316589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729527, 32.858952, 45.398525>,  <35.996948, 32.594685, 45.535088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729527, 32.858952, 45.398525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566370, -0.154832, 0.809476,
		0.481932, 0.734540, 0.477695,
		-0.668555, 0.660665, -0.341403,
		35.528961, 33.057152, 45.296104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911953, 32.936291, 46.142326>,  <35.996948, 32.594685, 45.535088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911953, 32.936291, 46.142326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604794, 33.026253, 45.902409>,  <35.420498, 33.080231, 45.758457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604794, 33.026253, 45.902409>,  <35.911953, 32.936291, 46.142326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604794, 33.026253, 45.902409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618711, -0.017848, 0.785415,
		0.165935, 0.974218, 0.152854,
		-0.767894, 0.224900, -0.599798,
		35.374424, 33.093723, 45.722469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644520, 33.584988, 46.302902>,  <35.911953, 32.936291, 46.142326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644520, 33.584988, 46.302902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.359356, 33.355335, 46.141842>,  <35.188259, 33.217545, 46.045204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.359356, 33.355335, 46.141842>,  <35.644520, 33.584988, 46.302902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359356, 33.355335, 46.141842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425743, -0.101903, 0.899088,
		-0.557229, 0.812395, -0.171785,
		-0.712909, -0.574134, -0.402655,
		35.145485, 33.183094, 46.021046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021545, 33.856113, 46.582146>,  <35.644520, 33.584988, 46.302902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021545, 33.856113, 46.582146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949318, 33.478031, 46.473347>,  <34.905983, 33.251183, 46.408070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949318, 33.478031, 46.473347>,  <35.021545, 33.856113, 46.582146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949318, 33.478031, 46.473347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452274, -0.165778, 0.876337,
		-0.873410, 0.281252, -0.397558,
		-0.180565, -0.945206, -0.271995,
		34.895149, 33.194469, 46.391747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306999, 33.710037, 46.789932>,  <35.021545, 33.856113, 46.582146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306999, 33.710037, 46.789932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446007, 33.337879, 46.743301>,  <34.529411, 33.114582, 46.715321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446007, 33.337879, 46.743301>,  <34.306999, 33.710037, 46.789932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446007, 33.337879, 46.743301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465532, -0.279120, 0.839864,
		-0.813947, -0.237597, -0.530130,
		0.347519, -0.930398, -0.116580,
		34.550262, 33.058762, 46.708328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842060, 33.368355, 47.116940>,  <34.306999, 33.710037, 46.789932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842060, 33.368355, 47.116940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095676, 33.061939, 47.074650>,  <34.247845, 32.878090, 47.049278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095676, 33.061939, 47.074650>,  <33.842060, 33.368355, 47.116940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095676, 33.061939, 47.074650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380150, -0.427817, 0.820036,
		-0.673408, -0.479746, -0.562463,
		0.634040, -0.766039, -0.105720,
		34.285889, 32.832127, 47.042934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430531, 32.751099, 47.248447>,  <33.842060, 33.368355, 47.116940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430531, 32.751099, 47.248447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.813126, 32.649605, 47.306068>,  <34.042683, 32.588707, 47.340641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.813126, 32.649605, 47.306068>,  <33.430531, 32.751099, 47.248447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813126, 32.649605, 47.306068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265296, -0.550782, 0.791364,
		-0.121459, -0.795145, -0.594131,
		0.956486, -0.253739, 0.144051,
		34.100071, 32.573483, 47.349285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372478, 32.141048, 47.482582>,  <33.430531, 32.751099, 47.248447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372478, 32.141048, 47.482582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.736076, 32.259674, 47.599739>,  <33.954235, 32.330849, 47.670033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.736076, 32.259674, 47.599739>,  <33.372478, 32.141048, 47.482582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736076, 32.259674, 47.599739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059084, -0.603928, 0.794846,
		0.412609, -0.739812, -0.531443,
		0.908990, 0.296560, 0.292897,
		34.008774, 32.348640, 47.687607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652767, 31.477266, 47.812378>,  <33.372478, 32.141048, 47.482582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652767, 31.477266, 47.812378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901722, 31.768171, 47.928116>,  <34.051094, 31.942715, 47.997559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901722, 31.768171, 47.928116>,  <33.652767, 31.477266, 47.812378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901722, 31.768171, 47.928116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235800, -0.526718, 0.816680,
		0.746347, -0.440062, -0.499311,
		0.622386, 0.727264, 0.289348,
		34.088436, 31.986351, 48.014919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138317, 31.151161, 47.978703>,  <33.652767, 31.477266, 47.812378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138317, 31.151161, 47.978703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.223400, 31.500383, 48.154217>,  <34.274448, 31.709917, 48.259525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.223400, 31.500383, 48.154217>,  <34.138317, 31.151161, 47.978703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223400, 31.500383, 48.154217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323710, -0.486662, 0.811401,
		0.921937, -0.030554, -0.386134,
		0.212708, 0.873055, 0.438781,
		34.287212, 31.762300, 48.285851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854961, 31.040873, 48.258728>,  <34.138317, 31.151161, 47.978703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854961, 31.040873, 48.258728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.614483, 31.313049, 48.426327>,  <34.470196, 31.476355, 48.526886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.614483, 31.313049, 48.426327>,  <34.854961, 31.040873, 48.258728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614483, 31.313049, 48.426327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052799, -0.557017, 0.828821,
		0.797354, 0.476163, 0.370804,
		-0.601198, 0.680442, 0.418999,
		34.434124, 31.517181, 48.552025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151058, 31.060616, 48.892242>,  <34.854961, 31.040873, 48.258728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151058, 31.060616, 48.892242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794846, 31.234653, 48.945381>,  <34.581120, 31.339075, 48.977264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794846, 31.234653, 48.945381>,  <35.151058, 31.060616, 48.892242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794846, 31.234653, 48.945381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074740, -0.427976, 0.900695,
		0.448740, 0.792168, 0.413644,
		-0.890532, 0.435093, 0.132843,
		34.527687, 31.365181, 48.985233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117435, 31.293047, 49.629208>,  <35.151058, 31.060616, 48.892242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117435, 31.293047, 49.629208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744656, 31.217386, 49.505470>,  <34.520988, 31.171989, 49.431229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744656, 31.217386, 49.505470>,  <35.117435, 31.293047, 49.629208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744656, 31.217386, 49.505470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180214, -0.498680, 0.847845,
		-0.314637, 0.845896, 0.430655,
		-0.931948, -0.189153, -0.309346,
		34.465073, 31.160641, 49.412666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734028, 31.398373, 50.233730>,  <35.117435, 31.293047, 49.629208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734028, 31.398373, 50.233730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452820, 31.213732, 50.017326>,  <34.284096, 31.102947, 49.887486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452820, 31.213732, 50.017326>,  <34.734028, 31.398373, 50.233730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452820, 31.213732, 50.017326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469208, -0.270604, 0.840605,
		-0.534425, 0.844805, -0.026350,
		-0.703017, -0.461604, -0.541007,
		34.241913, 31.075251, 49.855022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143646, 31.452126, 50.682610>,  <34.734028, 31.398373, 50.233730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143646, 31.452126, 50.682610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.068901, 31.183315, 50.395985>,  <34.024052, 31.022030, 50.224010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.068901, 31.183315, 50.395985>,  <34.143646, 31.452126, 50.682610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068901, 31.183315, 50.395985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748556, -0.374964, 0.546868,
		-0.636195, 0.638580, -0.432981,
		-0.186867, -0.672025, -0.716563,
		34.012840, 30.981709, 50.181015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416416, 31.547869, 50.465572>,  <34.143646, 31.452126, 50.682610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416416, 31.547869, 50.465572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551567, 31.174454, 50.417660>,  <33.632656, 30.950405, 50.388912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551567, 31.174454, 50.417660>,  <33.416416, 31.547869, 50.465572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551567, 31.174454, 50.417660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659561, -0.325638, 0.677450,
		-0.671431, -0.149888, -0.725750,
		0.337874, -0.933538, -0.119783,
		33.652927, 30.894392, 50.381725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980774, 31.050838, 50.066612>,  <33.416416, 31.547869, 50.465572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980774, 31.050838, 50.066612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.200153, 30.853201, 50.336449>,  <33.331779, 30.734619, 50.498352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.200153, 30.853201, 50.336449>,  <32.980774, 31.050838, 50.066612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200153, 30.853201, 50.336449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807393, -0.103043, 0.580946,
		-0.217532, -0.863278, -0.455445,
		0.548449, -0.494098, 0.674590,
		33.364689, 30.704973, 50.538826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346046, 30.677065, 50.232433>,  <32.980774, 31.050838, 50.066612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346046, 30.677065, 50.232433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.406544, 30.733727, 50.623753>,  <32.442841, 30.767723, 50.858543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.406544, 30.733727, 50.623753>,  <32.346046, 30.677065, 50.232433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406544, 30.733727, 50.623753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108007, -0.981386, 0.158797,
		0.982578, -0.129680, -0.133129,
		0.151244, 0.141652, 0.978295,
		32.451916, 30.776222, 50.917240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698198, 31.008501, 50.063480>,  <32.346046, 30.677065, 50.232433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698198, 31.008501, 50.063480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.371450, 30.796198, 49.973129>,  <31.175402, 30.668816, 49.918919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.371450, 30.796198, 49.973129>,  <31.698198, 31.008501, 50.063480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371450, 30.796198, 49.973129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002695, 0.395099, -0.918635,
		0.576817, -0.749795, -0.324174,
		-0.816869, -0.530758, -0.225879,
		31.126390, 30.636971, 49.905365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846397, 30.807480, 49.323650>,  <31.698198, 31.008501, 50.063480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846397, 30.807480, 49.323650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451284, 30.808096, 49.385986>,  <31.214216, 30.808466, 49.423389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451284, 30.808096, 49.385986>,  <31.846397, 30.807480, 49.323650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451284, 30.808096, 49.385986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147946, 0.305084, -0.940763,
		-0.048995, -0.952324, -0.301128,
		-0.987781, 0.001542, 0.155840,
		31.154949, 30.808559, 49.432739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571337, 30.415039, 48.797573>,  <31.846397, 30.807480, 49.323650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571337, 30.415039, 48.797573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274014, 30.649773, 48.926022>,  <31.095619, 30.790613, 49.003090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274014, 30.649773, 48.926022>,  <31.571337, 30.415039, 48.797573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274014, 30.649773, 48.926022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013206, 0.467072, -0.884121,
		-0.668820, -0.661414, -0.339428,
		-0.743307, 0.586835, 0.321122,
		31.051022, 30.825823, 49.022358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974485, 30.243591, 48.376896>,  <31.571337, 30.415039, 48.797573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974485, 30.243591, 48.376896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936354, 30.608547, 48.536121>,  <30.913475, 30.827520, 48.631657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936354, 30.608547, 48.536121>,  <30.974485, 30.243591, 48.376896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936354, 30.608547, 48.536121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003374, 0.400177, -0.916432,
		-0.995440, -0.086021, -0.041228,
		-0.095331, 0.912392, 0.398062,
		30.907755, 30.882265, 48.655540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513889, 30.556908, 47.949547>,  <30.974485, 30.243591, 48.376896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513889, 30.556908, 47.949547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673729, 30.864817, 48.148655>,  <30.769632, 31.049562, 48.268120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673729, 30.864817, 48.148655>,  <30.513889, 30.556908, 47.949547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673729, 30.864817, 48.148655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178991, 0.467036, -0.865933,
		-0.899046, 0.435121, 0.048844,
		0.399598, 0.769771, 0.497770,
		30.793608, 31.095747, 48.297985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173471, 31.167410, 47.676155>,  <30.513889, 30.556908, 47.949547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173471, 31.167410, 47.676155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.517170, 31.294897, 47.836212>,  <30.723389, 31.371389, 47.932247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.517170, 31.294897, 47.836212>,  <30.173471, 31.167410, 47.676155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517170, 31.294897, 47.836212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316130, 0.284140, -0.905166,
		-0.402189, 0.904258, 0.143391,
		0.859247, 0.318718, 0.400141,
		30.774944, 31.390512, 47.956253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351870, 31.812710, 47.324116>,  <30.173471, 31.167410, 47.676155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351870, 31.812710, 47.324116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.697491, 31.689383, 47.483288>,  <30.904863, 31.615385, 47.578793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.697491, 31.689383, 47.483288>,  <30.351870, 31.812710, 47.324116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697491, 31.689383, 47.483288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482060, 0.279063, -0.830507,
		0.145015, 0.909430, 0.389754,
		0.864054, -0.308320, 0.397931,
		30.956707, 31.596886, 47.602669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829319, 32.353279, 47.225094>,  <30.351870, 31.812710, 47.324116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829319, 32.353279, 47.225094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.059092, 32.033081, 47.293484>,  <31.196955, 31.840961, 47.334518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.059092, 32.033081, 47.293484>,  <30.829319, 32.353279, 47.225094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059092, 32.033081, 47.293484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488683, 0.167808, -0.856171,
		0.656670, 0.575366, 0.487583,
		0.574433, -0.800496, 0.170977,
		31.231421, 31.792933, 47.344776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554905, 32.580364, 47.204430>,  <30.829319, 32.353279, 47.225094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554905, 32.580364, 47.204430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.601448, 32.186535, 47.152157>,  <31.629374, 31.950237, 47.120792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.601448, 32.186535, 47.152157>,  <31.554905, 32.580364, 47.204430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601448, 32.186535, 47.152157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375336, 0.165407, -0.912011,
		0.919556, 0.057072, 0.388792,
		0.116360, -0.984573, -0.130680,
		31.636356, 31.891163, 47.112953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207233, 32.503468, 47.078175>,  <31.554905, 32.580364, 47.204430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207233, 32.503468, 47.078175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.061615, 32.153244, 46.951138>,  <31.974243, 31.943110, 46.874916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.061615, 32.153244, 46.951138>,  <32.207233, 32.503468, 47.078175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061615, 32.153244, 46.951138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514934, 0.094923, -0.851958,
		0.776087, -0.473693, 0.416298,
		-0.364050, -0.875559, -0.317589,
		31.952400, 31.890575, 46.855862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820538, 32.237457, 46.739998>,  <32.207233, 32.503468, 47.078175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820538, 32.237457, 46.739998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.481148, 32.090172, 46.587944>,  <32.277515, 32.001801, 46.496712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.481148, 32.090172, 46.587944>,  <32.820538, 32.237457, 46.739998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481148, 32.090172, 46.587944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296130, 0.264996, -0.917652,
		0.438630, -0.891175, -0.115803,
		-0.848475, -0.368217, -0.380139,
		32.226604, 31.979708, 46.473904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043831, 31.771072, 46.251911>,  <32.820538, 32.237457, 46.739998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043831, 31.771072, 46.251911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.669460, 31.876968, 46.158997>,  <32.444839, 31.940506, 46.103249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.669460, 31.876968, 46.158997>,  <33.043831, 31.771072, 46.251911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669460, 31.876968, 46.158997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318431, 0.354281, -0.879254,
		-0.150482, -0.896882, -0.415882,
		-0.935926, 0.264742, -0.232282,
		32.388683, 31.956390, 46.089314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770203, 31.515301, 45.504177>,  <33.043831, 31.771072, 46.251911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770203, 31.515301, 45.504177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541908, 31.830877, 45.595242>,  <32.404934, 32.020226, 45.649879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541908, 31.830877, 45.595242>,  <32.770203, 31.515301, 45.504177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541908, 31.830877, 45.595242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309185, 0.463328, -0.830501,
		-0.760702, -0.403604, -0.508366,
		-0.570734, 0.788943, 0.227666,
		32.370689, 32.067558, 45.663540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604397, 31.722399, 44.866871>,  <32.770203, 31.515301, 45.504177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604397, 31.722399, 44.866871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502388, 32.038101, 45.090313>,  <32.441185, 32.227524, 45.224377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502388, 32.038101, 45.090313>,  <32.604397, 31.722399, 44.866871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502388, 32.038101, 45.090313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230085, 0.610644, -0.757743,
		-0.939162, -0.064713, -0.337322,
		-0.255020, 0.789257, 0.558604,
		32.425880, 32.274879, 45.257893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033924, 32.115089, 44.558689>,  <32.604397, 31.722399, 44.866871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033924, 32.115089, 44.558689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.221748, 32.377125, 44.795460>,  <32.334442, 32.534348, 44.937523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.221748, 32.377125, 44.795460>,  <32.033924, 32.115089, 44.558689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221748, 32.377125, 44.795460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218738, 0.563211, -0.796835,
		-0.855377, 0.503636, 0.121166,
		0.469557, 0.655091, 0.591922,
		32.362614, 32.573650, 44.973038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906614, 32.638428, 44.302128>,  <32.033924, 32.115089, 44.558689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906614, 32.638428, 44.302128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192539, 32.795376, 44.533676>,  <32.364094, 32.889545, 44.672604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192539, 32.795376, 44.533676>,  <31.906614, 32.638428, 44.302128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192539, 32.795376, 44.533676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264758, 0.614309, -0.743322,
		-0.647263, 0.684595, 0.335232,
		0.714811, 0.392369, 0.578871,
		32.406982, 32.913086, 44.707336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922846, 33.450397, 44.428860>,  <31.906614, 32.638428, 44.302128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922846, 33.450397, 44.428860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.303074, 33.330902, 44.462730>,  <32.531212, 33.259205, 44.483055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.303074, 33.330902, 44.462730>,  <31.922846, 33.450397, 44.428860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303074, 33.330902, 44.462730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252184, 0.583646, -0.771855,
		0.181162, 0.755057, 0.630134,
		0.950570, -0.298740, 0.084679,
		32.588245, 33.241280, 44.488132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292721, 34.008556, 44.369686>,  <31.922846, 33.450397, 44.428860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292721, 34.008556, 44.369686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579411, 33.741829, 44.288044>,  <32.751427, 33.581795, 44.239059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579411, 33.741829, 44.288044>,  <32.292721, 34.008556, 44.369686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579411, 33.741829, 44.288044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329202, 0.581552, -0.743924,
		0.614757, 0.465999, 0.636331,
		0.716728, -0.666815, -0.204105,
		32.794430, 33.541786, 44.226814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101433, 34.316269, 44.501694>,  <32.292721, 34.008556, 44.369686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101433, 34.316269, 44.501694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086994, 34.020256, 44.233051>,  <33.078331, 33.842648, 44.071865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086994, 34.020256, 44.233051>,  <33.101433, 34.316269, 44.501694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086994, 34.020256, 44.233051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473365, 0.579203, -0.663664,
		0.880126, -0.341871, 0.329396,
		-0.036100, -0.740032, -0.671602,
		33.076164, 33.798248, 44.031570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592533, 34.551846, 43.995384>,  <33.101433, 34.316269, 44.501694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592533, 34.551846, 43.995384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.415707, 34.257256, 43.790569>,  <33.309612, 34.080502, 43.667679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.415707, 34.257256, 43.790569>,  <33.592533, 34.551846, 43.995384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415707, 34.257256, 43.790569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091140, 0.531014, -0.842448,
		0.892340, -0.419085, -0.167621,
		-0.442066, -0.736473, -0.512040,
		33.283089, 34.036312, 43.636959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.316479, 28.557184, 29.365906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.021271, 28.497948, 29.629236>,  <39.844147, 28.462406, 29.787235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.021271, 28.497948, 29.629236>,  <40.316479, 28.557184, 29.365906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021271, 28.497948, 29.629236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440106, 0.633903, 0.635982,
		-0.511499, 0.759102, -0.402658,
		-0.738022, -0.148092, 0.658326,
		39.799866, 28.453520, 29.826735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102634, 29.310650, 29.536587>,  <40.316479, 28.557184, 29.365906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102634, 29.310650, 29.536587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.972626, 29.066607, 29.825621>,  <39.894619, 28.920181, 29.999041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.972626, 29.066607, 29.825621>,  <40.102634, 29.310650, 29.536587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972626, 29.066607, 29.825621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460382, 0.565342, 0.684424,
		-0.826080, 0.555119, 0.097134,
		-0.325023, -0.610108, 0.722584,
		39.875118, 28.883574, 30.042397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796558, 29.799416, 30.083981>,  <40.102634, 29.310650, 29.536587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796558, 29.799416, 30.083981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.916389, 29.451487, 30.240778>,  <39.988289, 29.242729, 30.334856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.916389, 29.451487, 30.240778>,  <39.796558, 29.799416, 30.083981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916389, 29.451487, 30.240778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376724, 0.485323, 0.789013,
		-0.876546, -0.088696, 0.473075,
		0.299577, -0.869825, 0.391994,
		40.006264, 29.190538, 30.358376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759789, 29.901377, 30.792393>,  <39.796558, 29.799416, 30.083981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759789, 29.901377, 30.792393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998695, 29.581465, 30.768307>,  <40.142040, 29.389517, 30.753855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998695, 29.581465, 30.768307>,  <39.759789, 29.901377, 30.792393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998695, 29.581465, 30.768307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548624, 0.352629, 0.758067,
		-0.585055, -0.485800, 0.649391,
		0.597263, -0.799782, -0.060214,
		40.177876, 29.341530, 30.750242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848103, 29.514803, 31.488327>,  <39.759789, 29.901377, 30.792393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848103, 29.514803, 31.488327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.166206, 29.396551, 31.276604>,  <40.357067, 29.325600, 31.149570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.166206, 29.396551, 31.276604>,  <39.848103, 29.514803, 31.488327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166206, 29.396551, 31.276604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605399, 0.340466, 0.719427,
		-0.032473, -0.892573, 0.449733,
		0.795259, -0.295630, -0.529307,
		40.404785, 29.307863, 31.117811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160152, 29.174866, 31.904791>,  <39.848103, 29.514803, 31.488327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160152, 29.174866, 31.904791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.437222, 29.281443, 31.636696>,  <40.603462, 29.345388, 31.475840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.437222, 29.281443, 31.636696>,  <40.160152, 29.174866, 31.904791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437222, 29.281443, 31.636696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619032, 0.257283, 0.742027,
		0.370147, -0.928878, 0.013276,
		0.692669, 0.266441, -0.670238,
		40.645023, 29.361376, 31.435625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868980, 28.890846, 32.245930>,  <40.160152, 29.174866, 31.904791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868980, 28.890846, 32.245930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956787, 29.165663, 31.968863>,  <41.009472, 29.330553, 31.802624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956787, 29.165663, 31.968863>,  <40.868980, 28.890846, 32.245930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956787, 29.165663, 31.968863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464189, 0.550917, 0.693555,
		0.858102, -0.473777, -0.197979,
		0.219520, 0.687041, -0.692665,
		41.022644, 29.371775, 31.761063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531536, 29.005566, 32.552765>,  <40.868980, 28.890846, 32.245930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531536, 29.005566, 32.552765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445122, 29.302376, 32.298920>,  <41.393272, 29.480461, 32.146614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445122, 29.302376, 32.298920>,  <41.531536, 29.005566, 32.552765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445122, 29.302376, 32.298920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544778, 0.630987, 0.552334,
		0.810275, -0.226398, -0.540553,
		-0.216035, 0.742024, -0.634610,
		41.380310, 29.524982, 32.108536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147137, 29.347040, 32.624146>,  <41.531536, 29.005566, 32.552765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147137, 29.347040, 32.624146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884300, 29.591938, 32.448242>,  <41.726597, 29.738876, 32.342701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884300, 29.591938, 32.448242>,  <42.147137, 29.347040, 32.624146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884300, 29.591938, 32.448242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505846, 0.790658, 0.344933,
		0.558880, 0.004204, -0.829238,
		-0.657094, 0.612243, -0.439757,
		41.687172, 29.775612, 32.316315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621799, 29.906126, 32.263165>,  <42.147137, 29.347040, 32.624146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621799, 29.906126, 32.263165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.248928, 30.033134, 32.332710>,  <42.025208, 30.109339, 32.374439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.248928, 30.033134, 32.332710>,  <42.621799, 29.906126, 32.263165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248928, 30.033134, 32.332710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360851, 0.776669, 0.516306,
		0.028902, 0.544027, -0.838570,
		-0.932175, 0.317521, 0.173865,
		41.969276, 30.128391, 32.384869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543442, 30.594498, 31.971563>,  <42.621799, 29.906126, 32.263165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543442, 30.594498, 31.971563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.296021, 30.542521, 32.281532>,  <42.147568, 30.511335, 32.467514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.296021, 30.542521, 32.281532>,  <42.543442, 30.594498, 31.971563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296021, 30.542521, 32.281532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393444, 0.802463, 0.448614,
		-0.680139, 0.582382, -0.445245,
		-0.618557, -0.129941, 0.774921,
		42.110455, 30.503538, 32.514008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454929, 31.307089, 32.194626>,  <42.543442, 30.594498, 31.971563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454929, 31.307089, 32.194626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.333557, 31.064283, 32.488419>,  <42.260735, 30.918600, 32.664696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.333557, 31.064283, 32.488419>,  <42.454929, 31.307089, 32.194626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333557, 31.064283, 32.488419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392065, 0.623015, 0.676858,
		-0.868456, 0.493345, 0.048946,
		-0.303431, -0.607011, 0.734484,
		42.242527, 30.882179, 32.708763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139637, 31.643934, 32.614914>,  <42.454929, 31.307089, 32.194626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139637, 31.643934, 32.614914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232559, 31.332914, 32.848648>,  <42.288315, 31.146301, 32.988888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232559, 31.332914, 32.848648>,  <42.139637, 31.643934, 32.614914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232559, 31.332914, 32.848648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407493, 0.623309, 0.667409,
		-0.883166, 0.083068, 0.461646,
		0.232308, -0.777551, 0.584336,
		42.302250, 31.099649, 33.023949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809093, 31.795490, 33.286354>,  <42.139637, 31.643934, 32.614914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809093, 31.795490, 33.286354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.112869, 31.536903, 33.315559>,  <42.295135, 31.381752, 33.333084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.112869, 31.536903, 33.315559>,  <41.809093, 31.795490, 33.286354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112869, 31.536903, 33.315559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424991, 0.577950, 0.696675,
		-0.492576, -0.498053, 0.713661,
		0.759442, -0.646465, 0.073017,
		42.340702, 31.342964, 33.337463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980633, 31.661001, 34.046276>,  <41.809093, 31.795490, 33.286354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980633, 31.661001, 34.046276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.299416, 31.568487, 33.823078>,  <42.490685, 31.512978, 33.689159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.299416, 31.568487, 33.823078>,  <41.980633, 31.661001, 34.046276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299416, 31.568487, 33.823078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574496, 0.575578, 0.581949,
		0.186573, -0.784357, 0.591586,
		0.796960, -0.231287, -0.557997,
		42.538502, 31.499102, 33.655678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425518, 31.533278, 34.521152>,  <41.980633, 31.661001, 34.046276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425518, 31.533278, 34.521152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648254, 31.593691, 34.194443>,  <42.781898, 31.629938, 33.998417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648254, 31.593691, 34.194443>,  <42.425518, 31.533278, 34.521152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648254, 31.593691, 34.194443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743013, 0.348983, 0.571089,
		0.371293, -0.924878, 0.082109,
		0.556843, 0.151033, -0.816771,
		42.815308, 31.639002, 33.949409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087002, 31.190479, 34.714890>,  <42.425518, 31.533278, 34.521152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087002, 31.190479, 34.714890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144341, 31.443378, 34.410332>,  <43.178741, 31.595118, 34.227596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144341, 31.443378, 34.410332>,  <43.087002, 31.190479, 34.714890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144341, 31.443378, 34.410332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806356, 0.371436, 0.460245,
		0.573797, -0.679924, -0.456574,
		0.143343, 0.632249, -0.761390,
		43.187344, 31.633053, 34.181915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708340, 30.965576, 34.420933>,  <43.087002, 31.190479, 34.714890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708340, 30.965576, 34.420933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.638721, 31.337896, 34.292358>,  <43.596951, 31.561289, 34.215214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.638721, 31.337896, 34.292358>,  <43.708340, 30.965576, 34.420933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638721, 31.337896, 34.292358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843293, 0.309436, 0.439438,
		0.508492, -0.194580, -0.838793,
		-0.174047, 0.930799, -0.321434,
		43.586506, 31.617136, 34.195927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424324, 31.199520, 34.108311>,  <43.708340, 30.965576, 34.420933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424324, 31.199520, 34.108311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.237934, 31.546719, 34.176960>,  <44.126102, 31.755037, 34.218151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.237934, 31.546719, 34.176960>,  <44.424324, 31.199520, 34.108311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237934, 31.546719, 34.176960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785673, 0.316699, 0.531432,
		0.406927, 0.382474, -0.829533,
		-0.465971, 0.867995, 0.171627,
		44.098145, 31.807117, 34.228447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874619, 31.609777, 33.973003>,  <44.424324, 31.199520, 34.108311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874619, 31.609777, 33.973003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632923, 31.807425, 34.223042>,  <44.487907, 31.926012, 34.373066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632923, 31.807425, 34.223042>,  <44.874619, 31.609777, 33.973003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632923, 31.807425, 34.223042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796616, 0.357524, 0.487421,
		0.017355, 0.792481, -0.609649,
		-0.604237, 0.494115, 0.625099,
		44.451653, 31.955660, 34.410572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258812, 32.288040, 34.098499>,  <44.874619, 31.609777, 33.973003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258812, 32.288040, 34.098499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.969795, 32.261402, 34.373745>,  <44.796387, 32.245419, 34.538891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.969795, 32.261402, 34.373745>,  <45.258812, 32.288040, 34.098499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969795, 32.261402, 34.373745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620192, 0.377327, 0.687740,
		-0.305444, 0.923682, -0.231333,
		-0.722541, -0.066595, 0.688113,
		44.753033, 32.241425, 34.580177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600033, 32.779495, 34.451252>,  <45.258812, 32.288040, 34.098499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600033, 32.779495, 34.451252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.271240, 32.653538, 34.641068>,  <45.073963, 32.577961, 34.754955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.271240, 32.653538, 34.641068>,  <45.600033, 32.779495, 34.451252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271240, 32.653538, 34.641068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404588, 0.263545, 0.875701,
		-0.400819, 0.911802, -0.089226,
		-0.821981, -0.314898, 0.474538,
		45.024647, 32.559067, 34.783428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029007, 33.450073, 34.755932>,  <45.600033, 32.779495, 34.451252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029007, 33.450073, 34.755932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.151730, 33.705528, 34.473652>,  <46.225365, 33.858803, 34.304283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.151730, 33.705528, 34.473652>,  <46.029007, 33.450073, 34.755932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.151730, 33.705528, 34.473652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872906, -0.106717, -0.476075,
		-0.379349, 0.762072, 0.524729,
		0.306806, 0.638638, -0.705700,
		46.243771, 33.897121, 34.261944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454094, 33.890083, 34.559116>,  <46.029007, 33.450073, 34.755932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454094, 33.890083, 34.559116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696213, 33.881481, 34.240833>,  <45.841484, 33.876320, 34.049862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696213, 33.881481, 34.240833>,  <45.454094, 33.890083, 34.559116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696213, 33.881481, 34.240833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794561, 0.043752, -0.605606,
		0.047840, 0.998811, 0.009392,
		0.605297, -0.021510, -0.795709,
		45.877800, 33.875027, 34.002121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153427, 34.263741, 34.133713>,  <45.454094, 33.890083, 34.559116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153427, 34.263741, 34.133713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.410530, 34.075859, 33.891640>,  <45.564793, 33.963131, 33.746395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.410530, 34.075859, 33.891640>,  <45.153427, 34.263741, 34.133713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410530, 34.075859, 33.891640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648274, 0.087409, -0.756374,
		0.408166, 0.878488, -0.248311,
		0.642761, -0.469700, -0.605178,
		45.603359, 33.934948, 33.710087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156494, 34.643864, 33.518059>,  <45.153427, 34.263741, 34.133713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156494, 34.643864, 33.518059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.248436, 34.268616, 33.414448>,  <45.303600, 34.043465, 33.352280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.248436, 34.268616, 33.414448>,  <45.156494, 34.643864, 33.518059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248436, 34.268616, 33.414448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740595, 0.004076, -0.671939,
		0.631417, 0.346281, -0.693832,
		0.229852, -0.938122, -0.259028,
		45.317390, 33.987179, 33.336739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203072, 34.664398, 32.742996>,  <45.156494, 34.643864, 33.518059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203072, 34.664398, 32.742996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.150475, 34.284893, 32.857929>,  <45.118916, 34.057190, 32.926888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.150475, 34.284893, 32.857929>,  <45.203072, 34.664398, 32.742996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150475, 34.284893, 32.857929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653824, -0.134863, -0.744531,
		0.745134, -0.285763, -0.602591,
		-0.131492, -0.948763, 0.287330,
		45.111027, 34.000263, 32.944130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042423, 34.358620, 32.131779>,  <45.203072, 34.664398, 32.742996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042423, 34.358620, 32.131779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912247, 34.061161, 32.365387>,  <44.834141, 33.882687, 32.505550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912247, 34.061161, 32.365387>,  <45.042423, 34.358620, 32.131779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912247, 34.061161, 32.365387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666430, -0.257766, -0.699591,
		0.670789, -0.616883, -0.411701,
		-0.325444, -0.743648, 0.584016,
		44.814613, 33.838066, 32.540592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057831, 33.702881, 31.764215>,  <45.042423, 34.358620, 32.131779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057831, 33.702881, 31.764215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797600, 33.666199, 32.065769>,  <44.641460, 33.644188, 32.246700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797600, 33.666199, 32.065769>,  <45.057831, 33.702881, 31.764215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797600, 33.666199, 32.065769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730027, -0.198086, -0.654082,
		0.209318, -0.975885, 0.061921,
		-0.650574, -0.091707, 0.753885,
		44.602428, 33.638687, 32.291935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693794, 33.088833, 31.523439>,  <45.057831, 33.702881, 31.764215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693794, 33.088833, 31.523439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.452251, 33.210110, 31.818310>,  <44.307327, 33.282875, 31.995232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.452251, 33.210110, 31.818310>,  <44.693794, 33.088833, 31.523439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452251, 33.210110, 31.818310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793860, -0.145570, -0.590420,
		-0.071700, -0.941745, 0.328596,
		-0.603858, 0.303192, 0.737177,
		44.271095, 33.301067, 32.039463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185528, 32.552494, 31.607252>,  <44.693794, 33.088833, 31.523439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185528, 32.552494, 31.607252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.021343, 32.867817, 31.790592>,  <43.922832, 33.057011, 31.900597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.021343, 32.867817, 31.790592>,  <44.185528, 32.552494, 31.607252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021343, 32.867817, 31.790592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902595, -0.279695, -0.327251,
		-0.129777, -0.548031, 0.826329,
		-0.410464, 0.788310, 0.458352,
		43.898205, 33.104309, 31.928097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712776, 32.270309, 31.965172>,  <44.185528, 32.552494, 31.607252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712776, 32.270309, 31.965172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.620678, 32.657982, 31.930151>,  <43.565418, 32.890587, 31.909140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.620678, 32.657982, 31.930151>,  <43.712776, 32.270309, 31.965172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620678, 32.657982, 31.930151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957757, -0.241622, -0.155948,
		-0.172296, 0.047944, 0.983878,
		-0.230250, 0.969185, -0.087550,
		43.551601, 32.948738, 31.903887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184975, 32.442776, 32.450680>,  <43.712776, 32.270309, 31.965172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184975, 32.442776, 32.450680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174183, 32.724384, 32.166813>,  <43.167709, 32.893349, 31.996492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174183, 32.724384, 32.166813>,  <43.184975, 32.442776, 32.450680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174183, 32.724384, 32.166813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905151, -0.318487, -0.281543,
		-0.424232, 0.634762, 0.645836,
		-0.026978, 0.704019, -0.709669,
		43.166088, 32.935589, 31.953913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542435, 32.742828, 32.507935>,  <43.184975, 32.442776, 32.450680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542435, 32.742828, 32.507935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663151, 32.817902, 32.134048>,  <42.735580, 32.862946, 31.909716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663151, 32.817902, 32.134048>,  <42.542435, 32.742828, 32.507935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663151, 32.817902, 32.134048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892670, -0.288631, -0.346169,
		-0.334760, 0.938864, 0.080436,
		0.301789, 0.187686, -0.934718,
		42.753689, 32.874207, 31.853634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987045, 33.027550, 32.156567>,  <42.542435, 32.742828, 32.507935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987045, 33.027550, 32.156567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223015, 32.944939, 31.844324>,  <42.364597, 32.895370, 31.656979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223015, 32.944939, 31.844324>,  <41.987045, 33.027550, 32.156567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223015, 32.944939, 31.844324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806539, -0.196916, -0.557421,
		-0.038590, 0.958420, -0.282738,
		0.589920, -0.206528, -0.780603,
		42.399990, 32.882980, 31.610144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740288, 33.528957, 31.672657>,  <41.987045, 33.027550, 32.156567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740288, 33.528957, 31.672657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.917450, 33.221733, 31.487650>,  <42.023746, 33.037399, 31.376646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.917450, 33.221733, 31.487650>,  <41.740288, 33.528957, 31.672657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917450, 33.221733, 31.487650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777327, -0.071896, -0.624975,
		0.446763, 0.636334, -0.628874,
		0.442906, -0.768056, -0.462519,
		42.050323, 32.991318, 31.348894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685005, 33.754284, 30.991558>,  <41.740288, 33.528957, 31.672657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685005, 33.754284, 30.991558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754063, 33.361286, 30.963560>,  <41.795498, 33.125488, 30.946762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754063, 33.361286, 30.963560>,  <41.685005, 33.754284, 30.991558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754063, 33.361286, 30.963560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762220, -0.088253, -0.641274,
		0.623871, 0.164064, -0.764113,
		0.172645, -0.982494, -0.069994,
		41.805855, 33.066540, 30.942562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420761, 33.585541, 30.376257>,  <41.685005, 33.754284, 30.991558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420761, 33.585541, 30.376257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467087, 33.227459, 30.548393>,  <41.494884, 33.012608, 30.651674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467087, 33.227459, 30.548393>,  <41.420761, 33.585541, 30.376257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467087, 33.227459, 30.548393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814016, -0.333816, -0.475336,
		0.569178, -0.295250, -0.767374,
		0.115819, -0.895206, 0.430339,
		41.501831, 32.958897, 30.677494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473660, 33.042065, 29.787830>,  <41.420761, 33.585541, 30.376257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473660, 33.042065, 29.787830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321774, 32.900833, 30.129860>,  <41.230644, 32.816093, 30.335077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321774, 32.900833, 30.129860>,  <41.473660, 33.042065, 29.787830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321774, 32.900833, 30.129860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784509, -0.366946, -0.499896,
		0.490271, -0.860630, -0.137662,
		-0.379711, -0.353081, 0.855075,
		41.207859, 32.794910, 30.386383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078686, 32.480591, 29.636692>,  <41.473660, 33.042065, 29.787830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078686, 32.480591, 29.636692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.940422, 32.552097, 30.005163>,  <40.857464, 32.595001, 30.226246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.940422, 32.552097, 30.005163>,  <41.078686, 32.480591, 29.636692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940422, 32.552097, 30.005163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918662, -0.264559, -0.293375,
		0.191261, -0.947656, 0.255669,
		-0.345658, 0.178762, 0.921176,
		40.836723, 32.605724, 30.281515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701771, 31.974058, 29.779179>,  <41.078686, 32.480591, 29.636692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701771, 31.974058, 29.779179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.534573, 32.212372, 30.053497>,  <40.434254, 32.355358, 30.218090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.534573, 32.212372, 30.053497>,  <40.701771, 31.974058, 29.779179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534573, 32.212372, 30.053497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898233, -0.383940, -0.213932,
		0.135849, -0.705431, 0.695638,
		-0.417997, 0.595783, 0.685799,
		40.409172, 32.391106, 30.259237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325226, 31.534523, 30.224106>,  <40.701771, 31.974058, 29.779179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325226, 31.534523, 30.224106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.161041, 31.895931, 30.273365>,  <40.062531, 32.112778, 30.302919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.161041, 31.895931, 30.273365>,  <40.325226, 31.534523, 30.224106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161041, 31.895931, 30.273365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910906, -0.412500, -0.009682,
		0.042050, -0.116149, 0.992341,
		-0.410466, 0.903522, 0.123146,
		40.037903, 32.166988, 30.310308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.828342, 34.732342, 40.963699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493126, 34.571869, 40.815784>,  <37.291996, 34.475586, 40.727036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493126, 34.571869, 40.815784>,  <37.828342, 34.732342, 40.963699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493126, 34.571869, 40.815784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467397, -0.178219, -0.865897,
		0.281482, -0.898493, 0.336867,
		-0.838038, -0.401185, -0.369788,
		37.241714, 34.451515, 40.704849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995926, 34.030491, 40.588905>,  <37.828342, 34.732342, 40.963699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995926, 34.030491, 40.588905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645691, 34.159130, 40.444729>,  <37.435551, 34.236313, 40.358223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645691, 34.159130, 40.444729>,  <37.995926, 34.030491, 40.588905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645691, 34.159130, 40.444729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303536, -0.214167, -0.928439,
		-0.375783, -0.922336, 0.089904,
		-0.875587, 0.321603, -0.360442,
		37.383015, 34.255611, 40.336597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761524, 33.468750, 40.100201>,  <37.995926, 34.030491, 40.588905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761524, 33.468750, 40.100201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594574, 33.819595, 40.005146>,  <37.494404, 34.030102, 39.948112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594574, 33.819595, 40.005146>,  <37.761524, 33.468750, 40.100201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594574, 33.819595, 40.005146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273950, -0.127887, -0.953203,
		-0.866458, -0.462943, -0.186909,
		-0.417375, 0.877114, -0.237632,
		37.469360, 34.082729, 39.933857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369205, 33.270081, 39.624554>,  <37.761524, 33.468750, 40.100201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369205, 33.270081, 39.624554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415993, 33.664055, 39.573627>,  <37.444065, 33.900440, 39.543072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415993, 33.664055, 39.573627>,  <37.369205, 33.270081, 39.624554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415993, 33.664055, 39.573627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133342, -0.142615, -0.980755,
		-0.984143, 0.097741, -0.148016,
		0.116970, 0.984941, -0.127320,
		37.451084, 33.959538, 39.535431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869942, 33.462471, 39.091034>,  <37.369205, 33.270081, 39.624554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869942, 33.462471, 39.091034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167072, 33.730259, 39.092548>,  <37.345352, 33.890930, 39.093456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167072, 33.730259, 39.092548>,  <36.869942, 33.462471, 39.091034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167072, 33.730259, 39.092548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083826, -0.087398, -0.992640,
		-0.664211, 0.737681, -0.121040,
		0.742831, 0.669469, 0.003786,
		37.389923, 33.931099, 39.093685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707157, 33.868412, 38.550213>,  <36.869942, 33.462471, 39.091034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707157, 33.868412, 38.550213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091980, 33.949768, 38.622959>,  <37.322872, 33.998581, 38.666607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091980, 33.949768, 38.622959>,  <36.707157, 33.868412, 38.550213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091980, 33.949768, 38.622959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198536, -0.064611, -0.977962,
		-0.187158, 0.976963, -0.102540,
		0.962058, 0.203391, 0.181870,
		37.380596, 34.010784, 38.677521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868885, 34.492805, 38.140892>,  <36.707157, 33.868412, 38.550213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868885, 34.492805, 38.140892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206150, 34.302559, 38.241184>,  <37.408508, 34.188412, 38.301357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206150, 34.302559, 38.241184>,  <36.868885, 34.492805, 38.140892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206150, 34.302559, 38.241184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298584, 0.026400, -0.954018,
		0.447128, 0.879256, 0.164271,
		0.843163, -0.475617, 0.250727,
		37.459099, 34.159874, 38.316402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455486, 34.901485, 37.935703>,  <36.868885, 34.492805, 38.140892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455486, 34.901485, 37.935703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579296, 34.523762, 37.980381>,  <37.653580, 34.297127, 38.007187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579296, 34.523762, 37.980381>,  <37.455486, 34.901485, 37.935703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579296, 34.523762, 37.980381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451374, 0.042523, -0.891321,
		0.836934, 0.326298, 0.439399,
		0.309520, -0.944310, 0.111694,
		37.672153, 34.240467, 38.013889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997784, 34.905605, 37.501831>,  <37.455486, 34.901485, 37.935703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997784, 34.905605, 37.501831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990772, 34.510941, 37.566563>,  <37.986565, 34.274143, 37.605404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990772, 34.510941, 37.566563>,  <37.997784, 34.905605, 37.501831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990772, 34.510941, 37.566563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466459, -0.151232, -0.871519,
		0.884370, 0.060216, 0.462888,
		-0.017524, -0.986663, 0.161833,
		37.985516, 34.214943, 37.615112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741302, 34.641716, 37.445984>,  <37.997784, 34.905605, 37.501831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741302, 34.641716, 37.445984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489685, 34.339581, 37.372475>,  <38.338715, 34.158298, 37.328369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489685, 34.339581, 37.372475>,  <38.741302, 34.641716, 37.445984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489685, 34.339581, 37.372475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440357, -0.151417, -0.884962,
		0.640620, -0.637602, 0.427866,
		-0.629040, -0.755338, -0.183772,
		38.300972, 34.112980, 37.317345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098309, 34.126404, 37.214478>,  <38.741302, 34.641716, 37.445984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098309, 34.126404, 37.214478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731842, 34.051186, 37.072895>,  <38.511963, 34.006054, 36.987946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731842, 34.051186, 37.072895>,  <39.098309, 34.126404, 37.214478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731842, 34.051186, 37.072895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373376, -0.079335, -0.924281,
		0.145728, -0.978951, 0.142896,
		-0.916162, -0.188048, -0.353955,
		38.456993, 33.994770, 36.966709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198711, 33.590004, 36.698463>,  <39.098309, 34.126404, 37.214478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198711, 33.590004, 36.698463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828796, 33.720135, 36.619534>,  <38.606850, 33.798214, 36.572174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828796, 33.720135, 36.619534>,  <39.198711, 33.590004, 36.698463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828796, 33.720135, 36.619534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259773, 0.160894, -0.952172,
		-0.278017, -0.931814, -0.233302,
		-0.924784, 0.325325, -0.197329,
		38.551361, 33.817734, 36.560333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094753, 33.494549, 35.945435>,  <39.198711, 33.590004, 36.698463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094753, 33.494549, 35.945435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795624, 33.737007, 36.053761>,  <38.616146, 33.882484, 36.118755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795624, 33.737007, 36.053761>,  <39.094753, 33.494549, 35.945435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795624, 33.737007, 36.053761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058615, 0.346043, -0.936386,
		-0.661302, -0.716127, -0.223250,
		-0.747826, 0.606149, 0.270815,
		38.571278, 33.918850, 36.135006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005421, 32.663296, 35.964409>,  <39.094753, 33.494549, 35.945435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005421, 32.663296, 35.964409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630795, 32.705196, 35.830624>,  <38.406017, 32.730335, 35.750355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630795, 32.705196, 35.830624>,  <39.005421, 32.663296, 35.964409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630795, 32.705196, 35.830624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305534, -0.223523, -0.925574,
		-0.171708, -0.969054, 0.177342,
		-0.936571, 0.104744, -0.334460,
		38.349823, 32.736622, 35.730286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235653, 32.256176, 36.534935>,  <39.005421, 32.663296, 35.964409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235653, 32.256176, 36.534935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513538, 31.971771, 36.491436>,  <39.680271, 31.801128, 36.465336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513538, 31.971771, 36.491436>,  <39.235653, 32.256176, 36.534935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513538, 31.971771, 36.491436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717959, -0.694635, -0.044907,
		-0.043609, 0.109272, -0.993055,
		0.694718, -0.711015, -0.108745,
		39.721954, 31.758467, 36.458813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119469, 31.903156, 35.903328>,  <39.235653, 32.256176, 36.534935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119469, 31.903156, 35.903328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311897, 31.657133, 36.153217>,  <39.427353, 31.509520, 36.303150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311897, 31.657133, 36.153217>,  <39.119469, 31.903156, 35.903328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311897, 31.657133, 36.153217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789700, -0.613479, 0.004118,
		0.380721, -0.495323, -0.780837,
		0.481067, -0.615059, 0.624721,
		39.456219, 31.472614, 36.340633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023808, 31.295261, 35.663395>,  <39.119469, 31.903156, 35.903328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023808, 31.295261, 35.663395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135185, 31.219839, 36.040100>,  <39.202011, 31.174585, 36.266125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135185, 31.219839, 36.040100>,  <39.023808, 31.295261, 35.663395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135185, 31.219839, 36.040100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814749, -0.565586, 0.127654,
		0.508578, -0.802845, -0.311110,
		0.278446, -0.188554, 0.941762,
		39.218719, 31.163273, 36.322628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839333, 30.551947, 35.690941>,  <39.023808, 31.295261, 35.663395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839333, 30.551947, 35.690941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883671, 30.685198, 36.065479>,  <38.910275, 30.765148, 36.290203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883671, 30.685198, 36.065479>,  <38.839333, 30.551947, 35.690941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883671, 30.685198, 36.065479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836765, -0.477056, 0.268778,
		0.536227, -0.813292, 0.225872,
		0.110842, 0.333128, 0.936344,
		38.916924, 30.785135, 36.346382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697250, 29.933941, 36.020733>,  <38.839333, 30.551947, 35.690941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697250, 29.933941, 36.020733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676868, 30.233271, 36.285282>,  <38.664639, 30.412868, 36.444012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676868, 30.233271, 36.285282>,  <38.697250, 29.933941, 36.020733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676868, 30.233271, 36.285282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831994, -0.398123, 0.386372,
		0.552440, -0.530571, 0.642888,
		-0.050951, 0.748327, 0.661371,
		38.661583, 30.457769, 36.483692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680500, 29.609404, 36.708633>,  <38.697250, 29.933941, 36.020733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680500, 29.609404, 36.708633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534039, 29.973083, 36.787914>,  <38.446163, 30.191292, 36.835484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534039, 29.973083, 36.787914>,  <38.680500, 29.609404, 36.708633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534039, 29.973083, 36.787914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764998, -0.415374, 0.492181,
		0.529820, 0.028590, 0.847628,
		-0.366155, 0.909201, 0.198202,
		38.424191, 30.245844, 36.847374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439304, 29.554819, 37.364334>,  <38.680500, 29.609404, 36.708633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439304, 29.554819, 37.364334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276646, 29.888441, 37.215210>,  <38.179050, 30.088614, 37.125736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276646, 29.888441, 37.215210>,  <38.439304, 29.554819, 37.364334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276646, 29.888441, 37.215210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814250, -0.145831, 0.561899,
		0.414288, 0.532057, 0.738431,
		-0.406649, 0.834055, -0.372811,
		38.154652, 30.138659, 37.103367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306400, 30.030190, 37.857456>,  <38.439304, 29.554819, 37.364334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306400, 30.030190, 37.857456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052048, 30.116659, 37.561096>,  <37.899437, 30.168541, 37.383282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052048, 30.116659, 37.561096>,  <38.306400, 30.030190, 37.857456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052048, 30.116659, 37.561096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771030, -0.135323, 0.622254,
		0.034256, 0.966931, 0.252726,
		-0.635877, 0.216176, -0.740897,
		37.861286, 30.181511, 37.338825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807518, 30.560274, 38.100021>,  <38.306400, 30.030190, 37.857456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807518, 30.560274, 38.100021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638447, 30.335743, 37.815414>,  <37.537006, 30.201025, 37.644650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638447, 30.335743, 37.815414>,  <37.807518, 30.560274, 38.100021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638447, 30.335743, 37.815414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792313, -0.152277, 0.590806,
		-0.439983, 0.813463, -0.380384,
		-0.422675, -0.561328, -0.711517,
		37.511642, 30.167345, 37.601959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212715, 30.999302, 38.003403>,  <37.807518, 30.560274, 38.100021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212715, 30.999302, 38.003403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181412, 30.623837, 37.869068>,  <37.162628, 30.398558, 37.788467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181412, 30.623837, 37.869068>,  <37.212715, 30.999302, 38.003403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181412, 30.623837, 37.869068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821545, -0.130107, 0.555100,
		-0.564747, 0.319345, -0.760972,
		-0.078261, -0.938664, -0.335834,
		37.157932, 30.342237, 37.768318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513218, 30.992674, 37.869804>,  <37.212715, 30.999302, 38.003403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513218, 30.992674, 37.869804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634117, 30.611673, 37.884693>,  <36.706657, 30.383074, 37.893627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634117, 30.611673, 37.884693>,  <36.513218, 30.992674, 37.869804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634117, 30.611673, 37.884693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787073, -0.227351, 0.573435,
		-0.537736, -0.202615, -0.818405,
		0.302252, -0.952501, 0.037218,
		36.724792, 30.325924, 37.895859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876263, 30.538568, 37.791939>,  <36.513218, 30.992674, 37.869804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876263, 30.538568, 37.791939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162712, 30.331995, 37.979755>,  <36.334579, 30.208050, 38.092445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162712, 30.331995, 37.979755>,  <35.876263, 30.538568, 37.791939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162712, 30.331995, 37.979755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590607, -0.089853, 0.801941,
		-0.371961, -0.851599, -0.369355,
		0.716120, -0.516435, 0.469539,
		36.377548, 30.177065, 38.120617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454708, 29.936094, 37.968338>,  <35.876263, 30.538568, 37.791939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454708, 29.936094, 37.968338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788864, 29.951660, 38.187653>,  <35.989357, 29.961000, 38.319241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788864, 29.951660, 38.187653>,  <35.454708, 29.936094, 37.968338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788864, 29.951660, 38.187653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517217, -0.281977, 0.808069,
		0.186049, -0.958632, -0.215433,
		0.835388, 0.038915, 0.548282,
		36.039482, 29.963335, 38.352139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493546, 29.383606, 38.354858>,  <35.454708, 29.936094, 37.968338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493546, 29.383606, 38.354858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739185, 29.636116, 38.544327>,  <35.886570, 29.787622, 38.658009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739185, 29.636116, 38.544327>,  <35.493546, 29.383606, 38.354858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739185, 29.636116, 38.544327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443872, -0.220000, 0.868664,
		0.652575, -0.743700, 0.145103,
		0.614103, 0.631276, 0.473675,
		35.923416, 29.825499, 38.686428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474052, 28.617748, 38.210697>,  <35.493546, 29.383606, 38.354858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474052, 28.617748, 38.210697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117661, 28.463293, 38.115162>,  <34.903824, 28.370619, 38.057838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117661, 28.463293, 38.115162>,  <35.474052, 28.617748, 38.210697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117661, 28.463293, 38.115162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076963, 0.389985, -0.917599,
		0.447469, -0.835946, -0.317751,
		-0.890982, -0.386142, -0.238843,
		34.850365, 28.347450, 38.043510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534718, 28.243862, 37.547421>,  <35.474052, 28.617748, 38.210697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534718, 28.243862, 37.547421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148548, 28.338469, 37.591278>,  <34.916847, 28.395233, 37.617592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148548, 28.338469, 37.591278>,  <35.534718, 28.243862, 37.547421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148548, 28.338469, 37.591278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002764, 0.429856, -0.902893,
		-0.260681, -0.871369, -0.415646,
		-0.965421, 0.236515, 0.109647,
		34.858921, 28.409424, 37.624172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312794, 28.340479, 36.877312>,  <35.534718, 28.243862, 37.547421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312794, 28.340479, 36.877312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002113, 28.508286, 37.065247>,  <34.815704, 28.608971, 37.178009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002113, 28.508286, 37.065247>,  <35.312794, 28.340479, 36.877312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002113, 28.508286, 37.065247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133650, 0.619171, -0.773799,
		-0.615532, -0.663801, -0.424840,
		-0.776697, 0.419518, 0.469836,
		34.769104, 28.634140, 37.206196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720516, 28.348631, 36.417297>,  <35.312794, 28.340479, 36.877312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720516, 28.348631, 36.417297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653358, 28.628159, 36.695423>,  <34.613064, 28.795876, 36.862301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653358, 28.628159, 36.695423>,  <34.720516, 28.348631, 36.417297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653358, 28.628159, 36.695423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322642, 0.627531, -0.708595,
		-0.931512, -0.343306, 0.120109,
		-0.167893, 0.698817, 0.695317,
		34.602989, 28.837803, 36.904018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125118, 28.656071, 36.196358>,  <34.720516, 28.348631, 36.417297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125118, 28.656071, 36.196358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305763, 28.924280, 36.431797>,  <34.414150, 29.085205, 36.573059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305763, 28.924280, 36.431797>,  <34.125118, 28.656071, 36.196358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305763, 28.924280, 36.431797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153793, 0.708331, -0.688922,
		-0.878859, 0.220605, 0.423014,
		0.451614, 0.670522, 0.588596,
		34.441246, 29.125437, 36.608376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659618, 29.274538, 36.272327>,  <34.125118, 28.656071, 36.196358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659618, 29.274538, 36.272327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027489, 29.403185, 36.362446>,  <34.248211, 29.480373, 36.416515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027489, 29.403185, 36.362446>,  <33.659618, 29.274538, 36.272327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027489, 29.403185, 36.362446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175136, 0.849471, -0.497721,
		-0.351458, 0.418285, 0.837565,
		0.919676, 0.321616, 0.225297,
		34.303391, 29.499670, 36.430035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556999, 30.005970, 36.422581>,  <33.659618, 29.274538, 36.272327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556999, 30.005970, 36.422581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941067, 29.932653, 36.338223>,  <34.171509, 29.888664, 36.287609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941067, 29.932653, 36.338223>,  <33.556999, 30.005970, 36.422581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941067, 29.932653, 36.338223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039371, 0.835992, -0.547327,
		0.276624, 0.517225, 0.809912,
		0.960171, -0.183291, -0.210892,
		34.229118, 29.877666, 36.274956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780880, 30.683893, 36.365108>,  <33.556999, 30.005970, 36.422581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780880, 30.683893, 36.365108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077206, 30.471973, 36.199936>,  <34.255001, 30.344822, 36.100834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077206, 30.471973, 36.199936>,  <33.780880, 30.683893, 36.365108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077206, 30.471973, 36.199936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014113, 0.626882, -0.778986,
		0.671563, 0.571256, 0.471879,
		0.740813, -0.529798, -0.412929,
		34.299450, 30.313034, 36.076057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320377, 31.077349, 36.263020>,  <33.780880, 30.683893, 36.365108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320377, 31.077349, 36.263020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348301, 30.794527, 35.981537>,  <34.365055, 30.624834, 35.812649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348301, 30.794527, 35.981537>,  <34.320377, 31.077349, 36.263020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348301, 30.794527, 35.981537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038617, 0.706814, -0.706345,
		0.996813, 0.022137, 0.076649,
		0.069813, -0.707053, -0.703706,
		34.369244, 30.582411, 35.770424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702232, 31.476549, 35.819450>,  <34.320377, 31.077349, 36.263020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702232, 31.476549, 35.819450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572369, 31.145906, 35.635574>,  <34.494450, 30.947521, 35.525249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572369, 31.145906, 35.635574>,  <34.702232, 31.476549, 35.819450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572369, 31.145906, 35.635574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030288, 0.494856, -0.868447,
		0.945346, -0.268027, -0.185696,
		-0.324660, -0.826607, -0.459692,
		34.474972, 30.897924, 35.497665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975227, 31.534883, 35.131340>,  <34.702232, 31.476549, 35.819450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975227, 31.534883, 35.131340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645241, 31.309042, 35.141521>,  <34.447247, 31.173536, 35.147629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645241, 31.309042, 35.141521>,  <34.975227, 31.534883, 35.131340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645241, 31.309042, 35.141521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340394, 0.460414, -0.819848,
		0.451161, -0.685020, -0.572015,
		-0.824976, -0.564595, 0.025456,
		34.397751, 31.139660, 35.149158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822678, 31.368847, 34.347000>,  <34.975227, 31.534883, 35.131340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822678, 31.368847, 34.347000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496632, 31.276224, 34.559406>,  <34.301006, 31.220652, 34.686848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496632, 31.276224, 34.559406>,  <34.822678, 31.368847, 34.347000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496632, 31.276224, 34.559406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577878, 0.389269, -0.717305,
		-0.040612, -0.891545, -0.451108,
		-0.815112, -0.231555, 0.531013,
		34.252098, 31.206758, 34.718712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.803795, 26.945059, 41.457127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.450962, 27.080252, 41.325859>,  <34.239262, 27.161367, 41.247101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.450962, 27.080252, 41.325859>,  <34.803795, 26.945059, 41.457127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450962, 27.080252, 41.325859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262123, -0.226689, -0.938032,
		-0.391429, -0.913444, 0.111367,
		-0.882086, 0.337981, -0.328167,
		34.186337, 27.181646, 41.227409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728050, 26.591818, 40.838257>,  <34.803795, 26.945059, 41.457127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728050, 26.591818, 40.838257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.407326, 26.828697, 40.806267>,  <34.214890, 26.970825, 40.787071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.407326, 26.828697, 40.806267>,  <34.728050, 26.591818, 40.838257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407326, 26.828697, 40.806267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058098, -0.055945, -0.996742,
		-0.594742, -0.803849, 0.010452,
		-0.801815, 0.592197, -0.079975,
		34.166782, 27.006357, 40.782276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278069, 26.303743, 40.303562>,  <34.728050, 26.591818, 40.838257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278069, 26.303743, 40.303562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.215900, 26.697529, 40.336239>,  <34.178600, 26.933800, 40.355846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.215900, 26.697529, 40.336239>,  <34.278069, 26.303743, 40.303562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215900, 26.697529, 40.336239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114729, 0.100125, -0.988338,
		-0.981163, -0.144238, -0.128509,
		-0.155423, 0.984465, 0.081691,
		34.169273, 26.992868, 40.360744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848869, 26.477673, 39.711445>,  <34.278069, 26.303743, 40.303562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848869, 26.477673, 39.711445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016850, 26.815300, 39.844826>,  <34.117638, 27.017876, 39.924854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016850, 26.815300, 39.844826>,  <33.848869, 26.477673, 39.711445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016850, 26.815300, 39.844826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075475, 0.333667, -0.939665,
		-0.904402, 0.419783, 0.076419,
		0.419954, 0.844067, 0.333452,
		34.142834, 27.068520, 39.944862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392807, 26.976681, 39.412239>,  <33.848869, 26.477673, 39.711445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392807, 26.976681, 39.412239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752609, 27.120625, 39.511341>,  <33.968491, 27.206991, 39.570805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752609, 27.120625, 39.511341>,  <33.392807, 26.976681, 39.412239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752609, 27.120625, 39.511341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002197, 0.570794, -0.821090,
		-0.436896, 0.738034, 0.514225,
		0.899509, 0.359861, 0.247757,
		34.022461, 27.228582, 39.585667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416904, 27.690977, 39.422066>,  <33.392807, 26.976681, 39.412239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416904, 27.690977, 39.422066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.813034, 27.646954, 39.388252>,  <34.050713, 27.620539, 39.367962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.813034, 27.646954, 39.388252>,  <33.416904, 27.690977, 39.422066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813034, 27.646954, 39.388252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023123, 0.469779, -0.882481,
		0.136841, 0.875896, 0.462688,
		0.990323, -0.110061, -0.084538,
		34.110130, 27.613935, 39.362892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715103, 28.415863, 39.353554>,  <33.416904, 27.690977, 39.422066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715103, 28.415863, 39.353554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.972683, 28.149673, 39.202572>,  <34.127232, 27.989960, 39.111984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.972683, 28.149673, 39.202572>,  <33.715103, 28.415863, 39.353554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972683, 28.149673, 39.202572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171135, 0.606151, -0.776720,
		0.745678, 0.435576, 0.504219,
		0.643954, -0.665473, -0.377451,
		34.165871, 27.950031, 39.089336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373337, 28.810789, 39.184479>,  <33.715103, 28.415863, 39.353554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373337, 28.810789, 39.184479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.408714, 28.464115, 38.988094>,  <34.429939, 28.256111, 38.870266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.408714, 28.464115, 38.988094>,  <34.373337, 28.810789, 39.184479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408714, 28.464115, 38.988094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275770, 0.494927, -0.824013,
		0.957146, -0.062516, 0.282776,
		0.088440, -0.866683, -0.490958,
		34.435246, 28.204111, 38.840809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983292, 28.944168, 38.705177>,  <34.373337, 28.810789, 39.184479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983292, 28.944168, 38.705177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835247, 28.599554, 38.566170>,  <34.746418, 28.392786, 38.482765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835247, 28.599554, 38.566170>,  <34.983292, 28.944168, 38.705177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835247, 28.599554, 38.566170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223134, 0.280690, -0.933501,
		0.901790, -0.423047, 0.088350,
		-0.370116, -0.861536, -0.347520,
		34.724213, 28.341093, 38.461914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636105, 29.019207, 39.021507>,  <34.983292, 28.944168, 38.705177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636105, 29.019207, 39.021507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765373, 29.391048, 39.092381>,  <35.842934, 29.614153, 39.134903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765373, 29.391048, 39.092381>,  <35.636105, 29.019207, 39.021507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765373, 29.391048, 39.092381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242724, -0.099541, 0.964975,
		0.914682, -0.354862, 0.193468,
		0.323175, 0.929605, 0.177182,
		35.862324, 29.669930, 39.145535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955765, 29.035833, 39.715008>,  <35.636105, 29.019207, 39.021507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955765, 29.035833, 39.715008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879513, 29.424793, 39.661201>,  <35.833759, 29.658169, 39.628918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879513, 29.424793, 39.661201>,  <35.955765, 29.035833, 39.715008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879513, 29.424793, 39.661201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035181, 0.143708, 0.988994,
		0.981031, 0.183801, -0.061606,
		-0.190632, 0.972402, -0.134516,
		35.822323, 29.716515, 39.620846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485008, 29.412554, 40.223358>,  <35.955765, 29.035833, 39.715008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485008, 29.412554, 40.223358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.175529, 29.640978, 40.113602>,  <35.989841, 29.778032, 40.047749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.175529, 29.640978, 40.113602>,  <36.485008, 29.412554, 40.223358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175529, 29.640978, 40.113602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159422, 0.243674, 0.956665,
		0.613176, 0.783908, -0.097488,
		-0.773692, 0.571062, -0.274387,
		35.943420, 29.812296, 40.031284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545013, 30.035652, 40.515404>,  <36.485008, 29.412554, 40.223358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545013, 30.035652, 40.515404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.152832, 30.016407, 40.439087>,  <35.917522, 30.004860, 40.393295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.152832, 30.016407, 40.439087>,  <36.545013, 30.035652, 40.515404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152832, 30.016407, 40.439087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196071, 0.157531, 0.967853,
		-0.016509, 0.986341, -0.163884,
		-0.980451, -0.048112, -0.190793,
		35.858696, 30.001974, 40.381847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325195, 30.562483, 40.759052>,  <36.545013, 30.035652, 40.515404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325195, 30.562483, 40.759052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990025, 30.344938, 40.740753>,  <35.788921, 30.214413, 40.729774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990025, 30.344938, 40.740753>,  <36.325195, 30.562483, 40.759052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990025, 30.344938, 40.740753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089279, 0.053895, 0.994547,
		-0.538428, 0.837444, -0.093715,
		-0.837929, -0.543859, -0.045748,
		35.738647, 30.181780, 40.727028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813297, 30.942701, 41.199680>,  <36.325195, 30.562483, 40.759052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813297, 30.942701, 41.199680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716698, 30.556276, 41.163021>,  <35.658737, 30.324421, 41.141026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716698, 30.556276, 41.163021>,  <35.813297, 30.942701, 41.199680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716698, 30.556276, 41.163021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181829, -0.047723, 0.982171,
		-0.953214, 0.253858, -0.164134,
		-0.241499, -0.966063, -0.091649,
		35.644249, 30.266457, 41.135525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286034, 30.882767, 41.596111>,  <35.813297, 30.942701, 41.199680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286034, 30.882767, 41.596111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366596, 30.492376, 41.562862>,  <35.414932, 30.258142, 41.542915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366596, 30.492376, 41.562862>,  <35.286034, 30.882767, 41.596111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366596, 30.492376, 41.562862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442425, -0.166350, 0.881242,
		-0.873898, -0.140710, -0.465300,
		0.201402, -0.975976, -0.083120,
		35.427017, 30.199583, 41.537926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668076, 30.473948, 41.884384>,  <35.286034, 30.882767, 41.596111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668076, 30.473948, 41.884384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.975060, 30.217978, 41.868916>,  <35.159252, 30.064396, 41.859634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.975060, 30.217978, 41.868916>,  <34.668076, 30.473948, 41.884384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975060, 30.217978, 41.868916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242313, -0.345398, 0.906634,
		-0.593535, -0.686438, -0.420142,
		0.767464, -0.639924, -0.038673,
		35.205299, 30.026001, 41.857315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372597, 29.958616, 42.311180>,  <34.668076, 30.473948, 41.884384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372597, 29.958616, 42.311180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.764294, 29.888033, 42.271278>,  <34.999310, 29.845682, 42.247337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.764294, 29.888033, 42.271278>,  <34.372597, 29.958616, 42.311180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764294, 29.888033, 42.271278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006635, -0.463955, 0.885834,
		-0.202594, -0.868106, -0.453153,
		0.979241, -0.176458, -0.099755,
		35.058067, 29.835094, 42.241352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402519, 29.324192, 42.619839>,  <34.372597, 29.958616, 42.311180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402519, 29.324192, 42.619839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.783329, 29.446196, 42.609928>,  <35.011814, 29.519398, 42.603981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.783329, 29.446196, 42.609928>,  <34.402519, 29.324192, 42.619839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783329, 29.446196, 42.609928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165886, -0.446346, 0.879351,
		0.257148, -0.841277, -0.475530,
		0.952028, 0.305007, -0.024779,
		35.068939, 29.537697, 42.602493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744030, 28.778238, 42.783848>,  <34.402519, 29.324192, 42.619839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744030, 28.778238, 42.783848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.987381, 29.066996, 42.915752>,  <35.133392, 29.240250, 42.994896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.987381, 29.066996, 42.915752>,  <34.744030, 28.778238, 42.783848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987381, 29.066996, 42.915752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085578, -0.353408, 0.931547,
		0.789017, -0.594956, -0.153229,
		0.608382, 0.721893, 0.329760,
		35.169895, 29.283564, 43.014679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957222, 28.528067, 43.321304>,  <34.744030, 28.778238, 42.783848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957222, 28.528067, 43.321304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116795, 28.885292, 43.404533>,  <35.212540, 29.099627, 43.454472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116795, 28.885292, 43.404533>,  <34.957222, 28.528067, 43.321304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116795, 28.885292, 43.404533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087084, -0.262786, 0.960916,
		0.912837, -0.365219, -0.182604,
		0.398930, 0.893062, 0.208076,
		35.236473, 29.153210, 43.466957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525177, 28.361485, 43.774963>,  <34.957222, 28.528067, 43.321304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525177, 28.361485, 43.774963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458603, 28.750462, 43.840275>,  <35.418659, 28.983847, 43.879459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458603, 28.750462, 43.840275>,  <35.525177, 28.361485, 43.774963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458603, 28.750462, 43.840275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027299, -0.160978, 0.986580,
		0.985675, 0.168657, 0.000246,
		-0.166434, 0.972441, 0.163276,
		35.408672, 29.042194, 43.889259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038128, 28.559965, 44.307053>,  <35.525177, 28.361485, 43.774963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038128, 28.559965, 44.307053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.757271, 28.842287, 44.344646>,  <35.588757, 29.011681, 44.367203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.757271, 28.842287, 44.344646>,  <36.038128, 28.559965, 44.307053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757271, 28.842287, 44.344646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002917, -0.134848, 0.990862,
		0.712031, 0.695452, 0.096742,
		-0.702142, 0.705807, 0.093987,
		35.546627, 29.054029, 44.372841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.665201, 30.576315, 43.240665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998449, 30.381302, 43.345146>,  <31.198399, 30.264294, 43.407833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998449, 30.381302, 43.345146>,  <30.665201, 30.576315, 43.240665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998449, 30.381302, 43.345146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512795, 0.503895, -0.695076,
		0.207255, 0.713023, 0.669809,
		0.833118, -0.487532, 0.261200,
		31.248384, 30.235043, 43.423508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194611, 31.026861, 43.555748>,  <30.665201, 30.576315, 43.240665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194611, 31.026861, 43.555748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.380325, 30.721651, 43.375866>,  <31.491755, 30.538525, 43.267937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.380325, 30.721651, 43.375866>,  <31.194611, 31.026861, 43.555748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380325, 30.721651, 43.375866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454461, 0.641046, -0.618486,
		0.760199, 0.082783, 0.644394,
		0.464286, -0.763025, -0.449701,
		31.519611, 30.492744, 43.240955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699566, 31.374971, 43.210388>,  <31.194611, 31.026861, 43.555748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699566, 31.374971, 43.210388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.722498, 31.018053, 43.031269>,  <31.736258, 30.803902, 42.923798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.722498, 31.018053, 43.031269>,  <31.699566, 31.374971, 43.210388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722498, 31.018053, 43.031269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547286, 0.403223, -0.733409,
		0.834980, -0.203027, 0.511457,
		0.057329, -0.892295, -0.447797,
		31.739697, 30.750364, 42.896931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400536, 31.383635, 42.934467>,  <31.699566, 31.374971, 43.210388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400536, 31.383635, 42.934467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198166, 31.104847, 42.731182>,  <32.076744, 30.937574, 42.609211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198166, 31.104847, 42.731182>,  <32.400536, 31.383635, 42.934467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198166, 31.104847, 42.731182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406877, 0.326689, -0.853068,
		0.760589, -0.638364, 0.118301,
		-0.505920, -0.696968, -0.508212,
		32.046391, 30.895756, 42.578720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882618, 31.088333, 42.549019>,  <32.400536, 31.383635, 42.934467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882618, 31.088333, 42.549019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.533016, 31.026554, 42.364731>,  <32.323254, 30.989487, 42.254158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.533016, 31.026554, 42.364731>,  <32.882618, 31.088333, 42.549019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533016, 31.026554, 42.364731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347798, 0.463295, -0.815104,
		0.339338, -0.872642, -0.351206,
		-0.874006, -0.154447, -0.460717,
		32.270813, 30.980221, 42.226517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105434, 30.852625, 41.899525>,  <32.882618, 31.088333, 42.549019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105434, 30.852625, 41.899525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728191, 30.985453, 41.892742>,  <32.501846, 31.065149, 41.888672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728191, 30.985453, 41.892742>,  <33.105434, 30.852625, 41.899525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728191, 30.985453, 41.892742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163265, 0.418069, -0.893623,
		-0.289657, -0.845547, -0.448498,
		-0.943103, 0.332069, -0.016952,
		32.445259, 31.085073, 41.887657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835819, 30.655563, 41.237820>,  <33.105434, 30.852625, 41.899525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835819, 30.655563, 41.237820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.578922, 30.947977, 41.329998>,  <32.424782, 31.123426, 41.385303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.578922, 30.947977, 41.329998>,  <32.835819, 30.655563, 41.237820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578922, 30.947977, 41.329998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242736, 0.479150, -0.843501,
		-0.727047, -0.485799, -0.485182,
		-0.642247, 0.731036, 0.230444,
		32.386250, 31.167288, 41.399132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515530, 30.808973, 40.581196>,  <32.835819, 30.655563, 41.237820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515530, 30.808973, 40.581196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.433186, 31.128786, 40.806892>,  <32.383778, 31.320675, 40.942310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.433186, 31.128786, 40.806892>,  <32.515530, 30.808973, 40.581196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433186, 31.128786, 40.806892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202879, 0.598933, -0.774673,
		-0.957321, -0.045001, -0.285504,
		-0.205859, 0.799533, 0.564242,
		32.371429, 31.368647, 40.976166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046421, 31.177647, 40.192131>,  <32.515530, 30.808973, 40.581196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046421, 31.177647, 40.192131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214752, 31.438934, 40.443913>,  <32.315750, 31.595707, 40.594982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214752, 31.438934, 40.443913>,  <32.046421, 31.177647, 40.192131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214752, 31.438934, 40.443913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009862, 0.690548, -0.723219,
		-0.907089, 0.310556, 0.284157,
		0.420824, 0.653222, 0.629451,
		32.341000, 31.634901, 40.632748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592766, 31.849274, 40.185730>,  <32.046421, 31.177647, 40.192131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592766, 31.849274, 40.185730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.962255, 31.959213, 40.292454>,  <32.183949, 32.025177, 40.356487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.962255, 31.959213, 40.292454>,  <31.592766, 31.849274, 40.185730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962255, 31.959213, 40.292454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016146, 0.667978, -0.744006,
		-0.382714, 0.691566, 0.612590,
		0.923726, 0.274850, 0.266811,
		32.239372, 32.041668, 40.372498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600801, 32.556290, 40.188965>,  <31.592766, 31.849274, 40.185730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600801, 32.556290, 40.188965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.995550, 32.492050, 40.195869>,  <32.232399, 32.453506, 40.200012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.995550, 32.492050, 40.195869>,  <31.600801, 32.556290, 40.188965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995550, 32.492050, 40.195869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127452, 0.708615, -0.693989,
		0.099220, 0.687077, 0.719779,
		0.986870, -0.160595, 0.017261,
		32.291611, 32.443871, 40.201046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893888, 33.231018, 40.002686>,  <31.600801, 32.556290, 40.188965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893888, 33.231018, 40.002686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193802, 32.971394, 39.951229>,  <32.373749, 32.815620, 39.920357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193802, 32.971394, 39.951229>,  <31.893888, 33.231018, 40.002686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193802, 32.971394, 39.951229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239306, 0.447250, -0.861800,
		0.616892, 0.615380, 0.490664,
		0.749785, -0.649057, -0.128641,
		32.418736, 32.776676, 39.912636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454983, 33.616161, 39.688412>,  <31.893888, 33.231018, 40.002686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454983, 33.616161, 39.688412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610424, 33.257851, 39.602085>,  <32.703690, 33.042866, 39.550289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610424, 33.257851, 39.602085>,  <32.454983, 33.616161, 39.688412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610424, 33.257851, 39.602085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257470, 0.330459, -0.908023,
		0.884703, 0.297291, 0.359052,
		0.388599, -0.895776, -0.215815,
		32.727005, 32.989117, 39.537342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108356, 33.714394, 39.361511>,  <32.454983, 33.616161, 39.688412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108356, 33.714394, 39.361511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982620, 33.354584, 39.240162>,  <32.907177, 33.138699, 39.167351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982620, 33.354584, 39.240162>,  <33.108356, 33.714394, 39.361511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982620, 33.354584, 39.240162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107608, 0.283752, -0.952841,
		0.943190, -0.332167, 0.007601,
		-0.314345, -0.899528, -0.303376,
		32.888317, 33.084724, 39.149151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797703, 33.729092, 39.482201>,  <33.108356, 33.714394, 39.361511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797703, 33.729092, 39.482201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877480, 34.119835, 39.513107>,  <33.925346, 34.354282, 39.531651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877480, 34.119835, 39.513107>,  <33.797703, 33.729092, 39.482201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877480, 34.119835, 39.513107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132470, -0.051246, 0.989861,
		0.970914, -0.207658, 0.119183,
		0.199445, 0.976858, 0.077264,
		33.937313, 34.412891, 39.536285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377174, 33.737244, 40.040924>,  <33.797703, 33.729092, 39.482201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377174, 33.737244, 40.040924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.227222, 34.107098, 40.014030>,  <34.137249, 34.329010, 39.997894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.227222, 34.107098, 40.014030>,  <34.377174, 33.737244, 40.040924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227222, 34.107098, 40.014030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272995, -0.040792, 0.961150,
		0.885967, 0.378673, 0.267712,
		-0.374882, 0.924631, -0.067235,
		34.114758, 34.384487, 39.993858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755005, 34.174496, 40.570572>,  <34.377174, 33.737244, 40.040924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755005, 34.174496, 40.570572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410900, 34.345303, 40.459141>,  <34.204437, 34.447788, 40.392284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410900, 34.345303, 40.459141>,  <34.755005, 34.174496, 40.570572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410900, 34.345303, 40.459141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257783, 0.107117, 0.960247,
		0.439883, 0.897876, 0.017929,
		-0.860262, 0.427018, -0.278576,
		34.152821, 34.473408, 40.375568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699173, 34.748276, 40.969559>,  <34.755005, 34.174496, 40.570572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699173, 34.748276, 40.969559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325981, 34.661228, 40.854885>,  <34.102066, 34.609001, 40.786079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325981, 34.661228, 40.854885>,  <34.699173, 34.748276, 40.969559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325981, 34.661228, 40.854885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311799, 0.090779, 0.945801,
		-0.179800, 0.971803, -0.152548,
		-0.932981, -0.217619, -0.286685,
		34.046085, 34.595943, 40.768879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167557, 35.258312, 41.306480>,  <34.699173, 34.748276, 40.969559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167557, 35.258312, 41.306480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948887, 34.940235, 41.201546>,  <33.817684, 34.749390, 41.138584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948887, 34.940235, 41.201546>,  <34.167557, 35.258312, 41.306480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948887, 34.940235, 41.201546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427485, -0.004351, 0.904012,
		-0.720005, 0.606342, -0.337554,
		-0.546671, -0.795192, -0.262335,
		33.784885, 34.701679, 41.122845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616386, 35.278854, 41.784805>,  <34.167557, 35.258312, 41.306480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616386, 35.278854, 41.784805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.557442, 34.916061, 41.626984>,  <33.522076, 34.698387, 41.532291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.557442, 34.916061, 41.626984>,  <33.616386, 35.278854, 41.784805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557442, 34.916061, 41.626984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420528, -0.303606, 0.854973,
		-0.895232, 0.291914, -0.336669,
		-0.147364, -0.906978, -0.394556,
		33.513233, 34.643967, 41.508617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950130, 35.203896, 41.976856>,  <33.616386, 35.278854, 41.784805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950130, 35.203896, 41.976856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133652, 34.851879, 41.927826>,  <33.243763, 34.640671, 41.898407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133652, 34.851879, 41.927826>,  <32.950130, 35.203896, 41.976856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133652, 34.851879, 41.927826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373109, -0.316014, 0.872310,
		-0.806405, -0.354486, -0.473340,
		0.458804, -0.880042, -0.122573,
		33.271294, 34.587868, 41.891052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467018, 34.744682, 42.116058>,  <32.950130, 35.203896, 41.976856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467018, 34.744682, 42.116058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.811939, 34.550159, 42.172527>,  <33.018894, 34.433445, 42.206409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.811939, 34.550159, 42.172527>,  <32.467018, 34.744682, 42.116058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811939, 34.550159, 42.172527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334553, -0.337843, 0.879737,
		-0.380138, -0.805828, -0.454022,
		0.862305, -0.486316, 0.141165,
		33.070633, 34.404266, 42.214878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294079, 34.272736, 42.601730>,  <32.467018, 34.744682, 42.116058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294079, 34.272736, 42.601730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689381, 34.211712, 42.605240>,  <32.926563, 34.175098, 42.607346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689381, 34.211712, 42.605240>,  <32.294079, 34.272736, 42.601730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689381, 34.211712, 42.605240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087499, -0.517879, 0.850967,
		-0.125281, -0.841740, -0.525145,
		0.988255, -0.152560, 0.008771,
		32.985859, 34.165943, 42.607872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326691, 33.647350, 42.931778>,  <32.294079, 34.272736, 42.601730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326691, 33.647350, 42.931778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.704369, 33.772438, 42.973160>,  <32.930977, 33.847492, 42.997990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.704369, 33.772438, 42.973160>,  <32.326691, 33.647350, 42.931778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704369, 33.772438, 42.973160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058741, -0.468900, 0.881296,
		0.324110, -0.826037, -0.461102,
		0.944194, 0.312722, 0.103453,
		32.987625, 33.866253, 43.004196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670166, 33.074112, 43.016281>,  <32.326691, 33.647350, 42.931778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670166, 33.074112, 43.016281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846725, 33.379810, 43.204361>,  <32.952660, 33.563229, 43.317211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846725, 33.379810, 43.204361>,  <32.670166, 33.074112, 43.016281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846725, 33.379810, 43.204361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018517, -0.531659, 0.846756,
		0.897119, -0.365051, -0.248826,
		0.441400, 0.764249, 0.470202,
		32.979145, 33.609085, 43.345421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296970, 32.785091, 43.270241>,  <32.670166, 33.074112, 43.016281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296970, 32.785091, 43.270241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.181087, 33.100513, 43.487221>,  <33.111557, 33.289768, 43.617409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.181087, 33.100513, 43.487221>,  <33.296970, 32.785091, 43.270241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181087, 33.100513, 43.487221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122860, -0.531426, 0.838148,
		0.949196, 0.309466, 0.057078,
		-0.289711, 0.788554, 0.542448,
		33.094173, 33.337078, 43.649956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710178, 32.703865, 43.961189>,  <33.296970, 32.785091, 43.270241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710178, 32.703865, 43.961189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420094, 32.963612, 44.052750>,  <33.246044, 33.119457, 44.107685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420094, 32.963612, 44.052750>,  <33.710178, 32.703865, 43.961189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420094, 32.963612, 44.052750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177077, -0.497167, 0.849393,
		0.665365, 0.575458, 0.475539,
		-0.725212, 0.649364, 0.228898,
		33.202530, 33.158421, 44.121418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778797, 32.764969, 44.658760>,  <33.710178, 32.703865, 43.961189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778797, 32.764969, 44.658760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412079, 32.918373, 44.614204>,  <33.192047, 33.010414, 44.587471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412079, 32.918373, 44.614204>,  <33.778797, 32.764969, 44.658760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412079, 32.918373, 44.614204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244263, -0.317829, 0.916144,
		0.315944, 0.867126, 0.385060,
		-0.916796, 0.383506, -0.111391,
		33.137039, 33.033424, 44.580788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354069, 33.230930, 44.936966>,  <33.778797, 32.764969, 44.658760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354069, 33.230930, 44.936966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663815, 33.205379, 45.188770>,  <34.849663, 33.190048, 45.339851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663815, 33.205379, 45.188770>,  <34.354069, 33.230930, 44.936966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663815, 33.205379, 45.188770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595445, 0.410105, -0.690839,
		-0.214036, 0.909799, 0.355605,
		0.774360, -0.063879, 0.629512,
		34.896122, 33.186214, 45.377625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610378, 33.901039, 44.919376>,  <34.354069, 33.230930, 44.936966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610378, 33.901039, 44.919376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891415, 33.637505, 45.026932>,  <35.060036, 33.479385, 45.091465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891415, 33.637505, 45.026932>,  <34.610378, 33.901039, 44.919376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891415, 33.637505, 45.026932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639866, 0.419598, -0.643823,
		0.311346, 0.624399, 0.716372,
		0.702591, -0.658834, 0.268892,
		35.102192, 33.439854, 45.107601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241943, 34.262470, 44.991196>,  <34.610378, 33.901039, 44.919376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241943, 34.262470, 44.991196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.328026, 33.875305, 44.939293>,  <35.379677, 33.643005, 44.908150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.328026, 33.875305, 44.939293>,  <35.241943, 34.262470, 44.991196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328026, 33.875305, 44.939293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714099, 0.246609, -0.655169,
		0.666144, 0.048335, 0.744255,
		0.215208, -0.967909, -0.129761,
		35.392590, 33.584934, 44.900364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926041, 34.277721, 44.810776>,  <35.241943, 34.262470, 44.991196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926041, 34.277721, 44.810776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.818161, 33.908859, 44.699860>,  <35.753433, 33.687542, 44.633308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.818161, 33.908859, 44.699860>,  <35.926041, 34.277721, 44.810776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818161, 33.908859, 44.699860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473388, 0.123794, -0.872112,
		0.838549, -0.366479, 0.403149,
		-0.269703, -0.922154, -0.277294,
		35.737251, 33.632214, 44.616673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502876, 33.964375, 44.535503>,  <35.926041, 34.277721, 44.810776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502876, 33.964375, 44.535503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.209709, 33.748978, 44.369198>,  <36.033810, 33.619740, 44.269413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.209709, 33.748978, 44.369198>,  <36.502876, 33.964375, 44.535503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209709, 33.748978, 44.369198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507073, -0.024963, -0.861542,
		0.453552, -0.842263, 0.291348,
		-0.732918, -0.538488, -0.415767,
		35.989834, 33.587433, 44.244469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899467, 33.480804, 44.126659>,  <36.502876, 33.964375, 44.535503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899467, 33.480804, 44.126659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.523750, 33.490574, 43.989758>,  <36.298321, 33.496433, 43.907616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.523750, 33.490574, 43.989758>,  <36.899467, 33.480804, 44.126659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523750, 33.490574, 43.989758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341352, -0.034872, -0.939288,
		-0.034872, -0.999094, 0.024419,
		0.939288, -0.024419, 0.342259,
		36.241962, 33.497898, 43.887081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818253, 33.059727, 43.421936>,  <36.899467, 33.480804, 44.126659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818253, 33.059727, 43.421936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.507225, 33.310760, 43.437542>,  <36.320610, 33.461380, 43.446907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.507225, 33.310760, 43.437542>,  <36.818253, 33.059727, 43.421936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507225, 33.310760, 43.437542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084015, 0.165189, -0.982677,
		-0.623161, -0.760820, -0.181172,
		-0.777568, 0.627587, 0.039019,
		36.273956, 33.499035, 43.449249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467758, 32.890396, 42.884117>,  <36.818253, 33.059727, 43.421936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467758, 32.890396, 42.884117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.363937, 33.269329, 42.959148>,  <36.301643, 33.496689, 43.004166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.363937, 33.269329, 42.959148>,  <36.467758, 32.890396, 42.884117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363937, 33.269329, 42.959148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090217, 0.217172, -0.971955,
		-0.961506, -0.235350, -0.141833,
		-0.259552, 0.947337, 0.187579,
		36.286072, 33.553532, 43.015423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982433, 33.061001, 42.351921>,  <36.467758, 32.890396, 42.884117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982433, 33.061001, 42.351921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107563, 33.420181, 42.475746>,  <36.182640, 33.635689, 42.550041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107563, 33.420181, 42.475746>,  <35.982433, 33.061001, 42.351921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107563, 33.420181, 42.475746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281303, 0.223710, -0.933179,
		-0.907199, 0.379002, -0.182614,
		0.312825, 0.897948, 0.309564,
		36.201412, 33.689568, 42.568615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730225, 33.589714, 41.875446>,  <35.982433, 33.061001, 42.351921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730225, 33.589714, 41.875446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.040287, 33.770405, 42.052113>,  <36.226326, 33.878819, 42.158112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.040287, 33.770405, 42.052113>,  <35.730225, 33.589714, 41.875446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040287, 33.770405, 42.052113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282513, 0.377456, -0.881881,
		-0.565079, 0.808375, 0.164970,
		0.775159, 0.451726, 0.441669,
		36.272835, 33.905922, 42.184612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621883, 34.395805, 41.840908>,  <35.730225, 33.589714, 41.875446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621883, 34.395805, 41.840908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012417, 34.325932, 41.891926>,  <36.246735, 34.284008, 41.922535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012417, 34.325932, 41.891926>,  <35.621883, 34.395805, 41.840908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012417, 34.325932, 41.891926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185335, 0.371681, -0.909672,
		0.111503, 0.911777, 0.395259,
		0.976329, -0.174686, 0.127540,
		36.305317, 34.273525, 41.930187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877392, 35.039841, 41.590824>,  <35.621883, 34.395805, 41.840908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877392, 35.039841, 41.590824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.179588, 34.780792, 41.630440>,  <36.360909, 34.625362, 41.654209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.179588, 34.780792, 41.630440>,  <35.877392, 35.039841, 41.590824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179588, 34.780792, 41.630440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314989, 0.226507, -0.921671,
		0.574464, 0.727514, 0.375120,
		0.755495, -0.647625, 0.099039,
		36.406239, 34.586506, 41.660152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512936, 35.387051, 41.365952>,  <35.877392, 35.039841, 41.590824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512936, 35.387051, 41.365952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.581394, 34.994026, 41.336872>,  <36.622471, 34.758213, 41.319424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.581394, 34.994026, 41.336872>,  <36.512936, 35.387051, 41.365952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581394, 34.994026, 41.336872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369633, 0.132430, -0.919692,
		0.913279, 0.130536, 0.385852,
		0.171151, -0.982559, -0.072695,
		36.632740, 34.699257, 41.315063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214542, 35.354389, 41.217949>,  <36.512936, 35.387051, 41.365952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214542, 35.354389, 41.217949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.016129, 35.027016, 41.101936>,  <36.897079, 34.830593, 41.032330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.016129, 35.027016, 41.101936>,  <37.214542, 35.354389, 41.217949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016129, 35.027016, 41.101936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359304, 0.110610, -0.926642,
		0.790472, -0.563860, 0.239198,
		-0.496039, -0.818430, -0.290031,
		36.867317, 34.781487, 41.014927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.616816, 36.465591, 42.857136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279272, 36.601246, 43.023457>,  <29.076746, 36.682640, 43.123249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279272, 36.601246, 43.023457>,  <29.616816, 36.465591, 42.857136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279272, 36.601246, 43.023457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494184, -0.189377, -0.848480,
		-0.209013, -0.921476, 0.327406,
		-0.843858, 0.339142, 0.415796,
		29.026114, 36.702988, 43.148197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025650, 36.075111, 42.598907>,  <29.616816, 36.465591, 42.857136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025650, 36.075111, 42.598907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885302, 36.432911, 42.709736>,  <28.801092, 36.647591, 42.776234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885302, 36.432911, 42.709736>,  <29.025650, 36.075111, 42.598907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885302, 36.432911, 42.709736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669136, -0.032510, -0.742428,
		-0.655091, -0.445893, 0.609946,
		-0.350873, 0.894496, 0.277066,
		28.780039, 36.701260, 42.792854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410101, 35.932423, 42.775623>,  <29.025650, 36.075111, 42.598907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410101, 35.932423, 42.775623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.439978, 36.315479, 42.664383>,  <28.457905, 36.545315, 42.597637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.439978, 36.315479, 42.664383>,  <28.410101, 35.932423, 42.775623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439978, 36.315479, 42.664383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654450, -0.163343, -0.738251,
		-0.752407, 0.237145, 0.614529,
		0.074694, 0.957644, -0.278100,
		28.462385, 36.602772, 42.580952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712526, 36.144226, 42.628754>,  <28.410101, 35.932423, 42.775623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712526, 36.144226, 42.628754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.919014, 36.412773, 42.416046>,  <28.042906, 36.573902, 42.288422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.919014, 36.412773, 42.416046>,  <27.712526, 36.144226, 42.628754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919014, 36.412773, 42.416046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661208, -0.082227, -0.745683,
		-0.544355, 0.736546, 0.401469,
		0.516218, 0.671371, -0.531771,
		28.073879, 36.614185, 42.256516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241901, 36.587887, 42.348297>,  <27.712526, 36.144226, 42.628754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241901, 36.587887, 42.348297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.562292, 36.631371, 42.112801>,  <27.754526, 36.657459, 41.971500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.562292, 36.631371, 42.112801>,  <27.241901, 36.587887, 42.348297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562292, 36.631371, 42.112801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583771, -0.076405, -0.808316,
		-0.132851, 0.991133, 0.002260,
		0.800976, 0.108705, -0.588745,
		27.802586, 36.663982, 41.936176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116741, 37.172237, 41.784092>,  <27.241901, 36.587887, 42.348297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116741, 37.172237, 41.784092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411615, 36.945850, 41.636452>,  <27.588539, 36.810017, 41.547867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411615, 36.945850, 41.636452>,  <27.116741, 37.172237, 41.784092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411615, 36.945850, 41.636452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417304, 0.048275, -0.907484,
		0.531429, 0.823010, -0.200595,
		0.737185, -0.565972, -0.369100,
		27.632771, 36.776058, 41.525723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223778, 37.461365, 41.146969>,  <27.116741, 37.172237, 41.784092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223778, 37.461365, 41.146969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.403061, 37.105099, 41.116436>,  <27.510630, 36.891338, 41.098114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.403061, 37.105099, 41.116436>,  <27.223778, 37.461365, 41.146969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403061, 37.105099, 41.116436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341213, -0.091529, -0.935519,
		0.826247, 0.445352, -0.344931,
		0.448206, -0.890665, -0.076334,
		27.537523, 36.837898, 41.093536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350822, 37.424862, 40.496788>,  <27.223778, 37.461365, 41.146969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350822, 37.424862, 40.496788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417307, 37.039871, 40.582584>,  <27.457197, 36.808876, 40.634060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417307, 37.039871, 40.582584>,  <27.350822, 37.424862, 40.496788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417307, 37.039871, 40.582584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524854, -0.270492, -0.807070,
		0.834807, 0.021569, -0.550120,
		0.166211, -0.962481, 0.214488,
		27.467171, 36.751125, 40.646931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582775, 37.130272, 39.923138>,  <27.350822, 37.424862, 40.496788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582775, 37.130272, 39.923138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.455713, 36.807789, 40.122787>,  <27.379477, 36.614300, 40.242577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.455713, 36.807789, 40.122787>,  <27.582775, 37.130272, 39.923138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455713, 36.807789, 40.122787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461764, -0.328225, -0.824040,
		0.828173, -0.492237, -0.268016,
		-0.317654, -0.806208, 0.499124,
		27.360416, 36.565926, 40.272526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703739, 36.618668, 39.465740>,  <27.582775, 37.130272, 39.923138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703739, 36.618668, 39.465740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.438885, 36.438286, 39.705147>,  <27.279972, 36.330059, 39.848789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.438885, 36.438286, 39.705147>,  <27.703739, 36.618668, 39.465740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438885, 36.438286, 39.705147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498187, -0.331743, -0.801097,
		0.559810, -0.828606, -0.005000,
		-0.662135, -0.450953, 0.598514,
		27.240244, 36.303001, 39.884701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463511, 35.978771, 39.070572>,  <27.703739, 36.618668, 39.465740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463511, 35.978771, 39.070572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195801, 36.053337, 39.358273>,  <27.035175, 36.098076, 39.530891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195801, 36.053337, 39.358273>,  <27.463511, 35.978771, 39.070572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195801, 36.053337, 39.358273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738777, -0.270217, -0.617407,
		0.079261, -0.944580, 0.318568,
		-0.669273, 0.186415, 0.719251,
		26.995018, 36.109261, 39.574047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096819, 35.450504, 39.141846>,  <27.463511, 35.978771, 39.070572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096819, 35.450504, 39.141846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.881212, 35.772953, 39.239525>,  <26.751848, 35.966423, 39.298134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.881212, 35.772953, 39.239525>,  <27.096819, 35.450504, 39.141846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881212, 35.772953, 39.239525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720588, -0.291207, -0.629247,
		-0.436137, -0.515138, 0.737846,
		-0.539015, 0.806122, 0.244196,
		26.719507, 36.014790, 39.312782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545578, 35.249100, 39.545647>,  <27.096819, 35.450504, 39.141846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545578, 35.249100, 39.545647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.458706, 35.585529, 39.347481>,  <26.406582, 35.787388, 39.228580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.458706, 35.585529, 39.347481>,  <26.545578, 35.249100, 39.545647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458706, 35.585529, 39.347481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574674, -0.520417, -0.631598,
		-0.789039, 0.147529, 0.596366,
		-0.217180, 0.841071, -0.495410,
		26.393551, 35.837852, 39.198856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937716, 35.037277, 39.256973>,  <26.545578, 35.249100, 39.545647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937716, 35.037277, 39.256973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.994532, 35.390987, 39.079037>,  <26.028622, 35.603214, 38.972275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.994532, 35.390987, 39.079037>,  <25.937716, 35.037277, 39.256973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994532, 35.390987, 39.079037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505798, -0.321458, -0.800521,
		-0.850878, 0.338703, 0.401605,
		0.142039, 0.884277, -0.444837,
		26.037144, 35.656269, 38.945587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.285225, 35.223656, 38.866970>,  <25.937716, 35.037277, 39.256973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.285225, 35.223656, 38.866970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.565638, 35.453110, 38.697502>,  <25.733885, 35.590782, 38.595821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.565638, 35.453110, 38.697502>,  <25.285225, 35.223656, 38.866970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565638, 35.453110, 38.697502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468987, -0.076707, -0.879868,
		-0.537221, 0.815512, 0.215253,
		0.701031, 0.573634, -0.423674,
		25.775948, 35.625198, 38.570400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.901018, 35.667614, 38.389648>,  <25.285225, 35.223656, 38.866970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.901018, 35.667614, 38.389648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.282763, 35.652092, 38.271198>,  <25.511808, 35.642780, 38.200127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.282763, 35.652092, 38.271198>,  <24.901018, 35.667614, 38.389648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.282763, 35.652092, 38.271198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298417, -0.083767, -0.950753,
		0.012084, 0.995730, -0.091523,
		0.954359, -0.038801, -0.296130,
		25.569071, 35.640453, 38.182358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.757135, 36.035553, 37.763962>,  <24.901018, 35.667614, 38.389648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.757135, 36.035553, 37.763962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.102713, 35.837219, 37.728745>,  <25.310059, 35.718220, 37.707615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.102713, 35.837219, 37.728745>,  <24.757135, 36.035553, 37.763962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102713, 35.837219, 37.728745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216269, -0.207425, -0.954045,
		0.454782, 0.843284, -0.286437,
		0.863945, -0.495830, -0.088043,
		25.361897, 35.688469, 37.702332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267345, 36.251293, 37.154633>,  <24.757135, 36.035553, 37.763962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267345, 36.251293, 37.154633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.399010, 35.879528, 37.221390>,  <25.478008, 35.656471, 37.261444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.399010, 35.879528, 37.221390>,  <25.267345, 36.251293, 37.154633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399010, 35.879528, 37.221390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316019, -0.274978, -0.908031,
		0.889823, 0.246146, -0.384222,
		0.329160, -0.929408, 0.166895,
		25.497757, 35.600704, 37.271458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741915, 36.093578, 36.610840>,  <25.267345, 36.251293, 37.154633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741915, 36.093578, 36.610840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.635775, 35.727726, 36.732849>,  <25.572090, 35.508213, 36.806053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.635775, 35.727726, 36.732849>,  <25.741915, 36.093578, 36.610840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635775, 35.727726, 36.732849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370561, -0.195316, -0.908040,
		0.890098, -0.353977, -0.287100,
		-0.265350, -0.914632, 0.305020,
		25.556170, 35.453335, 36.824356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921293, 35.540859, 36.170341>,  <25.741915, 36.093578, 36.610840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921293, 35.540859, 36.170341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.609495, 35.349987, 36.332664>,  <25.422417, 35.235462, 36.430058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.609495, 35.349987, 36.332664>,  <25.921293, 35.540859, 36.170341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609495, 35.349987, 36.332664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246630, -0.361720, -0.899073,
		0.575814, -0.800908, 0.164271,
		-0.779495, -0.477184, 0.405812,
		25.375647, 35.206833, 36.454407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766607, 35.062820, 35.609707>,  <25.921293, 35.540859, 36.170341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766607, 35.062820, 35.609707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.437819, 35.067089, 35.837479>,  <25.240545, 35.069649, 35.974140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.437819, 35.067089, 35.837479>,  <25.766607, 35.062820, 35.609707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437819, 35.067089, 35.837479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527128, -0.392808, -0.753550,
		0.215638, -0.919558, 0.328500,
		-0.821971, 0.010668, 0.569430,
		25.191227, 35.070290, 36.008308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296547, 34.660828, 35.414261>,  <25.766607, 35.062820, 35.609707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296547, 34.660828, 35.414261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659788, 34.585121, 35.264851>,  <26.877733, 34.539696, 35.175205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659788, 34.585121, 35.264851>,  <26.296547, 34.660828, 35.414261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659788, 34.585121, 35.264851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308510, -0.300751, 0.902425,
		-0.283124, -0.934737, -0.214729,
		0.908109, -0.189252, -0.373526,
		26.932220, 34.528339, 35.152790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486712, 34.012600, 35.637642>,  <26.296547, 34.660828, 35.414261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486712, 34.012600, 35.637642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837690, 34.176048, 35.537151>,  <27.048277, 34.274117, 35.476856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837690, 34.176048, 35.537151>,  <26.486712, 34.012600, 35.637642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837690, 34.176048, 35.537151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374779, -0.257139, 0.890741,
		0.299380, -0.875731, -0.378770,
		0.877446, 0.408625, -0.251224,
		27.100924, 34.298637, 35.461784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028908, 33.532925, 35.735504>,  <26.486712, 34.012600, 35.637642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028908, 33.532925, 35.735504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210911, 33.888157, 35.761700>,  <27.320112, 34.101295, 35.777416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210911, 33.888157, 35.761700>,  <27.028908, 33.532925, 35.735504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210911, 33.888157, 35.761700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552738, -0.339327, 0.761142,
		0.698175, -0.310126, -0.645270,
		0.455007, 0.888076, 0.065491,
		27.347414, 34.154579, 35.781345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677721, 33.383820, 35.877384>,  <27.028908, 33.532925, 35.735504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677721, 33.383820, 35.877384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667206, 33.770298, 35.979977>,  <27.660896, 34.002186, 36.041531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667206, 33.770298, 35.979977>,  <27.677721, 33.383820, 35.877384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667206, 33.770298, 35.979977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472026, -0.214164, 0.855175,
		0.881192, 0.143546, -0.450438,
		-0.026290, 0.966193, 0.256477,
		27.659319, 34.060154, 36.056919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380907, 33.569408, 36.142773>,  <27.677721, 33.383820, 35.877384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380907, 33.569408, 36.142773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.111343, 33.822510, 36.295330>,  <27.949606, 33.974373, 36.386864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.111343, 33.822510, 36.295330>,  <28.380907, 33.569408, 36.142773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111343, 33.822510, 36.295330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389685, -0.134156, 0.911124,
		0.627687, 0.762640, -0.156167,
		-0.673909, 0.632757, 0.381398,
		27.909170, 34.012337, 36.409748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718676, 34.168175, 36.511852>,  <28.380907, 33.569408, 36.142773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718676, 34.168175, 36.511852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359583, 34.150127, 36.687141>,  <28.144127, 34.139297, 36.792316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359583, 34.150127, 36.687141>,  <28.718676, 34.168175, 36.511852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359583, 34.150127, 36.687141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438225, 0.010385, 0.898805,
		-0.045105, 0.998928, 0.010450,
		-0.897733, -0.045120, 0.438223,
		28.090263, 34.136593, 36.818607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683453, 34.513397, 37.015652>,  <28.718676, 34.168175, 36.511852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683453, 34.513397, 37.015652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359644, 34.308403, 37.130222>,  <28.165359, 34.185406, 37.198963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359644, 34.308403, 37.130222>,  <28.683453, 34.513397, 37.015652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359644, 34.308403, 37.130222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354432, -0.037673, 0.934323,
		-0.468035, 0.857870, 0.212138,
		-0.809519, -0.512484, 0.286424,
		28.116789, 34.154659, 37.216148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578783, 34.793659, 37.679752>,  <28.683453, 34.513397, 37.015652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578783, 34.793659, 37.679752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321264, 34.488293, 37.700630>,  <28.166754, 34.305073, 37.713158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321264, 34.488293, 37.700630>,  <28.578783, 34.793659, 37.679752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321264, 34.488293, 37.700630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156319, -0.064441, 0.985602,
		-0.749059, 0.642687, 0.160823,
		-0.643797, -0.763414, 0.052194,
		28.128124, 34.259270, 37.716290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090401, 34.959236, 38.207645>,  <28.578783, 34.793659, 37.679752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090401, 34.959236, 38.207645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.084822, 34.562168, 38.159622>,  <28.081474, 34.323929, 38.130810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.084822, 34.562168, 38.159622>,  <28.090401, 34.959236, 38.207645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084822, 34.562168, 38.159622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038991, -0.119435, 0.992076,
		-0.999142, 0.018516, -0.037040,
		-0.013946, -0.992669, -0.120054,
		28.080639, 34.264366, 38.123608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567837, 34.713871, 38.575069>,  <28.090401, 34.959236, 38.207645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567837, 34.713871, 38.575069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814745, 34.400253, 38.549007>,  <27.962891, 34.212082, 38.533371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814745, 34.400253, 38.549007>,  <27.567837, 34.713871, 38.575069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814745, 34.400253, 38.549007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013226, -0.093145, 0.995565,
		-0.786639, -0.613672, -0.067866,
		0.617272, -0.784047, -0.065156,
		27.999926, 34.165039, 38.529461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342896, 34.195438, 39.044472>,  <27.567837, 34.713871, 38.575069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342896, 34.195438, 39.044472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716902, 34.078506, 38.964184>,  <27.941305, 34.008347, 38.916012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716902, 34.078506, 38.964184>,  <27.342896, 34.195438, 39.044472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716902, 34.078506, 38.964184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117535, -0.278551, 0.953202,
		-0.334568, -0.914849, -0.226089,
		0.935013, -0.292338, -0.200721,
		27.997406, 33.990807, 38.903969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399763, 33.511253, 39.361958>,  <27.342896, 34.195438, 39.044472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399763, 33.511253, 39.361958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774195, 33.643150, 39.312935>,  <27.998854, 33.722290, 39.283520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774195, 33.643150, 39.312935>,  <27.399763, 33.511253, 39.361958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774195, 33.643150, 39.312935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228599, -0.305374, 0.924386,
		0.267388, -0.893316, -0.361234,
		0.936080, 0.329747, -0.122558,
		28.055019, 33.742073, 39.276169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758385, 32.997715, 39.616783>,  <27.399763, 33.511253, 39.361958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758385, 32.997715, 39.616783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011011, 33.307449, 39.632412>,  <28.162586, 33.493290, 39.641788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011011, 33.307449, 39.632412>,  <27.758385, 32.997715, 39.616783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011011, 33.307449, 39.632412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202784, -0.213613, 0.955640,
		0.748335, -0.595625, -0.291934,
		0.631564, 0.774338, 0.039071,
		28.200481, 33.539749, 39.644135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333101, 32.740150, 39.902424>,  <27.758385, 32.997715, 39.616783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333101, 32.740150, 39.902424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349091, 33.134972, 39.964561>,  <28.358685, 33.371864, 40.001846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349091, 33.134972, 39.964561>,  <28.333101, 32.740150, 39.902424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349091, 33.134972, 39.964561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077930, -0.158076, 0.984347,
		0.996157, -0.027240, -0.083239,
		0.039971, 0.987051, 0.155346,
		28.361082, 33.431087, 40.011166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827488, 32.820114, 40.406868>,  <28.333101, 32.740150, 39.902424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827488, 32.820114, 40.406868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605600, 33.152733, 40.418327>,  <28.472467, 33.352303, 40.425201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605600, 33.152733, 40.418327>,  <28.827488, 32.820114, 40.406868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605600, 33.152733, 40.418327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056478, -0.071985, 0.995805,
		0.830119, 0.550774, 0.086895,
		-0.554719, 0.831545, 0.028650,
		28.439184, 33.402195, 40.426922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087400, 33.143318, 41.013882>,  <28.827488, 32.820114, 40.406868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087400, 33.143318, 41.013882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729389, 33.303795, 40.935944>,  <28.514582, 33.400082, 40.889179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729389, 33.303795, 40.935944>,  <29.087400, 33.143318, 41.013882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729389, 33.303795, 40.935944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160701, 0.117440, 0.979991,
		0.416051, 0.908433, -0.040639,
		-0.895029, 0.401196, -0.194847,
		28.460880, 33.424152, 40.877491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039396, 33.529736, 41.609062>,  <29.087400, 33.143318, 41.013882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039396, 33.529736, 41.609062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.678247, 33.579350, 41.444408>,  <28.461559, 33.609119, 41.345615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.678247, 33.579350, 41.444408>,  <29.039396, 33.529736, 41.609062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678247, 33.579350, 41.444408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396917, 0.127358, 0.908976,
		0.165169, 0.984071, -0.065757,
		-0.902871, 0.124035, -0.411630,
		28.407387, 33.616558, 41.320919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745279, 34.165794, 41.733597>,  <29.039396, 33.529736, 41.609062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745279, 34.165794, 41.733597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.431040, 33.927795, 41.665695>,  <28.242496, 33.784996, 41.624954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.431040, 33.927795, 41.665695>,  <28.745279, 34.165794, 41.733597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431040, 33.927795, 41.665695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454513, 0.368789, 0.810809,
		-0.419825, 0.714125, -0.560153,
		-0.785598, -0.594995, -0.169753,
		28.195360, 33.749298, 41.614769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087093, 34.523575, 41.956661>,  <28.745279, 34.165794, 41.733597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087093, 34.523575, 41.956661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970940, 34.142750, 41.918167>,  <27.901247, 33.914257, 41.895069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970940, 34.142750, 41.918167>,  <28.087093, 34.523575, 41.956661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970940, 34.142750, 41.918167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621500, 0.111174, 0.775486,
		-0.727608, 0.285001, -0.623988,
		-0.290385, -0.952058, -0.096237,
		27.883823, 33.857132, 41.889297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372610, 34.536640, 41.988590>,  <28.087093, 34.523575, 41.956661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372610, 34.536640, 41.988590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478651, 34.166954, 42.098534>,  <27.542276, 33.945141, 42.164497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478651, 34.166954, 42.098534>,  <27.372610, 34.536640, 41.988590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478651, 34.166954, 42.098534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583596, 0.073117, 0.808746,
		-0.767552, -0.374805, -0.519985,
		0.265102, -0.924216, 0.274856,
		27.558182, 33.889690, 42.180992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755171, 34.265835, 42.171265>,  <27.372610, 34.536640, 41.988590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755171, 34.265835, 42.171265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027498, 34.015491, 42.323467>,  <27.190895, 33.865284, 42.414791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027498, 34.015491, 42.323467>,  <26.755171, 34.265835, 42.171265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027498, 34.015491, 42.323467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363254, 0.162602, 0.917391,
		-0.636029, -0.762798, -0.116643,
		0.680818, -0.625859, 0.380509,
		27.231743, 33.827732, 42.437618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.324413, 29.158127, 44.638546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931988, 29.215818, 44.690269>,  <35.696533, 29.250433, 44.721302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931988, 29.215818, 44.690269>,  <36.324413, 29.158127, 44.638546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931988, 29.215818, 44.690269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149887, 0.142365, 0.978400,
		0.122703, 0.979250, -0.161287,
		-0.981060, 0.144228, 0.129308,
		35.637669, 29.259087, 44.729061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345280, 29.698896, 45.149689>,  <36.324413, 29.158127, 44.638546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345280, 29.698896, 45.149689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.977371, 29.542482, 45.136364>,  <35.756626, 29.448633, 45.128368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.977371, 29.542482, 45.136364>,  <36.345280, 29.698896, 45.149689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977371, 29.542482, 45.136364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003548, -0.076589, 0.997057,
		-0.392435, 0.917184, 0.069057,
		-0.919773, -0.391035, -0.033311,
		35.701439, 29.425173, 45.126369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804104, 30.161184, 45.547131>,  <36.345280, 29.698896, 45.149689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804104, 30.161184, 45.547131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707176, 29.773270, 45.535831>,  <35.649021, 29.540522, 45.529053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707176, 29.773270, 45.535831>,  <35.804104, 30.161184, 45.547131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707176, 29.773270, 45.535831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153957, 0.009694, 0.988030,
		-0.957904, 0.243766, -0.151655,
		-0.242318, -0.969786, -0.028243,
		35.634480, 29.482334, 45.527359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205959, 30.186066, 45.991951>,  <35.804104, 30.161184, 45.547131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205959, 30.186066, 45.991951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311142, 29.800550, 45.974197>,  <35.374252, 29.569242, 45.963547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311142, 29.800550, 45.974197>,  <35.205959, 30.186066, 45.991951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311142, 29.800550, 45.974197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315613, -0.129398, 0.940024,
		-0.911726, -0.233175, -0.338209,
		0.262954, -0.963787, -0.044382,
		35.390030, 29.511414, 45.960884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684628, 29.870745, 46.337738>,  <35.205959, 30.186066, 45.991951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684628, 29.870745, 46.337738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.976410, 29.597858, 46.317841>,  <35.151478, 29.434126, 46.305901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.976410, 29.597858, 46.317841>,  <34.684628, 29.870745, 46.337738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976410, 29.597858, 46.317841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183735, -0.265471, 0.946450,
		-0.658891, -0.681252, -0.318996,
		0.729454, -0.682218, -0.049746,
		35.195248, 29.393192, 46.302917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390888, 29.240164, 46.551491>,  <34.684628, 29.870745, 46.337738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390888, 29.240164, 46.551491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.785923, 29.218887, 46.610607>,  <35.022945, 29.206121, 46.646076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.785923, 29.218887, 46.610607>,  <34.390888, 29.240164, 46.551491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785923, 29.218887, 46.610607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157069, -0.326177, 0.932168,
		-0.001378, -0.943811, -0.330483,
		0.987587, -0.053193, 0.147794,
		35.082199, 29.202930, 46.654945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521973, 28.719906, 47.052845>,  <34.390888, 29.240164, 46.551491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521973, 28.719906, 47.052845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877720, 28.897495, 47.096485>,  <35.091167, 29.004049, 47.122669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877720, 28.897495, 47.096485>,  <34.521973, 28.719906, 47.052845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877720, 28.897495, 47.096485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016907, -0.270416, 0.962595,
		0.456871, -0.854261, -0.248007,
		0.889372, 0.443975, 0.109102,
		35.144531, 29.030687, 47.129215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984497, 28.190842, 47.449379>,  <34.521973, 28.719906, 47.052845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984497, 28.190842, 47.449379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168625, 28.545353, 47.469872>,  <35.279102, 28.758059, 47.482166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168625, 28.545353, 47.469872>,  <34.984497, 28.190842, 47.449379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168625, 28.545353, 47.469872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118328, -0.118442, 0.985885,
		0.879835, -0.447756, -0.159392,
		0.460314, 0.886276, 0.051228,
		35.306721, 28.811235, 47.485241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706127, 28.109270, 47.727303>,  <34.984497, 28.190842, 47.449379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706127, 28.109270, 47.727303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549301, 28.473061, 47.782642>,  <35.455204, 28.691336, 47.815845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549301, 28.473061, 47.782642>,  <35.706127, 28.109270, 47.727303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549301, 28.473061, 47.782642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039907, -0.167059, 0.985139,
		0.919072, 0.380716, 0.101792,
		-0.392064, 0.909476, 0.138346,
		35.431683, 28.745903, 47.824146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033237, 28.286530, 48.375809>,  <35.706127, 28.109270, 47.727303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033237, 28.286530, 48.375809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750816, 28.564991, 48.323868>,  <35.581364, 28.732067, 48.292706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750816, 28.564991, 48.323868>,  <36.033237, 28.286530, 48.375809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750816, 28.564991, 48.323868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255899, -0.079841, 0.963401,
		0.660307, 0.713440, 0.234517,
		-0.706053, 0.696153, -0.129849,
		35.539001, 28.773836, 48.284912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161522, 28.808971, 48.963295>,  <36.033237, 28.286530, 48.375809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161522, 28.808971, 48.963295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789474, 28.826872, 48.817486>,  <35.566246, 28.837612, 48.730000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789474, 28.826872, 48.817486>,  <36.161522, 28.808971, 48.963295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789474, 28.826872, 48.817486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362081, 0.054282, 0.930565,
		0.061433, 0.997522, -0.034285,
		-0.930120, 0.044753, -0.364519,
		35.510437, 28.840298, 48.708130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808708, 29.400959, 49.315380>,  <36.161522, 28.808971, 48.963295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808708, 29.400959, 49.315380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534054, 29.130949, 49.207401>,  <35.369263, 28.968943, 49.142612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534054, 29.130949, 49.207401>,  <35.808708, 29.400959, 49.315380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534054, 29.130949, 49.207401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326837, -0.045055, 0.944006,
		-0.649391, 0.736417, -0.189688,
		-0.686636, -0.675026, -0.269947,
		35.328064, 28.928442, 49.126419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093857, 29.475874, 49.748299>,  <35.808708, 29.400959, 49.315380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093857, 29.475874, 49.748299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083382, 29.099640, 49.612877>,  <35.077099, 28.873899, 49.531624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083382, 29.099640, 49.612877>,  <35.093857, 29.475874, 49.748299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083382, 29.099640, 49.612877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193229, -0.327519, 0.924875,
		-0.980804, 0.089635, -0.173172,
		-0.026184, -0.940583, -0.338552,
		35.075527, 28.817465, 49.511311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458160, 29.046646, 49.956558>,  <35.093857, 29.475874, 49.748299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458160, 29.046646, 49.956558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765766, 28.791725, 49.936699>,  <34.950329, 28.638773, 49.924782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765766, 28.791725, 49.936699>,  <34.458160, 29.046646, 49.956558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765766, 28.791725, 49.936699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158605, -0.265474, 0.950983,
		-0.619244, -0.723444, -0.305232,
		0.769013, -0.637302, -0.049651,
		34.996471, 28.600534, 49.921803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934120, 29.656702, 50.011467>,  <34.458160, 29.046646, 49.956558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934120, 29.656702, 50.011467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856613, 30.039433, 50.098129>,  <33.810108, 30.269072, 50.150127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856613, 30.039433, 50.098129>,  <33.934120, 29.656702, 50.011467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856613, 30.039433, 50.098129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498254, 0.286217, -0.818427,
		-0.845102, -0.050632, -0.532201,
		-0.193764, 0.956826, 0.216655,
		33.798485, 30.326481, 50.163124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551380, 29.950178, 49.442894>,  <33.934120, 29.656702, 50.011467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551380, 29.950178, 49.442894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711552, 30.258379, 49.641281>,  <33.807655, 30.443300, 49.760311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711552, 30.258379, 49.641281>,  <33.551380, 29.950178, 49.442894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711552, 30.258379, 49.641281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237234, 0.435627, -0.868302,
		-0.885086, 0.465352, -0.008353,
		0.400427, 0.770504, 0.495965,
		33.831680, 30.489531, 49.790070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430931, 30.492668, 48.969757>,  <33.551380, 29.950178, 49.442894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430931, 30.492668, 48.969757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675556, 30.667782, 49.233372>,  <33.822330, 30.772850, 49.391541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675556, 30.667782, 49.233372>,  <33.430931, 30.492668, 48.969757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675556, 30.667782, 49.233372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372980, 0.575082, -0.728125,
		-0.697765, 0.691104, 0.188414,
		0.611564, 0.437786, 0.659040,
		33.859024, 30.799118, 49.431084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175587, 31.147743, 49.059467>,  <33.430931, 30.492668, 48.969757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175587, 31.147743, 49.059467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558659, 31.130394, 49.173283>,  <33.788502, 31.119984, 49.241573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558659, 31.130394, 49.173283>,  <33.175587, 31.147743, 49.059467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558659, 31.130394, 49.173283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218855, 0.751799, -0.622013,
		-0.186938, 0.657964, 0.729477,
		0.957683, -0.043372, 0.284539,
		33.845963, 31.117382, 49.258644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341324, 31.803928, 49.119038>,  <33.175587, 31.147743, 49.059467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341324, 31.803928, 49.119038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696316, 31.627670, 49.065056>,  <33.909309, 31.521915, 49.032665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696316, 31.627670, 49.065056>,  <33.341324, 31.803928, 49.119038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696316, 31.627670, 49.065056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307053, 0.783759, -0.539853,
		0.343658, 0.437669, 0.830870,
		0.887478, -0.440646, -0.134957,
		33.962559, 31.495476, 49.024570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708492, 32.451611, 49.065788>,  <33.341324, 31.803928, 49.119038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708492, 32.451611, 49.065788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957203, 32.159115, 48.953590>,  <34.106430, 31.983616, 48.886272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957203, 32.159115, 48.953590>,  <33.708492, 32.451611, 49.065788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957203, 32.159115, 48.953590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447841, 0.625773, -0.638629,
		0.642521, 0.271465, 0.716571,
		0.621776, -0.731242, -0.280499,
		34.143734, 31.939743, 48.869442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362877, 32.869019, 48.942913>,  <33.708492, 32.451611, 49.065788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362877, 32.869019, 48.942913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.326935, 32.525787, 48.740673>,  <34.305370, 32.319847, 48.619328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.326935, 32.525787, 48.740673>,  <34.362877, 32.869019, 48.942913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326935, 32.525787, 48.740673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344694, 0.449488, -0.824104,
		0.934405, -0.248326, 0.255386,
		-0.089854, -0.858076, -0.505600,
		34.299980, 32.268364, 48.588993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836521, 32.998867, 48.497162>,  <34.362877, 32.869019, 48.942913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836521, 32.998867, 48.497162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620010, 32.693279, 48.356663>,  <34.490105, 32.509926, 48.272366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620010, 32.693279, 48.356663>,  <34.836521, 32.998867, 48.497162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620010, 32.693279, 48.356663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207480, 0.283461, -0.936270,
		0.814846, -0.579655, 0.005079,
		-0.541274, -0.763970, -0.351244,
		34.457626, 32.464088, 48.251289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178661, 32.678555, 48.015076>,  <34.836521, 32.998867, 48.497162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178661, 32.678555, 48.015076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822170, 32.541531, 47.896172>,  <34.608276, 32.459316, 47.824829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822170, 32.541531, 47.896172>,  <35.178661, 32.678555, 48.015076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822170, 32.541531, 47.896172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277739, 0.105960, -0.954795,
		0.358574, -0.933501, 0.000709,
		-0.891227, -0.342561, -0.297264,
		34.554802, 32.438763, 47.806992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352985, 32.282505, 47.472630>,  <35.178661, 32.678555, 48.015076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352985, 32.282505, 47.472630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962200, 32.359257, 47.435249>,  <34.727730, 32.405308, 47.412819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962200, 32.359257, 47.435249>,  <35.352985, 32.282505, 47.472630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962200, 32.359257, 47.435249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150499, 0.308873, -0.939120,
		-0.151333, -0.931547, -0.330634,
		-0.976959, 0.191880, -0.093454,
		34.669113, 32.416821, 47.407211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142311, 31.888643, 46.945908>,  <35.352985, 32.282505, 47.472630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142311, 31.888643, 46.945908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899387, 32.203339, 46.990116>,  <34.753632, 32.392155, 47.016640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899387, 32.203339, 46.990116>,  <35.142311, 31.888643, 46.945908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899387, 32.203339, 46.990116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176966, 0.269581, -0.946577,
		-0.774505, -0.555307, -0.302946,
		-0.607309, 0.786740, 0.110522,
		34.717194, 32.439362, 47.023273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888607, 31.908442, 46.341984>,  <35.142311, 31.888643, 46.945908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888607, 31.908442, 46.341984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833778, 32.278423, 46.483788>,  <34.800880, 32.500412, 46.568871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833778, 32.278423, 46.483788>,  <34.888607, 31.908442, 46.341984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833778, 32.278423, 46.483788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286516, 0.379607, -0.879663,
		-0.948220, -0.019004, -0.317047,
		-0.137070, 0.924953, 0.354506,
		34.792656, 32.555908, 46.590141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616028, 32.189178, 45.729416>,  <34.888607, 31.908442, 46.341984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616028, 32.189178, 45.729416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685280, 32.508347, 45.960365>,  <34.726830, 32.699848, 46.098934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685280, 32.508347, 45.960365>,  <34.616028, 32.189178, 45.729416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685280, 32.508347, 45.960365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125999, 0.563461, -0.816477,
		-0.976806, 0.214104, -0.002986,
		0.173128, 0.797916, 0.577370,
		34.737217, 32.747723, 46.133575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117290, 32.668495, 45.453552>,  <34.616028, 32.189178, 45.729416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117290, 32.668495, 45.453552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.444916, 32.820477, 45.625492>,  <34.641491, 32.911663, 45.728657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.444916, 32.820477, 45.625492>,  <34.117290, 32.668495, 45.453552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444916, 32.820477, 45.625492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416132, 0.122317, -0.901040,
		-0.394930, 0.916883, -0.057924,
		0.819063, 0.379951, 0.429851,
		34.690636, 32.934464, 45.754448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398590, 33.037022, 45.508591>,  <34.117290, 32.668495, 45.453552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398590, 33.037022, 45.508591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099571, 33.038429, 45.242912>,  <32.920158, 33.039272, 45.083504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099571, 33.038429, 45.242912>,  <33.398590, 33.037022, 45.508591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099571, 33.038429, 45.242912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645124, -0.241843, 0.724795,
		-0.158082, 0.970309, 0.183059,
		-0.747546, 0.003518, -0.664200,
		32.875309, 33.039486, 45.043652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806061, 33.493736, 45.745480>,  <33.398590, 33.037022, 45.508591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806061, 33.493736, 45.745480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670567, 33.196529, 45.514587>,  <32.589272, 33.018208, 45.376053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670567, 33.196529, 45.514587>,  <32.806061, 33.493736, 45.745480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670567, 33.196529, 45.514587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415504, -0.432302, 0.800294,
		-0.844166, 0.510927, -0.162290,
		-0.338734, -0.743013, -0.577227,
		32.568947, 32.973625, 45.341419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173500, 33.342346, 45.957920>,  <32.806061, 33.493736, 45.745480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173500, 33.342346, 45.957920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.235424, 33.011585, 45.741673>,  <32.272579, 32.813129, 45.611923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.235424, 33.011585, 45.741673>,  <32.173500, 33.342346, 45.957920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235424, 33.011585, 45.741673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402552, -0.552531, 0.729837,
		-0.902211, 0.104639, -0.418409,
		0.154814, -0.826898, -0.540622,
		32.281868, 32.763515, 45.579487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505550, 32.993675, 45.982418>,  <32.173500, 33.342346, 45.957920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505550, 32.993675, 45.982418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788864, 32.722874, 45.902416>,  <31.958853, 32.560394, 45.854416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788864, 32.722874, 45.902416>,  <31.505550, 32.993675, 45.982418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788864, 32.722874, 45.902416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372914, -0.599390, 0.708285,
		-0.599390, -0.427083, -0.677002,
		-0.708285, 0.677002, 0.200003,
		32.001350, 32.519772, 45.842415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164074, 32.313133, 45.883430>,  <31.505550, 32.993675, 45.982418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164074, 32.313133, 45.883430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540876, 32.188095, 45.932270>,  <31.766958, 32.113071, 45.961575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540876, 32.188095, 45.932270>,  <31.164074, 32.313133, 45.883430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540876, 32.188095, 45.932270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302814, -0.634882, 0.710794,
		-0.144673, -0.706546, -0.692721,
		0.942005, -0.312598, 0.122102,
		31.823479, 32.094315, 45.968903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040651, 31.621284, 46.090923>,  <31.164074, 32.313133, 45.883430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040651, 31.621284, 46.090923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416294, 31.711948, 46.194233>,  <31.641680, 31.766346, 46.256218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416294, 31.711948, 46.194233>,  <31.040651, 31.621284, 46.090923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416294, 31.711948, 46.194233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110772, -0.511793, 0.851938,
		0.325281, -0.828670, -0.455520,
		0.939107, 0.226660, 0.258270,
		31.698027, 31.779947, 46.271713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248640, 30.913134, 46.339813>,  <31.040651, 31.621284, 46.090923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248640, 30.913134, 46.339813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475220, 31.204557, 46.493870>,  <31.611168, 31.379412, 46.586304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475220, 31.204557, 46.493870>,  <31.248640, 30.913134, 46.339813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475220, 31.204557, 46.493870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112542, -0.394585, 0.911941,
		0.816377, -0.559912, -0.141518,
		0.566447, 0.728561, 0.385144,
		31.645155, 31.423126, 46.609413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428400, 30.199121, 46.341900>,  <31.248640, 30.913134, 46.339813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428400, 30.199121, 46.341900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146946, 29.939505, 46.226215>,  <30.978073, 29.783735, 46.156803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146946, 29.939505, 46.226215>,  <31.428400, 30.199121, 46.341900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146946, 29.939505, 46.226215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381863, -0.002155, -0.924217,
		0.599231, -0.760750, 0.249361,
		-0.703635, -0.649041, -0.289210,
		30.935856, 29.744793, 46.139454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709913, 29.739059, 45.827137>,  <31.428400, 30.199121, 46.341900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709913, 29.739059, 45.827137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313614, 29.736160, 45.772923>,  <31.075834, 29.734421, 45.740395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313614, 29.736160, 45.772923>,  <31.709913, 29.739059, 45.827137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313614, 29.736160, 45.772923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134013, 0.106006, -0.985294,
		0.021508, -0.994339, -0.104054,
		-0.990746, -0.007247, -0.135534,
		31.016390, 29.733986, 45.732262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634380, 29.278721, 45.240021>,  <31.709913, 29.739059, 45.827137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634380, 29.278721, 45.240021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.311996, 29.512640, 45.276768>,  <31.118567, 29.652990, 45.298817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.311996, 29.512640, 45.276768>,  <31.634380, 29.278721, 45.240021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311996, 29.512640, 45.276768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063309, 0.069154, -0.995595,
		-0.588575, -0.808226, -0.018712,
		-0.805960, 0.584798, 0.091870,
		31.070208, 29.688080, 45.304329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082989, 28.918665, 44.824383>,  <31.634380, 29.278721, 45.240021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082989, 28.918665, 44.824383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.027477, 29.312626, 44.865772>,  <30.994169, 29.549002, 44.890606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.027477, 29.312626, 44.865772>,  <31.082989, 28.918665, 44.824383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027477, 29.312626, 44.865772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055701, 0.112079, -0.992137,
		-0.988756, -0.131925, -0.070414,
		-0.138779, 0.984903, 0.103471,
		30.985844, 29.608097, 44.896812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567190, 28.931189, 44.304710>,  <31.082989, 28.918665, 44.824383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567190, 28.931189, 44.304710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.717297, 29.292459, 44.388088>,  <30.807360, 29.509222, 44.438114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.717297, 29.292459, 44.388088>,  <30.567190, 28.931189, 44.304710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717297, 29.292459, 44.388088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260648, 0.112985, -0.958800,
		-0.889516, 0.414136, -0.193011,
		0.375266, 0.903175, 0.208445,
		30.829876, 29.563412, 44.450623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378948, 29.291277, 43.713234>,  <30.567190, 28.931189, 44.304710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378948, 29.291277, 43.713234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.679920, 29.503700, 43.869095>,  <30.860502, 29.631155, 43.962612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.679920, 29.503700, 43.869095>,  <30.378948, 29.291277, 43.713234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679920, 29.503700, 43.869095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240620, 0.329072, -0.913134,
		-0.613151, 0.780826, 0.119819,
		0.752428, 0.531058, 0.389653,
		30.905649, 29.663017, 43.985992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404675, 29.897392, 43.364697>,  <30.378948, 29.291277, 43.713234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404675, 29.897392, 43.364697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.767935, 29.874142, 43.530529>,  <30.985891, 29.860191, 43.630028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.767935, 29.874142, 43.530529>,  <30.404675, 29.897392, 43.364697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767935, 29.874142, 43.530529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414338, 0.266400, -0.870261,
		-0.059859, 0.962108, 0.266016,
		0.908152, -0.058127, 0.414585,
		31.040380, 29.856703, 43.654903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.271553, 26.291965, 47.883881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.473358, 26.632229, 47.943008>,  <33.594440, 26.836386, 47.978485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.473358, 26.632229, 47.943008>,  <33.271553, 26.291965, 47.883881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473358, 26.632229, 47.943008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270532, 0.318331, -0.908558,
		-0.819926, 0.418389, 0.390731,
		0.504513, 0.850656, 0.147821,
		33.624714, 26.887426, 47.987354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815742, 26.804478, 47.574799>,  <33.271553, 26.291965, 47.883881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815742, 26.804478, 47.574799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.187458, 26.951733, 47.586754>,  <33.410488, 27.040087, 47.593925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.187458, 26.951733, 47.586754>,  <32.815742, 26.804478, 47.574799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187458, 26.951733, 47.586754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007647, 0.100074, -0.994951,
		-0.369270, 0.924370, 0.095813,
		0.929291, 0.368138, 0.029886,
		33.466244, 27.062174, 47.595718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794609, 27.323544, 47.083431>,  <32.815742, 26.804478, 47.574799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794609, 27.323544, 47.083431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.189926, 27.291063, 47.135090>,  <33.427116, 27.271574, 47.166084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.189926, 27.291063, 47.135090>,  <32.794609, 27.323544, 47.083431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189926, 27.291063, 47.135090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135522, 0.078654, -0.987648,
		0.070041, 0.993589, 0.088738,
		0.988296, -0.081202, 0.129144,
		33.486416, 27.266703, 47.173832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252678, 27.905706, 46.718651>,  <32.794609, 27.323544, 47.083431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252678, 27.905706, 46.718651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.475090, 27.576168, 46.762657>,  <33.608536, 27.378445, 46.789062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.475090, 27.576168, 46.762657>,  <33.252678, 27.905706, 46.718651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475090, 27.576168, 46.762657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365652, 0.123594, -0.922509,
		0.746410, 0.553172, 0.369964,
		0.556031, -0.823848, 0.110017,
		33.641899, 27.329014, 46.795662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784252, 28.076080, 46.285542>,  <33.252678, 27.905706, 46.718651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784252, 28.076080, 46.285542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.805210, 27.681164, 46.345558>,  <33.817783, 27.444214, 46.381569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.805210, 27.681164, 46.345558>,  <33.784252, 28.076080, 46.285542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805210, 27.681164, 46.345558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039956, -0.148052, -0.988172,
		0.997827, 0.057768, 0.031692,
		0.052392, -0.987291, 0.150039,
		33.820927, 27.384977, 46.390572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409634, 27.830547, 45.877739>,  <33.784252, 28.076080, 46.285542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409634, 27.830547, 45.877739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.192440, 27.499197, 45.932823>,  <34.062122, 27.300386, 45.965874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.192440, 27.499197, 45.932823>,  <34.409634, 27.830547, 45.877739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192440, 27.499197, 45.932823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144996, -0.254014, -0.956270,
		0.827131, -0.499271, 0.258037,
		-0.542983, -0.828375, 0.137711,
		34.029545, 27.250685, 45.974136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676781, 27.278923, 45.493927>,  <34.409634, 27.830547, 45.877739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676781, 27.278923, 45.493927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.301102, 27.146709, 45.531132>,  <34.075695, 27.067381, 45.553455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.301102, 27.146709, 45.531132>,  <34.676781, 27.278923, 45.493927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301102, 27.146709, 45.531132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002852, -0.278390, -0.960464,
		0.343362, -0.901801, 0.262406,
		-0.939198, -0.330536, 0.093017,
		34.019341, 27.047548, 45.559036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618031, 26.606686, 45.151855>,  <34.676781, 27.278923, 45.493927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618031, 26.606686, 45.151855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245224, 26.751293, 45.141716>,  <34.021538, 26.838058, 45.135632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245224, 26.751293, 45.141716>,  <34.618031, 26.606686, 45.151855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245224, 26.751293, 45.141716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069928, -0.248030, -0.966225,
		-0.355599, -0.898768, 0.256449,
		-0.932019, 0.361521, -0.025350,
		33.965618, 26.859749, 45.134109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294510, 26.200512, 44.683098>,  <34.618031, 26.606686, 45.151855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294510, 26.200512, 44.683098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.068024, 26.530199, 44.686317>,  <33.932133, 26.728012, 44.688248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.068024, 26.530199, 44.686317>,  <34.294510, 26.200512, 44.683098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068024, 26.530199, 44.686317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188481, -0.119964, -0.974722,
		-0.802420, -0.553418, 0.223275,
		-0.566214, 0.824219, 0.008047,
		33.898159, 26.777464, 44.688732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882816, 25.999109, 44.200699>,  <34.294510, 26.200512, 44.683098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882816, 25.999109, 44.200699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807861, 26.390696, 44.232983>,  <33.762886, 26.625647, 44.252354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807861, 26.390696, 44.232983>,  <33.882816, 25.999109, 44.200699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807861, 26.390696, 44.232983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260982, 0.029597, -0.964890,
		-0.946981, -0.201875, 0.249946,
		-0.187389, 0.978964, 0.080713,
		33.751644, 26.684385, 44.257198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202805, 26.127596, 43.904343>,  <33.882816, 25.999109, 44.200699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202805, 26.127596, 43.904343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.390083, 26.480980, 43.911083>,  <33.502453, 26.693010, 43.915127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.390083, 26.480980, 43.911083>,  <33.202805, 26.127596, 43.904343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390083, 26.480980, 43.911083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152096, 0.099358, -0.983359,
		-0.870433, 0.457848, 0.180891,
		0.468202, 0.883461, 0.016848,
		33.530544, 26.746017, 43.916138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754509, 26.602694, 43.579693>,  <33.202805, 26.127596, 43.904343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754509, 26.602694, 43.579693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122494, 26.756708, 43.550243>,  <33.343285, 26.849117, 43.532574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122494, 26.756708, 43.550243>,  <32.754509, 26.602694, 43.579693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122494, 26.756708, 43.550243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092404, 0.030465, -0.995255,
		-0.380967, 0.922398, 0.063605,
		0.919960, 0.385037, -0.073627,
		33.398483, 26.872219, 43.528156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259834, 27.011089, 43.900082>,  <32.754509, 26.602694, 43.579693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259834, 27.011089, 43.900082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.878696, 27.115332, 43.837894>,  <31.650013, 27.177877, 43.800583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.878696, 27.115332, 43.837894>,  <32.259834, 27.011089, 43.900082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878696, 27.115332, 43.837894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205536, -0.177340, 0.962448,
		0.223250, 0.949018, 0.222542,
		-0.952846, 0.260607, -0.155466,
		31.592842, 27.193514, 43.791256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054726, 27.460135, 44.481899>,  <32.259834, 27.011089, 43.900082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054726, 27.460135, 44.481899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.699759, 27.332108, 44.349209>,  <31.486778, 27.255291, 44.269596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.699759, 27.332108, 44.349209>,  <32.054726, 27.460135, 44.481899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699759, 27.332108, 44.349209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324815, -0.076434, 0.942684,
		-0.327078, 0.944306, -0.036134,
		-0.887420, -0.320068, -0.331725,
		31.433533, 27.236088, 44.249691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486006, 27.828217, 44.936043>,  <32.054726, 27.460135, 44.481899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486006, 27.828217, 44.936043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.327221, 27.487152, 44.800163>,  <31.231951, 27.282515, 44.718636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.327221, 27.487152, 44.800163>,  <31.486006, 27.828217, 44.936043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327221, 27.487152, 44.800163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333264, -0.210945, 0.918932,
		-0.855194, 0.477989, -0.200424,
		-0.396961, -0.852660, -0.339696,
		31.208132, 27.231354, 44.698254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844513, 27.780575, 45.299011>,  <31.486006, 27.828217, 44.936043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844513, 27.780575, 45.299011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.897570, 27.411026, 45.155418>,  <30.929403, 27.189297, 45.069263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.897570, 27.411026, 45.155418>,  <30.844513, 27.780575, 45.299011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897570, 27.411026, 45.155418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423495, -0.380280, 0.822216,
		-0.896136, 0.042966, -0.441696,
		0.132641, -0.923873, -0.358978,
		30.937363, 27.133863, 45.047726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207796, 27.421196, 45.392021>,  <30.844513, 27.780575, 45.299011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207796, 27.421196, 45.392021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.457991, 27.118433, 45.316277>,  <30.608109, 26.936775, 45.270828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.457991, 27.118433, 45.316277>,  <30.207796, 27.421196, 45.392021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457991, 27.118433, 45.316277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454782, -0.550892, 0.699780,
		-0.633987, -0.351583, -0.688803,
		0.625487, -0.756907, -0.189365,
		30.645638, 26.891361, 45.259468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862232, 26.796673, 45.381332>,  <30.207796, 27.421196, 45.392021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862232, 26.796673, 45.381332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.233255, 26.693058, 45.489063>,  <30.455870, 26.630888, 45.553703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.233255, 26.693058, 45.489063>,  <29.862232, 26.796673, 45.381332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233255, 26.693058, 45.489063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363377, -0.457167, 0.811761,
		-0.087149, -0.850822, -0.518177,
		0.927557, -0.259038, 0.269328,
		30.511522, 26.615347, 45.569862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790958, 26.155390, 45.575756>,  <29.862232, 26.796673, 45.381332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790958, 26.155390, 45.575756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.147682, 26.267050, 45.718166>,  <30.361717, 26.334045, 45.803612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.147682, 26.267050, 45.718166>,  <29.790958, 26.155390, 45.575756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147682, 26.267050, 45.718166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243373, -0.367362, 0.897672,
		0.381373, -0.887199, -0.259680,
		0.891810, 0.279149, 0.356023,
		30.415226, 26.350794, 45.824974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992689, 25.533146, 45.960064>,  <29.790958, 26.155390, 45.575756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992689, 25.533146, 45.960064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.188808, 25.843580, 46.118706>,  <30.306480, 26.029840, 46.213890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.188808, 25.843580, 46.118706>,  <29.992689, 25.533146, 45.960064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188808, 25.843580, 46.118706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382103, -0.217580, 0.898140,
		0.783328, -0.591902, 0.189866,
		0.490300, 0.776087, 0.396605,
		30.335899, 26.076406, 46.237686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382128, 25.302452, 46.532806>,  <29.992689, 25.533146, 45.960064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382128, 25.302452, 46.532806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.386923, 25.695517, 46.606815>,  <30.389799, 25.931355, 46.651222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.386923, 25.695517, 46.606815>,  <30.382128, 25.302452, 46.532806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386923, 25.695517, 46.606815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104270, -0.182799, 0.977605,
		0.994477, -0.031009, 0.100271,
		0.011985, 0.982661, 0.185023,
		30.390518, 25.990314, 46.662323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665604, 25.364523, 47.137192>,  <30.382128, 25.302452, 46.532806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665604, 25.364523, 47.137192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.451021, 25.701599, 47.118935>,  <30.322271, 25.903845, 47.107979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.451021, 25.701599, 47.118935>,  <30.665604, 25.364523, 47.137192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451021, 25.701599, 47.118935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153781, -0.044427, 0.987106,
		0.829799, 0.536559, 0.153424,
		-0.536457, 0.842693, -0.045647,
		30.290085, 25.954407, 47.105240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725954, 25.689585, 47.783424>,  <30.665604, 25.364523, 47.137192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725954, 25.689585, 47.783424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.426952, 25.907312, 47.631130>,  <30.247551, 26.037949, 47.539753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.426952, 25.907312, 47.631130>,  <30.725954, 25.689585, 47.783424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426952, 25.907312, 47.631130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414676, 0.065381, 0.907617,
		0.518926, 0.836326, 0.176844,
		-0.747502, 0.544320, -0.380732,
		30.202702, 26.070608, 47.516911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730335, 26.303627, 48.184410>,  <30.725954, 25.689585, 47.783424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730335, 26.303627, 48.184410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.363829, 26.293858, 48.024483>,  <30.143925, 26.287996, 47.928524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.363829, 26.293858, 48.024483>,  <30.730335, 26.303627, 48.184410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363829, 26.293858, 48.024483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372942, 0.416263, 0.829240,
		0.146176, 0.908916, -0.390517,
		-0.916268, -0.024425, -0.399821,
		30.088949, 26.286530, 47.904537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374788, 26.944477, 48.436649>,  <30.730335, 26.303627, 48.184410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374788, 26.944477, 48.436649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.107075, 26.668266, 48.326939>,  <29.946445, 26.502539, 48.261112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.107075, 26.668266, 48.326939>,  <30.374788, 26.944477, 48.436649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107075, 26.668266, 48.326939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527083, 0.181074, 0.830299,
		-0.523681, 0.700273, -0.485156,
		-0.669285, -0.690529, -0.274277,
		29.906290, 26.461107, 48.244656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205523, 27.491476, 48.874031>,  <30.374788, 26.944477, 48.436649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205523, 27.491476, 48.874031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.109274, 27.879513, 48.861252>,  <30.051525, 28.112335, 48.853584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.109274, 27.879513, 48.861252>,  <30.205523, 27.491476, 48.874031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109274, 27.879513, 48.861252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284701, 0.039069, -0.957820,
		-0.927926, -0.239570, -0.285587,
		-0.240622, 0.970093, -0.031952,
		30.037086, 28.170540, 48.851665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984138, 27.646061, 48.244392>,  <30.205523, 27.491476, 48.874031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984138, 27.646061, 48.244392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074524, 28.003010, 48.400658>,  <30.128756, 28.217178, 48.494415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074524, 28.003010, 48.400658>,  <29.984138, 27.646061, 48.244392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074524, 28.003010, 48.400658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067413, 0.385747, -0.920138,
		-0.971800, 0.234254, 0.027008,
		0.225964, 0.892370, 0.390661,
		30.142313, 28.270721, 48.517857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650627, 28.095613, 47.819767>,  <29.984138, 27.646061, 48.244392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650627, 28.095613, 47.819767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.918705, 28.332859, 47.998230>,  <30.079552, 28.475206, 48.105309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.918705, 28.332859, 47.998230>,  <29.650627, 28.095613, 47.819767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918705, 28.332859, 47.998230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009359, 0.607842, -0.794003,
		-0.742126, 0.527961, 0.412923,
		0.670195, 0.593115, 0.446155,
		30.119762, 28.510794, 48.132076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391138, 28.719273, 47.710499>,  <29.650627, 28.095613, 47.819767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391138, 28.719273, 47.710499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.785175, 28.758947, 47.766716>,  <30.021599, 28.782753, 47.800446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.785175, 28.758947, 47.766716>,  <29.391138, 28.719273, 47.710499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785175, 28.758947, 47.766716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053896, 0.597900, -0.799757,
		-0.163355, 0.795410, 0.583642,
		0.985094, 0.099189, 0.140539,
		30.080704, 28.788704, 47.808876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552263, 29.289423, 47.457973>,  <29.391138, 28.719273, 47.710499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552263, 29.289423, 47.457973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.934811, 29.179737, 47.498310>,  <30.164339, 29.113926, 47.522511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.934811, 29.179737, 47.498310>,  <29.552263, 29.289423, 47.457973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934811, 29.179737, 47.498310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250806, 0.593502, -0.764756,
		0.149860, 0.756678, 0.636381,
		0.956367, -0.274214, 0.100837,
		30.221722, 29.097473, 47.528561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792234, 29.868492, 47.280396>,  <29.552263, 29.289423, 47.457973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792234, 29.868492, 47.280396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.086975, 29.600258, 47.246071>,  <30.263819, 29.439318, 47.225475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.086975, 29.600258, 47.246071>,  <29.792234, 29.868492, 47.280396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086975, 29.600258, 47.246071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387818, 0.523247, -0.758821,
		0.553757, 0.525858, 0.645621,
		0.736851, -0.670586, -0.085815,
		30.308031, 29.399082, 47.220325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293856, 30.224466, 46.994034>,  <29.792234, 29.868492, 47.280396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293856, 30.224466, 46.994034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.425404, 29.851109, 46.936596>,  <30.504333, 29.627094, 46.902134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.425404, 29.851109, 46.936596>,  <30.293856, 30.224466, 46.994034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425404, 29.851109, 46.936596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534281, 0.309273, -0.786698,
		0.778709, 0.182003, 0.600405,
		0.328871, -0.933394, -0.143593,
		30.524065, 29.571091, 46.893517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075191, 30.164490, 47.055035>,  <30.293856, 30.224466, 46.994034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075191, 30.164490, 47.055035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.892557, 29.909224, 46.807076>,  <30.782976, 29.756063, 46.658298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.892557, 29.909224, 46.807076>,  <31.075191, 30.164490, 47.055035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892557, 29.909224, 46.807076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471854, 0.416998, -0.776831,
		0.754243, -0.647192, 0.110726,
		-0.456587, -0.638166, -0.619898,
		30.755581, 29.717773, 46.621105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717039, 30.578104, 46.949150>,  <31.075191, 30.164490, 47.055035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717039, 30.578104, 46.949150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.683264, 30.974504, 46.990688>,  <31.662998, 31.212345, 47.015610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.683264, 30.974504, 46.990688>,  <31.717039, 30.578104, 46.949150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683264, 30.974504, 46.990688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245975, -0.121719, 0.961603,
		0.965591, 0.055656, 0.254040,
		-0.084441, 0.991003, 0.103841,
		31.657932, 31.271805, 47.021839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034412, 30.716866, 47.643909>,  <31.717039, 30.578104, 46.949150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034412, 30.716866, 47.643909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.788286, 31.018570, 47.552280>,  <31.640610, 31.199593, 47.497303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.788286, 31.018570, 47.552280>,  <32.034412, 30.716866, 47.643909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788286, 31.018570, 47.552280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276954, 0.065219, 0.958667,
		0.738024, 0.653330, 0.168765,
		-0.615319, 0.754259, -0.229076,
		31.603691, 31.244848, 47.483559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185150, 31.252630, 48.139305>,  <32.034412, 30.716866, 47.643909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185150, 31.252630, 48.139305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.824436, 31.330452, 47.984943>,  <31.608007, 31.377146, 47.892326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.824436, 31.330452, 47.984943>,  <32.185150, 31.252630, 48.139305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824436, 31.330452, 47.984943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365076, 0.134940, 0.921146,
		0.231289, 0.971565, -0.050660,
		-0.901790, 0.194556, -0.385906,
		31.553900, 31.388819, 47.869171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914021, 31.762636, 48.574535>,  <32.185150, 31.252630, 48.139305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914021, 31.762636, 48.574535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561838, 31.677107, 48.405266>,  <31.350529, 31.625790, 48.303703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561838, 31.677107, 48.405266>,  <31.914021, 31.762636, 48.574535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561838, 31.677107, 48.405266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420081, -0.062014, 0.905365,
		-0.219829, 0.974903, -0.035222,
		-0.880458, -0.213822, -0.423171,
		31.297701, 31.612961, 48.278313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358881, 32.129566, 48.859398>,  <31.914021, 31.762636, 48.574535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358881, 32.129566, 48.859398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.169868, 31.809944, 48.710686>,  <31.056461, 31.618170, 48.621460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.169868, 31.809944, 48.710686>,  <31.358881, 32.129566, 48.859398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169868, 31.809944, 48.710686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424827, -0.163082, 0.890464,
		-0.772164, 0.578713, -0.262400,
		-0.472530, -0.799059, -0.371779,
		31.028109, 31.570227, 48.599152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601711, 32.011753, 49.165054>,  <31.358881, 32.129566, 48.859398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601711, 32.011753, 49.165054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.662220, 31.657194, 48.990051>,  <30.698524, 31.444458, 48.885052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.662220, 31.657194, 48.990051>,  <30.601711, 32.011753, 49.165054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662220, 31.657194, 48.990051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296380, -0.462907, 0.835390,
		-0.943014, 0.003299, -0.332736,
		0.151270, -0.886401, -0.437505,
		30.707602, 31.391273, 48.858799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051308, 31.533527, 49.510994>,  <30.601711, 32.011753, 49.165054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051308, 31.533527, 49.510994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.358751, 31.327974, 49.358589>,  <30.543217, 31.204643, 49.267147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.358751, 31.327974, 49.358589>,  <30.051308, 31.533527, 49.510994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358751, 31.327974, 49.358589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015985, -0.579973, 0.814479,
		-0.639522, -0.632104, -0.437557,
		0.768607, -0.513883, -0.381010,
		30.589334, 31.173809, 49.244286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865757, 30.850298, 49.609421>,  <30.051308, 31.533527, 49.510994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865757, 30.850298, 49.609421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.260014, 30.825186, 49.546726>,  <30.496569, 30.810120, 49.509109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.260014, 30.825186, 49.546726>,  <29.865757, 30.850298, 49.609421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260014, 30.825186, 49.546726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088045, -0.601005, 0.794381,
		-0.144071, -0.796776, -0.586849,
		0.985643, -0.062779, -0.156739,
		30.555706, 30.806353, 49.499702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032505, 30.152748, 49.489788>,  <29.865757, 30.850298, 49.609421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032505, 30.152748, 49.489788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.377954, 30.310038, 49.615978>,  <30.585224, 30.404411, 49.691692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.377954, 30.310038, 49.615978>,  <30.032505, 30.152748, 49.489788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377954, 30.310038, 49.615978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119220, -0.767334, 0.630067,
		0.489834, -0.506531, -0.709569,
		0.863625, 0.393224, 0.315478,
		30.637043, 30.428005, 49.710621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.368786, 34.355755, 34.945690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720890, 34.444580, 35.113422>,  <35.932152, 34.497875, 35.214062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720890, 34.444580, 35.113422>,  <35.368786, 34.355755, 34.945690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720890, 34.444580, 35.113422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366794, -0.242181, 0.898226,
		0.301018, -0.944477, -0.131729,
		0.880256, 0.222064, 0.419329,
		35.984966, 34.511200, 35.239220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409245, 33.972755, 35.496811>,  <35.368786, 34.355755, 34.945690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409245, 33.972755, 35.496811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704025, 34.219940, 35.606373>,  <35.880894, 34.368252, 35.672112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704025, 34.219940, 35.606373>,  <35.409245, 33.972755, 35.496811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704025, 34.219940, 35.606373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259463, -0.115563, 0.958814,
		0.624161, -0.777671, 0.075173,
		0.736954, 0.617959, 0.273907,
		35.925110, 34.405327, 35.688545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883331, 33.646534, 36.015236>,  <35.409245, 33.972755, 35.496811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883331, 33.646534, 36.015236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900078, 34.044067, 36.056309>,  <35.910126, 34.282589, 36.080952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900078, 34.044067, 36.056309>,  <35.883331, 33.646534, 36.015236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900078, 34.044067, 36.056309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248352, -0.089197, 0.964554,
		0.967765, -0.065887, 0.243085,
		0.041869, 0.993833, 0.102685,
		35.912640, 34.342216, 36.087112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115311, 33.734337, 36.731247>,  <35.883331, 33.646534, 36.015236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115311, 33.734337, 36.731247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969982, 34.097267, 36.646622>,  <35.882786, 34.315025, 36.595844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969982, 34.097267, 36.646622>,  <36.115311, 33.734337, 36.731247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969982, 34.097267, 36.646622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324123, 0.089804, 0.941743,
		0.873467, 0.410725, 0.261458,
		-0.363318, 0.907326, -0.211566,
		35.860989, 34.369465, 36.583153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355431, 34.102505, 37.237812>,  <36.115311, 33.734337, 36.731247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355431, 34.102505, 37.237812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030754, 34.284870, 37.091770>,  <35.835949, 34.394291, 37.004143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030754, 34.284870, 37.091770>,  <36.355431, 34.102505, 37.237812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030754, 34.284870, 37.091770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403081, 0.015159, 0.915039,
		0.422716, 0.889894, 0.171467,
		-0.811688, 0.455916, -0.365107,
		35.787247, 34.421646, 36.982239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078964, 34.527473, 37.894314>,  <36.355431, 34.102505, 37.237812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078964, 34.527473, 37.894314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792557, 34.564960, 37.617607>,  <35.620712, 34.587452, 37.451584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792557, 34.564960, 37.617607>,  <36.078964, 34.527473, 37.894314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792557, 34.564960, 37.617607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666831, 0.201355, 0.717490,
		0.206533, 0.975024, -0.081678,
		-0.716017, 0.093720, -0.691763,
		35.577751, 34.593075, 37.410080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738575, 35.229660, 37.924915>,  <36.078964, 34.527473, 37.894314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738575, 35.229660, 37.924915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498592, 34.954823, 37.760986>,  <35.354603, 34.789921, 37.662628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498592, 34.954823, 37.760986>,  <35.738575, 35.229660, 37.924915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498592, 34.954823, 37.760986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610607, 0.062283, 0.789481,
		-0.516922, 0.723895, -0.456910,
		-0.599959, -0.687093, -0.409820,
		35.318604, 34.748695, 37.638039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127365, 35.548458, 37.736755>,  <35.738575, 35.229660, 37.924915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127365, 35.548458, 37.736755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069145, 35.154991, 37.779121>,  <35.034214, 34.918911, 37.804543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069145, 35.154991, 37.779121>,  <35.127365, 35.548458, 37.736755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069145, 35.154991, 37.779121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653486, 0.175968, 0.736201,
		-0.742813, 0.037938, -0.668423,
		-0.145550, -0.983665, 0.105919,
		35.025478, 34.859890, 37.810898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380810, 35.444622, 37.772446>,  <35.127365, 35.548458, 37.736755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380810, 35.444622, 37.772446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532303, 35.119659, 37.949783>,  <34.623199, 34.924683, 38.056187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532303, 35.119659, 37.949783>,  <34.380810, 35.444622, 37.772446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532303, 35.119659, 37.949783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579971, 0.164978, 0.797757,
		-0.721246, -0.559265, -0.408690,
		0.378733, -0.812407, 0.443347,
		34.645924, 34.875938, 38.082787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738033, 35.208836, 38.122936>,  <34.380810, 35.444622, 37.772446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738033, 35.208836, 38.122936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058102, 35.032940, 38.286083>,  <34.250145, 34.927402, 38.383972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058102, 35.032940, 38.286083>,  <33.738033, 35.208836, 38.122936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058102, 35.032940, 38.286083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453426, 0.001609, 0.891292,
		-0.392590, -0.898125, -0.198100,
		0.800174, -0.439736, 0.407865,
		34.298153, 34.901020, 38.408443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571747, 34.564171, 38.339195>,  <33.738033, 35.208836, 38.122936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571747, 34.564171, 38.339195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878071, 34.647430, 38.582577>,  <34.061863, 34.697384, 38.728607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878071, 34.647430, 38.582577>,  <33.571747, 34.564171, 38.339195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878071, 34.647430, 38.582577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591802, -0.142101, 0.793459,
		0.251619, -0.967720, 0.014360,
		0.765806, 0.208148, 0.608454,
		34.107811, 34.709873, 38.765114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354282, 34.159870, 38.864445>,  <33.571747, 34.564171, 38.339195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354282, 34.159870, 38.864445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658089, 34.382042, 38.999874>,  <33.840374, 34.515343, 39.081131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658089, 34.382042, 38.999874>,  <33.354282, 34.159870, 38.864445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658089, 34.382042, 38.999874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315229, -0.141014, 0.938480,
		0.569000, -0.819523, 0.067983,
		0.759519, 0.555426, 0.338575,
		33.885944, 34.548668, 39.101448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572639, 33.499813, 38.748837>,  <33.354282, 34.159870, 38.864445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572639, 33.499813, 38.748837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216286, 33.318192, 38.743919>,  <33.002472, 33.209217, 38.740967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216286, 33.318192, 38.743919>,  <33.572639, 33.499813, 38.748837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216286, 33.318192, 38.743919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033850, 0.093359, -0.995057,
		0.452961, -0.886068, -0.098542,
		-0.890888, -0.454057, -0.012294,
		32.949020, 33.181973, 38.740231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698166, 33.137302, 38.202400>,  <33.572639, 33.499813, 38.748837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698166, 33.137302, 38.202400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303791, 33.155479, 38.266735>,  <33.067165, 33.166386, 38.305336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303791, 33.155479, 38.266735>,  <33.698166, 33.137302, 38.202400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303791, 33.155479, 38.266735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157911, 0.061915, -0.985510,
		-0.054743, -0.997046, -0.053868,
		-0.985935, 0.045444, 0.160834,
		33.008011, 33.169113, 38.314987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392479, 32.854404, 37.627834>,  <33.698166, 33.137302, 38.202400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392479, 32.854404, 37.627834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089748, 33.045738, 37.806007>,  <32.908112, 33.160538, 37.912910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089748, 33.045738, 37.806007>,  <33.392479, 32.854404, 37.627834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089748, 33.045738, 37.806007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372716, 0.244003, -0.895291,
		-0.536935, -0.843600, -0.006386,
		-0.756825, 0.478332, 0.445437,
		32.862701, 33.189240, 37.939640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764236, 32.518536, 37.357128>,  <33.392479, 32.854404, 37.627834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764236, 32.518536, 37.357128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659012, 32.890064, 37.461498>,  <32.595879, 33.112984, 37.524120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659012, 32.890064, 37.461498>,  <32.764236, 32.518536, 37.357128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659012, 32.890064, 37.461498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399401, 0.141345, -0.905815,
		-0.878224, -0.342499, 0.333791,
		-0.263061, 0.928825, 0.260927,
		32.580093, 33.168713, 37.539776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209312, 32.604313, 37.020763>,  <32.764236, 32.518536, 37.357128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209312, 32.604313, 37.020763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254681, 32.980312, 37.149475>,  <32.281902, 33.205910, 37.226704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254681, 32.980312, 37.149475>,  <32.209312, 32.604313, 37.020763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254681, 32.980312, 37.149475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723842, 0.300033, -0.621315,
		-0.680578, -0.162446, 0.714440,
		0.113425, 0.939995, 0.321781,
		32.288708, 33.262310, 37.246010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552069, 32.881947, 37.130226>,  <32.209312, 32.604313, 37.020763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552069, 32.881947, 37.130226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800730, 33.191578, 37.082306>,  <31.949926, 33.377357, 37.053555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800730, 33.191578, 37.082306>,  <31.552069, 32.881947, 37.130226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800730, 33.191578, 37.082306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611873, 0.384408, -0.691261,
		-0.489039, 0.503026, 0.712605,
		0.621653, 0.774078, -0.119798,
		31.987226, 33.423801, 37.046368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091896, 33.433937, 37.047890>,  <31.552069, 32.881947, 37.130226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091896, 33.433937, 37.047890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440424, 33.572124, 36.908489>,  <31.649540, 33.655037, 36.824848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440424, 33.572124, 36.908489>,  <31.091896, 33.433937, 37.047890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440424, 33.572124, 36.908489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471312, 0.391426, -0.790349,
		-0.136626, 0.852900, 0.503880,
		0.871320, 0.345467, -0.348503,
		31.701820, 33.675766, 36.803940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937647, 34.166260, 36.954063>,  <31.091896, 33.433937, 37.047890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937647, 34.166260, 36.954063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259710, 34.052063, 36.746132>,  <31.452948, 33.983547, 36.621372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259710, 34.052063, 36.746132>,  <30.937647, 34.166260, 36.954063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259710, 34.052063, 36.746132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386470, 0.412279, -0.825025,
		0.449849, 0.865171, 0.221617,
		0.805156, -0.285489, -0.519826,
		31.501257, 33.966415, 36.590183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161818, 34.804504, 36.716278>,  <30.937647, 34.166260, 36.954063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161818, 34.804504, 36.716278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266417, 34.502743, 36.475445>,  <31.329176, 34.321686, 36.330944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266417, 34.502743, 36.475445>,  <31.161818, 34.804504, 36.716278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266417, 34.502743, 36.475445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408839, 0.478489, -0.777110,
		0.874339, 0.449367, -0.183304,
		0.261498, -0.754399, -0.602080,
		31.344866, 34.276424, 36.294823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361221, 35.134865, 36.023281>,  <31.161818, 34.804504, 36.716278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361221, 35.134865, 36.023281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349394, 34.746670, 35.927555>,  <31.342299, 34.513752, 35.870121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349394, 34.746670, 35.927555>,  <31.361221, 35.134865, 36.023281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349394, 34.746670, 35.927555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456577, 0.226095, -0.860475,
		0.889192, 0.083823, -0.449789,
		-0.029568, -0.970492, -0.239314,
		31.340523, 34.455521, 35.855762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729708, 35.015594, 35.422527>,  <31.361221, 35.134865, 36.023281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729708, 35.015594, 35.422527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463194, 34.718494, 35.449039>,  <31.303286, 34.540234, 35.464947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463194, 34.718494, 35.449039>,  <31.729708, 35.015594, 35.422527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463194, 34.718494, 35.449039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173079, 0.067580, -0.982587,
		0.725334, -0.666153, -0.173582,
		-0.666284, -0.742747, 0.066279,
		31.263309, 34.495670, 35.468922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642763, 34.744625, 34.744820>,  <31.729708, 35.015594, 35.422527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642763, 34.744625, 34.744820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319431, 34.592136, 34.924274>,  <31.125431, 34.500645, 35.031948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319431, 34.592136, 34.924274>,  <31.642763, 34.744625, 34.744820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319431, 34.592136, 34.924274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384506, -0.235216, -0.892652,
		0.445821, -0.894062, 0.043551,
		-0.808331, -0.381218, 0.448637,
		31.076933, 34.477772, 35.058865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447609, 34.078793, 34.446144>,  <31.642763, 34.744625, 34.744820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447609, 34.078793, 34.446144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111629, 34.198914, 34.626945>,  <30.910042, 34.270985, 34.735424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111629, 34.198914, 34.626945>,  <31.447609, 34.078793, 34.446144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111629, 34.198914, 34.626945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381973, 0.264464, -0.885525,
		-0.385460, -0.916449, -0.107431,
		-0.839951, 0.300298, 0.451999,
		30.859644, 34.289001, 34.762547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886250, 33.654327, 34.188766>,  <31.447609, 34.078793, 34.446144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886250, 33.654327, 34.188766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775999, 34.011822, 34.330338>,  <30.709848, 34.226318, 34.415279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775999, 34.011822, 34.330338>,  <30.886250, 33.654327, 34.188766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775999, 34.011822, 34.330338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409315, 0.224019, -0.884464,
		-0.869765, -0.388649, 0.304074,
		-0.275627, 0.893738, 0.353923,
		30.693312, 34.279942, 34.436516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157286, 33.032928, 34.153690>,  <30.886250, 33.654327, 34.188766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157286, 33.032928, 34.153690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554668, 32.993389, 34.176582>,  <31.793098, 32.969666, 34.190319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554668, 32.993389, 34.176582>,  <31.157286, 33.032928, 34.153690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554668, 32.993389, 34.176582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107489, -0.978569, 0.175639,
		0.038644, -0.180641, -0.982790,
		0.993455, -0.098851, 0.057233,
		31.852705, 32.963734, 34.193752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207823, 32.296524, 34.404091>,  <31.157286, 33.032928, 34.153690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207823, 32.296524, 34.404091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082479, 31.961668, 34.224758>,  <31.007275, 31.760754, 34.117157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082479, 31.961668, 34.224758>,  <31.207823, 32.296524, 34.404091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082479, 31.961668, 34.224758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101633, -0.498962, 0.860644,
		-0.944181, 0.224123, 0.241434,
		-0.313356, -0.837142, -0.448332,
		30.988472, 31.710526, 34.090260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541845, 32.021236, 34.778648>,  <31.207823, 32.296524, 34.404091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541845, 32.021236, 34.778648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773945, 31.759888, 34.584156>,  <30.913204, 31.603079, 34.467461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773945, 31.759888, 34.584156>,  <30.541845, 32.021236, 34.778648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773945, 31.759888, 34.584156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180939, -0.478678, 0.859144,
		-0.794086, -0.586496, -0.159533,
		0.580249, -0.653368, -0.486231,
		30.948019, 31.563877, 34.438286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195246, 31.328293, 34.785202>,  <30.541845, 32.021236, 34.778648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195246, 31.328293, 34.785202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592239, 31.368998, 34.812389>,  <30.830435, 31.393419, 34.828701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592239, 31.368998, 34.812389>,  <30.195246, 31.328293, 34.785202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592239, 31.368998, 34.812389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007371, -0.504691, 0.863269,
		0.122149, -0.857282, -0.500148,
		0.992484, 0.101760, 0.067967,
		30.889984, 31.399525, 34.832779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485384, 30.733566, 34.760612>,  <30.195246, 31.328293, 34.785202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485384, 30.733566, 34.760612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773157, 30.929651, 34.957432>,  <30.945822, 31.047302, 35.075523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773157, 30.929651, 34.957432>,  <30.485384, 30.733566, 34.760612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773157, 30.929651, 34.957432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060227, -0.661730, 0.747319,
		0.691945, -0.567281, -0.446546,
		0.719433, 0.490210, 0.492047,
		30.988987, 31.076714, 35.105045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101162, 30.294550, 34.914719>,  <30.485384, 30.733566, 34.760612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101162, 30.294550, 34.914719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084391, 30.595306, 35.177898>,  <31.074327, 30.775761, 35.335808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084391, 30.595306, 35.177898>,  <31.101162, 30.294550, 34.914719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084391, 30.595306, 35.177898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119321, -0.657586, 0.743871,
		0.991970, -0.047317, 0.117289,
		-0.041930, 0.751892, 0.657951,
		31.071812, 30.820873, 35.375282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553141, 30.064926, 35.433945>,  <31.101162, 30.294550, 34.914719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553141, 30.064926, 35.433945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338957, 30.354454, 35.608009>,  <31.210445, 30.528172, 35.712448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338957, 30.354454, 35.608009>,  <31.553141, 30.064926, 35.433945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338957, 30.354454, 35.608009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024667, -0.501631, 0.864730,
		0.844200, 0.473763, 0.250749,
		-0.535461, 0.723820, 0.435163,
		31.178318, 30.571600, 35.738560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853041, 30.243824, 36.038990>,  <31.553141, 30.064926, 35.433945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853041, 30.243824, 36.038990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490812, 30.407915, 36.082172>,  <31.273476, 30.506371, 36.108082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490812, 30.407915, 36.082172>,  <31.853041, 30.243824, 36.038990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490812, 30.407915, 36.082172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078428, -0.412030, 0.907789,
		0.416884, 0.813599, 0.405296,
		-0.905570, 0.410229, 0.107960,
		31.219141, 30.530983, 36.114559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834644, 30.584291, 36.649506>,  <31.853041, 30.243824, 36.038990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834644, 30.584291, 36.649506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441305, 30.528765, 36.602596>,  <31.205301, 30.495449, 36.574451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441305, 30.528765, 36.602596>,  <31.834644, 30.584291, 36.649506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441305, 30.528765, 36.602596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074557, -0.280345, 0.956999,
		-0.165723, 0.949809, 0.265327,
		-0.983350, -0.138815, -0.117274,
		31.146299, 30.487120, 36.567413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554001, 30.823971, 37.255787>,  <31.834644, 30.584291, 36.649506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554001, 30.823971, 37.255787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254448, 30.596262, 37.120079>,  <31.074717, 30.459637, 37.038654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254448, 30.596262, 37.120079>,  <31.554001, 30.823971, 37.255787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254448, 30.596262, 37.120079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058165, -0.453509, 0.889352,
		-0.660144, 0.685755, 0.306514,
		-0.748884, -0.569272, -0.339268,
		31.029783, 30.425480, 37.018299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074354, 30.892467, 37.757130>,  <31.554001, 30.823971, 37.255787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074354, 30.892467, 37.757130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985853, 30.554359, 37.562576>,  <30.932753, 30.351496, 37.445843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985853, 30.554359, 37.562576>,  <31.074354, 30.892467, 37.757130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985853, 30.554359, 37.562576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035562, -0.491420, 0.870197,
		-0.974568, 0.209828, 0.078668,
		-0.221251, -0.845269, -0.486384,
		30.919477, 30.300779, 37.416660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389776, 30.674011, 38.036896>,  <31.074354, 30.892467, 37.757130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389776, 30.674011, 38.036896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570776, 30.363377, 37.861553>,  <30.679375, 30.176996, 37.756348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570776, 30.363377, 37.861553>,  <30.389776, 30.674011, 38.036896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570776, 30.363377, 37.861553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034295, -0.506355, 0.861643,
		-0.891106, -0.374858, -0.255757,
		0.452498, -0.776586, -0.438360,
		30.706526, 30.130400, 37.730045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918940, 30.086159, 38.258514>,  <30.389776, 30.674011, 38.036896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918940, 30.086159, 38.258514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276445, 29.940897, 38.153210>,  <30.490948, 29.853739, 38.090027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276445, 29.940897, 38.153210>,  <29.918940, 30.086159, 38.258514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276445, 29.940897, 38.153210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053934, -0.669679, 0.740690,
		-0.445285, -0.647803, -0.618120,
		0.893763, -0.363156, -0.263260,
		30.544575, 29.831949, 38.074230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829836, 29.348028, 38.252075>,  <29.918940, 30.086159, 38.258514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829836, 29.348028, 38.252075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217600, 29.433123, 38.301048>,  <30.450258, 29.484179, 38.330433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217600, 29.433123, 38.301048>,  <29.829836, 29.348028, 38.252075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217600, 29.433123, 38.301048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062670, -0.696806, 0.714516,
		0.237319, -0.684985, -0.688822,
		0.969408, 0.212736, 0.122437,
		30.508423, 29.496944, 38.337780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249310, 28.705893, 38.078278>,  <29.829836, 29.348028, 38.252075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249310, 28.705893, 38.078278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477388, 28.935186, 38.313660>,  <30.614237, 29.072763, 38.454887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477388, 28.935186, 38.313660>,  <30.249310, 28.705893, 38.078278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477388, 28.935186, 38.313660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112792, -0.764153, 0.635097,
		0.813727, -0.295759, -0.500375,
		0.570198, 0.573234, 0.588453,
		30.648447, 29.107157, 38.490196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828524, 28.219471, 38.297657>,  <30.249310, 28.705893, 38.078278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828524, 28.219471, 38.297657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859245, 28.510593, 38.570244>,  <30.877678, 28.685266, 38.733795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859245, 28.510593, 38.570244>,  <30.828524, 28.219471, 38.297657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859245, 28.510593, 38.570244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134357, -0.684808, 0.716231,
		0.987952, 0.036549, -0.150383,
		0.076806, 0.727807, 0.681468,
		30.882286, 28.728935, 38.774685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383280, 27.985109, 38.778214>,  <30.828524, 28.219471, 38.297657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383280, 27.985109, 38.778214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200415, 28.268730, 38.992966>,  <31.090694, 28.438904, 39.121819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200415, 28.268730, 38.992966>,  <31.383280, 27.985109, 38.778214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200415, 28.268730, 38.992966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196003, -0.508494, 0.838461,
		0.867516, 0.488544, 0.093488,
		-0.457164, 0.709054, 0.536883,
		31.063265, 28.481447, 39.154030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752649, 27.979662, 39.382938>,  <31.383280, 27.985109, 38.778214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752649, 27.979662, 39.382938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419769, 28.169291, 39.497967>,  <31.220041, 28.283068, 39.566982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419769, 28.169291, 39.497967>,  <31.752649, 27.979662, 39.382938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419769, 28.169291, 39.497967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180071, -0.259451, 0.948820,
		0.524418, 0.841394, 0.130549,
		-0.832202, 0.474070, 0.287571,
		31.170109, 28.311512, 39.584236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927971, 28.325911, 39.920650>,  <31.752649, 27.979662, 39.382938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927971, 28.325911, 39.920650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529106, 28.334484, 39.949509>,  <31.289787, 28.339628, 39.966824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529106, 28.334484, 39.949509>,  <31.927971, 28.325911, 39.920650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529106, 28.334484, 39.949509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070912, -0.053432, 0.996050,
		0.025206, 0.998341, 0.051761,
		-0.997164, 0.021436, 0.072141,
		31.229958, 28.340916, 39.971149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781404, 28.699938, 40.474522>,  <31.927971, 28.325911, 39.920650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781404, 28.699938, 40.474522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430477, 28.508112, 40.467247>,  <31.219921, 28.393017, 40.462883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430477, 28.508112, 40.467247>,  <31.781404, 28.699938, 40.474522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430477, 28.508112, 40.467247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031424, -0.095224, 0.994960,
		-0.478879, 0.872325, 0.098612,
		-0.877318, -0.479564, -0.018189,
		31.167282, 28.364243, 40.461792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347048, 29.059973, 40.856464>,  <31.781404, 28.699938, 40.474522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347048, 29.059973, 40.856464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169718, 28.701801, 40.840130>,  <31.063320, 28.486898, 40.830330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169718, 28.701801, 40.840130>,  <31.347048, 29.059973, 40.856464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169718, 28.701801, 40.840130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073467, -0.009107, 0.997256,
		-0.893346, 0.445107, -0.061747,
		-0.443324, -0.895431, -0.040836,
		31.036720, 28.433172, 40.827881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710478, 29.016169, 41.430351>,  <31.347048, 29.059973, 40.856464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710478, 29.016169, 41.430351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837780, 28.641634, 41.371033>,  <30.914162, 28.416914, 41.335442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837780, 28.641634, 41.371033>,  <30.710478, 29.016169, 41.430351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837780, 28.641634, 41.371033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047373, -0.171941, 0.983968,
		-0.946821, -0.306126, -0.099078,
		0.318253, -0.936335, -0.148295,
		30.933256, 28.360733, 41.326546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452799, 28.771505, 42.004997>,  <30.710478, 29.016169, 41.430351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452799, 28.771505, 42.004997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681728, 28.480347, 41.853939>,  <30.819086, 28.305653, 41.763306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681728, 28.480347, 41.853939>,  <30.452799, 28.771505, 42.004997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681728, 28.480347, 41.853939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184883, -0.334132, 0.924215,
		-0.798916, -0.598769, -0.056656,
		0.572322, -0.727895, -0.377646,
		30.853424, 28.261978, 41.740646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284222, 28.255798, 42.389793>,  <30.452799, 28.771505, 42.004997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284222, 28.255798, 42.389793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648008, 28.175449, 42.244183>,  <30.866282, 28.127239, 42.156815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648008, 28.175449, 42.244183>,  <30.284222, 28.255798, 42.389793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648008, 28.175449, 42.244183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247741, -0.441329, 0.862470,
		-0.333902, -0.874574, -0.351610,
		0.909469, -0.200872, -0.364028,
		30.920849, 28.115187, 42.134975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356253, 27.483736, 42.389187>,  <30.284222, 28.255798, 42.389793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356253, 27.483736, 42.389187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721189, 27.646940, 42.402802>,  <30.940151, 27.744864, 42.410969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721189, 27.646940, 42.402802>,  <30.356253, 27.483736, 42.389187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721189, 27.646940, 42.402802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162465, -0.437071, 0.884632,
		0.375816, -0.801557, -0.465046,
		0.912341, 0.408013, 0.034033,
		30.994892, 27.769344, 42.413010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793547, 26.956656, 42.406773>,  <30.356253, 27.483736, 42.389187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793547, 26.956656, 42.406773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028099, 27.253752, 42.536072>,  <31.168831, 27.432009, 42.613651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028099, 27.253752, 42.536072>,  <30.793547, 26.956656, 42.406773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028099, 27.253752, 42.536072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124338, -0.476858, 0.870141,
		0.800435, -0.470044, -0.371972,
		0.586383, 0.742741, 0.323250,
		31.204014, 27.476574, 42.633045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372293, 26.620928, 42.692944>,  <30.793547, 26.956656, 42.406773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372293, 26.620928, 42.692944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350897, 26.996956, 42.827648>,  <31.338058, 27.222572, 42.908470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350897, 26.996956, 42.827648>,  <31.372293, 26.620928, 42.692944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350897, 26.996956, 42.827648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260227, -0.312469, 0.913589,
		0.964065, 0.136506, -0.227916,
		-0.053493, 0.940069, 0.336763,
		31.334848, 27.278976, 42.928677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086437, 26.753790, 43.002491>,  <31.372293, 26.620928, 42.692944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086437, 26.753790, 43.002491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803816, 26.990122, 43.158287>,  <31.634243, 27.131922, 43.251766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803816, 26.990122, 43.158287>,  <32.086437, 26.753790, 43.002491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803816, 26.990122, 43.158287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285976, -0.265057, 0.920849,
		0.647303, 0.762013, 0.018313,
		-0.706553, 0.590831, 0.389490,
		31.591850, 27.167372, 43.275135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674931, 27.273420, 43.038639>,  <32.086437, 26.753790, 43.002491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674931, 27.273420, 43.038639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067581, 27.203602, 43.069485>,  <33.303169, 27.161711, 43.087994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067581, 27.203602, 43.069485>,  <32.674931, 27.273420, 43.038639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067581, 27.203602, 43.069485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129837, 0.314771, -0.940246,
		0.139844, 0.932980, 0.331650,
		0.981624, -0.174548, 0.077117,
		33.362068, 27.151237, 43.092621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126156, 27.891951, 42.788651>,  <32.674931, 27.273420, 43.038639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126156, 27.891951, 42.788651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388008, 27.590513, 42.764790>,  <33.545120, 27.409651, 42.750473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388008, 27.590513, 42.764790>,  <33.126156, 27.891951, 42.788651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388008, 27.590513, 42.764790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305825, 0.336174, -0.890763,
		0.691327, 0.564875, 0.450537,
		0.654628, -0.753594, -0.059653,
		33.584396, 27.364435, 42.746895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649036, 28.162933, 42.433773>,  <33.126156, 27.891951, 42.788651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649036, 28.162933, 42.433773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661011, 27.766371, 42.382839>,  <33.668198, 27.528433, 42.352280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661011, 27.766371, 42.382839>,  <33.649036, 28.162933, 42.433773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661011, 27.766371, 42.382839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043887, 0.128569, -0.990729,
		0.998588, 0.024074, 0.047359,
		0.029939, -0.991408, -0.127331,
		33.669994, 27.468948, 42.344639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266624, 28.110453, 42.011696>,  <33.649036, 28.162933, 42.433773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266624, 28.110453, 42.011696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064175, 27.766636, 41.983341>,  <33.942703, 27.560347, 41.966328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064175, 27.766636, 41.983341>,  <34.266624, 28.110453, 42.011696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064175, 27.766636, 41.983341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199687, -0.036834, -0.979167,
		0.839023, -0.509739, 0.190282,
		-0.506128, -0.859540, -0.070884,
		33.912334, 27.508774, 41.962074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774677, 27.640394, 41.675789>,  <34.266624, 28.110453, 42.011696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774677, 27.640394, 41.675789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404934, 27.495970, 41.626495>,  <34.183086, 27.409315, 41.596920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404934, 27.495970, 41.626495>,  <34.774677, 27.640394, 41.675789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404934, 27.495970, 41.626495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149848, -0.046540, -0.987613,
		0.350856, -0.931379, 0.097124,
		-0.924362, -0.361064, -0.123236,
		34.127625, 27.387651, 41.589523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
