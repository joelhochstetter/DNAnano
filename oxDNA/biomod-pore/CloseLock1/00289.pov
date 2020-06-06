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
	<24.172112, 35.181355, 34.691753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394184, 34.965935, 34.945286>,  <24.527428, 34.836685, 35.097404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394184, 34.965935, 34.945286>,  <24.172112, 35.181355, 34.691753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.394184, 34.965935, 34.945286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831604, 0.372698, -0.411742,
		-0.014486, 0.755688, 0.654772,
		0.555181, -0.538546, 0.633832,
		24.560738, 34.804371, 35.135437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.703386, 35.685658, 34.826729>,  <24.172112, 35.181355, 34.691753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.703386, 35.685658, 34.826729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871246, 35.334438, 34.918747>,  <24.971962, 35.123707, 34.973957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871246, 35.334438, 34.918747>,  <24.703386, 35.685658, 34.826729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871246, 35.334438, 34.918747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837094, 0.276384, -0.472108,
		0.350954, 0.390689, 0.850996,
		0.419649, -0.878052, 0.230045,
		24.997141, 35.071022, 34.987759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499308, 35.635223, 35.071785>,  <24.703386, 35.685658, 34.826729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499308, 35.635223, 35.071785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431770, 35.266895, 34.931171>,  <25.391247, 35.045898, 34.846802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431770, 35.266895, 34.931171>,  <25.499308, 35.635223, 35.071785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431770, 35.266895, 34.931171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899525, 0.001840, -0.436867,
		0.402924, -0.389978, 0.827992,
		-0.168845, -0.920822, -0.351536,
		25.381117, 34.990650, 34.825710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246382, 35.407681, 35.132858>,  <25.499308, 35.635223, 35.071785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246382, 35.407681, 35.132858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535635, 35.200138, 35.315228>,  <26.709187, 35.075615, 35.424652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535635, 35.200138, 35.315228>,  <26.246382, 35.407681, 35.132858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535635, 35.200138, 35.315228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607516, -0.163713, 0.777253,
		-0.328641, -0.839039, -0.433600,
		0.723131, -0.518856, 0.455926,
		26.752575, 35.044483, 35.452007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914421, 35.098820, 35.680458>,  <26.246382, 35.407681, 35.132858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914421, 35.098820, 35.680458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305439, 35.082981, 35.763245>,  <26.540051, 35.073479, 35.812916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305439, 35.082981, 35.763245>,  <25.914421, 35.098820, 35.680458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305439, 35.082981, 35.763245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207993, -0.023853, 0.977839,
		-0.033815, -0.998930, -0.031560,
		0.977546, -0.039630, 0.206964,
		26.598703, 35.071102, 35.825333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037254, 34.519882, 36.239452>,  <25.914421, 35.098820, 35.680458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037254, 34.519882, 36.239452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359987, 34.756157, 36.243690>,  <26.553627, 34.897923, 36.246235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359987, 34.756157, 36.243690>,  <26.037254, 34.519882, 36.239452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359987, 34.756157, 36.243690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005254, -0.010762, 0.999928,
		0.590759, -0.806829, -0.005580,
		0.806831, 0.590688, 0.010596,
		26.602037, 34.933365, 36.246868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419741, 34.368904, 36.863819>,  <26.037254, 34.519882, 36.239452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419741, 34.368904, 36.863819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566784, 34.731586, 36.781124>,  <26.655010, 34.949196, 36.731506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566784, 34.731586, 36.781124>,  <26.419741, 34.368904, 36.863819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566784, 34.731586, 36.781124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142369, 0.274550, 0.950975,
		0.919018, -0.320155, 0.230015,
		0.367610, 0.906710, -0.206736,
		26.677067, 35.003601, 36.719105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882792, 34.490837, 37.380630>,  <26.419741, 34.368904, 36.863819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882792, 34.490837, 37.380630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792711, 34.849976, 37.229286>,  <26.738663, 35.065456, 37.138477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792711, 34.849976, 37.229286>,  <26.882792, 34.490837, 37.380630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792711, 34.849976, 37.229286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092045, 0.406209, 0.909132,
		0.969955, 0.169912, -0.174121,
		-0.225202, 0.897844, -0.378365,
		26.725151, 35.119328, 37.115776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248510, 34.984619, 37.818336>,  <26.882792, 34.490837, 37.380630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248510, 34.984619, 37.818336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938883, 35.182693, 37.660545>,  <26.753107, 35.301537, 37.565872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938883, 35.182693, 37.660545>,  <27.248510, 34.984619, 37.818336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938883, 35.182693, 37.660545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040223, 0.583358, 0.811218,
		0.631825, 0.643804, -0.431640,
		-0.774067, 0.495186, -0.394476,
		26.706663, 35.331249, 37.542202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461462, 35.639725, 37.751549>,  <27.248510, 34.984619, 37.818336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461462, 35.639725, 37.751549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061981, 35.626945, 37.767422>,  <26.822292, 35.619278, 37.776947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061981, 35.626945, 37.767422>,  <27.461462, 35.639725, 37.751549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061981, 35.626945, 37.767422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007082, 0.684257, 0.729206,
		-0.050451, 0.728540, -0.683142,
		-0.998702, -0.031951, 0.039682,
		26.762371, 35.617359, 37.779327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253281, 36.326328, 37.946941>,  <27.461462, 35.639725, 37.751549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253281, 36.326328, 37.946941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919117, 36.115894, 38.010605>,  <26.718618, 35.989635, 38.048801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919117, 36.115894, 38.010605>,  <27.253281, 36.326328, 37.946941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919117, 36.115894, 38.010605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228136, 0.595341, 0.770404,
		-0.500049, 0.607292, -0.617371,
		-0.835407, -0.526084, 0.159155,
		26.668495, 35.958069, 38.058350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783073, 36.816158, 38.097996>,  <27.253281, 36.326328, 37.946941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783073, 36.816158, 38.097996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672235, 36.465118, 38.254475>,  <26.605732, 36.254494, 38.348362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672235, 36.465118, 38.254475>,  <26.783073, 36.816158, 38.097996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672235, 36.465118, 38.254475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204045, 0.451598, 0.868577,
		-0.938927, 0.160857, -0.304205,
		-0.277095, -0.877602, 0.391195,
		26.589108, 36.201839, 38.371834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281721, 37.070438, 38.545124>,  <26.783073, 36.816158, 38.097996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281721, 37.070438, 38.545124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334520, 36.701103, 38.689354>,  <26.366199, 36.479500, 38.775894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334520, 36.701103, 38.689354>,  <26.281721, 37.070438, 38.545124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334520, 36.701103, 38.689354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178376, 0.335696, 0.924927,
		-0.975069, -0.186405, -0.120391,
		0.131997, -0.923342, 0.360577,
		26.374119, 36.424099, 38.797527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704456, 36.905449, 39.003021>,  <26.281721, 37.070438, 38.545124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704456, 36.905449, 39.003021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975760, 36.625755, 39.093388>,  <26.138540, 36.457939, 39.147606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975760, 36.625755, 39.093388>,  <25.704456, 36.905449, 39.003021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975760, 36.625755, 39.093388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060411, 0.253338, 0.965490,
		-0.732338, -0.668497, 0.129587,
		0.678257, -0.699237, 0.225913,
		26.179237, 36.415985, 39.161163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415195, 36.632732, 39.651302>,  <25.704456, 36.905449, 39.003021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415195, 36.632732, 39.651302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796206, 36.514538, 39.621960>,  <26.024813, 36.443623, 39.604355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796206, 36.514538, 39.621960>,  <25.415195, 36.632732, 39.651302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796206, 36.514538, 39.621960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064238, -0.040457, 0.997114,
		-0.297603, -0.954490, -0.019554,
		0.952526, -0.295487, -0.073355,
		26.081963, 36.425892, 39.599953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506493, 35.962425, 39.976074>,  <25.415195, 36.632732, 39.651302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506493, 35.962425, 39.976074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820333, 36.210220, 39.986145>,  <26.008638, 36.358898, 39.992188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820333, 36.210220, 39.986145>,  <25.506493, 35.962425, 39.976074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820333, 36.210220, 39.986145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013322, -0.057444, 0.998260,
		0.619854, -0.782903, -0.053324,
		0.784604, 0.619486, 0.025177,
		26.055716, 36.396065, 39.993698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905544, 35.697872, 40.482204>,  <25.506493, 35.962425, 39.976074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905544, 35.697872, 40.482204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054855, 36.062931, 40.415588>,  <26.144442, 36.281967, 40.375618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054855, 36.062931, 40.415588>,  <25.905544, 35.697872, 40.482204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054855, 36.062931, 40.415588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104433, 0.137035, 0.985046,
		0.921823, -0.385087, -0.044159,
		0.373277, 0.912650, -0.166538,
		26.166838, 36.336727, 40.365627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557611, 35.762417, 40.802101>,  <25.905544, 35.697872, 40.482204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557611, 35.762417, 40.802101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459446, 36.149948, 40.788559>,  <26.400547, 36.382465, 40.780434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459446, 36.149948, 40.788559>,  <26.557611, 35.762417, 40.802101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459446, 36.149948, 40.788559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167227, 0.076711, 0.982929,
		0.954886, 0.235564, -0.180840,
		-0.245415, 0.968827, -0.033857,
		26.385822, 36.440598, 40.778400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025190, 36.116100, 41.256660>,  <26.557611, 35.762417, 40.802101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025190, 36.116100, 41.256660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729937, 36.379383, 41.197437>,  <26.552784, 36.537354, 41.161903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729937, 36.379383, 41.197437>,  <27.025190, 36.116100, 41.256660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729937, 36.379383, 41.197437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083544, 0.306949, 0.948052,
		0.669460, 0.687421, -0.281559,
		-0.738136, 0.658205, -0.148060,
		26.508495, 36.576843, 41.153019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311991, 36.773941, 41.524242>,  <27.025190, 36.116100, 41.256660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311991, 36.773941, 41.524242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914822, 36.820518, 41.514938>,  <26.676519, 36.848465, 41.509357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914822, 36.820518, 41.514938>,  <27.311991, 36.773941, 41.524242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914822, 36.820518, 41.514938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021154, 0.366211, 0.930291,
		0.116849, 0.923217, -0.366084,
		-0.992924, 0.116448, -0.023262,
		26.616943, 36.855453, 41.507961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170723, 37.357956, 41.936287>,  <27.311991, 36.773941, 41.524242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170723, 37.357956, 41.936287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793072, 37.226128, 41.935074>,  <26.566481, 37.147030, 41.934345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793072, 37.226128, 41.935074>,  <27.170723, 37.357956, 41.936287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793072, 37.226128, 41.935074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115958, 0.323553, 0.939078,
		-0.308512, 0.886959, -0.343691,
		-0.944126, -0.329570, -0.003030,
		26.509834, 37.127258, 41.934166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533857, 37.901173, 42.064163>,  <27.170723, 37.357956, 41.936287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533857, 37.901173, 42.064163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481150, 37.528954, 42.200813>,  <26.449526, 37.305622, 42.282803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481150, 37.528954, 42.200813>,  <26.533857, 37.901173, 42.064163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481150, 37.528954, 42.200813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067985, 0.352306, 0.933412,
		-0.988946, 0.099770, -0.109687,
		-0.131770, -0.930552, 0.341629,
		26.441618, 37.249786, 42.303303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300678, 38.006073, 42.781475>,  <26.533857, 37.901173, 42.064163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300678, 38.006073, 42.781475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356264, 37.610565, 42.759495>,  <26.389616, 37.373260, 42.746307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356264, 37.610565, 42.759495>,  <26.300678, 38.006073, 42.781475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356264, 37.610565, 42.759495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096937, -0.041639, 0.994419,
		-0.985542, -0.143515, 0.090062,
		0.138964, -0.988772, -0.054948,
		26.397953, 37.313934, 42.743011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841106, 37.722244, 43.288731>,  <26.300678, 38.006073, 42.781475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841106, 37.722244, 43.288731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138622, 37.460415, 43.234612>,  <26.317133, 37.303318, 43.202141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138622, 37.460415, 43.234612>,  <25.841106, 37.722244, 43.288731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138622, 37.460415, 43.234612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124383, -0.063343, 0.990210,
		-0.656737, -0.753339, 0.034304,
		0.743791, -0.654575, -0.135302,
		26.361759, 37.264042, 43.194019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872267, 37.414227, 43.995750>,  <25.841106, 37.722244, 43.288731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872267, 37.414227, 43.995750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207836, 37.321541, 43.798767>,  <26.409178, 37.265930, 43.680576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207836, 37.321541, 43.798767>,  <25.872267, 37.414227, 43.995750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207836, 37.321541, 43.798767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481502, -0.105806, 0.870035,
		-0.253706, -0.967012, 0.022809,
		0.838921, -0.231716, -0.492462,
		26.459513, 37.252026, 43.651028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285587, 36.826256, 44.177525>,  <25.872267, 37.414227, 43.995750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285587, 36.826256, 44.177525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511621, 37.122421, 44.031940>,  <26.647242, 37.300121, 43.944588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511621, 37.122421, 44.031940>,  <26.285587, 36.826256, 44.177525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511621, 37.122421, 44.031940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546315, -0.005230, 0.837563,
		0.618237, -0.672135, -0.407453,
		0.565086, 0.740410, -0.363964,
		26.681147, 37.344543, 43.922752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109188, 36.723534, 44.101963>,  <26.285587, 36.826256, 44.177525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109188, 36.723534, 44.101963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973207, 37.091347, 44.180851>,  <26.891619, 37.312035, 44.228184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973207, 37.091347, 44.180851>,  <27.109188, 36.723534, 44.101963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973207, 37.091347, 44.180851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410118, -0.043764, 0.910982,
		0.846307, 0.390572, -0.362239,
		-0.339951, 0.919531, 0.197219,
		26.871222, 37.367207, 44.240017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659933, 37.338711, 44.171661>,  <27.109188, 36.723534, 44.101963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659933, 37.338711, 44.171661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332867, 37.353100, 44.401489>,  <27.136627, 37.361732, 44.539387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332867, 37.353100, 44.401489>,  <27.659933, 37.338711, 44.171661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332867, 37.353100, 44.401489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542963, -0.283552, 0.790437,
		0.191351, 0.958282, 0.212321,
		-0.817665, 0.035968, 0.574569,
		27.087566, 37.363892, 44.573860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879513, 37.795666, 44.539783>,  <27.659933, 37.338711, 44.171661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879513, 37.795666, 44.539783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616661, 37.563469, 44.732121>,  <27.458950, 37.424149, 44.847523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616661, 37.563469, 44.732121>,  <27.879513, 37.795666, 44.539783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616661, 37.563469, 44.732121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626910, -0.066699, 0.776231,
		-0.418526, 0.811528, 0.407747,
		-0.657130, -0.580494, 0.480840,
		27.419521, 37.389320, 44.876373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085459, 38.109184, 45.150070>,  <27.879513, 37.795666, 44.539783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085459, 38.109184, 45.150070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425909, 38.319050, 45.142948>,  <28.630178, 38.444969, 45.138676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425909, 38.319050, 45.142948>,  <28.085459, 38.109184, 45.150070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425909, 38.319050, 45.142948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488079, -0.803359, -0.341165,
		-0.193301, 0.281683, -0.939835,
		0.851125, 0.524661, -0.017806,
		28.681246, 38.476448, 45.137608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356575, 38.359482, 44.589294>,  <28.085459, 38.109184, 45.150070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356575, 38.359482, 44.589294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639444, 38.255768, 44.852409>,  <28.809166, 38.193539, 45.010277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639444, 38.255768, 44.852409>,  <28.356575, 38.359482, 44.589294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639444, 38.255768, 44.852409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252689, -0.776203, -0.577630,
		0.660346, 0.574698, -0.483389,
		0.707171, -0.259288, 0.657783,
		28.851595, 38.177982, 45.049744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955278, 38.380688, 44.249580>,  <28.356575, 38.359482, 44.589294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955278, 38.380688, 44.249580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014418, 38.144440, 44.566895>,  <29.049902, 38.002689, 44.757282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014418, 38.144440, 44.566895>,  <28.955278, 38.380688, 44.249580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014418, 38.144440, 44.566895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425335, -0.686169, -0.590138,
		0.892878, 0.424664, 0.149763,
		0.147848, -0.590620, 0.793290,
		29.058771, 37.967255, 44.804882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737104, 37.977757, 44.147995>,  <28.955278, 38.380688, 44.249580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737104, 37.977757, 44.147995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456499, 37.819832, 44.385315>,  <29.288136, 37.725079, 44.527706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456499, 37.819832, 44.385315>,  <29.737104, 37.977757, 44.147995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456499, 37.819832, 44.385315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187436, -0.905424, -0.380887,
		0.687567, -0.155991, 0.709168,
		-0.701513, -0.394809, 0.593301,
		29.246046, 37.701389, 44.563305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006863, 37.518833, 43.484810>,  <29.737104, 37.977757, 44.147995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006863, 37.518833, 43.484810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350426, 37.456741, 43.680023>,  <30.556564, 37.419487, 43.797153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350426, 37.456741, 43.680023>,  <30.006863, 37.518833, 43.484810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350426, 37.456741, 43.680023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227808, -0.737674, -0.635563,
		0.458672, 0.657069, -0.598231,
		0.858908, -0.155233, 0.488036,
		30.608099, 37.410172, 43.826435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594229, 37.756966, 43.100212>,  <30.006863, 37.518833, 43.484810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594229, 37.756966, 43.100212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673347, 37.440262, 43.331379>,  <30.720818, 37.250240, 43.470078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673347, 37.440262, 43.331379>,  <30.594229, 37.756966, 43.100212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673347, 37.440262, 43.331379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055249, -0.597633, -0.799864,
		0.978685, 0.126280, -0.161953,
		0.197795, -0.791762, 0.577918,
		30.732687, 37.202732, 43.504753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127665, 37.325199, 42.828285>,  <30.594229, 37.756966, 43.100212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127665, 37.325199, 42.828285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909903, 37.086475, 43.064064>,  <30.779245, 36.943241, 43.205532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909903, 37.086475, 43.064064>,  <31.127665, 37.325199, 42.828285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909903, 37.086475, 43.064064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218035, -0.577869, -0.786466,
		0.809992, -0.556673, 0.184468,
		-0.544403, -0.596811, 0.589443,
		30.746582, 36.907433, 43.240898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458899, 36.639648, 42.879993>,  <31.127665, 37.325199, 42.828285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458899, 36.639648, 42.879993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059900, 36.631432, 42.907066>,  <30.820501, 36.626499, 42.923309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059900, 36.631432, 42.907066>,  <31.458899, 36.639648, 42.879993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059900, 36.631432, 42.907066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055941, -0.356454, -0.932637,
		0.043287, -0.934087, 0.354412,
		-0.997495, -0.020545, 0.067684,
		30.760653, 36.625267, 42.927372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248016, 36.108883, 42.409100>,  <31.458899, 36.639648, 42.879993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248016, 36.108883, 42.409100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889954, 36.263737, 42.497478>,  <30.675116, 36.356651, 42.550507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889954, 36.263737, 42.497478>,  <31.248016, 36.108883, 42.409100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889954, 36.263737, 42.497478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398688, -0.473700, -0.785275,
		-0.199347, -0.791033, 0.578383,
		-0.895159, 0.387137, 0.220945,
		30.621407, 36.379879, 42.563763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772799, 35.531441, 42.329449>,  <31.248016, 36.108883, 42.409100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772799, 35.531441, 42.329449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597639, 35.887489, 42.278969>,  <30.492544, 36.101120, 42.248680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597639, 35.887489, 42.278969>,  <30.772799, 35.531441, 42.329449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597639, 35.887489, 42.278969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289885, -0.272678, -0.917395,
		-0.851007, -0.365140, 0.377439,
		-0.437897, 0.890123, -0.126202,
		30.466270, 36.154526, 42.241108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133413, 35.425293, 42.173199>,  <30.772799, 35.531441, 42.329449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133413, 35.425293, 42.173199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229660, 35.783134, 42.022583>,  <30.287409, 35.997841, 41.932213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229660, 35.783134, 42.022583>,  <30.133413, 35.425293, 42.173199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229660, 35.783134, 42.022583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373292, -0.272806, -0.886696,
		-0.895967, 0.353913, 0.268308,
		0.240617, 0.894607, -0.376538,
		30.301846, 36.051517, 41.909622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613400, 35.595631, 41.720406>,  <30.133413, 35.425293, 42.173199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613400, 35.595631, 41.720406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918501, 35.833271, 41.618221>,  <30.101561, 35.975853, 41.556911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918501, 35.833271, 41.618221>,  <29.613400, 35.595631, 41.720406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918501, 35.833271, 41.618221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247148, -0.097243, -0.964086,
		-0.597602, 0.798494, 0.072657,
		0.762752, 0.594097, -0.255459,
		30.147326, 36.011501, 41.541584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325846, 35.908211, 41.167034>,  <29.613400, 35.595631, 41.720406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325846, 35.908211, 41.167034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704273, 36.032536, 41.130478>,  <29.931330, 36.107132, 41.108543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704273, 36.032536, 41.130478>,  <29.325846, 35.908211, 41.167034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704273, 36.032536, 41.130478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162435, 0.211020, -0.963891,
		-0.280309, 0.926749, 0.250126,
		0.946066, 0.310816, -0.091386,
		29.988092, 36.125782, 41.103062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284929, 36.451412, 40.685669>,  <29.325846, 35.908211, 41.167034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284929, 36.451412, 40.685669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666592, 36.331841, 40.691711>,  <29.895590, 36.260098, 40.695335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666592, 36.331841, 40.691711>,  <29.284929, 36.451412, 40.685669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666592, 36.331841, 40.691711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056571, 0.130559, -0.989825,
		0.293912, 0.945303, 0.141484,
		0.954157, -0.298926, 0.015104,
		29.952839, 36.242165, 40.696243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599844, 36.972149, 40.334408>,  <29.284929, 36.451412, 40.685669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599844, 36.972149, 40.334408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830000, 36.645874, 40.310482>,  <29.968094, 36.450108, 40.296127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830000, 36.645874, 40.310482>,  <29.599844, 36.972149, 40.334408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830000, 36.645874, 40.310482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009289, 0.079652, -0.996780,
		0.817825, 0.572983, 0.053408,
		0.575392, -0.815688, -0.059819,
		30.002617, 36.401169, 40.292538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024187, 37.066563, 39.669266>,  <29.599844, 36.972149, 40.334408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024187, 37.066563, 39.669266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120728, 36.686150, 39.746510>,  <30.178652, 36.457901, 39.792854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120728, 36.686150, 39.746510>,  <30.024187, 37.066563, 39.669266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120728, 36.686150, 39.746510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033098, -0.206942, -0.977793,
		0.969873, 0.229602, -0.081423,
		0.241353, -0.951030, 0.193108,
		30.193132, 36.400841, 39.804443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592287, 36.884304, 39.188019>,  <30.024187, 37.066563, 39.669266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592287, 36.884304, 39.188019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376265, 36.569626, 39.307655>,  <30.246651, 36.380821, 39.379436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376265, 36.569626, 39.307655>,  <30.592287, 36.884304, 39.188019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376265, 36.569626, 39.307655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179772, -0.239347, -0.954146,
		0.822205, -0.569061, -0.012164,
		-0.540056, -0.786691, 0.299094,
		30.214249, 36.333618, 39.397385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715103, 36.437710, 38.716728>,  <30.592287, 36.884304, 39.188019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715103, 36.437710, 38.716728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376785, 36.290173, 38.870914>,  <30.173794, 36.201649, 38.963425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376785, 36.290173, 38.870914>,  <30.715103, 36.437710, 38.716728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376785, 36.290173, 38.870914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292387, -0.283867, -0.913197,
		0.446249, -0.885083, 0.132248,
		-0.845796, -0.368846, 0.385463,
		30.123047, 36.179520, 38.986553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666811, 35.762226, 38.519939>,  <30.715103, 36.437710, 38.716728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666811, 35.762226, 38.519939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305008, 35.922703, 38.577789>,  <30.087927, 36.018990, 38.612499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305008, 35.922703, 38.577789>,  <30.666811, 35.762226, 38.519939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305008, 35.922703, 38.577789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273967, -0.286738, -0.918000,
		-0.326827, -0.869956, 0.369269,
		-0.904503, 0.401195, 0.144626,
		30.033655, 36.043060, 38.621178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337612, 35.419609, 38.070175>,  <30.666811, 35.762226, 38.519939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337612, 35.419609, 38.070175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059624, 35.692188, 38.161949>,  <29.892832, 35.855736, 38.217014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059624, 35.692188, 38.161949>,  <30.337612, 35.419609, 38.070175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059624, 35.692188, 38.161949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433228, -0.142166, -0.890001,
		-0.573873, -0.717924, 0.394024,
		-0.694970, 0.681450, 0.229439,
		29.851133, 35.896622, 38.230782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632666, 35.176922, 37.836903>,  <30.337612, 35.419609, 38.070175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632666, 35.176922, 37.836903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583363, 35.571976, 37.875660>,  <29.553780, 35.809010, 37.898914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583363, 35.571976, 37.875660>,  <29.632666, 35.176922, 37.836903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583363, 35.571976, 37.875660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645740, -0.005684, -0.763536,
		-0.753543, -0.156679, 0.638455,
		-0.123259, 0.987633, 0.096891,
		29.546385, 35.868267, 37.904728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976627, 35.210567, 37.745201>,  <29.632666, 35.176922, 37.836903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976627, 35.210567, 37.745201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097136, 35.586121, 37.678593>,  <29.169439, 35.811455, 37.638626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097136, 35.586121, 37.678593>,  <28.976627, 35.210567, 37.745201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097136, 35.586121, 37.678593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629345, 0.064588, -0.774438,
		-0.716353, 0.338115, 0.610341,
		0.301269, 0.938886, -0.166523,
		29.187517, 35.867786, 37.628635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357578, 35.652233, 37.605133>,  <28.976627, 35.210567, 37.745201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357578, 35.652233, 37.605133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655924, 35.876236, 37.460869>,  <28.834932, 36.010635, 37.374310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655924, 35.876236, 37.460869>,  <28.357578, 35.652233, 37.605133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655924, 35.876236, 37.460869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529488, 0.169946, -0.831120,
		-0.404138, 0.810872, 0.423273,
		0.745866, 0.560005, -0.360665,
		28.879684, 36.044239, 37.352669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031879, 36.220230, 37.372684>,  <28.357578, 35.652233, 37.605133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031879, 36.220230, 37.372684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379066, 36.211094, 37.174244>,  <28.587378, 36.205612, 37.055180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379066, 36.211094, 37.174244>,  <28.031879, 36.220230, 37.372684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379066, 36.211094, 37.174244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496311, -0.075285, -0.864875,
		-0.017596, 0.996900, -0.076680,
		0.867967, -0.022838, -0.496097,
		28.639456, 36.204243, 37.025414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068169, 36.718338, 36.824825>,  <28.031879, 36.220230, 37.372684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068169, 36.718338, 36.824825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362770, 36.492695, 36.675510>,  <28.539532, 36.357307, 36.585922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362770, 36.492695, 36.675510>,  <28.068169, 36.718338, 36.824825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362770, 36.492695, 36.675510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469823, -0.029588, -0.882265,
		0.486650, 0.825169, -0.286825,
		0.736504, -0.564111, -0.373284,
		28.583721, 36.323460, 36.563526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229782, 37.027321, 36.216869>,  <28.068169, 36.718338, 36.824825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229782, 37.027321, 36.216869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345257, 36.645546, 36.186668>,  <28.414541, 36.416481, 36.168549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345257, 36.645546, 36.186668>,  <28.229782, 37.027321, 36.216869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345257, 36.645546, 36.186668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365795, -0.037074, -0.929957,
		0.884790, 0.296085, -0.359832,
		0.288687, -0.954442, -0.075504,
		28.431864, 36.359215, 36.164017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430531, 36.977970, 35.551937>,  <28.229782, 37.027321, 36.216869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430531, 36.977970, 35.551937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365362, 36.595814, 35.650478>,  <28.326262, 36.366520, 35.709602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365362, 36.595814, 35.650478>,  <28.430531, 36.977970, 35.551937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365362, 36.595814, 35.650478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426563, -0.156944, -0.890737,
		0.889664, -0.250205, -0.381963,
		-0.162920, -0.955388, 0.246356,
		28.316486, 36.309196, 35.724384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709713, 36.585690, 34.975327>,  <28.430531, 36.977970, 35.551937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709713, 36.585690, 34.975327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442049, 36.354805, 35.162540>,  <28.281450, 36.216274, 35.274868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442049, 36.354805, 35.162540>,  <28.709713, 36.585690, 34.975327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442049, 36.354805, 35.162540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502542, -0.112476, -0.857205,
		0.547430, -0.808813, -0.214808,
		-0.669157, -0.577209, 0.468036,
		28.241302, 36.181641, 35.302952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657112, 35.882057, 34.568810>,  <28.709713, 36.585690, 34.975327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657112, 35.882057, 34.568810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331617, 36.011608, 34.761864>,  <28.136320, 36.089340, 34.877697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331617, 36.011608, 34.761864>,  <28.657112, 35.882057, 34.568810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331617, 36.011608, 34.761864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539860, -0.113463, -0.834073,
		-0.215378, -0.939270, 0.267179,
		-0.813734, 0.323880, 0.482637,
		28.087498, 36.108772, 34.906654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507286, 35.822750, 33.868439>,  <28.657112, 35.882057, 34.568810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507286, 35.822750, 33.868439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640591, 35.612915, 33.555073>,  <28.720573, 35.487015, 33.367054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640591, 35.612915, 33.555073>,  <28.507286, 35.822750, 33.868439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640591, 35.612915, 33.555073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587318, -0.534501, 0.607755,
		-0.737560, -0.662655, 0.129975,
		0.333261, -0.524592, -0.783416,
		28.740568, 35.455536, 33.320049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362154, 35.061565, 33.837112>,  <28.507286, 35.822750, 33.868439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362154, 35.061565, 33.837112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707506, 35.162956, 33.662609>,  <28.914717, 35.223793, 33.557907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707506, 35.162956, 33.662609>,  <28.362154, 35.061565, 33.837112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707506, 35.162956, 33.662609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503819, -0.386532, 0.772502,
		0.027187, -0.886759, -0.461433,
		0.863381, 0.253480, -0.436257,
		28.966520, 35.239002, 33.531731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838705, 34.446014, 33.822342>,  <28.362154, 35.061565, 33.837112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838705, 34.446014, 33.822342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014412, 34.804840, 33.841621>,  <29.119835, 35.020134, 33.853191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014412, 34.804840, 33.841621>,  <28.838705, 34.446014, 33.822342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014412, 34.804840, 33.841621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472755, -0.276453, 0.836705,
		0.763903, -0.344748, -0.545528,
		0.439266, 0.897063, 0.048202,
		29.146193, 35.073959, 33.856083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503284, 34.403599, 33.682652>,  <28.838705, 34.446014, 33.822342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503284, 34.403599, 33.682652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463800, 34.718082, 33.926662>,  <29.440111, 34.906773, 34.073071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463800, 34.718082, 33.926662>,  <29.503284, 34.403599, 33.682652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463800, 34.718082, 33.926662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526827, -0.478779, 0.702299,
		0.844221, 0.390702, -0.366936,
		-0.098709, 0.786208, 0.610028,
		29.434187, 34.953945, 34.109673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198862, 34.566864, 33.855114>,  <29.503284, 34.403599, 33.682652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198862, 34.566864, 33.855114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924482, 34.636074, 34.137825>,  <29.759855, 34.677601, 34.307453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924482, 34.636074, 34.137825>,  <30.198862, 34.566864, 33.855114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924482, 34.636074, 34.137825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477730, -0.625573, 0.616792,
		0.548860, 0.760738, 0.346455,
		-0.685950, 0.173021, 0.706779,
		29.718697, 34.687981, 34.349857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697075, 34.677116, 34.455997>,  <30.198862, 34.566864, 33.855114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697075, 34.677116, 34.455997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320982, 34.600471, 34.568604>,  <30.095327, 34.554485, 34.636169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320982, 34.600471, 34.568604>,  <30.697075, 34.677116, 34.455997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320982, 34.600471, 34.568604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340499, -0.516681, 0.785558,
		-0.005064, 0.834462, 0.551041,
		-0.940231, -0.191608, 0.281517,
		30.038912, 34.542988, 34.653057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351412, 34.652645, 33.998428>,  <30.697075, 34.677116, 34.455997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351412, 34.652645, 33.998428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623159, 34.359135, 34.000504>,  <31.786207, 34.183029, 34.001747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623159, 34.359135, 34.000504>,  <31.351412, 34.652645, 33.998428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623159, 34.359135, 34.000504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172979, 0.167010, 0.970663,
		-0.713119, -0.658540, 0.240390,
		0.679367, -0.733780, 0.005184,
		31.826969, 34.139000, 34.002060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271059, 34.189419, 34.671535>,  <31.351412, 34.652645, 33.998428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271059, 34.189419, 34.671535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649614, 34.218773, 34.545700>,  <31.876747, 34.236385, 34.470200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649614, 34.218773, 34.545700>,  <31.271059, 34.189419, 34.671535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649614, 34.218773, 34.545700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303876, 0.128155, 0.944053,
		0.109592, -0.989035, 0.098986,
		0.946387, 0.073381, -0.314589,
		31.933531, 34.240788, 34.451324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704147, 33.776470, 35.203789>,  <31.271059, 34.189419, 34.671535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704147, 33.776470, 35.203789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963524, 34.019817, 35.020741>,  <32.119148, 34.165825, 34.910912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963524, 34.019817, 35.020741>,  <31.704147, 33.776470, 35.203789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963524, 34.019817, 35.020741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464674, 0.159843, 0.870935,
		0.602995, -0.777394, -0.179043,
		0.648441, 0.608366, -0.457619,
		32.158054, 34.202328, 34.883453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429981, 33.434978, 35.254848>,  <31.704147, 33.776470, 35.203789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429981, 33.434978, 35.254848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420933, 33.832607, 35.212311>,  <32.415504, 34.071186, 35.186790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420933, 33.832607, 35.212311>,  <32.429981, 33.434978, 35.254848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420933, 33.832607, 35.212311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396428, 0.106565, 0.911860,
		0.917787, -0.021533, -0.396489,
		-0.022617, 0.994073, -0.106340,
		32.414146, 34.130829, 35.180408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000973, 33.534195, 35.560375>,  <32.429981, 33.434978, 35.254848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000973, 33.534195, 35.560375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844482, 33.902313, 35.559383>,  <32.750587, 34.123184, 35.558788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844482, 33.902313, 35.559383>,  <33.000973, 33.534195, 35.560375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844482, 33.902313, 35.559383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398529, 0.171848, 0.900912,
		0.829530, 0.351466, -0.433995,
		-0.391221, 0.920293, -0.002483,
		32.727116, 34.178402, 35.558640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536190, 34.059357, 35.721153>,  <33.000973, 33.534195, 35.560375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536190, 34.059357, 35.721153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198673, 34.243893, 35.830833>,  <32.996162, 34.354614, 35.896641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198673, 34.243893, 35.830833>,  <33.536190, 34.059357, 35.721153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198673, 34.243893, 35.830833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371821, 0.134109, 0.918566,
		0.387003, 0.877027, -0.284697,
		-0.843788, 0.461344, 0.274197,
		32.945538, 34.382298, 35.913094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800041, 34.623417, 36.160606>,  <33.536190, 34.059357, 35.721153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800041, 34.623417, 36.160606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414501, 34.590157, 36.261868>,  <33.183178, 34.570198, 36.322624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414501, 34.590157, 36.261868>,  <33.800041, 34.623417, 36.160606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414501, 34.590157, 36.261868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234982, 0.182674, 0.954680,
		-0.125628, 0.979651, -0.156531,
		-0.963847, -0.083153, 0.253150,
		33.125347, 34.565212, 36.337811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625069, 35.154800, 36.666527>,  <33.800041, 34.623417, 36.160606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625069, 35.154800, 36.666527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323910, 34.896442, 36.717060>,  <33.143215, 34.741428, 36.747379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323910, 34.896442, 36.717060>,  <33.625069, 35.154800, 36.666527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323910, 34.896442, 36.717060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071353, 0.270938, 0.959949,
		-0.654256, 0.713730, -0.250076,
		-0.752900, -0.645896, 0.126336,
		33.098042, 34.702675, 36.754959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296890, 35.418293, 37.280415>,  <33.625069, 35.154800, 36.666527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296890, 35.418293, 37.280415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148903, 35.050327, 37.228455>,  <33.060112, 34.829548, 37.197277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148903, 35.050327, 37.228455>,  <33.296890, 35.418293, 37.280415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148903, 35.050327, 37.228455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087916, -0.104529, 0.990628,
		-0.924875, 0.377922, -0.042203,
		-0.369969, -0.919918, -0.129902,
		33.037910, 34.774353, 37.189484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661438, 35.379589, 37.684090>,  <33.296890, 35.418293, 37.280415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661438, 35.379589, 37.684090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779224, 35.000137, 37.637791>,  <32.849895, 34.772469, 37.610012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779224, 35.000137, 37.637791>,  <32.661438, 35.379589, 37.684090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779224, 35.000137, 37.637791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210711, -0.182583, 0.960346,
		-0.932142, -0.258404, -0.253651,
		0.294470, -0.948626, -0.115745,
		32.867565, 34.715549, 37.603065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075554, 34.866856, 37.905190>,  <32.661438, 35.379589, 37.684090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075554, 34.866856, 37.905190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429737, 34.683563, 37.936134>,  <32.642246, 34.573586, 37.954700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429737, 34.683563, 37.936134>,  <32.075554, 34.866856, 37.905190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429737, 34.683563, 37.936134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305726, -0.449025, 0.839588,
		-0.349993, -0.767070, -0.537687,
		0.885458, -0.458235, 0.077357,
		32.695374, 34.546093, 37.959343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965931, 34.193802, 38.032688>,  <32.075554, 34.866856, 37.905190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965931, 34.193802, 38.032688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337791, 34.228695, 38.175877>,  <32.560905, 34.249630, 38.261791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337791, 34.228695, 38.175877>,  <31.965931, 34.193802, 38.032688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337791, 34.228695, 38.175877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276158, -0.478200, 0.833703,
		0.243905, -0.873908, -0.420469,
		0.929649, 0.087229, 0.357972,
		32.616688, 34.254864, 38.283268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166924, 33.526215, 38.128387>,  <31.965931, 34.193802, 38.032688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166924, 33.526215, 38.128387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387741, 33.766827, 38.359352>,  <32.520233, 33.911194, 38.497932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387741, 33.766827, 38.359352>,  <32.166924, 33.526215, 38.128387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387741, 33.766827, 38.359352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191487, -0.582529, 0.789932,
		0.811528, -0.546646, -0.206398,
		0.552046, 0.601530, 0.577414,
		32.553356, 33.947285, 38.532578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520645, 33.105026, 38.492584>,  <32.166924, 33.526215, 38.128387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520645, 33.105026, 38.492584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552315, 33.432320, 38.720348>,  <32.571316, 33.628696, 38.857006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552315, 33.432320, 38.720348>,  <32.520645, 33.105026, 38.492584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552315, 33.432320, 38.720348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299486, -0.525290, 0.796479,
		0.950810, -0.233593, 0.203459,
		0.079177, 0.818233, 0.569408,
		32.576069, 33.677788, 38.891171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761829, 32.871986, 39.156269>,  <32.520645, 33.105026, 38.492584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761829, 32.871986, 39.156269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663319, 33.252239, 39.231792>,  <32.604210, 33.480389, 39.277107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663319, 33.252239, 39.231792>,  <32.761829, 32.871986, 39.156269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663319, 33.252239, 39.231792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385812, -0.274869, 0.880680,
		0.889098, 0.144049, 0.434459,
		-0.246280, 0.950630, 0.188809,
		32.589436, 33.537430, 39.288437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090302, 32.999638, 39.835655>,  <32.761829, 32.871986, 39.156269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090302, 32.999638, 39.835655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762119, 33.224663, 39.794918>,  <32.565208, 33.359676, 39.770477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762119, 33.224663, 39.794918>,  <33.090302, 32.999638, 39.835655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762119, 33.224663, 39.794918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298343, -0.269341, 0.915668,
		0.487691, 0.781650, 0.388820,
		-0.820457, 0.562564, -0.101844,
		32.515984, 33.393433, 39.764366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905689, 33.189484, 40.505901>,  <33.090302, 32.999638, 39.835655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905689, 33.189484, 40.505901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571369, 33.258648, 40.297462>,  <32.370777, 33.300148, 40.172398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571369, 33.258648, 40.297462>,  <32.905689, 33.189484, 40.505901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571369, 33.258648, 40.297462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545633, -0.367090, 0.753346,
		-0.061028, 0.913973, 0.401159,
		-0.835799, 0.172910, -0.521096,
		32.320629, 33.310520, 40.141132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445450, 33.367489, 41.126743>,  <32.905689, 33.189484, 40.505901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445450, 33.367489, 41.126743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181553, 33.342411, 40.827194>,  <32.023212, 33.327366, 40.647465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181553, 33.342411, 40.827194>,  <32.445450, 33.367489, 41.126743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181553, 33.342411, 40.827194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672870, -0.394467, 0.625813,
		-0.334639, 0.916770, 0.218062,
		-0.659744, -0.062694, -0.748871,
		31.983629, 33.323605, 40.602531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807062, 33.842377, 41.223110>,  <32.445450, 33.367489, 41.126743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807062, 33.842377, 41.223110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704050, 33.548111, 40.972519>,  <31.642242, 33.371552, 40.822163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704050, 33.548111, 40.972519>,  <31.807062, 33.842377, 41.223110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704050, 33.548111, 40.972519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753646, -0.252833, 0.606707,
		-0.604728, 0.628388, -0.489318,
		-0.257532, -0.735665, -0.626477,
		31.626791, 33.327412, 40.784576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099834, 33.923500, 41.100258>,  <31.807062, 33.842377, 41.223110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099834, 33.923500, 41.100258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175764, 33.538654, 41.021969>,  <31.221321, 33.307747, 40.974995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175764, 33.538654, 41.021969>,  <31.099834, 33.923500, 41.100258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175764, 33.538654, 41.021969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713976, -0.272106, 0.645133,
		-0.673947, 0.017280, -0.738577,
		0.189823, -0.962112, -0.195723,
		31.232712, 33.250019, 40.963253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478529, 33.672817, 41.184505>,  <31.099834, 33.923500, 41.100258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478529, 33.672817, 41.184505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689840, 33.333832, 41.163631>,  <30.816628, 33.130440, 41.151108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689840, 33.333832, 41.163631>,  <30.478529, 33.672817, 41.184505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689840, 33.333832, 41.163631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697209, -0.468052, 0.542980,
		-0.484583, -0.250458, -0.838123,
		0.528279, -0.847466, -0.052188,
		30.848324, 33.079594, 41.147976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023563, 32.994431, 41.056053>,  <30.478529, 33.672817, 41.184505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023563, 32.994431, 41.056053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354502, 32.920963, 41.268379>,  <30.553064, 32.876884, 41.395775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354502, 32.920963, 41.268379>,  <30.023563, 32.994431, 41.056053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354502, 32.920963, 41.268379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541675, -0.510939, 0.667480,
		0.148625, -0.839767, -0.522209,
		0.827344, -0.183664, 0.530819,
		30.602705, 32.865864, 41.427624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884417, 32.294975, 41.250900>,  <30.023563, 32.994431, 41.056053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884417, 32.294975, 41.250900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172226, 32.436970, 41.489655>,  <30.344912, 32.522167, 41.632908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172226, 32.436970, 41.489655>,  <29.884417, 32.294975, 41.250900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172226, 32.436970, 41.489655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397174, -0.494699, 0.772998,
		0.569683, -0.793256, -0.214954,
		0.719523, 0.354990, 0.596882,
		30.388083, 32.543468, 41.668720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000942, 31.713808, 41.626133>,  <29.884417, 32.294975, 41.250900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000942, 31.713808, 41.626133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156088, 32.020245, 41.831139>,  <30.249174, 32.204105, 41.954140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156088, 32.020245, 41.831139>,  <30.000942, 31.713808, 41.626133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156088, 32.020245, 41.831139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341542, -0.397000, 0.851904,
		0.856103, -0.505464, 0.107672,
		0.387861, 0.766092, 0.512510,
		30.272446, 32.250072, 41.984890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447598, 31.374256, 42.145596>,  <30.000942, 31.713808, 41.626133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447598, 31.374256, 42.145596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326450, 31.739286, 42.255489>,  <30.253763, 31.958305, 42.321426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326450, 31.739286, 42.255489>,  <30.447598, 31.374256, 42.145596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326450, 31.739286, 42.255489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319973, -0.368908, 0.872654,
		0.897714, 0.176390, 0.403729,
		-0.302866, 0.912575, 0.274734,
		30.235590, 32.013058, 42.337910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437836, 31.298346, 42.805134>,  <30.447598, 31.374256, 42.145596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437836, 31.298346, 42.805134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235790, 31.640297, 42.757732>,  <30.114563, 31.845467, 42.729290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235790, 31.640297, 42.757732>,  <30.437836, 31.298346, 42.805134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235790, 31.640297, 42.757732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409581, -0.116580, 0.904794,
		0.759673, 0.505563, 0.409028,
		-0.505115, 0.854877, -0.118507,
		30.084255, 31.896761, 42.722179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521616, 31.651920, 43.424507>,  <30.437836, 31.298346, 42.805134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521616, 31.651920, 43.424507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191383, 31.824615, 43.279171>,  <29.993244, 31.928232, 43.191971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191383, 31.824615, 43.279171>,  <30.521616, 31.651920, 43.424507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191383, 31.824615, 43.279171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489314, -0.227043, 0.842035,
		0.281043, 0.872958, 0.398697,
		-0.825583, 0.431736, -0.363341,
		29.943708, 31.954136, 43.170170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270639, 32.311447, 43.871243>,  <30.521616, 31.651920, 43.424507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270639, 32.311447, 43.871243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957184, 32.148994, 43.683212>,  <29.769110, 32.051525, 43.570393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957184, 32.148994, 43.683212>,  <30.270639, 32.311447, 43.871243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957184, 32.148994, 43.683212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429181, -0.193133, 0.882328,
		-0.449126, 0.893173, -0.022957,
		-0.783638, -0.406130, -0.470074,
		29.722092, 32.027157, 43.542191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804380, 32.536243, 44.273186>,  <30.270639, 32.311447, 43.871243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804380, 32.536243, 44.273186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642433, 32.238892, 44.060219>,  <29.545265, 32.060482, 43.932438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642433, 32.238892, 44.060219>,  <29.804380, 32.536243, 44.273186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642433, 32.238892, 44.060219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570999, -0.249244, 0.782200,
		-0.714174, 0.620699, -0.323557,
		-0.404866, -0.743378, -0.532422,
		29.520973, 32.015877, 43.900494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113705, 32.598183, 44.375477>,  <29.804380, 32.536243, 44.273186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113705, 32.598183, 44.375477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189701, 32.219318, 44.272095>,  <29.235298, 31.992001, 44.210068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189701, 32.219318, 44.272095>,  <29.113705, 32.598183, 44.375477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189701, 32.219318, 44.272095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634704, -0.319332, 0.703688,
		-0.749035, 0.030346, -0.661835,
		0.189991, -0.947157, -0.258452,
		29.246698, 31.935171, 44.194561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460588, 32.213451, 44.667461>,  <29.113705, 32.598183, 44.375477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460588, 32.213451, 44.667461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750011, 31.942921, 44.612263>,  <28.923664, 31.780602, 44.579144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750011, 31.942921, 44.612263>,  <28.460588, 32.213451, 44.667461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750011, 31.942921, 44.612263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349700, -0.531534, 0.771480,
		-0.595130, -0.509948, -0.621107,
		0.723554, -0.676332, -0.138003,
		28.967079, 31.740023, 44.570862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089203, 31.480579, 44.744884>,  <28.460588, 32.213451, 44.667461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089203, 31.480579, 44.744884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480537, 31.410860, 44.789574>,  <28.715338, 31.369028, 44.816387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480537, 31.410860, 44.789574>,  <28.089203, 31.480579, 44.744884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480537, 31.410860, 44.789574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183357, -0.478866, 0.858526,
		-0.096136, -0.860411, -0.500449,
		0.978334, -0.174296, 0.111726,
		28.774038, 31.358572, 44.823090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165880, 30.825705, 44.892490>,  <28.089203, 31.480579, 44.744884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165880, 30.825705, 44.892490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514341, 30.989321, 45.001141>,  <28.723419, 31.087490, 45.066330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514341, 30.989321, 45.001141>,  <28.165880, 30.825705, 44.892490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514341, 30.989321, 45.001141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031507, -0.505481, 0.862262,
		0.489998, -0.759721, -0.427464,
		0.871154, 0.409039, 0.271621,
		28.775688, 31.112032, 45.082626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613947, 30.268545, 45.179985>,  <28.165880, 30.825705, 44.892490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613947, 30.268545, 45.179985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769485, 30.604750, 45.330898>,  <28.862808, 30.806473, 45.421448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769485, 30.604750, 45.330898>,  <28.613947, 30.268545, 45.179985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769485, 30.604750, 45.330898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005790, -0.411731, 0.911287,
		0.921285, -0.352164, -0.164966,
		0.388844, 0.840511, 0.377283,
		28.886139, 30.856903, 45.444084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172050, 30.070547, 45.465595>,  <28.613947, 30.268545, 45.179985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172050, 30.070547, 45.465595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095394, 30.412720, 45.658058>,  <29.049400, 30.618023, 45.773537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095394, 30.412720, 45.658058>,  <29.172050, 30.070547, 45.465595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095394, 30.412720, 45.658058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228030, -0.438017, 0.869565,
		0.954608, 0.276360, -0.111123,
		-0.191639, 0.855433, 0.481153,
		29.037903, 30.669350, 45.802402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685457, 30.040514, 46.010944>,  <29.172050, 30.070547, 45.465595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685457, 30.040514, 46.010944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416166, 30.318445, 46.112122>,  <29.254591, 30.485205, 46.172829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416166, 30.318445, 46.112122>,  <29.685457, 30.040514, 46.010944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416166, 30.318445, 46.112122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115925, -0.437023, 0.891949,
		0.730293, 0.571161, 0.374764,
		-0.673227, 0.694828, 0.252943,
		29.214199, 30.526894, 46.188004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864996, 30.351599, 46.700489>,  <29.685457, 30.040514, 46.010944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864996, 30.351599, 46.700489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468063, 30.391150, 46.670826>,  <29.229904, 30.414881, 46.653027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468063, 30.391150, 46.670826>,  <29.864996, 30.351599, 46.700489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468063, 30.391150, 46.670826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106756, -0.383360, 0.917408,
		0.062284, 0.918291, 0.390976,
		-0.992333, 0.098879, -0.074156,
		29.170364, 30.420813, 46.648579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656565, 30.575518, 47.363880>,  <29.864996, 30.351599, 46.700489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656565, 30.575518, 47.363880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307734, 30.464155, 47.202896>,  <29.098434, 30.397337, 47.106308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307734, 30.464155, 47.202896>,  <29.656565, 30.575518, 47.363880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307734, 30.464155, 47.202896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370534, -0.161554, 0.914661,
		-0.319665, 0.946779, 0.037729,
		-0.872077, -0.278405, -0.402457,
		29.046110, 30.380634, 47.082157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115921, 30.710155, 47.869095>,  <29.656565, 30.575518, 47.363880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115921, 30.710155, 47.869095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900372, 30.456631, 47.647141>,  <28.771042, 30.304516, 47.513966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900372, 30.456631, 47.647141>,  <29.115921, 30.710155, 47.869095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900372, 30.456631, 47.647141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492339, -0.297527, 0.817973,
		-0.683533, 0.713977, -0.151720,
		-0.538873, -0.633810, -0.554888,
		28.738710, 30.266487, 47.480675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468538, 30.795858, 47.971329>,  <29.115921, 30.710155, 47.869095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468538, 30.795858, 47.971329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514683, 30.408281, 47.883842>,  <28.542370, 30.175735, 47.831348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514683, 30.408281, 47.883842>,  <28.468538, 30.795858, 47.971329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514683, 30.408281, 47.883842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405754, -0.246949, 0.879988,
		-0.906673, -0.012771, -0.421642,
		0.115363, -0.968944, -0.218720,
		28.549292, 30.117598, 47.818226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965799, 30.435993, 48.409927>,  <28.468538, 30.795858, 47.971329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965799, 30.435993, 48.409927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172253, 30.110790, 48.302128>,  <28.296124, 29.915668, 48.237450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172253, 30.110790, 48.302128>,  <27.965799, 30.435993, 48.409927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172253, 30.110790, 48.302128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310981, -0.471049, 0.825472,
		-0.798060, -0.342244, -0.495953,
		0.516131, -0.813008, -0.269494,
		28.327091, 29.866888, 48.221279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489616, 29.875692, 48.545544>,  <27.965799, 30.435993, 48.409927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489616, 29.875692, 48.545544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832928, 29.672445, 48.516766>,  <28.038914, 29.550497, 48.499496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832928, 29.672445, 48.516766>,  <27.489616, 29.875692, 48.545544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832928, 29.672445, 48.516766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259777, -0.551082, 0.792984,
		-0.442576, -0.661911, -0.604979,
		0.858278, -0.508116, -0.071946,
		28.090412, 29.520010, 48.495182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080017, 29.870880, 48.968334>,  <27.489616, 29.875692, 48.545544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080017, 29.870880, 48.968334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247355, 30.144920, 49.206871>,  <28.347757, 30.309345, 49.349995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247355, 30.144920, 49.206871>,  <28.080017, 29.870880, 48.968334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247355, 30.144920, 49.206871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667087, -0.213832, 0.713632,
		0.616427, -0.696356, 0.367567,
		0.418345, 0.685102, 0.596342,
		28.372858, 30.350451, 49.385773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239218, 29.630703, 49.651127>,  <28.080017, 29.870880, 48.968334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239218, 29.630703, 49.651127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183855, 30.026831, 49.646969>,  <28.150637, 30.264507, 49.644474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183855, 30.026831, 49.646969>,  <28.239218, 29.630703, 49.651127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183855, 30.026831, 49.646969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516552, -0.063231, 0.853918,
		0.844996, 0.123558, 0.520304,
		-0.138408, 0.990321, -0.010394,
		28.142332, 30.323927, 49.643852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204042, 28.798306, 49.636993>,  <28.239218, 29.630703, 49.651127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204042, 28.798306, 49.636993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523977, 28.998028, 49.503754>,  <28.715939, 29.117861, 49.423809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523977, 28.998028, 49.503754>,  <28.204042, 28.798306, 49.636993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523977, 28.998028, 49.503754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307032, -0.817220, -0.487732,
		-0.515745, 0.287832, -0.806945,
		0.799836, 0.499303, -0.333103,
		28.763927, 29.147820, 49.403824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250387, 28.811327, 48.879375>,  <28.204042, 28.798306, 49.636993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250387, 28.811327, 48.879375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621025, 28.868229, 49.018623>,  <28.843407, 28.902370, 49.102173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621025, 28.868229, 49.018623>,  <28.250387, 28.811327, 48.879375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621025, 28.868229, 49.018623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362331, -0.585598, -0.725115,
		0.100707, 0.798021, -0.594155,
		0.926593, 0.142257, 0.348121,
		28.899002, 28.910906, 49.123058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677160, 28.999371, 48.344250>,  <28.250387, 28.811327, 48.879375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677160, 28.999371, 48.344250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865719, 28.800655, 48.635727>,  <28.978853, 28.681425, 48.810612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865719, 28.800655, 48.635727>,  <28.677160, 28.999371, 48.344250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865719, 28.800655, 48.635727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345580, -0.656125, -0.670876,
		0.811395, 0.568067, -0.137613,
		0.471394, -0.496789, 0.728689,
		29.007137, 28.651619, 48.854332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443298, 28.957584, 48.329342>,  <28.677160, 28.999371, 48.344250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443298, 28.957584, 48.329342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250525, 28.640055, 48.477711>,  <29.134861, 28.449537, 48.566730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250525, 28.640055, 48.477711>,  <29.443298, 28.957584, 48.329342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250525, 28.640055, 48.477711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056975, -0.450820, -0.890795,
		0.874354, -0.408170, 0.262494,
		-0.481934, -0.793825, 0.370921,
		29.105944, 28.401907, 48.588985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786961, 28.329969, 48.173275>,  <29.443298, 28.957584, 48.329342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786961, 28.329969, 48.173275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399048, 28.243998, 48.219460>,  <29.166300, 28.192413, 48.247169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399048, 28.243998, 48.219460>,  <29.786961, 28.329969, 48.173275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399048, 28.243998, 48.219460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039814, -0.327490, -0.944016,
		0.240712, -0.920084, 0.309035,
		-0.969780, -0.214932, 0.115463,
		29.108114, 28.179518, 48.254097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679787, 27.552006, 48.164886>,  <29.786961, 28.329969, 48.173275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679787, 27.552006, 48.164886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364243, 27.771957, 48.055099>,  <29.174917, 27.903929, 47.989227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364243, 27.771957, 48.055099>,  <29.679787, 27.552006, 48.164886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364243, 27.771957, 48.055099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031810, -0.409473, -0.911768,
		-0.613752, -0.727986, 0.305524,
		-0.788858, 0.549881, -0.274472,
		29.127584, 27.936922, 47.972759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234724, 27.208857, 47.713276>,  <29.679787, 27.552006, 48.164886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234724, 27.208857, 47.713276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161808, 27.591433, 47.622070>,  <29.118059, 27.820978, 47.567348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161808, 27.591433, 47.622070>,  <29.234724, 27.208857, 47.713276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161808, 27.591433, 47.622070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290190, -0.169236, -0.941886,
		-0.939447, -0.237864, -0.246700,
		-0.182290, 0.956441, -0.228014,
		29.107121, 27.878365, 47.553665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842009, 27.204372, 47.112186>,  <29.234724, 27.208857, 47.713276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842009, 27.204372, 47.112186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036400, 27.552185, 47.147373>,  <29.153034, 27.760872, 47.168488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036400, 27.552185, 47.147373>,  <28.842009, 27.204372, 47.112186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036400, 27.552185, 47.147373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310894, -0.077925, -0.947245,
		-0.816804, 0.487691, -0.308202,
		0.485979, 0.869532, 0.087971,
		29.182194, 27.813046, 47.173763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589195, 27.732147, 46.662785>,  <28.842009, 27.204372, 47.112186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589195, 27.732147, 46.662785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972414, 27.829788, 46.722862>,  <29.202345, 27.888372, 46.758907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972414, 27.829788, 46.722862>,  <28.589195, 27.732147, 46.662785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972414, 27.829788, 46.722862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154639, 0.000960, -0.987971,
		-0.241310, 0.969749, -0.036828,
		0.958048, 0.244102, 0.150193,
		29.259829, 27.903019, 46.767921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809301, 27.984697, 46.046982>,  <28.589195, 27.732147, 46.662785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809301, 27.984697, 46.046982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181408, 27.974695, 46.193394>,  <29.404673, 27.968695, 46.281242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181408, 27.974695, 46.193394>,  <28.809301, 27.984697, 46.046982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181408, 27.974695, 46.193394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366871, 0.056132, -0.928576,
		0.002672, 0.998110, 0.061391,
		0.930268, -0.025004, 0.366028,
		29.460487, 27.967194, 46.303204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187319, 28.472866, 45.650166>,  <28.809301, 27.984697, 46.046982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187319, 28.472866, 45.650166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480915, 28.270166, 45.831036>,  <29.657072, 28.148546, 45.939560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480915, 28.270166, 45.831036>,  <29.187319, 28.472866, 45.650166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480915, 28.270166, 45.831036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555289, 0.064434, -0.829157,
		0.391038, 0.859683, 0.328686,
		0.733991, -0.506748, 0.452177,
		29.701113, 28.118141, 45.966690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876276, 28.804834, 45.522324>,  <29.187319, 28.472866, 45.650166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876276, 28.804834, 45.522324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974798, 28.423929, 45.594463>,  <30.033913, 28.195385, 45.637745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974798, 28.423929, 45.594463>,  <29.876276, 28.804834, 45.522324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974798, 28.423929, 45.594463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655048, 0.026419, -0.755125,
		0.714314, 0.304129, 0.630287,
		0.246307, -0.952264, 0.180348,
		30.048691, 28.138250, 45.648567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554155, 28.814526, 45.285664>,  <29.876276, 28.804834, 45.522324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554155, 28.814526, 45.285664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500175, 28.422300, 45.342632>,  <30.467787, 28.186964, 45.376812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500175, 28.422300, 45.342632>,  <30.554155, 28.814526, 45.285664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500175, 28.422300, 45.342632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573182, -0.194497, -0.796011,
		0.808239, -0.025790, 0.588289,
		-0.134949, -0.980564, 0.142418,
		30.459690, 28.128132, 45.385357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240448, 28.491739, 45.312180>,  <30.554155, 28.814526, 45.285664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240448, 28.491739, 45.312180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956760, 28.226732, 45.215778>,  <30.786549, 28.067728, 45.157936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956760, 28.226732, 45.215778>,  <31.240448, 28.491739, 45.312180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956760, 28.226732, 45.215778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566167, -0.331550, -0.754672,
		0.420079, -0.671674, 0.610236,
		-0.709217, -0.662517, -0.241003,
		30.743996, 28.027977, 45.143478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581591, 27.824211, 45.153324>,  <31.240448, 28.491739, 45.312180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581591, 27.824211, 45.153324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234598, 27.785448, 44.958149>,  <31.026403, 27.762190, 44.841042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234598, 27.785448, 44.958149>,  <31.581591, 27.824211, 45.153324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234598, 27.785448, 44.958149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474163, -0.457778, -0.752070,
		-0.150487, -0.883769, 0.443064,
		-0.867481, -0.096908, -0.487940,
		30.974354, 27.756376, 44.811768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704351, 27.247847, 44.820499>,  <31.581591, 27.824211, 45.153324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704351, 27.247847, 44.820499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405293, 27.434496, 44.631485>,  <31.225857, 27.546486, 44.518078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405293, 27.434496, 44.631485>,  <31.704351, 27.247847, 44.820499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405293, 27.434496, 44.631485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482437, -0.107352, -0.869327,
		-0.456376, -0.877916, -0.144856,
		-0.747646, 0.466624, -0.472532,
		31.180998, 27.574484, 44.489727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653151, 26.743319, 44.290428>,  <31.704351, 27.247847, 44.820499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653151, 26.743319, 44.290428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524445, 27.114981, 44.217617>,  <31.447220, 27.337978, 44.173931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524445, 27.114981, 44.217617>,  <31.653151, 26.743319, 44.290428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524445, 27.114981, 44.217617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668904, 0.087013, -0.738238,
		-0.670100, -0.359301, -0.649514,
		-0.321766, 0.929156, -0.182030,
		31.427916, 27.393728, 44.163010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586895, 26.733770, 43.679626>,  <31.653151, 26.743319, 44.290428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586895, 26.733770, 43.679626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562691, 27.132151, 43.706215>,  <31.548168, 27.371180, 43.722168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562691, 27.132151, 43.706215>,  <31.586895, 26.733770, 43.679626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562691, 27.132151, 43.706215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401425, 0.085254, -0.911916,
		-0.913891, -0.028494, -0.404958,
		-0.060508, 0.995952, 0.066474,
		31.544538, 27.430937, 43.726158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284216, 26.960541, 43.045647>,  <31.586895, 26.733770, 43.679626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284216, 26.960541, 43.045647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469891, 27.282246, 43.194077>,  <31.581295, 27.475267, 43.283134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469891, 27.282246, 43.194077>,  <31.284216, 26.960541, 43.045647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469891, 27.282246, 43.194077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588943, 0.032659, -0.807514,
		-0.661571, 0.593378, -0.458505,
		0.464187, 0.804261, 0.371072,
		31.609146, 27.523523, 43.305397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099949, 27.551102, 42.621140>,  <31.284216, 26.960541, 43.045647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099949, 27.551102, 42.621140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446314, 27.645941, 42.797310>,  <31.654133, 27.702845, 42.903011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446314, 27.645941, 42.797310>,  <31.099949, 27.551102, 42.621140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446314, 27.645941, 42.797310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373976, 0.277853, -0.884839,
		-0.332166, 0.930905, 0.151928,
		0.865914, 0.237096, 0.440429,
		31.706089, 27.717070, 42.929440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220049, 28.143269, 42.282158>,  <31.099949, 27.551102, 42.621140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220049, 28.143269, 42.282158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580322, 28.056938, 42.432991>,  <31.796486, 28.005140, 42.523491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580322, 28.056938, 42.432991>,  <31.220049, 28.143269, 42.282158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580322, 28.056938, 42.432991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432671, 0.366460, -0.823713,
		0.039592, 0.905056, 0.423445,
		0.900682, -0.215825, 0.377082,
		31.850527, 27.992191, 42.546116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520182, 28.697058, 42.034302>,  <31.220049, 28.143269, 42.282158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520182, 28.697058, 42.034302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792665, 28.427570, 42.148884>,  <31.956156, 28.265877, 42.217632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792665, 28.427570, 42.148884>,  <31.520182, 28.697058, 42.034302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792665, 28.427570, 42.148884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610345, 0.306572, -0.730406,
		0.404270, 0.672395, 0.620041,
		0.681208, -0.673720, 0.286455,
		31.997028, 28.225454, 42.234821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150986, 29.106041, 42.211304>,  <31.520182, 28.697058, 42.034302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150986, 29.106041, 42.211304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224174, 28.727274, 42.105572>,  <32.268089, 28.500013, 42.042133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224174, 28.727274, 42.105572>,  <32.150986, 29.106041, 42.211304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224174, 28.727274, 42.105572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384393, 0.316369, -0.867267,
		0.904855, 0.057083, 0.421876,
		0.182975, -0.946917, -0.264326,
		32.279068, 28.443199, 42.026276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752304, 29.175314, 41.812286>,  <32.150986, 29.106041, 42.211304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752304, 29.175314, 41.812286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615662, 28.806763, 41.738132>,  <32.533676, 28.585632, 41.693642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615662, 28.806763, 41.738132>,  <32.752304, 29.175314, 41.812286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615662, 28.806763, 41.738132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303299, 0.078622, -0.949646,
		0.889558, -0.380633, 0.252595,
		-0.341607, -0.921378, -0.185384,
		32.513180, 28.530350, 41.682518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452694, 28.742159, 41.556507>,  <32.752304, 29.175314, 41.812286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452694, 28.742159, 41.556507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098885, 28.595074, 41.441673>,  <32.886600, 28.506823, 41.372772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098885, 28.595074, 41.441673>,  <33.452694, 28.742159, 41.556507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098885, 28.595074, 41.441673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319431, -0.028907, -0.947169,
		0.339986, -0.929491, 0.143027,
		-0.884519, -0.367712, -0.287080,
		32.833530, 28.484760, 41.355549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667973, 28.220400, 41.161324>,  <33.452694, 28.742159, 41.556507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667973, 28.220400, 41.161324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290844, 28.309839, 41.062462>,  <33.064568, 28.363503, 41.003147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290844, 28.309839, 41.062462>,  <33.667973, 28.220400, 41.161324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290844, 28.309839, 41.062462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200620, -0.211419, -0.956584,
		-0.266146, -0.951475, 0.154473,
		-0.942824, 0.223601, -0.247153,
		33.007996, 28.376919, 40.988316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601524, 27.886375, 40.562744>,  <33.667973, 28.220400, 41.161324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601524, 27.886375, 40.562744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253086, 28.081751, 40.542244>,  <33.044025, 28.198977, 40.529942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253086, 28.081751, 40.542244>,  <33.601524, 27.886375, 40.562744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253086, 28.081751, 40.542244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064403, 0.010146, -0.997872,
		-0.486879, -0.872540, -0.040295,
		-0.871092, 0.488438, -0.051254,
		32.991760, 28.228283, 40.526867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180115, 27.550697, 40.019058>,  <33.601524, 27.886375, 40.562744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180115, 27.550697, 40.019058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058102, 27.930279, 40.051170>,  <32.984894, 28.158028, 40.070438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058102, 27.930279, 40.051170>,  <33.180115, 27.550697, 40.019058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058102, 27.930279, 40.051170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206917, 0.148324, -0.967050,
		-0.929591, -0.278371, -0.241598,
		-0.305033, 0.948952, 0.080281,
		32.966591, 28.214964, 40.075256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688957, 27.644655, 39.481369>,  <33.180115, 27.550697, 40.019058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688957, 27.644655, 39.481369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804897, 28.007353, 39.603874>,  <32.874462, 28.224972, 39.677380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804897, 28.007353, 39.603874>,  <32.688957, 27.644655, 39.481369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804897, 28.007353, 39.603874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258038, 0.234116, -0.937340,
		-0.921630, 0.350720, -0.166115,
		0.289853, 0.906744, 0.306268,
		32.891853, 28.279377, 39.695755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303108, 28.162886, 39.046848>,  <32.688957, 27.644655, 39.481369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303108, 28.162886, 39.046848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639870, 28.334805, 39.177368>,  <32.841927, 28.437956, 39.255680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639870, 28.334805, 39.177368>,  <32.303108, 28.162886, 39.046848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639870, 28.334805, 39.177368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171099, 0.360871, -0.916786,
		-0.511785, 0.827675, 0.230281,
		0.841903, 0.429797, 0.326303,
		32.892441, 28.463743, 39.275261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337940, 28.777285, 38.658714>,  <32.303108, 28.162886, 39.046848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337940, 28.777285, 38.658714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706863, 28.765198, 38.812828>,  <32.928215, 28.757946, 38.905296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706863, 28.765198, 38.812828>,  <32.337940, 28.777285, 38.658714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706863, 28.765198, 38.812828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330351, 0.579012, -0.745394,
		-0.200560, 0.814758, 0.544008,
		0.922304, -0.030217, 0.385283,
		32.983555, 28.756132, 38.928413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613609, 29.417944, 38.748013>,  <32.337940, 28.777285, 38.658714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613609, 29.417944, 38.748013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947559, 29.199005, 38.724686>,  <33.147930, 29.067642, 38.710690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947559, 29.199005, 38.724686>,  <32.613609, 29.417944, 38.748013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947559, 29.199005, 38.724686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315449, 0.562573, -0.764201,
		0.451090, 0.619614, 0.642337,
		0.834871, -0.547348, -0.058314,
		33.198021, 29.034801, 38.707191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156052, 29.866119, 38.663212>,  <32.613609, 29.417944, 38.748013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156052, 29.866119, 38.663212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337074, 29.528166, 38.549114>,  <33.445690, 29.325394, 38.480656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337074, 29.528166, 38.549114>,  <33.156052, 29.866119, 38.663212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337074, 29.528166, 38.549114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425437, 0.485692, -0.763614,
		0.783705, 0.224226, 0.579248,
		0.452559, -0.844882, -0.285245,
		33.472843, 29.274702, 38.463539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849068, 30.011274, 38.568157>,  <33.156052, 29.866119, 38.663212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849068, 30.011274, 38.568157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783157, 29.673035, 38.365055>,  <33.743610, 29.470091, 38.243195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783157, 29.673035, 38.365055>,  <33.849068, 30.011274, 38.568157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783157, 29.673035, 38.365055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509327, 0.367894, -0.777972,
		0.844650, -0.386803, 0.370066,
		-0.164777, -0.845599, -0.507751,
		33.733723, 29.419355, 38.212730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459415, 29.784389, 38.478012>,  <33.849068, 30.011274, 38.568157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459415, 29.784389, 38.478012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232616, 29.640675, 38.181519>,  <34.096535, 29.554445, 38.003624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232616, 29.640675, 38.181519>,  <34.459415, 29.784389, 38.478012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232616, 29.640675, 38.181519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542968, 0.513670, -0.664326,
		0.619431, -0.779138, -0.096170,
		-0.567001, -0.359287, -0.741230,
		34.062515, 29.532888, 37.959148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951595, 29.736883, 37.900341>,  <34.459415, 29.784389, 38.478012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951595, 29.736883, 37.900341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588394, 29.732225, 37.732819>,  <34.370476, 29.729431, 37.632305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588394, 29.732225, 37.732819>,  <34.951595, 29.736883, 37.900341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588394, 29.732225, 37.732819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343275, 0.552425, -0.759598,
		0.240204, -0.833481, -0.497605,
		-0.908000, -0.011643, -0.418808,
		34.315994, 29.728733, 37.607178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095703, 29.707844, 37.252960>,  <34.951595, 29.736883, 37.900341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095703, 29.707844, 37.252960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720142, 29.840158, 37.214924>,  <34.494804, 29.919548, 37.192101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720142, 29.840158, 37.214924>,  <35.095703, 29.707844, 37.252960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720142, 29.840158, 37.214924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241159, 0.435135, -0.867467,
		-0.245569, -0.837399, -0.488322,
		-0.938903, 0.330786, -0.095091,
		34.438473, 29.939394, 37.186398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843739, 29.556705, 36.575310>,  <35.095703, 29.707844, 37.252960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843739, 29.556705, 36.575310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628113, 29.868023, 36.704102>,  <34.498737, 30.054813, 36.781376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628113, 29.868023, 36.704102>,  <34.843739, 29.556705, 36.575310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628113, 29.868023, 36.704102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151616, 0.465701, -0.871858,
		-0.828506, -0.421170, -0.369044,
		-0.539064, 0.778292, 0.321980,
		34.466393, 30.101511, 36.800697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586742, 29.910398, 35.949467>,  <34.843739, 29.556705, 36.575310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586742, 29.910398, 35.949467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501369, 30.174051, 36.237907>,  <34.450146, 30.332243, 36.410973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501369, 30.174051, 36.237907>,  <34.586742, 29.910398, 35.949467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501369, 30.174051, 36.237907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209414, 0.751821, -0.625229,
		-0.954250, 0.017566, -0.298493,
		-0.213430, 0.659134, 0.721103,
		34.437340, 30.371792, 36.454239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068802, 30.361275, 35.710300>,  <34.586742, 29.910398, 35.949467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068802, 30.361275, 35.710300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237835, 30.570858, 36.006111>,  <34.339252, 30.696608, 36.183598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237835, 30.570858, 36.006111>,  <34.068802, 30.361275, 35.710300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237835, 30.570858, 36.006111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060038, 0.797983, -0.599682,
		-0.904335, 0.297812, 0.305753,
		0.422579, 0.523957, 0.739524,
		34.364609, 30.728045, 36.227970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796371, 31.093388, 35.710556>,  <34.068802, 30.361275, 35.710300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796371, 31.093388, 35.710556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136730, 31.104565, 35.920391>,  <34.340946, 31.111271, 36.046291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136730, 31.104565, 35.920391>,  <33.796371, 31.093388, 35.710556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136730, 31.104565, 35.920391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192426, 0.912605, -0.360727,
		-0.488824, 0.407886, 0.771155,
		0.850896, 0.027941, 0.524591,
		34.391998, 31.112947, 36.077770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899818, 31.724199, 36.020107>,  <33.796371, 31.093388, 35.710556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899818, 31.724199, 36.020107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288425, 31.641462, 36.066357>,  <34.521591, 31.591820, 36.094109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288425, 31.641462, 36.066357>,  <33.899818, 31.724199, 36.020107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288425, 31.641462, 36.066357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236890, 0.835475, -0.495848,
		0.005960, 0.509116, 0.860677,
		0.971518, -0.206840, 0.115625,
		34.579880, 31.579411, 36.101044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181862, 32.231270, 36.307701>,  <33.899818, 31.724199, 36.020107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181862, 32.231270, 36.307701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513245, 32.061470, 36.161575>,  <34.712074, 31.959589, 36.073898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513245, 32.061470, 36.161575>,  <34.181862, 32.231270, 36.307701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513245, 32.061470, 36.161575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182667, 0.821431, -0.540263,
		0.529423, 0.380854, 0.758064,
		0.828459, -0.424501, -0.365315,
		34.761784, 31.934120, 36.051979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835423, 32.655315, 36.502365>,  <34.181862, 32.231270, 36.307701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835423, 32.655315, 36.502365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920982, 32.451809, 36.168800>,  <34.972317, 32.329704, 35.968662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920982, 32.451809, 36.168800>,  <34.835423, 32.655315, 36.502365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920982, 32.451809, 36.168800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103649, 0.860668, -0.498504,
		0.971342, 0.020194, 0.236826,
		0.213895, -0.508765, -0.833911,
		34.985149, 32.299179, 35.918629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318211, 33.098511, 36.300259>,  <34.835423, 32.655315, 36.502365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318211, 33.098511, 36.300259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191872, 32.871819, 35.995876>,  <35.116066, 32.735802, 35.813248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191872, 32.871819, 35.995876>,  <35.318211, 33.098511, 36.300259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191872, 32.871819, 35.995876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017955, 0.805438, -0.592408,
		0.948639, -0.173450, -0.264574,
		-0.315851, -0.566732, -0.760955,
		35.097115, 32.701797, 35.767590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634621, 33.397152, 35.783264>,  <35.318211, 33.098511, 36.300259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634621, 33.397152, 35.783264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330086, 33.197529, 35.617706>,  <35.147366, 33.077755, 35.518372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330086, 33.197529, 35.617706>,  <35.634621, 33.397152, 35.783264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330086, 33.197529, 35.617706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205985, 0.791479, -0.575439,
		0.614766, -0.352847, -0.705381,
		-0.761336, -0.499059, -0.413893,
		35.101685, 33.047810, 35.493538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273365, 33.442394, 35.347496>,  <35.634621, 33.397152, 35.783264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273365, 33.442394, 35.347496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633305, 33.293964, 35.255783>,  <36.849270, 33.204906, 35.200756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633305, 33.293964, 35.255783>,  <36.273365, 33.442394, 35.347496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633305, 33.293964, 35.255783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063893, -0.407833, 0.910818,
		-0.431494, -0.834249, -0.343280,
		0.899850, -0.371080, -0.229280,
		36.903259, 33.182644, 35.187000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270752, 32.814400, 35.601341>,  <36.273365, 33.442394, 35.347496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270752, 32.814400, 35.601341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653526, 32.921116, 35.555561>,  <36.883190, 32.985146, 35.528091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653526, 32.921116, 35.555561>,  <36.270752, 32.814400, 35.601341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653526, 32.921116, 35.555561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248947, -0.551319, 0.796287,
		0.149343, -0.790486, -0.593993,
		0.956933, 0.266793, -0.114453,
		36.940605, 33.001152, 35.521225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595222, 32.266624, 35.598255>,  <36.270752, 32.814400, 35.601341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595222, 32.266624, 35.598255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839672, 32.542965, 35.752789>,  <36.986340, 32.708771, 35.845509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839672, 32.542965, 35.752789>,  <36.595222, 32.266624, 35.598255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839672, 32.542965, 35.752789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292403, -0.650598, 0.700872,
		0.735548, -0.315352, -0.599602,
		0.611121, 0.690851, 0.386337,
		37.023010, 32.750221, 35.868690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301071, 32.074924, 35.517097>,  <36.595222, 32.266624, 35.598255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301071, 32.074924, 35.517097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287582, 32.326656, 35.827663>,  <37.279491, 32.477695, 36.014000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287582, 32.326656, 35.827663>,  <37.301071, 32.074924, 35.517097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287582, 32.326656, 35.827663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323269, -0.728224, 0.604307,
		0.945706, 0.271366, -0.178887,
		-0.033718, 0.629325, 0.776410,
		37.277466, 32.515453, 36.060585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850014, 31.881954, 35.960365>,  <37.301071, 32.074924, 35.517097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850014, 31.881954, 35.960365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639473, 32.116940, 36.206238>,  <37.513149, 32.257931, 36.353764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639473, 32.116940, 36.206238>,  <37.850014, 31.881954, 35.960365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639473, 32.116940, 36.206238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117891, -0.665526, 0.737006,
		0.842054, 0.460391, 0.281044,
		-0.526353, 0.587466, 0.614684,
		37.481567, 32.293179, 36.390644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250866, 32.021080, 36.609169>,  <37.850014, 31.881954, 35.960365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250866, 32.021080, 36.609169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864830, 32.091953, 36.686333>,  <37.633209, 32.134476, 36.732632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864830, 32.091953, 36.686333>,  <38.250866, 32.021080, 36.609169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864830, 32.091953, 36.686333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086416, -0.479884, 0.873066,
		0.247268, 0.859254, 0.447817,
		-0.965086, 0.177182, 0.192914,
		37.575306, 32.145107, 36.744205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112526, 32.219204, 37.317120>,  <38.250866, 32.021080, 36.609169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112526, 32.219204, 37.317120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748608, 32.098328, 37.203312>,  <37.530254, 32.025803, 37.135029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748608, 32.098328, 37.203312>,  <38.112526, 32.219204, 37.317120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748608, 32.098328, 37.203312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123036, -0.458322, 0.880229,
		-0.396395, 0.835836, 0.379801,
		-0.909798, -0.302189, -0.284515,
		37.475670, 32.007671, 37.117958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787529, 32.166744, 37.935051>,  <38.112526, 32.219204, 37.317120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787529, 32.166744, 37.935051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560257, 31.958403, 37.680214>,  <37.423893, 31.833399, 37.527313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560257, 31.958403, 37.680214>,  <37.787529, 32.166744, 37.935051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560257, 31.958403, 37.680214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329837, -0.565141, 0.756189,
		-0.753907, 0.639790, 0.149308,
		-0.568182, -0.520850, -0.637091,
		37.389801, 31.802147, 37.489086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183117, 31.958500, 38.315796>,  <37.787529, 32.166744, 37.935051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183117, 31.958500, 38.315796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147697, 31.711887, 38.002861>,  <37.126446, 31.563919, 37.815102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147697, 31.711887, 38.002861>,  <37.183117, 31.958500, 38.315796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147697, 31.711887, 38.002861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388260, -0.701932, 0.597114,
		-0.917286, 0.356623, -0.177219,
		-0.088549, -0.616531, -0.782335,
		37.121132, 31.526928, 37.768162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506393, 31.786728, 38.337181>,  <37.183117, 31.958500, 38.315796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506393, 31.786728, 38.337181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710026, 31.483490, 38.174141>,  <36.832203, 31.301548, 38.076317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710026, 31.483490, 38.174141>,  <36.506393, 31.786728, 38.337181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710026, 31.483490, 38.174141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307256, -0.602412, 0.736677,
		-0.804011, -0.249790, -0.539603,
		0.509078, -0.758093, -0.407597,
		36.862751, 31.256062, 38.051861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989899, 31.212305, 38.433952>,  <36.506393, 31.786728, 38.337181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989899, 31.212305, 38.433952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337189, 31.042147, 38.331791>,  <36.545563, 30.940052, 38.270493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337189, 31.042147, 38.331791>,  <35.989899, 31.212305, 38.433952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337189, 31.042147, 38.331791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191854, -0.762526, 0.617856,
		-0.457584, -0.487436, -0.743655,
		0.868222, -0.425395, -0.255403,
		36.597656, 30.914528, 38.255169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838837, 30.507143, 38.276352>,  <35.989899, 31.212305, 38.433952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838837, 30.507143, 38.276352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226902, 30.533024, 38.369812>,  <36.459743, 30.548552, 38.425888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226902, 30.533024, 38.369812>,  <35.838837, 30.507143, 38.276352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226902, 30.533024, 38.369812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078874, -0.827067, 0.556541,
		0.229250, -0.558366, -0.797290,
		0.970167, 0.064702, 0.233646,
		36.517952, 30.552435, 38.439907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039391, 29.792471, 38.245071>,  <35.838837, 30.507143, 38.276352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039391, 29.792471, 38.245071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292561, 30.003708, 38.471531>,  <36.444462, 30.130451, 38.607407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292561, 30.003708, 38.471531>,  <36.039391, 29.792471, 38.245071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292561, 30.003708, 38.471531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047706, -0.703265, 0.709325,
		0.772743, -0.475958, -0.419920,
		0.632924, 0.528093, 0.566149,
		36.482437, 30.162136, 38.641376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619591, 29.316120, 38.528980>,  <36.039391, 29.792471, 38.245071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619591, 29.316120, 38.528980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574032, 29.620863, 38.784042>,  <36.546696, 29.803709, 38.937080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574032, 29.620863, 38.784042>,  <36.619591, 29.316120, 38.528980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574032, 29.620863, 38.784042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028211, -0.644052, 0.764461,
		0.993092, 0.069080, 0.094848,
		-0.113896, 0.761856, 0.637655,
		36.539864, 29.849421, 38.975338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978298, 29.090475, 39.088276>,  <36.619591, 29.316120, 38.528980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978298, 29.090475, 39.088276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810863, 29.409222, 39.262535>,  <36.710403, 29.600470, 39.367088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810863, 29.409222, 39.262535>,  <36.978298, 29.090475, 39.088276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810863, 29.409222, 39.262535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008501, -0.483109, 0.875519,
		0.908137, 0.362777, 0.208997,
		-0.418587, 0.796868, 0.435645,
		36.685287, 29.648283, 39.393230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380119, 29.311085, 39.668617>,  <36.978298, 29.090475, 39.088276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380119, 29.311085, 39.668617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993904, 29.396795, 39.727695>,  <36.762173, 29.448221, 39.763142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993904, 29.396795, 39.727695>,  <37.380119, 29.311085, 39.668617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993904, 29.396795, 39.727695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032968, -0.462256, 0.886133,
		0.258152, 0.860468, 0.439263,
		-0.965542, 0.214276, 0.147700,
		36.704243, 29.461079, 39.772007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311874, 29.246746, 40.427719>,  <37.380119, 29.311085, 39.668617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311874, 29.246746, 40.427719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933147, 29.254845, 40.299267>,  <36.705910, 29.259705, 40.222195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933147, 29.254845, 40.299267>,  <37.311874, 29.246746, 40.427719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933147, 29.254845, 40.299267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290198, -0.484868, 0.825038,
		-0.139002, 0.874353, 0.464957,
		-0.946817, 0.020248, -0.321134,
		36.649101, 29.260920, 40.202927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843220, 29.431438, 41.103355>,  <37.311874, 29.246746, 40.427719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843220, 29.431438, 41.103355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595448, 29.277288, 40.829773>,  <36.446785, 29.184797, 40.665623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595448, 29.277288, 40.829773>,  <36.843220, 29.431438, 41.103355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595448, 29.277288, 40.829773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501045, -0.476637, 0.722337,
		-0.604371, 0.790127, 0.102151,
		-0.619427, -0.385377, -0.683955,
		36.409618, 29.161674, 40.624588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301117, 29.247839, 41.495228>,  <36.843220, 29.431438, 41.103355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301117, 29.247839, 41.495228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169617, 29.088066, 41.152912>,  <36.090717, 28.992203, 40.947521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169617, 29.088066, 41.152912>,  <36.301117, 29.247839, 41.495228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169617, 29.088066, 41.152912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567892, -0.640422, 0.517067,
		-0.754598, 0.655985, -0.016292,
		-0.328754, -0.399430, -0.855790,
		36.070992, 28.968237, 40.896175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503735, 29.219395, 41.511559>,  <36.301117, 29.247839, 41.495228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503735, 29.219395, 41.511559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656864, 28.942087, 41.267319>,  <35.748741, 28.775703, 41.120773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656864, 28.942087, 41.267319>,  <35.503735, 29.219395, 41.511559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656864, 28.942087, 41.267319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611133, -0.685701, 0.395386,
		-0.692798, 0.221799, -0.686175,
		0.382815, -0.693267, -0.610601,
		35.771709, 28.734108, 41.084141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893047, 28.882898, 41.199722>,  <35.503735, 29.219395, 41.511559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893047, 28.882898, 41.199722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217815, 28.650492, 41.222347>,  <35.412678, 28.511047, 41.235924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217815, 28.650492, 41.222347>,  <34.893047, 28.882898, 41.199722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217815, 28.650492, 41.222347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505574, -0.651426, 0.565720,
		-0.291847, -0.487918, -0.822655,
		0.811924, -0.581017, 0.056562,
		35.461391, 28.476187, 41.239315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655319, 28.179291, 41.219883>,  <34.893047, 28.882898, 41.199722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655319, 28.179291, 41.219883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020313, 28.132513, 41.376694>,  <35.239311, 28.104446, 41.470779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020313, 28.132513, 41.376694>,  <34.655319, 28.179291, 41.219883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020313, 28.132513, 41.376694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370571, -0.642264, 0.670950,
		0.173323, -0.757510, -0.629395,
		0.912489, -0.116944, 0.392030,
		35.294060, 28.097429, 41.494305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750198, 27.427111, 41.332241>,  <34.655319, 28.179291, 41.219883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750198, 27.427111, 41.332241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012348, 27.618185, 41.566269>,  <35.169640, 27.732830, 41.706684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012348, 27.618185, 41.566269>,  <34.750198, 27.427111, 41.332241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012348, 27.618185, 41.566269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328311, -0.517436, 0.790235,
		0.680219, -0.709982, -0.182283,
		0.655373, 0.477687, 0.585065,
		35.208961, 27.761492, 41.741787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031830, 26.922432, 41.789997>,  <34.750198, 27.427111, 41.332241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031830, 26.922432, 41.789997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093060, 27.272436, 41.973701>,  <35.129799, 27.482439, 42.083923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093060, 27.272436, 41.973701>,  <35.031830, 26.922432, 41.789997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093060, 27.272436, 41.973701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239371, -0.418072, 0.876309,
		0.958786, -0.244074, 0.145457,
		0.153073, 0.875011, 0.459266,
		35.138981, 27.534939, 42.111481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266392, 26.752600, 42.512054>,  <35.031830, 26.922432, 41.789997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266392, 26.752600, 42.512054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137131, 27.130945, 42.524120>,  <35.059574, 27.357952, 42.531361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137131, 27.130945, 42.524120>,  <35.266392, 26.752600, 42.512054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137131, 27.130945, 42.524120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218446, -0.105573, 0.970122,
		0.920789, 0.306910, 0.240737,
		-0.323155, 0.945865, 0.030167,
		35.040184, 27.414705, 42.533169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355198, 26.976181, 43.279030>,  <35.266392, 26.752600, 42.512054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355198, 26.976181, 43.279030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102608, 27.230455, 43.101429>,  <34.951054, 27.383020, 42.994869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102608, 27.230455, 43.101429>,  <35.355198, 26.976181, 43.279030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102608, 27.230455, 43.101429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452802, 0.162525, 0.876673,
		0.629450, 0.754646, 0.185208,
		-0.631477, 0.635685, -0.444007,
		34.913166, 27.421162, 42.968227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450565, 27.616964, 43.668213>,  <35.355198, 26.976181, 43.279030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450565, 27.616964, 43.668213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087578, 27.585184, 43.503193>,  <34.869785, 27.566116, 43.404182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087578, 27.585184, 43.503193>,  <35.450565, 27.616964, 43.668213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087578, 27.585184, 43.503193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420129, 0.171273, 0.891155,
		-0.000145, 0.982015, -0.188804,
		-0.907464, -0.079451, -0.412548,
		34.815338, 27.561348, 43.379429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169765, 28.114952, 44.037193>,  <35.450565, 27.616964, 43.668213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169765, 28.114952, 44.037193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868710, 27.913815, 43.867165>,  <34.688076, 27.793133, 43.765148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868710, 27.913815, 43.867165>,  <35.169765, 28.114952, 44.037193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868710, 27.913815, 43.867165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500360, 0.017161, 0.865647,
		-0.427989, 0.864208, -0.264518,
		-0.752639, -0.502842, -0.425070,
		34.642918, 27.762962, 43.739643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439690, 28.433611, 44.160877>,  <35.169765, 28.114952, 44.037193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439690, 28.433611, 44.160877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358650, 28.052990, 44.068352>,  <34.310028, 27.824617, 44.012836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358650, 28.052990, 44.068352>,  <34.439690, 28.433611, 44.160877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358650, 28.052990, 44.068352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563483, -0.079908, 0.822254,
		-0.800899, 0.296930, -0.519993,
		-0.202600, -0.951550, -0.231313,
		34.297871, 27.767525, 43.998959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800053, 28.325533, 44.433594>,  <34.439690, 28.433611, 44.160877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800053, 28.325533, 44.433594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915192, 27.946709, 44.376717>,  <33.984276, 27.719414, 44.342590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915192, 27.946709, 44.376717>,  <33.800053, 28.325533, 44.433594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915192, 27.946709, 44.376717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660197, -0.303798, 0.686912,
		-0.693745, -0.103850, -0.712694,
		0.287851, -0.947060, -0.142197,
		34.001545, 27.662590, 44.334057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265953, 27.984735, 44.489132>,  <33.800053, 28.325533, 44.433594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265953, 27.984735, 44.489132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508389, 27.670500, 44.538944>,  <33.653851, 27.481958, 44.568832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508389, 27.670500, 44.538944>,  <33.265953, 27.984735, 44.489132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508389, 27.670500, 44.538944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545175, -0.296294, 0.784215,
		-0.579175, -0.543191, -0.607864,
		0.606085, -0.785591, 0.124529,
		33.690216, 27.434822, 44.576302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810402, 27.381336, 44.533512>,  <33.265953, 27.984735, 44.489132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810402, 27.381336, 44.533512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160450, 27.297918, 44.708179>,  <33.370480, 27.247868, 44.812981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160450, 27.297918, 44.708179>,  <32.810402, 27.381336, 44.533512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160450, 27.297918, 44.708179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483896, -0.370966, 0.792609,
		-0.003305, -0.904928, -0.425553,
		0.875119, -0.208543, 0.436665,
		33.422985, 27.235355, 44.839180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859467, 26.677477, 44.740559>,  <32.810402, 27.381336, 44.533512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859467, 26.677477, 44.740559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129807, 26.867191, 44.966225>,  <33.292011, 26.981020, 45.101624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129807, 26.867191, 44.966225>,  <32.859467, 26.677477, 44.740559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129807, 26.867191, 44.966225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399109, -0.408008, 0.821122,
		0.619629, -0.780118, -0.086461,
		0.675849, 0.474284, 0.564166,
		33.332561, 27.009476, 45.135475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137615, 26.184189, 45.138969>,  <32.859467, 26.677477, 44.740559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137615, 26.184189, 45.138969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217106, 26.516750, 45.346539>,  <33.264801, 26.716288, 45.471081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217106, 26.516750, 45.346539>,  <33.137615, 26.184189, 45.138969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217106, 26.516750, 45.346539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334132, -0.440281, 0.833371,
		0.921337, -0.339003, 0.190301,
		0.198730, 0.831402, 0.518920,
		33.276726, 26.766171, 45.502216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518272, 25.920883, 45.724850>,  <33.137615, 26.184189, 45.138969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518272, 25.920883, 45.724850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391293, 26.280142, 45.846542>,  <33.315105, 26.495697, 45.919559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391293, 26.280142, 45.846542>,  <33.518272, 25.920883, 45.724850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391293, 26.280142, 45.846542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266928, -0.392492, 0.880170,
		0.909930, 0.198204, 0.364338,
		-0.317453, 0.898146, 0.304234,
		33.296055, 26.549585, 45.937813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890556, 26.068087, 46.432827>,  <33.518272, 25.920883, 45.724850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890556, 26.068087, 46.432827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576092, 26.311083, 46.387371>,  <33.387413, 26.456881, 46.360100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576092, 26.311083, 46.387371>,  <33.890556, 26.068087, 46.432827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576092, 26.311083, 46.387371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260207, -0.158574, 0.952443,
		0.560579, 0.778339, 0.282737,
		-0.786158, 0.607489, -0.113636,
		33.340244, 26.493330, 46.353279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876160, 26.472202, 47.013073>,  <33.890556, 26.068087, 46.432827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876160, 26.472202, 47.013073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497036, 26.526361, 46.897606>,  <33.269562, 26.558857, 46.828327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497036, 26.526361, 46.897606>,  <33.876160, 26.472202, 47.013073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497036, 26.526361, 46.897606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312236, -0.210812, 0.926319,
		0.064569, 0.968104, 0.242086,
		-0.947808, 0.135400, -0.288664,
		33.212692, 26.566982, 46.811005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492062, 26.776646, 47.580997>,  <33.876160, 26.472202, 47.013073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492062, 26.776646, 47.580997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215336, 26.582102, 47.367512>,  <33.049301, 26.465376, 47.239422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215336, 26.582102, 47.367512>,  <33.492062, 26.776646, 47.580997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215336, 26.582102, 47.367512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352625, -0.417446, 0.837493,
		-0.630117, 0.767590, 0.117293,
		-0.691815, -0.486358, -0.533711,
		33.007790, 26.436193, 47.207397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875504, 26.801874, 47.973969>,  <33.492062, 26.776646, 47.580997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875504, 26.801874, 47.973969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813210, 26.503723, 47.714691>,  <32.775833, 26.324833, 47.559124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813210, 26.503723, 47.714691>,  <32.875504, 26.801874, 47.973969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813210, 26.503723, 47.714691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425988, -0.541367, 0.724884,
		-0.891224, 0.389016, -0.233210,
		-0.155739, -0.745378, -0.648195,
		32.766487, 26.280109, 47.520233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999794, 27.597240, 48.103306>,  <32.875504, 26.801874, 47.973969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999794, 27.597240, 48.103306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958424, 27.915583, 48.341942>,  <32.933601, 28.106588, 48.485123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958424, 27.915583, 48.341942>,  <32.999794, 27.597240, 48.103306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958424, 27.915583, 48.341942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471106, 0.567456, -0.675317,
		-0.875992, 0.211215, -0.433620,
		-0.103423, 0.795853, 0.596591,
		32.927395, 28.154339, 48.520920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730400, 28.112120, 47.799156>,  <32.999794, 27.597240, 48.103306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730400, 28.112120, 47.799156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889614, 28.327332, 48.096367>,  <32.985142, 28.456459, 48.274693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889614, 28.327332, 48.096367>,  <32.730400, 28.112120, 47.799156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889614, 28.327332, 48.096367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187732, 0.745042, -0.640054,
		-0.897957, 0.394253, 0.195547,
		0.398034, 0.538031, 0.743029,
		33.009026, 28.488741, 48.319275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453411, 28.855928, 47.666794>,  <32.730400, 28.112120, 47.799156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453411, 28.855928, 47.666794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788635, 28.861870, 47.884941>,  <32.989769, 28.865435, 48.015831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788635, 28.861870, 47.884941>,  <32.453411, 28.855928, 47.666794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788635, 28.861870, 47.884941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428744, 0.600243, -0.675194,
		-0.337382, 0.799679, 0.496675,
		0.838065, 0.014852, 0.545369,
		33.040054, 28.866325, 48.048553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648785, 29.595148, 47.686504>,  <32.453411, 28.855928, 47.666794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648785, 29.595148, 47.686504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971275, 29.372606, 47.766972>,  <33.164768, 29.239080, 47.815254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971275, 29.372606, 47.766972>,  <32.648785, 29.595148, 47.686504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971275, 29.372606, 47.766972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568076, 0.633076, -0.525837,
		0.165195, 0.538223, 0.826454,
		0.806226, -0.556354, 0.201171,
		33.213142, 29.205700, 47.827324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147171, 30.131569, 47.767544>,  <32.648785, 29.595148, 47.686504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147171, 30.131569, 47.767544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362057, 29.798136, 47.716091>,  <33.490986, 29.598076, 47.685219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362057, 29.798136, 47.716091>,  <33.147171, 30.131569, 47.767544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362057, 29.798136, 47.716091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620609, 0.493934, -0.608994,
		0.571182, 0.247328, 0.782675,
		0.537211, -0.833582, -0.128633,
		33.523220, 29.548061, 47.677502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902721, 30.304394, 47.870834>,  <33.147171, 30.131569, 47.767544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902721, 30.304394, 47.870834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862392, 29.983669, 47.635231>,  <33.838196, 29.791235, 47.493870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862392, 29.983669, 47.635231>,  <33.902721, 30.304394, 47.870834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862392, 29.983669, 47.635231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573153, 0.437107, -0.693132,
		0.813223, -0.407474, 0.415492,
		-0.100819, -0.801812, -0.589011,
		33.832146, 29.743126, 47.458527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556980, 30.254129, 47.567009>,  <33.902721, 30.304394, 47.870834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556980, 30.254129, 47.567009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304939, 30.047314, 47.335270>,  <34.153717, 29.923225, 47.196224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304939, 30.047314, 47.335270>,  <34.556980, 30.254129, 47.567009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304939, 30.047314, 47.335270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489617, 0.314553, -0.813223,
		0.602704, -0.796070, 0.054952,
		-0.630097, -0.517038, -0.579352,
		34.115910, 29.892202, 47.161465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010586, 29.945742, 46.977978>,  <34.556980, 30.254129, 47.567009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010586, 29.945742, 46.977978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631062, 29.932861, 46.852291>,  <34.403347, 29.925133, 46.776878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631062, 29.932861, 46.852291>,  <35.010586, 29.945742, 46.977978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631062, 29.932861, 46.852291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293284, 0.279522, -0.914249,
		0.117267, -0.959599, -0.255769,
		-0.948806, -0.032198, -0.314214,
		34.346420, 29.923201, 46.758026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013504, 29.593775, 46.361237>,  <35.010586, 29.945742, 46.977978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013504, 29.593775, 46.361237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680550, 29.811722, 46.320732>,  <34.480778, 29.942490, 46.296429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680550, 29.811722, 46.320732>,  <35.013504, 29.593775, 46.361237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680550, 29.811722, 46.320732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216245, 0.151095, -0.964577,
		-0.510265, -0.824798, -0.243594,
		-0.832387, 0.544866, -0.101260,
		34.430832, 29.975182, 46.290356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808083, 29.437622, 45.729687>,  <35.013504, 29.593775, 46.361237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808083, 29.437622, 45.729687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633904, 29.790091, 45.803368>,  <34.529396, 30.001572, 45.847576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633904, 29.790091, 45.803368>,  <34.808083, 29.437622, 45.729687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633904, 29.790091, 45.803368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206145, 0.296784, -0.932429,
		-0.876295, -0.368049, -0.310881,
		-0.435444, 0.881169, 0.184199,
		34.503269, 30.054441, 45.858627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372318, 29.576714, 45.174355>,  <34.808083, 29.437622, 45.729687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372318, 29.576714, 45.174355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437443, 29.938290, 45.332539>,  <34.476517, 30.155235, 45.427448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437443, 29.938290, 45.332539>,  <34.372318, 29.576714, 45.174355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437443, 29.938290, 45.332539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250970, 0.349681, -0.902628,
		-0.954205, 0.246206, -0.169929,
		0.162811, 0.903939, 0.395458,
		34.486286, 30.209471, 45.451176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053833, 29.959797, 44.721214>,  <34.372318, 29.576714, 45.174355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053833, 29.959797, 44.721214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304672, 30.209438, 44.907650>,  <34.455177, 30.359222, 45.019512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304672, 30.209438, 44.907650>,  <34.053833, 29.959797, 44.721214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304672, 30.209438, 44.907650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002953, 0.596456, -0.802641,
		-0.778932, 0.504713, 0.372195,
		0.627101, 0.624103, 0.466089,
		34.492802, 30.396669, 45.047478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794140, 30.569136, 44.560875>,  <34.053833, 29.959797, 44.721214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794140, 30.569136, 44.560875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169651, 30.645487, 44.675598>,  <34.394958, 30.691298, 44.744434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169651, 30.645487, 44.675598>,  <33.794140, 30.569136, 44.560875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169651, 30.645487, 44.675598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161918, 0.490374, -0.856339,
		-0.304102, 0.850352, 0.429446,
		0.938778, 0.190879, 0.286811,
		34.451286, 30.702751, 44.761642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952202, 31.230913, 44.385395>,  <33.794140, 30.569136, 44.560875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952202, 31.230913, 44.385395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308636, 31.054197, 44.426964>,  <34.522495, 30.948168, 44.451904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308636, 31.054197, 44.426964>,  <33.952202, 31.230913, 44.385395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308636, 31.054197, 44.426964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289144, 0.376129, -0.880297,
		0.349818, 0.814463, 0.462901,
		0.891080, -0.441788, 0.103920,
		34.575958, 30.921661, 44.458141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406322, 31.714216, 44.244034>,  <33.952202, 31.230913, 44.385395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406322, 31.714216, 44.244034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608746, 31.378157, 44.166000>,  <34.730198, 31.176521, 44.119179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608746, 31.378157, 44.166000>,  <34.406322, 31.714216, 44.244034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608746, 31.378157, 44.166000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353635, 0.408411, -0.841512,
		0.786668, 0.356867, 0.503786,
		0.506059, -0.840147, -0.195083,
		34.760563, 31.126112, 44.107475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050800, 31.907692, 44.020504>,  <34.406322, 31.714216, 44.244034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050800, 31.907692, 44.020504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060284, 31.524893, 43.904858>,  <35.065975, 31.295214, 43.835468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060284, 31.524893, 43.904858>,  <35.050800, 31.907692, 44.020504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060284, 31.524893, 43.904858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432181, 0.270592, -0.860232,
		0.901475, -0.104557, 0.420013,
		0.023709, -0.956999, -0.289119,
		35.067398, 31.237793, 43.818123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765060, 31.679369, 43.872116>,  <35.050800, 31.907692, 44.020504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765060, 31.679369, 43.872116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515472, 31.454401, 43.655106>,  <35.365719, 31.319420, 43.524899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515472, 31.454401, 43.655106>,  <35.765060, 31.679369, 43.872116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515472, 31.454401, 43.655106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511377, 0.231085, -0.827704,
		0.590889, -0.793903, 0.143419,
		-0.623974, -0.562422, -0.542529,
		35.328281, 31.285675, 43.492348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174252, 31.237728, 43.461758>,  <35.765060, 31.679369, 43.872116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174252, 31.237728, 43.461758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816948, 31.215721, 43.283291>,  <35.602566, 31.202517, 43.176212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816948, 31.215721, 43.283291>,  <36.174252, 31.237728, 43.461758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816948, 31.215721, 43.283291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448389, -0.037971, -0.893032,
		0.032192, -0.997763, 0.058588,
		-0.893258, -0.055019, -0.446164,
		35.548969, 31.199215, 43.149441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176685, 30.618223, 42.953667>,  <36.174252, 31.237728, 43.461758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176685, 30.618223, 42.953667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913868, 30.902931, 42.854324>,  <35.756176, 31.073755, 42.794720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913868, 30.902931, 42.854324>,  <36.176685, 30.618223, 42.953667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913868, 30.902931, 42.854324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342459, -0.011679, -0.939460,
		-0.671579, -0.702317, -0.236078,
		-0.657042, 0.711768, -0.248358,
		35.716755, 31.116461, 42.779816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100414, 30.460537, 42.295391>,  <36.176685, 30.618223, 42.953667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100414, 30.460537, 42.295391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908985, 30.811033, 42.317921>,  <35.794128, 31.021330, 42.331436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908985, 30.811033, 42.317921>,  <36.100414, 30.460537, 42.295391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908985, 30.811033, 42.317921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219129, 0.181302, -0.958703,
		-0.850265, -0.446468, -0.278776,
		-0.478573, 0.876240, 0.056321,
		35.765411, 31.073906, 42.334816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707577, 30.428593, 41.712170>,  <36.100414, 30.460537, 42.295391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707577, 30.428593, 41.712170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735653, 30.809900, 41.829712>,  <35.752499, 31.038685, 41.900238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735653, 30.809900, 41.829712>,  <35.707577, 30.428593, 41.712170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735653, 30.809900, 41.829712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341496, 0.253823, -0.904961,
		-0.937259, 0.163868, -0.307722,
		0.070187, 0.953269, 0.293858,
		35.756710, 31.095881, 41.917870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554462, 30.807558, 41.113003>,  <35.707577, 30.428593, 41.712170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554462, 30.807558, 41.113003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740097, 31.077078, 41.342999>,  <35.851479, 31.238791, 41.480995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740097, 31.077078, 41.342999>,  <35.554462, 30.807558, 41.113003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740097, 31.077078, 41.342999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458279, 0.372862, -0.806817,
		-0.758029, 0.637938, -0.135750,
		0.464084, 0.673802, 0.574994,
		35.879322, 31.279219, 41.515495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517830, 31.468016, 40.779011>,  <35.554462, 30.807558, 41.113003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517830, 31.468016, 40.779011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819695, 31.518381, 41.036579>,  <36.000813, 31.548601, 41.191120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819695, 31.518381, 41.036579>,  <35.517830, 31.468016, 40.779011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819695, 31.518381, 41.036579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530392, 0.460639, -0.711685,
		-0.386227, 0.878611, 0.280842,
		0.754661, 0.125915, 0.643920,
		36.046093, 31.556156, 41.229755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699974, 32.151508, 40.720089>,  <35.517830, 31.468016, 40.779011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699974, 32.151508, 40.720089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031406, 31.979776, 40.863823>,  <36.230267, 31.876736, 40.950066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031406, 31.979776, 40.863823>,  <35.699974, 32.151508, 40.720089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031406, 31.979776, 40.863823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554475, 0.540415, -0.632858,
		0.077516, 0.723619, 0.685833,
		0.828583, -0.429334, 0.359338,
		36.279980, 31.850977, 40.971622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190842, 32.700565, 40.587559>,  <35.699974, 32.151508, 40.720089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190842, 32.700565, 40.587559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412819, 32.377934, 40.669022>,  <36.546005, 32.184357, 40.717899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412819, 32.377934, 40.669022>,  <36.190842, 32.700565, 40.587559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412819, 32.377934, 40.669022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772474, 0.408767, -0.485998,
		0.308747, 0.427017, 0.849901,
		0.554941, -0.806577, 0.203654,
		36.579300, 32.135960, 40.730118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793465, 32.968826, 40.964710>,  <36.190842, 32.700565, 40.587559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793465, 32.968826, 40.964710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901676, 32.620213, 40.801128>,  <36.966602, 32.411045, 40.702980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901676, 32.620213, 40.801128>,  <36.793465, 32.968826, 40.964710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901676, 32.620213, 40.801128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820371, 0.430995, -0.375813,
		0.503791, -0.233828, 0.831577,
		0.270530, -0.871532, -0.408956,
		36.982834, 32.358753, 40.678440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487507, 32.906963, 40.982544>,  <36.793465, 32.968826, 40.964710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487507, 32.906963, 40.982544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412617, 32.627995, 40.705833>,  <37.367683, 32.460613, 40.539806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412617, 32.627995, 40.705833>,  <37.487507, 32.906963, 40.982544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412617, 32.627995, 40.705833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746465, 0.356768, -0.561700,
		0.638544, -0.621549, 0.453804,
		-0.187221, -0.697419, -0.691777,
		37.356449, 32.418770, 40.498299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105423, 32.610676, 40.881386>,  <37.487507, 32.906963, 40.982544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105423, 32.610676, 40.881386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899715, 32.523647, 40.549557>,  <37.776291, 32.471432, 40.350460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899715, 32.523647, 40.549557>,  <38.105423, 32.610676, 40.881386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899715, 32.523647, 40.549557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774750, 0.296989, -0.558175,
		0.367816, -0.929764, 0.015831,
		-0.514270, -0.217571, -0.829572,
		37.745434, 32.458374, 40.300686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579197, 32.326946, 40.501625>,  <38.105423, 32.610676, 40.881386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579197, 32.326946, 40.501625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299278, 32.426357, 40.233738>,  <38.131329, 32.486004, 40.073006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299278, 32.426357, 40.233738>,  <38.579197, 32.326946, 40.501625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299278, 32.426357, 40.233738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704102, 0.081766, -0.705376,
		-0.120548, -0.965167, -0.232210,
		-0.699792, 0.248531, -0.669719,
		38.089340, 32.500916, 40.032822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880154, 32.039482, 39.823559>,  <38.579197, 32.326946, 40.501625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880154, 32.039482, 39.823559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585693, 32.296169, 39.737499>,  <38.409016, 32.450180, 39.685863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585693, 32.296169, 39.737499>,  <38.880154, 32.039482, 39.823559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585693, 32.296169, 39.737499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526427, 0.343082, -0.777927,
		-0.425393, -0.685929, -0.590374,
		-0.736149, 0.641714, -0.215147,
		38.364849, 32.488682, 39.672955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658817, 32.037518, 39.036346>,  <38.880154, 32.039482, 39.823559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658817, 32.037518, 39.036346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530952, 32.394306, 39.164219>,  <38.454235, 32.608379, 39.240944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530952, 32.394306, 39.164219>,  <38.658817, 32.037518, 39.036346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530952, 32.394306, 39.164219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625778, 0.452073, -0.635635,
		-0.711492, -0.003133, -0.702687,
		-0.319657, 0.891976, 0.319685,
		38.435055, 32.661900, 39.260124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550846, 32.467289, 38.459373>,  <38.658817, 32.037518, 39.036346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550846, 32.467289, 38.459373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614170, 32.708027, 38.772480>,  <38.652164, 32.852470, 38.960342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614170, 32.708027, 38.772480>,  <38.550846, 32.467289, 38.459373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614170, 32.708027, 38.772480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530014, 0.617073, -0.581641,
		-0.833081, 0.506954, -0.221300,
		0.158307, 0.601847, 0.782764,
		38.661663, 32.888580, 39.007309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376942, 33.099087, 38.195873>,  <38.550846, 32.467289, 38.459373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376942, 33.099087, 38.195873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584164, 33.204834, 38.521263>,  <38.708496, 33.268280, 38.716496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584164, 33.204834, 38.521263>,  <38.376942, 33.099087, 38.195873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584164, 33.204834, 38.521263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504945, 0.673116, -0.540320,
		-0.690401, 0.690671, 0.215219,
		0.518051, 0.264364, 0.813471,
		38.739578, 33.284142, 38.765305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432842, 33.802162, 38.112690>,  <38.376942, 33.099087, 38.195873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432842, 33.802162, 38.112690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716331, 33.716953, 38.381714>,  <38.886425, 33.665829, 38.543129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716331, 33.716953, 38.381714>,  <38.432842, 33.802162, 38.112690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716331, 33.716953, 38.381714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625671, 0.630259, -0.459685,
		-0.325965, 0.746589, 0.579958,
		0.708719, -0.213021, 0.672561,
		38.928947, 33.653046, 38.583481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672832, 34.419743, 38.298370>,  <38.432842, 33.802162, 38.112690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672832, 34.419743, 38.298370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943855, 34.142231, 38.396019>,  <39.106468, 33.975723, 38.454609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943855, 34.142231, 38.396019>,  <38.672832, 34.419743, 38.298370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943855, 34.142231, 38.396019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735472, 0.638321, -0.227217,
		0.001812, 0.333495, 0.942750,
		0.677553, -0.693778, 0.244120,
		39.147121, 33.934097, 38.469254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155312, 34.669548, 38.771725>,  <38.672832, 34.419743, 38.298370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155312, 34.669548, 38.771725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379719, 34.390083, 38.594128>,  <39.514362, 34.222404, 38.487572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379719, 34.390083, 38.594128>,  <39.155312, 34.669548, 38.771725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379719, 34.390083, 38.594128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729990, 0.670464, -0.132639,
		0.390348, -0.249694, 0.886161,
		0.561020, -0.698664, -0.443988,
		39.548023, 34.180485, 38.460930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759621, 34.912746, 38.916298>,  <39.155312, 34.669548, 38.771725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759621, 34.912746, 38.916298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874172, 34.630562, 38.656971>,  <39.942905, 34.461250, 38.501373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874172, 34.630562, 38.656971>,  <39.759621, 34.912746, 38.916298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874172, 34.630562, 38.656971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776470, 0.567312, -0.274321,
		0.561320, -0.424839, 0.710234,
		0.286382, -0.705457, -0.648318,
		39.960087, 34.418926, 38.462475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464302, 34.812202, 39.012474>,  <39.759621, 34.912746, 38.916298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464302, 34.812202, 39.012474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385441, 34.673744, 38.645580>,  <40.338123, 34.590668, 38.425446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385441, 34.673744, 38.645580>,  <40.464302, 34.812202, 39.012474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385441, 34.673744, 38.645580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749028, 0.550448, -0.368731,
		0.632523, -0.759730, 0.150748,
		-0.197157, -0.346146, -0.917231,
		40.326294, 34.569901, 38.370411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055672, 34.596951, 38.781082>,  <40.464302, 34.812202, 39.012474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055672, 34.596951, 38.781082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838886, 34.642776, 38.448059>,  <40.708817, 34.670273, 38.248245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838886, 34.642776, 38.448059>,  <41.055672, 34.596951, 38.781082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838886, 34.642776, 38.448059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606872, 0.738661, -0.293405,
		0.581363, -0.664270, -0.469854,
		-0.541963, 0.114566, -0.832557,
		40.676296, 34.677147, 38.198292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592701, 34.544437, 38.218964>,  <41.055672, 34.596951, 38.781082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592701, 34.544437, 38.218964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271744, 34.714558, 38.051495>,  <41.079170, 34.816631, 37.951012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271744, 34.714558, 38.051495>,  <41.592701, 34.544437, 38.218964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271744, 34.714558, 38.051495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578163, 0.727902, -0.368628,
		0.147973, -0.537844, -0.829957,
		-0.802391, 0.425303, -0.418671,
		41.031025, 34.842148, 37.925892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776524, 34.632992, 37.555164>,  <41.592701, 34.544437, 38.218964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776524, 34.632992, 37.555164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509495, 34.891136, 37.703678>,  <41.349277, 35.046024, 37.792786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509495, 34.891136, 37.703678>,  <41.776524, 34.632992, 37.555164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509495, 34.891136, 37.703678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613776, 0.759296, -0.216215,
		-0.421454, 0.083548, -0.902993,
		-0.667575, 0.645360, 0.371287,
		41.309223, 35.084743, 37.815063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596256, 35.187637, 36.981724>,  <41.776524, 34.632992, 37.555164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596256, 35.187637, 36.981724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647827, 35.273705, 37.368935>,  <41.678772, 35.325344, 37.601261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647827, 35.273705, 37.368935>,  <41.596256, 35.187637, 36.981724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647827, 35.273705, 37.368935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661572, 0.708522, -0.245599,
		-0.738715, 0.672086, -0.050997,
		0.128931, 0.215166, 0.968029,
		41.686508, 35.338253, 37.659344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610252, 35.919060, 37.169247>,  <41.596256, 35.187637, 36.981724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610252, 35.919060, 37.169247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830887, 35.742912, 37.452606>,  <41.963268, 35.637222, 37.622620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830887, 35.742912, 37.452606>,  <41.610252, 35.919060, 37.169247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830887, 35.742912, 37.452606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769240, 0.596946, -0.227872,
		-0.322526, 0.670618, 0.668018,
		0.551586, -0.440372, 0.708397,
		41.996361, 35.610802, 37.665127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061146, 36.486172, 37.189133>,  <41.610252, 35.919060, 37.169247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061146, 36.486172, 37.189133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175644, 36.157249, 37.385857>,  <42.244343, 35.959896, 37.503891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175644, 36.157249, 37.385857>,  <42.061146, 36.486172, 37.189133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175644, 36.157249, 37.385857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940622, 0.143425, -0.307668,
		0.182459, 0.550677, 0.814533,
		0.286250, -0.822304, 0.491810,
		42.261520, 35.910557, 37.533401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718708, 36.562469, 37.452068>,  <42.061146, 36.486172, 37.189133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718708, 36.562469, 37.452068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657707, 36.177940, 37.360336>,  <42.621105, 35.947224, 37.305298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657707, 36.177940, 37.360336>,  <42.718708, 36.562469, 37.452068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657707, 36.177940, 37.360336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860760, -0.015174, -0.508785,
		0.485629, -0.274989, 0.829786,
		-0.152502, -0.961327, -0.229331,
		42.611958, 35.889542, 37.291538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359360, 36.147732, 37.481621>,  <42.718708, 36.562469, 37.452068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359360, 36.147732, 37.481621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121140, 35.966675, 37.216160>,  <42.978207, 35.858040, 37.056885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121140, 35.966675, 37.216160>,  <43.359360, 36.147732, 37.481621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121140, 35.966675, 37.216160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761617, -0.055433, -0.645652,
		0.255464, -0.889965, 0.377756,
		-0.595548, -0.452647, -0.663651,
		42.942474, 35.830879, 37.017063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992744, 36.270531, 37.976128>,  <43.359360, 36.147732, 37.481621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992744, 36.270531, 37.976128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219166, 36.502022, 37.741295>,  <44.355019, 36.640915, 37.600395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219166, 36.502022, 37.741295>,  <43.992744, 36.270531, 37.976128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219166, 36.502022, 37.741295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788211, 0.171350, -0.591069,
		-0.241471, 0.797318, 0.553152,
		0.566052, 0.578726, -0.587078,
		44.388981, 36.675640, 37.565170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683067, 37.010628, 37.862942>,  <43.992744, 36.270531, 37.976128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683067, 37.010628, 37.862942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910355, 36.890068, 37.556664>,  <44.046726, 36.817730, 37.372898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910355, 36.890068, 37.556664>,  <43.683067, 37.010628, 37.862942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.910355, 36.890068, 37.556664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715592, 0.278422, -0.640632,
		0.406273, 0.911942, -0.057476,
		0.568216, -0.301401, -0.765694,
		44.080818, 36.799648, 37.326954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567440, 37.505909, 37.379436>,  <43.683067, 37.010628, 37.862942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567440, 37.505909, 37.379436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735153, 37.225658, 37.148502>,  <43.835781, 37.057507, 37.009941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735153, 37.225658, 37.148502>,  <43.567440, 37.505909, 37.379436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735153, 37.225658, 37.148502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640998, 0.221875, -0.734774,
		0.642902, 0.678150, -0.356074,
		0.419283, -0.700631, -0.577337,
		43.860939, 37.015469, 36.975300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870800, 37.874912, 36.747822>,  <43.567440, 37.505909, 37.379436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870800, 37.874912, 36.747822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804493, 37.498928, 36.628490>,  <43.764709, 37.273338, 36.556892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804493, 37.498928, 36.628490>,  <43.870800, 37.874912, 36.747822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804493, 37.498928, 36.628490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533524, 0.339900, -0.774481,
		0.829381, 0.030781, -0.557835,
		-0.165769, -0.939958, -0.298329,
		43.754761, 37.216942, 36.538990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776001, 37.834137, 36.042355>,  <43.870800, 37.874912, 36.747822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776001, 37.834137, 36.042355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623169, 37.470882, 36.110832>,  <43.531471, 37.252930, 36.151920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623169, 37.470882, 36.110832>,  <43.776001, 37.834137, 36.042355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623169, 37.470882, 36.110832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585894, 0.094784, -0.804826,
		0.714663, -0.407809, -0.568286,
		-0.382079, -0.908134, 0.171194,
		43.508545, 37.198441, 36.162189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877136, 37.585011, 35.420097>,  <43.776001, 37.834137, 36.042355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877136, 37.585011, 35.420097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611805, 37.350056, 35.605560>,  <43.452606, 37.209084, 35.716839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611805, 37.350056, 35.605560>,  <43.877136, 37.585011, 35.420097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611805, 37.350056, 35.605560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650219, 0.145705, -0.745644,
		0.370423, -0.796084, -0.478578,
		-0.663327, -0.587385, 0.463656,
		43.412807, 37.173840, 35.744656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811199, 36.960567, 35.025238>,  <43.877136, 37.585011, 35.420097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811199, 36.960567, 35.025238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477234, 37.029037, 35.234474>,  <43.276855, 37.070122, 35.360016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477234, 37.029037, 35.234474>,  <43.811199, 36.960567, 35.025238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477234, 37.029037, 35.234474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496109, 0.177483, -0.849927,
		-0.238329, -0.969122, -0.063259,
		-0.834910, 0.171179, 0.523089,
		43.226761, 37.080391, 35.391399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382851, 36.584103, 34.613007>,  <43.811199, 36.960567, 35.025238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382851, 36.584103, 34.613007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155449, 36.813103, 34.849327>,  <43.019009, 36.950500, 34.991119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155449, 36.813103, 34.849327>,  <43.382851, 36.584103, 34.613007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155449, 36.813103, 34.849327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637921, 0.146699, -0.756000,
		-0.519478, -0.806676, 0.281809,
		-0.568505, 0.572498, 0.590803,
		42.984898, 36.984852, 35.026569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682846, 36.325256, 34.303532>,  <43.382851, 36.584103, 34.613007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682846, 36.325256, 34.303532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643620, 36.676556, 34.490749>,  <42.620083, 36.887333, 34.603081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643620, 36.676556, 34.490749>,  <42.682846, 36.325256, 34.303532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643620, 36.676556, 34.490749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479447, 0.370443, -0.795551,
		-0.872075, -0.302418, 0.384745,
		-0.098063, 0.878245, 0.468048,
		42.614201, 36.940029, 34.631165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946064, 36.461224, 34.288948>,  <42.682846, 36.325256, 34.303532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946064, 36.461224, 34.288948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149384, 36.804039, 34.322693>,  <42.271374, 37.009727, 34.342941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149384, 36.804039, 34.322693>,  <41.946064, 36.461224, 34.288948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149384, 36.804039, 34.322693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590873, 0.418339, -0.689827,
		-0.626501, 0.300789, 0.719042,
		0.508296, 0.857040, 0.084361,
		42.301872, 37.061150, 34.348000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457069, 36.957970, 34.041451>,  <41.946064, 36.461224, 34.288948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457069, 36.957970, 34.041451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821125, 37.122620, 34.022602>,  <42.039558, 37.221409, 34.011295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821125, 37.122620, 34.022602>,  <41.457069, 36.957970, 34.041451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821125, 37.122620, 34.022602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277406, 0.520965, -0.807243,
		-0.307732, 0.747772, 0.588335,
		0.910136, 0.411622, -0.047118,
		42.094166, 37.246105, 34.008465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360500, 37.709217, 34.063087>,  <41.457069, 36.957970, 34.041451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360500, 37.709217, 34.063087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720421, 37.659439, 33.895817>,  <41.936371, 37.629574, 33.795452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720421, 37.659439, 33.895817>,  <41.360500, 37.709217, 34.063087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720421, 37.659439, 33.895817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267439, 0.599982, -0.753988,
		0.344728, 0.790276, 0.506583,
		0.899799, -0.124441, -0.418181,
		41.990360, 37.622108, 33.770363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366199, 38.263355, 33.798866>,  <41.360500, 37.709217, 34.063087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366199, 38.263355, 33.798866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664497, 38.077667, 33.607716>,  <41.843475, 37.966255, 33.493027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664497, 38.077667, 33.607716>,  <41.366199, 38.263355, 33.798866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664497, 38.077667, 33.607716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109609, 0.622018, -0.775293,
		0.657148, 0.630553, 0.412987,
		0.745749, -0.464215, -0.477873,
		41.888222, 37.938404, 33.464355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830650, 38.854210, 33.479683>,  <41.366199, 38.263355, 33.798866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830650, 38.854210, 33.479683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903915, 38.510128, 33.289314>,  <41.947872, 38.303680, 33.175095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903915, 38.510128, 33.289314>,  <41.830650, 38.854210, 33.479683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903915, 38.510128, 33.289314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018042, 0.486968, -0.873233,
		0.982917, 0.151356, 0.104713,
		0.183161, -0.860205, -0.475919,
		41.958862, 38.252068, 33.146538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371548, 39.033936, 32.983273>,  <41.830650, 38.854210, 33.479683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371548, 39.033936, 32.983273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171494, 38.711876, 32.855778>,  <42.051460, 38.518639, 32.779282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171494, 38.711876, 32.855778>,  <42.371548, 39.033936, 32.983273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171494, 38.711876, 32.855778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088036, 0.413449, -0.906261,
		0.861459, -0.425196, -0.277664,
		-0.500138, -0.805151, -0.318737,
		42.021454, 38.470329, 32.760155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652622, 38.872921, 32.278522>,  <42.371548, 39.033936, 32.983273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652622, 38.872921, 32.278522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298676, 38.691650, 32.321682>,  <42.086308, 38.582890, 32.347580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298676, 38.691650, 32.321682>,  <42.652622, 38.872921, 32.278522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298676, 38.691650, 32.321682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311515, 0.403416, -0.860357,
		0.346355, -0.794919, -0.498139,
		-0.884871, -0.453167, 0.107904,
		42.033215, 38.555698, 32.354053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541290, 38.664310, 31.613457>,  <42.652622, 38.872921, 32.278522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541290, 38.664310, 31.613457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195236, 38.675323, 31.813770>,  <41.987602, 38.681931, 31.933958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195236, 38.675323, 31.813770>,  <42.541290, 38.664310, 31.613457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195236, 38.675323, 31.813770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437152, 0.448043, -0.779844,
		-0.245846, -0.893588, -0.375580,
		-0.865135, 0.027536, 0.500783,
		41.935696, 38.683586, 31.964005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119408, 38.365170, 31.183475>,  <42.541290, 38.664310, 31.613457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119408, 38.365170, 31.183475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921139, 38.610920, 31.429028>,  <41.802177, 38.758369, 31.576359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921139, 38.610920, 31.429028>,  <42.119408, 38.365170, 31.183475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921139, 38.610920, 31.429028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399987, 0.465918, -0.789259,
		-0.770919, -0.636761, 0.014798,
		-0.495675, 0.614374, 0.613882,
		41.772438, 38.795231, 31.613192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597775, 38.632507, 30.794178>,  <42.119408, 38.365170, 31.183475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597775, 38.632507, 30.794178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560566, 38.892174, 31.096151>,  <41.538242, 39.047974, 31.277336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560566, 38.892174, 31.096151>,  <41.597775, 38.632507, 30.794178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560566, 38.892174, 31.096151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307886, 0.702307, -0.641850,
		-0.946865, -0.292139, 0.134541,
		-0.093020, 0.649169, 0.754936,
		41.532661, 39.086926, 31.322632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922955, 38.806412, 30.698410>,  <41.597775, 38.632507, 30.794178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922955, 38.806412, 30.698410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087368, 39.092766, 30.924171>,  <41.186016, 39.264580, 31.059629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087368, 39.092766, 30.924171>,  <40.922955, 38.806412, 30.698410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087368, 39.092766, 30.924171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254438, 0.684611, -0.683059,
		-0.875391, 0.137156, 0.463549,
		0.411036, 0.715889, 0.564405,
		41.210678, 39.307533, 31.093493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433064, 39.268803, 30.689140>,  <40.922955, 38.806412, 30.698410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433064, 39.268803, 30.689140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773193, 39.460888, 30.775251>,  <40.977272, 39.576138, 30.826918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773193, 39.460888, 30.775251>,  <40.433064, 39.268803, 30.689140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773193, 39.460888, 30.775251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194220, 0.666556, -0.719709,
		-0.489107, 0.570176, 0.660056,
		0.850325, 0.480211, 0.215277,
		41.028290, 39.604950, 30.839834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365406, 39.987026, 30.339317>,  <40.433064, 39.268803, 30.689140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365406, 39.987026, 30.339317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750523, 39.976429, 30.446896>,  <40.981594, 39.970070, 30.511442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750523, 39.976429, 30.446896>,  <40.365406, 39.987026, 30.339317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750523, 39.976429, 30.446896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234072, 0.579127, -0.780912,
		-0.135068, 0.814807, 0.563778,
		0.962791, -0.026489, 0.268945,
		41.039360, 39.968483, 30.527578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641548, 40.812031, 30.334768>,  <40.365406, 39.987026, 30.339317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641548, 40.812031, 30.334768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932934, 40.544373, 30.276001>,  <41.107765, 40.383778, 30.240742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932934, 40.544373, 30.276001>,  <40.641548, 40.812031, 30.334768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932934, 40.544373, 30.276001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428207, 0.612121, -0.664790,
		0.534775, 0.421362, 0.732441,
		0.728460, -0.669150, -0.146917,
		41.151470, 40.343628, 30.231926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283333, 41.007957, 30.002014>,  <40.641548, 40.812031, 30.334768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283333, 41.007957, 30.002014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418930, 41.384163, 30.011030>,  <41.500290, 41.609886, 30.016439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418930, 41.384163, 30.011030>,  <41.283333, 41.007957, 30.002014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418930, 41.384163, 30.011030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683457, -0.229736, -0.692898,
		-0.646505, 0.250296, -0.720683,
		0.338996, 0.940518, 0.022541,
		41.520630, 41.666317, 30.017792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313488, 41.261871, 29.308342>,  <41.283333, 41.007957, 30.002014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313488, 41.261871, 29.308342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574245, 41.481384, 29.517673>,  <41.730698, 41.613094, 29.643272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574245, 41.481384, 29.517673>,  <41.313488, 41.261871, 29.308342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574245, 41.481384, 29.517673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725131, -0.249204, -0.641937,
		-0.221870, 0.797955, -0.560395,
		0.651889, 0.548786, 0.523331,
		41.769814, 41.646019, 29.674673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836861, 41.532745, 28.908792>,  <41.313488, 41.261871, 29.308342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836861, 41.532745, 28.908792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044353, 41.519531, 29.250511>,  <42.168850, 41.511600, 29.455544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044353, 41.519531, 29.250511>,  <41.836861, 41.532745, 28.908792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044353, 41.519531, 29.250511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736395, -0.490375, -0.466105,
		0.434327, 0.870885, -0.230043,
		0.518731, -0.033040, 0.854299,
		42.199974, 41.509621, 29.506802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353848, 42.072441, 28.949661>,  <41.836861, 41.532745, 28.908792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353848, 42.072441, 28.949661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363678, 41.703281, 29.103363>,  <42.369576, 41.481785, 29.195583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363678, 41.703281, 29.103363>,  <42.353848, 42.072441, 28.949661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363678, 41.703281, 29.103363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381289, -0.346659, -0.856998,
		0.924129, 0.167577, 0.343371,
		0.024581, -0.922900, 0.384253,
		42.371052, 41.426411, 29.218639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979557, 41.811596, 28.805088>,  <42.353848, 42.072441, 28.949661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979557, 41.811596, 28.805088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672153, 41.556965, 28.830917>,  <42.487713, 41.404186, 28.846415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672153, 41.556965, 28.830917>,  <42.979557, 41.811596, 28.805088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672153, 41.556965, 28.830917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313202, -0.462269, -0.829585,
		0.557944, -0.617317, 0.554633,
		-0.768507, -0.636574, 0.064576,
		42.441601, 41.365993, 28.850290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194183, 41.402290, 29.413225>,  <42.979557, 41.811596, 28.805088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194183, 41.402290, 29.413225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581551, 41.317539, 29.360659>,  <43.813972, 41.266689, 29.329119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581551, 41.317539, 29.360659>,  <43.194183, 41.402290, 29.413225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581551, 41.317539, 29.360659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055307, -0.696513, 0.715409,
		-0.243115, -0.685548, -0.686236,
		0.968419, -0.211881, -0.131417,
		43.872078, 41.253975, 29.321234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418011, 40.672081, 29.326357>,  <43.194183, 41.402290, 29.413225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418011, 40.672081, 29.326357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758801, 40.838062, 29.454081>,  <43.963272, 40.937653, 29.530716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758801, 40.838062, 29.454081>,  <43.418011, 40.672081, 29.326357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758801, 40.838062, 29.454081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006786, -0.601048, 0.799184,
		0.523546, -0.683048, -0.509259,
		0.851971, 0.414953, 0.319312,
		44.014393, 40.962547, 29.549873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948380, 40.195217, 29.585566>,  <43.418011, 40.672081, 29.326357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948380, 40.195217, 29.585566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011642, 40.527424, 29.799191>,  <44.049599, 40.726749, 29.927366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011642, 40.527424, 29.799191>,  <43.948380, 40.195217, 29.585566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011642, 40.527424, 29.799191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152314, -0.554917, 0.817843,
		0.975596, -0.048003, -0.214264,
		0.158157, 0.830519, 0.534063,
		44.059090, 40.776581, 29.959410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595749, 40.030743, 29.846479>,  <43.948380, 40.195217, 29.585566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595749, 40.030743, 29.846479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393150, 40.278961, 30.085941>,  <44.271591, 40.427891, 30.229618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393150, 40.278961, 30.085941>,  <44.595749, 40.030743, 29.846479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393150, 40.278961, 30.085941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151587, -0.619400, 0.770302,
		0.848815, 0.480900, 0.219655,
		-0.506492, 0.620547, 0.598654,
		44.241203, 40.465126, 30.265537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968910, 40.068420, 30.407167>,  <44.595749, 40.030743, 29.846479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968910, 40.068420, 30.407167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.598320, 40.161915, 30.525152>,  <44.375965, 40.218014, 30.595943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.598320, 40.161915, 30.525152>,  <44.968910, 40.068420, 30.407167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598320, 40.161915, 30.525152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064581, -0.673385, 0.736466,
		0.370765, 0.701369, 0.608781,
		-0.926479, 0.233740, 0.294963,
		44.320377, 40.232037, 30.613642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009216, 40.192059, 31.086109>,  <44.968910, 40.068420, 30.407167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009216, 40.192059, 31.086109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628250, 40.093819, 31.013893>,  <44.399670, 40.034874, 30.970564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628250, 40.093819, 31.013893>,  <45.009216, 40.192059, 31.086109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628250, 40.093819, 31.013893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036439, -0.496312, 0.867379,
		-0.302631, 0.832680, 0.463744,
		-0.952411, -0.245598, -0.180541,
		44.342525, 40.020138, 30.959730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611401, 40.308643, 31.699570>,  <45.009216, 40.192059, 31.086109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611401, 40.308643, 31.699570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387440, 40.054848, 31.486425>,  <44.253063, 39.902573, 31.358540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387440, 40.054848, 31.486425>,  <44.611401, 40.308643, 31.699570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387440, 40.054848, 31.486425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139570, -0.561703, 0.815481,
		-0.816719, 0.530961, 0.225943,
		-0.559901, -0.634485, -0.532860,
		44.219471, 39.864502, 31.326567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157524, 40.064713, 32.154907>,  <44.611401, 40.308643, 31.699570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157524, 40.064713, 32.154907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127056, 39.801640, 31.855133>,  <44.108776, 39.643795, 31.675268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127056, 39.801640, 31.855133>,  <44.157524, 40.064713, 32.154907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127056, 39.801640, 31.855133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080234, -0.745136, 0.662068,
		-0.993861, 0.110563, 0.003992,
		-0.076175, -0.657683, -0.749433,
		44.104202, 39.604336, 31.630302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686653, 39.794540, 32.359596>,  <44.157524, 40.064713, 32.154907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686653, 39.794540, 32.359596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840385, 39.523651, 32.108631>,  <43.932625, 39.361118, 31.958052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840385, 39.523651, 32.108631>,  <43.686653, 39.794540, 32.359596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840385, 39.523651, 32.108631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041458, -0.691590, 0.721100,
		-0.922262, -0.251132, -0.293879,
		0.384335, -0.677227, -0.627416,
		43.955685, 39.320484, 31.920406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359684, 39.130310, 32.421642>,  <43.686653, 39.794540, 32.359596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359684, 39.130310, 32.421642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723598, 39.063061, 32.269836>,  <43.941948, 39.022713, 32.178753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723598, 39.063061, 32.269836>,  <43.359684, 39.130310, 32.421642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723598, 39.063061, 32.269836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118589, -0.770915, 0.625800,
		-0.397783, -0.614349, -0.681428,
		0.909783, -0.168123, -0.379512,
		43.996532, 39.012623, 32.155983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373070, 38.428173, 32.485390>,  <43.359684, 39.130310, 32.421642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373070, 38.428173, 32.485390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750359, 38.527344, 32.396976>,  <43.976734, 38.586845, 32.343929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750359, 38.527344, 32.396976>,  <43.373070, 38.428173, 32.485390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750359, 38.527344, 32.396976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330329, -0.769820, 0.546131,
		-0.034752, -0.588138, -0.808013,
		0.943226, 0.247931, -0.221032,
		44.033325, 38.601723, 32.330666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736935, 37.797585, 32.405262>,  <43.373070, 38.428173, 32.485390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736935, 37.797585, 32.405262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022324, 38.065239, 32.488419>,  <44.193558, 38.225830, 32.538311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022324, 38.065239, 32.488419>,  <43.736935, 37.797585, 32.405262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022324, 38.065239, 32.488419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415142, -0.642701, 0.643889,
		0.564458, -0.373093, -0.736335,
		0.713473, 0.669132, 0.207891,
		44.236366, 38.265980, 32.550785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330685, 37.299168, 32.510635>,  <43.736935, 37.797585, 32.405262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330685, 37.299168, 32.510635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398628, 37.653946, 32.682434>,  <44.439396, 37.866814, 32.785515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398628, 37.653946, 32.682434>,  <44.330685, 37.299168, 32.510635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398628, 37.653946, 32.682434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362888, -0.461503, 0.809523,
		0.916220, 0.018353, -0.400254,
		0.169862, 0.886949, 0.429498,
		44.449585, 37.920029, 32.811283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062595, 37.229023, 32.611530>,  <44.330685, 37.299168, 32.510635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062595, 37.229023, 32.611530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905819, 37.509003, 32.850346>,  <44.811752, 37.676991, 32.993637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905819, 37.509003, 32.850346>,  <45.062595, 37.229023, 32.611530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905819, 37.509003, 32.850346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551644, -0.340553, 0.761389,
		0.736256, 0.627772, -0.252645,
		-0.391940, 0.699947, 0.597041,
		44.788239, 37.718987, 33.029457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637108, 37.592709, 32.988178>,  <45.062595, 37.229023, 32.611530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637108, 37.592709, 32.988178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321949, 37.618771, 33.233116>,  <45.132854, 37.634407, 33.380081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321949, 37.618771, 33.233116>,  <45.637108, 37.592709, 32.988178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321949, 37.618771, 33.233116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595889, -0.170175, 0.784829,
		0.155343, 0.983257, 0.095255,
		-0.787899, 0.065156, 0.612347,
		45.085579, 37.638317, 33.416821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005981, 37.786339, 33.536007>,  <45.637108, 37.592709, 32.988178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005981, 37.786339, 33.536007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637383, 37.725960, 33.679150>,  <45.416222, 37.689732, 33.765034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637383, 37.725960, 33.679150>,  <46.005981, 37.786339, 33.536007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637383, 37.725960, 33.679150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380280, -0.163394, 0.910324,
		-0.078940, 0.974945, 0.207969,
		-0.921496, -0.150948, 0.357854,
		45.360935, 37.680676, 33.786507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902805, 38.207348, 34.111240>,  <46.005981, 37.786339, 33.536007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.902805, 38.207348, 34.111240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628254, 37.919250, 34.151508>,  <45.463524, 37.746391, 34.175667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628254, 37.919250, 34.151508>,  <45.902805, 38.207348, 34.111240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628254, 37.919250, 34.151508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372459, -0.229254, 0.899287,
		-0.624627, 0.654745, 0.425617,
		-0.686378, -0.720244, 0.100667,
		45.422340, 37.703178, 34.181709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613155, 38.240318, 34.866390>,  <45.902805, 38.207348, 34.111240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613155, 38.240318, 34.866390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527111, 37.870831, 34.739605>,  <45.475483, 37.649139, 34.663532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527111, 37.870831, 34.739605>,  <45.613155, 38.240318, 34.866390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527111, 37.870831, 34.739605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230135, -0.363370, 0.902773,
		-0.949086, 0.121254, 0.290746,
		-0.215113, -0.923720, -0.316965,
		45.462578, 37.593716, 34.644516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291660, 38.008301, 35.420250>,  <45.613155, 38.240318, 34.866390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291660, 38.008301, 35.420250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399963, 37.679176, 35.220383>,  <45.464943, 37.481701, 35.100464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399963, 37.679176, 35.220383>,  <45.291660, 38.008301, 35.420250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399963, 37.679176, 35.220383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094147, -0.493934, 0.864388,
		-0.958033, -0.281080, -0.056270,
		0.270756, -0.822814, -0.499668,
		45.481190, 37.432331, 35.070484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893665, 37.428864, 35.655891>,  <45.291660, 38.008301, 35.420250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893665, 37.428864, 35.655891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.220490, 37.264793, 35.493820>,  <45.416584, 37.166351, 35.396576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.220490, 37.264793, 35.493820>,  <44.893665, 37.428864, 35.655891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.220490, 37.264793, 35.493820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107871, -0.581598, 0.806293,
		-0.566373, -0.702496, -0.430954,
		0.817059, -0.410175, -0.405180,
		45.465607, 37.141739, 35.372265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745438, 36.721214, 35.566277>,  <44.893665, 37.428864, 35.655891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745438, 36.721214, 35.566277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143650, 36.750343, 35.590317>,  <45.382576, 36.767822, 35.604740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143650, 36.750343, 35.590317>,  <44.745438, 36.721214, 35.566277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143650, 36.750343, 35.590317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013569, -0.740242, 0.672203,
		0.093441, -0.668385, -0.737923,
		0.995532, 0.072824, 0.060100,
		45.442310, 36.772190, 35.608345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992653, 36.068241, 35.581890>,  <44.745438, 36.721214, 35.566277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992653, 36.068241, 35.581890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333836, 36.248634, 35.687023>,  <45.538544, 36.356869, 35.750103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333836, 36.248634, 35.687023>,  <44.992653, 36.068241, 35.581890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333836, 36.248634, 35.687023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183285, -0.730234, 0.658153,
		0.488746, -0.513201, -0.705515,
		0.852956, 0.450979, 0.262837,
		45.589722, 36.383926, 35.765873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496288, 35.516918, 35.700401>,  <44.992653, 36.068241, 35.581890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496288, 35.516918, 35.700401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661720, 35.826191, 35.892712>,  <45.760979, 36.011753, 36.008099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661720, 35.826191, 35.892712>,  <45.496288, 35.516918, 35.700401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661720, 35.826191, 35.892712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226789, -0.598895, 0.768044,
		0.881770, -0.208612, -0.423039,
		0.413580, 0.773179, 0.480777,
		45.785793, 36.058144, 36.036945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053555, 35.210430, 36.016106>,  <45.496288, 35.516918, 35.700401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053555, 35.210430, 36.016106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987854, 35.544949, 36.225342>,  <45.948433, 35.745659, 36.350883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987854, 35.544949, 36.225342>,  <46.053555, 35.210430, 36.016106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987854, 35.544949, 36.225342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182760, -0.495312, 0.849273,
		0.969340, 0.235095, -0.071486,
		-0.164252, 0.836299, 0.523092,
		45.938580, 35.795837, 36.382271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.275833, 34.780590, 35.385895>,  <46.053555, 35.210430, 36.016106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.275833, 34.780590, 35.385895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560848, 34.534168, 35.251572>,  <46.731857, 34.386314, 35.170979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560848, 34.534168, 35.251572>,  <46.275833, 34.780590, 35.385895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560848, 34.534168, 35.251572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148780, 0.335063, -0.930375,
		0.685676, 0.712890, 0.147089,
		0.712540, -0.616052, -0.335809,
		46.774609, 34.349354, 35.150829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470734, 34.783337, 34.664501>,  <46.275833, 34.780590, 35.385895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470734, 34.783337, 34.664501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714252, 35.056587, 34.503155>,  <46.860363, 35.220535, 34.406349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714252, 35.056587, 34.503155>,  <46.470734, 34.783337, 34.664501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714252, 35.056587, 34.503155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784457, -0.442575, 0.434459,
		0.118271, -0.580920, -0.805322,
		0.608801, 0.683124, -0.403364,
		46.896893, 35.261524, 34.382145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.986298, 34.557980, 34.154751>,  <46.470734, 34.783337, 34.664501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.986298, 34.557980, 34.154751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133450, 34.883896, 34.333984>,  <47.221741, 35.079445, 34.441525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133450, 34.883896, 34.333984>,  <46.986298, 34.557980, 34.154751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.133450, 34.883896, 34.333984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688876, -0.562481, 0.457236,
		0.624592, 0.140469, -0.768214,
		0.367879, 0.814790, 0.448087,
		47.243813, 35.128334, 34.468410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.775154, 34.732796, 34.102737>,  <46.986298, 34.557980, 34.154751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.775154, 34.732796, 34.102737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.586021, 34.817673, 34.444828>,  <47.472542, 34.868599, 34.650082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.586021, 34.817673, 34.444828>,  <47.775154, 34.732796, 34.102737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.586021, 34.817673, 34.444828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656227, -0.562923, 0.502477,
		0.588045, 0.798808, 0.126924,
		-0.472831, 0.212188, 0.855223,
		47.444172, 34.881329, 34.701393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.220257, 35.050739, 34.629974>,  <47.775154, 34.732796, 34.102737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.220257, 35.050739, 34.629974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.921204, 34.836010, 34.786366>,  <47.741772, 34.707172, 34.880199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.921204, 34.836010, 34.786366>,  <48.220257, 35.050739, 34.629974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.921204, 34.836010, 34.786366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660943, -0.658896, 0.359179,
		0.064795, 0.526946, 0.847425,
		-0.747633, -0.536827, 0.390974,
		47.696915, 34.674961, 34.903656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.192616, 34.905685, 44.149300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.803471, 34.885059, 44.059067>,  <32.569984, 34.872684, 44.004929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.803471, 34.885059, 44.059067>,  <33.192616, 34.905685, 44.149300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803471, 34.885059, 44.059067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230112, -0.112888, -0.966594,
		0.024380, -0.992269, 0.121691,
		-0.972858, -0.051568, -0.225581,
		32.511612, 34.869587, 43.991394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125996, 34.367531, 43.688148>,  <33.192616, 34.905685, 44.149300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125996, 34.367531, 43.688148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.823509, 34.620922, 43.622616>,  <32.642017, 34.772957, 43.583298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.823509, 34.620922, 43.622616>,  <33.125996, 34.367531, 43.688148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823509, 34.620922, 43.622616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248839, 0.046864, -0.967410,
		-0.605152, -0.772343, -0.193073,
		-0.756221, 0.633475, -0.163829,
		32.596642, 34.810963, 43.573467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727283, 34.061577, 43.130917>,  <33.125996, 34.367531, 43.688148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727283, 34.061577, 43.130917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667313, 34.456089, 43.158562>,  <32.631332, 34.692795, 43.175148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667313, 34.456089, 43.158562>,  <32.727283, 34.061577, 43.130917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667313, 34.456089, 43.158562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231891, 0.103030, -0.967270,
		-0.961119, -0.128992, -0.244156,
		-0.149925, 0.986279, 0.069112,
		32.622334, 34.751972, 43.179295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332859, 34.211784, 42.541965>,  <32.727283, 34.061577, 43.130917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332859, 34.211784, 42.541965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.478523, 34.569580, 42.645721>,  <32.565922, 34.784256, 42.707973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.478523, 34.569580, 42.645721>,  <32.332859, 34.211784, 42.541965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478523, 34.569580, 42.645721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345610, 0.128835, -0.929492,
		-0.864836, 0.428130, -0.262227,
		0.364159, 0.894487, 0.259387,
		32.587772, 34.837925, 42.723537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123325, 34.666698, 42.007553>,  <32.332859, 34.211784, 42.541965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123325, 34.666698, 42.007553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.422298, 34.885036, 42.159027>,  <32.601681, 35.016037, 42.249912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.422298, 34.885036, 42.159027>,  <32.123325, 34.666698, 42.007553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422298, 34.885036, 42.159027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341271, 0.173581, -0.923799,
		-0.569981, 0.819710, -0.056540,
		0.747433, 0.545843, 0.378681,
		32.646530, 35.048790, 42.272633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128227, 35.251286, 41.590134>,  <32.123325, 34.666698, 42.007553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128227, 35.251286, 41.590134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.487698, 35.228676, 41.764118>,  <32.703381, 35.215111, 41.868507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.487698, 35.228676, 41.764118>,  <32.128227, 35.251286, 41.590134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487698, 35.228676, 41.764118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432498, 0.279315, -0.857280,
		-0.073031, 0.958534, 0.275462,
		0.898672, -0.056529, 0.434963,
		32.757298, 35.211716, 41.894608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390034, 35.793976, 41.340733>,  <32.128227, 35.251286, 41.590134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390034, 35.793976, 41.340733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.711113, 35.590855, 41.465832>,  <32.903759, 35.468983, 41.540894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.711113, 35.590855, 41.465832>,  <32.390034, 35.793976, 41.340733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711113, 35.590855, 41.465832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490074, 0.262790, -0.831125,
		0.339860, 0.820413, 0.459802,
		0.802697, -0.507803, 0.312751,
		32.951923, 35.438515, 41.559658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960602, 36.033855, 40.988903>,  <32.390034, 35.793976, 41.340733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960602, 36.033855, 40.988903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.179092, 35.722778, 41.113373>,  <33.310188, 35.536133, 41.188057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.179092, 35.722778, 41.113373>,  <32.960602, 36.033855, 40.988903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179092, 35.722778, 41.113373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613670, 0.118685, -0.780591,
		0.570127, 0.617340, 0.542075,
		0.546227, -0.777692, 0.311178,
		33.342960, 35.489471, 41.206726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664619, 36.223816, 41.154827>,  <32.960602, 36.033855, 40.988903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664619, 36.223816, 41.154827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.691544, 35.826786, 41.114285>,  <33.707699, 35.588570, 41.089958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.691544, 35.826786, 41.114285>,  <33.664619, 36.223816, 41.154827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691544, 35.826786, 41.114285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796891, 0.114606, -0.593152,
		0.600361, -0.040842, 0.798685,
		0.067309, -0.992571, -0.101352,
		33.711735, 35.529015, 41.083878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355320, 36.003685, 41.094887>,  <33.664619, 36.223816, 41.154827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355320, 36.003685, 41.094887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156872, 35.707546, 40.913452>,  <34.037804, 35.529861, 40.804592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156872, 35.707546, 40.913452>,  <34.355320, 36.003685, 41.094887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156872, 35.707546, 40.913452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710009, -0.045249, -0.702738,
		0.499748, -0.670696, 0.548105,
		-0.496124, -0.740351, -0.453587,
		34.008034, 35.485439, 40.777374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878052, 35.547241, 41.047390>,  <34.355320, 36.003685, 41.094887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878052, 35.547241, 41.047390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.597866, 35.513943, 40.763863>,  <34.429756, 35.493965, 40.593746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.597866, 35.513943, 40.763863>,  <34.878052, 35.547241, 41.047390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597866, 35.513943, 40.763863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682555, 0.212021, -0.699404,
		0.208504, -0.973714, -0.091695,
		-0.700461, -0.083241, -0.708820,
		34.387730, 35.488972, 40.551216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155865, 35.088017, 40.626400>,  <34.878052, 35.547241, 41.047390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155865, 35.088017, 40.626400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868599, 35.272160, 40.417664>,  <34.696239, 35.382645, 40.292423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868599, 35.272160, 40.417664>,  <35.155865, 35.088017, 40.626400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868599, 35.272160, 40.417664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592225, 0.010565, -0.805703,
		-0.365397, -0.887671, -0.280222,
		-0.718160, 0.460356, -0.521841,
		34.653152, 35.410267, 40.261112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129704, 34.789532, 39.932102>,  <35.155865, 35.088017, 40.626400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129704, 34.789532, 39.932102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924038, 35.129143, 39.883461>,  <34.800636, 35.332909, 39.854275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924038, 35.129143, 39.883461>,  <35.129704, 34.789532, 39.932102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924038, 35.129143, 39.883461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509426, 0.188242, -0.839672,
		-0.690012, -0.493682, -0.529304,
		-0.514168, 0.849025, -0.121606,
		34.769787, 35.383850, 39.846981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895042, 34.751068, 39.172073>,  <35.129704, 34.789532, 39.932102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895042, 34.751068, 39.172073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875900, 35.135174, 39.282051>,  <34.864414, 35.365639, 39.348038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875900, 35.135174, 39.282051>,  <34.895042, 34.751068, 39.172073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875900, 35.135174, 39.282051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590039, 0.249278, -0.767929,
		-0.805955, 0.125482, -0.578524,
		-0.047852, 0.960268, 0.274946,
		34.861546, 35.423256, 39.364536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700119, 35.248928, 38.594803>,  <34.895042, 34.751068, 39.172073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700119, 35.248928, 38.594803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916187, 35.478584, 38.840919>,  <35.045826, 35.616379, 38.988590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916187, 35.478584, 38.840919>,  <34.700119, 35.248928, 38.594803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916187, 35.478584, 38.840919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637715, 0.197815, -0.744439,
		-0.549127, 0.794501, -0.259285,
		0.540167, 0.574141, 0.615290,
		35.078236, 35.650826, 39.025505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739086, 35.935738, 38.256592>,  <34.700119, 35.248928, 38.594803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739086, 35.935738, 38.256592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039127, 35.918259, 38.520542>,  <35.219151, 35.907772, 38.678913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039127, 35.918259, 38.520542>,  <34.739086, 35.935738, 38.256592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039127, 35.918259, 38.520542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632207, 0.340187, -0.696123,
		-0.194065, 0.939342, 0.282799,
		0.750102, -0.043694, 0.659877,
		35.264156, 35.905151, 38.718506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176113, 36.541725, 38.065147>,  <34.739086, 35.935738, 38.256592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176113, 36.541725, 38.065147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.433952, 36.359093, 38.310429>,  <35.588657, 36.249512, 38.457600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.433952, 36.359093, 38.310429>,  <35.176113, 36.541725, 38.065147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433952, 36.359093, 38.310429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754071, 0.247556, -0.608352,
		0.125961, 0.854545, 0.503872,
		0.644601, -0.456584, 0.613206,
		35.627331, 36.222118, 38.494389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639042, 37.006939, 38.173180>,  <35.176113, 36.541725, 38.065147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639042, 37.006939, 38.173180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830624, 36.665344, 38.254478>,  <35.945572, 36.460388, 38.303257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830624, 36.665344, 38.254478>,  <35.639042, 37.006939, 38.173180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830624, 36.665344, 38.254478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809350, 0.339933, -0.478955,
		0.339933, 0.393893, 0.853987,
		0.478955, -0.853987, 0.203243,
		35.974312, 36.409149, 38.315453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220974, 37.242157, 38.382965>,  <35.639042, 37.006939, 38.173180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220974, 37.242157, 38.382965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.301548, 36.867184, 38.269375>,  <36.349892, 36.642200, 38.201221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.301548, 36.867184, 38.269375>,  <36.220974, 37.242157, 38.382965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301548, 36.867184, 38.269375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861170, 0.307627, -0.404663,
		0.466703, -0.163035, 0.869257,
		0.201433, -0.937435, -0.283971,
		36.361977, 36.585953, 38.184185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929523, 37.124710, 38.565186>,  <36.220974, 37.242157, 38.382965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929523, 37.124710, 38.565186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847507, 36.855003, 38.281406>,  <36.798298, 36.693180, 38.111137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847507, 36.855003, 38.281406>,  <36.929523, 37.124710, 38.565186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847507, 36.855003, 38.281406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830264, 0.264016, -0.490874,
		0.518288, -0.689679, 0.505689,
		-0.205035, -0.674269, -0.709452,
		36.785995, 36.652721, 38.068569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621807, 36.736660, 38.409832>,  <36.929523, 37.124710, 38.565186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621807, 36.736660, 38.409832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368408, 36.693512, 38.103355>,  <37.216370, 36.667622, 37.919468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368408, 36.693512, 38.103355>,  <37.621807, 36.736660, 38.409832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368408, 36.693512, 38.103355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752547, 0.144311, -0.642532,
		0.179880, -0.983635, -0.010242,
		-0.633496, -0.107871, -0.766190,
		37.178360, 36.661148, 37.873497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957272, 36.235477, 37.943657>,  <37.621807, 36.736660, 38.409832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957272, 36.235477, 37.943657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676430, 36.423698, 37.729881>,  <37.507923, 36.536629, 37.601616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676430, 36.423698, 37.729881>,  <37.957272, 36.235477, 37.943657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676430, 36.423698, 37.729881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703466, 0.342017, -0.623025,
		-0.110376, -0.813392, -0.571149,
		-0.702106, 0.470551, -0.534443,
		37.465797, 36.564865, 37.569550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467957, 36.712498, 38.266068>,  <37.957272, 36.235477, 37.943657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467957, 36.712498, 38.266068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854412, 36.643330, 38.342674>,  <39.086285, 36.601830, 38.388638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854412, 36.643330, 38.342674>,  <38.467957, 36.712498, 38.266068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854412, 36.643330, 38.342674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229678, -0.238066, 0.943702,
		-0.117596, -0.955731, -0.269721,
		0.966136, -0.172924, 0.191515,
		39.144253, 36.591454, 38.400127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421455, 36.169044, 38.545376>,  <38.467957, 36.712498, 38.266068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421455, 36.169044, 38.545376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768616, 36.318283, 38.676556>,  <38.976910, 36.407825, 38.755264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768616, 36.318283, 38.676556>,  <38.421455, 36.169044, 38.545376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768616, 36.318283, 38.676556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259607, -0.222182, 0.939808,
		0.423505, -0.900796, -0.095972,
		0.867899, 0.373098, 0.327948,
		39.028984, 36.430214, 38.774940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729271, 35.644249, 39.045254>,  <38.421455, 36.169044, 38.545376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729271, 35.644249, 39.045254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.912842, 35.986755, 39.140076>,  <39.022984, 36.192257, 39.196968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.912842, 35.986755, 39.140076>,  <38.729271, 35.644249, 39.045254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912842, 35.986755, 39.140076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206964, -0.156442, 0.965760,
		0.864031, -0.492278, 0.105420,
		0.458930, 0.856264, 0.237054,
		39.050522, 36.243633, 39.211193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183052, 35.491459, 39.607918>,  <38.729271, 35.644249, 39.045254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183052, 35.491459, 39.607918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130459, 35.887806, 39.619884>,  <39.098904, 36.125614, 39.627064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130459, 35.887806, 39.619884>,  <39.183052, 35.491459, 39.607918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130459, 35.887806, 39.619884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090214, -0.042011, 0.995036,
		0.987205, 0.128129, 0.094914,
		-0.131481, 0.990867, 0.029914,
		39.091015, 36.185066, 39.628860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570198, 35.746647, 40.166008>,  <39.183052, 35.491459, 39.607918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570198, 35.746647, 40.166008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291702, 36.024876, 40.095100>,  <39.124603, 36.191814, 40.052555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291702, 36.024876, 40.095100>,  <39.570198, 35.746647, 40.166008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291702, 36.024876, 40.095100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327964, -0.088583, 0.940528,
		0.638505, 0.712971, 0.289799,
		-0.696240, 0.695576, -0.177268,
		39.082829, 36.233547, 40.041920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547329, 36.119423, 40.793140>,  <39.570198, 35.746647, 40.166008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547329, 36.119423, 40.793140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.189514, 36.230450, 40.652996>,  <38.974823, 36.297066, 40.568909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.189514, 36.230450, 40.652996>,  <39.547329, 36.119423, 40.793140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189514, 36.230450, 40.652996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358367, 0.023121, 0.933294,
		0.267154, 0.960428, 0.078789,
		-0.894540, 0.277569, -0.350362,
		38.921150, 36.313721, 40.547886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379135, 36.538925, 41.294579>,  <39.547329, 36.119423, 40.793140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379135, 36.538925, 41.294579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049316, 36.444778, 41.088772>,  <38.851425, 36.388290, 40.965290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049316, 36.444778, 41.088772>,  <39.379135, 36.538925, 41.294579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049316, 36.444778, 41.088772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546307, 0.094591, 0.832227,
		-0.147209, 0.967293, -0.206577,
		-0.824548, -0.235366, -0.514514,
		38.801952, 36.374168, 40.934418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767479, 37.076103, 41.464138>,  <39.379135, 36.538925, 41.294579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767479, 37.076103, 41.464138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598850, 36.730522, 41.353966>,  <38.497673, 36.523174, 41.287861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598850, 36.730522, 41.353966>,  <38.767479, 37.076103, 41.464138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598850, 36.730522, 41.353966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578431, 0.022287, 0.815426,
		-0.698353, 0.503077, -0.509134,
		-0.421569, -0.863954, -0.275431,
		38.472378, 36.471336, 41.271336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043728, 37.154285, 41.627018>,  <38.767479, 37.076103, 41.464138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043728, 37.154285, 41.627018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.074455, 36.759300, 41.571854>,  <38.092892, 36.522308, 41.538754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.074455, 36.759300, 41.571854>,  <38.043728, 37.154285, 41.627018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074455, 36.759300, 41.571854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571806, -0.156942, 0.805238,
		-0.816785, 0.017002, -0.576692,
		0.076816, -0.987462, -0.137910,
		38.097500, 36.463062, 41.530479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365170, 36.991009, 41.972324>,  <38.043728, 37.154285, 41.627018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365170, 36.991009, 41.972324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530949, 36.638081, 41.883102>,  <37.630417, 36.426323, 41.829571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530949, 36.638081, 41.883102>,  <37.365170, 36.991009, 41.972324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530949, 36.638081, 41.883102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745470, -0.469718, 0.472906,
		-0.522024, -0.029714, -0.852413,
		0.414445, -0.882317, -0.223053,
		37.655281, 36.373386, 41.816185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726639, 36.546577, 41.702263>,  <37.365170, 36.991009, 41.972324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726639, 36.546577, 41.702263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037640, 36.323193, 41.817924>,  <37.224239, 36.189159, 41.887321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037640, 36.323193, 41.817924>,  <36.726639, 36.546577, 41.702263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037640, 36.323193, 41.817924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627406, -0.657326, 0.417473,
		-0.043074, -0.506003, -0.861455,
		0.777500, -0.558465, 0.289156,
		37.270889, 36.155655, 41.904671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568184, 35.916416, 41.484264>,  <36.726639, 36.546577, 41.702263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568184, 35.916416, 41.484264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830524, 35.854977, 41.779903>,  <36.987926, 35.818115, 41.957287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830524, 35.854977, 41.779903>,  <36.568184, 35.916416, 41.484264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830524, 35.854977, 41.779903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651626, -0.609485, 0.451566,
		0.381112, -0.777776, -0.499818,
		0.655849, -0.153597, 0.739101,
		37.027279, 35.808899, 42.001633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575939, 35.236794, 41.632286>,  <36.568184, 35.916416, 41.484264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575939, 35.236794, 41.632286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701431, 35.428699, 41.960041>,  <36.776726, 35.543842, 42.156693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701431, 35.428699, 41.960041>,  <36.575939, 35.236794, 41.632286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701431, 35.428699, 41.960041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646567, -0.524028, 0.554388,
		0.695358, -0.703719, 0.145795,
		0.313732, 0.479765, 0.819389,
		36.795551, 35.572628, 42.205856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927540, 34.750683, 42.080769>,  <36.575939, 35.236794, 41.632286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927540, 34.750683, 42.080769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775326, 35.059677, 42.284122>,  <36.683998, 35.245075, 42.406136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775326, 35.059677, 42.284122>,  <36.927540, 34.750683, 42.080769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775326, 35.059677, 42.284122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533539, -0.632415, 0.561593,
		0.755335, -0.057538, 0.652808,
		-0.380533, 0.772490, 0.508384,
		36.661167, 35.291424, 42.436638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665939, 34.405331, 42.681442>,  <36.927540, 34.750683, 42.080769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665939, 34.405331, 42.681442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.513496, 34.774399, 42.704906>,  <36.422031, 34.995838, 42.718987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.513496, 34.774399, 42.704906>,  <36.665939, 34.405331, 42.681442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513496, 34.774399, 42.704906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816112, -0.365553, 0.447586,
		0.434418, 0.122702, 0.892315,
		-0.381108, 0.922668, 0.058665,
		36.399162, 35.051201, 42.722507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522984, 34.456738, 43.371109>,  <36.665939, 34.405331, 42.681442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522984, 34.456738, 43.371109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297169, 34.760727, 43.242271>,  <36.161678, 34.943119, 43.164970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297169, 34.760727, 43.242271>,  <36.522984, 34.456738, 43.371109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297169, 34.760727, 43.242271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728885, -0.275888, 0.626588,
		0.387327, 0.588500, 0.709680,
		-0.564539, 0.759970, -0.322090,
		36.127808, 34.988716, 43.145645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170986, 34.615944, 43.948883>,  <36.522984, 34.456738, 43.371109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170986, 34.615944, 43.948883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952366, 34.782059, 43.658005>,  <35.821194, 34.881729, 43.483479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952366, 34.782059, 43.658005>,  <36.170986, 34.615944, 43.948883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952366, 34.782059, 43.658005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828475, -0.141526, 0.541848,
		0.122106, 0.898614, 0.421406,
		-0.546552, 0.415287, -0.727198,
		35.788399, 34.906647, 43.439846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766354, 35.295170, 44.203712>,  <36.170986, 34.615944, 43.948883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766354, 35.295170, 44.203712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589577, 35.105091, 43.899376>,  <35.483509, 34.991043, 43.716774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589577, 35.105091, 43.899376>,  <35.766354, 35.295170, 44.203712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589577, 35.105091, 43.899376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711545, -0.330781, 0.619910,
		-0.546249, 0.815336, -0.191936,
		-0.441946, -0.475196, -0.760837,
		35.456993, 34.962532, 43.671124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.072186, 35.387562, 44.302219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.096165, 35.072701, 44.056686>,  <35.110554, 34.883781, 43.909367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.096165, 35.072701, 44.056686>,  <35.072186, 35.387562, 44.302219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096165, 35.072701, 44.056686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684345, -0.480085, 0.548808,
		-0.726690, 0.387174, -0.567467,
		0.059948, -0.787156, -0.613833,
		35.114151, 34.836552, 43.872536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435623, 35.148327, 44.158710>,  <35.072186, 35.387562, 44.302219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435623, 35.148327, 44.158710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.606781, 34.795444, 44.080097>,  <34.709476, 34.583717, 44.032928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.606781, 34.795444, 44.080097>,  <34.435623, 35.148327, 44.158710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606781, 34.795444, 44.080097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598361, -0.439470, 0.669948,
		-0.677401, -0.169068, -0.715922,
		0.427892, -0.882203, -0.196534,
		34.735149, 34.530785, 44.021137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955040, 34.757233, 44.056953>,  <34.435623, 35.148327, 44.158710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955040, 34.757233, 44.056953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255146, 34.516750, 44.166977>,  <34.435207, 34.372459, 44.232990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255146, 34.516750, 44.166977>,  <33.955040, 34.757233, 44.056953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255146, 34.516750, 44.166977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618631, -0.491605, 0.612878,
		-0.233247, -0.629979, -0.740758,
		0.750261, -0.601208, 0.275059,
		34.480225, 34.336388, 44.249496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630077, 34.002079, 44.135860>,  <33.955040, 34.757233, 44.056953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630077, 34.002079, 44.135860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973408, 33.940022, 44.331497>,  <34.179405, 33.902786, 44.448879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973408, 33.940022, 44.331497>,  <33.630077, 34.002079, 44.135860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973408, 33.940022, 44.331497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477314, -0.591175, 0.650141,
		0.188273, -0.791482, -0.581472,
		0.858326, -0.155141, 0.489088,
		34.230907, 33.893478, 44.478222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629471, 33.379955, 44.183342>,  <33.630077, 34.002079, 44.135860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629471, 33.379955, 44.183342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873901, 33.516129, 44.469193>,  <34.020561, 33.597832, 44.640701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873901, 33.516129, 44.469193>,  <33.629471, 33.379955, 44.183342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873901, 33.516129, 44.469193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439508, -0.604924, 0.664003,
		0.658341, -0.719842, -0.220033,
		0.611080, 0.340434, 0.714622,
		34.057224, 33.618259, 44.683578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787067, 32.811363, 44.543850>,  <33.629471, 33.379955, 44.183342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787067, 32.811363, 44.543850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.868694, 33.108093, 44.799366>,  <33.917671, 33.286133, 44.952675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.868694, 33.108093, 44.799366>,  <33.787067, 32.811363, 44.543850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868694, 33.108093, 44.799366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467157, -0.499641, 0.729468,
		0.860303, -0.447275, 0.244589,
		0.204066, 0.741825, 0.638790,
		33.929913, 33.330639, 44.991005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136559, 32.526531, 45.105083>,  <33.787067, 32.811363, 44.543850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136559, 32.526531, 45.105083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.013721, 32.877674, 45.252083>,  <33.940022, 33.088360, 45.340282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.013721, 32.877674, 45.252083>,  <34.136559, 32.526531, 45.105083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013721, 32.877674, 45.252083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241306, -0.445363, 0.862220,
		0.920580, 0.176101, 0.348600,
		-0.307091, 0.877861, 0.367498,
		33.921593, 33.141033, 45.362331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290718, 32.440952, 45.751320>,  <34.136559, 32.526531, 45.105083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290718, 32.440952, 45.751320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011913, 32.727711, 45.757320>,  <33.844631, 32.899765, 45.760921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011913, 32.727711, 45.757320>,  <34.290718, 32.440952, 45.751320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011913, 32.727711, 45.757320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313119, -0.323129, 0.893053,
		0.645077, 0.617774, 0.449701,
		-0.697017, 0.716898, 0.015006,
		33.802807, 32.942780, 45.761822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350853, 32.718918, 46.471603>,  <34.290718, 32.440952, 45.751320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350853, 32.718918, 46.471603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983974, 32.820255, 46.348595>,  <33.763847, 32.881058, 46.274792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983974, 32.820255, 46.348595>,  <34.350853, 32.718918, 46.471603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983974, 32.820255, 46.348595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350132, -0.144133, 0.925545,
		0.190161, 0.956577, 0.220903,
		-0.917195, 0.253348, -0.307520,
		33.708817, 32.896259, 46.256340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169830, 33.085430, 46.994350>,  <34.350853, 32.718918, 46.471603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169830, 33.085430, 46.994350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829041, 32.964302, 46.823498>,  <33.624565, 32.891624, 46.720985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829041, 32.964302, 46.823498>,  <34.169830, 33.085430, 46.994350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829041, 32.964302, 46.823498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328443, -0.326207, 0.886405,
		-0.407753, 0.895482, 0.178461,
		-0.851975, -0.302820, -0.427127,
		33.573448, 32.873455, 46.695358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579987, 33.260422, 47.471100>,  <34.169830, 33.085430, 46.994350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579987, 33.260422, 47.471100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468235, 32.948658, 47.246792>,  <33.401184, 32.761600, 47.112206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468235, 32.948658, 47.246792>,  <33.579987, 33.260422, 47.471100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468235, 32.948658, 47.246792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481857, -0.391353, 0.784000,
		-0.830517, 0.489248, -0.266227,
		-0.279382, -0.779409, -0.560773,
		33.384422, 32.714836, 47.078560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899105, 33.208672, 47.658260>,  <33.579987, 33.260422, 47.471100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899105, 33.208672, 47.658260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.005875, 32.873348, 47.468109>,  <33.069935, 32.672153, 47.354019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.005875, 32.873348, 47.468109>,  <32.899105, 33.208672, 47.658260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005875, 32.873348, 47.468109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647890, -0.521267, 0.555446,
		-0.713437, 0.159734, -0.682271,
		0.266922, -0.838312, -0.475381,
		33.085953, 32.621857, 47.325497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264915, 32.893993, 47.564934>,  <32.899105, 33.208672, 47.658260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264915, 32.893993, 47.564934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531067, 32.596912, 47.534832>,  <32.690758, 32.418663, 47.516769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531067, 32.596912, 47.534832>,  <32.264915, 32.893993, 47.564934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531067, 32.596912, 47.534832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489968, -0.510546, 0.706594,
		-0.563216, -0.433274, -0.703606,
		0.665372, -0.742709, -0.075257,
		32.730679, 32.374100, 47.512257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831278, 32.274593, 47.623009>,  <32.264915, 32.893993, 47.564934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831278, 32.274593, 47.623009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.209301, 32.157307, 47.680824>,  <32.436115, 32.086933, 47.715515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.209301, 32.157307, 47.680824>,  <31.831278, 32.274593, 47.623009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209301, 32.157307, 47.680824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314429, -0.694323, 0.647341,
		-0.089452, -0.657222, -0.748370,
		0.945057, -0.293216, 0.144541,
		32.492817, 32.069344, 47.724186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802200, 31.528969, 47.607552>,  <31.831278, 32.274593, 47.623009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802200, 31.528969, 47.607552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.117043, 31.642967, 47.826363>,  <32.305950, 31.711367, 47.957649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.117043, 31.642967, 47.826363>,  <31.802200, 31.528969, 47.607552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117043, 31.642967, 47.826363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235926, -0.680315, 0.693909,
		0.569913, -0.675239, -0.468243,
		0.787107, 0.284997, 0.547027,
		32.353176, 31.728466, 47.990471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072723, 30.901794, 47.851421>,  <31.802200, 31.528969, 47.607552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072723, 30.901794, 47.851421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.257530, 31.160625, 48.094017>,  <32.368416, 31.315924, 48.239574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.257530, 31.160625, 48.094017>,  <32.072723, 30.901794, 47.851421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257530, 31.160625, 48.094017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245158, -0.564020, 0.788530,
		0.852312, -0.513002, -0.101953,
		0.462020, 0.647079, 0.606488,
		32.396137, 31.354750, 48.275963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604538, 30.552172, 48.281967>,  <32.072723, 30.901794, 47.851421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604538, 30.552172, 48.281967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.459309, 30.872168, 48.473045>,  <32.372169, 31.064165, 48.587692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.459309, 30.872168, 48.473045>,  <32.604538, 30.552172, 48.281967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459309, 30.872168, 48.473045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162893, -0.559281, 0.812817,
		0.917410, 0.217301, 0.333374,
		-0.363076, 0.799990, 0.477693,
		32.350388, 31.112165, 48.616352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030640, 30.593626, 48.984535>,  <32.604538, 30.552172, 48.281967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030640, 30.593626, 48.984535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668953, 30.764406, 48.980396>,  <32.451942, 30.866875, 48.977913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668953, 30.764406, 48.980396>,  <33.030640, 30.593626, 48.984535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668953, 30.764406, 48.980396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270639, -0.554086, 0.787238,
		0.330378, 0.714633, 0.616563,
		-0.904215, 0.426952, -0.010350,
		32.397690, 30.892492, 48.977291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901817, 30.733896, 49.674088>,  <33.030640, 30.593626, 48.984535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901817, 30.733896, 49.674088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534489, 30.755463, 49.517235>,  <32.314091, 30.768402, 49.423122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534489, 30.755463, 49.517235>,  <32.901817, 30.733896, 49.674088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534489, 30.755463, 49.517235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367151, -0.486227, 0.792959,
		-0.147912, 0.872168, 0.466311,
		-0.918326, 0.053918, -0.392136,
		32.258991, 30.771639, 49.399593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435341, 30.904463, 50.264507>,  <32.901817, 30.733896, 49.674088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435341, 30.904463, 50.264507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.168694, 30.797781, 49.986088>,  <32.008705, 30.733772, 49.819035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.168694, 30.797781, 49.986088>,  <32.435341, 30.904463, 50.264507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168694, 30.797781, 49.986088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487740, -0.550072, 0.677886,
		-0.563673, 0.791385, 0.236608,
		-0.666620, -0.266703, -0.696051,
		31.968708, 30.717770, 49.777271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817886, 30.985271, 50.603626>,  <32.435341, 30.904463, 50.264507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817886, 30.985271, 50.603626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753368, 30.725801, 50.306114>,  <31.714659, 30.570120, 50.127609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753368, 30.725801, 50.306114>,  <31.817886, 30.985271, 50.603626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753368, 30.725801, 50.306114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343789, -0.669509, 0.658458,
		-0.925091, 0.361907, -0.115021,
		-0.161293, -0.648676, -0.743777,
		31.704981, 30.531199, 50.082981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195505, 30.753891, 50.801033>,  <31.817886, 30.985271, 50.603626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195505, 30.753891, 50.801033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318165, 30.491228, 50.525421>,  <31.391760, 30.333630, 50.360054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318165, 30.491228, 50.525421>,  <31.195505, 30.753891, 50.801033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318165, 30.491228, 50.525421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228403, -0.753523, 0.616470,
		-0.924012, -0.031663, -0.381050,
		0.306649, -0.656658, -0.689033,
		31.410160, 30.294231, 50.318710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727882, 30.011774, 50.659733>,  <31.195505, 30.753891, 50.801033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727882, 30.011774, 50.659733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.118753, 29.989656, 50.577686>,  <31.353275, 29.976387, 50.528458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.118753, 29.989656, 50.577686>,  <30.727882, 30.011774, 50.659733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118753, 29.989656, 50.577686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062307, -0.848474, 0.525557,
		-0.203092, -0.526341, -0.825662,
		0.977175, -0.055292, -0.205113,
		31.411905, 29.973068, 50.516151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239248, 30.543125, 50.513447>,  <30.727882, 30.011774, 50.659733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239248, 30.543125, 50.513447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867506, 30.419825, 50.432175>,  <29.644461, 30.345844, 50.383411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867506, 30.419825, 50.432175>,  <30.239248, 30.543125, 50.513447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867506, 30.419825, 50.432175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009223, 0.569553, -0.821903,
		0.369073, -0.761966, -0.532160,
		-0.929355, -0.308250, -0.203179,
		29.588699, 30.327349, 50.371220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188793, 30.283863, 49.832905>,  <30.239248, 30.543125, 50.513447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188793, 30.283863, 49.832905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823662, 30.408545, 49.938423>,  <29.604584, 30.483355, 50.001736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823662, 30.408545, 49.938423>,  <30.188793, 30.283863, 49.832905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823662, 30.408545, 49.938423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061716, 0.533274, -0.843688,
		-0.403657, -0.786421, -0.467550,
		-0.912826, 0.311706, 0.263795,
		29.549814, 30.502056, 50.017563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719576, 30.198982, 49.240356>,  <30.188793, 30.283863, 49.832905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719576, 30.198982, 49.240356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.507219, 30.469782, 49.444248>,  <29.379805, 30.632261, 49.566582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.507219, 30.469782, 49.444248>,  <29.719576, 30.198982, 49.240356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507219, 30.469782, 49.444248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174428, 0.501319, -0.847499,
		-0.829295, -0.538841, -0.148058,
		-0.530891, 0.677001, 0.509730,
		29.347952, 30.672882, 49.597168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089064, 30.272673, 48.881474>,  <29.719576, 30.198982, 49.240356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089064, 30.272673, 48.881474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.150660, 30.594391, 49.111046>,  <29.187618, 30.787422, 49.248791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.150660, 30.594391, 49.111046>,  <29.089064, 30.272673, 48.881474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150660, 30.594391, 49.111046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093593, 0.590120, -0.801872,
		-0.983630, 0.069766, 0.166150,
		0.153991, 0.804295, 0.573930,
		29.196857, 30.835680, 49.283226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653465, 30.801315, 48.724705>,  <29.089064, 30.272673, 48.881474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653465, 30.801315, 48.724705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.941244, 31.021372, 48.894287>,  <29.113913, 31.153406, 48.996037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.941244, 31.021372, 48.894287>,  <28.653465, 30.801315, 48.724705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941244, 31.021372, 48.894287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004958, 0.606323, -0.795203,
		-0.694527, 0.574210, 0.433491,
		0.719449, 0.550141, 0.423955,
		29.157080, 31.186415, 49.021473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470301, 31.532288, 48.534977>,  <28.653465, 30.801315, 48.724705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470301, 31.532288, 48.534977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.855345, 31.538393, 48.643162>,  <29.086370, 31.542057, 48.708073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.855345, 31.538393, 48.643162>,  <28.470301, 31.532288, 48.534977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855345, 31.538393, 48.643162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221920, 0.528162, -0.819632,
		-0.155360, 0.849006, 0.505026,
		0.962608, 0.015263, 0.270467,
		29.144127, 31.542973, 48.724300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526323, 32.159122, 48.475914>,  <28.470301, 31.532288, 48.534977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526323, 32.159122, 48.475914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.896873, 32.008636, 48.469120>,  <29.119204, 31.918344, 48.465046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.896873, 32.008636, 48.469120>,  <28.526323, 32.159122, 48.475914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896873, 32.008636, 48.469120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219292, 0.575537, -0.787825,
		0.306167, 0.726098, 0.615665,
		0.926376, -0.376216, -0.016982,
		29.174786, 31.895771, 48.464024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971390, 32.671104, 48.279613>,  <28.526323, 32.159122, 48.475914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971390, 32.671104, 48.279613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.221323, 32.366100, 48.212486>,  <29.371283, 32.183098, 48.172211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.221323, 32.366100, 48.212486>,  <28.971390, 32.671104, 48.279613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221323, 32.366100, 48.212486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435004, 0.518480, -0.736172,
		0.648346, 0.386987, 0.655659,
		0.624835, -0.762509, -0.167813,
		29.408773, 32.137348, 48.162144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689898, 32.934509, 48.334930>,  <28.971390, 32.671104, 48.279613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689898, 32.934509, 48.334930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.728689, 32.594540, 48.127766>,  <29.751965, 32.390560, 48.003468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.728689, 32.594540, 48.127766>,  <29.689898, 32.934509, 48.334930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728689, 32.594540, 48.127766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609122, 0.462214, -0.644460,
		0.787125, -0.252970, 0.562530,
		0.096980, -0.849920, -0.517910,
		29.757784, 32.339565, 47.972393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385595, 32.980919, 48.154064>,  <29.689898, 32.934509, 48.334930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385595, 32.980919, 48.154064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218344, 32.738190, 47.883678>,  <30.117992, 32.592552, 47.721447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218344, 32.738190, 47.883678>,  <30.385595, 32.980919, 48.154064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218344, 32.738190, 47.883678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486981, 0.478428, -0.730723,
		0.766823, -0.634720, 0.095467,
		-0.418130, -0.606825, -0.675966,
		30.092905, 32.556141, 47.680889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930801, 32.656193, 47.832581>,  <30.385595, 32.980919, 48.154064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930801, 32.656193, 47.832581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.621790, 32.628078, 47.580147>,  <30.436384, 32.611210, 47.428688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.621790, 32.628078, 47.580147>,  <30.930801, 32.656193, 47.832581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621790, 32.628078, 47.580147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549270, 0.424696, -0.719678,
		0.318597, -0.902604, -0.289486,
		-0.772528, -0.070281, -0.631080,
		30.390032, 32.606995, 47.390823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263430, 32.510162, 47.263802>,  <30.930801, 32.656193, 47.832581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263430, 32.510162, 47.263802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.911816, 32.643093, 47.127064>,  <30.700848, 32.722851, 47.045021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.911816, 32.643093, 47.127064>,  <31.263430, 32.510162, 47.263802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911816, 32.643093, 47.127064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461275, 0.411583, -0.786018,
		-0.120513, -0.848623, -0.515088,
		-0.879035, 0.332323, -0.341848,
		30.648106, 32.742790, 47.024509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224388, 32.365925, 46.486347>,  <31.263430, 32.510162, 47.263802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224388, 32.365925, 46.486347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.970247, 32.662540, 46.572552>,  <30.817762, 32.840511, 46.624275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.970247, 32.662540, 46.572552>,  <31.224388, 32.365925, 46.486347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970247, 32.662540, 46.572552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220390, 0.441590, -0.869728,
		-0.740107, -0.505087, -0.443993,
		-0.635351, 0.741543, 0.215507,
		30.779642, 32.885002, 46.637203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769020, 32.519558, 45.827354>,  <31.224388, 32.365925, 46.486347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769020, 32.519558, 45.827354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753012, 32.842827, 46.062386>,  <30.743406, 33.036789, 46.203403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753012, 32.842827, 46.062386>,  <30.769020, 32.519558, 45.827354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753012, 32.842827, 46.062386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321231, 0.567238, -0.758321,
		-0.946155, 0.158401, -0.282311,
		-0.040018, 0.808177, 0.587579,
		30.741007, 33.085281, 46.238659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689720, 33.046272, 45.328732>,  <30.769020, 32.519558, 45.827354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689720, 33.046272, 45.328732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.823111, 33.243572, 45.650105>,  <30.903145, 33.361954, 45.842926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.823111, 33.243572, 45.650105>,  <30.689720, 33.046272, 45.328732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823111, 33.243572, 45.650105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523373, 0.611968, -0.592939,
		-0.784140, 0.618223, -0.054078,
		0.333475, 0.493250, 0.803430,
		30.923153, 33.391548, 45.891132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551186, 33.677635, 45.133373>,  <30.689720, 33.046272, 45.328732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551186, 33.677635, 45.133373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797190, 33.755100, 45.439121>,  <30.944792, 33.801579, 45.622570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797190, 33.755100, 45.439121>,  <30.551186, 33.677635, 45.133373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797190, 33.755100, 45.439121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381033, 0.775689, -0.503111,
		-0.690344, 0.600668, 0.403266,
		0.615011, 0.193661, 0.764367,
		30.981693, 33.813198, 45.668430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572531, 34.383575, 45.222267>,  <30.551186, 33.677635, 45.133373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572531, 34.383575, 45.222267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905077, 34.267185, 45.411652>,  <31.104605, 34.197350, 45.525284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905077, 34.267185, 45.411652>,  <30.572531, 34.383575, 45.222267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905077, 34.267185, 45.411652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497876, 0.768476, -0.401950,
		-0.246886, 0.569892, 0.783754,
		0.831365, -0.290976, 0.473461,
		31.154486, 34.179893, 45.553692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933302, 34.934116, 45.506905>,  <30.572531, 34.383575, 45.222267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933302, 34.934116, 45.506905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.203911, 34.645683, 45.447094>,  <31.366276, 34.472626, 45.411205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.203911, 34.645683, 45.447094>,  <30.933302, 34.934116, 45.506905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203911, 34.645683, 45.447094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555762, 0.633143, -0.538756,
		0.483161, 0.281377, 0.829085,
		0.676524, -0.721080, -0.149531,
		31.406868, 34.429359, 45.402233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558332, 35.358162, 45.525764>,  <30.933302, 34.934116, 45.506905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558332, 35.358162, 45.525764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.621038, 35.023937, 45.315144>,  <31.658663, 34.823402, 45.188770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.621038, 35.023937, 45.315144>,  <31.558332, 35.358162, 45.525764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621038, 35.023937, 45.315144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543083, 0.518235, -0.660676,
		0.824915, -0.182392, 0.535021,
		0.156765, -0.835563, -0.526554,
		31.668068, 34.773270, 45.157177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284969, 35.309326, 45.244987>,  <31.558332, 35.358162, 45.525764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284969, 35.309326, 45.244987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.093098, 35.056450, 45.001595>,  <31.977976, 34.904724, 44.855560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.093098, 35.056450, 45.001595>,  <32.284969, 35.309326, 45.244987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093098, 35.056450, 45.001595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500510, 0.372445, -0.781521,
		0.720694, -0.679426, 0.137765,
		-0.479676, -0.632190, -0.608478,
		31.949194, 34.866795, 44.819050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834206, 35.112679, 44.789017>,  <32.284969, 35.309326, 45.244987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834206, 35.112679, 44.789017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.509445, 35.004917, 44.581852>,  <32.314587, 34.940262, 44.457554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.509445, 35.004917, 44.581852>,  <32.834206, 35.112679, 44.789017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509445, 35.004917, 44.581852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498632, 0.141366, -0.855209,
		0.303613, -0.952595, 0.019559,
		-0.811902, -0.269406, -0.517914,
		32.265873, 34.924095, 44.426479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.243954, 40.183697, 30.454441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.852924, 40.126682, 30.516443>,  <41.618305, 40.092476, 30.553644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.852924, 40.126682, 30.516443>,  <42.243954, 40.183697, 30.454441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852924, 40.126682, 30.516443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199115, -0.386141, 0.900694,
		-0.068525, 0.911361, 0.405863,
		-0.977578, -0.142533, 0.155005,
		41.559650, 40.083923, 30.562944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091629, 40.306705, 31.119686>,  <42.243954, 40.183697, 30.454441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091629, 40.306705, 31.119686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.751877, 40.102657, 31.065535>,  <41.548027, 39.980228, 31.033045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.751877, 40.102657, 31.065535>,  <42.091629, 40.306705, 31.119686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751877, 40.102657, 31.065535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139067, -0.463755, 0.874981,
		-0.509129, 0.724366, 0.464846,
		-0.849381, -0.510123, -0.135376,
		41.497063, 39.949619, 31.024921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788452, 40.291580, 31.800219>,  <42.091629, 40.306705, 31.119686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788452, 40.291580, 31.800219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638683, 39.998386, 31.573050>,  <41.548820, 39.822472, 31.436749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638683, 39.998386, 31.573050>,  <41.788452, 40.291580, 31.800219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638683, 39.998386, 31.573050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086448, -0.637403, 0.765666,
		-0.923218, 0.237590, 0.302025,
		-0.374426, -0.732986, -0.567923,
		41.526356, 39.778492, 31.402672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478516, 39.914444, 32.286263>,  <41.788452, 40.291580, 31.800219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478516, 39.914444, 32.286263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.469997, 39.648205, 31.987862>,  <41.464886, 39.488461, 31.808821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.469997, 39.648205, 31.987862>,  <41.478516, 39.914444, 32.286263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469997, 39.648205, 31.987862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125121, -0.742083, 0.658527,
		-0.991913, -0.079321, 0.099080,
		-0.021291, -0.665598, -0.746007,
		41.463612, 39.448524, 31.764059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927177, 39.353088, 32.441185>,  <41.478516, 39.914444, 32.286263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927177, 39.353088, 32.441185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.192024, 39.184956, 32.193016>,  <41.350933, 39.084076, 32.044113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.192024, 39.184956, 32.193016>,  <40.927177, 39.353088, 32.441185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192024, 39.184956, 32.193016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195786, -0.702115, 0.684619,
		-0.723377, -0.574765, -0.382584,
		0.662113, -0.420333, -0.620425,
		41.390659, 39.058857, 32.006889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696712, 38.666985, 32.395603>,  <40.927177, 39.353088, 32.441185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696712, 38.666985, 32.395603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.077030, 38.666016, 32.271675>,  <41.305222, 38.665436, 32.197319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.077030, 38.666016, 32.271675>,  <40.696712, 38.666985, 32.395603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077030, 38.666016, 32.271675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180490, -0.808441, 0.560221,
		-0.251829, -0.588573, -0.768221,
		0.950792, -0.002423, -0.309821,
		41.362267, 38.665287, 32.178730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916435, 37.914326, 32.211987>,  <40.696712, 38.666985, 32.395603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916435, 37.914326, 32.211987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254143, 38.118099, 32.278545>,  <41.456768, 38.240364, 32.318481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254143, 38.118099, 32.278545>,  <40.916435, 37.914326, 32.211987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254143, 38.118099, 32.278545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308183, -0.715520, 0.626940,
		0.438441, -0.478027, -0.761091,
		0.844270, 0.509432, 0.166394,
		41.507423, 38.270927, 32.328465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241314, 37.471996, 32.581169>,  <40.916435, 37.914326, 32.211987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241314, 37.471996, 32.581169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.508003, 37.769073, 32.606106>,  <41.668018, 37.947319, 32.621067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.508003, 37.769073, 32.606106>,  <41.241314, 37.471996, 32.581169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508003, 37.769073, 32.606106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503207, -0.510276, 0.697425,
		0.549786, -0.433617, -0.713941,
		0.666722, 0.742694, 0.062344,
		41.708019, 37.991882, 32.624809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892284, 37.177940, 32.460865>,  <41.241314, 37.471996, 32.581169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892284, 37.177940, 32.460865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.935528, 37.517780, 32.667358>,  <41.961475, 37.721684, 32.791252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.935528, 37.517780, 32.667358>,  <41.892284, 37.177940, 32.460865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935528, 37.517780, 32.667358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532090, -0.488087, 0.691846,
		0.839757, 0.199884, -0.504832,
		0.108113, 0.849599, 0.516231,
		41.967960, 37.772659, 32.822227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657921, 37.368118, 32.686649>,  <41.892284, 37.177940, 32.460865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657921, 37.368118, 32.686649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.408066, 37.544807, 32.944241>,  <42.258152, 37.650822, 33.098797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.408066, 37.544807, 32.944241>,  <42.657921, 37.368118, 32.686649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408066, 37.544807, 32.944241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543056, -0.346895, 0.764692,
		0.561177, 0.827370, -0.023200,
		-0.624636, 0.441727, 0.643978,
		42.220676, 37.677326, 33.137436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157440, 37.657345, 33.248386>,  <42.657921, 37.368118, 32.686649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157440, 37.657345, 33.248386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.792847, 37.631943, 33.410946>,  <42.574089, 37.616703, 33.508480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.792847, 37.631943, 33.410946>,  <43.157440, 37.657345, 33.248386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792847, 37.631943, 33.410946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406015, -0.297169, 0.864200,
		0.065891, 0.952711, 0.296649,
		-0.911488, -0.063501, 0.406396,
		42.519402, 37.612892, 33.532864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174095, 37.999748, 33.944698>,  <43.157440, 37.657345, 33.248386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174095, 37.999748, 33.944698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.861866, 37.752445, 33.981510>,  <42.674530, 37.604065, 34.003597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.861866, 37.752445, 33.981510>,  <43.174095, 37.999748, 33.944698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861866, 37.752445, 33.981510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226313, -0.142301, 0.963604,
		-0.582656, 0.772990, 0.250995,
		-0.780573, -0.618253, 0.092025,
		42.627693, 37.566971, 34.009117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854328, 38.204708, 34.613136>,  <43.174095, 37.999748, 33.944698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854328, 38.204708, 34.613136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.701210, 37.844833, 34.529205>,  <42.609341, 37.628906, 34.478848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.701210, 37.844833, 34.529205>,  <42.854328, 38.204708, 34.613136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701210, 37.844833, 34.529205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125809, -0.275778, 0.952953,
		-0.915227, 0.338386, 0.218755,
		-0.382793, -0.899690, -0.209827,
		42.586372, 37.574928, 34.466259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347218, 38.124634, 35.083305>,  <42.854328, 38.204708, 34.613136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347218, 38.124634, 35.083305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457062, 37.763195, 34.951786>,  <42.522968, 37.546333, 34.872875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457062, 37.763195, 34.951786>,  <42.347218, 38.124634, 35.083305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457062, 37.763195, 34.951786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322219, -0.235701, 0.916853,
		-0.905961, -0.357722, 0.226429,
		0.274609, -0.903593, -0.328801,
		42.539444, 37.492119, 34.853146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173058, 37.696869, 35.785057>,  <42.347218, 38.124634, 35.083305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173058, 37.696869, 35.785057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.435570, 37.496548, 35.559315>,  <42.593075, 37.376354, 35.423870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.435570, 37.496548, 35.559315>,  <42.173058, 37.696869, 35.785057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435570, 37.496548, 35.559315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372094, -0.435867, 0.819491,
		-0.656387, -0.747807, -0.099704,
		0.656279, -0.500805, -0.564352,
		42.632454, 37.346306, 35.390011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144077, 37.015297, 36.054947>,  <42.173058, 37.696869, 35.785057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144077, 37.015297, 36.054947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483143, 37.035316, 35.843681>,  <42.686581, 37.047329, 35.716923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483143, 37.035316, 35.843681>,  <42.144077, 37.015297, 36.054947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483143, 37.035316, 35.843681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489834, -0.456230, 0.742911,
		-0.203785, -0.888453, -0.411245,
		0.847664, 0.050048, -0.528168,
		42.737442, 37.050331, 35.685230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467705, 36.364376, 36.235355>,  <42.144077, 37.015297, 36.054947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467705, 36.364376, 36.235355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.748234, 36.615669, 36.100609>,  <42.916550, 36.766445, 36.019760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.748234, 36.615669, 36.100609>,  <42.467705, 36.364376, 36.235355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748234, 36.615669, 36.100609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615605, -0.295494, 0.730558,
		0.359416, -0.719731, -0.593976,
		0.701321, 0.628229, -0.336864,
		42.958630, 36.804138, 35.999550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080166, 36.071743, 36.539833>,  <42.467705, 36.364376, 36.235355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080166, 36.071743, 36.539833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227119, 36.418781, 36.405785>,  <43.315292, 36.627003, 36.325356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227119, 36.418781, 36.405785>,  <43.080166, 36.071743, 36.539833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227119, 36.418781, 36.405785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842269, -0.157527, 0.515527,
		0.394478, -0.471661, -0.788621,
		0.367384, 0.867595, -0.335125,
		43.337334, 36.679058, 36.305248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758484, 35.928013, 36.208466>,  <43.080166, 36.071743, 36.539833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758484, 35.928013, 36.208466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.743378, 36.315029, 36.308411>,  <43.734314, 36.547241, 36.368378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.743378, 36.315029, 36.308411>,  <43.758484, 35.928013, 36.208466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743378, 36.315029, 36.308411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808564, -0.117344, 0.576588,
		0.587195, 0.223802, -0.777891,
		-0.037761, 0.967545, 0.249862,
		43.732048, 36.605293, 36.383369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450275, 36.161144, 36.259991>,  <43.758484, 35.928013, 36.208466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450275, 36.161144, 36.259991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.274483, 36.432980, 36.494946>,  <44.169006, 36.596081, 36.635918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.274483, 36.432980, 36.494946>,  <44.450275, 36.161144, 36.259991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274483, 36.432980, 36.494946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752594, -0.078406, 0.653801,
		0.490368, 0.729395, -0.476993,
		-0.439480, 0.679585, 0.587386,
		44.142639, 36.636856, 36.671162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938229, 36.543137, 36.388737>,  <44.450275, 36.161144, 36.259991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938229, 36.543137, 36.388737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675064, 36.621212, 36.679680>,  <44.517166, 36.668056, 36.854244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675064, 36.621212, 36.679680>,  <44.938229, 36.543137, 36.388737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675064, 36.621212, 36.679680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734466, -0.047180, 0.677003,
		0.166462, 0.979630, -0.112321,
		-0.657913, 0.195192, 0.727359,
		44.477692, 36.679768, 36.897888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256496, 37.081688, 36.903305>,  <44.938229, 36.543137, 36.388737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256496, 37.081688, 36.903305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.009346, 36.832100, 37.094673>,  <44.861053, 36.682346, 37.209496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.009346, 36.832100, 37.094673>,  <45.256496, 37.081688, 36.903305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.009346, 36.832100, 37.094673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699013, -0.157324, 0.697589,
		-0.360006, 0.765449, 0.533369,
		-0.617881, -0.623968, 0.478421,
		44.823982, 36.644909, 37.238201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814663, 36.724514, 37.256527>,  <45.256496, 37.081688, 36.903305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814663, 36.724514, 37.256527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.905483, 36.458927, 36.971546>,  <45.959976, 36.299576, 36.800556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.905483, 36.458927, 36.971546>,  <45.814663, 36.724514, 37.256527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905483, 36.458927, 36.971546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208314, 0.681518, -0.701526,
		0.951343, 0.307697, 0.016426,
		0.227052, -0.663970, -0.712455,
		45.973598, 36.259735, 36.757809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228725, 37.060310, 36.807774>,  <45.814663, 36.724514, 37.256527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228725, 37.060310, 36.807774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.109795, 36.754536, 36.578957>,  <46.038437, 36.571072, 36.441666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.109795, 36.754536, 36.578957>,  <46.228725, 37.060310, 36.807774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109795, 36.754536, 36.578957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008318, 0.601187, -0.799065,
		0.954740, -0.232823, -0.185106,
		-0.297324, -0.764439, -0.572041,
		46.020596, 36.525204, 36.407345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.619728, 37.059681, 36.218933>,  <46.228725, 37.060310, 36.807774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.619728, 37.059681, 36.218933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.305573, 36.852566, 36.083256>,  <46.117081, 36.728294, 36.001850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.305573, 36.852566, 36.083256>,  <46.619728, 37.059681, 36.218933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.305573, 36.852566, 36.083256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090700, 0.445797, -0.890527,
		0.612320, -0.730176, -0.303161,
		-0.785390, -0.517791, -0.339198,
		46.069954, 36.697227, 35.981495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721970, 36.781998, 35.523399>,  <46.619728, 37.059681, 36.218933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721970, 36.781998, 35.523399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322819, 36.782688, 35.549412>,  <46.083328, 36.783100, 35.565018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322819, 36.782688, 35.549412>,  <46.721970, 36.781998, 35.523399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322819, 36.782688, 35.549412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060075, 0.359139, -0.931349,
		-0.024960, -0.933283, -0.358275,
		-0.997882, 0.001723, 0.065031,
		46.023453, 36.783203, 35.568920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471230, 36.458679, 34.906628>,  <46.721970, 36.781998, 35.523399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471230, 36.458679, 34.906628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.165123, 36.678436, 35.040813>,  <45.981461, 36.810291, 35.121323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.165123, 36.678436, 35.040813>,  <46.471230, 36.458679, 34.906628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.165123, 36.678436, 35.040813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094231, 0.419911, -0.902660,
		-0.636778, -0.722388, -0.269575,
		-0.765268, 0.549392, 0.335461,
		45.935543, 36.843254, 35.141453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921955, 36.393650, 34.402939>,  <46.471230, 36.458679, 34.906628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921955, 36.393650, 34.402939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.790859, 36.707104, 34.614033>,  <45.712200, 36.895176, 34.740688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.790859, 36.707104, 34.614033>,  <45.921955, 36.393650, 34.402939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790859, 36.707104, 34.614033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445009, 0.364696, -0.817902,
		-0.833398, -0.502908, 0.229197,
		-0.327742, 0.783633, 0.527735,
		45.692535, 36.942192, 34.772354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180878, 36.470860, 34.099407>,  <45.921955, 36.393650, 34.402939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180878, 36.470860, 34.099407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273094, 36.813828, 34.283440>,  <45.328426, 37.019608, 34.393860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273094, 36.813828, 34.283440>,  <45.180878, 36.470860, 34.099407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273094, 36.813828, 34.283440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464212, 0.512458, -0.722423,
		-0.855194, -0.047025, 0.516170,
		0.230543, 0.857424, 0.460081,
		45.342258, 37.071056, 34.421463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504814, 36.831688, 34.219604>,  <45.180878, 36.470860, 34.099407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504814, 36.831688, 34.219604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.808964, 37.091476, 34.217670>,  <44.991451, 37.247349, 34.216511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.808964, 37.091476, 34.217670>,  <44.504814, 36.831688, 34.219604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808964, 37.091476, 34.217670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512581, 0.595502, -0.618577,
		-0.398867, 0.472828, 0.785709,
		0.760372, 0.649470, -0.004837,
		45.037075, 37.286316, 34.216221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138828, 37.433422, 34.227615>,  <44.504814, 36.831688, 34.219604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138828, 37.433422, 34.227615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.510002, 37.505810, 34.097275>,  <44.732708, 37.549244, 34.019070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.510002, 37.505810, 34.097275>,  <44.138828, 37.433422, 34.227615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510002, 37.505810, 34.097275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372708, 0.460477, -0.805636,
		0.004249, 0.869028, 0.494744,
		0.927939, 0.180972, -0.325851,
		44.788383, 37.560101, 33.999519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069916, 38.130875, 33.957024>,  <44.138828, 37.433422, 34.227615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069916, 38.130875, 33.957024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413639, 37.970631, 33.829838>,  <44.619873, 37.874485, 33.753529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413639, 37.970631, 33.829838>,  <44.069916, 38.130875, 33.957024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413639, 37.970631, 33.829838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102584, 0.474047, -0.874503,
		0.501062, 0.784087, 0.366257,
		0.859310, -0.400608, -0.317961,
		44.671432, 37.850449, 33.734451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380787, 38.683716, 33.852829>,  <44.069916, 38.130875, 33.957024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380787, 38.683716, 33.852829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.522530, 38.402779, 33.605881>,  <44.607574, 38.234219, 33.457710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.522530, 38.402779, 33.605881>,  <44.380787, 38.683716, 33.852829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522530, 38.402779, 33.605881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334539, 0.521301, -0.785066,
		0.873219, 0.484732, -0.050231,
		0.354361, -0.702339, -0.617372,
		44.628838, 38.192078, 33.420670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889057, 38.976124, 33.445343>,  <44.380787, 38.683716, 33.852829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889057, 38.976124, 33.445343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.764488, 38.663082, 33.229736>,  <44.689747, 38.475258, 33.100372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.764488, 38.663082, 33.229736>,  <44.889057, 38.976124, 33.445343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764488, 38.663082, 33.229736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144696, 0.599665, -0.787060,
		0.939191, -0.167113, -0.299988,
		-0.311421, -0.782607, -0.539020,
		44.671062, 38.428299, 33.068031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161068, 39.117504, 32.777397>,  <44.889057, 38.976124, 33.445343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161068, 39.117504, 32.777397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870415, 38.848633, 32.720585>,  <44.696022, 38.687309, 32.686497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870415, 38.848633, 32.720585>,  <45.161068, 39.117504, 32.777397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870415, 38.848633, 32.720585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305907, 0.501669, -0.809166,
		0.615161, -0.544518, -0.570155,
		-0.726634, -0.672182, -0.142035,
		44.652424, 38.646976, 32.677975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276234, 38.916759, 32.124886>,  <45.161068, 39.117504, 32.777397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276234, 38.916759, 32.124886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898857, 38.803833, 32.194427>,  <44.672432, 38.736076, 32.236153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898857, 38.803833, 32.194427>,  <45.276234, 38.916759, 32.124886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898857, 38.803833, 32.194427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300347, 0.505642, -0.808775,
		0.140419, -0.815246, -0.561833,
		-0.943437, -0.282313, 0.173855,
		44.615826, 38.719139, 32.246586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.073383, 38.764904, 31.499014>,  <45.276234, 38.916759, 32.124886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.073383, 38.764904, 31.499014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.735695, 38.796021, 31.711140>,  <44.533081, 38.814690, 31.838415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.735695, 38.796021, 31.711140>,  <45.073383, 38.764904, 31.499014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735695, 38.796021, 31.711140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451456, 0.430128, -0.781778,
		-0.288917, -0.899410, -0.328007,
		-0.844224, 0.077789, 0.530316,
		44.482430, 38.819359, 31.870234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457710, 38.491982, 31.061167>,  <45.073383, 38.764904, 31.499014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457710, 38.491982, 31.061167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.308598, 38.735142, 31.341593>,  <44.219131, 38.881039, 31.509850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.308598, 38.735142, 31.341593>,  <44.457710, 38.491982, 31.061167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308598, 38.735142, 31.341593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291742, 0.640429, -0.710449,
		-0.880863, -0.469373, -0.061391,
		-0.372782, 0.607898, 0.701066,
		44.196762, 38.917511, 31.551912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823162, 38.701992, 30.796082>,  <44.457710, 38.491982, 31.061167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823162, 38.701992, 30.796082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892872, 38.996231, 31.057928>,  <43.934700, 39.172775, 31.215036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892872, 38.996231, 31.057928>,  <43.823162, 38.701992, 30.796082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892872, 38.996231, 31.057928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157773, 0.677061, -0.718816,
		-0.971975, 0.021992, 0.234054,
		0.174277, 0.735598, 0.654616,
		43.945156, 39.216911, 31.254313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317543, 39.101910, 30.754347>,  <43.823162, 38.701992, 30.796082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317543, 39.101910, 30.754347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609478, 39.333469, 30.899790>,  <43.784637, 39.472404, 30.987055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609478, 39.333469, 30.899790>,  <43.317543, 39.101910, 30.754347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609478, 39.333469, 30.899790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169760, 0.668699, -0.723894,
		-0.662206, 0.466600, 0.586317,
		0.729838, 0.578901, 0.363607,
		43.828430, 39.507141, 31.008871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178127, 39.717186, 30.428783>,  <43.317543, 39.101910, 30.754347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178127, 39.717186, 30.428783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.521393, 39.819889, 30.606606>,  <43.727352, 39.881512, 30.713299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.521393, 39.819889, 30.606606>,  <43.178127, 39.717186, 30.428783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521393, 39.819889, 30.606606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030122, 0.839270, -0.542879,
		-0.512489, 0.479271, 0.712499,
		0.858165, 0.256758, 0.444553,
		43.778843, 39.896915, 30.739971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108612, 40.290012, 30.950529>,  <43.178127, 39.717186, 30.428783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108612, 40.290012, 30.950529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482887, 40.277142, 30.809988>,  <43.707455, 40.269421, 30.725664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482887, 40.277142, 30.809988>,  <43.108612, 40.290012, 30.950529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482887, 40.277142, 30.809988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078757, 0.951659, -0.296890,
		0.343921, 0.305468, 0.887923,
		0.935690, -0.032176, -0.351353,
		43.763596, 40.267490, 30.704582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.841518, 35.841312, 43.018211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598064, 35.804234, 42.703003>,  <37.451992, 35.781986, 42.513878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598064, 35.804234, 42.703003>,  <37.841518, 35.841312, 43.018211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598064, 35.804234, 42.703003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742921, 0.282174, -0.606998,
		0.278622, -0.954875, -0.102878,
		-0.608637, -0.092693, -0.788016,
		37.415474, 35.776424, 42.466599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174515, 35.434208, 42.469418>,  <37.841518, 35.841312, 43.018211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174515, 35.434208, 42.469418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909477, 35.679565, 42.297508>,  <37.750454, 35.826782, 42.194363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909477, 35.679565, 42.297508>,  <38.174515, 35.434208, 42.469418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909477, 35.679565, 42.297508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706738, 0.322076, -0.629912,
		-0.247965, -0.721118, -0.646918,
		-0.662598, 0.613397, -0.429778,
		37.710697, 35.863583, 42.168575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346626, 35.154922, 41.790020>,  <38.174515, 35.434208, 42.469418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346626, 35.154922, 41.790020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204121, 35.527718, 41.816792>,  <38.118618, 35.751392, 41.832855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204121, 35.527718, 41.816792>,  <38.346626, 35.154922, 41.790020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204121, 35.527718, 41.816792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452589, 0.234787, -0.860254,
		-0.817460, -0.276182, -0.505453,
		-0.356261, 0.931986, 0.066932,
		38.097240, 35.807312, 41.836872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005184, 35.229729, 41.231468>,  <38.346626, 35.154922, 41.790020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005184, 35.229729, 41.231468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038925, 35.614460, 41.335602>,  <38.059170, 35.845299, 41.398083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038925, 35.614460, 41.335602>,  <38.005184, 35.229729, 41.231468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038925, 35.614460, 41.335602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355359, 0.215045, -0.909657,
		-0.930916, 0.169246, -0.323653,
		0.084356, 0.961827, 0.260332,
		38.064232, 35.903008, 41.413700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791447, 35.515400, 40.658787>,  <38.005184, 35.229729, 41.231468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791447, 35.515400, 40.658787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987045, 35.809631, 40.846325>,  <38.104404, 35.986168, 40.958847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987045, 35.809631, 40.846325>,  <37.791447, 35.515400, 40.658787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987045, 35.809631, 40.846325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416789, 0.275132, -0.866366,
		-0.766271, 0.619057, -0.172041,
		0.488995, 0.735575, 0.468842,
		38.133743, 36.030304, 40.986977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794342, 36.004570, 40.162109>,  <37.791447, 35.515400, 40.658787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794342, 36.004570, 40.162109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083641, 36.138805, 40.403538>,  <38.257221, 36.219349, 40.548393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083641, 36.138805, 40.403538>,  <37.794342, 36.004570, 40.162109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083641, 36.138805, 40.403538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423473, 0.474866, -0.771474,
		-0.545515, 0.813560, 0.201330,
		0.723246, 0.335593, 0.603567,
		38.300613, 36.239483, 40.584606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720692, 36.730316, 40.132969>,  <37.794342, 36.004570, 40.162109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720692, 36.730316, 40.132969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086472, 36.628582, 40.258884>,  <38.305939, 36.567543, 40.334435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086472, 36.628582, 40.258884>,  <37.720692, 36.730316, 40.132969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086472, 36.628582, 40.258884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401433, 0.471489, -0.785207,
		0.051283, 0.844401, 0.533251,
		0.914452, -0.254332, 0.314791,
		38.360806, 36.552280, 40.353321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267784, 37.238396, 39.906063>,  <37.720692, 36.730316, 40.132969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267784, 37.238396, 39.906063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486927, 36.904312, 39.925156>,  <38.618412, 36.703861, 39.936611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486927, 36.904312, 39.925156>,  <38.267784, 37.238396, 39.906063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486927, 36.904312, 39.925156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570201, 0.331057, -0.751845,
		0.612150, 0.439115, 0.657610,
		0.547853, -0.835212, 0.047727,
		38.651283, 36.653748, 39.939472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908649, 37.451756, 39.744705>,  <38.267784, 37.238396, 39.906063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908649, 37.451756, 39.744705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950386, 37.055847, 39.705772>,  <38.975430, 36.818302, 39.682411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950386, 37.055847, 39.705772>,  <38.908649, 37.451756, 39.744705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950386, 37.055847, 39.705772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624850, 0.141380, -0.767837,
		0.773741, 0.019300, 0.633208,
		0.104342, -0.989767, -0.097332,
		38.981689, 36.758919, 39.676571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546421, 37.394253, 39.304237>,  <38.908649, 37.451756, 39.744705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546421, 37.394253, 39.304237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355469, 37.043304, 39.284969>,  <39.240898, 36.832733, 39.273411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355469, 37.043304, 39.284969>,  <39.546421, 37.394253, 39.304237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355469, 37.043304, 39.284969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380971, -0.157270, -0.911113,
		0.791811, -0.453302, 0.409332,
		-0.477385, -0.877373, -0.048167,
		39.212254, 36.780094, 39.270519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115097, 36.882954, 39.271446>,  <39.546421, 37.394253, 39.304237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115097, 36.882954, 39.271446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770473, 36.765835, 39.105560>,  <39.563702, 36.695564, 39.006027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770473, 36.765835, 39.105560>,  <40.115097, 36.882954, 39.271446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770473, 36.765835, 39.105560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483021, -0.221373, -0.847163,
		0.156236, -0.930197, 0.332151,
		-0.861557, -0.292793, -0.414719,
		39.512005, 36.677998, 38.981144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373131, 36.407898, 38.833946>,  <40.115097, 36.882954, 39.271446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373131, 36.407898, 38.833946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006378, 36.482338, 38.692699>,  <39.786327, 36.527004, 38.607952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006378, 36.482338, 38.692699>,  <40.373131, 36.407898, 38.833946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006378, 36.482338, 38.692699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356118, -0.018182, -0.934264,
		-0.180289, -0.982362, -0.049604,
		-0.916884, 0.186103, -0.353114,
		39.731312, 36.538170, 38.586765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106422, 35.815632, 38.431385>,  <40.373131, 36.407898, 38.833946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106422, 35.815632, 38.431385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981998, 36.180668, 38.325237>,  <39.907345, 36.399689, 38.261547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981998, 36.180668, 38.325237>,  <40.106422, 35.815632, 38.431385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981998, 36.180668, 38.325237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285652, -0.176536, -0.941933,
		-0.906447, -0.368798, -0.205771,
		-0.311057, 0.912592, -0.265368,
		39.888683, 36.454445, 38.245628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444214, 35.899010, 37.800640>,  <40.106422, 35.815632, 38.431385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444214, 35.899010, 37.800640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677452, 35.619122, 37.635529>,  <40.817394, 35.451187, 37.536461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677452, 35.619122, 37.635529>,  <40.444214, 35.899010, 37.800640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677452, 35.619122, 37.635529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669307, -0.701745, 0.244095,
		-0.460468, 0.133949, -0.877512,
		0.583093, -0.699723, -0.412783,
		40.852379, 35.409206, 37.511692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084759, 35.409145, 37.238651>,  <40.444214, 35.899010, 37.800640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084759, 35.409145, 37.238651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377502, 35.270470, 37.473324>,  <40.553150, 35.187263, 37.614128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377502, 35.270470, 37.473324>,  <40.084759, 35.409145, 37.238651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377502, 35.270470, 37.473324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554561, -0.803330, 0.217077,
		0.396038, -0.484219, -0.780184,
		0.731858, -0.346689, 0.586678,
		40.597061, 35.166462, 37.649326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883396, 34.819107, 37.183102>,  <40.084759, 35.409145, 37.238651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883396, 34.819107, 37.183102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138489, 34.780376, 37.488758>,  <40.291546, 34.757137, 37.672153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138489, 34.780376, 37.488758>,  <39.883396, 34.819107, 37.183102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138489, 34.780376, 37.488758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517873, -0.788273, 0.332314,
		0.570177, -0.607659, -0.552855,
		0.637734, -0.096831, 0.764146,
		40.329807, 34.751328, 37.718002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978443, 34.079510, 37.213848>,  <39.883396, 34.819107, 37.183102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978443, 34.079510, 37.213848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104980, 34.242218, 37.556652>,  <40.180901, 34.339844, 37.762333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104980, 34.242218, 37.556652>,  <39.978443, 34.079510, 37.213848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104980, 34.242218, 37.556652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282337, -0.822092, 0.494419,
		0.905657, -0.398370, -0.145214,
		0.316340, 0.406775, 0.857008,
		40.199883, 34.364250, 37.813755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194241, 33.551182, 37.528938>,  <39.978443, 34.079510, 37.213848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194241, 33.551182, 37.528938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126450, 33.813847, 37.822895>,  <40.085777, 33.971447, 37.999268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126450, 33.813847, 37.822895>,  <40.194241, 33.551182, 37.528938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126450, 33.813847, 37.822895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584948, -0.667153, 0.461240,
		0.793167, -0.351706, 0.497182,
		-0.169475, 0.656666, 0.734893,
		40.075607, 34.010845, 38.043362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008335, 33.086292, 38.056461>,  <40.194241, 33.551182, 37.528938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008335, 33.086292, 38.056461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897717, 33.449955, 38.181015>,  <39.831345, 33.668152, 38.255745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897717, 33.449955, 38.181015>,  <40.008335, 33.086292, 38.056461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897717, 33.449955, 38.181015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579405, -0.416240, 0.700738,
		0.766689, 0.013371, 0.641880,
		-0.276545, 0.909156, 0.311380,
		39.814754, 33.722702, 38.274429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176125, 33.106167, 38.785454>,  <40.008335, 33.086292, 38.056461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176125, 33.106167, 38.785454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877045, 33.354507, 38.691231>,  <39.697598, 33.503513, 38.634697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877045, 33.354507, 38.691231>,  <40.176125, 33.106167, 38.785454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877045, 33.354507, 38.691231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557571, -0.394335, 0.730489,
		0.360639, 0.677525, 0.641014,
		-0.747699, 0.620854, -0.235556,
		39.652737, 33.540764, 38.620564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873142, 33.266033, 39.436089>,  <40.176125, 33.106167, 38.785454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873142, 33.266033, 39.436089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587311, 33.394608, 39.187553>,  <39.415813, 33.471752, 39.038433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587311, 33.394608, 39.187553>,  <39.873142, 33.266033, 39.436089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587311, 33.394608, 39.187553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699455, -0.343478, 0.626726,
		-0.011965, 0.882441, 0.470270,
		-0.714576, 0.321434, -0.621338,
		39.372936, 33.491039, 39.001152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272945, 33.671658, 39.835197>,  <39.873142, 33.266033, 39.436089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272945, 33.671658, 39.835197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101646, 33.543514, 39.497208>,  <38.998867, 33.466629, 39.294415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101646, 33.543514, 39.497208>,  <39.272945, 33.671658, 39.835197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101646, 33.543514, 39.497208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817857, -0.260282, 0.513189,
		-0.384333, 0.910838, -0.150538,
		-0.428250, -0.320354, -0.844971,
		38.973171, 33.447407, 39.243717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666470, 33.753139, 39.941898>,  <39.272945, 33.671658, 39.835197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666470, 33.753139, 39.941898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654202, 33.487991, 39.642658>,  <38.646843, 33.328903, 39.463112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654202, 33.487991, 39.642658>,  <38.666470, 33.753139, 39.941898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654202, 33.487991, 39.642658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697722, -0.521734, 0.490894,
		-0.715712, 0.537023, -0.446500,
		-0.030667, -0.662872, -0.748105,
		38.645000, 33.289131, 39.418228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928955, 33.708214, 39.808846>,  <38.666470, 33.753139, 39.941898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928955, 33.708214, 39.808846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111172, 33.396374, 39.636936>,  <38.220501, 33.209270, 39.533791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111172, 33.396374, 39.636936>,  <37.928955, 33.708214, 39.808846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111172, 33.396374, 39.636936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716104, -0.607714, 0.343335,
		-0.528843, 0.151359, -0.835114,
		0.455543, -0.779599, -0.429774,
		38.247833, 33.162495, 39.508003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428070, 33.346207, 39.507927>,  <37.928955, 33.708214, 39.808846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428070, 33.346207, 39.507927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727421, 33.082596, 39.537918>,  <37.907032, 32.924431, 39.555912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727421, 33.082596, 39.537918>,  <37.428070, 33.346207, 39.507927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727421, 33.082596, 39.537918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640765, -0.689138, 0.338392,
		-0.171342, -0.301284, -0.938014,
		0.748373, -0.659027, 0.074974,
		37.951931, 32.884888, 39.560410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156048, 32.770153, 39.174004>,  <37.428070, 33.346207, 39.507927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156048, 32.770153, 39.174004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441559, 32.675732, 39.437759>,  <37.612865, 32.619080, 39.596012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441559, 32.675732, 39.437759>,  <37.156048, 32.770153, 39.174004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441559, 32.675732, 39.437759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630545, -0.626392, 0.458307,
		0.304853, -0.742907, -0.595948,
		0.713777, -0.236056, 0.659394,
		37.655693, 32.604916, 39.635578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168129, 32.094463, 39.191158>,  <37.156048, 32.770153, 39.174004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168129, 32.094463, 39.191158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340176, 32.201046, 39.536179>,  <37.443405, 32.264996, 39.743191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340176, 32.201046, 39.536179>,  <37.168129, 32.094463, 39.191158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340176, 32.201046, 39.536179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641505, -0.582047, 0.499693,
		0.635194, -0.768259, -0.079415,
		0.430117, 0.266457, 0.862554,
		37.469212, 32.280983, 39.794945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047813, 31.563414, 39.603844>,  <37.168129, 32.094463, 39.191158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047813, 31.563414, 39.603844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167957, 31.814768, 39.890873>,  <37.240044, 31.965580, 40.063091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167957, 31.814768, 39.890873>,  <37.047813, 31.563414, 39.603844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167957, 31.814768, 39.890873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569343, -0.485474, 0.663449,
		0.765266, -0.607819, 0.211951,
		0.300361, 0.628387, 0.717574,
		37.258064, 32.003284, 40.106144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306652, 30.905848, 39.303726>,  <37.047813, 31.563414, 39.603844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306652, 30.905848, 39.303726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043152, 30.671093, 39.115421>,  <36.885052, 30.530239, 39.002438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043152, 30.671093, 39.115421>,  <37.306652, 30.905848, 39.303726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043152, 30.671093, 39.115421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288815, 0.380509, -0.878521,
		0.694722, -0.714685, -0.081157,
		-0.658746, -0.586889, -0.470760,
		36.845528, 30.495026, 38.974194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739170, 30.775845, 38.751789>,  <37.306652, 30.905848, 39.303726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739170, 30.775845, 38.751789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360725, 30.689766, 38.654984>,  <37.133659, 30.638119, 38.596901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360725, 30.689766, 38.654984>,  <37.739170, 30.775845, 38.751789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360725, 30.689766, 38.654984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161562, 0.334028, -0.928614,
		0.280671, -0.917669, -0.281259,
		-0.946109, -0.215195, -0.242012,
		37.076893, 30.625206, 38.582378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815880, 30.499493, 38.114010>,  <37.739170, 30.775845, 38.751789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815880, 30.499493, 38.114010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437675, 30.621496, 38.159569>,  <37.210751, 30.694698, 38.186905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437675, 30.621496, 38.159569>,  <37.815880, 30.499493, 38.114010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437675, 30.621496, 38.159569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063849, 0.516737, -0.853760,
		-0.319256, -0.799971, -0.508057,
		-0.945516, 0.305007, 0.113893,
		37.154022, 30.712997, 38.193737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516960, 30.249149, 37.469032>,  <37.815880, 30.499493, 38.114010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516960, 30.249149, 37.469032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320831, 30.551491, 37.642590>,  <37.203152, 30.732895, 37.746723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320831, 30.551491, 37.642590>,  <37.516960, 30.249149, 37.469032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320831, 30.551491, 37.642590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043073, 0.518259, -0.854138,
		-0.870475, -0.400115, -0.286672,
		-0.490324, 0.755854, 0.433898,
		37.173733, 30.778248, 37.772758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218853, 30.571472, 36.876156>,  <37.516960, 30.249149, 37.469032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218853, 30.571472, 36.876156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159309, 30.861031, 37.145618>,  <37.123585, 31.034765, 37.307297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159309, 30.861031, 37.145618>,  <37.218853, 30.571472, 36.876156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159309, 30.861031, 37.145618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093949, 0.667815, -0.738375,
		-0.984385, -0.173203, -0.031401,
		-0.148859, 0.723895, 0.673659,
		37.114651, 31.078199, 37.347717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605137, 31.063255, 36.745804>,  <37.218853, 30.571472, 36.876156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605137, 31.063255, 36.745804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841743, 31.274178, 36.989788>,  <36.983707, 31.400732, 37.136177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841743, 31.274178, 36.989788>,  <36.605137, 31.063255, 36.745804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841743, 31.274178, 36.989788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150029, 0.815272, -0.559305,
		-0.792209, 0.239329, 0.561361,
		0.591520, 0.527307, 0.609960,
		37.019199, 31.432369, 37.172775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251125, 31.731649, 36.794498>,  <36.605137, 31.063255, 36.745804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251125, 31.731649, 36.794498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628799, 31.794807, 36.910145>,  <36.855404, 31.832703, 36.979530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628799, 31.794807, 36.910145>,  <36.251125, 31.731649, 36.794498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628799, 31.794807, 36.910145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032910, 0.828037, -0.559706,
		-0.327771, 0.537980, 0.776623,
		0.944184, 0.157897, 0.289112,
		36.912056, 31.842176, 36.996880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313152, 32.410812, 36.870277>,  <36.251125, 31.731649, 36.794498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313152, 32.410812, 36.870277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699577, 32.308510, 36.855747>,  <36.931431, 32.247128, 36.847031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699577, 32.308510, 36.855747>,  <36.313152, 32.410812, 36.870277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699577, 32.308510, 36.855747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191762, 0.804230, -0.562531,
		0.173085, 0.536472, 0.825978,
		0.966058, -0.255757, -0.036325,
		36.989395, 32.231781, 36.844849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654037, 33.019196, 37.074745>,  <36.313152, 32.410812, 36.870277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654037, 33.019196, 37.074745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913460, 32.793179, 36.870743>,  <37.069111, 32.657570, 36.748341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913460, 32.793179, 36.870743>,  <36.654037, 33.019196, 37.074745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913460, 32.793179, 36.870743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359877, 0.818035, -0.448672,
		0.670721, 0.107449, 0.733886,
		0.648554, -0.565042, -0.510005,
		37.108025, 32.623665, 36.717743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204082, 33.445286, 37.024479>,  <36.654037, 33.019196, 37.074745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204082, 33.445286, 37.024479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219284, 33.162563, 36.741924>,  <37.228405, 32.992928, 36.572392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219284, 33.162563, 36.741924>,  <37.204082, 33.445286, 37.024479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219284, 33.162563, 36.741924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170808, 0.701084, -0.692318,
		0.984571, -0.094346, 0.147373,
		0.038003, -0.706809, -0.706382,
		37.230686, 32.950520, 36.530010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725285, 33.637718, 36.604973>,  <37.204082, 33.445286, 37.024479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725285, 33.637718, 36.604973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489178, 33.390907, 36.396797>,  <37.347515, 33.242821, 36.271893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489178, 33.390907, 36.396797>,  <37.725285, 33.637718, 36.604973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489178, 33.390907, 36.396797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077923, 0.598174, -0.797568,
		0.803440, -0.511331, -0.305000,
		-0.590265, -0.617032, -0.520442,
		37.312099, 33.205799, 36.240665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765987, 33.778484, 35.828655>,  <37.725285, 33.637718, 36.604973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765987, 33.778484, 35.828655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415066, 33.591309, 35.871307>,  <37.204514, 33.479004, 35.896896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415066, 33.591309, 35.871307>,  <37.765987, 33.778484, 35.828655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415066, 33.591309, 35.871307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342338, 0.454438, -0.822369,
		0.336359, -0.757973, -0.558874,
		-0.877307, -0.467935, 0.106629,
		37.151875, 33.450928, 35.903297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.455036, 28.187042, 42.058483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.102978, 28.161629, 41.870312>,  <35.891743, 28.146381, 41.757408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.102978, 28.161629, 41.870312>,  <36.455036, 28.187042, 42.058483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102978, 28.161629, 41.870312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425163, 0.335243, -0.840743,
		0.211119, -0.939987, -0.268053,
		-0.880151, -0.063531, -0.470424,
		35.838932, 28.142569, 41.729183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563137, 27.772758, 41.290257>,  <36.455036, 28.187042, 42.058483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563137, 27.772758, 41.290257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.220741, 27.978899, 41.273815>,  <36.015305, 28.102583, 41.263950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.220741, 27.978899, 41.273815>,  <36.563137, 27.772758, 41.290257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220741, 27.978899, 41.273815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299402, 0.429349, -0.852067,
		-0.421467, -0.741668, -0.521817,
		-0.855993, 0.515351, -0.041100,
		35.963943, 28.133505, 41.261486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398960, 27.730431, 40.562405>,  <36.563137, 27.772758, 41.290257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398960, 27.730431, 40.562405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.186085, 28.040110, 40.699451>,  <36.058357, 28.225918, 40.781681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.186085, 28.040110, 40.699451>,  <36.398960, 27.730431, 40.562405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186085, 28.040110, 40.699451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364940, 0.574941, -0.732298,
		-0.763930, -0.264688, -0.588516,
		-0.532193, 0.774198, 0.342620,
		36.026428, 28.272369, 40.802238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935135, 28.078346, 40.005741>,  <36.398960, 27.730431, 40.562405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935135, 28.078346, 40.005741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984795, 28.368307, 40.276772>,  <36.014591, 28.542284, 40.439388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984795, 28.368307, 40.276772>,  <35.935135, 28.078346, 40.005741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984795, 28.368307, 40.276772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220409, 0.645651, -0.731132,
		-0.967475, 0.240111, -0.079619,
		0.124147, 0.724901, 0.677574,
		36.022038, 28.585777, 40.480045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644680, 28.742718, 39.614567>,  <35.935135, 28.078346, 40.005741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644680, 28.742718, 39.614567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.861874, 28.856091, 39.930752>,  <35.992191, 28.924114, 40.120464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.861874, 28.856091, 39.930752>,  <35.644680, 28.742718, 39.614567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861874, 28.856091, 39.930752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297018, 0.815646, -0.496489,
		-0.785461, 0.504368, 0.358697,
		0.542983, 0.283434, 0.790465,
		36.024769, 28.941120, 40.167892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359909, 29.353651, 39.972412>,  <35.644680, 28.742718, 39.614567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359909, 29.353651, 39.972412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.758511, 29.324608, 39.988937>,  <35.997673, 29.307182, 39.998852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.758511, 29.324608, 39.988937>,  <35.359909, 29.353651, 39.972412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758511, 29.324608, 39.988937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083539, 0.865778, -0.493406,
		0.000059, 0.495132, 0.868818,
		0.996505, -0.072609, 0.041311,
		36.057461, 29.302826, 40.001331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638622, 30.073750, 40.119041>,  <35.359909, 29.353651, 39.972412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638622, 30.073750, 40.119041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957367, 29.877857, 39.977524>,  <36.148613, 29.760323, 39.892612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957367, 29.877857, 39.977524>,  <35.638622, 30.073750, 40.119041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957367, 29.877857, 39.977524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243142, 0.796038, -0.554261,
		0.553072, 0.355649, 0.753409,
		0.796865, -0.489731, -0.353793,
		36.196426, 29.730938, 39.871387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097977, 30.697126, 39.886921>,  <35.638622, 30.073750, 40.119041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097977, 30.697126, 39.886921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.289822, 30.377041, 39.742905>,  <36.404930, 30.184990, 39.656494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.289822, 30.377041, 39.742905>,  <36.097977, 30.697126, 39.886921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289822, 30.377041, 39.742905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399172, 0.564365, -0.722602,
		0.781429, 0.202854, 0.590101,
		0.479615, -0.800214, -0.360038,
		36.433704, 30.136976, 39.634892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801445, 30.810793, 39.835297>,  <36.097977, 30.697126, 39.886921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801445, 30.810793, 39.835297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.719273, 30.516363, 39.577305>,  <36.669971, 30.339705, 39.422512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.719273, 30.516363, 39.577305>,  <36.801445, 30.810793, 39.835297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719273, 30.516363, 39.577305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309520, 0.576338, -0.756328,
		0.928438, -0.355003, 0.109435,
		-0.205427, -0.736075, -0.644975,
		36.657646, 30.295540, 39.383812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215847, 31.212494, 40.205009>,  <36.801445, 30.810793, 39.835297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215847, 31.212494, 40.205009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162422, 31.568024, 40.380352>,  <37.130367, 31.781342, 40.485558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162422, 31.568024, 40.380352>,  <37.215847, 31.212494, 40.205009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162422, 31.568024, 40.380352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509435, -0.440980, 0.738927,
		0.850081, -0.124620, 0.511696,
		-0.133563, 0.888823, 0.438354,
		37.122353, 31.834671, 40.511860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273106, 31.049236, 40.869751>,  <37.215847, 31.212494, 40.205009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273106, 31.049236, 40.869751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.074657, 31.396076, 40.851841>,  <36.955589, 31.604179, 40.841095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.074657, 31.396076, 40.851841>,  <37.273106, 31.049236, 40.869751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074657, 31.396076, 40.851841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559830, -0.280044, 0.779850,
		0.663670, 0.411961, 0.624363,
		-0.496117, 0.867100, -0.044772,
		36.925823, 31.656206, 40.838409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332306, 31.349882, 41.578224>,  <37.273106, 31.049236, 40.869751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332306, 31.349882, 41.578224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.014961, 31.497252, 41.384380>,  <36.824554, 31.585672, 41.268074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.014961, 31.497252, 41.384380>,  <37.332306, 31.349882, 41.578224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014961, 31.497252, 41.384380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583401, -0.232797, 0.778106,
		0.173856, 0.900039, 0.399630,
		-0.793358, 0.368423, -0.484610,
		36.776955, 31.607779, 41.238998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032185, 31.674641, 42.107780>,  <37.332306, 31.349882, 41.578224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032185, 31.674641, 42.107780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.748489, 31.625360, 41.830132>,  <36.578274, 31.595793, 41.663544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.748489, 31.625360, 41.830132>,  <37.032185, 31.674641, 42.107780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748489, 31.625360, 41.830132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694219, -0.049265, 0.718076,
		-0.122665, 0.991158, -0.050589,
		-0.709235, -0.123202, -0.694123,
		36.535721, 31.588400, 41.621895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491306, 32.122871, 42.291851>,  <37.032185, 31.674641, 42.107780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491306, 32.122871, 42.291851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.297691, 31.864923, 42.055260>,  <36.181522, 31.710155, 41.913303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.297691, 31.864923, 42.055260>,  <36.491306, 32.122871, 42.291851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297691, 31.864923, 42.055260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686078, -0.139878, 0.713955,
		-0.543143, 0.751384, -0.374724,
		-0.484038, -0.644870, -0.591482,
		36.152481, 31.671463, 41.877815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823215, 32.354450, 42.205570>,  <36.491306, 32.122871, 42.291851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823215, 32.354450, 42.205570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830494, 31.959219, 42.144432>,  <35.834862, 31.722080, 42.107750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830494, 31.959219, 42.144432>,  <35.823215, 32.354450, 42.205570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830494, 31.959219, 42.144432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684336, -0.123762, 0.718588,
		-0.728940, 0.091527, -0.678432,
		0.018194, -0.988082, -0.152850,
		35.835953, 31.662794, 42.098576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117550, 32.191799, 42.283878>,  <35.823215, 32.354450, 42.205570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117550, 32.191799, 42.283878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330170, 31.853355, 42.299686>,  <35.457741, 31.650290, 42.309174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330170, 31.853355, 42.299686>,  <35.117550, 32.191799, 42.283878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330170, 31.853355, 42.299686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607646, -0.348402, 0.713710,
		-0.590105, -0.403386, -0.699325,
		0.531547, -0.846106, 0.039522,
		35.489635, 31.599524, 42.311543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655731, 31.684975, 42.320580>,  <35.117550, 32.191799, 42.283878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655731, 31.684975, 42.320580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.985603, 31.525209, 42.480766>,  <35.183525, 31.429350, 42.576878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.985603, 31.525209, 42.480766>,  <34.655731, 31.684975, 42.320580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985603, 31.525209, 42.480766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547177, -0.384167, 0.743649,
		-0.143175, -0.832399, -0.535363,
		0.824681, -0.399410, 0.400466,
		35.233009, 31.405386, 42.600906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498512, 30.942003, 42.476418>,  <34.655731, 31.684975, 42.320580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498512, 30.942003, 42.476418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.816174, 31.036833, 42.700245>,  <35.006771, 31.093731, 42.834541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.816174, 31.036833, 42.700245>,  <34.498512, 30.942003, 42.476418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816174, 31.036833, 42.700245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441767, -0.407108, 0.799440,
		0.417334, -0.882076, -0.218573,
		0.794150, 0.237075, 0.559572,
		35.054420, 31.107956, 42.868118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705132, 30.336409, 42.859928>,  <34.498512, 30.942003, 42.476418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705132, 30.336409, 42.859928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894421, 30.628330, 43.057293>,  <35.007992, 30.803482, 43.175713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894421, 30.628330, 43.057293>,  <34.705132, 30.336409, 42.859928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894421, 30.628330, 43.057293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322435, -0.377741, 0.867956,
		0.819818, -0.569825, 0.056560,
		0.473218, 0.729802, 0.493410,
		35.036385, 30.847271, 43.205315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948864, 30.053505, 43.393291>,  <34.705132, 30.336409, 42.859928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948864, 30.053505, 43.393291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.973652, 30.428364, 43.530647>,  <34.988525, 30.653278, 43.613060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.973652, 30.428364, 43.530647>,  <34.948864, 30.053505, 43.393291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973652, 30.428364, 43.530647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106168, -0.335907, 0.935893,
		0.992415, -0.094453, 0.078680,
		0.061969, 0.937147, 0.343387,
		34.992241, 30.709509, 43.633663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183849, 29.873442, 43.984253>,  <34.948864, 30.053505, 43.393291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183849, 29.873442, 43.984253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.077461, 30.257879, 44.014084>,  <35.013630, 30.488541, 44.031982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.077461, 30.257879, 44.014084>,  <35.183849, 29.873442, 43.984253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077461, 30.257879, 44.014084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152835, -0.118426, 0.981130,
		0.951789, 0.249553, 0.178386,
		-0.265970, 0.961092, 0.074576,
		34.997669, 30.546207, 44.036457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691788, 30.293798, 44.464321>,  <35.183849, 29.873442, 43.984253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691788, 30.293798, 44.464321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.338860, 30.481323, 44.447739>,  <35.127102, 30.593838, 44.437790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.338860, 30.481323, 44.447739>,  <35.691788, 30.293798, 44.464321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338860, 30.481323, 44.447739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112467, -0.124502, 0.985825,
		0.457006, 0.874479, 0.162577,
		-0.882324, 0.468813, -0.041452,
		35.074162, 30.621967, 44.435303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685970, 30.814833, 45.138142>,  <35.691788, 30.293798, 44.464321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685970, 30.814833, 45.138142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.309647, 30.770784, 45.009926>,  <35.083851, 30.744354, 44.932999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.309647, 30.770784, 45.009926>,  <35.685970, 30.814833, 45.138142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309647, 30.770784, 45.009926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294644, -0.201650, 0.934089,
		-0.167501, 0.973247, 0.157267,
		-0.940813, -0.110123, -0.320538,
		35.027401, 30.737747, 44.913765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.838461, 32.306538, 42.584499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.179037, 32.210648, 42.771084>,  <29.383383, 32.153114, 42.883034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.179037, 32.210648, 42.771084>,  <28.838461, 32.306538, 42.584499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179037, 32.210648, 42.771084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524255, 0.364527, -0.769595,
		0.014452, 0.899807, 0.436049,
		0.851438, -0.239723, 0.466461,
		29.434469, 32.138729, 42.911022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231270, 32.939270, 42.713722>,  <28.838461, 32.306538, 42.584499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231270, 32.939270, 42.713722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.466497, 32.616066, 42.699284>,  <29.607634, 32.422146, 42.690620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.466497, 32.616066, 42.699284>,  <29.231270, 32.939270, 42.713722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466497, 32.616066, 42.699284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472459, 0.379400, -0.795511,
		0.656474, 0.450759, 0.604862,
		0.588068, -0.808005, -0.036101,
		29.642918, 32.373665, 42.688454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896824, 33.242928, 42.600246>,  <29.231270, 32.939270, 42.713722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896824, 33.242928, 42.600246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.989450, 32.863674, 42.513145>,  <30.045027, 32.636120, 42.460884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.989450, 32.863674, 42.513145>,  <29.896824, 33.242928, 42.600246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989450, 32.863674, 42.513145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735514, 0.317136, -0.598701,
		0.636707, -0.021520, 0.770806,
		0.231566, -0.948136, -0.217751,
		30.058920, 32.579235, 42.447819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646721, 33.290867, 42.660641>,  <29.896824, 33.242928, 42.600246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646721, 33.290867, 42.660641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.550491, 32.968624, 42.444077>,  <30.492754, 32.775280, 42.314137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.550491, 32.968624, 42.444077>,  <30.646721, 33.290867, 42.660641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550491, 32.968624, 42.444077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742176, 0.206802, -0.637501,
		0.625539, -0.555188, 0.548149,
		-0.240575, -0.805605, -0.541410,
		30.478319, 32.726944, 42.281654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293932, 32.866623, 42.544895>,  <30.646721, 33.290867, 42.660641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293932, 32.866623, 42.544895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.020060, 32.766693, 42.271019>,  <30.855736, 32.706734, 42.106693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.020060, 32.766693, 42.271019>,  <31.293932, 32.866623, 42.544895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020060, 32.766693, 42.271019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696019, 0.054633, -0.715942,
		0.216267, -0.966749, 0.136477,
		-0.684680, -0.249825, -0.684690,
		30.814655, 32.691746, 42.065613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638855, 32.458622, 42.045498>,  <31.293932, 32.866623, 42.544895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638855, 32.458622, 42.045498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.307669, 32.568550, 41.849972>,  <31.108955, 32.634506, 41.732655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.307669, 32.568550, 41.849972>,  <31.638855, 32.458622, 42.045498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307669, 32.568550, 41.849972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500789, -0.029894, -0.865053,
		-0.252349, -0.961030, -0.112877,
		-0.827968, 0.274823, -0.488817,
		31.059278, 32.650997, 41.703327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577854, 32.031513, 41.372395>,  <31.638855, 32.458622, 42.045498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577854, 32.031513, 41.372395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362099, 32.361862, 41.306667>,  <31.232645, 32.560070, 41.267231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362099, 32.361862, 41.306667>,  <31.577854, 32.031513, 41.372395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362099, 32.361862, 41.306667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425073, 0.098606, -0.899772,
		-0.726891, -0.555174, -0.404241,
		-0.539390, 0.825869, -0.164314,
		31.200281, 32.609623, 41.257374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472351, 32.015873, 40.667526>,  <31.577854, 32.031513, 41.372395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472351, 32.015873, 40.667526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.398769, 32.401093, 40.746208>,  <31.354620, 32.632225, 40.793419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.398769, 32.401093, 40.746208>,  <31.472351, 32.015873, 40.667526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398769, 32.401093, 40.746208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355063, 0.251717, -0.900316,
		-0.916565, -0.095775, -0.388248,
		-0.183956, 0.963051, 0.196709,
		31.343582, 32.690006, 40.805222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460123, 32.351585, 39.947163>,  <31.472351, 32.015873, 40.667526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460123, 32.351585, 39.947163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.501451, 32.654934, 40.204594>,  <31.526249, 32.836945, 40.359055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.501451, 32.654934, 40.204594>,  <31.460123, 32.351585, 39.947163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501451, 32.654934, 40.204594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418464, 0.553849, -0.719819,
		-0.902337, 0.343689, -0.260127,
		0.103323, 0.758373, 0.643580,
		31.532448, 32.882446, 40.397667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143335, 32.987461, 39.640896>,  <31.460123, 32.351585, 39.947163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143335, 32.987461, 39.640896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.419817, 33.088295, 39.911804>,  <31.585707, 33.148796, 40.074348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.419817, 33.088295, 39.911804>,  <31.143335, 32.987461, 39.640896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419817, 33.088295, 39.911804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358615, 0.693999, -0.624308,
		-0.627401, 0.674402, 0.389293,
		0.691204, 0.252086, 0.677267,
		31.627178, 33.163921, 40.114983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162205, 33.658878, 39.656487>,  <31.143335, 32.987461, 39.640896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162205, 33.658878, 39.656487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518669, 33.563023, 39.810581>,  <31.732548, 33.505508, 39.903038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518669, 33.563023, 39.810581>,  <31.162205, 33.658878, 39.656487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518669, 33.563023, 39.810581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444989, 0.627166, -0.639256,
		-0.088417, 0.741105, 0.665541,
		0.891161, -0.239637, 0.385236,
		31.786016, 33.491131, 39.926151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571243, 34.283447, 39.439007>,  <31.162205, 33.658878, 39.656487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571243, 34.283447, 39.439007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844872, 34.011093, 39.543652>,  <32.009048, 33.847679, 39.606438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844872, 34.011093, 39.543652>,  <31.571243, 34.283447, 39.439007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844872, 34.011093, 39.543652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684134, 0.474510, -0.553896,
		0.253003, 0.557881, 0.790416,
		0.684069, -0.680888, 0.261613,
		32.050091, 33.806828, 39.622135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170113, 34.652931, 39.685760>,  <31.571243, 34.283447, 39.439007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170113, 34.652931, 39.685760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.278637, 34.299103, 39.534012>,  <32.343750, 34.086807, 39.442963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.278637, 34.299103, 39.534012>,  <32.170113, 34.652931, 39.685760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278637, 34.299103, 39.534012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550460, 0.465938, -0.692745,
		0.789547, -0.020881, 0.613335,
		0.271311, -0.884571, -0.379374,
		32.360031, 34.033733, 39.420200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885635, 34.767628, 39.538181>,  <32.170113, 34.652931, 39.685760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885635, 34.767628, 39.538181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768059, 34.436581, 39.346916>,  <32.697514, 34.237953, 39.232159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768059, 34.436581, 39.346916>,  <32.885635, 34.767628, 39.538181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768059, 34.436581, 39.346916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513390, 0.285267, -0.809353,
		0.806242, -0.483390, 0.341040,
		-0.293946, -0.827621, -0.478162,
		32.679874, 34.188293, 39.203468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510574, 34.553410, 40.059658>,  <32.885635, 34.767628, 39.538181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510574, 34.553410, 40.059658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685596, 34.825665, 40.294701>,  <33.790611, 34.989017, 40.435726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685596, 34.825665, 40.294701>,  <33.510574, 34.553410, 40.059658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685596, 34.825665, 40.294701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594613, -0.271188, 0.756897,
		0.674521, -0.680584, 0.286053,
		0.437559, 0.680634, 0.587606,
		33.816864, 35.029854, 40.470982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654434, 34.261600, 40.748474>,  <33.510574, 34.553410, 40.059658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654434, 34.261600, 40.748474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672932, 34.653397, 40.826927>,  <33.684029, 34.888474, 40.874001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672932, 34.653397, 40.826927>,  <33.654434, 34.261600, 40.748474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672932, 34.653397, 40.826927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542188, -0.140297, 0.828462,
		0.838984, -0.144652, 0.524577,
		0.046242, 0.979486, 0.196136,
		33.686806, 34.947243, 40.885769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513474, 34.284199, 41.445465>,  <33.654434, 34.261600, 40.748474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513474, 34.284199, 41.445465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525570, 34.675930, 41.365459>,  <33.532825, 34.910969, 41.317455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525570, 34.675930, 41.365459>,  <33.513474, 34.284199, 41.445465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525570, 34.675930, 41.365459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270188, 0.200663, 0.941665,
		0.962333, 0.025567, 0.270670,
		0.030238, 0.979327, -0.200012,
		33.534641, 34.969727, 41.305454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017132, 34.655457, 41.930153>,  <33.513474, 34.284199, 41.445465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017132, 34.655457, 41.930153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.707542, 34.883732, 41.820400>,  <33.521790, 35.020695, 41.754547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.707542, 34.883732, 41.820400>,  <34.017132, 34.655457, 41.930153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707542, 34.883732, 41.820400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233661, 0.145339, 0.961394,
		0.588533, 0.808204, 0.020859,
		-0.773971, 0.570687, -0.274383,
		33.475349, 35.054939, 41.738087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998535, 35.271461, 42.384235>,  <34.017132, 34.655457, 41.930153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998535, 35.271461, 42.384235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.628544, 35.247803, 42.234081>,  <33.406548, 35.233608, 42.143990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.628544, 35.247803, 42.234081>,  <33.998535, 35.271461, 42.384235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628544, 35.247803, 42.234081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379485, 0.196041, 0.904189,
		0.020107, 0.978810, -0.203781,
		-0.924979, -0.059152, -0.375386,
		33.351051, 35.230057, 42.121464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685497, 35.564289, 42.913757>,  <33.998535, 35.271461, 42.384235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685497, 35.564289, 42.913757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373638, 35.416767, 42.711319>,  <33.186523, 35.328255, 42.589855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373638, 35.416767, 42.711319>,  <33.685497, 35.564289, 42.913757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373638, 35.416767, 42.711319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483537, -0.159011, 0.860760,
		-0.397927, 0.915806, -0.054359,
		-0.779645, -0.368804, -0.506101,
		33.139744, 35.306126, 42.559490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120327, 35.957378, 43.111546>,  <33.685497, 35.564289, 42.913757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120327, 35.957378, 43.111546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954472, 35.611420, 42.998390>,  <32.854958, 35.403843, 42.930496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954472, 35.611420, 42.998390>,  <33.120327, 35.957378, 43.111546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954472, 35.611420, 42.998390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557380, -0.004348, 0.830246,
		-0.719308, 0.501929, -0.480274,
		-0.414636, -0.864898, -0.282892,
		32.830082, 35.351952, 42.913521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363556, 35.988754, 43.213818>,  <33.120327, 35.957378, 43.111546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363556, 35.988754, 43.213818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431664, 35.595093, 43.194050>,  <32.472527, 35.358894, 43.182190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431664, 35.595093, 43.194050>,  <32.363556, 35.988754, 43.213818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431664, 35.595093, 43.194050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572119, -0.139564, 0.808209,
		-0.802302, -0.109341, -0.586819,
		0.170269, -0.984158, -0.049416,
		32.482746, 35.299847, 43.179226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630697, 35.630142, 43.311275>,  <32.363556, 35.988754, 43.213818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630697, 35.630142, 43.311275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926876, 35.379314, 43.408035>,  <32.104584, 35.228817, 43.466091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926876, 35.379314, 43.408035>,  <31.630697, 35.630142, 43.311275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926876, 35.379314, 43.408035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436083, -0.174358, 0.882854,
		-0.511436, -0.759196, -0.402559,
		0.740448, -0.627073, 0.241900,
		32.149010, 35.191193, 43.480606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257952, 35.093178, 43.725014>,  <31.630697, 35.630142, 43.311275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257952, 35.093178, 43.725014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.648050, 35.022869, 43.778671>,  <31.882111, 34.980682, 43.810867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.648050, 35.022869, 43.778671>,  <31.257952, 35.093178, 43.725014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648050, 35.022869, 43.778671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205729, -0.498946, 0.841860,
		-0.081045, -0.848620, -0.522758,
		0.975247, -0.175775, 0.134149,
		31.940624, 34.970135, 43.818916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293253, 34.392315, 43.720577>,  <31.257952, 35.093178, 43.725014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293253, 34.392315, 43.720577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.579596, 34.564415, 43.940556>,  <31.751402, 34.667675, 44.072540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.579596, 34.564415, 43.940556>,  <31.293253, 34.392315, 43.720577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579596, 34.564415, 43.940556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311082, -0.508602, 0.802840,
		0.625123, -0.745795, -0.230243,
		0.715856, 0.430249, 0.549942,
		31.794352, 34.693489, 44.105537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600548, 33.889389, 44.090244>,  <31.293253, 34.392315, 43.720577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600548, 33.889389, 44.090244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.694195, 34.201454, 44.322292>,  <31.750383, 34.388691, 44.461521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.694195, 34.201454, 44.322292>,  <31.600548, 33.889389, 44.090244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694195, 34.201454, 44.322292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217036, -0.539702, 0.813398,
		0.947673, -0.316339, 0.042968,
		0.234120, 0.780161, 0.580118,
		31.764431, 34.435501, 44.496326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013275, 33.591152, 44.561596>,  <31.600548, 33.889389, 44.090244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013275, 33.591152, 44.561596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908915, 33.927494, 44.751289>,  <31.846298, 34.129299, 44.865105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908915, 33.927494, 44.751289>,  <32.013275, 33.591152, 44.561596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908915, 33.927494, 44.751289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243660, -0.532704, 0.810466,
		0.934109, 0.095901, 0.343866,
		-0.260903, 0.840850, 0.474237,
		31.830645, 34.179749, 44.893562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378620, 33.668327, 45.245491>,  <32.013275, 33.591152, 44.561596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378620, 33.668327, 45.245491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053501, 33.898804, 45.279816>,  <31.858429, 34.037090, 45.300411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053501, 33.898804, 45.279816>,  <32.378620, 33.668327, 45.245491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053501, 33.898804, 45.279816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139858, -0.336012, 0.931416,
		0.565507, 0.745051, 0.353695,
		-0.812799, 0.576189, 0.085816,
		31.809662, 34.071659, 45.305561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913677, 33.866398, 45.785732>,  <32.378620, 33.668327, 45.245491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913677, 33.866398, 45.785732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.188934, 33.576168, 45.785030>,  <33.354088, 33.402031, 45.784607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.188934, 33.576168, 45.785030>,  <32.913677, 33.866398, 45.785732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188934, 33.576168, 45.785030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535578, 0.509585, -0.673409,
		0.489501, 0.462463, 0.739268,
		0.688146, -0.725570, -0.001757,
		33.395378, 33.358498, 45.784504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504128, 34.214703, 45.886528>,  <32.913677, 33.866398, 45.785732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504128, 34.214703, 45.886528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.644268, 33.880405, 45.717392>,  <33.728352, 33.679829, 45.615910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.644268, 33.880405, 45.717392>,  <33.504128, 34.214703, 45.886528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644268, 33.880405, 45.717392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569024, 0.548511, -0.612655,
		0.743951, -0.025958, 0.667729,
		0.350354, -0.835740, -0.422836,
		33.749374, 33.629684, 45.590542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155151, 34.295631, 45.812626>,  <33.504128, 34.214703, 45.886528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155151, 34.295631, 45.812626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.092854, 34.008450, 45.541248>,  <34.055477, 33.836140, 45.378422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.092854, 34.008450, 45.541248>,  <34.155151, 34.295631, 45.812626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092854, 34.008450, 45.541248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633403, 0.454447, -0.626321,
		0.757987, -0.527271, 0.383980,
		-0.155742, -0.717958, -0.678440,
		34.046131, 33.793064, 45.337715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789814, 34.073864, 45.655346>,  <34.155151, 34.295631, 45.812626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789814, 34.073864, 45.655346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.561836, 33.945099, 45.352947>,  <34.425049, 33.867840, 45.171509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.561836, 33.945099, 45.352947>,  <34.789814, 34.073864, 45.655346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561836, 33.945099, 45.352947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605235, 0.457812, -0.651229,
		0.555743, -0.828722, -0.066095,
		-0.569947, -0.321913, -0.755998,
		34.390854, 33.848526, 45.126148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281826, 34.104748, 45.152699>,  <34.789814, 34.073864, 45.655346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281826, 34.104748, 45.152699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.955929, 34.031242, 44.932724>,  <34.760391, 33.987141, 44.800739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.955929, 34.031242, 44.932724>,  <35.281826, 34.104748, 45.152699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955929, 34.031242, 44.932724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521784, 0.181258, -0.833598,
		0.252865, -0.966114, -0.051794,
		-0.814739, -0.183762, -0.549937,
		34.711506, 33.976116, 44.767742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478333, 33.598965, 44.553123>,  <35.281826, 34.104748, 45.152699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478333, 33.598965, 44.553123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.159138, 33.824966, 44.469231>,  <34.967621, 33.960567, 44.418896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.159138, 33.824966, 44.469231>,  <35.478333, 33.598965, 44.553123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159138, 33.824966, 44.469231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398892, 0.234285, -0.886564,
		-0.451773, -0.791128, -0.412332,
		-0.797989, 0.565002, -0.209731,
		34.919743, 33.994469, 44.406311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377724, 33.416576, 43.827271>,  <35.478333, 33.598965, 44.553123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377724, 33.416576, 43.827271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.192112, 33.762577, 43.903637>,  <35.080746, 33.970177, 43.949459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.192112, 33.762577, 43.903637>,  <35.377724, 33.416576, 43.827271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192112, 33.762577, 43.903637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333945, 0.370449, -0.866746,
		-0.820463, -0.338435, -0.460761,
		-0.464026, 0.865002, 0.190921,
		35.052902, 34.022079, 43.960915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348293, 33.814873, 43.173508>,  <35.377724, 33.416576, 43.827271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348293, 33.814873, 43.173508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.244251, 34.133198, 43.392242>,  <35.181828, 34.324192, 43.523483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.244251, 34.133198, 43.392242>,  <35.348293, 33.814873, 43.173508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244251, 34.133198, 43.392242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314370, 0.605264, -0.731319,
		-0.912973, -0.018309, -0.407610,
		-0.260101, 0.795815, 0.546834,
		35.166222, 34.371941, 43.556293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088669, 34.339264, 42.635818>,  <35.348293, 33.814873, 43.173508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088669, 34.339264, 42.635818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.222893, 34.507843, 42.972813>,  <35.303429, 34.608990, 43.175007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.222893, 34.507843, 42.972813>,  <35.088669, 34.339264, 42.635818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222893, 34.507843, 42.972813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518776, 0.663826, -0.538708,
		-0.786301, 0.617830, 0.004116,
		0.335563, 0.421452, 0.842482,
		35.323563, 34.634277, 43.225559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967037, 35.146912, 42.378521>,  <35.088669, 34.339264, 42.635818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967037, 35.146912, 42.378521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.215591, 35.066181, 42.681347>,  <35.364723, 35.017742, 42.863041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.215591, 35.066181, 42.681347>,  <34.967037, 35.146912, 42.378521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215591, 35.066181, 42.681347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672586, 0.633019, -0.383295,
		-0.401879, 0.747365, 0.529092,
		0.621386, -0.201822, 0.757065,
		35.402008, 35.005634, 42.908466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329170, 35.817593, 42.469875>,  <34.967037, 35.146912, 42.378521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329170, 35.817593, 42.469875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549080, 35.550873, 42.671124>,  <35.681026, 35.390842, 42.791874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549080, 35.550873, 42.671124>,  <35.329170, 35.817593, 42.469875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549080, 35.550873, 42.671124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829544, 0.506505, -0.235180,
		-0.098018, 0.546658, 0.831599,
		0.549773, -0.666796, 0.503123,
		35.714012, 35.350834, 42.822060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837925, 36.207897, 42.837456>,  <35.329170, 35.817593, 42.469875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837925, 36.207897, 42.837456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030048, 35.857491, 42.820019>,  <36.145321, 35.647247, 42.809555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030048, 35.857491, 42.820019>,  <35.837925, 36.207897, 42.837456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030048, 35.857491, 42.820019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831833, 0.470713, -0.294080,
		0.278139, 0.104986, 0.954786,
		0.480305, -0.876018, -0.043593,
		36.174141, 35.594685, 42.806942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442955, 36.267433, 43.282837>,  <35.837925, 36.207897, 42.837456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442955, 36.267433, 43.282837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.510380, 35.967270, 43.027187>,  <36.550835, 35.787174, 42.873798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.510380, 35.967270, 43.027187>,  <36.442955, 36.267433, 43.282837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510380, 35.967270, 43.027187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841715, 0.446996, -0.302836,
		0.512936, -0.486915, 0.706972,
		0.168559, -0.750405, -0.639125,
		36.560947, 35.742149, 42.835449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051991, 36.320244, 43.235973>,  <36.442955, 36.267433, 43.282837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051991, 36.320244, 43.235973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012440, 36.067745, 42.928272>,  <36.988708, 35.916245, 42.743652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012440, 36.067745, 42.928272>,  <37.051991, 36.320244, 43.235973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012440, 36.067745, 42.928272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828292, 0.376225, -0.415194,
		0.551502, -0.678221, 0.485655,
		-0.098878, -0.631245, -0.769255,
		36.982777, 35.878372, 42.697495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.429277, 36.661915, 43.397011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.037752, 36.720715, 43.454033>,  <26.802837, 36.755993, 43.488247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.037752, 36.720715, 43.454033>,  <27.429277, 36.661915, 43.397011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037752, 36.720715, 43.454033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155389, -0.079831, -0.984622,
		-0.133360, -0.985909, 0.100982,
		-0.978810, 0.147001, 0.142553,
		26.744108, 36.764812, 43.496799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109657, 36.236996, 42.945988>,  <27.429277, 36.661915, 43.397011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109657, 36.236996, 42.945988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857771, 36.530090, 43.049179>,  <26.706640, 36.705948, 43.111095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857771, 36.530090, 43.049179>,  <27.109657, 36.236996, 42.945988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857771, 36.530090, 43.049179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178004, 0.187154, -0.966068,
		-0.756158, -0.654269, 0.012577,
		-0.629714, 0.732738, 0.257981,
		26.668856, 36.749912, 43.126572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405182, 36.010124, 42.824516>,  <27.109657, 36.236996, 42.945988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405182, 36.010124, 42.824516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.444237, 36.407177, 42.795822>,  <26.467669, 36.645409, 42.778606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.444237, 36.407177, 42.795822>,  <26.405182, 36.010124, 42.824516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444237, 36.407177, 42.795822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332653, -0.035385, -0.942385,
		-0.937981, 0.115874, 0.326748,
		0.097636, 0.992634, -0.071737,
		26.473528, 36.704967, 42.774300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813137, 36.152691, 42.430279>,  <26.405182, 36.010124, 42.824516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813137, 36.152691, 42.430279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048449, 36.474941, 42.402275>,  <26.189636, 36.668289, 42.385471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048449, 36.474941, 42.402275>,  <25.813137, 36.152691, 42.430279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048449, 36.474941, 42.402275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122528, 0.003227, -0.992460,
		-0.799321, 0.592421, 0.100610,
		0.588279, 0.805622, -0.070009,
		26.224932, 36.716629, 42.381271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454113, 36.463745, 41.939800>,  <25.813137, 36.152691, 42.430279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454113, 36.463745, 41.939800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.792238, 36.677429, 41.936600>,  <25.995113, 36.805641, 41.934681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.792238, 36.677429, 41.936600>,  <25.454113, 36.463745, 41.939800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792238, 36.677429, 41.936600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047034, -0.089321, -0.994892,
		-0.532199, 0.840618, -0.100630,
		0.845312, 0.534214, -0.007999,
		26.045832, 36.837692, 41.934200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315020, 36.946953, 41.453575>,  <25.454113, 36.463745, 41.939800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315020, 36.946953, 41.453575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.713772, 36.924080, 41.475323>,  <25.953024, 36.910355, 41.488373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.713772, 36.924080, 41.475323>,  <25.315020, 36.946953, 41.453575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713772, 36.924080, 41.475323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041622, -0.204302, -0.978023,
		0.067034, 0.977236, -0.201285,
		0.996882, -0.057183, 0.054370,
		26.012836, 36.906925, 41.491634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491665, 37.304714, 40.872162>,  <25.315020, 36.946953, 41.453575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491665, 37.304714, 40.872162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.814625, 37.092205, 40.974808>,  <26.008402, 36.964699, 41.036396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.814625, 37.092205, 40.974808>,  <25.491665, 37.304714, 40.872162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814625, 37.092205, 40.974808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257201, -0.074495, -0.963482,
		0.530991, 0.843918, 0.076497,
		0.807401, -0.531275, 0.256613,
		26.056845, 36.932823, 41.051792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035585, 37.677608, 40.581924>,  <25.491665, 37.304714, 40.872162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035585, 37.677608, 40.581924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.139616, 37.296917, 40.647121>,  <26.202034, 37.068501, 40.686241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.139616, 37.296917, 40.647121>,  <26.035585, 37.677608, 40.581924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139616, 37.296917, 40.647121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101861, -0.140821, -0.984781,
		0.960200, 0.272723, 0.060320,
		0.260078, -0.951731, 0.162996,
		26.217640, 37.011398, 40.696022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676508, 37.542751, 40.141006>,  <26.035585, 37.677608, 40.581924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676508, 37.542751, 40.141006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.512589, 37.186333, 40.219078>,  <26.414236, 36.972481, 40.265923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.512589, 37.186333, 40.219078>,  <26.676508, 37.542751, 40.141006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512589, 37.186333, 40.219078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302326, -0.334556, -0.892565,
		0.860618, -0.306763, 0.406488,
		-0.409799, -0.891049, 0.195182,
		26.389648, 36.919018, 40.277634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044666, 37.159023, 39.761879>,  <26.676508, 37.542751, 40.141006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044666, 37.159023, 39.761879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.764090, 36.885616, 39.842667>,  <26.595743, 36.721573, 39.891140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.764090, 36.885616, 39.842667>,  <27.044666, 37.159023, 39.761879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764090, 36.885616, 39.842667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242662, -0.495473, -0.834040,
		0.670148, -0.536018, 0.513407,
		-0.701440, -0.683514, 0.201969,
		26.553658, 36.680561, 39.903255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361645, 36.478649, 39.619144>,  <27.044666, 37.159023, 39.761879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361645, 36.478649, 39.619144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.967312, 36.411720, 39.614491>,  <26.730711, 36.371563, 39.611698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.967312, 36.411720, 39.614491>,  <27.361645, 36.478649, 39.619144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967312, 36.411720, 39.614491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115425, -0.626460, -0.770860,
		0.121697, -0.761282, 0.636898,
		-0.985833, -0.167325, -0.011633,
		26.671562, 36.361523, 39.611000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225101, 35.709347, 39.546185>,  <27.361645, 36.478649, 39.619144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225101, 35.709347, 39.546185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.901423, 35.916447, 39.435097>,  <26.707214, 36.040707, 39.368443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.901423, 35.916447, 39.435097>,  <27.225101, 35.709347, 39.546185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901423, 35.916447, 39.435097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063919, -0.547458, -0.834388,
		-0.584049, -0.657433, 0.476096,
		-0.809197, 0.517756, -0.277720,
		26.658663, 36.071774, 39.351780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719131, 35.235439, 39.290337>,  <27.225101, 35.709347, 39.546185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719131, 35.235439, 39.290337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596769, 35.583687, 39.136219>,  <26.523352, 35.792633, 39.043747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596769, 35.583687, 39.136219>,  <26.719131, 35.235439, 39.290337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596769, 35.583687, 39.136219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131945, -0.439557, -0.888470,
		-0.942874, -0.220950, 0.249336,
		-0.305905, 0.870615, -0.385294,
		26.504997, 35.844872, 39.020630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000805, 35.147739, 38.908222>,  <26.719131, 35.235439, 39.290337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000805, 35.147739, 38.908222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.186876, 35.460602, 38.742405>,  <26.298519, 35.648319, 38.642914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.186876, 35.460602, 38.742405>,  <26.000805, 35.147739, 38.908222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186876, 35.460602, 38.742405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180758, -0.374499, -0.909438,
		-0.866566, 0.497982, -0.032828,
		0.465177, 0.782154, -0.414543,
		26.326429, 35.695248, 38.618042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650362, 35.202648, 38.351929>,  <26.000805, 35.147739, 38.908222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650362, 35.202648, 38.351929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.977749, 35.418415, 38.272789>,  <26.174181, 35.547874, 38.225307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.977749, 35.418415, 38.272789>,  <25.650362, 35.202648, 38.351929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977749, 35.418415, 38.272789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023748, -0.312292, -0.949689,
		-0.574062, 0.781988, -0.242791,
		0.818468, 0.539414, -0.197845,
		26.223289, 35.580238, 38.213436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476259, 35.519318, 37.776638>,  <25.650362, 35.202648, 38.351929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476259, 35.519318, 37.776638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.873234, 35.562069, 37.800804>,  <26.111418, 35.587719, 37.815304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.873234, 35.562069, 37.800804>,  <25.476259, 35.519318, 37.776638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873234, 35.562069, 37.800804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075551, -0.143759, -0.986724,
		-0.096778, 0.983824, -0.150747,
		0.992434, 0.106882, 0.060417,
		26.170963, 35.594135, 37.818928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659592, 35.945564, 37.172363>,  <25.476259, 35.519318, 37.776638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659592, 35.945564, 37.172363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.998302, 35.761658, 37.279381>,  <26.201529, 35.651314, 37.343590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.998302, 35.761658, 37.279381>,  <25.659592, 35.945564, 37.172363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998302, 35.761658, 37.279381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207083, -0.178363, -0.961927,
		0.489986, 0.869941, -0.055823,
		0.846776, -0.459771, 0.267545,
		26.252335, 35.623726, 37.359646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197124, 36.230385, 36.710247>,  <25.659592, 35.945564, 37.172363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197124, 36.230385, 36.710247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.354181, 35.885433, 36.838081>,  <26.448416, 35.678463, 36.914783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.354181, 35.885433, 36.838081>,  <26.197124, 36.230385, 36.710247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354181, 35.885433, 36.838081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292718, -0.212240, -0.932347,
		0.871866, 0.459625, 0.169100,
		0.392640, -0.862380, 0.319585,
		26.471973, 35.626720, 36.933956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928747, 36.227257, 36.462643>,  <26.197124, 36.230385, 36.710247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928747, 36.227257, 36.462643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862692, 35.841022, 36.543018>,  <26.823059, 35.609283, 36.591244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862692, 35.841022, 36.543018>,  <26.928747, 36.227257, 36.462643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862692, 35.841022, 36.543018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381173, -0.250386, -0.889952,
		0.909635, -0.070375, 0.409403,
		-0.165140, -0.965585, 0.200935,
		26.813150, 35.551346, 36.603298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489456, 35.901157, 36.237659>,  <26.928747, 36.227257, 36.462643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489456, 35.901157, 36.237659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.202034, 35.623428, 36.253628>,  <27.029581, 35.456791, 36.263210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.202034, 35.623428, 36.253628>,  <27.489456, 35.901157, 36.237659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202034, 35.623428, 36.253628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294328, -0.355603, -0.887083,
		0.630118, -0.625669, 0.459880,
		-0.718555, -0.694323, 0.039920,
		26.986467, 35.415131, 36.265602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448065, 35.275436, 35.836555>,  <27.489456, 35.901157, 36.237659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448065, 35.275436, 35.836555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.692200, 35.545849, 35.671402>,  <27.838680, 35.708096, 35.572308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.692200, 35.545849, 35.671402>,  <27.448065, 35.275436, 35.836555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692200, 35.545849, 35.671402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515266, 0.057080, 0.855128,
		0.601658, -0.734661, -0.313497,
		0.610335, 0.676028, -0.412888,
		27.875299, 35.748657, 35.547535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204840, 35.117966, 36.110283>,  <27.448065, 35.275436, 35.836555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204840, 35.117966, 36.110283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257193, 35.486622, 35.964165>,  <28.288605, 35.707817, 35.876495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257193, 35.486622, 35.964165>,  <28.204840, 35.117966, 36.110283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257193, 35.486622, 35.964165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632611, 0.206061, 0.746553,
		0.763330, -0.328802, -0.556073,
		0.130883, 0.921644, -0.365296,
		28.296457, 35.763115, 35.854576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927130, 35.176815, 36.064083>,  <28.204840, 35.117966, 36.110283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927130, 35.176815, 36.064083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.773174, 35.543949, 36.102955>,  <28.680801, 35.764229, 36.126278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.773174, 35.543949, 36.102955>,  <28.927130, 35.176815, 36.064083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773174, 35.543949, 36.102955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616040, 0.177070, 0.767555,
		0.687280, 0.355289, -0.633574,
		-0.384891, 0.917832, 0.097175,
		28.657707, 35.819298, 36.132107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537439, 35.553028, 36.114582>,  <28.927130, 35.176815, 36.064083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537439, 35.553028, 36.114582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.233772, 35.771492, 36.256214>,  <29.051573, 35.902569, 36.341194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.233772, 35.771492, 36.256214>,  <29.537439, 35.553028, 36.114582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233772, 35.771492, 36.256214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553010, 0.254305, 0.793417,
		0.343288, 0.798146, -0.495092,
		-0.759166, 0.546161, 0.354083,
		29.006021, 35.935341, 36.362438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692932, 36.236168, 36.296501>,  <29.537439, 35.553028, 36.114582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692932, 36.236168, 36.296501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.365519, 36.198635, 36.523197>,  <29.169069, 36.176117, 36.659214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.365519, 36.198635, 36.523197>,  <29.692932, 36.236168, 36.296501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365519, 36.198635, 36.523197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536420, 0.228180, 0.812519,
		-0.205556, 0.969087, -0.136443,
		-0.818536, -0.093828, 0.566741,
		29.119957, 36.170486, 36.693218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876320, 36.665623, 36.870937>,  <29.692932, 36.236168, 36.296501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876320, 36.665623, 36.870937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.559727, 36.466160, 37.012299>,  <29.369770, 36.346481, 37.097115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.559727, 36.466160, 37.012299>,  <29.876320, 36.665623, 36.870937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559727, 36.466160, 37.012299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412907, -0.009952, 0.910719,
		-0.450621, 0.866741, 0.213777,
		-0.791485, -0.498659, 0.353399,
		29.322281, 36.316563, 37.118317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539682, 37.177746, 37.442341>,  <29.876320, 36.665623, 36.870937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539682, 37.177746, 37.442341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429237, 36.797459, 37.498760>,  <29.362970, 36.569286, 37.532612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429237, 36.797459, 37.498760>,  <29.539682, 37.177746, 37.442341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429237, 36.797459, 37.498760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285421, 0.059025, 0.956583,
		-0.917768, 0.304382, 0.255058,
		-0.276112, -0.950720, 0.141048,
		29.346403, 36.512241, 37.541073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231998, 37.138882, 38.106049>,  <29.539682, 37.177746, 37.442341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231998, 37.138882, 38.106049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328510, 36.756702, 38.038052>,  <29.386417, 36.527393, 37.997253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328510, 36.756702, 38.038052>,  <29.231998, 37.138882, 38.106049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328510, 36.756702, 38.038052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285981, -0.097388, 0.953274,
		-0.927361, -0.278621, 0.249743,
		0.241280, -0.955451, -0.169995,
		29.400894, 36.470066, 37.987053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074989, 36.836983, 38.677723>,  <29.231998, 37.138882, 38.106049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074989, 36.836983, 38.677723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.295328, 36.541206, 38.522907>,  <29.427532, 36.363743, 38.430019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.295328, 36.541206, 38.522907>,  <29.074989, 36.836983, 38.677723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295328, 36.541206, 38.522907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207503, -0.327838, 0.921664,
		-0.808399, -0.588009, -0.027153,
		0.550849, -0.739438, -0.387038,
		29.460583, 36.319374, 38.406796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857187, 36.311932, 39.010120>,  <29.074989, 36.836983, 38.677723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857187, 36.311932, 39.010120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215807, 36.200203, 38.872608>,  <29.430979, 36.133167, 38.790100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215807, 36.200203, 38.872608>,  <28.857187, 36.311932, 39.010120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215807, 36.200203, 38.872608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315411, -0.142337, 0.938220,
		-0.310995, -0.949590, -0.039511,
		0.896548, -0.279319, -0.343777,
		29.484772, 36.116409, 38.769474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972809, 35.742905, 39.452660>,  <28.857187, 36.311932, 39.010120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972809, 35.742905, 39.452660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323849, 35.880470, 39.319069>,  <29.534473, 35.963009, 39.238914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323849, 35.880470, 39.319069>,  <28.972809, 35.742905, 39.452660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323849, 35.880470, 39.319069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370478, -0.044411, 0.927779,
		0.304245, -0.937950, -0.166388,
		0.877600, 0.343915, -0.333979,
		29.587128, 35.983646, 39.218876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468693, 35.335747, 39.688450>,  <28.972809, 35.742905, 39.452660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468693, 35.335747, 39.688450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682619, 35.668163, 39.627338>,  <29.810974, 35.867615, 39.590672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682619, 35.668163, 39.627338>,  <29.468693, 35.335747, 39.688450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682619, 35.668163, 39.627338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473486, -0.144991, 0.868785,
		0.699845, -0.536980, -0.471030,
		0.534816, 0.831041, -0.152782,
		29.843063, 35.917477, 39.581505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051355, 35.182457, 39.978973>,  <29.468693, 35.335747, 39.688450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051355, 35.182457, 39.978973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.107458, 35.575264, 39.928417>,  <30.141121, 35.810947, 39.898083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.107458, 35.575264, 39.928417>,  <30.051355, 35.182457, 39.978973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107458, 35.575264, 39.928417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394943, 0.061565, 0.916641,
		0.907936, -0.178483, -0.379205,
		0.140259, 0.982015, -0.126387,
		30.149536, 35.869869, 39.890503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777365, 35.393616, 40.176052>,  <30.051355, 35.182457, 39.978973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777365, 35.393616, 40.176052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537418, 35.711681, 40.211536>,  <30.393450, 35.902523, 40.232826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537418, 35.711681, 40.211536>,  <30.777365, 35.393616, 40.176052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537418, 35.711681, 40.211536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294752, 0.116547, 0.948440,
		0.743828, 0.595087, -0.304290,
		-0.599868, 0.795166, 0.088712,
		30.357458, 35.950230, 40.238152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183027, 35.774265, 40.574867>,  <30.777365, 35.393616, 40.176052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183027, 35.774265, 40.574867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809790, 35.911560, 40.617798>,  <30.585846, 35.993938, 40.643555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809790, 35.911560, 40.617798>,  <31.183027, 35.774265, 40.574867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809790, 35.911560, 40.617798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133664, 0.053946, 0.989557,
		0.333865, 0.937698, -0.096216,
		-0.933096, 0.343239, 0.107326,
		30.529861, 36.014530, 40.649994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282305, 36.347553, 40.959904>,  <31.183027, 35.774265, 40.574867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282305, 36.347553, 40.959904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888910, 36.293617, 41.008190>,  <30.652874, 36.261257, 41.037163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888910, 36.293617, 41.008190>,  <31.282305, 36.347553, 40.959904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888910, 36.293617, 41.008190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048616, 0.445677, 0.893873,
		-0.174330, 0.884980, -0.431762,
		-0.983487, -0.134838, 0.120719,
		30.593864, 36.253166, 41.044407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067297, 36.861141, 41.300991>,  <31.282305, 36.347553, 40.959904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067297, 36.861141, 41.300991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754848, 36.618633, 41.360699>,  <30.567379, 36.473129, 41.396523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754848, 36.618633, 41.360699>,  <31.067297, 36.861141, 41.300991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754848, 36.618633, 41.360699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012833, 0.223433, 0.974635,
		-0.624246, 0.763225, -0.166748,
		-0.781122, -0.606272, 0.149272,
		30.520512, 36.436752, 41.405479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509518, 37.293957, 41.558735>,  <31.067297, 36.861141, 41.300991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509518, 37.293957, 41.558735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462229, 36.913544, 41.672977>,  <30.433855, 36.685295, 41.741524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462229, 36.913544, 41.672977>,  <30.509518, 37.293957, 41.558735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462229, 36.913544, 41.672977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040502, 0.291998, 0.955561,
		-0.992161, 0.101402, -0.073039,
		-0.118223, -0.951028, 0.285602,
		30.426762, 36.628235, 41.758659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953762, 37.295479, 41.955814>,  <30.509518, 37.293957, 41.558735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953762, 37.295479, 41.955814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.096558, 36.935173, 42.054756>,  <30.182234, 36.718990, 42.114120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.096558, 36.935173, 42.054756>,  <29.953762, 37.295479, 41.955814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096558, 36.935173, 42.054756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124535, 0.216543, 0.968298,
		-0.925770, -0.376475, -0.034873,
		0.356988, -0.900764, 0.247353,
		30.203653, 36.664944, 42.128963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535704, 37.030914, 42.570538>,  <29.953762, 37.295479, 41.955814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535704, 37.030914, 42.570538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882523, 36.831684, 42.575317>,  <30.090614, 36.712147, 42.578186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882523, 36.831684, 42.575317>,  <29.535704, 37.030914, 42.570538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882523, 36.831684, 42.575317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023109, 0.064159, 0.997672,
		-0.497687, -0.864754, 0.067139,
		0.867049, -0.498080, 0.011948,
		30.142637, 36.682259, 42.578903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489136, 36.738129, 43.186993>,  <29.535704, 37.030914, 42.570538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489136, 36.738129, 43.186993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.874340, 36.690720, 43.090199>,  <30.105463, 36.662273, 43.032124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.874340, 36.690720, 43.090199>,  <29.489136, 36.738129, 43.186993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874340, 36.690720, 43.090199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254951, 0.110147, 0.960660,
		-0.087210, -0.986823, 0.136291,
		0.963013, -0.118527, -0.241986,
		30.163244, 36.655163, 43.017601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844629, 36.103500, 43.612358>,  <29.489136, 36.738129, 43.186993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844629, 36.103500, 43.612358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123718, 36.361801, 43.488297>,  <30.291172, 36.516781, 43.413860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123718, 36.361801, 43.488297>,  <29.844629, 36.103500, 43.612358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123718, 36.361801, 43.488297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152517, 0.289123, 0.945064,
		0.699947, -0.706694, 0.103240,
		0.697720, 0.645749, -0.310153,
		30.333035, 36.555527, 43.395252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.226734, 31.362732, 45.616581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.988121, 31.074280, 45.475655>,  <34.844955, 30.901209, 45.391098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.988121, 31.074280, 45.475655>,  <35.226734, 31.362732, 45.616581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988121, 31.074280, 45.475655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229608, -0.267285, 0.935863,
		-0.769047, 0.639163, -0.006134,
		-0.596529, -0.721131, -0.352311,
		34.809162, 30.857941, 45.369961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483128, 31.416407, 45.907051>,  <35.226734, 31.362732, 45.616581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483128, 31.416407, 45.907051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489155, 31.041323, 45.768215>,  <34.492771, 30.816273, 45.684914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489155, 31.041323, 45.768215>,  <34.483128, 31.416407, 45.907051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489155, 31.041323, 45.768215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458360, -0.314984, 0.831079,
		-0.888639, 0.146571, -0.434554,
		0.015066, -0.937711, -0.347090,
		34.493675, 30.760010, 45.664089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833004, 31.206059, 46.050240>,  <34.483128, 31.416407, 45.907051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833004, 31.206059, 46.050240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040272, 30.868013, 45.997654>,  <34.164635, 30.665186, 45.966103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040272, 30.868013, 45.997654>,  <33.833004, 31.206059, 46.050240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040272, 30.868013, 45.997654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447845, -0.399058, 0.800117,
		-0.728652, -0.355720, -0.585260,
		0.518171, -0.845113, -0.131467,
		34.195724, 30.614479, 45.958214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391014, 30.704069, 46.337662>,  <33.833004, 31.206059, 46.050240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391014, 30.704069, 46.337662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714859, 30.471325, 46.306763>,  <33.909164, 30.331678, 46.288223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714859, 30.471325, 46.306763>,  <33.391014, 30.704069, 46.337662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714859, 30.471325, 46.306763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372626, -0.611184, 0.698286,
		-0.453518, -0.536557, -0.711638,
		0.809612, -0.581860, -0.077248,
		33.957745, 30.296766, 46.283588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169750, 29.906300, 46.243912>,  <33.391014, 30.704069, 46.337662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169750, 29.906300, 46.243912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520092, 29.981754, 46.421581>,  <33.730297, 30.027027, 46.528183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520092, 29.981754, 46.421581>,  <33.169750, 29.906300, 46.243912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520092, 29.981754, 46.421581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284927, -0.540725, 0.791475,
		0.389478, -0.819776, -0.419850,
		0.875856, 0.188636, 0.444177,
		33.782848, 30.038345, 46.554836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326740, 29.191023, 46.386227>,  <33.169750, 29.906300, 46.243912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326740, 29.191023, 46.386227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574829, 29.397921, 46.622120>,  <33.723682, 29.522058, 46.763657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574829, 29.397921, 46.622120>,  <33.326740, 29.191023, 46.386227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574829, 29.397921, 46.622120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368839, -0.471208, 0.801199,
		0.692301, -0.714438, -0.101475,
		0.620223, 0.517244, 0.589731,
		33.760895, 29.553093, 46.799038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762966, 28.704023, 46.728428>,  <33.326740, 29.191023, 46.386227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762966, 28.704023, 46.728428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767040, 29.028133, 46.962811>,  <33.769485, 29.222599, 47.103439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767040, 29.028133, 46.962811>,  <33.762966, 28.704023, 46.728428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767040, 29.028133, 46.962811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280122, -0.560216, 0.779545,
		0.959910, -0.172082, 0.221268,
		0.010188, 0.810275, 0.585961,
		33.770096, 29.271215, 47.138599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196167, 28.471388, 47.381870>,  <33.762966, 28.704023, 46.728428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196167, 28.471388, 47.381870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.983498, 28.795149, 47.481628>,  <33.855896, 28.989405, 47.541481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.983498, 28.795149, 47.481628>,  <34.196167, 28.471388, 47.381870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983498, 28.795149, 47.481628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388904, -0.494887, 0.777072,
		0.752384, 0.316156, 0.577896,
		-0.531669, 0.809403, 0.249391,
		33.823997, 29.037970, 47.556446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318241, 28.596363, 48.133942>,  <34.196167, 28.471388, 47.381870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318241, 28.596363, 48.133942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973412, 28.783638, 48.056347>,  <33.766514, 28.896002, 48.009789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973412, 28.783638, 48.056347>,  <34.318241, 28.596363, 48.133942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973412, 28.783638, 48.056347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422225, -0.451827, 0.785861,
		0.280279, 0.759377, 0.587188,
		-0.862073, 0.468186, -0.193990,
		33.714790, 28.924093, 47.998150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060764, 28.887030, 48.796814>,  <34.318241, 28.596363, 48.133942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060764, 28.887030, 48.796814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739204, 28.875349, 48.559196>,  <33.546268, 28.868341, 48.416626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739204, 28.875349, 48.559196>,  <34.060764, 28.887030, 48.796814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739204, 28.875349, 48.559196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552025, -0.335130, 0.763516,
		-0.221376, 0.941719, 0.253293,
		-0.803903, -0.029200, -0.594043,
		33.498032, 28.866589, 48.380985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599041, 29.146404, 49.246876>,  <34.060764, 28.887030, 48.796814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599041, 29.146404, 49.246876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431583, 28.944838, 48.944668>,  <33.331108, 28.823898, 48.763344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431583, 28.944838, 48.944668>,  <33.599041, 29.146404, 49.246876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431583, 28.944838, 48.944668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561952, -0.509789, 0.651403,
		-0.713408, 0.697269, -0.069758,
		-0.418641, -0.503916, -0.755519,
		33.305992, 28.793663, 48.718014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837547, 29.180017, 49.295990>,  <33.599041, 29.146404, 49.246876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837547, 29.180017, 49.295990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915512, 28.839762, 49.100674>,  <32.962292, 28.635609, 48.983486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915512, 28.839762, 49.100674>,  <32.837547, 29.180017, 49.295990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915512, 28.839762, 49.100674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550884, -0.506837, 0.663056,
		-0.811503, 0.139754, -0.567390,
		0.194910, -0.850638, -0.488288,
		32.973984, 28.584570, 48.954185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267174, 28.742371, 49.361225>,  <32.837547, 29.180017, 49.295990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267174, 28.742371, 49.361225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558434, 28.480967, 49.278545>,  <32.733189, 28.324123, 49.228935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558434, 28.480967, 49.278545>,  <32.267174, 28.742371, 49.361225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558434, 28.480967, 49.278545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430639, -0.670799, 0.603803,
		-0.533248, -0.350643, -0.769867,
		0.728146, -0.653512, -0.206702,
		32.776878, 28.284912, 49.216534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001633, 29.120447, 50.037121>,  <32.267174, 28.742371, 49.361225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001633, 29.120447, 50.037121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.715988, 29.370459, 50.163219>,  <31.544601, 29.520466, 50.238880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.715988, 29.370459, 50.163219>,  <32.001633, 29.120447, 50.037121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715988, 29.370459, 50.163219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259437, 0.654570, -0.710092,
		-0.650180, -0.425299, -0.629593,
		-0.714114, 0.625027, 0.315250,
		31.501755, 29.557966, 50.257793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623098, 29.342970, 49.450378>,  <32.001633, 29.120447, 50.037121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623098, 29.342970, 49.450378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.565001, 29.643454, 49.707932>,  <31.530142, 29.823744, 49.862465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.565001, 29.643454, 49.707932>,  <31.623098, 29.342970, 49.450378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565001, 29.643454, 49.707932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136709, 0.659783, -0.738916,
		-0.979905, -0.019300, -0.198527,
		-0.145246, 0.751208, 0.643886,
		31.521427, 29.868816, 49.901096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451521, 29.751787, 49.085415>,  <31.623098, 29.342970, 49.450378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451521, 29.751787, 49.085415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.534410, 29.985756, 49.399082>,  <31.584145, 30.126137, 49.587284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.534410, 29.985756, 49.399082>,  <31.451521, 29.751787, 49.085415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534410, 29.985756, 49.399082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080657, 0.788627, -0.609559,
		-0.974963, 0.189564, 0.116243,
		0.207223, 0.584922, 0.784172,
		31.596577, 30.161232, 49.634335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021927, 30.352383, 49.004406>,  <31.451521, 29.751787, 49.085415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021927, 30.352383, 49.004406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319052, 30.469774, 49.245106>,  <31.497328, 30.540209, 49.389526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319052, 30.469774, 49.245106>,  <31.021927, 30.352383, 49.004406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319052, 30.469774, 49.245106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162712, 0.792717, -0.587473,
		-0.649425, 0.534295, 0.541089,
		0.742814, 0.293478, 0.601746,
		31.541897, 30.557817, 49.425629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053972, 31.016527, 48.966743>,  <31.021927, 30.352383, 49.004406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053972, 31.016527, 48.966743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.423552, 30.942520, 49.100662>,  <31.645300, 30.898115, 49.181015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.423552, 30.942520, 49.100662>,  <31.053972, 31.016527, 48.966743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423552, 30.942520, 49.100662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368631, 0.664370, -0.650172,
		-0.102136, 0.724141, 0.682047,
		0.923948, -0.185018, 0.334797,
		31.700735, 30.887014, 49.201103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389727, 31.702988, 49.184845>,  <31.053972, 31.016527, 48.966743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389727, 31.702988, 49.184845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676304, 31.437479, 49.098946>,  <31.848249, 31.278173, 49.047405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676304, 31.437479, 49.098946>,  <31.389727, 31.702988, 49.184845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676304, 31.437479, 49.098946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413149, 0.651714, -0.636064,
		0.562155, 0.366980, 0.741152,
		0.716442, -0.663773, -0.214746,
		31.891237, 31.238348, 49.034523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070335, 32.145016, 49.311611>,  <31.389727, 31.702988, 49.184845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070335, 32.145016, 49.311611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193672, 31.822178, 49.110207>,  <32.267673, 31.628475, 48.989365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193672, 31.822178, 49.110207>,  <32.070335, 32.145016, 49.311611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193672, 31.822178, 49.110207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445232, 0.590189, -0.673384,
		0.840649, -0.016542, 0.541327,
		0.308346, -0.807096, -0.503507,
		32.286175, 31.580050, 48.959156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806820, 32.233490, 49.106853>,  <32.070335, 32.145016, 49.311611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806820, 32.233490, 49.106853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683754, 31.965820, 48.836281>,  <32.609917, 31.805220, 48.673939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683754, 31.965820, 48.836281>,  <32.806820, 32.233490, 49.106853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683754, 31.965820, 48.836281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498778, 0.491984, -0.713564,
		0.810288, -0.556923, 0.182404,
		-0.307660, -0.669170, -0.676429,
		32.591457, 31.765070, 48.633350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355328, 32.141758, 48.632515>,  <32.806820, 32.233490, 49.106853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355328, 32.141758, 48.632515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033157, 32.011944, 48.434132>,  <32.839855, 31.934057, 48.315102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033157, 32.011944, 48.434132>,  <33.355328, 32.141758, 48.632515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033157, 32.011944, 48.434132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358794, 0.399069, -0.843807,
		0.471761, -0.857569, -0.204981,
		-0.805424, -0.324530, -0.495956,
		32.791531, 31.914585, 48.285343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639744, 31.702732, 48.122555>,  <33.355328, 32.141758, 48.632515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639744, 31.702732, 48.122555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279068, 31.804499, 47.982716>,  <33.062660, 31.865559, 47.898811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279068, 31.804499, 47.982716>,  <33.639744, 31.702732, 48.122555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279068, 31.804499, 47.982716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412515, 0.263958, -0.871870,
		-0.129537, -0.930376, -0.342960,
		-0.901694, 0.254416, -0.349602,
		33.008560, 31.880823, 47.877834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577068, 31.366329, 47.430725>,  <33.639744, 31.702732, 48.122555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577068, 31.366329, 47.430725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351486, 31.694141, 47.471378>,  <33.216137, 31.890829, 47.495770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351486, 31.694141, 47.471378>,  <33.577068, 31.366329, 47.430725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351486, 31.694141, 47.471378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326394, 0.334253, -0.884162,
		-0.758569, -0.465451, -0.455992,
		-0.563951, 0.819530, 0.101634,
		33.182301, 31.940001, 47.501869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369968, 31.499300, 46.785290>,  <33.577068, 31.366329, 47.430725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369968, 31.499300, 46.785290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301876, 31.846300, 46.972252>,  <33.261021, 32.054501, 47.084431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301876, 31.846300, 46.972252>,  <33.369968, 31.499300, 46.785290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301876, 31.846300, 46.972252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129241, 0.489888, -0.862152,
		-0.976893, -0.086354, -0.195509,
		-0.170228, 0.867498, 0.467408,
		33.250809, 32.106548, 47.112473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890953, 31.816612, 46.237804>,  <33.369968, 31.499300, 46.785290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890953, 31.816612, 46.237804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068043, 32.081245, 46.479897>,  <33.174297, 32.240025, 46.625153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068043, 32.081245, 46.479897>,  <32.890953, 31.816612, 46.237804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068043, 32.081245, 46.479897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114301, 0.627834, -0.769909,
		-0.889341, 0.410038, 0.202340,
		0.442728, 0.661584, 0.605226,
		33.200863, 32.279720, 46.661465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660454, 32.441151, 45.922619>,  <32.890953, 31.816612, 46.237804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660454, 32.441151, 45.922619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919895, 32.575104, 46.196018>,  <33.075558, 32.655476, 46.360058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919895, 32.575104, 46.196018>,  <32.660454, 32.441151, 45.922619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919895, 32.575104, 46.196018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265453, 0.742097, -0.615489,
		-0.713340, 0.580643, 0.392428,
		0.648599, 0.334882, 0.683501,
		33.114475, 32.675568, 46.401070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513226, 33.097763, 45.875420>,  <32.660454, 32.441151, 45.922619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513226, 33.097763, 45.875420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893002, 33.035992, 45.984753>,  <33.120869, 32.998928, 46.050350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893002, 33.035992, 45.984753>,  <32.513226, 33.097763, 45.875420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893002, 33.035992, 45.984753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303959, 0.669966, -0.677315,
		-0.078526, 0.726153, 0.683034,
		0.949443, -0.154427, 0.273331,
		33.177834, 32.989662, 46.066753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206589, 33.663010, 46.045460>,  <32.513226, 33.097763, 45.875420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206589, 33.663010, 46.045460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878839, 33.851181, 45.914413>,  <31.682190, 33.964085, 45.835785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878839, 33.851181, 45.914413>,  <32.206589, 33.663010, 46.045460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878839, 33.851181, 45.914413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516051, -0.356406, 0.778888,
		0.249649, 0.807262, 0.534794,
		-0.819370, 0.470429, -0.327612,
		31.633028, 33.992310, 45.816132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818211, 34.033325, 46.628365>,  <32.206589, 33.663010, 46.045460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818211, 34.033325, 46.628365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.563087, 33.955368, 46.330315>,  <31.410013, 33.908592, 46.151485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.563087, 33.955368, 46.330315>,  <31.818211, 34.033325, 46.628365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563087, 33.955368, 46.330315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654791, -0.372172, 0.657827,
		-0.405523, 0.907472, 0.109759,
		-0.637808, -0.194895, -0.745129,
		31.371744, 33.896900, 46.106777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225130, 34.150124, 46.887283>,  <31.818211, 34.033325, 46.628365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225130, 34.150124, 46.887283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.131199, 33.911213, 46.580528>,  <31.074841, 33.767868, 46.396477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.131199, 33.911213, 46.580528>,  <31.225130, 34.150124, 46.887283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131199, 33.911213, 46.580528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618342, -0.516949, 0.591960,
		-0.750006, 0.613208, -0.247926,
		-0.234829, -0.597276, -0.766887,
		31.060751, 33.732029, 46.350464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476263, 34.138519, 46.947525>,  <31.225130, 34.150124, 46.887283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476263, 34.138519, 46.947525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.576628, 33.809692, 46.743073>,  <30.636847, 33.612396, 46.620399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.576628, 33.809692, 46.743073>,  <30.476263, 34.138519, 46.947525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576628, 33.809692, 46.743073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517039, -0.560205, 0.647179,
		-0.818361, 0.101889, -0.565601,
		0.250912, -0.822064, -0.511131,
		30.651901, 33.563072, 46.589733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865520, 33.784298, 46.841026>,  <30.476263, 34.138519, 46.947525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865520, 33.784298, 46.841026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.157330, 33.514206, 46.797466>,  <30.332415, 33.352150, 46.771328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.157330, 33.514206, 46.797466>,  <29.865520, 33.784298, 46.841026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157330, 33.514206, 46.797466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462601, -0.604407, 0.648608,
		-0.503779, -0.422798, -0.753292,
		0.729525, -0.675228, -0.108902,
		30.376186, 33.311638, 46.764797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471056, 33.092049, 46.598427>,  <29.865520, 33.784298, 46.841026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471056, 33.092049, 46.598427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.838991, 32.977345, 46.705509>,  <30.059752, 32.908520, 46.769760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.838991, 32.977345, 46.705509>,  <29.471056, 33.092049, 46.598427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838991, 32.977345, 46.705509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391180, -0.722042, 0.570643,
		0.029659, -0.629621, -0.776336,
		0.919836, -0.286763, 0.267710,
		30.114943, 32.891315, 46.785824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494150, 32.454441, 46.420116>,  <29.471056, 33.092049, 46.598427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494150, 32.454441, 46.420116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.751286, 32.500786, 46.722992>,  <29.905567, 32.528591, 46.904716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.751286, 32.500786, 46.722992>,  <29.494150, 32.454441, 46.420116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751286, 32.500786, 46.722992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492929, -0.694065, 0.524684,
		0.586329, -0.710528, -0.389061,
		0.642837, 0.115858, 0.757191,
		29.944138, 32.535542, 46.950150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412682, 31.932186, 45.937843>,  <29.494150, 32.454441, 46.420116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412682, 31.932186, 45.937843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.260248, 31.598679, 45.778042>,  <29.168787, 31.398575, 45.682159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.260248, 31.598679, 45.778042>,  <29.412682, 31.932186, 45.937843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260248, 31.598679, 45.778042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075137, 0.402755, -0.912219,
		0.921482, -0.377651, -0.090837,
		-0.381085, -0.833767, -0.399507,
		29.145922, 31.348549, 45.658188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864954, 31.757030, 45.330906>,  <29.412682, 31.932186, 45.937843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864954, 31.757030, 45.330906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.530188, 31.546108, 45.272224>,  <29.329329, 31.419556, 45.237015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.530188, 31.546108, 45.272224>,  <29.864954, 31.757030, 45.330906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530188, 31.546108, 45.272224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002528, 0.264307, -0.964435,
		0.547328, -0.807521, -0.219869,
		-0.836915, -0.527306, -0.146704,
		29.279114, 31.387917, 45.228214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103651, 31.282766, 44.791801>,  <29.864954, 31.757030, 45.330906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103651, 31.282766, 44.791801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.706142, 31.320763, 44.815113>,  <29.467638, 31.343561, 44.829102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.706142, 31.320763, 44.815113>,  <30.103651, 31.282766, 44.791801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706142, 31.320763, 44.815113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037588, 0.206623, -0.977698,
		-0.104916, -0.973799, -0.201765,
		-0.993771, 0.094992, 0.058281,
		29.408010, 31.349260, 44.832596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830006, 30.859903, 44.221996>,  <30.103651, 31.282766, 44.791801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830006, 30.859903, 44.221996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.550783, 31.125723, 44.328648>,  <29.383249, 31.285213, 44.392639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.550783, 31.125723, 44.328648>,  <29.830006, 30.859903, 44.221996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550783, 31.125723, 44.328648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095795, 0.282344, -0.954518,
		-0.709604, -0.691851, -0.133432,
		-0.698058, 0.664548, 0.266628,
		29.341366, 31.325087, 44.408638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379532, 30.719646, 43.716682>,  <29.830006, 30.859903, 44.221996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379532, 30.719646, 43.716682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.311510, 31.084101, 43.866837>,  <29.270697, 31.302773, 43.956928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.311510, 31.084101, 43.866837>,  <29.379532, 30.719646, 43.716682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311510, 31.084101, 43.866837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006452, 0.381958, -0.924157,
		-0.985413, -0.154737, -0.070833,
		-0.170057, 0.911134, 0.375388,
		29.260492, 31.357441, 43.979454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843277, 31.006290, 43.286293>,  <29.379532, 30.719646, 43.716682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843277, 31.006290, 43.286293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.078363, 31.285919, 43.449211>,  <29.219416, 31.453697, 43.546963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.078363, 31.285919, 43.449211>,  <28.843277, 31.006290, 43.286293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078363, 31.285919, 43.449211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190223, 0.369902, -0.909389,
		-0.786387, 0.611939, 0.084418,
		0.587717, 0.699073, 0.407291,
		29.254679, 31.495642, 43.571400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636265, 31.593195, 43.031265>,  <28.843277, 31.006290, 43.286293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636265, 31.593195, 43.031265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.985849, 31.734488, 43.164783>,  <29.195601, 31.819263, 43.244896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.985849, 31.734488, 43.164783>,  <28.636265, 31.593195, 43.031265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985849, 31.734488, 43.164783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135258, 0.482907, -0.865163,
		-0.466794, 0.801267, 0.374265,
		0.873961, 0.353231, 0.333796,
		29.248037, 31.840456, 43.264923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.391392, 25.315388, 46.792126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515797, 25.633043, 47.000977>,  <32.590439, 25.823637, 47.126286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515797, 25.633043, 47.000977>,  <32.391392, 25.315388, 46.792126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515797, 25.633043, 47.000977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322752, 0.428469, -0.843946,
		-0.893926, 0.430994, -0.123051,
		0.311012, 0.794140, 0.522123,
		32.609100, 25.871284, 47.157612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165588, 25.915186, 46.403488>,  <32.391392, 25.315388, 46.792126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165588, 25.915186, 46.403488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400684, 26.088320, 46.676899>,  <32.541740, 26.192200, 46.840946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400684, 26.088320, 46.676899>,  <32.165588, 25.915186, 46.403488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400684, 26.088320, 46.676899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431312, 0.547160, -0.717347,
		-0.684493, 0.716429, 0.134901,
		0.587741, 0.432834, 0.683532,
		32.577007, 26.218170, 46.881958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087063, 26.575241, 46.287598>,  <32.165588, 25.915186, 46.403488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087063, 26.575241, 46.287598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.449471, 26.538713, 46.452908>,  <32.666916, 26.516798, 46.552094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.449471, 26.538713, 46.452908>,  <32.087063, 26.575241, 46.287598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449471, 26.538713, 46.452908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390991, 0.554429, -0.734666,
		-0.162041, 0.827206, 0.538027,
		0.906018, -0.091318, 0.413270,
		32.721275, 26.511318, 46.576889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366951, 27.382759, 46.221600>,  <32.087063, 26.575241, 46.287598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366951, 27.382759, 46.221600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.661434, 27.115580, 46.265121>,  <32.838123, 26.955273, 46.291237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.661434, 27.115580, 46.265121>,  <32.366951, 27.382759, 46.221600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661434, 27.115580, 46.265121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492342, 0.418318, -0.763288,
		0.464321, 0.615511, 0.636829,
		0.736210, -0.667949, 0.108808,
		32.882298, 26.915195, 46.297764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066406, 27.727066, 46.298328>,  <32.366951, 27.382759, 46.221600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066406, 27.727066, 46.298328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096359, 27.354288, 46.156414>,  <33.114330, 27.130621, 46.071266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096359, 27.354288, 46.156414>,  <33.066406, 27.727066, 46.298328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096359, 27.354288, 46.156414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645137, 0.316574, -0.695399,
		0.760389, -0.176814, 0.624936,
		0.074882, -0.931943, -0.354788,
		33.118824, 27.074705, 46.049976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752743, 27.691536, 46.227013>,  <33.066406, 27.727066, 46.298328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752743, 27.691536, 46.227013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.568176, 27.427523, 45.989880>,  <33.457436, 27.269115, 45.847599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.568176, 27.427523, 45.989880>,  <33.752743, 27.691536, 46.227013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568176, 27.427523, 45.989880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625873, 0.231428, -0.744798,
		0.628788, -0.714703, 0.306310,
		-0.461421, -0.660031, -0.592832,
		33.429749, 27.229513, 45.812031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249962, 27.612940, 45.739479>,  <33.752743, 27.691536, 46.227013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249962, 27.612940, 45.739479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.965179, 27.386503, 45.573269>,  <33.794312, 27.250641, 45.473541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.965179, 27.386503, 45.573269>,  <34.249962, 27.612940, 45.739479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965179, 27.386503, 45.573269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444755, 0.094417, -0.890662,
		0.543429, -0.818917, 0.184552,
		-0.711953, -0.566092, -0.415527,
		33.751595, 27.216675, 45.448612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552471, 27.081760, 45.464676>,  <34.249962, 27.612940, 45.739479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552471, 27.081760, 45.464676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220608, 27.135992, 45.248055>,  <34.021488, 27.168531, 45.118084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220608, 27.135992, 45.248055>,  <34.552471, 27.081760, 45.464676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220608, 27.135992, 45.248055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553522, 0.073595, -0.829576,
		-0.072619, -0.988029, -0.136106,
		-0.829662, 0.135581, -0.541551,
		33.971710, 27.176666, 45.085590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637131, 26.595665, 44.849907>,  <34.552471, 27.081760, 45.464676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637131, 26.595665, 44.849907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.348534, 26.858040, 44.761185>,  <34.175377, 27.015465, 44.707951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.348534, 26.858040, 44.761185>,  <34.637131, 26.595665, 44.849907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348534, 26.858040, 44.761185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403925, 0.138529, -0.904242,
		-0.562401, -0.741994, -0.364897,
		-0.721491, 0.655938, -0.221801,
		34.132088, 27.054821, 44.694645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403870, 26.441185, 44.194927>,  <34.637131, 26.595665, 44.849907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403870, 26.441185, 44.194927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.282608, 26.819288, 44.243233>,  <34.209850, 27.046150, 44.272217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.282608, 26.819288, 44.243233>,  <34.403870, 26.441185, 44.194927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282608, 26.819288, 44.243233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315059, 0.219020, -0.923455,
		-0.899354, -0.241899, -0.364208,
		-0.303152, 0.945259, 0.120764,
		34.191662, 27.102865, 44.279461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036030, 26.573389, 43.689796>,  <34.403870, 26.441185, 44.194927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036030, 26.573389, 43.689796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.144337, 26.942766, 43.798565>,  <34.209320, 27.164392, 43.863827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.144337, 26.942766, 43.798565>,  <34.036030, 26.573389, 43.689796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144337, 26.942766, 43.798565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189619, 0.225776, -0.955547,
		-0.943784, 0.310293, -0.113969,
		0.270769, 0.923441, 0.271921,
		34.225567, 27.219799, 43.880142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626026, 27.114100, 43.266129>,  <34.036030, 26.573389, 43.689796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626026, 27.114100, 43.266129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.967445, 27.271971, 43.402180>,  <34.172295, 27.366693, 43.483810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.967445, 27.271971, 43.402180>,  <33.626026, 27.114100, 43.266129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967445, 27.271971, 43.402180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297649, 0.166430, -0.940057,
		-0.427626, 0.903622, 0.024581,
		0.853546, 0.394676, 0.340131,
		34.223511, 27.390373, 43.504219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992985, 27.569729, 43.096626>,  <33.626026, 27.114100, 43.266129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992985, 27.569729, 43.096626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.654602, 27.689798, 42.920330>,  <32.451572, 27.761841, 42.814552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.654602, 27.689798, 42.920330>,  <32.992985, 27.569729, 43.096626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654602, 27.689798, 42.920330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414633, 0.149447, 0.897633,
		0.335313, 0.942105, -0.001964,
		-0.845958, 0.300174, -0.440739,
		32.400814, 27.779850, 42.788109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771622, 28.040829, 43.543415>,  <32.992985, 27.569729, 43.096626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771622, 28.040829, 43.543415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.438839, 27.944820, 43.343323>,  <32.239170, 27.887215, 43.223267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.438839, 27.944820, 43.343323>,  <32.771622, 28.040829, 43.543415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438839, 27.944820, 43.343323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515155, -0.000661, 0.857097,
		-0.206052, 0.970767, -0.123098,
		-0.831961, -0.240021, -0.500231,
		32.189251, 27.872814, 43.193253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249306, 28.594929, 43.592087>,  <32.771622, 28.040829, 43.543415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249306, 28.594929, 43.592087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.072098, 28.240646, 43.536575>,  <31.965775, 28.028076, 43.503269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.072098, 28.240646, 43.536575>,  <32.249306, 28.594929, 43.592087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072098, 28.240646, 43.536575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517615, 0.126306, 0.846240,
		-0.731991, 0.446734, -0.514411,
		-0.443017, -0.885706, -0.138781,
		31.939192, 27.974934, 43.494942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618374, 28.683575, 43.975433>,  <32.249306, 28.594929, 43.592087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618374, 28.683575, 43.975433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.584995, 28.295761, 43.883308>,  <31.564968, 28.063074, 43.828033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.584995, 28.295761, 43.883308>,  <31.618374, 28.683575, 43.975433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584995, 28.295761, 43.883308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780209, -0.080214, 0.620355,
		-0.619928, 0.231460, -0.749743,
		-0.083447, -0.969532, -0.230314,
		31.559961, 28.004902, 43.814213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893183, 28.535194, 43.794460>,  <31.618374, 28.683575, 43.975433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893183, 28.535194, 43.794460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.067348, 28.195068, 43.912701>,  <31.171848, 27.990993, 43.983646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.067348, 28.195068, 43.912701>,  <30.893183, 28.535194, 43.794460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067348, 28.195068, 43.912701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759184, -0.170368, 0.628184,
		-0.483793, -0.497934, -0.719726,
		0.435413, -0.850315, 0.295600,
		31.197973, 27.939974, 44.001381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259609, 28.118219, 43.845444>,  <30.893183, 28.535194, 43.794460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259609, 28.118219, 43.845444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.552258, 27.959391, 44.067097>,  <30.727848, 27.864094, 44.200089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.552258, 27.959391, 44.067097>,  <30.259609, 28.118219, 43.845444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552258, 27.959391, 44.067097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641228, -0.124900, 0.757117,
		-0.231420, -0.909248, -0.345994,
		0.731623, -0.397073, 0.554131,
		30.771744, 27.840269, 44.233337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898026, 27.647781, 44.193821>,  <30.259609, 28.118219, 43.845444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898026, 27.647781, 44.193821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.235281, 27.655333, 44.408768>,  <30.437634, 27.659863, 44.537735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.235281, 27.655333, 44.408768>,  <29.898026, 27.647781, 44.193821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235281, 27.655333, 44.408768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537309, -0.008486, 0.843343,
		0.020497, -0.999785, 0.002999,
		0.843136, 0.018897, 0.537368,
		30.488222, 27.660995, 44.569977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827715, 27.206312, 44.762020>,  <29.898026, 27.647781, 44.193821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827715, 27.206312, 44.762020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.126329, 27.442205, 44.885242>,  <30.305498, 27.583742, 44.959175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.126329, 27.442205, 44.885242>,  <29.827715, 27.206312, 44.762020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126329, 27.442205, 44.885242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393657, 0.018234, 0.919076,
		0.536392, -0.807392, 0.245766,
		0.746537, 0.589733, 0.308055,
		30.350290, 27.619125, 44.977657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086525, 26.928434, 45.331284>,  <29.827715, 27.206312, 44.762020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086525, 26.928434, 45.331284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.211906, 27.306263, 45.370335>,  <30.287136, 27.532961, 45.393764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.211906, 27.306263, 45.370335>,  <30.086525, 26.928434, 45.331284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211906, 27.306263, 45.370335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257902, -0.014260, 0.966066,
		0.913910, -0.327996, 0.239137,
		0.313455, 0.944572, 0.097623,
		30.305943, 27.589634, 45.399620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346607, 26.933296, 45.955223>,  <30.086525, 26.928434, 45.331284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346607, 26.933296, 45.955223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.262808, 27.314566, 45.867981>,  <30.212528, 27.543327, 45.815636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.262808, 27.314566, 45.867981>,  <30.346607, 26.933296, 45.955223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262808, 27.314566, 45.867981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152497, 0.188480, 0.970165,
		0.965844, 0.236510, 0.105869,
		-0.209499, 0.953173, -0.218109,
		30.199959, 27.600517, 45.802547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647148, 27.360079, 46.490639>,  <30.346607, 26.933296, 45.955223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647148, 27.360079, 46.490639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.344769, 27.574957, 46.340996>,  <30.163340, 27.703884, 46.251209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.344769, 27.574957, 46.340996>,  <30.647148, 27.360079, 46.490639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344769, 27.574957, 46.340996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303943, 0.218130, 0.927382,
		0.579791, 0.814764, -0.001618,
		-0.755951, 0.537196, -0.374111,
		30.117983, 27.736116, 46.228764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621214, 27.997923, 46.894196>,  <30.647148, 27.360079, 46.490639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621214, 27.997923, 46.894196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.262877, 27.983440, 46.717041>,  <30.047874, 27.974751, 46.610748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.262877, 27.983440, 46.717041>,  <30.621214, 27.997923, 46.894196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262877, 27.983440, 46.717041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437477, 0.246677, 0.864734,
		0.077941, 0.968421, -0.236824,
		-0.895846, -0.036207, -0.442888,
		29.994123, 27.972578, 46.584175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285749, 28.625143, 47.039761>,  <30.621214, 27.997923, 46.894196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285749, 28.625143, 47.039761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.005627, 28.355764, 46.945068>,  <29.837553, 28.194138, 46.888252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.005627, 28.355764, 46.945068>,  <30.285749, 28.625143, 47.039761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005627, 28.355764, 46.945068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502706, 0.229813, 0.833351,
		-0.506812, 0.702607, -0.499485,
		-0.700306, -0.673446, -0.236732,
		29.795534, 28.153730, 46.874050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778645, 28.986826, 47.326763>,  <30.285749, 28.625143, 47.039761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778645, 28.986826, 47.326763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.616230, 28.625191, 47.273460>,  <29.518782, 28.408209, 47.241478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.616230, 28.625191, 47.273460>,  <29.778645, 28.986826, 47.326763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616230, 28.625191, 47.273460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431105, 0.060927, 0.900242,
		-0.805781, 0.422977, -0.414497,
		-0.406036, -0.904090, -0.133254,
		29.494419, 28.353964, 47.233482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109455, 29.046761, 47.562164>,  <29.778645, 28.986826, 47.326763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109455, 29.046761, 47.562164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.208513, 28.659328, 47.571320>,  <29.267948, 28.426868, 47.576813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.208513, 28.659328, 47.571320>,  <29.109455, 29.046761, 47.562164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208513, 28.659328, 47.571320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373689, -0.073694, 0.924622,
		-0.893884, -0.237533, -0.380198,
		0.247647, -0.968580, 0.022890,
		29.282806, 28.368755, 47.578186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283195, 28.948196, 47.254868>,  <29.109455, 29.046761, 47.562164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283195, 28.948196, 47.254868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.369492, 29.295172, 47.434200>,  <28.421268, 29.503357, 47.541801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.369492, 29.295172, 47.434200>,  <28.283195, 28.948196, 47.254868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369492, 29.295172, 47.434200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081070, 0.441651, -0.893517,
		-0.973080, 0.229112, 0.024957,
		0.215738, 0.867440, 0.448335,
		28.434214, 29.555405, 47.568703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237379, 29.332092, 46.687683>,  <28.283195, 28.948196, 47.254868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237379, 29.332092, 46.687683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.380455, 29.616714, 46.929592>,  <28.466301, 29.787487, 47.074738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.380455, 29.616714, 46.929592>,  <28.237379, 29.332092, 46.687683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380455, 29.616714, 46.929592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227388, 0.561760, -0.795437,
		-0.905733, 0.422037, 0.039137,
		0.357690, 0.711554, 0.604771,
		28.487762, 29.830181, 47.111023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892759, 30.096830, 46.566761>,  <28.237379, 29.332092, 46.687683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892759, 30.096830, 46.566761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.257034, 30.151014, 46.722862>,  <28.475599, 30.183525, 46.816525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.257034, 30.151014, 46.722862>,  <27.892759, 30.096830, 46.566761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257034, 30.151014, 46.722862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248886, 0.574079, -0.780057,
		-0.329703, 0.807517, 0.489093,
		0.910688, 0.135459, 0.390255,
		28.530241, 30.191652, 46.839939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997683, 30.794867, 46.544128>,  <27.892759, 30.096830, 46.566761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997683, 30.794867, 46.544128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.379147, 30.677536, 46.570953>,  <28.608025, 30.607138, 46.587048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.379147, 30.677536, 46.570953>,  <27.997683, 30.794867, 46.544128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379147, 30.677536, 46.570953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251973, 0.656710, -0.710803,
		0.164457, 0.694761, 0.700187,
		0.953658, -0.293325, 0.067060,
		28.665243, 30.589539, 46.591072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353865, 31.398022, 46.603176>,  <27.997683, 30.794867, 46.544128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353865, 31.398022, 46.603176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.598890, 31.123692, 46.445995>,  <28.745907, 30.959093, 46.351688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.598890, 31.123692, 46.445995>,  <28.353865, 31.398022, 46.603176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598890, 31.123692, 46.445995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280118, 0.653233, -0.703435,
		0.739120, 0.320828, 0.592260,
		0.612565, -0.685825, -0.392948,
		28.782660, 30.917944, 46.328110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904343, 31.832384, 46.427574>,  <28.353865, 31.398022, 46.603176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904343, 31.832384, 46.427574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.934849, 31.483952, 46.233501>,  <28.953152, 31.274893, 46.117058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.934849, 31.483952, 46.233501>,  <28.904343, 31.832384, 46.427574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934849, 31.483952, 46.233501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197093, 0.490167, -0.849053,
		0.977414, -0.030874, 0.209067,
		0.076264, -0.871082, -0.485181,
		28.957727, 31.222628, 46.087948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555145, 31.827600, 46.757492>,  <28.904343, 31.832384, 46.427574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555145, 31.827600, 46.757492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.716343, 32.054298, 47.044933>,  <29.813063, 32.190315, 47.217400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.716343, 32.054298, 47.044933>,  <29.555145, 31.827600, 46.757492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716343, 32.054298, 47.044933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310258, -0.654094, 0.689856,
		0.861007, -0.500963, -0.087761,
		0.402996, 0.566743, 0.718608,
		29.837242, 32.224319, 47.260517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961922, 31.335400, 47.135292>,  <29.555145, 31.827600, 46.757492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961922, 31.335400, 47.135292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.886936, 31.643497, 47.379124>,  <29.841946, 31.828356, 47.525421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.886936, 31.643497, 47.379124>,  <29.961922, 31.335400, 47.135292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886936, 31.643497, 47.379124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411339, -0.625100, 0.663363,
		0.891997, -0.126387, 0.434014,
		-0.187461, 0.770245, 0.609575,
		29.830698, 31.874571, 47.561996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208469, 31.283695, 47.756973>,  <29.961922, 31.335400, 47.135292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208469, 31.283695, 47.756973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.977932, 31.571753, 47.911491>,  <29.839609, 31.744587, 48.004204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.977932, 31.571753, 47.911491>,  <30.208469, 31.283695, 47.756973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977932, 31.571753, 47.911491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026400, -0.456046, 0.889564,
		0.816782, 0.522891, 0.243826,
		-0.576341, 0.720144, 0.386295,
		29.805029, 31.787796, 48.027378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462339, 31.434721, 48.393898>,  <30.208469, 31.283695, 47.756973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462339, 31.434721, 48.393898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.086998, 31.572321, 48.407524>,  <29.861794, 31.654881, 48.415699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.086998, 31.572321, 48.407524>,  <30.462339, 31.434721, 48.393898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086998, 31.572321, 48.407524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065806, -0.274495, 0.959334,
		0.339361, 0.897951, 0.280210,
		-0.938351, 0.344001, 0.034062,
		29.805492, 31.675522, 48.417744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386784, 31.638371, 49.112846>,  <30.462339, 31.434721, 48.393898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386784, 31.638371, 49.112846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.007381, 31.608212, 48.989788>,  <29.779739, 31.590117, 48.915951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.007381, 31.608212, 48.989788>,  <30.386784, 31.638371, 49.112846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007381, 31.608212, 48.989788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279728, -0.256308, 0.925234,
		-0.148613, 0.963650, 0.222020,
		-0.948508, -0.075397, -0.307651,
		29.722830, 31.585592, 48.897491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026495, 32.028046, 49.525223>,  <30.386784, 31.638371, 49.112846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026495, 32.028046, 49.525223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.759310, 31.764631, 49.386566>,  <29.598999, 31.606583, 49.303371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.759310, 31.764631, 49.386566>,  <30.026495, 32.028046, 49.525223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759310, 31.764631, 49.386566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272424, -0.217095, 0.937366,
		-0.692541, 0.720559, -0.034389,
		-0.667962, -0.658532, -0.346644,
		29.558922, 31.567072, 49.282574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342016, 32.029320, 49.894905>,  <30.026495, 32.028046, 49.525223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342016, 32.029320, 49.894905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.308603, 31.661573, 49.741131>,  <29.288555, 31.440926, 49.648865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.308603, 31.661573, 49.741131>,  <29.342016, 32.029320, 49.894905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308603, 31.661573, 49.741131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106428, -0.375349, 0.920753,
		-0.990805, 0.117829, -0.066491,
		-0.083534, -0.919363, -0.384438,
		29.283543, 31.385765, 49.625801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787258, 31.641325, 50.248047>,  <29.342016, 32.029320, 49.894905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787258, 31.641325, 50.248047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.969940, 31.337183, 50.063316>,  <29.079550, 31.154697, 49.952477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.969940, 31.337183, 50.063316>,  <28.787258, 31.641325, 50.248047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969940, 31.337183, 50.063316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173297, -0.585223, 0.792138,
		-0.872575, -0.281741, -0.399042,
		0.456706, -0.760353, -0.461826,
		29.106953, 31.109077, 49.924770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397919, 31.088139, 50.378498>,  <28.787258, 31.641325, 50.248047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397919, 31.088139, 50.378498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.753887, 30.924799, 50.297218>,  <28.967468, 30.826796, 50.248451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.753887, 30.924799, 50.297218>,  <28.397919, 31.088139, 50.378498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753887, 30.924799, 50.297218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194629, -0.742882, 0.640505,
		-0.412505, -0.530449, -0.740583,
		0.889921, -0.408350, -0.203202,
		29.020863, 30.802294, 50.236256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.439709, 37.069405, 36.864471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744377, 36.904995, 37.064838>,  <36.927177, 36.806347, 37.185059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744377, 36.904995, 37.064838>,  <36.439709, 37.069405, 36.864471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744377, 36.904995, 37.064838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641167, -0.589760, 0.491008,
		0.093602, -0.695156, -0.712739,
		0.761671, -0.411026, 0.500914,
		36.972878, 36.781689, 37.215111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468117, 36.312847, 36.868168>,  <36.439709, 37.069405, 36.864471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468117, 36.312847, 36.868168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700043, 36.401104, 37.181889>,  <36.839199, 36.454060, 37.370121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700043, 36.401104, 37.181889>,  <36.468117, 36.312847, 36.868168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700043, 36.401104, 37.181889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546482, -0.608658, 0.575233,
		0.604292, -0.762137, -0.232334,
		0.579818, 0.220642, 0.784301,
		36.873989, 36.467297, 37.417179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720852, 35.682438, 37.201324>,  <36.468117, 36.312847, 36.868168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720852, 35.682438, 37.201324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709435, 35.986656, 37.460785>,  <36.702583, 36.169189, 37.616463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709435, 35.986656, 37.460785>,  <36.720852, 35.682438, 37.201324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709435, 35.986656, 37.460785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620130, -0.522419, 0.585250,
		0.783980, -0.385541, 0.486553,
		-0.028547, 0.760550, 0.648652,
		36.700871, 36.214821, 37.655380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659504, 35.387573, 37.812946>,  <36.720852, 35.682438, 37.201324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659504, 35.387573, 37.812946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554989, 35.756264, 37.927597>,  <36.492279, 35.977478, 37.996387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554989, 35.756264, 37.927597>,  <36.659504, 35.387573, 37.812946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554989, 35.756264, 37.927597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484572, -0.382065, 0.786903,
		0.834816, 0.066720, 0.546471,
		-0.261290, 0.921723, 0.286623,
		36.476601, 36.032780, 38.013584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595047, 35.299244, 38.532902>,  <36.659504, 35.387573, 37.812946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595047, 35.299244, 38.532902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399494, 35.640984, 38.462383>,  <36.282162, 35.846027, 38.420074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399494, 35.640984, 38.462383>,  <36.595047, 35.299244, 38.532902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399494, 35.640984, 38.462383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609891, -0.190251, 0.769309,
		0.623719, 0.483623, 0.614071,
		-0.488883, 0.854350, -0.176294,
		36.252831, 35.897289, 38.409496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303722, 35.370739, 39.158394>,  <36.595047, 35.299244, 38.532902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303722, 35.370739, 39.158394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096119, 35.641457, 38.949558>,  <35.971558, 35.803886, 38.824257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096119, 35.641457, 38.949558>,  <36.303722, 35.370739, 39.158394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096119, 35.641457, 38.949558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661011, 0.069461, 0.747154,
		0.541934, 0.732889, 0.411316,
		-0.519011, 0.676792, -0.522091,
		35.940414, 35.844494, 38.792931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148376, 35.850346, 39.694107>,  <36.303722, 35.370739, 39.158394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148376, 35.850346, 39.694107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885021, 35.866039, 39.393448>,  <35.727009, 35.875458, 39.213051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885021, 35.866039, 39.393448>,  <36.148376, 35.850346, 39.694107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885021, 35.866039, 39.393448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752672, -0.037635, 0.657320,
		-0.002497, 0.998521, 0.054312,
		-0.658391, 0.039237, -0.751652,
		35.687504, 35.877811, 39.167953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656792, 36.298927, 39.956291>,  <36.148376, 35.850346, 39.694107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656792, 36.298927, 39.956291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472717, 36.094658, 39.665791>,  <35.362270, 35.972095, 39.491489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472717, 36.094658, 39.665791>,  <35.656792, 36.298927, 39.956291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472717, 36.094658, 39.665791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859690, 0.052023, 0.508161,
		-0.221722, 0.858200, -0.462960,
		-0.460188, -0.510673, -0.726251,
		35.334660, 35.941456, 39.447914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900951, 36.624092, 39.897770>,  <35.656792, 36.298927, 39.956291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900951, 36.624092, 39.897770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886135, 36.268570, 39.715054>,  <34.877247, 36.055256, 39.605423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886135, 36.268570, 39.715054>,  <34.900951, 36.624092, 39.897770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886135, 36.268570, 39.715054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837547, -0.221735, 0.499348,
		-0.545109, 0.401080, -0.736201,
		-0.037037, -0.888802, -0.456793,
		34.875023, 36.001930, 39.578014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195812, 36.534233, 39.677917>,  <34.900951, 36.624092, 39.897770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195812, 36.534233, 39.677917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379452, 36.182766, 39.730339>,  <34.489635, 35.971886, 39.761791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379452, 36.182766, 39.730339>,  <34.195812, 36.534233, 39.677917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379452, 36.182766, 39.730339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778738, -0.327034, 0.535365,
		-0.427547, -0.347843, -0.834391,
		0.459097, -0.878666, 0.131056,
		34.517181, 35.919167, 39.769657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657619, 35.923649, 39.542889>,  <34.195812, 36.534233, 39.677917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657619, 35.923649, 39.542889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955883, 35.750134, 39.745201>,  <34.134842, 35.646023, 39.866589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955883, 35.750134, 39.745201>,  <33.657619, 35.923649, 39.542889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955883, 35.750134, 39.745201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664952, -0.533186, 0.523022,
		0.042794, -0.726318, -0.686026,
		0.745660, -0.433792, 0.505783,
		34.179581, 35.619995, 39.896935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465485, 35.183323, 39.607372>,  <33.657619, 35.923649, 39.542889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465485, 35.183323, 39.607372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718258, 35.291409, 39.897926>,  <33.869923, 35.356258, 40.072258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718258, 35.291409, 39.897926>,  <33.465485, 35.183323, 39.607372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718258, 35.291409, 39.897926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569857, -0.473235, 0.671798,
		0.525280, -0.838471, -0.145073,
		0.631936, 0.270211, 0.726389,
		33.907841, 35.372471, 40.115845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544693, 34.562572, 39.091942>,  <33.465485, 35.183323, 39.607372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544693, 34.562572, 39.091942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247028, 34.339142, 38.945404>,  <33.068428, 34.205082, 38.857479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247028, 34.339142, 38.945404>,  <33.544693, 34.562572, 39.091942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247028, 34.339142, 38.945404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338918, 0.156882, -0.927644,
		0.575634, -0.814481, 0.072565,
		-0.744164, -0.558577, -0.366349,
		33.023781, 34.171570, 38.835499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893276, 34.161304, 38.530121>,  <33.544693, 34.562572, 39.091942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893276, 34.161304, 38.530121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498589, 34.178474, 38.467449>,  <33.261776, 34.188774, 38.429848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498589, 34.178474, 38.467449>,  <33.893276, 34.161304, 38.530121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498589, 34.178474, 38.467449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159659, 0.078181, -0.984072,
		-0.029992, -0.996015, -0.083996,
		-0.986717, 0.042925, -0.156678,
		33.202572, 34.191353, 38.420444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747856, 33.775360, 37.980927>,  <33.893276, 34.161304, 38.530121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747856, 33.775360, 37.980927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428932, 34.016689, 37.987938>,  <33.237579, 34.161488, 37.992146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428932, 34.016689, 37.987938>,  <33.747856, 33.775360, 37.980927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428932, 34.016689, 37.987938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017589, 0.005800, -0.999829,
		-0.603317, -0.797479, 0.005987,
		-0.797307, 0.603319, 0.017526,
		33.189739, 34.197685, 37.993195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269604, 33.519398, 37.504204>,  <33.747856, 33.775360, 37.980927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269604, 33.519398, 37.504204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165550, 33.904415, 37.534744>,  <33.103119, 34.135426, 37.553070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165550, 33.904415, 37.534744>,  <33.269604, 33.519398, 37.504204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165550, 33.904415, 37.534744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207978, 0.021360, -0.977900,
		-0.942907, -0.270268, 0.194632,
		-0.260138, 0.962548, 0.076350,
		33.087509, 34.193180, 37.557648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658257, 33.550179, 37.043278>,  <33.269604, 33.519398, 37.504204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658257, 33.550179, 37.043278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770905, 33.932156, 37.080730>,  <32.838493, 34.161343, 37.103203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770905, 33.932156, 37.080730>,  <32.658257, 33.550179, 37.043278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770905, 33.932156, 37.080730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303871, 0.181317, -0.935300,
		-0.910138, 0.234951, 0.341243,
		0.281623, 0.954946, 0.093629,
		32.855392, 34.218639, 37.108818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061378, 33.929512, 36.845776>,  <32.658257, 33.550179, 37.043278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061378, 33.929512, 36.845776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390686, 34.154896, 36.818218>,  <32.588272, 34.290127, 36.801682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390686, 34.154896, 36.818218>,  <32.061378, 33.929512, 36.845776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390686, 34.154896, 36.818218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268924, 0.280251, -0.921487,
		-0.499910, 0.777159, 0.382249,
		0.823268, 0.563457, -0.068896,
		32.637665, 34.323933, 36.797550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844105, 34.567425, 36.641060>,  <32.061378, 33.929512, 36.845776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844105, 34.567425, 36.641060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233055, 34.554249, 36.548622>,  <32.466427, 34.546345, 36.493160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233055, 34.554249, 36.548622>,  <31.844105, 34.567425, 36.641060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233055, 34.554249, 36.548622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232048, -0.028974, -0.972273,
		0.025331, 0.999037, -0.035818,
		0.972374, -0.032940, -0.231090,
		32.524769, 34.544365, 36.479294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960871, 35.078369, 36.198483>,  <31.844105, 34.567425, 36.641060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960871, 35.078369, 36.198483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258034, 34.822445, 36.119759>,  <32.436333, 34.668892, 36.072525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258034, 34.822445, 36.119759>,  <31.960871, 35.078369, 36.198483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258034, 34.822445, 36.119759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163236, 0.111977, -0.980212,
		0.649187, 0.760332, -0.021251,
		0.742907, -0.639810, -0.196808,
		32.480907, 34.630501, 36.060715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071537, 35.328568, 35.514420>,  <31.960871, 35.078369, 36.198483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071537, 35.328568, 35.514420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275742, 34.986492, 35.550262>,  <32.398266, 34.781246, 35.571766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275742, 34.986492, 35.550262>,  <32.071537, 35.328568, 35.514420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275742, 34.986492, 35.550262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112984, -0.036589, -0.992923,
		0.852413, 0.517027, 0.077944,
		0.510516, -0.855187, 0.089605,
		32.428898, 34.729935, 35.577145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677486, 35.355263, 35.031136>,  <32.071537, 35.328568, 35.514420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677486, 35.355263, 35.031136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545616, 34.981575, 35.085609>,  <32.466492, 34.757362, 35.118294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545616, 34.981575, 35.085609>,  <32.677486, 35.355263, 35.031136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545616, 34.981575, 35.085609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050493, -0.126594, -0.990669,
		0.942742, -0.333479, -0.005436,
		-0.329679, -0.934220, 0.136184,
		32.446712, 34.701309, 35.126465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903637, 35.112053, 34.417915>,  <32.677486, 35.355263, 35.031136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903637, 35.112053, 34.417915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673134, 34.818737, 34.562260>,  <32.534832, 34.642750, 34.648865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673134, 34.818737, 34.562260>,  <32.903637, 35.112053, 34.417915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673134, 34.818737, 34.562260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097301, -0.376844, -0.921152,
		0.811455, -0.565933, 0.145809,
		-0.576257, -0.733286, 0.360858,
		32.500256, 34.598751, 34.670517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171391, 34.532616, 34.124565>,  <32.903637, 35.112053, 34.417915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171391, 34.532616, 34.124565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802094, 34.416389, 34.225113>,  <32.580513, 34.346653, 34.285442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802094, 34.416389, 34.225113>,  <33.171391, 34.532616, 34.124565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802094, 34.416389, 34.225113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147100, -0.337072, -0.929916,
		0.354934, -0.895518, 0.268458,
		-0.923246, -0.290569, 0.251369,
		32.525120, 34.329220, 34.300522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688454, 34.948071, 34.119495>,  <33.171391, 34.532616, 34.124565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688454, 34.948071, 34.119495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920761, 34.912945, 34.443222>,  <34.060146, 34.891869, 34.637459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920761, 34.912945, 34.443222>,  <33.688454, 34.948071, 34.119495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920761, 34.912945, 34.443222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468224, -0.849296, 0.243851,
		0.665936, -0.520563, -0.534363,
		0.580772, -0.087813, 0.809317,
		34.094994, 34.886600, 34.686016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066452, 34.301708, 34.215351>,  <33.688454, 34.948071, 34.119495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066452, 34.301708, 34.215351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990250, 34.447742, 34.579861>,  <33.944527, 34.535362, 34.798565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990250, 34.447742, 34.579861>,  <34.066452, 34.301708, 34.215351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990250, 34.447742, 34.579861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401949, -0.875906, 0.266881,
		0.895624, -0.315442, 0.313614,
		-0.190511, 0.365082, 0.911274,
		33.933098, 34.557266, 34.853245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120670, 33.777729, 34.640907>,  <34.066452, 34.301708, 34.215351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120670, 33.777729, 34.640907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901867, 34.033489, 34.857037>,  <33.770584, 34.186947, 34.986713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901867, 34.033489, 34.857037>,  <34.120670, 33.777729, 34.640907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901867, 34.033489, 34.857037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410731, -0.767410, 0.492323,
		0.729439, 0.047379, 0.682403,
		-0.547009, 0.639404, 0.540319,
		33.737762, 34.225311, 35.019131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357159, 33.574024, 35.374340>,  <34.120670, 33.777729, 34.640907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357159, 33.574024, 35.374340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553318, 33.467079, 35.042553>,  <34.671013, 33.402912, 34.843479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553318, 33.467079, 35.042553>,  <34.357159, 33.574024, 35.374340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553318, 33.467079, 35.042553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191572, -0.895426, 0.401886,
		-0.850181, -0.355988, -0.387898,
		0.490400, -0.267365, -0.829472,
		34.700439, 33.386871, 34.793713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077599, 32.989777, 35.002792>,  <34.357159, 33.574024, 35.374340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077599, 32.989777, 35.002792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473133, 33.014187, 34.948429>,  <34.710453, 33.028835, 34.915813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473133, 33.014187, 34.948429>,  <34.077599, 32.989777, 35.002792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473133, 33.014187, 34.948429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117295, -0.881352, 0.457669,
		-0.091848, -0.468503, -0.878675,
		0.988841, 0.061028, -0.135903,
		34.769787, 33.032494, 34.907658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336205, 32.411228, 34.713474>,  <34.077599, 32.989777, 35.002792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336205, 32.411228, 34.713474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608582, 32.580013, 34.952896>,  <34.772007, 32.681286, 35.096550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608582, 32.580013, 34.952896>,  <34.336205, 32.411228, 34.713474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608582, 32.580013, 34.952896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084449, -0.857111, 0.508163,
		0.727456, -0.295480, -0.619273,
		0.680938, 0.421964, 0.598557,
		34.812862, 32.706604, 35.132462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983917, 32.048992, 34.652012>,  <34.336205, 32.411228, 34.713474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983917, 32.048992, 34.652012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999615, 32.229805, 35.008469>,  <35.009033, 32.338291, 35.222343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999615, 32.229805, 35.008469>,  <34.983917, 32.048992, 34.652012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999615, 32.229805, 35.008469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202441, -0.876927, 0.435908,
		0.978508, 0.163296, -0.125924,
		0.039244, 0.452032, 0.891138,
		35.011387, 32.365414, 35.275810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231388, 31.510674, 34.973106>,  <34.983917, 32.048992, 34.652012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231388, 31.510674, 34.973106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176918, 31.760557, 35.280663>,  <35.144238, 31.910486, 35.465199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176918, 31.760557, 35.280663>,  <35.231388, 31.510674, 34.973106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176918, 31.760557, 35.280663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026173, -0.773583, 0.633154,
		0.990339, 0.106342, 0.088991,
		-0.136173, 0.624708, 0.768893,
		35.136066, 31.947969, 35.511330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753929, 31.267702, 35.542603>,  <35.231388, 31.510674, 34.973106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753929, 31.267702, 35.542603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456177, 31.479788, 35.704971>,  <35.277527, 31.607040, 35.802391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456177, 31.479788, 35.704971>,  <35.753929, 31.267702, 35.542603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456177, 31.479788, 35.704971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163814, -0.734309, 0.658753,
		0.647354, 0.423865, 0.633460,
		-0.744378, 0.530216, 0.405923,
		35.232864, 31.638853, 35.826748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762329, 31.060226, 36.237106>,  <35.753929, 31.267702, 35.542603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762329, 31.060226, 36.237106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399315, 31.215334, 36.172592>,  <35.181507, 31.308399, 36.133884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399315, 31.215334, 36.172592>,  <35.762329, 31.060226, 36.237106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399315, 31.215334, 36.172592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406894, -0.716760, 0.566297,
		0.103991, 0.579561, 0.808267,
		-0.907537, 0.387768, -0.161283,
		35.127052, 31.331665, 36.124207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445072, 31.276173, 36.853096>,  <35.762329, 31.060226, 36.237106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445072, 31.276173, 36.853096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127155, 31.212463, 36.618855>,  <34.936405, 31.174238, 36.478310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127155, 31.212463, 36.618855>,  <35.445072, 31.276173, 36.853096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127155, 31.212463, 36.618855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246235, -0.797316, 0.551049,
		-0.554678, 0.582167, 0.594486,
		-0.794796, -0.159271, -0.585604,
		34.888718, 31.164682, 36.443172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864262, 31.143057, 37.321472>,  <35.445072, 31.276173, 36.853096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864262, 31.143057, 37.321472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697220, 31.042747, 36.972137>,  <34.596996, 30.982561, 36.762535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697220, 31.042747, 36.972137>,  <34.864262, 31.143057, 37.321472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697220, 31.042747, 36.972137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452359, -0.776203, 0.439182,
		-0.788024, 0.578465, 0.210703,
		-0.417600, -0.250773, -0.873340,
		34.571941, 30.967516, 36.710136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237782, 31.170244, 37.446812>,  <34.864262, 31.143057, 37.321472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237782, 31.170244, 37.446812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272316, 30.933805, 37.126026>,  <34.293037, 30.791943, 36.933556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272316, 30.933805, 37.126026>,  <34.237782, 31.170244, 37.446812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272316, 30.933805, 37.126026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321605, -0.778412, 0.539115,
		-0.942930, 0.211370, -0.257306,
		0.086337, -0.591098, -0.801966,
		34.298218, 30.756475, 36.885437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581169, 30.986855, 37.235344>,  <34.237782, 31.170244, 37.446812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581169, 30.986855, 37.235344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855858, 30.720608, 37.118469>,  <34.020672, 30.560860, 37.048344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855858, 30.720608, 37.118469>,  <33.581169, 30.986855, 37.235344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855858, 30.720608, 37.118469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377144, -0.669851, 0.639580,
		-0.621433, -0.329017, -0.711033,
		0.686719, -0.665618, -0.292181,
		34.061874, 30.520922, 37.030815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198551, 30.358835, 37.351658>,  <33.581169, 30.986855, 37.235344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198551, 30.358835, 37.351658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559452, 30.210014, 37.264462>,  <33.775993, 30.120722, 37.212143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559452, 30.210014, 37.264462>,  <33.198551, 30.358835, 37.351658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559452, 30.210014, 37.264462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257683, -0.870541, 0.419235,
		-0.345746, -0.322083, -0.881318,
		0.902252, -0.372050, -0.217991,
		33.830128, 30.098400, 37.199066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121868, 29.693823, 37.033653>,  <33.198551, 30.358835, 37.351658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121868, 29.693823, 37.033653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477463, 29.697750, 37.216785>,  <33.690819, 29.700106, 37.326664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477463, 29.697750, 37.216785>,  <33.121868, 29.693823, 37.033653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477463, 29.697750, 37.216785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251907, -0.824427, 0.506817,
		0.382424, -0.565883, -0.730430,
		0.888985, 0.009818, 0.457831,
		33.744160, 29.700695, 37.354134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208866, 28.961138, 37.181362>,  <33.121868, 29.693823, 37.033653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208866, 28.961138, 37.181362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503433, 29.104771, 37.410709>,  <33.680172, 29.190950, 37.548317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503433, 29.104771, 37.410709>,  <33.208866, 28.961138, 37.181362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503433, 29.104771, 37.410709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256541, -0.635998, 0.727800,
		0.626002, -0.683056, -0.376239,
		0.736416, 0.359083, 0.573368,
		33.724358, 29.212496, 37.582722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642071, 28.370041, 37.443344>,  <33.208866, 28.961138, 37.181362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642071, 28.370041, 37.443344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673252, 28.677034, 37.697868>,  <33.691959, 28.861231, 37.850582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673252, 28.677034, 37.697868>,  <33.642071, 28.370041, 37.443344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673252, 28.677034, 37.697868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186068, -0.615838, 0.765586,
		0.979439, -0.178078, 0.094797,
		0.077954, 0.767484, 0.636311,
		33.696640, 28.907280, 37.888763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910160, 28.161140, 38.024860>,  <33.642071, 28.370041, 37.443344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910160, 28.161140, 38.024860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764881, 28.505741, 38.166794>,  <33.677715, 28.712502, 38.251953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764881, 28.505741, 38.166794>,  <33.910160, 28.161140, 38.024860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764881, 28.505741, 38.166794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013940, -0.385820, 0.922469,
		0.931608, 0.330092, 0.152138,
		-0.363198, 0.861500, 0.354832,
		33.655922, 28.764191, 38.273243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258434, 28.342497, 38.727947>,  <33.910160, 28.161140, 38.024860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258434, 28.342497, 38.727947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931232, 28.572409, 38.736816>,  <33.734909, 28.710356, 38.742138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931232, 28.572409, 38.736816>,  <34.258434, 28.342497, 38.727947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931232, 28.572409, 38.736816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330122, -0.500687, 0.800208,
		0.471046, 0.647256, 0.599313,
		-0.818007, 0.574781, 0.022173,
		33.685829, 28.744843, 38.743469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150154, 28.498100, 39.459835>,  <34.258434, 28.342497, 38.727947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150154, 28.498100, 39.459835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797825, 28.596403, 39.297970>,  <33.586426, 28.655384, 39.200851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797825, 28.596403, 39.297970>,  <34.150154, 28.498100, 39.459835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797825, 28.596403, 39.297970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450680, -0.173400, 0.875682,
		0.145037, 0.953696, 0.263493,
		-0.880824, 0.245757, -0.404663,
		33.533577, 28.670130, 39.176571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832932, 29.051802, 39.881649>,  <34.150154, 28.498100, 39.459835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832932, 29.051802, 39.881649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529560, 28.866970, 39.697792>,  <33.347538, 28.756071, 39.587479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529560, 28.866970, 39.697792>,  <33.832932, 29.051802, 39.881649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529560, 28.866970, 39.697792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473863, -0.093269, 0.875645,
		-0.447489, 0.881920, -0.148226,
		-0.758424, -0.462080, -0.459646,
		33.302032, 28.728346, 39.559898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240124, 29.497906, 40.022331>,  <33.832932, 29.051802, 39.881649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240124, 29.497906, 40.022331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147202, 29.117031, 39.942959>,  <33.091450, 28.888506, 39.895336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147202, 29.117031, 39.942959>,  <33.240124, 29.497906, 40.022331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147202, 29.117031, 39.942959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574011, -0.030483, 0.818281,
		-0.785206, 0.303987, -0.539485,
		-0.232302, -0.952189, -0.198427,
		33.077511, 28.831375, 39.883430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556789, 29.453293, 40.247402>,  <33.240124, 29.497906, 40.022331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556789, 29.453293, 40.247402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669559, 29.073147, 40.194748>,  <32.737221, 28.845060, 40.163155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669559, 29.073147, 40.194748>,  <32.556789, 29.453293, 40.247402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669559, 29.073147, 40.194748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319461, -0.222359, 0.921141,
		-0.904690, -0.217637, -0.366293,
		0.281923, -0.950364, -0.131639,
		32.754135, 28.788038, 40.155254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975750, 29.010693, 40.354019>,  <32.556789, 29.453293, 40.247402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975750, 29.010693, 40.354019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300102, 28.786760, 40.422207>,  <32.494713, 28.652401, 40.463120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300102, 28.786760, 40.422207>,  <31.975750, 29.010693, 40.354019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300102, 28.786760, 40.422207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340621, -0.214632, 0.915374,
		-0.475868, -0.800325, -0.364732,
		0.810880, -0.559833, 0.170471,
		32.543365, 28.618811, 40.473347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687521, 28.482565, 40.767349>,  <31.975750, 29.010693, 40.354019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687521, 28.482565, 40.767349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083813, 28.449564, 40.810520>,  <32.321587, 28.429764, 40.836422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083813, 28.449564, 40.810520>,  <31.687521, 28.482565, 40.767349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083813, 28.449564, 40.810520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127197, -0.284397, 0.950231,
		-0.047703, -0.955150, -0.292255,
		0.990730, -0.082503, 0.107925,
		32.381031, 28.424812, 40.842899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833527, 27.779490, 40.953461>,  <31.687521, 28.482565, 40.767349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833527, 27.779490, 40.953461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134590, 28.011263, 41.078526>,  <32.315228, 28.150328, 41.153564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134590, 28.011263, 41.078526>,  <31.833527, 27.779490, 40.953461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134590, 28.011263, 41.078526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054683, -0.418226, 0.906695,
		0.656135, -0.699531, -0.283097,
		0.752660, 0.579434, 0.312665,
		32.360390, 28.185093, 41.172325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055862, 27.366659, 41.355984>,  <31.833527, 27.779490, 40.953461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055862, 27.366659, 41.355984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197117, 27.725574, 41.461941>,  <32.281868, 27.940924, 41.525517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197117, 27.725574, 41.461941>,  <32.055862, 27.366659, 41.355984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197117, 27.725574, 41.461941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064285, -0.259195, 0.963683,
		0.933361, -0.357340, -0.033848,
		0.353136, 0.897288, 0.264894,
		32.303059, 27.994761, 41.541409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682415, 27.231884, 41.710373>,  <32.055862, 27.366659, 41.355984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682415, 27.231884, 41.710373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535179, 27.590322, 41.809589>,  <32.446838, 27.805386, 41.869118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535179, 27.590322, 41.809589>,  <32.682415, 27.231884, 41.710373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535179, 27.590322, 41.809589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198055, -0.336213, 0.920725,
		0.908450, 0.289787, 0.301234,
		-0.368093, 0.896094, 0.248039,
		32.424751, 27.859150, 41.884003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980377, 27.406584, 42.308872>,  <32.682415, 27.231884, 41.710373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980377, 27.406584, 42.308872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673355, 27.662968, 42.306496>,  <32.489143, 27.816797, 42.305069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673355, 27.662968, 42.306496>,  <32.980377, 27.406584, 42.308872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673355, 27.662968, 42.306496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171548, -0.196481, 0.965384,
		0.617604, 0.742002, 0.260765,
		-0.767553, 0.640959, -0.005942,
		32.443089, 27.855255, 42.304714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691078, 27.614855, 42.723866>,  <32.980377, 27.406584, 42.308872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691078, 27.614855, 42.723866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036682, 27.632286, 42.924496>,  <34.244045, 27.642744, 43.044876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036682, 27.632286, 42.924496>,  <33.691078, 27.614855, 42.723866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036682, 27.632286, 42.924496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503461, -0.069419, -0.861225,
		-0.002711, 0.996635, -0.081919,
		0.864014, 0.043578, 0.501578,
		34.295887, 27.645359, 43.074970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996143, 28.139456, 42.489113>,  <33.691078, 27.614855, 42.723866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996143, 28.139456, 42.489113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308540, 27.955944, 42.658615>,  <34.495979, 27.845837, 42.760315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308540, 27.955944, 42.658615>,  <33.996143, 28.139456, 42.489113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308540, 27.955944, 42.658615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558899, 0.210621, -0.802041,
		0.278709, 0.863226, 0.420906,
		0.780995, -0.458781, 0.423754,
		34.542839, 27.818310, 42.785740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578758, 28.646095, 42.518429>,  <33.996143, 28.139456, 42.489113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578758, 28.646095, 42.518429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726482, 28.275656, 42.549286>,  <34.815117, 28.053392, 42.567799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726482, 28.275656, 42.549286>,  <34.578758, 28.646095, 42.518429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726482, 28.275656, 42.549286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597562, 0.173080, -0.782920,
		0.711710, 0.335235, 0.617322,
		0.369309, -0.926100, 0.077141,
		34.837276, 27.997826, 42.572430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287838, 28.658388, 42.695023>,  <34.578758, 28.646095, 42.518429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287838, 28.658388, 42.695023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236938, 28.309349, 42.506393>,  <35.206398, 28.099926, 42.393215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236938, 28.309349, 42.506393>,  <35.287838, 28.658388, 42.695023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236938, 28.309349, 42.506393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656204, 0.282457, -0.699725,
		0.743777, -0.398486, 0.536660,
		-0.127247, -0.872598, -0.471573,
		35.198765, 28.047569, 42.364922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000813, 28.463278, 42.514359>,  <35.287838, 28.658388, 42.695023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000813, 28.463278, 42.514359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731129, 28.286684, 42.277534>,  <35.569321, 28.180727, 42.135441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731129, 28.286684, 42.277534>,  <36.000813, 28.463278, 42.514359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731129, 28.286684, 42.277534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625031, 0.085966, -0.775852,
		0.393425, -0.893141, 0.217984,
		-0.674206, -0.441486, -0.592062,
		35.528866, 28.154238, 42.099915>
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
