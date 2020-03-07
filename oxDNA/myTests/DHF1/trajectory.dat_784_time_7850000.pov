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
	<0.705232, 2.326870, 4.224564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.642731, 1.969368, 4.056380>,  <0.605230, 1.754866, 3.955470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.642731, 1.969368, 4.056380>,  <0.705232, 2.326870, 4.224564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.642731, 1.969368, 4.056380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932279, 0.007155, -0.361669,
		0.326252, -0.448496, 0.832112,
		-0.156253, -0.893756, -0.420458,
		0.595855, 1.701241, 3.930243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.044154, 1.796082, 4.594607>,  <0.705232, 2.326870, 4.224564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.044154, 1.796082, 4.594607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.003738, 1.742870, 4.200228>,  <0.979489, 1.710943, 3.963600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.003738, 1.742870, 4.200228>,  <1.044154, 1.796082, 4.594607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.003738, 1.742870, 4.200228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982863, 0.140235, -0.119643,
		0.154180, -0.981141, 0.116580,
		-0.101038, -0.133029, -0.985949,
		0.973427, 1.702962, 3.904443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.729935, 1.562878, 4.385011>,  <1.044154, 1.796082, 4.594607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.729935, 1.562878, 4.385011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.552275, 1.707657, 4.057176>,  <1.445679, 1.794524, 3.860475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.552275, 1.707657, 4.057176>,  <1.729935, 1.562878, 4.385011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.552275, 1.707657, 4.057176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895430, 0.148099, -0.419847,
		-0.030583, -0.920359, -0.389877,
		-0.444150, 0.361948, -0.819588,
		1.419030, 1.816241, 3.811299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.902741, 1.157126, 3.771029>,  <1.729935, 1.562878, 4.385011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.902741, 1.157126, 3.771029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.836761, 1.539261, 3.672949>,  <1.797174, 1.768542, 3.614101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.836761, 1.539261, 3.672949>,  <1.902741, 1.157126, 3.771029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.836761, 1.539261, 3.672949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932629, 0.070183, -0.353944,
		-0.320927, -0.287063, -0.902552,
		-0.164949, 0.955337, -0.245200,
		1.787277, 1.825862, 3.599389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.943875, 1.241415, 3.078285>,  <1.902741, 1.157126, 3.771029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.943875, 1.241415, 3.078285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.049297, 1.586052, 3.251811>,  <2.112550, 1.792834, 3.355927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.049297, 1.586052, 3.251811>,  <1.943875, 1.241415, 3.078285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.049297, 1.586052, 3.251811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881768, -0.032807, -0.470542,
		-0.391184, 0.506538, -0.768372,
		0.263555, 0.861593, 0.433815,
		2.128364, 1.844530, 3.381956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.477759, 1.655204, 2.612827>,  <1.943875, 1.241415, 3.078285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.477759, 1.655204, 2.612827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.499973, 1.835308, 2.969295>,  <2.513302, 1.943371, 3.183175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.499973, 1.835308, 2.969295>,  <2.477759, 1.655204, 2.612827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.499973, 1.835308, 2.969295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980293, 0.144883, -0.134292,
		-0.189582, 0.881064, -0.433342,
		0.055536, 0.450261, 0.891168,
		2.516634, 1.970387, 3.236645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.969624, 2.140522, 2.461053>,  <2.477759, 1.655204, 2.612827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.969624, 2.140522, 2.461053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.941725, 2.128574, 2.859900>,  <2.924985, 2.121406, 3.099208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.941725, 2.128574, 2.859900>,  <2.969624, 2.140522, 2.461053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.941725, 2.128574, 2.859900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994162, 0.080403, 0.071950,
		-0.082321, 0.996315, 0.024087,
		-0.069748, -0.029869, 0.997117,
		2.920800, 2.119613, 3.159035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.299927, 2.736055, 2.762995>,  <2.969624, 2.140522, 2.461053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.299927, 2.736055, 2.762995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.311743, 2.428898, 3.018953>,  <3.318832, 2.244604, 3.172529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.311743, 2.428898, 3.018953>,  <3.299927, 2.736055, 2.762995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.311743, 2.428898, 3.018953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996317, -0.028938, -0.080717,
		0.080499, 0.639925, 0.764210,
		0.029538, -0.767893, 0.639897,
		3.320604, 2.198530, 3.210922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.592893, 1.490539, 2.992131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.488895, 1.387558, 3.364393>,  <4.426497, 1.325769, 3.587751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.488895, 1.387558, 3.364393>,  <4.592893, 1.490539, 2.992131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.488895, 1.387558, 3.364393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822169, 0.564475, -0.073533,
		-0.506401, -0.784275, -0.358429,
		-0.259994, -0.257452, 0.930656,
		4.410897, 1.310322, 3.643590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.952026, 1.087332, 2.941754>,  <4.592893, 1.490539, 2.992131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.952026, 1.087332, 2.941754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.014439, 1.274788, 3.289554>,  <4.051887, 1.387261, 3.498234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.014439, 1.274788, 3.289554>,  <3.952026, 1.087332, 2.941754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.014439, 1.274788, 3.289554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885247, 0.456842, -0.087368,
		-0.438169, -0.756091, 0.486143,
		0.156033, 0.468638, 0.869501,
		4.061248, 1.415379, 3.550404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.383519, 0.961646, 3.493320>,  <3.952026, 1.087332, 2.941754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.383519, 0.961646, 3.493320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.529789, 1.333931, 3.496314>,  <3.617551, 1.557302, 3.498111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.529789, 1.333931, 3.496314>,  <3.383519, 0.961646, 3.493320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.529789, 1.333931, 3.496314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930680, 0.365731, -0.008718,
		-0.010852, -0.003780, 0.999934,
		0.365674, 0.930713, 0.007487,
		3.639491, 1.613145, 3.498560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.123210, 1.307359, 4.098905>,  <3.383519, 0.961646, 3.493320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.123210, 1.307359, 4.098905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.204723, 1.587303, 3.825068>,  <3.253632, 1.755270, 3.660765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.204723, 1.587303, 3.825068>,  <3.123210, 1.307359, 4.098905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.204723, 1.587303, 3.825068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911308, 0.391132, 0.128583,
		0.357756, 0.597673, 0.717494,
		0.203784, 0.699859, -0.684594,
		3.265859, 1.797261, 3.619689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.959525, 1.979367, 4.491426>,  <3.123210, 1.307359, 4.098905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.959525, 1.979367, 4.491426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.935635, 1.998077, 4.092578>,  <2.921300, 2.009304, 3.853270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.935635, 1.998077, 4.092578>,  <2.959525, 1.979367, 4.491426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.935635, 1.998077, 4.092578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926158, 0.370035, 0.072835,
		0.372376, 0.927839, 0.021222,
		-0.059726, 0.046777, -0.997118,
		2.917717, 2.012110, 3.793443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.650662, 2.645215, 4.382355>,  <2.959525, 1.979367, 4.491426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.650662, 2.645215, 4.382355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.616974, 2.449570, 4.035098>,  <2.596761, 2.332182, 3.826743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.616974, 2.449570, 4.035098>,  <2.650662, 2.645215, 4.382355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.616974, 2.449570, 4.035098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940984, 0.325655, -0.092188,
		0.327806, 0.809148, -0.487670,
		-0.084219, -0.489110, -0.868147,
		2.591708, 2.302835, 3.774654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.249399, 3.048897, 3.923646>,  <2.650662, 2.645215, 4.382355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.249399, 3.048897, 3.923646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.232052, 2.681694, 3.765973>,  <2.221644, 2.461372, 3.671369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.232052, 2.681694, 3.765973>,  <2.249399, 3.048897, 3.923646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.232052, 2.681694, 3.765973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997781, 0.059750, -0.029377,
		0.050521, 0.392034, -0.918562,
		-0.043367, -0.918008, -0.394183,
		2.219042, 2.406291, 3.647718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.798299, 3.090894, 3.407632>,  <2.249399, 3.048897, 3.923646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.798299, 3.090894, 3.407632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.802834, 2.709641, 3.528568>,  <1.805554, 2.480889, 3.601130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.802834, 2.709641, 3.528568>,  <1.798299, 3.090894, 3.407632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.802834, 2.709641, 3.528568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996458, 0.014426, 0.082844,
		-0.083323, -0.302209, -0.949593,
		0.011337, -0.953132, 0.302340,
		1.806235, 2.423701, 3.619270>
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
