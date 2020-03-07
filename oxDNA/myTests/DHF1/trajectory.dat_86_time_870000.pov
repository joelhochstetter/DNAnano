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
	<2.062440, 3.622253, 4.394245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.900194, 3.257900, 4.363865>,  <1.802846, 3.039288, 4.345637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.900194, 3.257900, 4.363865>,  <2.062440, 3.622253, 4.394245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.900194, 3.257900, 4.363865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367017, -0.086204, -0.926212,
		0.837123, -0.403561, 0.369275,
		-0.405615, -0.910883, -0.075950,
		1.778509, 2.984635, 4.341080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.564507, 3.017098, 4.391695>,  <2.062440, 3.622253, 4.394245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.564507, 3.017098, 4.391695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.236425, 2.986450, 4.164928>,  <2.039576, 2.968061, 4.028869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.236425, 2.986450, 4.164928>,  <2.564507, 3.017098, 4.391695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.236425, 2.986450, 4.164928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561791, -0.294897, -0.772934,
		-0.107959, -0.952452, 0.284921,
		-0.820205, -0.076620, -0.566915,
		1.990364, 2.963464, 3.994854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.575759, 2.353120, 4.284459>,  <2.564507, 3.017098, 4.391695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.575759, 2.353120, 4.284459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.368262, 2.556728, 4.009706>,  <2.243764, 2.678893, 3.844855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.368262, 2.556728, 4.009706>,  <2.575759, 2.353120, 4.284459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.368262, 2.556728, 4.009706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636768, -0.306063, -0.707709,
		-0.570467, -0.804502, -0.165360,
		-0.518742, 0.509021, -0.686880,
		2.212640, 2.709435, 3.803643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.505739, 1.927156, 3.788922>,  <2.575759, 2.353120, 4.284459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.505739, 1.927156, 3.788922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.462193, 2.289181, 3.624477>,  <2.436066, 2.506395, 3.525810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.462193, 2.289181, 3.624477>,  <2.505739, 1.927156, 3.788922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.462193, 2.289181, 3.624477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476426, -0.315471, -0.820668,
		-0.872449, -0.285205, -0.396851,
		-0.108863, 0.905061, -0.411112,
		2.429534, 2.560699, 3.501144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.186946, 1.832741, 3.200093>,  <2.505739, 1.927156, 3.788922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.186946, 1.832741, 3.200093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.420783, 2.157269, 3.198738>,  <2.561085, 2.351985, 3.197925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.420783, 2.157269, 3.198738>,  <2.186946, 1.832741, 3.200093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.420783, 2.157269, 3.198738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539028, -0.391507, -0.745769,
		-0.606383, 0.434145, -0.666196,
		0.584593, 0.811320, -0.003387,
		2.596161, 2.400665, 3.197722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.235615, 1.932428, 2.451574>,  <2.186946, 1.832741, 3.200093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.235615, 1.932428, 2.451574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.528657, 2.152794, 2.611465>,  <2.704482, 2.285013, 2.707400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.528657, 2.152794, 2.611465>,  <2.235615, 1.932428, 2.451574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.528657, 2.152794, 2.611465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600990, -0.247868, -0.759851,
		-0.319533, 0.796903, -0.512683,
		0.732605, 0.550915, 0.399729,
		2.748438, 2.318068, 2.731384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.539670, 2.419115, 1.947485>,  <2.235615, 1.932428, 2.451574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.539670, 2.419115, 1.947485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.826756, 2.359909, 2.219654>,  <2.999008, 2.324385, 2.382955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.826756, 2.359909, 2.219654>,  <2.539670, 2.419115, 1.947485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.826756, 2.359909, 2.219654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688588, 0.005512, -0.725131,
		0.103580, 0.988970, 0.105877,
		0.717717, -0.148015, 0.680422,
		3.042072, 2.315505, 2.423781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.084223, 2.693834, 1.571727>,  <2.539670, 2.419115, 1.947485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.084223, 2.693834, 1.571727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.252543, 2.469795, 1.857164>,  <3.353536, 2.335372, 2.028427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.252543, 2.469795, 1.857164>,  <3.084223, 2.693834, 1.571727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.252543, 2.469795, 1.857164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809406, -0.123381, -0.574142,
		0.409619, 0.819188, 0.401427,
		0.420802, -0.560097, 0.713594,
		3.378784, 2.301766, 2.071243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.802114, 2.417391, 1.807790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.817562, 2.017693, 1.809307>,  <4.826831, 1.777873, 1.810217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.817562, 2.017693, 1.809307>,  <4.802114, 2.417391, 1.807790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.817562, 2.017693, 1.809307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411421, 0.019361, 0.911240,
		-0.910627, -0.033633, 0.411858,
		0.038621, -0.999247, 0.003793,
		4.829149, 1.717919, 1.810445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.665469, 2.148077, 2.445468>,  <4.802114, 2.417391, 1.807790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.665469, 2.148077, 2.445468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.837536, 1.827271, 2.279709>,  <4.940776, 1.634787, 2.180253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.837536, 1.827271, 2.279709>,  <4.665469, 2.148077, 2.445468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.837536, 1.827271, 2.279709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280538, -0.317551, 0.905793,
		-0.858052, -0.505898, 0.088396,
		0.430168, -0.802016, -0.414398,
		4.966586, 1.586666, 2.155389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.456102, 1.496595, 2.751090>,  <4.665469, 2.148077, 2.445468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.456102, 1.496595, 2.751090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.820496, 1.461540, 2.589880>,  <5.039132, 1.440507, 2.493154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.820496, 1.461540, 2.589880>,  <4.456102, 1.496595, 2.751090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.820496, 1.461540, 2.589880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367894, -0.269082, 0.890084,
		-0.186449, -0.959122, -0.212889,
		0.910983, -0.087635, -0.403025,
		5.093791, 1.435249, 2.468972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.751672, 1.218821, 2.535403>,  <4.456102, 1.496595, 2.751090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.751672, 1.218821, 2.535403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.817757, 1.598145, 2.427023>,  <3.857407, 1.825739, 2.361995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.817757, 1.598145, 2.427023>,  <3.751672, 1.218821, 2.535403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.817757, 1.598145, 2.427023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772571, 0.295205, 0.562128,
		0.613058, 0.116459, 0.781407,
		0.165211, 0.948310, -0.270950,
		3.867320, 1.882638, 2.345738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.737197, 1.628166, 3.145952>,  <3.751672, 1.218821, 2.535403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.737197, 1.628166, 3.145952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.656166, 1.846825, 2.820955>,  <3.607548, 1.978020, 2.625957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.656166, 1.846825, 2.820955>,  <3.737197, 1.628166, 3.145952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.656166, 1.846825, 2.820955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674056, 0.524022, 0.520624,
		0.710360, 0.653131, 0.262315,
		-0.202577, 0.546645, -0.812491,
		3.595393, 2.010818, 2.577208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.774927, 2.214286, 3.446491>,  <3.737197, 1.628166, 3.145952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.774927, 2.214286, 3.446491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.555569, 2.242714, 3.113214>,  <3.423954, 2.259770, 2.913248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.555569, 2.242714, 3.113214>,  <3.774927, 2.214286, 3.446491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.555569, 2.242714, 3.113214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665459, 0.566285, 0.486299,
		0.506385, 0.821140, -0.263256,
		-0.548397, 0.071069, -0.833193,
		3.391050, 2.264035, 2.863257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.881630, 2.894432, 3.150026>,  <3.774927, 2.214286, 3.446491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.881630, 2.894432, 3.150026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.538807, 2.700577, 3.080082>,  <3.333113, 2.584263, 3.038116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.538807, 2.700577, 3.080082>,  <3.881630, 2.894432, 3.150026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.538807, 2.700577, 3.080082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493303, 0.673963, 0.549932,
		-0.148670, 0.557583, -0.816700,
		-0.857058, -0.484639, -0.174860,
		3.281689, 2.555185, 3.027624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.394099, 3.420945, 3.240063>,  <3.881630, 2.894432, 3.150026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.394099, 3.420945, 3.240063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.159199, 3.097244, 3.233774>,  <3.018259, 2.903024, 3.230001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.159199, 3.097244, 3.233774>,  <3.394099, 3.420945, 3.240063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.159199, 3.097244, 3.233774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646316, 0.457142, 0.610980,
		-0.487250, 0.368960, -0.791490,
		-0.587251, -0.809252, -0.015722,
		2.983023, 2.854469, 3.229058>
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
