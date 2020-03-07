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
	<4.194130, 2.999011, 3.365052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.558420, 3.011593, 3.529778>,  <4.776994, 3.019142, 3.628613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.558420, 3.011593, 3.529778>,  <4.194130, 2.999011, 3.365052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.558420, 3.011593, 3.529778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133025, -0.921622, 0.364577,
		0.391006, -0.386811, -0.835160,
		0.910724, 0.031455, 0.411815,
		4.831637, 3.021029, 3.653322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.316859, 2.294025, 3.446460>,  <4.194130, 2.999011, 3.365052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.316859, 2.294025, 3.446460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.631872, 2.438225, 3.646393>,  <4.820880, 2.524745, 3.766352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.631872, 2.438225, 3.646393>,  <4.316859, 2.294025, 3.446460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.631872, 2.438225, 3.646393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064538, -0.758352, 0.648642,
		0.612884, -0.543085, -0.573961,
		0.787533, 0.360500, 0.499831,
		4.868132, 2.546375, 3.796342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.695271, 1.737952, 3.526284>,  <4.316859, 2.294025, 3.446460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.695271, 1.737952, 3.526284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.769331, 1.998764, 3.820379>,  <4.813766, 2.155251, 3.996837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.769331, 1.998764, 3.820379>,  <4.695271, 1.737952, 3.526284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.769331, 1.998764, 3.820379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028245, -0.744335, 0.667209,
		0.982305, -0.144300, -0.119396,
		0.185148, 0.652030, 0.735240,
		4.824875, 2.194373, 4.040951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.114739, 1.391438, 4.046063>,  <4.695271, 1.737952, 3.526284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.114739, 1.391438, 4.046063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.992086, 1.711605, 4.252096>,  <4.918495, 1.903705, 4.375716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.992086, 1.711605, 4.252096>,  <5.114739, 1.391438, 4.046063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.992086, 1.711605, 4.252096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015982, -0.545404, 0.838021,
		0.951694, 0.248733, 0.180031,
		-0.306633, 0.800417, 0.515082,
		4.900096, 1.951730, 4.406621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.574054, 1.485854, 4.601359>,  <5.114739, 1.391438, 4.046063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.574054, 1.485854, 4.601359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.249584, 1.675533, 4.738258>,  <5.054903, 1.789341, 4.820398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.249584, 1.675533, 4.738258>,  <5.574054, 1.485854, 4.601359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.249584, 1.675533, 4.738258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047820, -0.529489, 0.846968,
		0.582846, 0.703405, 0.406832,
		-0.811174, 0.474197, 0.342248,
		5.006232, 1.817793, 4.840933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.714691, 1.709835, 5.194008>,  <5.574054, 1.485854, 4.601359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.714691, 1.709835, 5.194008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.316082, 1.676720, 5.197796>,  <5.076917, 1.656850, 5.200069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.316082, 1.676720, 5.197796>,  <5.714691, 1.709835, 5.194008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.316082, 1.676720, 5.197796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049918, -0.502096, 0.863370,
		-0.066722, 0.860840, 0.504482,
		-0.996522, -0.082789, 0.009470,
		5.017125, 1.651883, 5.200637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.533865, 1.564887, 5.858187>,  <5.714691, 1.709835, 5.194008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.533865, 1.564887, 5.858187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.188704, 1.462646, 5.683802>,  <4.981606, 1.401302, 5.579171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.188704, 1.462646, 5.683802>,  <5.533865, 1.564887, 5.858187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.188704, 1.462646, 5.683802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223355, -0.580950, 0.782694,
		-0.453331, 0.772764, 0.444215,
		-0.862904, -0.255602, -0.435963,
		4.929832, 1.385966, 5.553013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.004480, 1.569116, 6.353591>,  <5.533865, 1.564887, 5.858187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.004480, 1.569116, 6.353591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.862692, 1.328644, 6.067114>,  <4.777619, 1.184361, 5.895227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.862692, 1.328644, 6.067114>,  <5.004480, 1.569116, 6.353591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.862692, 1.328644, 6.067114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271722, -0.666651, 0.694078,
		-0.894717, 0.440636, 0.072955,
		-0.354471, -0.601180, -0.716193,
		4.756351, 1.148290, 5.852256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.321503, 0.640102, 1.502853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.997101, 0.411415, 1.453198>,  <4.802459, 0.274203, 1.423406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.997101, 0.411415, 1.453198>,  <5.321503, 0.640102, 1.502853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.997101, 0.411415, 1.453198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146115, 0.403399, -0.903283,
		0.566498, -0.714429, -0.410696,
		-0.811006, -0.571717, -0.124136,
		4.753799, 0.239900, 1.415958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.329150, 0.110548, 0.923732>,  <5.321503, 0.640102, 1.502853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.329150, 0.110548, 0.923732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.955162, 0.229851, 1.000542>,  <4.730769, 0.301433, 1.046628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.955162, 0.229851, 1.000542>,  <5.329150, 0.110548, 0.923732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.955162, 0.229851, 1.000542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058707, 0.403764, -0.912978,
		-0.349835, -0.864880, -0.359997,
		-0.934970, 0.298258, 0.192025,
		4.674671, 0.319328, 1.058149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.868622, -0.033449, 0.398751>,  <5.329150, 0.110548, 0.923732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.868622, -0.033449, 0.398751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.721508, 0.287300, 0.587107>,  <4.633240, 0.479749, 0.700120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.721508, 0.287300, 0.587107>,  <4.868622, -0.033449, 0.398751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.721508, 0.287300, 0.587107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020076, 0.513110, -0.858088,
		-0.929694, -0.306138, -0.204812,
		-0.367784, 0.801871, 0.470889,
		4.611173, 0.527862, 0.728374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.377972, 0.343578, -0.053809>,  <4.868622, -0.033449, 0.398751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.377972, 0.343578, -0.053809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.487133, 0.605530, 0.228086>,  <4.552629, 0.762701, 0.397224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.487133, 0.605530, 0.228086>,  <4.377972, 0.343578, -0.053809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.487133, 0.605530, 0.228086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084274, 0.713456, -0.695614,
		-0.958344, 0.249226, 0.139515,
		0.272902, 0.654880, 0.704739,
		4.569004, 0.801994, 0.439508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.877726, 0.931402, -0.000805>,  <4.377972, 0.343578, -0.053809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.877726, 0.931402, -0.000805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.216206, 1.067116, 0.163552>,  <4.419293, 1.148544, 0.262167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.216206, 1.067116, 0.163552>,  <3.877726, 0.931402, -0.000805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.216206, 1.067116, 0.163552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014103, 0.785089, -0.619223,
		-0.532681, 0.518191, 0.669126,
		0.846199, 0.339285, 0.410894,
		4.470065, 1.168901, 0.286820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.737025, 1.683768, 0.167845>,  <3.877726, 0.931402, -0.000805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.737025, 1.683768, 0.167845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.136780, 1.670631, 0.172720>,  <4.376633, 1.662750, 0.175645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.136780, 1.670631, 0.172720>,  <3.737025, 1.683768, 0.167845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.136780, 1.670631, 0.172720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033449, 0.791300, -0.610512,
		0.010405, 0.610545, 0.791913,
		0.999386, -0.032841, 0.012188,
		4.436596, 1.660779, 0.176376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.913658, 2.342670, 0.313245>,  <3.737025, 1.683768, 0.167845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.913658, 2.342670, 0.313245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.233982, 2.173950, 0.143168>,  <4.426177, 2.072718, 0.041123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.233982, 2.173950, 0.143168>,  <3.913658, 2.342670, 0.313245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.233982, 2.173950, 0.143168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071716, 0.772359, -0.631125,
		0.594608, 0.474918, 0.648763,
		0.800811, -0.421799, -0.425191,
		4.474226, 2.047410, 0.015611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.258944, 2.948400, -0.117727>,  <3.913658, 2.342670, 0.313245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.258944, 2.948400, -0.117727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.477062, 2.639565, -0.248282>,  <4.607934, 2.454263, -0.326615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.477062, 2.639565, -0.248282>,  <4.258944, 2.948400, -0.117727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.477062, 2.639565, -0.248282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245791, 0.519530, -0.818337,
		0.801397, 0.366014, 0.473071,
		0.545297, -0.772089, -0.326387,
		4.640651, 2.407938, -0.346199>
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
