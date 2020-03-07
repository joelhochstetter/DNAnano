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
	<3.488125, 0.852853, 2.433043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.635399, 0.628006, 2.729277>,  <3.723763, 0.493098, 2.907017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.635399, 0.628006, 2.729277>,  <3.488125, 0.852853, 2.433043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.635399, 0.628006, 2.729277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917719, -0.347461, 0.192517,
		0.149108, -0.750530, -0.643794,
		0.368184, -0.562116, 0.740585,
		3.745854, 0.459371, 2.951452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.172446, 0.190549, 2.430630>,  <3.488125, 0.852853, 2.433043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.172446, 0.190549, 2.430630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276459, 0.262192, 2.810167>,  <3.338867, 0.305178, 3.037890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276459, 0.262192, 2.810167>,  <3.172446, 0.190549, 2.430630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.276459, 0.262192, 2.810167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884212, -0.350692, 0.308519,
		0.388010, -0.919204, 0.067178,
		0.260033, 0.179108, 0.948843,
		3.354469, 0.315924, 3.094820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.662045, -0.219176, 2.632424>,  <3.172446, 0.190549, 2.430630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.662045, -0.219176, 2.632424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.769316, 0.016006, 2.937681>,  <2.833678, 0.157116, 3.120836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.769316, 0.016006, 2.937681>,  <2.662045, -0.219176, 2.632424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.769316, 0.016006, 2.937681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892009, -0.147653, 0.427221,
		0.363868, -0.795302, 0.484866,
		0.268178, 0.587957, 0.763143,
		2.849769, 0.192393, 3.166624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.705590, -0.562622, 3.305193>,  <2.662045, -0.219176, 2.632424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.705590, -0.562622, 3.305193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.613968, -0.173965, 3.328684>,  <2.558995, 0.059228, 3.342778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.613968, -0.173965, 3.328684>,  <2.705590, -0.562622, 3.305193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.613968, -0.173965, 3.328684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831579, -0.226682, 0.507042,
		0.505975, 0.067304, 0.859918,
		-0.229054, 0.971641, 0.058726,
		2.545252, 0.117527, 3.346302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.623685, -0.420599, 4.055082>,  <2.705590, -0.562622, 3.305193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.623685, -0.420599, 4.055082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.442015, -0.120338, 3.863146>,  <2.333012, 0.059818, 3.747984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.442015, -0.120338, 3.863146>,  <2.623685, -0.420599, 4.055082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.442015, -0.120338, 3.863146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790708, -0.091471, 0.605321,
		0.410493, 0.654337, 0.635090,
		-0.454176, 0.750650, -0.479842,
		2.305762, 0.104857, 3.719193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.177493, -0.156913, 4.554735>,  <2.623685, -0.420599, 4.055082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.177493, -0.156913, 4.554735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.032850, 0.004646, 4.218615>,  <1.946064, 0.101582, 4.016942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.032850, 0.004646, 4.218615>,  <2.177493, -0.156913, 4.554735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.032850, 0.004646, 4.218615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922540, -0.024734, 0.385108,
		0.134760, 0.914470, 0.381555,
		-0.361607, 0.403897, -0.840302,
		1.924368, 0.125815, 3.966524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.870944, 0.530945, 4.737798>,  <2.177493, -0.156913, 4.554735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.870944, 0.530945, 4.737798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.698914, 0.408035, 4.398241>,  <1.595695, 0.334289, 4.194507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.698914, 0.408035, 4.398241>,  <1.870944, 0.530945, 4.737798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.698914, 0.408035, 4.398241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902791, 0.147732, 0.403910,
		0.001297, 0.940084, -0.340940,
		-0.430077, -0.307274, -0.848891,
		1.569890, 0.315853, 4.143574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.198691, 0.991164, 4.572747>,  <1.870944, 0.530945, 4.737798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.198691, 0.991164, 4.572747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.139872, 0.642754, 4.385262>,  <1.104580, 0.433708, 4.272770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.139872, 0.642754, 4.385262>,  <1.198691, 0.991164, 4.572747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.139872, 0.642754, 4.385262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936893, -0.029303, 0.348385,
		-0.317187, 0.490364, -0.811748,
		-0.147049, -0.871025, -0.468713,
		1.095757, 0.381446, 4.244648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.132123, 0.360284, 4.788732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.162239, 0.153732, 4.447515>,  <-0.180309, 0.029801, 4.242784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.162239, 0.153732, 4.447515>,  <-0.132123, 0.360284, 4.788732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.162239, 0.153732, 4.447515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994314, 0.025719, -0.103328,
		0.075296, -0.855973, 0.511508,
		-0.075290, -0.516380, -0.853043,
		-0.184826, -0.001182, 4.191601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.296777, -0.243099, 4.747256>,  <-0.132123, 0.360284, 4.788732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.296777, -0.243099, 4.747256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.250587, -0.107918, 4.373635>,  <0.222873, -0.026809, 4.149463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.250587, -0.107918, 4.373635>,  <0.296777, -0.243099, 4.747256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.250587, -0.107918, 4.373635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984385, -0.086841, -0.153118,
		-0.132860, -0.937149, -0.322646,
		-0.115475, 0.337952, -0.934053,
		0.215945, -0.006532, 4.093420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.633303, -0.742248, 4.213913>,  <0.296777, -0.243099, 4.747256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.633303, -0.742248, 4.213913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.633873, -0.355438, 4.112041>,  <0.634215, -0.123353, 4.050917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.633873, -0.355438, 4.112041>,  <0.633303, -0.742248, 4.213913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.633873, -0.355438, 4.112041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972482, -0.060676, -0.224939,
		-0.232974, -0.247353, -0.940500,
		0.001426, 0.967024, -0.254682,
		0.634301, -0.065331, 4.035636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.852452, -0.680813, 3.500344>,  <0.633303, -0.742248, 4.213913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.852452, -0.680813, 3.500344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.947319, -0.357140, 3.715368>,  <1.004239, -0.162935, 3.844383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.947319, -0.357140, 3.715368>,  <0.852452, -0.680813, 3.500344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.947319, -0.357140, 3.715368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964235, -0.128678, -0.231716,
		-0.118329, 0.573291, -0.810763,
		0.237168, 0.809185, 0.537561,
		1.018469, -0.114384, 3.876637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.165387, -0.269448, 3.024936>,  <0.852452, -0.680813, 3.500344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.165387, -0.269448, 3.024936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.278526, -0.090286, 3.364201>,  <1.346410, 0.017211, 3.567760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.278526, -0.090286, 3.364201>,  <1.165387, -0.269448, 3.024936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.278526, -0.090286, 3.364201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802991, 0.373061, -0.464793,
		-0.524598, 0.812532, -0.254143,
		0.282848, 0.447904, 0.848162,
		1.363381, 0.044085, 3.618649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.318146, 0.468878, 2.854437>,  <1.165387, -0.269448, 3.024936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.318146, 0.468878, 2.854437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.512535, 0.362961, 3.187595>,  <1.629168, 0.299411, 3.387491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.512535, 0.362961, 3.187595>,  <1.318146, 0.468878, 2.854437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.512535, 0.362961, 3.187595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857453, 0.328880, -0.395744,
		-0.169133, 0.906490, 0.386873,
		0.485972, -0.264792, 0.832896,
		1.658327, 0.283523, 3.437464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.673244, 1.095175, 3.014823>,  <1.318146, 0.468878, 2.854437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.673244, 1.095175, 3.014823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.849709, 0.791878, 3.206841>,  <1.955587, 0.609900, 3.322053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.849709, 0.791878, 3.206841>,  <1.673244, 1.095175, 3.014823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.849709, 0.791878, 3.206841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896775, 0.392865, -0.203596,
		-0.034219, 0.520313, 0.853290,
		0.441162, -0.758242, 0.480047,
		1.982057, 0.564405, 3.350856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.186554, 1.372242, 3.396575>,  <1.673244, 1.095175, 3.014823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.186554, 1.372242, 3.396575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.277267, 0.984428, 3.359540>,  <2.331695, 0.751740, 3.337319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.277267, 0.984428, 3.359540>,  <2.186554, 1.372242, 3.396575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.277267, 0.984428, 3.359540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932249, 0.243609, -0.267518,
		0.281923, -0.025647, 0.959094,
		0.226783, -0.969534, -0.092588,
		2.345302, 0.693568, 3.331764>
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
