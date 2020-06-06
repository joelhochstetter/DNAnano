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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.249915, 14.699262, 14.793828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.174824, 14.975529, 15.073180>,  <4.129769, 15.141289, 15.240791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.174824, 14.975529, 15.073180>,  <4.249915, 14.699262, 14.793828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.174824, 14.975529, 15.073180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755721, 0.352614, -0.551861,
		-0.627411, -0.631380, 0.455757,
		-0.187728, 0.690668, 0.698381,
		4.118505, 15.182729, 15.282695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.920474, 14.646937, 14.277925>,  <4.249915, 14.699262, 14.793828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.920474, 14.646937, 14.277925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.795526, 14.826430, 13.943007>,  <4.720556, 14.934126, 13.742057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.795526, 14.826430, 13.943007>,  <4.920474, 14.646937, 14.277925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.795526, 14.826430, 13.943007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373073, -0.868534, -0.326291,
		-0.873640, 0.210454, 0.438705,
		-0.312360, 0.448730, -0.837301,
		4.701814, 14.961050, 13.691819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.207965, 14.496163, 14.096316>,  <4.920474, 14.646937, 14.277925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.207965, 14.496163, 14.096316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.430367, 14.579705, 13.774512>,  <4.563809, 14.629830, 13.581429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.430367, 14.579705, 13.774512>,  <4.207965, 14.496163, 14.096316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.430367, 14.579705, 13.774512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013475, -0.965523, -0.259968,
		-0.831069, 0.155384, -0.534022,
		0.556006, 0.208855, -0.804510,
		4.597169, 14.642362, 13.533159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.911669, 14.350500, 13.385941>,  <4.207965, 14.496163, 14.096316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.911669, 14.350500, 13.385941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.309606, 14.310023, 13.383128>,  <4.548368, 14.285737, 13.381441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.309606, 14.310023, 13.383128>,  <3.911669, 14.350500, 13.385941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.309606, 14.310023, 13.383128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100721, -0.977260, -0.186595,
		0.012012, 0.186340, -0.982412,
		0.994842, -0.101191, -0.007030,
		4.608059, 14.279666, 13.381020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.257413, 14.124551, 12.666202>,  <3.911669, 14.350500, 13.385941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.257413, 14.124551, 12.666202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.453245, 14.020991, 12.999256>,  <4.570744, 13.958856, 13.199089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.453245, 14.020991, 12.999256>,  <4.257413, 14.124551, 12.666202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.453245, 14.020991, 12.999256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125777, -0.965885, -0.226375,
		0.862840, 0.006102, -0.505441,
		0.489579, -0.258898, 0.832637,
		4.600119, 13.943322, 13.249047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.697145, 13.601556, 12.426230>,  <4.257413, 14.124551, 12.666202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.697145, 13.601556, 12.426230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.664670, 13.561583, 12.822901>,  <4.645184, 13.537599, 13.060904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.664670, 13.561583, 12.822901>,  <4.697145, 13.601556, 12.426230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.664670, 13.561583, 12.822901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058166, -0.993740, -0.095378,
		0.995000, 0.049938, 0.086494,
		-0.081190, -0.099932, 0.991676,
		4.640313, 13.531603, 13.120403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.200675, 13.167870, 12.616756>,  <4.697145, 13.601556, 12.426230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.200675, 13.167870, 12.616756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.953116, 13.147784, 12.930303>,  <4.804580, 13.135734, 13.118430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.953116, 13.147784, 12.930303>,  <5.200675, 13.167870, 12.616756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.953116, 13.147784, 12.930303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027942, -0.995915, -0.085858,
		0.784974, -0.075040, 0.614967,
		-0.618898, -0.050213, 0.783864,
		4.767447, 13.132720, 13.165462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.513866, 12.615333, 12.990006>,  <5.200675, 13.167870, 12.616756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.513866, 12.615333, 12.990006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.129333, 12.666142, 13.087747>,  <4.898614, 12.696629, 13.146391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.129333, 12.666142, 13.087747>,  <5.513866, 12.615333, 12.990006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.129333, 12.666142, 13.087747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164801, -0.976213, -0.140886,
		0.220643, -0.175707, 0.959398,
		-0.961331, 0.127024, 0.244351,
		4.840934, 12.704249, 13.161052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.365788, 11.929074, 13.330596>,  <5.513866, 12.615333, 12.990006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.365788, 11.929074, 13.330596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.001352, 12.084401, 13.275278>,  <4.782691, 12.177597, 13.242087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.001352, 12.084401, 13.275278>,  <5.365788, 11.929074, 13.330596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.001352, 12.084401, 13.275278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343122, -0.900359, -0.267620,
		-0.228436, -0.196374, 0.953548,
		-0.911089, 0.388317, -0.138294,
		4.728025, 12.200896, 13.233789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.836813, 11.549545, 13.652957>,  <5.365788, 11.929074, 13.330596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.836813, 11.549545, 13.652957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.684593, 11.752493, 13.343698>,  <4.593261, 11.874261, 13.158142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.684593, 11.752493, 13.343698>,  <4.836813, 11.549545, 13.652957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.684593, 11.752493, 13.343698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171499, -0.860270, -0.480127,
		-0.908719, -0.050118, 0.414389,
		-0.380550, 0.507368, -0.773149,
		4.570428, 11.904703, 13.111753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.149452, 11.231308, 13.521658>,  <4.836813, 11.549545, 13.652957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.149452, 11.231308, 13.521658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.302381, 11.400289, 13.192936>,  <4.394139, 11.501678, 12.995703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.302381, 11.400289, 13.192936>,  <4.149452, 11.231308, 13.521658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.302381, 11.400289, 13.192936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268571, -0.800172, -0.536278,
		-0.884137, 0.425745, -0.192466,
		0.382324, 0.422452, -0.821804,
		4.417078, 11.527024, 12.946395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.798590, 10.861279, 13.034939>,  <4.149452, 11.231308, 13.521658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.798590, 10.861279, 13.034939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.065670, 11.047930, 12.802927>,  <4.225919, 11.159920, 12.663720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.065670, 11.047930, 12.802927>,  <3.798590, 10.861279, 13.034939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.065670, 11.047930, 12.802927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079925, -0.729722, -0.679057,
		-0.740126, 0.499766, -0.449942,
		0.667702, 0.466626, -0.580030,
		4.265981, 11.187918, 12.628918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.562522, 10.829292, 12.303606>,  <3.798590, 10.861279, 13.034939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.562522, 10.829292, 12.303606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.961429, 10.851495, 12.323099>,  <4.200774, 10.864817, 12.334795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.961429, 10.851495, 12.323099>,  <3.562522, 10.829292, 12.303606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.961429, 10.851495, 12.323099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073398, -0.818709, -0.569498,
		0.008287, 0.571519, -0.820547,
		0.997268, 0.055507, 0.048733,
		4.260610, 10.868147, 12.337719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.810012, 10.625365, 11.685377>,  <3.562522, 10.829292, 12.303606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.810012, 10.625365, 11.685377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.144852, 10.577085, 11.898806>,  <4.345755, 10.548118, 12.026863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.144852, 10.577085, 11.898806>,  <3.810012, 10.625365, 11.685377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.144852, 10.577085, 11.898806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207031, -0.832915, -0.513216,
		0.506364, 0.540078, -0.672243,
		0.837098, -0.120699, 0.533571,
		4.395981, 10.540875, 12.058877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.121004, 10.208506, 11.207776>,  <3.810012, 10.625365, 11.685377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.121004, 10.208506, 11.207776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.386125, 10.185691, 11.506424>,  <4.545197, 10.172002, 11.685613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.386125, 10.185691, 11.506424>,  <4.121004, 10.208506, 11.207776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.386125, 10.185691, 11.506424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430314, -0.786990, -0.442128,
		0.612799, 0.614324, -0.497075,
		0.662803, -0.057037, 0.746619,
		4.584965, 10.168580, 11.730410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.821836, 10.128215, 10.940912>,  <4.121004, 10.208506, 11.207776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.821836, 10.128215, 10.940912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.802834, 9.981688, 11.312623>,  <4.791433, 9.893773, 11.535649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.802834, 9.981688, 11.312623>,  <4.821836, 10.128215, 10.940912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.802834, 9.981688, 11.312623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550433, -0.785929, -0.281671,
		0.833527, 0.498125, 0.238966,
		-0.047503, -0.366315, 0.929278,
		4.788583, 9.871794, 11.591406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.501904, 9.924308, 11.067497>,  <4.821836, 10.128215, 10.940912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.501904, 9.924308, 11.067497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.268823, 9.726336, 11.325336>,  <5.128974, 9.607553, 11.480039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.268823, 9.726336, 11.325336>,  <5.501904, 9.924308, 11.067497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.268823, 9.726336, 11.325336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470376, -0.852203, -0.229121,
		0.662725, 0.169692, 0.729384,
		-0.582703, -0.494929, 0.644595,
		5.094012, 9.577858, 11.518714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.976146, 9.448568, 11.343462>,  <5.501904, 9.924308, 11.067497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.976146, 9.448568, 11.343462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.613128, 9.291509, 11.403046>,  <5.395318, 9.197272, 11.438796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.613128, 9.291509, 11.403046>,  <5.976146, 9.448568, 11.343462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.613128, 9.291509, 11.403046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330550, -0.886674, -0.323335,
		0.259037, -0.244202, 0.934486,
		-0.907544, -0.392650, 0.148960,
		5.340865, 9.173714, 11.447734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.069671, 8.808628, 11.596774>,  <5.976146, 9.448568, 11.343462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.069671, 8.808628, 11.596774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.693517, 8.783065, 11.463151>,  <5.467825, 8.767727, 11.382977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.693517, 8.783065, 11.463151>,  <6.069671, 8.808628, 11.596774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.693517, 8.783065, 11.463151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150836, -0.958680, -0.241207,
		-0.304840, -0.277215, 0.911167,
		-0.940383, -0.063907, -0.334058,
		5.411402, 8.763893, 11.362933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.892689, 8.062379, 11.771884>,  <6.069671, 8.808628, 11.596774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.892689, 8.062379, 11.771884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.612472, 8.161451, 11.504185>,  <5.444341, 8.220895, 11.343565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.612472, 8.161451, 11.504185>,  <5.892689, 8.062379, 11.771884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.612472, 8.161451, 11.504185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081522, -0.959472, -0.269754,
		-0.708938, -0.134416, 0.692344,
		-0.700544, 0.247680, -0.669248,
		5.402308, 8.235755, 11.303411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.269059, 7.570313, 11.763261>,  <5.892689, 8.062379, 11.771884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.269059, 7.570313, 11.763261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.252893, 7.740276, 11.401527>,  <5.243194, 7.842255, 11.184487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.252893, 7.740276, 11.401527>,  <5.269059, 7.570313, 11.763261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.252893, 7.740276, 11.401527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093643, -0.902700, -0.419956,
		-0.994785, 0.067712, 0.076272,
		-0.040414, 0.424909, -0.904334,
		5.240768, 7.867749, 11.130227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.791475, 7.074039, 11.431343>,  <5.269059, 7.570313, 11.763261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.791475, 7.074039, 11.431343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.975591, 7.294623, 11.153057>,  <5.086061, 7.426974, 10.986085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.975591, 7.294623, 11.153057>,  <4.791475, 7.074039, 11.431343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.975591, 7.294623, 11.153057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043630, -0.768670, -0.638156,
		-0.886695, 0.324092, -0.329752,
		0.460292, 0.551463, -0.695716,
		5.113678, 7.460062, 10.944343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.414974, 7.035729, 10.728744>,  <4.791475, 7.074039, 11.431343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.414974, 7.035729, 10.728744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.797406, 7.129981, 10.659014>,  <5.026865, 7.186532, 10.617176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.797406, 7.129981, 10.659014>,  <4.414974, 7.035729, 10.728744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.797406, 7.129981, 10.659014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029655, -0.669463, -0.742253,
		-0.291602, 0.704484, -0.647048,
		0.956080, 0.235630, -0.174325,
		5.084230, 7.200670, 10.606716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.432693, 7.218465, 10.048916>,  <4.414974, 7.035729, 10.728744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.432693, 7.218465, 10.048916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.799912, 7.096574, 10.150367>,  <5.020244, 7.023440, 10.211238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.799912, 7.096574, 10.150367>,  <4.432693, 7.218465, 10.048916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.799912, 7.096574, 10.150367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019936, -0.603432, -0.797166,
		0.395965, 0.736893, -0.547905,
		0.918049, -0.304727, 0.253628,
		5.075327, 7.005156, 10.226456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.835139, 7.152026, 9.427735>,  <4.432693, 7.218465, 10.048916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.835139, 7.152026, 9.427735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.022299, 6.917557, 9.692301>,  <5.134596, 6.776875, 9.851040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.022299, 6.917557, 9.692301>,  <4.835139, 7.152026, 9.427735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.022299, 6.917557, 9.692301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047346, -0.730692, -0.681064,
		0.882511, 0.349986, -0.314139,
		0.467902, -0.586173, 0.661414,
		5.162670, 6.741705, 9.890725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.605753, 6.954517, 9.136270>,  <4.835139, 7.152026, 9.427735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.605753, 6.954517, 9.136270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.438116, 6.701993, 9.397285>,  <5.337533, 6.550479, 9.553895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.438116, 6.701993, 9.397285>,  <5.605753, 6.954517, 9.136270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.438116, 6.701993, 9.397285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230923, -0.769182, -0.595847,
		0.878086, -0.099029, 0.468143,
		-0.419093, -0.631309, 0.652540,
		5.312387, 6.512600, 9.593047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.026517, 6.427519, 9.443513>,  <5.605753, 6.954517, 9.136270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.026517, 6.427519, 9.443513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.671114, 6.244418, 9.456276>,  <5.457873, 6.134557, 9.463934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.671114, 6.244418, 9.456276>,  <6.026517, 6.427519, 9.443513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.671114, 6.244418, 9.456276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383087, -0.778260, -0.497550,
		0.252587, -0.429854, 0.866848,
		-0.888507, -0.457753, 0.031907,
		5.404562, 6.107092, 9.465848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.128633, 5.663466, 9.410205>,  <6.026517, 6.427519, 9.443513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.128633, 5.663466, 9.410205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.742402, 5.693108, 9.310473>,  <5.510663, 5.710893, 9.250635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.742402, 5.693108, 9.310473>,  <6.128633, 5.663466, 9.410205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.742402, 5.693108, 9.310473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079638, -0.828297, -0.554600,
		-0.247615, -0.555366, 0.793886,
		-0.965580, 0.074104, -0.249327,
		5.452728, 5.715339, 9.235675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.851013, 5.446057, 9.119486>,  <6.128633, 5.663466, 9.410205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.851013, 5.446057, 9.119486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.656374, 5.108199, 9.030228>,  <6.539590, 4.905484, 8.976672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.656374, 5.108199, 9.030228>,  <6.851013, 5.446057, 9.119486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.656374, 5.108199, 9.030228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596946, -0.134966, -0.790847,
		0.637869, -0.518032, 0.569883,
		-0.486599, -0.844646, -0.223146,
		6.510394, 4.854805, 8.963284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.246921, 6.072980, 9.338146>,  <6.851013, 5.446057, 9.119486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.246921, 6.072980, 9.338146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.396636, 6.131001, 8.971787>,  <7.486466, 6.165812, 8.751972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.396636, 6.131001, 8.971787>,  <7.246921, 6.072980, 9.338146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.396636, 6.131001, 8.971787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924763, 0.131565, -0.357077,
		0.068705, 0.980638, 0.183381,
		0.374290, 0.145051, -0.915897,
		7.508924, 6.174516, 8.697019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.177885, 6.824110, 9.131338>,  <7.246921, 6.072980, 9.338146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.177885, 6.824110, 9.131338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.145886, 6.541876, 8.849700>,  <7.126687, 6.372535, 8.680717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.145886, 6.541876, 8.849700>,  <7.177885, 6.824110, 9.131338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.145886, 6.541876, 8.849700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946298, 0.275731, -0.168800,
		0.313244, 0.652780, -0.689751,
		-0.079996, -0.705585, -0.704095,
		7.121887, 6.330200, 8.638472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.870890, 7.427859, 9.207822>,  <7.177885, 6.824110, 9.131338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.870890, 7.427859, 9.207822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.268539, 7.430588, 9.251039>,  <7.507129, 7.432225, 9.276969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.268539, 7.430588, 9.251039>,  <6.870890, 7.427859, 9.207822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.268539, 7.430588, 9.251039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016696, 0.995735, 0.090739,
		-0.106962, -0.092010, 0.989997,
		0.994123, 0.006823, 0.108042,
		7.566776, 7.432635, 9.283451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.011796, 7.793393, 9.855528>,  <6.870890, 7.427859, 9.207822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.011796, 7.793393, 9.855528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.303590, 7.784078, 9.582088>,  <7.478666, 7.778489, 9.418023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.303590, 7.784078, 9.582088>,  <7.011796, 7.793393, 9.855528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.303590, 7.784078, 9.582088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038337, 0.996457, -0.074854,
		0.682923, 0.080812, 0.726007,
		0.729484, -0.023287, -0.683601,
		7.522435, 7.777092, 9.377007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.697038, 8.184594, 9.972526>,  <7.011796, 7.793393, 9.855528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.697038, 8.184594, 9.972526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.633671, 8.192542, 9.577657>,  <7.595651, 8.197310, 9.340735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.633671, 8.192542, 9.577657>,  <7.697038, 8.184594, 9.972526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.633671, 8.192542, 9.577657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144904, 0.989440, -0.003338,
		0.976682, -0.143574, -0.159622,
		-0.158416, 0.019869, -0.987172,
		7.586146, 8.198503, 9.281505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.289618, 8.548596, 9.573615>,  <7.697038, 8.184594, 9.972526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.289618, 8.548596, 9.573615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.918739, 8.564460, 9.424627>,  <7.696212, 8.573977, 9.335235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.918739, 8.564460, 9.424627>,  <8.289618, 8.548596, 9.573615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.918739, 8.564460, 9.424627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013888, 0.997335, 0.071619,
		0.374318, 0.061232, -0.925277,
		-0.927197, 0.039658, -0.372470,
		7.640580, 8.576357, 9.312886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.192863, 9.150232, 9.000032>,  <8.289618, 8.548596, 9.573615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.192863, 9.150232, 9.000032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.863472, 9.067348, 9.211293>,  <7.665837, 9.017616, 9.338050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.863472, 9.067348, 9.211293>,  <8.192863, 9.150232, 9.000032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.863472, 9.067348, 9.211293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027069, 0.915506, 0.401392,
		-0.566700, 0.344835, -0.748291,
		-0.823479, -0.207213, 0.528152,
		7.616428, 9.005183, 9.369739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.547105, 9.656952, 8.755509>,  <8.192863, 9.150232, 9.000032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.547105, 9.656952, 8.755509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.564949, 9.529293, 9.134171>,  <7.575655, 9.452698, 9.361368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.564949, 9.529293, 9.134171>,  <7.547105, 9.656952, 8.755509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.564949, 9.529293, 9.134171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008250, 0.947448, 0.319804,
		-0.998970, -0.022076, 0.039632,
		0.044609, -0.319147, 0.946655,
		7.578332, 9.433549, 9.418168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.099966, 10.058262, 9.123548>,  <7.547105, 9.656952, 8.755509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.099966, 10.058262, 9.123548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.355621, 9.918694, 9.397703>,  <7.509014, 9.834954, 9.562197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.355621, 9.918694, 9.397703>,  <7.099966, 10.058262, 9.123548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.355621, 9.918694, 9.397703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156783, 0.813343, 0.560260,
		-0.752942, -0.465541, 0.465134,
		0.639138, -0.348919, 0.685389,
		7.547362, 9.814019, 9.603320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.800354, 10.142138, 9.818496>,  <7.099966, 10.058262, 9.123548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.800354, 10.142138, 9.818496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.192459, 10.106189, 9.888930>,  <7.427722, 10.084620, 9.931191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.192459, 10.106189, 9.888930>,  <6.800354, 10.142138, 9.818496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.192459, 10.106189, 9.888930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015803, 0.852224, 0.522938,
		-0.197064, -0.515400, 0.833984,
		0.980263, -0.089873, 0.176088,
		7.486538, 10.079226, 9.941756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.846385, 10.194863, 10.563433>,  <6.800354, 10.142138, 9.818496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.846385, 10.194863, 10.563433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.218638, 10.267012, 10.436068>,  <7.441991, 10.310301, 10.359649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.218638, 10.267012, 10.436068>,  <6.846385, 10.194863, 10.563433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.218638, 10.267012, 10.436068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115369, 0.681119, 0.723026,
		0.347289, -0.709608, 0.613064,
		0.930634, 0.180371, -0.318412,
		7.497828, 10.321123, 10.340544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.181149, 10.246967, 11.139662>,  <6.846385, 10.194863, 10.563433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.181149, 10.246967, 11.139662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.423575, 10.437581, 10.884914>,  <7.569031, 10.551950, 10.732066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.423575, 10.437581, 10.884914>,  <7.181149, 10.246967, 11.139662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.423575, 10.437581, 10.884914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159762, 0.711429, 0.684358,
		0.779206, -0.516512, 0.355039,
		0.606064, 0.476534, -0.636869,
		7.605395, 10.580542, 10.693853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.647340, 10.525772, 11.516018>,  <7.181149, 10.246967, 11.139662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.647340, 10.525772, 11.516018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.709386, 10.734099, 11.180235>,  <7.746613, 10.859096, 10.978765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.709386, 10.734099, 11.180235>,  <7.647340, 10.525772, 11.516018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.709386, 10.734099, 11.180235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157516, 0.825832, 0.541471,
		0.975258, -0.216217, 0.046061,
		0.155114, 0.520819, -0.839457,
		7.755920, 10.890345, 10.928398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.080421, 11.016753, 11.723555>,  <7.647340, 10.525772, 11.516018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.080421, 11.016753, 11.723555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.968114, 11.180461, 11.376299>,  <7.900730, 11.278686, 11.167945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.968114, 11.180461, 11.376299>,  <8.080421, 11.016753, 11.723555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.968114, 11.180461, 11.376299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031473, 0.900112, 0.434521,
		0.959260, 0.149323, -0.239842,
		-0.280768, 0.409270, -0.868140,
		7.883883, 11.303242, 11.115857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.517400, 11.679847, 11.557534>,  <8.080421, 11.016753, 11.723555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.517400, 11.679847, 11.557534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.166615, 11.678948, 11.365311>,  <7.956145, 11.678410, 11.249976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.166615, 11.678948, 11.365311>,  <8.517400, 11.679847, 11.557534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.166615, 11.678948, 11.365311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212867, 0.898351, 0.384256,
		0.430847, 0.439273, -0.788296,
		-0.876960, -0.002246, -0.480559,
		7.903528, 11.678274, 11.221143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.467687, 12.380419, 11.188272>,  <8.517400, 11.679847, 11.557534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.467687, 12.380419, 11.188272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.115158, 12.213861, 11.277614>,  <7.903641, 12.113926, 11.331219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.115158, 12.213861, 11.277614>,  <8.467687, 12.380419, 11.188272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.115158, 12.213861, 11.277614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221419, 0.781514, 0.583275,
		-0.417427, 0.464598, -0.780963,
		-0.881322, -0.416395, 0.223355,
		7.850761, 12.088942, 11.344620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.021785, 12.880129, 11.153552>,  <8.467687, 12.380419, 11.188272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.021785, 12.880129, 11.153552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.785914, 12.629175, 11.356991>,  <7.644392, 12.478603, 11.479054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.785914, 12.629175, 11.356991>,  <8.021785, 12.880129, 11.153552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.785914, 12.629175, 11.356991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377626, 0.770834, 0.513044,
		-0.713920, 0.110470, -0.691459,
		-0.589676, -0.627384, 0.508597,
		7.609011, 12.440960, 11.509570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.572453, 13.287825, 11.311890>,  <8.021785, 12.880129, 11.153552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.572453, 13.287825, 11.311890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.470472, 12.974394, 11.538520>,  <7.409284, 12.786335, 11.674498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.470472, 12.974394, 11.538520>,  <7.572453, 13.287825, 11.311890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.470472, 12.974394, 11.538520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485820, 0.610416, 0.625596,
		-0.836049, -0.115756, -0.536305,
		-0.254953, -0.783577, 0.566574,
		7.393987, 12.739321, 11.708492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.849799, 13.298452, 11.444169>,  <7.572453, 13.287825, 11.311890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.849799, 13.298452, 11.444169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.012185, 13.087506, 11.742720>,  <7.109617, 12.960938, 11.921850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.012185, 13.087506, 11.742720>,  <6.849799, 13.298452, 11.444169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.012185, 13.087506, 11.742720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422507, 0.615879, 0.664967,
		-0.810358, -0.585303, 0.027210,
		0.405965, -0.527365, 0.746377,
		7.133975, 12.929296, 11.966633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.388869, 13.353090, 11.945269>,  <6.849799, 13.298452, 11.444169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.388869, 13.353090, 11.945269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.705224, 13.216441, 12.148361>,  <6.895036, 13.134452, 12.270217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.705224, 13.216441, 12.148361>,  <6.388869, 13.353090, 11.945269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.705224, 13.216441, 12.148361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256926, 0.567653, 0.782150,
		-0.555417, -0.749041, 0.361178,
		0.790886, -0.341624, 0.507732,
		6.942490, 13.113954, 12.300681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.193386, 12.958812, 12.526715>,  <6.388869, 13.353090, 11.945269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.193386, 12.958812, 12.526715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.557981, 13.105784, 12.600669>,  <6.776739, 13.193968, 12.645041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.557981, 13.105784, 12.600669>,  <6.193386, 12.958812, 12.526715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.557981, 13.105784, 12.600669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347660, 0.447988, 0.823674,
		0.219818, -0.815047, 0.536077,
		0.911490, 0.367431, 0.184884,
		6.831428, 13.216014, 12.656134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.267590, 12.940050, 13.260178>,  <6.193386, 12.958812, 12.526715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.267590, 12.940050, 13.260178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.575919, 13.189403, 13.207676>,  <6.760917, 13.339014, 13.176175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.575919, 13.189403, 13.207676>,  <6.267590, 12.940050, 13.260178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.575919, 13.189403, 13.207676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078723, 0.297665, 0.951419,
		0.632167, -0.723043, 0.278521,
		0.770823, 0.623382, -0.131254,
		6.807166, 13.376417, 13.168300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.638874, 13.025518, 13.973175>,  <6.267590, 12.940050, 13.260178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.638874, 13.025518, 13.973175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.770134, 13.331308, 13.751223>,  <6.848891, 13.514783, 13.618051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.770134, 13.331308, 13.751223>,  <6.638874, 13.025518, 13.973175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.770134, 13.331308, 13.751223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046072, 0.599663, 0.798925,
		0.943501, -0.236603, 0.232001,
		0.328151, 0.764476, -0.554882,
		6.868580, 13.560651, 13.584758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.285127, 13.402312, 14.360048>,  <6.638874, 13.025518, 13.973175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.285127, 13.402312, 14.360048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.116643, 13.666107, 14.110999>,  <7.015553, 13.824384, 13.961570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.116643, 13.666107, 14.110999>,  <7.285127, 13.402312, 14.360048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.116643, 13.666107, 14.110999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074035, 0.709202, 0.701107,
		0.903937, 0.249217, -0.347548,
		-0.421209, 0.659487, -0.622623,
		6.990280, 13.863954, 13.924212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.444187, 14.057337, 14.706436>,  <7.285127, 13.402312, 14.360048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.444187, 14.057337, 14.706436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.169276, 14.157074, 14.433533>,  <7.004330, 14.216916, 14.269791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.169276, 14.157074, 14.433533>,  <7.444187, 14.057337, 14.706436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.169276, 14.157074, 14.433533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238724, 0.809538, 0.536339,
		0.686047, 0.531485, -0.496853,
		-0.687278, 0.249343, -0.682259,
		6.963093, 14.231877, 14.228855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.565949, 14.708132, 14.463709>,  <7.444187, 14.057337, 14.706436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.565949, 14.708132, 14.463709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.180975, 14.614749, 14.408258>,  <6.949991, 14.558720, 14.374989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.180975, 14.614749, 14.408258>,  <7.565949, 14.708132, 14.463709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.180975, 14.614749, 14.408258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261171, 0.656452, 0.707715,
		-0.074220, 0.717334, -0.692765,
		-0.962435, -0.233456, -0.138625,
		6.892244, 14.544712, 14.366671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.409842, 15.413622, 14.512127>,  <7.565949, 14.708132, 14.463709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.409842, 15.413622, 14.512127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.103697, 15.157568, 14.538808>,  <6.920011, 15.003935, 14.554816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.103697, 15.157568, 14.538808>,  <7.409842, 15.413622, 14.512127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.103697, 15.157568, 14.538808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398014, 0.552207, 0.732565,
		-0.505775, 0.534128, -0.677421,
		-0.765361, -0.640136, 0.066702,
		6.874089, 14.965528, 14.558819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.409126, 15.646798, 15.254356>,  <7.409842, 15.413622, 14.512127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.409126, 15.646798, 15.254356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.528721, 15.557870, 15.625556>,  <7.600478, 15.504513, 15.848275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.528721, 15.557870, 15.625556>,  <7.409126, 15.646798, 15.254356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.528721, 15.557870, 15.625556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885477, -0.297876, -0.356650,
		0.355719, 0.928355, 0.107798,
		0.298988, -0.222320, 0.927998,
		7.618417, 15.491174, 15.903955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.011565, 16.082870, 15.484288>,  <7.409126, 15.646798, 15.254356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.011565, 16.082870, 15.484288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.989043, 15.735678, 15.681646>,  <7.975530, 15.527363, 15.800061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.989043, 15.735678, 15.681646>,  <8.011565, 16.082870, 15.484288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.989043, 15.735678, 15.681646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953872, -0.192725, -0.230187,
		0.294888, 0.457676, 0.838793,
		-0.056306, -0.867980, 0.493397,
		7.972152, 15.475284, 15.829665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.650732, 15.874397, 15.855935>,  <8.011565, 16.082870, 15.484288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.650732, 15.874397, 15.855935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.473156, 15.543386, 15.718466>,  <8.366611, 15.344778, 15.635984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.473156, 15.543386, 15.718466>,  <8.650732, 15.874397, 15.855935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.473156, 15.543386, 15.718466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839231, -0.249579, -0.483117,
		0.314020, -0.502896, 0.805287,
		-0.443941, -0.827530, -0.343673,
		8.339973, 15.295127, 15.615364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.045293, 15.368402, 16.024731>,  <8.650732, 15.874397, 15.855935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.045293, 15.368402, 16.024731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.827958, 15.245992, 15.712031>,  <8.697557, 15.172545, 15.524411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.827958, 15.245992, 15.712031>,  <9.045293, 15.368402, 16.024731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.827958, 15.245992, 15.712031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838722, -0.157399, -0.521317,
		0.036489, -0.938922, 0.342192,
		-0.543336, -0.306026, -0.781750,
		8.664957, 15.154184, 15.477507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.249845, 14.675527, 15.772519>,  <9.045293, 15.368402, 16.024731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.249845, 14.675527, 15.772519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.079357, 14.906145, 15.493684>,  <8.977065, 15.044517, 15.326383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.079357, 14.906145, 15.493684>,  <9.249845, 14.675527, 15.772519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.079357, 14.906145, 15.493684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776238, -0.162616, -0.609107,
		-0.464536, -0.800719, -0.378227,
		-0.426218, 0.576546, -0.697089,
		8.951492, 15.079109, 15.284557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.862636, 14.465268, 16.319250>,  <9.249845, 14.675527, 15.772519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.862636, 14.465268, 16.319250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.746365, 14.140363, 16.521532>,  <9.676601, 13.945419, 16.642900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.746365, 14.140363, 16.521532>,  <9.862636, 14.465268, 16.319250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.746365, 14.140363, 16.521532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143129, 0.485665, 0.862348,
		-0.946055, 0.323047, -0.024914,
		-0.290678, -0.812262, 0.505703,
		9.659161, 13.896684, 16.673243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.183702, 14.600799, 16.756500>,  <9.862636, 14.465268, 16.319250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.183702, 14.600799, 16.756500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.402269, 14.305312, 16.914349>,  <9.533410, 14.128020, 17.009058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.402269, 14.305312, 16.914349>,  <9.183702, 14.600799, 16.756500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.402269, 14.305312, 16.914349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071467, 0.428336, 0.900789,
		-0.834458, -0.520410, 0.181257,
		0.546418, -0.738716, 0.394620,
		9.566195, 14.083697, 17.032734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.898787, 14.150503, 17.354778>,  <9.183702, 14.600799, 16.756500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.898787, 14.150503, 17.354778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.294036, 14.206756, 17.379562>,  <9.531185, 14.240507, 17.394434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.294036, 14.206756, 17.379562>,  <8.898787, 14.150503, 17.354778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.294036, 14.206756, 17.379562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116571, 0.423184, 0.898514,
		0.100138, -0.895063, 0.434550,
		0.988121, 0.140631, 0.061962,
		9.590472, 14.248945, 17.398151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.996426, 13.850398, 17.935127>,  <8.898787, 14.150503, 17.354778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.996426, 13.850398, 17.935127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.303931, 14.099587, 17.877289>,  <9.488435, 14.249101, 17.842587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.303931, 14.099587, 17.877289>,  <8.996426, 13.850398, 17.935127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.303931, 14.099587, 17.877289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094930, 0.334747, 0.937514,
		0.632448, -0.707000, 0.316480,
		0.768763, 0.622973, -0.144595,
		9.534560, 14.286479, 17.833910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.250146, 13.847569, 18.550499>,  <8.996426, 13.850398, 17.935127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.250146, 13.847569, 18.550499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.414075, 14.165778, 18.371979>,  <9.512432, 14.356704, 18.264866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.414075, 14.165778, 18.371979>,  <9.250146, 13.847569, 18.550499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.414075, 14.165778, 18.371979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058342, 0.465416, 0.883167,
		0.910298, -0.387979, 0.144325,
		0.409822, 0.795525, -0.446303,
		9.537022, 14.404436, 18.238089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.766861, 13.902315, 18.994041>,  <9.250146, 13.847569, 18.550499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.766861, 13.902315, 18.994041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.679049, 14.249804, 18.816442>,  <9.626363, 14.458297, 18.709883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.679049, 14.249804, 18.816442>,  <9.766861, 13.902315, 18.994041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.679049, 14.249804, 18.816442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021910, 0.450593, 0.892461,
		0.975360, 0.205648, -0.079884,
		-0.219528, 0.868720, -0.443996,
		9.613192, 14.510420, 18.683243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.356492, 14.426894, 19.112967>,  <9.766861, 13.902315, 18.994041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.356492, 14.426894, 19.112967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030411, 14.641309, 19.025234>,  <9.834762, 14.769958, 18.972595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030411, 14.641309, 19.025234>,  <10.356492, 14.426894, 19.112967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.030411, 14.641309, 19.025234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110033, 0.515143, 0.850012,
		0.568625, 0.668800, -0.478928,
		-0.815204, 0.536036, -0.219333,
		9.785850, 14.802120, 18.959435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.616814, 15.037022, 19.189571>,  <10.356492, 14.426894, 19.112967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.616814, 15.037022, 19.189571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224342, 15.112717, 19.204950>,  <9.988859, 15.158134, 19.214178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224342, 15.112717, 19.204950>,  <10.616814, 15.037022, 19.189571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.224342, 15.112717, 19.204950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149881, 0.620772, 0.769530,
		0.121758, 0.760809, -0.637452,
		-0.981178, 0.189238, 0.038447,
		9.929989, 15.169488, 19.216484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.596957, 15.776730, 19.342758>,  <10.616814, 15.037022, 19.189571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.596957, 15.776730, 19.342758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.233739, 15.656062, 19.458998>,  <10.015808, 15.583662, 19.528742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.233739, 15.656062, 19.458998>,  <10.596957, 15.776730, 19.342758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.233739, 15.656062, 19.458998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041263, 0.625975, 0.778751,
		-0.416834, 0.719132, -0.555966,
		-0.908046, -0.301669, 0.290601,
		9.961326, 15.565561, 19.546179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.090998, 16.405333, 19.430603>,  <10.596957, 15.776730, 19.342758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.090998, 16.405333, 19.430603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.984747, 16.089619, 19.652042>,  <9.920997, 15.900190, 19.784906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.984747, 16.089619, 19.652042>,  <10.090998, 16.405333, 19.430603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.984747, 16.089619, 19.652042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011255, 0.571651, 0.820420,
		-0.964010, 0.224156, -0.142962,
		-0.265627, -0.789284, 0.553600,
		9.905059, 15.852834, 19.818123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.785492, 16.723627, 19.989023>,  <10.090998, 16.405333, 19.430603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.785492, 16.723627, 19.989023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.821404, 16.349623, 20.126251>,  <9.842952, 16.125221, 20.208588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.821404, 16.349623, 20.126251>,  <9.785492, 16.723627, 19.989023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.821404, 16.349623, 20.126251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211276, 0.354500, 0.910874,
		-0.973294, -0.009298, 0.229373,
		0.089782, -0.935010, 0.343069,
		9.848339, 16.069120, 20.229172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.414925, 16.714745, 20.603498>,  <9.785492, 16.723627, 19.989023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.414925, 16.714745, 20.603498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.649857, 16.391542, 20.622145>,  <9.790815, 16.197622, 20.633331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.649857, 16.391542, 20.622145>,  <9.414925, 16.714745, 20.603498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.649857, 16.391542, 20.622145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090386, 0.122717, 0.988317,
		-0.804285, -0.576255, 0.145107,
		0.587329, -0.808004, 0.046614,
		9.826056, 16.149141, 20.636129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.202060, 16.287424, 21.218714>,  <9.414925, 16.714745, 20.603498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.202060, 16.287424, 21.218714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.579077, 16.170387, 21.154215>,  <9.805287, 16.100164, 21.115515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.579077, 16.170387, 21.154215>,  <9.202060, 16.287424, 21.218714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.579077, 16.170387, 21.154215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220972, 0.184007, 0.957765,
		-0.250565, -0.938366, 0.238089,
		0.942544, -0.292593, -0.161247,
		9.861840, 16.082609, 21.105841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.343093, 15.904634, 21.807835>,  <9.202060, 16.287424, 21.218714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.343093, 15.904634, 21.807835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.702912, 15.974094, 21.647507>,  <9.918804, 16.015770, 21.551310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.702912, 15.974094, 21.647507>,  <9.343093, 15.904634, 21.807835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.702912, 15.974094, 21.647507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377786, 0.151382, 0.913434,
		0.219298, -0.973102, 0.070572,
		0.899548, 0.173653, -0.400822,
		9.972777, 16.026190, 21.527260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.715559, 15.469799, 22.163919>,  <9.343093, 15.904634, 21.807835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.715559, 15.469799, 22.163919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.926436, 15.779737, 22.024385>,  <10.052963, 15.965699, 21.940666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.926436, 15.779737, 22.024385>,  <9.715559, 15.469799, 22.163919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.926436, 15.779737, 22.024385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288279, 0.223083, 0.931198,
		0.799351, -0.591484, -0.105763,
		0.527194, 0.774843, -0.348834,
		10.084595, 16.012190, 21.919735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.399901, 15.510931, 22.575285>,  <9.715559, 15.469799, 22.163919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.399901, 15.510931, 22.575285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.341905, 15.870605, 22.410145>,  <10.307107, 16.086409, 22.311060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.341905, 15.870605, 22.410145>,  <10.399901, 15.510931, 22.575285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.341905, 15.870605, 22.410145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443251, 0.432077, 0.785390,
		0.884594, -0.069121, -0.461212,
		-0.144992, 0.899184, -0.412851,
		10.298408, 16.140360, 22.286289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.884228, 15.858956, 22.789635>,  <10.399901, 15.510931, 22.575285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.884228, 15.858956, 22.789635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.682864, 16.176929, 22.654188>,  <10.562046, 16.367714, 22.572920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.682864, 16.176929, 22.654188>,  <10.884228, 15.858956, 22.789635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.682864, 16.176929, 22.654188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319894, 0.535517, 0.781594,
		0.802650, 0.285139, -0.523878,
		-0.503409, 0.794932, -0.338619,
		10.531841, 16.415409, 22.552603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.290802, 16.227425, 22.899817>,  <10.884228, 15.858956, 22.789635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.290802, 16.227425, 22.899817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.969822, 16.458103, 22.838507>,  <10.777234, 16.596510, 22.801720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.969822, 16.458103, 22.838507>,  <11.290802, 16.227425, 22.899817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.969822, 16.458103, 22.838507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207257, 0.510235, 0.834688,
		0.559569, 0.638029, -0.528963,
		-0.802451, 0.576697, -0.153276,
		10.729087, 16.631113, 22.792524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.444415, 16.954512, 22.907885>,  <11.290802, 16.227425, 22.899817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.444415, 16.954512, 22.907885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.058942, 16.927088, 23.011126>,  <10.827658, 16.910633, 23.073071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.058942, 16.927088, 23.011126>,  <11.444415, 16.954512, 22.907885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.058942, 16.927088, 23.011126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165606, 0.604783, 0.778982,
		-0.209501, 0.793434, -0.571465,
		-0.963682, -0.068559, 0.258100,
		10.769837, 16.906521, 23.088556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.257612, 17.607853, 23.232422>,  <11.444415, 16.954512, 22.907885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.257612, 17.607853, 23.232422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.993054, 17.328585, 23.342052>,  <10.834320, 17.161024, 23.407831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.993054, 17.328585, 23.342052>,  <11.257612, 17.607853, 23.232422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.993054, 17.328585, 23.342052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239750, 0.149452, 0.959262,
		-0.710689, 0.700160, 0.068539,
		-0.661393, -0.698169, 0.274077,
		10.794637, 17.119133, 23.424276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.951166, 17.920237, 23.806259>,  <11.257612, 17.607853, 23.232422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.951166, 17.920237, 23.806259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.869169, 17.529249, 23.826397>,  <10.819971, 17.294657, 23.838480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.869169, 17.529249, 23.826397>,  <10.951166, 17.920237, 23.806259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.869169, 17.529249, 23.826397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180256, 0.012855, 0.983536,
		-0.962022, 0.210693, 0.173559,
		-0.204993, -0.977468, 0.050345,
		10.807672, 17.236010, 23.841501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.476084, 17.796740, 24.419565>,  <10.951166, 17.920237, 23.806259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.476084, 17.796740, 24.419565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.614718, 17.429411, 24.343075>,  <10.697899, 17.209015, 24.297180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.614718, 17.429411, 24.343075>,  <10.476084, 17.796740, 24.419565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.614718, 17.429411, 24.343075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336311, -0.068653, 0.939245,
		-0.875656, -0.389840, 0.285046,
		0.346586, -0.918320, -0.191224,
		10.718695, 17.153915, 24.285707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.175819, 17.392986, 24.953878>,  <10.476084, 17.796740, 24.419565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.175819, 17.392986, 24.953878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.497028, 17.196579, 24.818790>,  <10.689754, 17.078733, 24.737738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.497028, 17.196579, 24.818790>,  <10.175819, 17.392986, 24.953878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.497028, 17.196579, 24.818790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293850, -0.166776, 0.941189,
		-0.518467, -0.855035, 0.010362,
		0.803022, -0.491020, -0.337720,
		10.737935, 17.049273, 24.717474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.284619, 16.895298, 25.414469>,  <10.175819, 17.392986, 24.953878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.284619, 16.895298, 25.414469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.651075, 16.906298, 25.254503>,  <10.870949, 16.912897, 25.158524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.651075, 16.906298, 25.254503>,  <10.284619, 16.895298, 25.414469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.651075, 16.906298, 25.254503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399406, -0.147456, 0.904838,
		-0.034087, -0.988686, -0.146074,
		0.916140, 0.027500, -0.399914,
		10.925918, 16.914547, 25.134529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.664945, 16.443266, 25.737995>,  <10.284619, 16.895298, 25.414469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.664945, 16.443266, 25.737995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.939850, 16.715300, 25.635891>,  <11.104793, 16.878519, 25.574629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.939850, 16.715300, 25.635891>,  <10.664945, 16.443266, 25.737995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.939850, 16.715300, 25.635891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418171, -0.083069, 0.904562,
		0.593973, -0.728414, -0.341481,
		0.687262, 0.680083, -0.255261,
		11.146029, 16.919325, 25.559313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.230126, 16.280201, 26.166739>,  <10.664945, 16.443266, 25.737995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.230126, 16.280201, 26.166739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.362363, 16.631659, 26.028933>,  <11.441705, 16.842533, 25.946249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.362363, 16.631659, 26.028933>,  <11.230126, 16.280201, 26.166739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.362363, 16.631659, 26.028933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700636, 0.016083, 0.713337,
		0.632312, -0.477203, -0.610295,
		0.330591, 0.878646, -0.344515,
		11.461540, 16.895252, 25.925579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.932372, 16.221186, 26.307772>,  <11.230126, 16.280201, 26.166739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.932372, 16.221186, 26.307772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.855622, 16.611395, 26.264807>,  <11.809572, 16.845520, 26.239029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.855622, 16.611395, 26.264807>,  <11.932372, 16.221186, 26.307772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.855622, 16.611395, 26.264807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613576, 0.204655, 0.762654,
		0.765969, 0.080429, -0.637826,
		-0.191874, 0.975524, -0.107410,
		11.798060, 16.904053, 26.232584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.558208, 16.558079, 26.486784>,  <11.932372, 16.221186, 26.307772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.558208, 16.558079, 26.486784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.265072, 16.827887, 26.522497>,  <12.089190, 16.989771, 26.543924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.265072, 16.827887, 26.522497>,  <12.558208, 16.558079, 26.486784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.265072, 16.827887, 26.522497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344929, 0.255193, 0.903272,
		0.586490, 0.692749, -0.419676,
		-0.732839, 0.674519, 0.089281,
		12.045220, 17.030243, 26.549282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.889226, 17.011032, 26.810772>,  <12.558208, 16.558079, 26.486784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.889226, 17.011032, 26.810772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.509864, 17.129385, 26.856342>,  <12.282247, 17.200397, 26.883684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.509864, 17.129385, 26.856342>,  <12.889226, 17.011032, 26.810772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.509864, 17.129385, 26.856342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237974, 0.426871, 0.872439,
		0.209509, 0.854537, -0.475260,
		-0.948406, 0.295884, 0.113924,
		12.225342, 17.218151, 26.890520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.848969, 17.769758, 26.957352>,  <12.889226, 17.011032, 26.810772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.848969, 17.769758, 26.957352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.523626, 17.594206, 27.110104>,  <12.328421, 17.488874, 27.201756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.523626, 17.594206, 27.110104>,  <12.848969, 17.769758, 26.957352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.523626, 17.594206, 27.110104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205949, 0.396690, 0.894551,
		-0.544091, 0.806237, -0.232263,
		-0.813357, -0.438883, 0.381879,
		12.279619, 17.462542, 27.224667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.473573, 18.262020, 27.313873>,  <12.848969, 17.769758, 26.957352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.473573, 18.262020, 27.313873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.357632, 17.919785, 27.485434>,  <12.288067, 17.714443, 27.588369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.357632, 17.919785, 27.485434>,  <12.473573, 18.262020, 27.313873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.357632, 17.919785, 27.485434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015841, 0.443789, 0.895991,
		-0.956941, 0.266499, -0.115080,
		-0.289852, -0.855587, 0.428901,
		12.270676, 17.663109, 27.614103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.987256, 18.443279, 27.889372>,  <12.473573, 18.262020, 27.313873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.987256, 18.443279, 27.889372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.102382, 18.063755, 27.941410>,  <12.171457, 17.836040, 27.972633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.102382, 18.063755, 27.941410>,  <11.987256, 18.443279, 27.889372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.102382, 18.063755, 27.941410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104428, 0.166128, 0.980559,
		-0.951976, -0.268633, 0.146896,
		0.287814, -0.948809, 0.130098,
		12.188725, 17.779112, 27.980440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.599617, 18.149532, 28.493668>,  <11.987256, 18.443279, 27.889372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.599617, 18.149532, 28.493668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.931787, 17.926964, 28.482435>,  <12.131090, 17.793423, 28.475697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.931787, 17.926964, 28.482435>,  <11.599617, 18.149532, 28.493668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.931787, 17.926964, 28.482435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185760, 0.229017, 0.955534,
		-0.525248, -0.798716, 0.293542,
		0.830426, -0.556420, -0.028079,
		12.180916, 17.760038, 28.474010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.765009, 17.799097, 29.174559>,  <11.599617, 18.149532, 28.493668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.765009, 17.799097, 29.174559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.129428, 17.801399, 29.009653>,  <12.348080, 17.802780, 28.910709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.129428, 17.801399, 29.009653>,  <11.765009, 17.799097, 29.174559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.129428, 17.801399, 29.009653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387131, 0.332080, 0.860147,
		0.141854, -0.943234, 0.300313,
		0.911047, 0.005754, -0.412262,
		12.402742, 17.803125, 28.885975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.143435, 17.841576, 29.760677>,  <11.765009, 17.799097, 29.174559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.143435, 17.841576, 29.760677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.429316, 17.912746, 29.490108>,  <12.600843, 17.955448, 29.327766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.429316, 17.912746, 29.490108>,  <12.143435, 17.841576, 29.760677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.429316, 17.912746, 29.490108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639774, 0.224520, 0.735037,
		0.282655, -0.958088, 0.046629,
		0.714699, 0.177930, -0.676421,
		12.643725, 17.966124, 29.287182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.702130, 17.515015, 30.035677>,  <12.143435, 17.841576, 29.760677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.702130, 17.515015, 30.035677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.834308, 17.785133, 29.771927>,  <12.913614, 17.947205, 29.613676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.834308, 17.785133, 29.771927>,  <12.702130, 17.515015, 30.035677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.834308, 17.785133, 29.771927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659750, 0.334319, 0.673023,
		0.674935, -0.657421, -0.335055,
		0.330444, 0.675299, -0.659377,
		12.933441, 17.987722, 29.574114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.399817, 17.513380, 30.216305>,  <12.702130, 17.515015, 30.035677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.399817, 17.513380, 30.216305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.308360, 17.861698, 30.042208>,  <13.253486, 18.070690, 29.937750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.308360, 17.861698, 30.042208>,  <13.399817, 17.513380, 30.216305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.308360, 17.861698, 30.042208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678776, 0.463085, 0.569925,
		0.697844, -0.165125, -0.696956,
		-0.228642, 0.870796, -0.435244,
		13.239768, 18.122936, 29.911634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.020005, 17.854609, 30.039148>,  <13.399817, 17.513380, 30.216305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.020005, 17.854609, 30.039148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.766370, 18.162313, 30.007746>,  <13.614188, 18.346937, 29.988903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.766370, 18.162313, 30.007746>,  <14.020005, 17.854609, 30.039148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.766370, 18.162313, 30.007746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671108, 0.597914, 0.438308,
		0.384116, 0.225239, -0.895390,
		-0.634090, 0.769264, -0.078508,
		13.576143, 18.393093, 29.984194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.349828, 18.464180, 29.905872>,  <14.020005, 17.854609, 30.039148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.349828, 18.464180, 29.905872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.004496, 18.591770, 30.062290>,  <13.797297, 18.668325, 30.156141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.004496, 18.591770, 30.062290>,  <14.349828, 18.464180, 29.905872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.004496, 18.591770, 30.062290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504513, 0.562948, 0.654642,
		-0.011322, 0.762459, -0.646938,
		-0.863330, 0.318977, 0.391044,
		13.745497, 18.687464, 30.179604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.341378, 19.180138, 29.947783>,  <14.349828, 18.464180, 29.905872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.341378, 19.180138, 29.947783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.086764, 19.039618, 30.222420>,  <13.933996, 18.955305, 30.387201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.086764, 19.039618, 30.222420>,  <14.341378, 19.180138, 29.947783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.086764, 19.039618, 30.222420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458440, 0.543549, 0.703127,
		-0.620207, 0.762327, -0.184937,
		-0.636535, -0.351302, 0.686593,
		13.895803, 18.934227, 30.428398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161076, 19.777689, 30.332285>,  <14.341378, 19.180138, 29.947783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.161076, 19.777689, 30.332285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.067905, 19.483320, 30.586582>,  <14.012004, 19.306700, 30.739161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.067905, 19.483320, 30.586582>,  <14.161076, 19.777689, 30.332285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.067905, 19.483320, 30.586582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476804, 0.483338, 0.734195,
		-0.847587, 0.474136, 0.238308,
		-0.232925, -0.735921, 0.635741,
		13.998028, 19.262545, 30.777304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.935376, 20.103596, 31.048204>,  <14.161076, 19.777689, 30.332285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.935376, 20.103596, 31.048204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.985702, 19.727829, 31.175747>,  <14.015897, 19.502369, 31.252274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.985702, 19.727829, 31.175747>,  <13.935376, 20.103596, 31.048204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.985702, 19.727829, 31.175747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402253, 0.342113, 0.849206,
		-0.906843, 0.021420, 0.420925,
		0.125814, -0.939415, 0.318859,
		14.023446, 19.446005, 31.271404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.896208, 20.129477, 31.807634>,  <13.935376, 20.103596, 31.048204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.896208, 20.129477, 31.807634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074540, 19.780958, 31.725584>,  <14.181540, 19.571846, 31.676353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074540, 19.780958, 31.725584>,  <13.896208, 20.129477, 31.807634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.074540, 19.780958, 31.725584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562868, 0.094700, 0.821104,
		-0.696000, -0.481533, 0.532645,
		0.445830, -0.871297, -0.205128,
		14.208289, 19.519569, 31.664045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928328, 19.789299, 32.484539>,  <13.896208, 20.129477, 31.807634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928328, 19.789299, 32.484539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.191377, 19.631311, 32.227936>,  <14.349206, 19.536518, 32.073975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.191377, 19.631311, 32.227936>,  <13.928328, 19.789299, 32.484539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.191377, 19.631311, 32.227936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664955, -0.095894, 0.740702,
		-0.354071, -0.913676, 0.199574,
		0.657624, -0.394969, -0.641506,
		14.388664, 19.512821, 32.035484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.925719, 20.130707, 33.171036>,  <13.928328, 19.789299, 32.484539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.925719, 20.130707, 33.171036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.644363, 19.848560, 33.135929>,  <13.475550, 19.679274, 33.114864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.644363, 19.848560, 33.135929>,  <13.925719, 20.130707, 33.171036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.644363, 19.848560, 33.135929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707555, -0.683029, -0.181211,
		0.067875, -0.189559, 0.979520,
		-0.703391, -0.705365, -0.087763,
		13.433346, 19.636951, 33.109600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.499679, 20.294046, 32.762722>,  <13.925719, 20.130707, 33.171036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.499679, 20.294046, 32.762722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.501342, 19.989676, 33.022251>,  <14.502340, 19.807053, 33.177967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.501342, 19.989676, 33.022251>,  <14.499679, 20.294046, 32.762722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.501342, 19.989676, 33.022251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912347, -0.262743, -0.313988,
		0.409396, 0.593258, 0.693138,
		0.004159, -0.760928, 0.648824,
		14.502589, 19.761396, 33.216900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.922415, 20.272158, 33.427597>,  <14.499679, 20.294046, 32.762722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.922415, 20.272158, 33.427597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.876568, 19.913130, 33.257309>,  <14.849059, 19.697714, 33.155136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.876568, 19.913130, 33.257309>,  <14.922415, 20.272158, 33.427597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.876568, 19.913130, 33.257309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973991, -0.017217, -0.225934,
		0.195462, -0.440540, 0.876196,
		-0.114618, -0.897568, -0.425717,
		14.842182, 19.643860, 33.129593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423011, 19.835457, 33.738735>,  <14.922415, 20.272158, 33.427597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.423011, 19.835457, 33.738735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.315714, 19.723169, 33.370117>,  <15.251336, 19.655798, 33.148945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.315714, 19.723169, 33.370117>,  <15.423011, 19.835457, 33.738735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.315714, 19.723169, 33.370117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960100, -0.156431, -0.231814,
		-0.079084, -0.946957, 0.311477,
		-0.268242, -0.280717, -0.921545,
		15.235241, 19.638954, 33.093655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.683085, 19.130234, 33.536507>,  <15.423011, 19.835457, 33.738735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.683085, 19.130234, 33.536507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.617870, 19.349304, 33.208244>,  <15.578741, 19.480745, 33.011288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.617870, 19.349304, 33.208244>,  <15.683085, 19.130234, 33.536507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.617870, 19.349304, 33.208244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835017, -0.366445, -0.410444,
		-0.525514, -0.752178, -0.397573,
		-0.163038, 0.547674, -0.820653,
		15.568959, 19.513607, 32.962048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760890, 18.730993, 32.869404>,  <15.683085, 19.130234, 33.536507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.760890, 18.730993, 32.869404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848188, 19.112066, 32.784771>,  <15.900568, 19.340710, 32.733990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848188, 19.112066, 32.784771>,  <15.760890, 18.730993, 32.869404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848188, 19.112066, 32.784771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855448, -0.291102, -0.428331,
		-0.469656, -0.087518, -0.878501,
		0.218247, 0.952680, -0.211585,
		15.913663, 19.397871, 32.721294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.717383, 19.001194, 32.108894>,  <15.760890, 18.730993, 32.869404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.717383, 19.001194, 32.108894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.961429, 19.118105, 32.403469>,  <16.107855, 19.188251, 32.580215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.961429, 19.118105, 32.403469>,  <15.717383, 19.001194, 32.108894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.961429, 19.118105, 32.403469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772358, -0.012101, -0.635072,
		-0.176704, 0.956258, -0.233124,
		0.610113, 0.292275, 0.736435,
		16.144463, 19.205788, 32.624401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.082003, 19.686644, 32.032459>,  <15.717383, 19.001194, 32.108894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.082003, 19.686644, 32.032459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.302080, 19.456984, 32.274994>,  <16.434126, 19.319187, 32.420513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.302080, 19.456984, 32.274994>,  <16.082003, 19.686644, 32.032459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.302080, 19.456984, 32.274994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772251, 0.073620, -0.631038,
		0.317672, 0.815434, 0.483893,
		0.550194, -0.574150, 0.606333,
		16.467138, 19.284739, 32.456894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745731, 20.042479, 32.060223>,  <16.082003, 19.686644, 32.032459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.745731, 20.042479, 32.060223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.734426, 19.644270, 32.096306>,  <16.727644, 19.405344, 32.117954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.734426, 19.644270, 32.096306>,  <16.745731, 20.042479, 32.060223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.734426, 19.644270, 32.096306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791408, -0.077409, -0.606367,
		0.610635, 0.054252, 0.790052,
		-0.028260, -0.995522, 0.090204,
		16.725948, 19.345613, 32.123367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.467672, 19.711824, 31.994036>,  <16.745731, 20.042479, 32.060223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.467672, 19.711824, 31.994036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.201141, 19.433895, 31.885796>,  <17.041224, 19.267138, 31.820852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.201141, 19.433895, 31.885796>,  <17.467672, 19.711824, 31.994036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.201141, 19.433895, 31.885796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672080, -0.402446, -0.621567,
		0.322978, -0.596033, 0.735139,
		-0.666328, -0.694825, -0.270601,
		17.001244, 19.225447, 31.804615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975185, 19.123358, 31.784628>,  <17.467672, 19.711824, 31.994036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975185, 19.123358, 31.784628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605440, 19.011017, 31.681343>,  <17.383593, 18.943611, 31.619371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605440, 19.011017, 31.681343>,  <17.975185, 19.123358, 31.784628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.605440, 19.011017, 31.681343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381082, -0.647531, -0.659909,
		0.018138, -0.708396, 0.705582,
		-0.924363, -0.280855, -0.258212,
		17.328131, 18.926760, 31.603880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.903038, 18.386438, 31.830000>,  <17.975185, 19.123358, 31.784628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.903038, 18.386438, 31.830000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615082, 18.482260, 31.569424>,  <17.442308, 18.539753, 31.413078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615082, 18.482260, 31.569424>,  <17.903038, 18.386438, 31.830000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615082, 18.482260, 31.569424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176525, -0.844503, -0.505621,
		-0.671266, -0.478987, 0.565662,
		-0.719890, 0.239553, -0.651439,
		17.399115, 18.554125, 31.373991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.741167, 17.691584, 31.684727>,  <17.903038, 18.386438, 31.830000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.741167, 17.691584, 31.684727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.545391, 17.921047, 31.422012>,  <17.427925, 18.058725, 31.264383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.545391, 17.921047, 31.422012>,  <17.741167, 17.691584, 31.684727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.545391, 17.921047, 31.422012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000751, -0.753438, -0.657519,
		-0.872037, -0.321323, 0.369193,
		-0.489440, 0.573658, -0.656784,
		17.398560, 18.093145, 31.224977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120316, 17.305258, 31.534340>,  <17.741167, 17.691584, 31.684727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120316, 17.305258, 31.534340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183052, 17.565048, 31.236729>,  <17.220694, 17.720922, 31.058161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183052, 17.565048, 31.236729>,  <17.120316, 17.305258, 31.534340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.183052, 17.565048, 31.236729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217977, -0.712011, -0.667478,
		-0.963269, 0.266869, 0.029900,
		0.156840, 0.649478, -0.744029,
		17.230104, 17.759892, 31.013519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666374, 17.159624, 31.058178>,  <17.120316, 17.305258, 31.534340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.666374, 17.159624, 31.058178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931250, 17.369768, 30.844448>,  <17.090176, 17.495853, 30.716209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931250, 17.369768, 30.844448>,  <16.666374, 17.159624, 31.058178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931250, 17.369768, 30.844448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086674, -0.654578, -0.751009,
		-0.744306, 0.543623, -0.387921,
		0.662191, 0.525358, -0.534325,
		17.129908, 17.527376, 30.684151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.254019, 17.400873, 30.379953>,  <16.666374, 17.159624, 31.058178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.254019, 17.400873, 30.379953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.653677, 17.414175, 30.370169>,  <16.893473, 17.422155, 30.364298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.653677, 17.414175, 30.370169>,  <16.254019, 17.400873, 30.379953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.653677, 17.414175, 30.370169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004559, -0.500034, -0.865994,
		-0.041029, 0.865367, -0.499456,
		0.999148, 0.033254, -0.024461,
		16.953421, 17.424150, 30.362831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.406652, 17.517069, 29.705959>,  <16.254019, 17.400873, 30.379953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.406652, 17.517069, 29.705959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765854, 17.391420, 29.829193>,  <16.981375, 17.316032, 29.903133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765854, 17.391420, 29.829193>,  <16.406652, 17.517069, 29.705959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765854, 17.391420, 29.829193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135670, -0.468411, -0.873032,
		0.418548, 0.825784, -0.378019,
		0.898004, -0.314120, 0.308087,
		17.035255, 17.297184, 29.921619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671770, 17.624252, 29.099846>,  <16.406652, 17.517069, 29.705959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.671770, 17.624252, 29.099846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.893171, 17.379763, 29.326136>,  <17.026012, 17.233068, 29.461910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.893171, 17.379763, 29.326136>,  <16.671770, 17.624252, 29.099846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.893171, 17.379763, 29.326136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169246, -0.582543, -0.794984,
		0.815470, 0.535771, -0.218992,
		0.553502, -0.611222, 0.565724,
		17.059221, 17.196396, 29.495853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395031, 17.565329, 28.860176>,  <16.671770, 17.624252, 29.099846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395031, 17.565329, 28.860176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306309, 17.223974, 29.048872>,  <17.253075, 17.019161, 29.162088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306309, 17.223974, 29.048872>,  <17.395031, 17.565329, 28.860176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306309, 17.223974, 29.048872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354330, -0.521257, -0.776364,
		0.908434, -0.005052, 0.417998,
		-0.221806, -0.853385, 0.471738,
		17.239767, 16.967958, 29.190393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930553, 17.069136, 28.723648>,  <17.395031, 17.565329, 28.860176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.930553, 17.069136, 28.723648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615345, 16.846628, 28.829166>,  <17.426220, 16.713123, 28.892477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615345, 16.846628, 28.829166>,  <17.930553, 17.069136, 28.723648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615345, 16.846628, 28.829166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188082, -0.625522, -0.757197,
		0.586216, -0.547071, 0.597548,
		-0.788020, -0.556269, 0.263797,
		17.378939, 16.679747, 28.908306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.176079, 16.385153, 28.644646>,  <17.930553, 17.069136, 28.723648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.176079, 16.385153, 28.644646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776545, 16.370504, 28.632053>,  <17.536825, 16.361715, 28.624498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776545, 16.370504, 28.632053>,  <18.176079, 16.385153, 28.644646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776545, 16.370504, 28.632053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047049, -0.591065, -0.805250,
		0.010880, -0.805792, 0.592099,
		-0.998833, -0.036619, -0.031481,
		17.476894, 16.359518, 28.622608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.065247, 15.682597, 28.332933>,  <18.176079, 16.385153, 28.644646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.065247, 15.682597, 28.332933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.714033, 15.871702, 28.303123>,  <17.503305, 15.985166, 28.285236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.714033, 15.871702, 28.303123>,  <18.065247, 15.682597, 28.332933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.714033, 15.871702, 28.303123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211368, -0.522750, -0.825867,
		-0.429397, -0.709386, 0.558919,
		-0.878033, 0.472762, -0.074526,
		17.450623, 16.013531, 28.280766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548595, 15.173339, 28.085032>,  <18.065247, 15.682597, 28.332933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548595, 15.173339, 28.085032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.406439, 15.542628, 28.026581>,  <17.321144, 15.764202, 27.991510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.406439, 15.542628, 28.026581>,  <17.548595, 15.173339, 28.085032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.406439, 15.542628, 28.026581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165102, -0.215875, -0.962361,
		-0.920020, -0.317891, 0.229147,
		-0.355393, 0.923224, -0.146125,
		17.299820, 15.819595, 27.982744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826269, 15.109666, 27.869852>,  <17.548595, 15.173339, 28.085032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826269, 15.109666, 27.869852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.970039, 15.456689, 27.732357>,  <17.056301, 15.664903, 27.649860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.970039, 15.456689, 27.732357>,  <16.826269, 15.109666, 27.869852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.970039, 15.456689, 27.732357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366428, -0.207558, -0.907001,
		-0.858222, 0.451954, 0.243296,
		0.359425, 0.867558, -0.343740,
		17.077868, 15.716956, 27.629234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.221050, 15.386248, 27.417353>,  <16.826269, 15.109666, 27.869852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.221050, 15.386248, 27.417353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.530359, 15.607160, 27.292749>,  <16.715944, 15.739707, 27.217987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.530359, 15.607160, 27.292749>,  <16.221050, 15.386248, 27.417353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.530359, 15.607160, 27.292749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428846, 0.093648, -0.898511,
		-0.467057, 0.828383, 0.309258,
		0.773272, 0.552280, -0.311510,
		16.762341, 15.772843, 27.199297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.915664, 15.806046, 27.008095>,  <16.221050, 15.386248, 27.417353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.915664, 15.806046, 27.008095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.299427, 15.822840, 26.896545>,  <16.529686, 15.832915, 26.829615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.299427, 15.822840, 26.896545>,  <15.915664, 15.806046, 27.008095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299427, 15.822840, 26.896545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281386, 0.076349, -0.956553,
		-0.018867, 0.996197, 0.085064,
		0.959409, 0.041983, -0.278875,
		16.587250, 15.835435, 26.812883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976166, 16.413507, 26.592316>,  <15.915664, 15.806046, 27.008095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976166, 16.413507, 26.592316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.253307, 16.140163, 26.500254>,  <16.419592, 15.976157, 26.445017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.253307, 16.140163, 26.500254>,  <15.976166, 16.413507, 26.592316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253307, 16.140163, 26.500254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332090, -0.019083, -0.943055,
		0.640054, 0.729832, -0.240159,
		0.692854, -0.683360, -0.230155,
		16.461164, 15.935155, 26.431208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.220354, 16.638760, 25.910795>,  <15.976166, 16.413507, 26.592316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.220354, 16.638760, 25.910795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.358419, 16.263699, 25.927135>,  <16.441257, 16.038662, 25.936939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.358419, 16.263699, 25.927135>,  <16.220354, 16.638760, 25.910795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.358419, 16.263699, 25.927135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124990, -0.089062, -0.988153,
		0.930183, 0.335966, -0.147938,
		0.345161, -0.937654, 0.040851,
		16.461967, 15.982403, 25.939390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.554991, 16.575609, 25.265287>,  <16.220354, 16.638760, 25.910795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.554991, 16.575609, 25.265287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.478207, 16.202635, 25.387737>,  <16.432137, 15.978850, 25.461208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.478207, 16.202635, 25.387737>,  <16.554991, 16.575609, 25.265287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478207, 16.202635, 25.387737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278864, -0.247246, -0.927957,
		0.940950, -0.263499, -0.212561,
		-0.191961, -0.932436, 0.306126,
		16.420618, 15.922904, 25.479574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875912, 16.019150, 24.833115>,  <16.554991, 16.575609, 25.265287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875912, 16.019150, 24.833115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583467, 15.824375, 25.024265>,  <16.408001, 15.707510, 25.138956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583467, 15.824375, 25.024265>,  <16.875912, 16.019150, 24.833115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583467, 15.824375, 25.024265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360397, -0.319097, -0.876522,
		0.579301, -0.813061, 0.057805,
		-0.731112, -0.486938, 0.477878,
		16.364134, 15.678294, 25.167629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765903, 15.415881, 24.454643>,  <16.875912, 16.019150, 24.833115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.765903, 15.415881, 24.454643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422060, 15.488809, 24.645573>,  <16.215754, 15.532565, 24.760130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422060, 15.488809, 24.645573>,  <16.765903, 15.415881, 24.454643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422060, 15.488809, 24.645573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510468, -0.265581, -0.817856,
		-0.022341, -0.946693, 0.321362,
		-0.859606, 0.182317, 0.477323,
		16.164179, 15.543504, 24.788769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396675, 14.867727, 24.270254>,  <16.765903, 15.415881, 24.454643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.396675, 14.867727, 24.270254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148012, 15.148022, 24.410259>,  <15.998814, 15.316198, 24.494263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148012, 15.148022, 24.410259>,  <16.396675, 14.867727, 24.270254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.148012, 15.148022, 24.410259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606613, -0.148006, -0.781099,
		-0.495540, -0.697899, 0.517085,
		-0.621660, 0.700736, 0.350012,
		15.961514, 15.358242, 24.515263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.699327, 14.485955, 24.376616>,  <16.396675, 14.867727, 24.270254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.699327, 14.485955, 24.376616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693675, 14.883610, 24.333729>,  <15.690284, 15.122202, 24.307997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693675, 14.883610, 24.333729>,  <15.699327, 14.485955, 24.376616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693675, 14.883610, 24.333729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610750, -0.093482, -0.786286,
		-0.791697, 0.054371, 0.608490,
		-0.014132, 0.994135, -0.107216,
		15.689435, 15.181850, 24.301563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060026, 14.574683, 24.196812>,  <15.699327, 14.485955, 24.376616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.060026, 14.574683, 24.196812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.232903, 14.919902, 24.092230>,  <15.336629, 15.127033, 24.029480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.232903, 14.919902, 24.092230>,  <15.060026, 14.574683, 24.196812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.232903, 14.919902, 24.092230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565830, 0.033777, -0.823829,
		-0.702172, 0.503993, 0.502937,
		0.432192, 0.863047, -0.261457,
		15.362560, 15.178816, 24.013792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.543155, 14.965490, 24.177673>,  <15.060026, 14.574683, 24.196812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.543155, 14.965490, 24.177673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823178, 15.105248, 23.928566>,  <14.991193, 15.189103, 23.779102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823178, 15.105248, 23.928566>,  <14.543155, 14.965490, 24.177673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.823178, 15.105248, 23.928566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628617, -0.112197, -0.769580,
		-0.338760, 0.930234, 0.141092,
		0.700059, 0.349396, -0.622769,
		15.033195, 15.210067, 23.741735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128740, 15.108049, 23.657463>,  <14.543155, 14.965490, 24.177673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128740, 15.108049, 23.657463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484721, 15.167861, 23.485126>,  <14.698310, 15.203748, 23.381723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484721, 15.167861, 23.485126>,  <14.128740, 15.108049, 23.657463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484721, 15.167861, 23.485126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421208, -0.092677, -0.902217,
		-0.174836, 0.984404, -0.019496,
		0.889953, 0.149529, -0.430842,
		14.751707, 15.212720, 23.355873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.009455, 15.565520, 23.159101>,  <14.128740, 15.108049, 23.657463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.009455, 15.565520, 23.159101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343955, 15.393419, 23.023123>,  <14.544656, 15.290158, 22.941536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343955, 15.393419, 23.023123>,  <14.009455, 15.565520, 23.159101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343955, 15.393419, 23.023123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337244, 0.085290, -0.937546,
		0.432377, 0.898670, -0.073776,
		0.836252, -0.430253, -0.339948,
		14.594831, 15.264343, 22.921139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.196877, 15.875088, 22.555943>,  <14.009455, 15.565520, 23.159101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.196877, 15.875088, 22.555943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371955, 15.516103, 22.534090>,  <14.477001, 15.300712, 22.520979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371955, 15.516103, 22.534090>,  <14.196877, 15.875088, 22.555943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371955, 15.516103, 22.534090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367378, -0.123050, -0.921896,
		0.820645, 0.423578, -0.383566,
		0.437693, -0.897463, -0.054633,
		14.503263, 15.246863, 22.517700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.345739, 15.876875, 21.866257>,  <14.196877, 15.875088, 22.555943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.345739, 15.876875, 21.866257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.396255, 15.503083, 21.999403>,  <14.426565, 15.278808, 22.079290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.396255, 15.503083, 21.999403>,  <14.345739, 15.876875, 21.866257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.396255, 15.503083, 21.999403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399599, -0.355045, -0.845141,
		0.907949, -0.026280, -0.418256,
		0.126289, -0.934480, 0.332864,
		14.434142, 15.222739, 22.099262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749522, 15.513011, 21.297951>,  <14.345739, 15.876875, 21.866257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749522, 15.513011, 21.297951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528760, 15.268855, 21.525221>,  <14.396302, 15.122361, 21.661583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528760, 15.268855, 21.525221>,  <14.749522, 15.513011, 21.297951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.528760, 15.268855, 21.525221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353094, -0.446197, -0.822334,
		0.755463, -0.654470, 0.030734,
		-0.551907, -0.610391, 0.568174,
		14.363188, 15.085738, 21.695673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.920958, 14.858755, 21.122471>,  <14.749522, 15.513011, 21.297951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.920958, 14.858755, 21.122471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.559553, 14.815746, 21.288414>,  <14.342710, 14.789941, 21.387980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.559553, 14.815746, 21.288414>,  <14.920958, 14.858755, 21.122471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.559553, 14.815746, 21.288414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327006, -0.452729, -0.829520,
		0.277010, -0.885141, 0.373886,
		-0.903511, -0.107522, 0.414857,
		14.288500, 14.783490, 21.412870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.543260, 14.265959, 20.769384>,  <14.920958, 14.858755, 21.122471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.543260, 14.265959, 20.769384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.252809, 14.472260, 20.951258>,  <14.078538, 14.596040, 21.060381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.252809, 14.472260, 20.951258>,  <14.543260, 14.265959, 20.769384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.252809, 14.472260, 20.951258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581437, -0.107654, -0.806438,
		-0.366975, -0.849946, 0.378049,
		-0.726127, 0.515754, 0.454683,
		14.034970, 14.626986, 21.087664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.943762, 13.809332, 20.644754>,  <14.543260, 14.265959, 20.769384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.943762, 13.809332, 20.644754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.805581, 14.161665, 20.774244>,  <13.722672, 14.373065, 20.851938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.805581, 14.161665, 20.774244>,  <13.943762, 13.809332, 20.644754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.805581, 14.161665, 20.774244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740217, -0.043718, -0.670946,
		-0.576838, -0.471405, 0.667110,
		-0.345452, 0.880832, 0.323724,
		13.701945, 14.425915, 20.871361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.287980, 13.682877, 20.701715>,  <13.943762, 13.809332, 20.644754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.287980, 13.682877, 20.701715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.314809, 14.080587, 20.668451>,  <13.330906, 14.319214, 20.648493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.314809, 14.080587, 20.668451>,  <13.287980, 13.682877, 20.701715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.314809, 14.080587, 20.668451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829450, 0.009240, -0.558504,
		-0.554539, 0.106438, 0.825323,
		0.067072, 0.994276, -0.083162,
		13.334930, 14.378870, 20.643503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.595463, 13.900579, 20.632206>,  <13.287980, 13.682877, 20.701715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.595463, 13.900579, 20.632206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.810321, 14.208507, 20.494305>,  <12.939236, 14.393263, 20.411564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.810321, 14.208507, 20.494305>,  <12.595463, 13.900579, 20.632206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.810321, 14.208507, 20.494305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720866, 0.206731, -0.661525,
		-0.437982, 0.603857, 0.665980,
		0.537145, 0.769818, -0.344755,
		12.971464, 14.439452, 20.390879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.122929, 14.330773, 20.532455>,  <12.595463, 13.900579, 20.632206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.122929, 14.330773, 20.532455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.429077, 14.440269, 20.299467>,  <12.612766, 14.505967, 20.159674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.429077, 14.440269, 20.299467>,  <12.122929, 14.330773, 20.532455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.429077, 14.440269, 20.299467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637551, 0.198811, -0.744313,
		-0.087948, 0.941031, 0.326689,
		0.765371, 0.273741, -0.582471,
		12.658689, 14.522392, 20.124725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.945509, 14.899928, 20.202824>,  <12.122929, 14.330773, 20.532455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.945509, 14.899928, 20.202824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.223495, 14.779033, 19.941849>,  <12.390287, 14.706495, 19.785263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.223495, 14.779033, 19.941849>,  <11.945509, 14.899928, 20.202824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.223495, 14.779033, 19.941849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650046, 0.123758, -0.749750,
		0.307348, 0.945164, -0.110462,
		0.694966, -0.302239, -0.652436,
		12.431986, 14.688361, 19.746119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.794140, 15.364431, 19.657160>,  <11.945509, 14.899928, 20.202824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.794140, 15.364431, 19.657160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.017832, 15.078665, 19.488935>,  <12.152047, 14.907205, 19.388000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.017832, 15.078665, 19.488935>,  <11.794140, 15.364431, 19.657160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.017832, 15.078665, 19.488935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421364, 0.191941, -0.886347,
		0.713943, 0.672881, -0.193690,
		0.559229, -0.714416, -0.420563,
		12.185600, 14.864340, 19.362766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.825819, 15.609842, 18.992487>,  <11.794140, 15.364431, 19.657160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.825819, 15.609842, 18.992487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.950798, 15.231773, 18.954487>,  <12.025785, 15.004932, 18.931686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.950798, 15.231773, 18.954487>,  <11.825819, 15.609842, 18.992487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.950798, 15.231773, 18.954487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380725, -0.032972, -0.924100,
		0.870302, 0.324902, -0.370153,
		0.312447, -0.945173, -0.095003,
		12.044532, 14.948221, 18.925985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.376239, 15.419534, 18.324320>,  <11.825819, 15.609842, 18.992487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.376239, 15.419534, 18.324320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147299, 15.113987, 18.443598>,  <12.009934, 14.930659, 18.515165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147299, 15.113987, 18.443598>,  <12.376239, 15.419534, 18.324320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.147299, 15.113987, 18.443598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396755, -0.060284, -0.915943,
		0.717635, -0.642552, -0.268565,
		-0.572351, -0.763867, 0.298197,
		11.975594, 14.884827, 18.533056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.071850, 15.746472, 18.192099>,  <12.376239, 15.419534, 18.324320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.071850, 15.746472, 18.192099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.364372, 15.819391, 17.929203>,  <13.539886, 15.863142, 17.771465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.364372, 15.819391, 17.929203>,  <13.071850, 15.746472, 18.192099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.364372, 15.819391, 17.929203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678500, -0.096256, 0.728267,
		0.069497, -0.978521, -0.194081,
		0.731306, 0.182297, -0.657237,
		13.583764, 15.874081, 17.732033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.587255, 15.184338, 18.330196>,  <13.071850, 15.746472, 18.192099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.587255, 15.184338, 18.330196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.773531, 15.470712, 18.122129>,  <13.885297, 15.642536, 17.997290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.773531, 15.470712, 18.122129>,  <13.587255, 15.184338, 18.330196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773531, 15.470712, 18.122129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731975, 0.018714, 0.681074,
		0.497339, -0.697916, -0.515332,
		0.465689, 0.715935, -0.520165,
		13.913238, 15.685492, 17.966080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.273653, 15.061394, 18.416147>,  <13.587255, 15.184338, 18.330196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.273653, 15.061394, 18.416147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.308763, 15.436522, 18.281811>,  <14.329828, 15.661598, 18.201208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.308763, 15.436522, 18.281811>,  <14.273653, 15.061394, 18.416147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.308763, 15.436522, 18.281811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903764, 0.066816, 0.422785,
		0.418936, -0.340631, -0.841703,
		0.087774, 0.937820, -0.335841,
		14.335094, 15.717868, 18.181059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.022304, 15.106531, 18.132368>,  <14.273653, 15.061394, 18.416147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.022304, 15.106531, 18.132368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.905870, 15.482794, 18.202152>,  <14.836010, 15.708551, 18.244022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.905870, 15.482794, 18.202152>,  <15.022304, 15.106531, 18.132368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.905870, 15.482794, 18.202152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864621, 0.180600, 0.468842,
		0.409512, 0.287315, -0.865881,
		-0.291084, 0.940656, 0.174461,
		14.818545, 15.764991, 18.254490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.539968, 15.682017, 17.918539>,  <15.022304, 15.106531, 18.132368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.539968, 15.682017, 17.918539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.321177, 15.852838, 18.206551>,  <15.189902, 15.955330, 18.379358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.321177, 15.852838, 18.206551>,  <15.539968, 15.682017, 17.918539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.321177, 15.852838, 18.206551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821621, 0.108976, 0.559520,
		0.160476, 0.897637, -0.410481,
		-0.546978, 0.427050, 0.720030,
		15.157084, 15.980952, 18.422560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934897, 16.197983, 18.178953>,  <15.539968, 15.682017, 17.918539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.934897, 16.197983, 18.178953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653823, 16.148279, 18.459179>,  <15.485178, 16.118458, 18.627316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653823, 16.148279, 18.459179>,  <15.934897, 16.197983, 18.178953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653823, 16.148279, 18.459179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683873, 0.153761, 0.713214,
		-0.196342, 0.980264, -0.023069,
		-0.702686, -0.124258, 0.700566,
		15.443017, 16.111002, 18.669350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.022093, 16.640024, 18.597658>,  <15.934897, 16.197983, 18.178953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.022093, 16.640024, 18.597658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.779005, 16.455990, 18.856579>,  <15.633153, 16.345570, 19.011930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.779005, 16.455990, 18.856579>,  <16.022093, 16.640024, 18.597658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779005, 16.455990, 18.856579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494394, 0.418692, 0.761756,
		-0.621493, 0.782954, -0.026982,
		-0.607717, -0.460086, 0.647302,
		15.596690, 16.317965, 19.050770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.706719, 17.203569, 19.057472>,  <16.022093, 16.640024, 18.597658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.706719, 17.203569, 19.057472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.707649, 16.837599, 19.218916>,  <15.708207, 16.618015, 19.315783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.707649, 16.837599, 19.218916>,  <15.706719, 17.203569, 19.057472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.707649, 16.837599, 19.218916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366180, 0.376357, 0.851039,
		-0.930541, 0.145815, 0.335904,
		0.002325, -0.914928, 0.403610,
		15.708346, 16.563120, 19.339998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.509640, 17.326151, 19.787800>,  <15.706719, 17.203569, 19.057472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.509640, 17.326151, 19.787800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692842, 16.971767, 19.758663>,  <15.802763, 16.759136, 19.741182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692842, 16.971767, 19.758663>,  <15.509640, 17.326151, 19.787800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.692842, 16.971767, 19.758663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583545, 0.237829, 0.776474,
		-0.670602, -0.398134, 0.625925,
		0.458004, -0.885961, -0.072841,
		15.830243, 16.705978, 19.736811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592623, 17.240545, 20.574842>,  <15.509640, 17.326151, 19.787800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.592623, 17.240545, 20.574842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838642, 16.971636, 20.410032>,  <15.986254, 16.810289, 20.311146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838642, 16.971636, 20.410032>,  <15.592623, 17.240545, 20.574842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838642, 16.971636, 20.410032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668094, 0.166796, 0.725141,
		-0.418769, -0.721268, 0.551730,
		0.615047, -0.672274, -0.412025,
		16.023157, 16.769953, 20.286425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535143, 16.699770, 20.969461>,  <15.592623, 17.240545, 20.574842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.535143, 16.699770, 20.969461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.890034, 16.716261, 20.785667>,  <16.102968, 16.726154, 20.675390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.890034, 16.716261, 20.785667>,  <15.535143, 16.699770, 20.969461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.890034, 16.716261, 20.785667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458056, 0.039752, 0.888034,
		0.054887, -0.998358, 0.016379,
		0.887228, 0.041239, -0.459486,
		16.156202, 16.728628, 20.647821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916658, 16.354084, 21.445309>,  <15.535143, 16.699770, 20.969461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916658, 16.354084, 21.445309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.200560, 16.509438, 21.210222>,  <16.370901, 16.602650, 21.069170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.200560, 16.509438, 21.210222>,  <15.916658, 16.354084, 21.445309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.200560, 16.509438, 21.210222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635645, 0.006536, 0.771954,
		0.303655, -0.921475, -0.242235,
		0.709753, 0.388383, -0.587716,
		16.413485, 16.625952, 21.033907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453444, 15.908715, 21.525795>,  <15.916658, 16.354084, 21.445309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.453444, 15.908715, 21.525795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598185, 16.259411, 21.399057>,  <16.685030, 16.469828, 21.323015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598185, 16.259411, 21.399057>,  <16.453444, 15.908715, 21.525795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.598185, 16.259411, 21.399057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693315, -0.025890, 0.720169,
		0.623198, -0.480268, -0.617226,
		0.361854, 0.876740, -0.316842,
		16.706741, 16.522432, 21.304005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.237240, 15.786377, 21.584211>,  <16.453444, 15.908715, 21.525795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.237240, 15.786377, 21.584211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187635, 16.183207, 21.576124>,  <17.157873, 16.421305, 21.571272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187635, 16.183207, 21.576124>,  <17.237240, 15.786377, 21.584211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187635, 16.183207, 21.576124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695662, 0.101452, 0.711170,
		0.707585, 0.074128, -0.702730,
		-0.124011, 0.992075, -0.020218,
		17.150433, 16.480829, 21.570059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.829357, 16.051144, 21.672106>,  <17.237240, 15.786377, 21.584211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.829357, 16.051144, 21.672106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.616661, 16.382298, 21.743502>,  <17.489042, 16.580990, 21.786339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.616661, 16.382298, 21.743502>,  <17.829357, 16.051144, 21.672106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.616661, 16.382298, 21.743502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533107, 0.163442, 0.830111,
		0.658063, 0.536558, -0.528260,
		-0.531743, 0.827884, 0.178488,
		17.457138, 16.630663, 21.797049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.360455, 16.547722, 21.853926>,  <17.829357, 16.051144, 21.672106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.360455, 16.547722, 21.853926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.012373, 16.681950, 21.998222>,  <17.803524, 16.762486, 22.084801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.012373, 16.681950, 21.998222>,  <18.360455, 16.547722, 21.853926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.012373, 16.681950, 21.998222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441094, 0.204437, 0.873866,
		0.219493, 0.919565, -0.325920,
		-0.870206, 0.335569, 0.360742,
		17.751310, 16.782619, 22.106445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.472136, 17.199915, 22.067255>,  <18.360455, 16.547722, 21.853926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.472136, 17.199915, 22.067255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.153929, 17.079384, 22.277533>,  <17.963005, 17.007065, 22.403700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.153929, 17.079384, 22.277533>,  <18.472136, 17.199915, 22.067255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.153929, 17.079384, 22.277533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492395, 0.184137, 0.850671,
		-0.353132, 0.935572, 0.001889,
		-0.795516, -0.301329, 0.525696,
		17.915274, 16.988985, 22.435242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.414371, 17.778305, 22.670187>,  <18.472136, 17.199915, 22.067255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.414371, 17.778305, 22.670187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.201408, 17.462990, 22.793570>,  <18.073631, 17.273800, 22.867599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.201408, 17.462990, 22.793570>,  <18.414371, 17.778305, 22.670187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.201408, 17.462990, 22.793570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303297, 0.162555, 0.938928,
		-0.790287, 0.593446, 0.152540,
		-0.532407, -0.788288, 0.308456,
		18.041687, 17.226503, 22.886106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.966286, 18.059423, 23.190092>,  <18.414371, 17.778305, 22.670187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.966286, 18.059423, 23.190092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.998560, 17.669315, 23.272400>,  <18.017923, 17.435251, 23.321785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.998560, 17.669315, 23.272400>,  <17.966286, 18.059423, 23.190092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.998560, 17.669315, 23.272400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246053, 0.219541, 0.944066,
		-0.965892, -0.025541, 0.257681,
		0.080684, -0.975269, 0.205769,
		18.022764, 17.376734, 23.334131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662325, 17.973221, 23.821974>,  <17.966286, 18.059423, 23.190092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662325, 17.973221, 23.821974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.875546, 17.634932, 23.812119>,  <18.003479, 17.431957, 23.806206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.875546, 17.634932, 23.812119>,  <17.662325, 17.973221, 23.821974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.875546, 17.634932, 23.812119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296892, 0.159703, 0.941461,
		-0.792281, -0.509164, 0.336219,
		0.533053, -0.845723, -0.024637,
		18.035461, 17.381214, 23.804728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.463821, 17.573338, 24.372801>,  <17.662325, 17.973221, 23.821974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.463821, 17.573338, 24.372801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823275, 17.430115, 24.271406>,  <18.038946, 17.344181, 24.210569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823275, 17.430115, 24.271406>,  <17.463821, 17.573338, 24.372801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823275, 17.430115, 24.271406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256228, -0.040650, 0.965761,
		-0.356102, -0.932814, 0.055215,
		0.898631, -0.358058, -0.253489,
		18.092865, 17.322697, 24.195360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.536747, 17.071577, 24.880795>,  <17.463821, 17.573338, 24.372801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.536747, 17.071577, 24.880795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.894505, 17.154585, 24.722305>,  <18.109159, 17.204390, 24.627213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.894505, 17.154585, 24.722305>,  <17.536747, 17.071577, 24.880795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.894505, 17.154585, 24.722305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410741, -0.030409, 0.911245,
		0.177052, -0.977758, -0.112434,
		0.894396, 0.207519, -0.396221,
		18.162823, 17.216841, 24.603439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.942446, 16.783932, 25.297626>,  <17.536747, 17.071577, 24.880795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.942446, 16.783932, 25.297626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.220575, 17.009836, 25.119831>,  <18.387453, 17.145378, 25.013155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.220575, 17.009836, 25.119831>,  <17.942446, 16.783932, 25.297626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.220575, 17.009836, 25.119831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481098, 0.093696, 0.871646,
		0.533919, -0.819918, -0.206556,
		0.695324, 0.564762, -0.444487,
		18.429173, 17.179264, 24.986485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.482927, 16.434309, 25.403751>,  <17.942446, 16.783932, 25.297626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.482927, 16.434309, 25.403751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.633707, 16.803200, 25.369322>,  <18.724174, 17.024534, 25.348663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.633707, 16.803200, 25.369322>,  <18.482927, 16.434309, 25.403751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.633707, 16.803200, 25.369322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347066, -0.054477, 0.936257,
		0.858751, -0.382796, -0.340608,
		0.376951, 0.922225, -0.086073,
		18.746792, 17.079866, 25.343500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.222605, 16.528448, 25.739008>,  <18.482927, 16.434309, 25.403751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.222605, 16.528448, 25.739008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.101160, 16.909311, 25.725082>,  <19.028294, 17.137829, 25.716728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.101160, 16.909311, 25.725082>,  <19.222605, 16.528448, 25.739008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.101160, 16.909311, 25.725082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218417, 0.105117, 0.970178,
		0.927423, 0.286955, -0.239883,
		-0.303613, 0.952159, -0.034812,
		19.010077, 17.194960, 25.714638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.732248, 16.984003, 25.933252>,  <19.222605, 16.528448, 25.739008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.732248, 16.984003, 25.933252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.385738, 17.168009, 26.011177>,  <19.177832, 17.278412, 26.057932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.385738, 17.168009, 26.011177>,  <19.732248, 16.984003, 25.933252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.385738, 17.168009, 26.011177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324130, 0.220826, 0.919878,
		0.380137, 0.860014, -0.340400,
		-0.866277, 0.460013, 0.194812,
		19.125854, 17.306013, 26.069620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.866896, 17.639570, 26.206215>,  <19.732248, 16.984003, 25.933252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.866896, 17.639570, 26.206215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.489220, 17.563976, 26.314135>,  <19.262615, 17.518620, 26.378887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.489220, 17.563976, 26.314135>,  <19.866896, 17.639570, 26.206215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489220, 17.563976, 26.314135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213346, 0.273206, 0.937999,
		-0.250980, 0.943209, -0.217638,
		-0.944189, -0.188987, 0.269799,
		19.205963, 17.507280, 26.395075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.423672, 18.243488, 26.476387>,  <19.866896, 17.639570, 26.206215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.423672, 18.243488, 26.476387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.244307, 17.920738, 26.630205>,  <19.136686, 17.727087, 26.722496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.244307, 17.920738, 26.630205>,  <19.423672, 18.243488, 26.476387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.244307, 17.920738, 26.630205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018616, 0.421698, 0.906545,
		-0.893632, 0.413667, -0.174075,
		-0.448415, -0.806877, 0.384543,
		19.109781, 17.678675, 26.745567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.017540, 18.534580, 27.063282>,  <19.423672, 18.243488, 26.476387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.017540, 18.534580, 27.063282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.021233, 18.138258, 27.117268>,  <19.023447, 17.900465, 27.149658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.021233, 18.138258, 27.117268>,  <19.017540, 18.534580, 27.063282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.021233, 18.138258, 27.117268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071567, 0.135279, 0.988219,
		-0.997393, 0.000537, 0.072158,
		0.009231, -0.990807, 0.134964,
		19.024002, 17.841015, 27.157757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640499, 18.354525, 27.638054>,  <19.017540, 18.534580, 27.063282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640499, 18.354525, 27.638054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.858786, 18.021795, 27.597540>,  <18.989758, 17.822157, 27.573231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.858786, 18.021795, 27.597540>,  <18.640499, 18.354525, 27.638054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.858786, 18.021795, 27.597540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143078, -0.026600, 0.989354,
		-0.825664, -0.554400, 0.104500,
		0.545718, -0.831825, -0.101285,
		19.022501, 17.772247, 27.567154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566002, 18.098080, 28.219616>,  <18.640499, 18.354525, 27.638054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.566002, 18.098080, 28.219616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.872887, 17.886343, 28.074738>,  <19.057018, 17.759302, 27.987810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.872887, 17.886343, 28.074738>,  <18.566002, 18.098080, 28.219616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.872887, 17.886343, 28.074738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249083, -0.274485, 0.928771,
		-0.591053, -0.802780, -0.078739,
		0.767212, -0.529341, -0.362194,
		19.103050, 17.727541, 27.966080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.647776, 18.480309, 28.941479>,  <18.566002, 18.098080, 28.219616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.647776, 18.480309, 28.941479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.892181, 18.768108, 29.073530>,  <19.038824, 18.940788, 29.152761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.892181, 18.768108, 29.073530>,  <18.647776, 18.480309, 28.941479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.892181, 18.768108, 29.073530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736782, 0.669389, -0.095238,
		-0.289509, -0.185042, 0.939119,
		0.611013, 0.719498, 0.330130,
		19.075485, 18.983957, 29.172569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.156025, 19.103142, 28.876492>,  <18.647776, 18.480309, 28.941479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.156025, 19.103142, 28.876492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.501074, 19.221434, 29.040651>,  <18.708103, 19.292408, 29.139147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.501074, 19.221434, 29.040651>,  <18.156025, 19.103142, 28.876492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.501074, 19.221434, 29.040651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276775, 0.955024, -0.106424,
		-0.423412, -0.021784, 0.905675,
		0.862623, 0.295729, 0.410398,
		18.759861, 19.310152, 29.163771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.083046, 19.426260, 29.550495>,  <18.156025, 19.103142, 28.876492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.083046, 19.426260, 29.550495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.403528, 19.555353, 29.348934>,  <18.595818, 19.632809, 29.227997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.403528, 19.555353, 29.348934>,  <18.083046, 19.426260, 29.550495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.403528, 19.555353, 29.348934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345651, 0.937002, 0.050531,
		0.488466, 0.133688, 0.862281,
		0.801203, 0.322731, -0.503903,
		18.643888, 19.652172, 29.197763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222094, 20.145601, 29.756048>,  <18.083046, 19.426260, 29.550495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222094, 20.145601, 29.756048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506880, 20.126530, 29.475809>,  <18.677752, 20.115088, 29.307667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506880, 20.126530, 29.475809>,  <18.222094, 20.145601, 29.756048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.506880, 20.126530, 29.475809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057444, 0.990394, -0.125775,
		0.699862, 0.129792, 0.702387,
		0.711964, -0.047677, -0.700595,
		18.720469, 20.112226, 29.265631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889568, 20.641483, 29.885389>,  <18.222094, 20.145601, 29.756048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889568, 20.641483, 29.885389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.805834, 20.588842, 29.497810>,  <18.755594, 20.557259, 29.265263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.805834, 20.588842, 29.497810>,  <18.889568, 20.641483, 29.885389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.805834, 20.588842, 29.497810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034982, 0.989260, -0.141917,
		0.977218, -0.063604, -0.202484,
		-0.209336, -0.131600, -0.968948,
		18.743034, 20.549362, 29.207127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325344, 21.106243, 29.535913>,  <18.889568, 20.641483, 29.885389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325344, 21.106243, 29.535913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.996460, 21.028458, 29.321941>,  <18.799129, 20.981787, 29.193558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.996460, 21.028458, 29.321941>,  <19.325344, 21.106243, 29.535913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.996460, 21.028458, 29.321941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137262, 0.979831, -0.145221,
		0.552382, -0.045977, -0.832322,
		-0.822212, -0.194464, -0.534931,
		18.749796, 20.970118, 29.161463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021231, 21.576649, 30.017216>,  <19.325344, 21.106243, 29.535913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021231, 21.576649, 30.017216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.702044, 21.814156, 30.058571>,  <18.510532, 21.956659, 30.083384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.702044, 21.814156, 30.058571>,  <19.021231, 21.576649, 30.017216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.702044, 21.814156, 30.058571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422914, -0.429411, -0.797966,
		-0.429411, -0.680475, 0.593768,
		0.797966, -0.593768, -0.103388,
		18.462654, 21.992287, 30.089588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.267195, 21.253906, 30.022301>,  <19.021231, 21.576649, 30.017216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.267195, 21.253906, 30.022301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.243515, 21.632864, 29.896484>,  <18.229307, 21.860239, 29.820995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.243515, 21.632864, 29.896484>,  <18.267195, 21.253906, 30.022301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.243515, 21.632864, 29.896484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554183, -0.293268, -0.779022,
		-0.830287, 0.128193, 0.542393,
		-0.059201, 0.947396, -0.314539,
		18.225754, 21.917084, 29.802122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.489723, 21.466101, 29.858223>,  <18.267195, 21.253906, 30.022301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.489723, 21.466101, 29.858223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.722210, 21.735603, 29.675692>,  <17.861702, 21.897305, 29.566174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.722210, 21.735603, 29.675692>,  <17.489723, 21.466101, 29.858223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.722210, 21.735603, 29.675692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397134, -0.254603, -0.881738,
		-0.710261, 0.693705, 0.119592,
		0.581218, 0.673758, -0.456328,
		17.896576, 21.937731, 29.538794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.049793, 21.768307, 29.352028>,  <17.489723, 21.466101, 29.858223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.049793, 21.768307, 29.352028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431301, 21.815392, 29.241415>,  <17.660206, 21.843643, 29.175047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431301, 21.815392, 29.241415>,  <17.049793, 21.768307, 29.352028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.431301, 21.815392, 29.241415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237554, -0.268358, -0.933570,
		-0.184101, 0.956101, -0.227988,
		0.953769, 0.117712, -0.276530,
		17.717432, 21.850704, 29.158457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989626, 22.130091, 28.714067>,  <17.049793, 21.768307, 29.352028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.989626, 22.130091, 28.714067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.364561, 21.993042, 28.688738>,  <17.589521, 21.910812, 28.673540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.364561, 21.993042, 28.688738>,  <16.989626, 22.130091, 28.714067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.364561, 21.993042, 28.688738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119829, -0.146332, -0.981951,
		0.327171, 0.928007, -0.178219,
		0.937337, -0.342621, -0.063326,
		17.645761, 21.890255, 28.669741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.164927, 22.356791, 27.975050>,  <16.989626, 22.130091, 28.714067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.164927, 22.356791, 27.975050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408583, 22.057468, 28.080114>,  <17.554775, 21.877876, 28.143152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408583, 22.057468, 28.080114>,  <17.164927, 22.356791, 27.975050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408583, 22.057468, 28.080114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125342, -0.417876, -0.899816,
		0.783096, 0.515190, -0.348338,
		0.609139, -0.748304, 0.262662,
		17.591324, 21.832977, 28.158913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488398, 22.205223, 27.272028>,  <17.164927, 22.356791, 27.975050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488398, 22.205223, 27.272028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.584837, 21.895126, 27.505564>,  <17.642700, 21.709068, 27.645685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.584837, 21.895126, 27.505564>,  <17.488398, 22.205223, 27.272028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.584837, 21.895126, 27.505564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318333, -0.505134, -0.802187,
		0.916807, 0.379262, 0.124998,
		0.241099, -0.775242, 0.583842,
		17.657167, 21.662554, 27.680716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026739, 21.890366, 27.069397>,  <17.488398, 22.205223, 27.272028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.026739, 21.890366, 27.069397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880335, 21.585300, 27.282705>,  <17.792492, 21.402262, 27.410690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880335, 21.585300, 27.282705>,  <18.026739, 21.890366, 27.069397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.880335, 21.585300, 27.282705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169868, -0.618159, -0.767479,
		0.914977, -0.190318, 0.355805,
		-0.366009, -0.762665, 0.533272,
		17.770533, 21.356501, 27.442686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.331465, 21.332203, 26.811262>,  <18.026739, 21.890366, 27.069397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.331465, 21.332203, 26.811262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.040077, 21.129139, 26.995266>,  <17.865244, 21.007299, 27.105669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.040077, 21.129139, 26.995266>,  <18.331465, 21.332203, 26.811262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.040077, 21.129139, 26.995266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081696, -0.602308, -0.794072,
		0.680189, -0.616039, 0.397290,
		-0.728470, -0.507662, 0.460011,
		17.821537, 20.976841, 27.133270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.492119, 20.612436, 26.717342>,  <18.331465, 21.332203, 26.811262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.492119, 20.612436, 26.717342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.098707, 20.674614, 26.754232>,  <17.862659, 20.711920, 26.776365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.098707, 20.674614, 26.754232>,  <18.492119, 20.612436, 26.717342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.098707, 20.674614, 26.754232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152942, -0.443850, -0.882953,
		-0.096315, -0.882516, 0.460314,
		-0.983531, 0.155443, 0.092224,
		17.803648, 20.721247, 26.781900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224628, 20.053516, 26.563839>,  <18.492119, 20.612436, 26.717342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.224628, 20.053516, 26.563839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.908392, 20.295757, 26.527588>,  <17.718651, 20.441103, 26.505836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.908392, 20.295757, 26.527588>,  <18.224628, 20.053516, 26.563839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.908392, 20.295757, 26.527588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217790, -0.416413, -0.882705,
		-0.572308, -0.678118, 0.461106,
		-0.790588, 0.605603, -0.090629,
		17.671215, 20.477438, 26.500399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666069, 19.571905, 26.525494>,  <18.224628, 20.053516, 26.563839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666069, 19.571905, 26.525494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.556223, 19.911396, 26.344719>,  <17.490314, 20.115091, 26.236254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.556223, 19.911396, 26.344719>,  <17.666069, 19.571905, 26.525494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.556223, 19.911396, 26.344719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322556, -0.524085, -0.788221,
		-0.905838, -0.070683, 0.417685,
		-0.274616, 0.848728, -0.451937,
		17.473839, 20.166014, 26.209137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876434, 19.471428, 26.224224>,  <17.666069, 19.571905, 26.525494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876434, 19.471428, 26.224224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.037970, 19.781420, 26.029774>,  <17.134890, 19.967415, 25.913103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.037970, 19.781420, 26.029774>,  <16.876434, 19.471428, 26.224224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037970, 19.781420, 26.029774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366347, -0.349921, -0.862175,
		-0.838275, 0.526269, 0.142601,
		0.403837, 0.774981, -0.486127,
		17.159121, 20.013914, 25.883936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381775, 19.788433, 25.667694>,  <16.876434, 19.471428, 26.224224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381775, 19.788433, 25.667694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746891, 19.913176, 25.562197>,  <16.965960, 19.988022, 25.498898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746891, 19.913176, 25.562197>,  <16.381775, 19.788433, 25.667694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746891, 19.913176, 25.562197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147760, -0.349871, -0.925072,
		-0.380767, 0.883366, -0.273278,
		0.912789, 0.311857, -0.263745,
		17.020727, 20.006733, 25.483072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428185, 20.045731, 24.936817>,  <16.381775, 19.788433, 25.667694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428185, 20.045731, 24.936817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.825033, 20.005480, 24.966669>,  <17.063143, 19.981329, 24.984581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.825033, 20.005480, 24.966669>,  <16.428185, 20.045731, 24.936817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.825033, 20.005480, 24.966669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063201, -0.112353, -0.991656,
		0.108172, 0.988560, -0.105108,
		0.992121, -0.100626, 0.074631,
		17.122669, 19.975292, 24.989058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673191, 20.539787, 24.477264>,  <16.428185, 20.045731, 24.936817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.673191, 20.539787, 24.477264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.982138, 20.290573, 24.526705>,  <17.167505, 20.141045, 24.556368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.982138, 20.290573, 24.526705>,  <16.673191, 20.539787, 24.477264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982138, 20.290573, 24.526705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253468, 0.123895, -0.959377,
		0.582413, 0.772319, 0.253612,
		0.772366, -0.623035, 0.123600,
		17.213848, 20.103662, 24.563786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120611, 20.651707, 23.861959>,  <16.673191, 20.539787, 24.477264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120611, 20.651707, 23.861959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.255053, 20.298992, 23.994316>,  <17.335718, 20.087364, 24.073730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.255053, 20.298992, 23.994316>,  <17.120611, 20.651707, 23.861959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.255053, 20.298992, 23.994316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399410, -0.184726, -0.897969,
		0.852939, 0.433974, 0.290107,
		0.336105, -0.881784, 0.330893,
		17.355885, 20.034456, 24.093584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845362, 20.660633, 23.700563>,  <17.120611, 20.651707, 23.861959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.845362, 20.660633, 23.700563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.700628, 20.287930, 23.712585>,  <17.613789, 20.064308, 23.719799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.700628, 20.287930, 23.712585>,  <17.845362, 20.660633, 23.700563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.700628, 20.287930, 23.712585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314613, -0.152398, -0.936906,
		0.877550, -0.329550, 0.348286,
		-0.361835, -0.931757, 0.030056,
		17.592077, 20.008402, 23.721601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241917, 20.290735, 23.167048>,  <17.845362, 20.660633, 23.700563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.241917, 20.290735, 23.167048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.971766, 20.013279, 23.267231>,  <17.809675, 19.846806, 23.327341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.971766, 20.013279, 23.267231>,  <18.241917, 20.290735, 23.167048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.971766, 20.013279, 23.267231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031664, -0.366577, -0.929849,
		0.736791, -0.620070, 0.269541,
		-0.675379, -0.693639, 0.250457,
		17.769152, 19.805187, 23.342367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.508869, 19.629192, 22.919405>,  <18.241917, 20.290735, 23.167048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.508869, 19.629192, 22.919405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109602, 19.634172, 22.943102>,  <17.870043, 19.637159, 22.957321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109602, 19.634172, 22.943102>,  <18.508869, 19.629192, 22.919405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.109602, 19.634172, 22.943102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057854, -0.484295, -0.872990,
		0.017824, -0.874817, 0.484126,
		-0.998166, 0.012448, 0.059243,
		17.810152, 19.637907, 22.960875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.244183, 19.003778, 22.793524>,  <18.508869, 19.629192, 22.919405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.244183, 19.003778, 22.793524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.916132, 19.219950, 22.718344>,  <17.719301, 19.349653, 22.673235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.916132, 19.219950, 22.718344>,  <18.244183, 19.003778, 22.793524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916132, 19.219950, 22.718344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144140, -0.513024, -0.846185,
		-0.553728, -0.666889, 0.498643,
		-0.820127, 0.540431, -0.187951,
		17.670094, 19.382078, 22.661959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.888870, 18.558468, 22.279680>,  <18.244183, 19.003778, 22.793524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.888870, 18.558468, 22.279680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.695709, 18.904943, 22.228268>,  <17.579813, 19.112829, 22.197420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.695709, 18.904943, 22.228268>,  <17.888870, 18.558468, 22.279680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.695709, 18.904943, 22.228268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296813, -0.300000, -0.906588,
		-0.823838, -0.399642, 0.401967,
		-0.482901, 0.866191, -0.128532,
		17.550838, 19.164801, 22.189709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103838, 18.433540, 22.081385>,  <17.888870, 18.558468, 22.279680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.103838, 18.433540, 22.081385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.204573, 18.804094, 21.969391>,  <17.265013, 19.026426, 21.902195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.204573, 18.804094, 21.969391>,  <17.103838, 18.433540, 22.081385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.204573, 18.804094, 21.969391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320138, -0.193276, -0.927446,
		-0.913285, 0.323199, 0.247897,
		0.251837, 0.926384, -0.279984,
		17.280125, 19.082010, 21.885395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.462465, 18.839224, 21.680658>,  <17.103838, 18.433540, 22.081385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.462465, 18.839224, 21.680658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.828148, 18.975248, 21.592491>,  <17.047558, 19.056864, 21.539591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.828148, 18.975248, 21.592491>,  <16.462465, 18.839224, 21.680658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.828148, 18.975248, 21.592491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199185, -0.096604, -0.975189,
		-0.352918, 0.935428, -0.020581,
		0.914207, 0.340062, -0.220417,
		17.102409, 19.077267, 21.526365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344826, 19.070114, 20.993357>,  <16.462465, 18.839224, 21.680658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.344826, 19.070114, 20.993357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742804, 19.108053, 21.006531>,  <16.981590, 19.130817, 21.014435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742804, 19.108053, 21.006531>,  <16.344826, 19.070114, 20.993357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742804, 19.108053, 21.006531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038939, -0.062174, -0.997305,
		-0.092545, 0.993548, -0.065553,
		0.994947, 0.094848, 0.032934,
		17.041288, 19.136507, 21.016411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.621906, 19.599224, 20.511105>,  <16.344826, 19.070114, 20.993357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.621906, 19.599224, 20.511105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.930307, 19.351374, 20.569920>,  <17.115347, 19.202663, 20.605207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.930307, 19.351374, 20.569920>,  <16.621906, 19.599224, 20.511105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.930307, 19.351374, 20.569920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159069, -0.036188, -0.986604,
		0.616647, 0.784062, 0.070663,
		0.771002, -0.619626, 0.147035,
		17.161608, 19.165485, 20.614031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.957293, 19.764158, 19.970619>,  <16.621906, 19.599224, 20.511105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.957293, 19.764158, 19.970619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.122183, 19.419428, 20.088821>,  <17.221117, 19.212589, 20.159742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.122183, 19.419428, 20.088821>,  <16.957293, 19.764158, 19.970619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122183, 19.419428, 20.088821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054675, -0.300362, -0.952257,
		0.909439, 0.408704, -0.076697,
		0.412228, -0.861826, 0.295507,
		17.245852, 19.160879, 20.177473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488028, 19.697224, 19.530420>,  <16.957293, 19.764158, 19.970619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488028, 19.697224, 19.530420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.375975, 19.339828, 19.670822>,  <17.308743, 19.125391, 19.755062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.375975, 19.339828, 19.670822>,  <17.488028, 19.697224, 19.530420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.375975, 19.339828, 19.670822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077630, -0.385531, -0.919423,
		0.956818, -0.230311, 0.177361,
		-0.280132, -0.893489, 0.351003,
		17.291935, 19.071781, 19.776123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.956320, 19.247173, 19.195301>,  <17.488028, 19.697224, 19.530420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.956320, 19.247173, 19.195301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.643768, 19.028454, 19.315607>,  <17.456238, 18.897223, 19.387791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.643768, 19.028454, 19.315607>,  <17.956320, 19.247173, 19.195301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643768, 19.028454, 19.315607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109607, -0.354209, -0.928721,
		0.614357, -0.758648, 0.216838,
		-0.781378, -0.546799, 0.300764,
		17.409355, 18.864414, 19.405836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.057535, 18.619310, 19.006828>,  <17.956320, 19.247173, 19.195301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.057535, 18.619310, 19.006828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.659866, 18.638590, 19.045399>,  <17.421265, 18.650158, 19.068541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.659866, 18.638590, 19.045399>,  <18.057535, 18.619310, 19.006828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.659866, 18.638590, 19.045399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104722, -0.219484, -0.969979,
		-0.025587, -0.974425, 0.223252,
		-0.994172, 0.048198, 0.096428,
		17.361614, 18.653049, 19.074327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007952, 18.386135, 18.415148>,  <18.057535, 18.619310, 19.006828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007952, 18.386135, 18.415148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.632170, 18.453350, 18.534607>,  <17.406700, 18.493679, 18.606281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.632170, 18.453350, 18.534607>,  <18.007952, 18.386135, 18.415148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632170, 18.453350, 18.534607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328289, -0.191469, -0.924968,
		-0.098246, -0.967008, 0.235041,
		-0.939454, 0.168035, 0.298646,
		17.350334, 18.503761, 18.624201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631132, 17.754696, 18.240982>,  <18.007952, 18.386135, 18.415148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.631132, 17.754696, 18.240982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.399633, 18.079948, 18.265862>,  <17.260735, 18.275101, 18.280788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.399633, 18.079948, 18.265862>,  <17.631132, 17.754696, 18.240982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.399633, 18.079948, 18.265862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387491, -0.207083, -0.898314,
		-0.717567, -0.543998, 0.434929,
		-0.578747, 0.813132, 0.062199,
		17.226009, 18.323889, 18.284521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.013060, 17.593624, 17.907768>,  <17.631132, 17.754696, 18.240982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.013060, 17.593624, 17.907768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003057, 17.993277, 17.921108>,  <16.997057, 18.233068, 17.929111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003057, 17.993277, 17.921108>,  <17.013060, 17.593624, 17.907768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003057, 17.993277, 17.921108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471183, 0.017645, -0.881859,
		-0.881681, -0.037763, 0.470332,
		-0.025003, 0.999131, 0.033351,
		16.995556, 18.293016, 17.931114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349943, 17.752462, 17.732584>,  <17.013060, 17.593624, 17.907768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349943, 17.752462, 17.732584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567421, 18.084387, 17.682289>,  <16.697906, 18.283543, 17.652113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567421, 18.084387, 17.682289>,  <16.349943, 17.752462, 17.732584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.567421, 18.084387, 17.682289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347810, 0.086427, -0.933573,
		-0.763824, 0.551309, 0.335606,
		0.543693, 0.829812, -0.125736,
		16.730528, 18.333330, 17.644569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902890, 18.251064, 17.472281>,  <16.349943, 17.752462, 17.732584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.902890, 18.251064, 17.472281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251932, 18.407528, 17.355280>,  <16.461357, 18.501406, 17.285080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251932, 18.407528, 17.355280>,  <15.902890, 18.251064, 17.472281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251932, 18.407528, 17.355280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360843, 0.112682, -0.925794,
		-0.329172, 0.913399, 0.239473,
		0.872604, 0.391158, -0.292502,
		16.513714, 18.524876, 17.267529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.713387, 18.831823, 16.952503>,  <15.902890, 18.251064, 17.472281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.713387, 18.831823, 16.952503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091070, 18.710049, 16.902233>,  <16.317680, 18.636984, 16.872070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091070, 18.710049, 16.902233>,  <15.713387, 18.831823, 16.952503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091070, 18.710049, 16.902233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166739, -0.112771, -0.979531,
		0.284030, 0.945834, -0.157241,
		0.944206, -0.304434, -0.125677,
		16.374332, 18.618719, 16.864531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.931465, 19.040905, 16.219959>,  <15.713387, 18.831823, 16.952503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.931465, 19.040905, 16.219959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.218979, 18.769028, 16.278425>,  <16.391487, 18.605902, 16.313505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.218979, 18.769028, 16.278425>,  <15.931465, 19.040905, 16.219959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.218979, 18.769028, 16.278425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002812, -0.207392, -0.978254,
		0.695227, 0.703565, -0.147159,
		0.718785, -0.679695, 0.146163,
		16.434614, 18.565119, 16.322273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.405470, 19.050032, 15.635599>,  <15.931465, 19.040905, 16.219959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.405470, 19.050032, 15.635599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.481255, 18.693359, 15.800040>,  <16.526726, 18.479355, 15.898705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.481255, 18.693359, 15.800040>,  <16.405470, 19.050032, 15.635599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481255, 18.693359, 15.800040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166164, -0.441764, -0.881609,
		0.967726, 0.098723, -0.231864,
		0.189464, -0.891683, 0.411102,
		16.538094, 18.425854, 15.923371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876984, 18.723478, 15.176932>,  <16.405470, 19.050032, 15.635599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876984, 18.723478, 15.176932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.699957, 18.431280, 15.384974>,  <16.593740, 18.255960, 15.509800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.699957, 18.431280, 15.384974>,  <16.876984, 18.723478, 15.176932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.699957, 18.431280, 15.384974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138058, -0.517578, -0.844424,
		0.886045, -0.445518, 0.128211,
		-0.442566, -0.730497, 0.520105,
		16.567186, 18.212132, 15.541006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043056, 18.107639, 14.927336>,  <16.876984, 18.723478, 15.176932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.043056, 18.107639, 14.927336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689930, 18.010267, 15.088022>,  <16.478054, 17.951843, 15.184434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689930, 18.010267, 15.088022>,  <17.043056, 18.107639, 14.927336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689930, 18.010267, 15.088022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229773, -0.522114, -0.821341,
		0.409681, -0.817397, 0.404998,
		-0.882817, -0.243430, 0.401716,
		16.425085, 17.937239, 15.208537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.934084, 17.383072, 14.808005>,  <17.043056, 18.107639, 14.927336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.934084, 17.383072, 14.808005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.561115, 17.515915, 14.864988>,  <16.337334, 17.595621, 14.899178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.561115, 17.515915, 14.864988>,  <16.934084, 17.383072, 14.808005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.561115, 17.515915, 14.864988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326305, -0.604369, -0.726817,
		-0.155284, -0.724185, 0.671895,
		-0.932422, 0.332106, 0.142456,
		16.281389, 17.615547, 14.907725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428164, 16.739370, 15.006659>,  <16.934084, 17.383072, 14.808005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428164, 16.739370, 15.006659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.308420, 17.054951, 14.792017>,  <16.236574, 17.244299, 14.663232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.308420, 17.054951, 14.792017>,  <16.428164, 16.739370, 15.006659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.308420, 17.054951, 14.792017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336619, -0.613560, -0.714304,
		-0.892789, -0.033201, 0.449250,
		-0.299357, 0.788949, -0.536604,
		16.218613, 17.291636, 14.631036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.811703, 16.672323, 14.619270>,  <16.428164, 16.739370, 15.006659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.811703, 16.672323, 14.619270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997980, 16.950056, 14.399806>,  <16.109747, 17.116695, 14.268127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997980, 16.950056, 14.399806>,  <15.811703, 16.672323, 14.619270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.997980, 16.950056, 14.399806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147268, -0.550543, -0.821715,
		-0.872606, 0.463468, -0.154131,
		0.465694, 0.694334, -0.548661,
		16.137688, 17.158356, 14.235208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831697, 15.909952, 14.353424>,  <15.811703, 16.672323, 14.619270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831697, 15.909952, 14.353424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.140684, 16.060356, 14.558134>,  <16.326077, 16.150599, 14.680960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.140684, 16.060356, 14.558134>,  <15.831697, 15.909952, 14.353424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.140684, 16.060356, 14.558134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276359, -0.924599, 0.262189,
		0.571771, -0.061098, -0.818135,
		0.772466, 0.376011, 0.511774,
		16.372423, 16.173159, 14.711666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.517294, 15.600719, 14.163079>,  <15.831697, 15.909952, 14.353424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.517294, 15.600719, 14.163079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.543652, 15.714918, 14.545524>,  <16.559465, 15.783438, 14.774990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.543652, 15.714918, 14.545524>,  <16.517294, 15.600719, 14.163079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543652, 15.714918, 14.545524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391631, -0.888707, 0.238380,
		0.917760, 0.358736, -0.170370,
		0.065894, 0.285497, 0.956111,
		16.563419, 15.800568, 14.832357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729523, 15.060807, 13.718174>,  <16.517294, 15.600719, 14.163079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.729523, 15.060807, 13.718174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.026566, 15.095017, 13.452477>,  <17.204792, 15.115543, 13.293059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.026566, 15.095017, 13.452477>,  <16.729523, 15.060807, 13.718174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026566, 15.095017, 13.452477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622928, 0.276028, 0.731963,
		0.245944, -0.957338, 0.151711,
		0.742612, 0.085517, -0.664240,
		17.249348, 15.120675, 13.253205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279549, 14.606810, 13.951662>,  <16.729523, 15.060807, 13.718174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.279549, 14.606810, 13.951662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.409395, 14.918166, 13.736728>,  <17.487303, 15.104980, 13.607767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.409395, 14.918166, 13.736728>,  <17.279549, 14.606810, 13.951662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.409395, 14.918166, 13.736728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523402, 0.325363, 0.787522,
		0.787830, -0.536884, -0.301794,
		0.324616, 0.778393, -0.537337,
		17.506781, 15.151684, 13.575527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.049763, 14.683451, 14.040474>,  <17.279549, 14.606810, 13.951662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.049763, 14.683451, 14.040474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.886940, 15.026708, 13.915320>,  <17.789246, 15.232661, 13.840228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.886940, 15.026708, 13.915320>,  <18.049763, 14.683451, 14.040474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886940, 15.026708, 13.915320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419015, 0.479815, 0.770846,
		0.811621, 0.182677, -0.554887,
		-0.407059, 0.858142, -0.312883,
		17.764822, 15.284150, 13.821455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.547514, 15.339243, 13.995529>,  <18.049763, 14.683451, 14.040474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.547514, 15.339243, 13.995529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.165541, 15.438175, 14.061175>,  <17.936357, 15.497535, 14.100563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.165541, 15.438175, 14.061175>,  <18.547514, 15.339243, 13.995529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.165541, 15.438175, 14.061175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281958, 0.583033, 0.761953,
		0.092769, 0.773887, -0.626493,
		-0.954931, 0.247330, 0.164116,
		17.879061, 15.512374, 14.110410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.115044, 15.191643, 14.260735>,  <18.547514, 15.339243, 13.995529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.115044, 15.191643, 14.260735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.083244, 14.940963, 13.950656>,  <19.064165, 14.790555, 13.764609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.083244, 14.940963, 13.950656>,  <19.115044, 15.191643, 14.260735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.083244, 14.940963, 13.950656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399822, 0.692316, -0.600700,
		0.913139, -0.357696, 0.195530,
		-0.079499, -0.626699, -0.775195,
		19.059395, 14.752954, 13.718098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.776840, 15.157339, 13.849875>,  <19.115044, 15.191643, 14.260735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.776840, 15.157339, 13.849875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.486107, 15.033170, 13.604812>,  <19.311666, 14.958668, 13.457773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.486107, 15.033170, 13.604812>,  <19.776840, 15.157339, 13.849875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.486107, 15.033170, 13.604812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285475, 0.674778, -0.680572,
		0.624676, -0.669560, -0.401831,
		-0.726831, -0.310425, -0.612661,
		19.268057, 14.940042, 13.421014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.057432, 15.138298, 13.252439>,  <19.776840, 15.157339, 13.849875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.057432, 15.138298, 13.252439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.667208, 15.134101, 13.164649>,  <19.433073, 15.131583, 13.111976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.667208, 15.134101, 13.164649>,  <20.057432, 15.138298, 13.252439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.667208, 15.134101, 13.164649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145170, 0.719021, -0.679658,
		0.164936, -0.694909, -0.699927,
		-0.975562, -0.010492, -0.219473,
		19.374538, 15.130954, 13.098807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.972958, 15.066695, 12.554756>,  <20.057432, 15.138298, 13.252439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.972958, 15.066695, 12.554756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.610191, 15.202177, 12.654984>,  <19.392532, 15.283466, 12.715120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.610191, 15.202177, 12.654984>,  <19.972958, 15.066695, 12.554756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610191, 15.202177, 12.654984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000150, 0.594472, -0.804116,
		-0.421315, -0.729302, -0.539084,
		-0.906915, 0.338705, 0.250569,
		19.338118, 15.303788, 12.730154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.521214, 14.933711, 12.008461>,  <19.972958, 15.066695, 12.554756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.521214, 14.933711, 12.008461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.330032, 15.237796, 12.184480>,  <19.215324, 15.420246, 12.290091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.330032, 15.237796, 12.184480>,  <19.521214, 14.933711, 12.008461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.330032, 15.237796, 12.184480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036071, 0.483563, -0.874566,
		-0.877645, -0.433874, -0.203698,
		-0.477952, 0.760211, 0.440046,
		19.186647, 15.465859, 12.316494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.928394, 15.032076, 11.606438>,  <19.521214, 14.933711, 12.008461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.928394, 15.032076, 11.606438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.971104, 15.361067, 11.829912>,  <18.996729, 15.558461, 11.963997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.971104, 15.361067, 11.829912>,  <18.928394, 15.032076, 11.606438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.971104, 15.361067, 11.829912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244595, 0.566358, -0.787027,
		-0.963728, -0.052616, 0.261647,
		0.106776, 0.822478, 0.558685,
		19.003136, 15.607810, 11.997518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.305511, 15.430885, 11.500360>,  <18.928394, 15.032076, 11.606438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.305511, 15.430885, 11.500360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.600834, 15.672884, 11.619611>,  <18.778028, 15.818083, 11.691162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.600834, 15.672884, 11.619611>,  <18.305511, 15.430885, 11.500360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.600834, 15.672884, 11.619611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103307, 0.538246, -0.836432,
		-0.666505, 0.586745, 0.459892,
		0.738308, 0.604997, 0.298129,
		18.822327, 15.854383, 11.709049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070421, 16.148222, 11.313593>,  <18.305511, 15.430885, 11.500360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070421, 16.148222, 11.313593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460260, 16.199230, 11.387234>,  <18.694164, 16.229836, 11.431418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460260, 16.199230, 11.387234>,  <18.070421, 16.148222, 11.313593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460260, 16.199230, 11.387234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037765, 0.716700, -0.696359,
		-0.220747, 0.685623, 0.693680,
		0.974600, 0.127522, 0.184102,
		18.752640, 16.237488, 11.442465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.137541, 16.816170, 11.242089>,  <18.070421, 16.148222, 11.313593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.137541, 16.816170, 11.242089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.522343, 16.707964, 11.227286>,  <18.753223, 16.643042, 11.218405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.522343, 16.707964, 11.227286>,  <18.137541, 16.816170, 11.242089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.522343, 16.707964, 11.227286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222193, 0.854419, -0.469678,
		0.158673, 0.443610, 0.882062,
		0.962005, -0.270513, -0.037006,
		18.810944, 16.626810, 11.216185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524439, 17.365747, 11.386123>,  <18.137541, 16.816170, 11.242089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524439, 17.365747, 11.386123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740198, 17.115007, 11.161229>,  <18.869654, 16.964563, 11.026293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740198, 17.115007, 11.161229>,  <18.524439, 17.365747, 11.386123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.740198, 17.115007, 11.161229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014710, 0.660579, -0.750613,
		0.841923, 0.413149, 0.347093,
		0.539397, -0.626852, -0.562234,
		18.902018, 16.926952, 10.992559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.017323, 17.808664, 10.980479>,  <18.524439, 17.365747, 11.386123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.017323, 17.808664, 10.980479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.026024, 17.462296, 10.780598>,  <19.031244, 17.254475, 10.660669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.026024, 17.462296, 10.780598>,  <19.017323, 17.808664, 10.980479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.026024, 17.462296, 10.780598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010587, 0.499594, -0.866195,
		0.999707, 0.024135, 0.001701,
		0.021755, -0.865924, -0.499703,
		19.032551, 17.202518, 10.630687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.602350, 17.943565, 10.500656>,  <19.017323, 17.808664, 10.980479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.602350, 17.943565, 10.500656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.358580, 17.646849, 10.388696>,  <19.212317, 17.468819, 10.321520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.358580, 17.646849, 10.388696>,  <19.602350, 17.943565, 10.500656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.358580, 17.646849, 10.388696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053824, 0.313512, -0.948058,
		0.791013, -0.592837, -0.151136,
		-0.609426, -0.741791, -0.279901,
		19.175751, 17.424311, 10.304726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939816, 17.571384, 9.933086>,  <19.602350, 17.943565, 10.500656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939816, 17.571384, 9.933086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.549088, 17.488947, 9.909927>,  <19.314651, 17.439486, 9.896031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.549088, 17.488947, 9.909927>,  <19.939816, 17.571384, 9.933086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.549088, 17.488947, 9.909927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000344, 0.268954, -0.963153,
		0.214066, -0.940846, -0.262649,
		-0.976819, -0.206088, -0.057897,
		19.256042, 17.427120, 9.892558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835722, 17.349951, 9.215916>,  <19.939816, 17.571384, 9.933086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835722, 17.349951, 9.215916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.460171, 17.423708, 9.332195>,  <19.234840, 17.467962, 9.401963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.460171, 17.423708, 9.332195>,  <19.835722, 17.349951, 9.215916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.460171, 17.423708, 9.332195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217774, 0.335863, -0.916390,
		-0.266611, -0.923686, -0.275178,
		-0.938879, 0.184394, 0.290699,
		19.178507, 17.479027, 9.419405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.442404, 17.253555, 8.582431>,  <19.835722, 17.349951, 9.215916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.442404, 17.253555, 8.582431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.216257, 17.477648, 8.824588>,  <19.080568, 17.612103, 8.969882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.216257, 17.477648, 8.824588>,  <19.442404, 17.253555, 8.582431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.216257, 17.477648, 8.824588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242872, 0.588347, -0.771272,
		-0.788271, -0.583086, -0.196568,
		-0.565368, 0.560231, 0.605392,
		19.046646, 17.645718, 9.006206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.811214, 17.287716, 8.280075>,  <19.442404, 17.253555, 8.582431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.811214, 17.287716, 8.280075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.895161, 17.611340, 8.499667>,  <18.945528, 17.805513, 8.631422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.895161, 17.611340, 8.499667>,  <18.811214, 17.287716, 8.280075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.895161, 17.611340, 8.499667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316696, 0.587464, -0.744707,
		-0.925019, -0.017571, 0.379515,
		0.209867, 0.809059, 0.548980,
		18.958120, 17.854057, 8.664361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413477, 17.666336, 7.933224>,  <18.811214, 17.287716, 8.280075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.413477, 17.666336, 7.933224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.616215, 17.932428, 8.152524>,  <18.737858, 18.092083, 8.284104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.616215, 17.932428, 8.152524>,  <18.413477, 17.666336, 7.933224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.616215, 17.932428, 8.152524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296300, 0.731684, -0.613877,
		-0.809514, 0.148695, 0.567958,
		0.506846, 0.665228, 0.548250,
		18.768269, 18.131996, 8.316999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.957485, 18.305426, 8.106264>,  <18.413477, 17.666336, 7.933224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.957485, 18.305426, 8.106264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337486, 18.429842, 8.095359>,  <18.565487, 18.504492, 8.088816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337486, 18.429842, 8.095359>,  <17.957485, 18.305426, 8.106264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337486, 18.429842, 8.095359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295678, 0.868134, -0.398645,
		-0.100329, 0.386775, 0.916700,
		0.950005, 0.311043, -0.027262,
		18.622488, 18.523155, 8.087180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973505, 19.023502, 8.385465>,  <17.957485, 18.305426, 8.106264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973505, 19.023502, 8.385465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315090, 18.959431, 8.187438>,  <18.520041, 18.920988, 8.068622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315090, 18.959431, 8.187438>,  <17.973505, 19.023502, 8.385465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.315090, 18.959431, 8.187438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007000, 0.954888, -0.296882,
		0.520288, 0.250061, 0.816560,
		0.853962, -0.160180, -0.495066,
		18.571280, 18.911377, 8.038918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.324337, 19.483728, 8.559311>,  <17.973505, 19.023502, 8.385465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.324337, 19.483728, 8.559311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.455435, 19.373087, 8.197964>,  <18.534094, 19.306702, 7.981155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.455435, 19.373087, 8.197964>,  <18.324337, 19.483728, 8.559311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.455435, 19.373087, 8.197964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119392, 0.960642, -0.250822,
		0.937192, -0.025649, 0.347871,
		0.327746, -0.276601, -0.903368,
		18.553759, 19.290106, 7.926953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.898966, 19.911703, 8.414168>,  <18.324337, 19.483728, 8.559311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.898966, 19.911703, 8.414168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.759333, 19.761969, 8.070537>,  <18.675552, 19.672129, 7.864358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.759333, 19.761969, 8.070537>,  <18.898966, 19.911703, 8.414168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.759333, 19.761969, 8.070537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129489, 0.888686, -0.439852,
		0.928103, -0.264785, -0.261751,
		-0.349081, -0.374334, -0.859079,
		18.654608, 19.649668, 7.812813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.498913, 19.648226, 8.616984>,  <18.898966, 19.911703, 8.414168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.498913, 19.648226, 8.616984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.872513, 19.743540, 8.723466>,  <20.096672, 19.800728, 8.787354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.872513, 19.743540, 8.723466>,  <19.498913, 19.648226, 8.616984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.872513, 19.743540, 8.723466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245259, 0.969431, -0.007239,
		-0.259790, -0.058527, 0.963890,
		0.934000, 0.238284, 0.266203,
		20.152714, 19.815025, 8.803327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.590557, 19.956299, 9.350132>,  <19.498913, 19.648226, 8.616984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.590557, 19.956299, 9.350132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.826723, 20.075884, 9.050257>,  <19.968422, 20.147635, 8.870331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.826723, 20.075884, 9.050257>,  <19.590557, 19.956299, 9.350132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.826723, 20.075884, 9.050257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214293, 0.953594, 0.211510,
		0.778133, 0.035775, 0.627080,
		0.590413, 0.298962, -0.749689,
		20.003847, 20.165573, 8.825350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.559162, 20.341789, 10.062542>,  <19.590557, 19.956299, 9.350132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.559162, 20.341789, 10.062542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359476, 20.338644, 10.409119>,  <19.239664, 20.336758, 10.617064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359476, 20.338644, 10.409119>,  <19.559162, 20.341789, 10.062542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359476, 20.338644, 10.409119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617123, -0.705154, 0.349168,
		0.608230, 0.709011, 0.356876,
		-0.499216, -0.007862, 0.866442,
		19.209711, 20.336285, 10.669051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.185730, 20.370525, 10.545384>,  <19.559162, 20.341789, 10.062542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.185730, 20.370525, 10.545384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.831453, 20.223442, 10.658760>,  <19.618887, 20.135193, 10.726786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.831453, 20.223442, 10.658760>,  <20.185730, 20.370525, 10.545384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.831453, 20.223442, 10.658760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449504, -0.831914, 0.325368,
		0.116158, 0.415584, 0.902107,
		-0.885694, -0.367707, 0.283440,
		19.565744, 20.113131, 10.743792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.205887, 20.266438, 11.205182>,  <20.185730, 20.370525, 10.545384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.205887, 20.266438, 11.205182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.939676, 20.004734, 11.061503>,  <19.779951, 19.847712, 10.975296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.939676, 20.004734, 11.061503>,  <20.205887, 20.266438, 11.205182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.939676, 20.004734, 11.061503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494054, -0.746893, 0.445040,
		-0.559453, 0.118723, 0.820315,
		-0.665525, -0.654259, -0.359196,
		19.740019, 19.808456, 10.953745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.824543, 19.917862, 11.724011>,  <20.205887, 20.266438, 11.205182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.824543, 19.917862, 11.724011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.818819, 19.676088, 11.405401>,  <19.815384, 19.531023, 11.214235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.818819, 19.676088, 11.405401>,  <19.824543, 19.917862, 11.724011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.818819, 19.676088, 11.405401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436844, -0.720339, 0.538775,
		-0.899423, -0.340248, 0.274352,
		-0.014310, -0.604436, -0.796525,
		19.814526, 19.494757, 11.166444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.566433, 19.291176, 12.004635>,  <19.824543, 19.917862, 11.724011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.566433, 19.291176, 12.004635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829872, 19.249945, 11.706473>,  <19.987936, 19.225206, 11.527576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829872, 19.249945, 11.706473>,  <19.566433, 19.291176, 12.004635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.829872, 19.249945, 11.706473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422567, -0.768979, 0.479696,
		-0.622646, -0.630909, -0.462889,
		0.658596, -0.103079, -0.745403,
		20.027451, 19.219021, 11.482852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545624, 18.635674, 11.891144>,  <19.566433, 19.291176, 12.004635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545624, 18.635674, 11.891144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.887550, 18.807716, 11.775005>,  <20.092707, 18.910942, 11.705322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.887550, 18.807716, 11.775005>,  <19.545624, 18.635674, 11.891144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.887550, 18.807716, 11.775005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517898, -0.671753, 0.529650,
		0.032766, -0.603122, -0.796976,
		0.854815, 0.430107, -0.290345,
		20.143995, 18.936749, 11.687901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.952021, 18.212572, 11.441150>,  <19.545624, 18.635674, 11.891144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.952021, 18.212572, 11.441150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.201603, 18.402111, 11.689713>,  <20.351353, 18.515835, 11.838850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.201603, 18.402111, 11.689713>,  <19.952021, 18.212572, 11.441150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.201603, 18.402111, 11.689713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270085, -0.876946, 0.397516,
		0.733303, -0.080199, -0.675155,
		0.623955, 0.473849, 0.621407,
		20.388790, 18.544266, 11.876135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.589720, 17.803757, 11.482643>,  <19.952021, 18.212572, 11.441150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.589720, 17.803757, 11.482643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.589733, 18.044331, 11.802212>,  <20.589741, 18.188675, 11.993953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.589733, 18.044331, 11.802212>,  <20.589720, 17.803757, 11.482643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.589733, 18.044331, 11.802212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591853, -0.643979, 0.484769,
		0.806046, 0.472828, -0.355983,
		0.000033, 0.601436, 0.798921,
		20.589743, 18.224762, 12.041888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.324541, 17.821251, 11.651470>,  <20.589720, 17.803757, 11.482643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.324541, 17.821251, 11.651470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114347, 17.935474, 11.972050>,  <20.988232, 18.004007, 12.164397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114347, 17.935474, 11.972050>,  <21.324541, 17.821251, 11.651470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.114347, 17.935474, 11.972050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634365, -0.496227, 0.592739,
		0.566962, 0.819888, 0.079613,
		-0.525486, 0.285557, 0.801450,
		20.956701, 18.021141, 12.212484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.840988, 17.974785, 12.169209>,  <21.324541, 17.821251, 11.651470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.840988, 17.974785, 12.169209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.512568, 17.861475, 12.367453>,  <21.315514, 17.793489, 12.486399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.512568, 17.861475, 12.367453>,  <21.840988, 17.974785, 12.169209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.512568, 17.861475, 12.367453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562131, -0.552370, 0.615545,
		0.099391, 0.783992, 0.612763,
		-0.821054, -0.283274, 0.495607,
		21.266251, 17.776493, 12.516135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.116650, 17.940189, 12.758937>,  <21.840988, 17.974785, 12.169209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.116650, 17.940189, 12.758937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.784206, 17.717871, 12.766430>,  <21.584740, 17.584480, 12.770926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.784206, 17.717871, 12.766430>,  <22.116650, 17.940189, 12.758937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.784206, 17.717871, 12.766430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486345, -0.710093, 0.509153,
		-0.269683, 0.432272, 0.860472,
		-0.831108, -0.555796, 0.018734,
		21.534874, 17.551132, 12.772050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.080555, 17.648703, 13.409573>,  <22.116650, 17.940189, 12.758937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.080555, 17.648703, 13.409573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836143, 17.412828, 13.198323>,  <21.689497, 17.271303, 13.071573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836143, 17.412828, 13.198323>,  <22.080555, 17.648703, 13.409573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836143, 17.412828, 13.198323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471345, -0.807015, 0.355754,
		-0.635986, -0.031553, 0.771055,
		-0.611028, -0.589687, -0.528123,
		21.652836, 17.235922, 13.039886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.676086, 17.236612, 13.936996>,  <22.080555, 17.648703, 13.409573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.676086, 17.236612, 13.936996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.688988, 17.042192, 13.587663>,  <21.696730, 16.925541, 13.378062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.688988, 17.042192, 13.587663>,  <21.676086, 17.236612, 13.936996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.688988, 17.042192, 13.587663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542352, -0.725445, 0.423774,
		-0.839532, -0.487323, 0.240212,
		0.032254, -0.486051, -0.873335,
		21.698664, 16.896378, 13.325663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.418322, 16.597652, 14.074671>,  <21.676086, 17.236612, 13.936996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.418322, 16.597652, 14.074671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.630350, 16.548595, 13.739057>,  <21.757568, 16.519161, 13.537688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.630350, 16.548595, 13.739057>,  <21.418322, 16.597652, 14.074671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.630350, 16.548595, 13.739057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462273, -0.787719, 0.407189,
		-0.710863, -0.603704, -0.360854,
		0.530073, -0.122642, -0.839036,
		21.789371, 16.511803, 13.487346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.294691, 15.855437, 13.789760>,  <21.418322, 16.597652, 14.074671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.294691, 15.855437, 13.789760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.630014, 15.993929, 13.621300>,  <21.831207, 16.077024, 13.520224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.630014, 15.993929, 13.621300>,  <21.294691, 15.855437, 13.789760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.630014, 15.993929, 13.621300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515320, -0.755404, 0.404735,
		-0.178008, -0.556319, -0.811679,
		0.838307, 0.346228, -0.421150,
		21.881506, 16.097797, 13.494955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.629562, 15.221617, 13.440835>,  <21.294691, 15.855437, 13.789760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.629562, 15.221617, 13.440835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.916065, 15.493287, 13.504955>,  <22.087967, 15.656289, 13.543427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.916065, 15.493287, 13.504955>,  <21.629562, 15.221617, 13.440835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.916065, 15.493287, 13.504955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520426, -0.672913, 0.525685,
		0.464901, -0.293101, -0.835440,
		0.716257, 0.679176, 0.160300,
		22.130941, 15.697040, 13.553045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.314407, 14.824341, 13.336254>,  <21.629562, 15.221617, 13.440835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.314407, 14.824341, 13.336254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.404247, 15.157163, 13.539130>,  <22.458151, 15.356855, 13.660855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.404247, 15.157163, 13.539130>,  <22.314407, 14.824341, 13.336254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.404247, 15.157163, 13.539130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549487, -0.537985, 0.639246,
		0.804748, 0.135120, -0.578034,
		0.224599, 0.832054, 0.507189,
		22.471626, 15.406779, 13.691287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.011282, 14.802243, 13.272539>,  <22.314407, 14.824341, 13.336254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.011282, 14.802243, 13.272539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.954962, 15.056486, 13.576164>,  <22.921169, 15.209032, 13.758340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.954962, 15.056486, 13.576164>,  <23.011282, 14.802243, 13.272539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954962, 15.056486, 13.576164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704391, -0.474452, 0.527948,
		0.695707, 0.609014, -0.380912,
		-0.140803, 0.635608, 0.759063,
		22.912722, 15.247169, 13.803884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.665056, 15.150275, 13.439005>,  <23.011282, 14.802243, 13.272539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.665056, 15.150275, 13.439005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.418615, 15.168736, 13.753531>,  <23.270752, 15.179813, 13.942245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.418615, 15.168736, 13.753531>,  <23.665056, 15.150275, 13.439005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.418615, 15.168736, 13.753531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758166, -0.235900, 0.607894,
		0.213548, 0.970681, 0.110346,
		-0.616101, 0.046154, 0.786314,
		23.233786, 15.182583, 13.989425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.107527, 15.346920, 14.006787>,  <23.665056, 15.150275, 13.439005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.107527, 15.346920, 14.006787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.787460, 15.186159, 14.184870>,  <23.595421, 15.089703, 14.291719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.787460, 15.186159, 14.184870>,  <24.107527, 15.346920, 14.006787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.787460, 15.186159, 14.184870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578101, -0.319040, 0.751008,
		-0.159793, 0.858306, 0.487625,
		-0.800166, -0.401902, 0.445207,
		23.547411, 15.065589, 14.318432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.173985, 15.512668, 14.718105>,  <24.107527, 15.346920, 14.006787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.173985, 15.512668, 14.718105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.956848, 15.178761, 14.681249>,  <23.826567, 14.978417, 14.659135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.956848, 15.178761, 14.681249>,  <24.173985, 15.512668, 14.718105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.956848, 15.178761, 14.681249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514200, -0.417100, 0.749417,
		-0.664020, 0.359436, 0.655655,
		-0.542841, -0.834766, -0.092141,
		23.793997, 14.928331, 14.653606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.962795, 15.410429, 15.344862>,  <24.173985, 15.512668, 14.718105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.962795, 15.410429, 15.344862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.980919, 15.067121, 15.140385>,  <23.991793, 14.861135, 15.017698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.980919, 15.067121, 15.140385>,  <23.962795, 15.410429, 15.344862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.980919, 15.067121, 15.140385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411718, -0.450194, 0.792346,
		-0.910184, -0.246369, 0.332967,
		0.045310, -0.858270, -0.511194,
		23.994513, 14.809640, 14.987026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.472027, 15.001153, 15.663063>,  <23.962795, 15.410429, 15.344862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.472027, 15.001153, 15.663063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761555, 14.810089, 15.463893>,  <23.935270, 14.695451, 15.344391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761555, 14.810089, 15.463893>,  <23.472027, 15.001153, 15.663063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.761555, 14.810089, 15.463893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262485, -0.476766, 0.838926,
		-0.638115, -0.737927, -0.219712,
		0.723817, -0.477660, -0.497926,
		23.978701, 14.666791, 15.314515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.433420, 14.196203, 15.607324>,  <23.472027, 15.001153, 15.663063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.433420, 14.196203, 15.607324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.822720, 14.285632, 15.586164>,  <24.056299, 14.339290, 15.573467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.822720, 14.285632, 15.586164>,  <23.433420, 14.196203, 15.607324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.822720, 14.285632, 15.586164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157242, -0.480336, 0.862875,
		0.167505, -0.848112, -0.502642,
		0.973250, 0.223572, -0.052900,
		24.114695, 14.352704, 15.570293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.798199, 13.567247, 15.908233>,  <23.433420, 14.196203, 15.607324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.798199, 13.567247, 15.908233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.080280, 13.848768, 15.942524>,  <24.249529, 14.017681, 15.963099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.080280, 13.848768, 15.942524>,  <23.798199, 13.567247, 15.908233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.080280, 13.848768, 15.942524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402218, -0.496700, 0.769097,
		0.583874, -0.507888, -0.633356,
		0.705203, 0.703803, 0.085728,
		24.291842, 14.059909, 15.968243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556032, 13.294214, 15.788596>,  <23.798199, 13.567247, 15.908233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556032, 13.294214, 15.788596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585865, 13.622863, 16.014650>,  <24.603765, 13.820052, 16.150282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585865, 13.622863, 16.014650>,  <24.556032, 13.294214, 15.788596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.585865, 13.622863, 16.014650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478639, -0.526661, 0.702519,
		0.874838, 0.218101, -0.432539,
		0.074582, 0.821620, 0.565135,
		24.608240, 13.869349, 16.184191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056839, 13.813732, 15.499691>,  <24.556032, 13.294214, 15.788596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056839, 13.813732, 15.499691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702248, 13.651399, 15.410734>,  <24.489492, 13.553998, 15.357360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702248, 13.651399, 15.410734>,  <25.056839, 13.813732, 15.499691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702248, 13.651399, 15.410734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073747, 0.350537, -0.933641,
		0.456862, -0.844050, -0.280814,
		-0.886475, -0.405836, -0.222393,
		24.436304, 13.529648, 15.344016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218052, 13.337087, 14.900768>,  <25.056839, 13.813732, 15.499691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218052, 13.337087, 14.900768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848701, 13.485658, 14.939585>,  <24.627090, 13.574800, 14.962874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848701, 13.485658, 14.939585>,  <25.218052, 13.337087, 14.900768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848701, 13.485658, 14.939585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054840, 0.122569, -0.990944,
		-0.379959, -0.920336, -0.092808,
		-0.923376, 0.371428, 0.097042,
		24.571688, 13.597086, 14.968698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800173, 13.855062, 15.111602>,  <25.218052, 13.337087, 14.900768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800173, 13.855062, 15.111602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725601, 14.192319, 15.313337>,  <25.680859, 14.394672, 15.434379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725601, 14.192319, 15.313337>,  <25.800173, 13.855062, 15.111602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725601, 14.192319, 15.313337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862870, 0.385978, -0.326308,
		-0.469787, 0.374345, -0.799479,
		-0.186430, 0.843141, 0.504339,
		25.669672, 14.445261, 15.464639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722895, 14.504580, 14.700191>,  <25.800173, 13.855062, 15.111602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722895, 14.504580, 14.700191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881380, 14.561432, 15.063027>,  <25.976471, 14.595543, 15.280729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881380, 14.561432, 15.063027>,  <25.722895, 14.504580, 14.700191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881380, 14.561432, 15.063027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883421, 0.210168, -0.418803,
		-0.250166, 0.967279, -0.042289,
		0.396212, 0.142130, 0.907092,
		26.000244, 14.604071, 15.335155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245634, 15.111931, 14.702803>,  <25.722895, 14.504580, 14.700191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245634, 15.111931, 14.702803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325533, 14.818104, 14.962190>,  <26.373472, 14.641808, 15.117822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325533, 14.818104, 14.962190>,  <26.245634, 15.111931, 14.702803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325533, 14.818104, 14.962190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909871, -0.106557, -0.400975,
		0.363642, 0.670116, 0.647078,
		0.199749, -0.734568, 0.648467,
		26.385458, 14.597733, 15.156730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806671, 15.318455, 14.991771>,  <26.245634, 15.111931, 14.702803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806671, 15.318455, 14.991771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811058, 14.925232, 15.064958>,  <26.813690, 14.689298, 15.108870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811058, 14.925232, 15.064958>,  <26.806671, 15.318455, 14.991771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811058, 14.925232, 15.064958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916224, -0.063408, -0.395616,
		0.400515, 0.171979, 0.900006,
		0.010970, -0.983058, 0.182967,
		26.814348, 14.630315, 15.119847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.777264, 20.781336, 24.329988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.515609, 20.596615, 24.569603>,  <11.358616, 20.485783, 24.713371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.515609, 20.596615, 24.569603>,  <11.777264, 20.781336, 24.329988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.515609, 20.596615, 24.569603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271543, -0.595807, -0.755830,
		0.705953, -0.657080, 0.264340,
		-0.654137, -0.461801, 0.599037,
		11.319367, 20.458075, 24.749313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.920139, 20.075956, 24.190865>,  <11.777264, 20.781336, 24.329988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.920139, 20.075956, 24.190865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.553141, 20.107464, 24.346811>,  <11.332942, 20.126368, 24.440380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.553141, 20.107464, 24.346811>,  <11.920139, 20.075956, 24.190865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.553141, 20.107464, 24.346811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366194, -0.549885, -0.750686,
		0.155252, -0.831518, 0.533361,
		-0.917496, 0.078768, 0.389868,
		11.277892, 20.131094, 24.463772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.733410, 19.451571, 24.060125>,  <11.920139, 20.075956, 24.190865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.733410, 19.451571, 24.060125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.391434, 19.640778, 24.145288>,  <11.186248, 19.754301, 24.196386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.391434, 19.640778, 24.145288>,  <11.733410, 19.451571, 24.060125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.391434, 19.640778, 24.145288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464137, -0.514288, -0.721169,
		-0.231629, -0.715376, 0.659231,
		-0.854941, 0.473017, 0.212908,
		11.134952, 19.782682, 24.209162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.293904, 18.864859, 23.950327>,  <11.733410, 19.451571, 24.060125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.293904, 18.864859, 23.950327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.072942, 19.198215, 23.943336>,  <10.940364, 19.398230, 23.939142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.072942, 19.198215, 23.943336>,  <11.293904, 18.864859, 23.950327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.072942, 19.198215, 23.943336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564957, -0.389729, -0.727279,
		-0.612920, -0.391879, 0.686119,
		-0.552406, 0.833392, -0.017478,
		10.907220, 19.448233, 23.938093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.655828, 18.604879, 23.883253>,  <11.293904, 18.864859, 23.950327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.655828, 18.604879, 23.883253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.637220, 18.978365, 23.741261>,  <10.626056, 19.202457, 23.656065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.637220, 18.978365, 23.741261>,  <10.655828, 18.604879, 23.883253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.637220, 18.978365, 23.741261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557470, -0.319145, -0.766402,
		-0.828892, 0.162239, 0.535365,
		-0.046519, 0.933715, -0.354981,
		10.623264, 19.258480, 23.634766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.998698, 18.647972, 23.592247>,  <10.655828, 18.604879, 23.883253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.998698, 18.647972, 23.592247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.201368, 18.950569, 23.426838>,  <10.322970, 19.132128, 23.327593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.201368, 18.950569, 23.426838>,  <9.998698, 18.647972, 23.592247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.201368, 18.950569, 23.426838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420459, -0.201916, -0.884559,
		-0.752658, 0.622053, 0.215768,
		0.506675, 0.756492, -0.413522,
		10.353371, 19.177517, 23.302782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.502784, 18.842499, 23.060873>,  <9.998698, 18.647972, 23.592247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.502784, 18.842499, 23.060873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.853706, 19.015932, 22.978567>,  <10.064260, 19.119991, 22.929184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.853706, 19.015932, 22.978567>,  <9.502784, 18.842499, 23.060873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.853706, 19.015932, 22.978567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233115, 0.010214, -0.972396,
		-0.419512, 0.901056, 0.110036,
		0.877307, 0.433583, -0.205765,
		10.116899, 19.146008, 22.916838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.400380, 19.366920, 22.547903>,  <9.502784, 18.842499, 23.060873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.400380, 19.366920, 22.547903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.780478, 19.242323, 22.546801>,  <10.008536, 19.167564, 22.546139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.780478, 19.242323, 22.546801>,  <9.400380, 19.366920, 22.547903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.780478, 19.242323, 22.546801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006993, 0.030182, -0.999520,
		0.311430, 0.949768, 0.030859,
		0.950243, -0.311496, -0.002758,
		10.065551, 19.148874, 22.545973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.725955, 19.666843, 21.985004>,  <9.400380, 19.366920, 22.547903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.725955, 19.666843, 21.985004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.975162, 19.361288, 22.052322>,  <10.124685, 19.177956, 22.092714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.975162, 19.361288, 22.052322>,  <9.725955, 19.666843, 21.985004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.975162, 19.361288, 22.052322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221764, -0.033832, -0.974513,
		0.750113, 0.644461, 0.148325,
		0.623017, -0.763889, 0.168296,
		10.162066, 19.132122, 22.102812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.159930, 19.714432, 21.409489>,  <9.725955, 19.666843, 21.985004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.159930, 19.714432, 21.409489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.267707, 19.359346, 21.558817>,  <10.332373, 19.146296, 21.648415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.267707, 19.359346, 21.558817>,  <10.159930, 19.714432, 21.409489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.267707, 19.359346, 21.558817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271791, -0.301800, -0.913809,
		0.923867, 0.347683, 0.159954,
		0.269442, -0.887712, 0.373321,
		10.348539, 19.093033, 21.670813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.872648, 19.560638, 21.243036>,  <10.159930, 19.714432, 21.409489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.872648, 19.560638, 21.243036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.660648, 19.225838, 21.297482>,  <10.533448, 19.024958, 21.330149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.660648, 19.225838, 21.297482>,  <10.872648, 19.560638, 21.243036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.660648, 19.225838, 21.297482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298793, -0.334542, -0.893758,
		0.793613, -0.433023, 0.427398,
		-0.530001, -0.837003, 0.136113,
		10.501648, 18.974737, 21.338316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.225249, 19.029749, 20.812101>,  <10.872648, 19.560638, 21.243036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.225249, 19.029749, 20.812101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.872879, 18.847441, 20.863075>,  <10.661457, 18.738056, 20.893660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.872879, 18.847441, 20.863075>,  <11.225249, 19.029749, 20.812101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.872879, 18.847441, 20.863075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141012, -0.509829, -0.848640,
		0.451757, -0.729620, 0.513391,
		-0.880927, -0.455773, 0.127433,
		10.608601, 18.710709, 20.901306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.359873, 18.442528, 20.443169>,  <11.225249, 19.029749, 20.812101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.359873, 18.442528, 20.443169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.961158, 18.456326, 20.472078>,  <10.721929, 18.464603, 20.489424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.961158, 18.456326, 20.472078>,  <11.359873, 18.442528, 20.443169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.961158, 18.456326, 20.472078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079843, -0.358338, -0.930171,
		-0.006184, -0.932955, 0.359941,
		-0.996788, 0.034492, 0.072274,
		10.662122, 18.466673, 20.493761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.119923, 17.800259, 20.152994>,  <11.359873, 18.442528, 20.443169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.119923, 17.800259, 20.152994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.816039, 18.058191, 20.119436>,  <10.633709, 18.212950, 20.099302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.816039, 18.058191, 20.119436>,  <11.119923, 17.800259, 20.152994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.816039, 18.058191, 20.119436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081202, -0.222081, -0.971641,
		-0.645174, -0.731351, 0.221078,
		-0.759708, 0.644830, -0.083894,
		10.588126, 18.251640, 20.094269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.629746, 17.458454, 19.732452>,  <11.119923, 17.800259, 20.152994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.629746, 17.458454, 19.732452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.557237, 17.851730, 19.723755>,  <10.513731, 18.087696, 19.718536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.557237, 17.851730, 19.723755>,  <10.629746, 17.458454, 19.732452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.557237, 17.851730, 19.723755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091365, -0.038851, -0.995059,
		-0.979179, -0.178392, 0.096872,
		-0.181274, 0.983192, -0.021744,
		10.502854, 18.146688, 19.717232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.967858, 17.607098, 19.362120>,  <10.629746, 17.458454, 19.732452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.967858, 17.607098, 19.362120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.179710, 17.944662, 19.327934>,  <10.306822, 18.147202, 19.307423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.179710, 17.944662, 19.327934>,  <9.967858, 17.607098, 19.362120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.179710, 17.944662, 19.327934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055254, -0.134863, -0.989322,
		-0.846428, 0.519252, -0.118057,
		0.529629, 0.843913, -0.085461,
		10.338599, 18.197836, 19.302296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.831999, 17.829388, 18.654854>,  <9.967858, 17.607098, 19.362120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.831999, 17.829388, 18.654854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.130095, 18.080864, 18.743727>,  <10.308953, 18.231750, 18.797050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.130095, 18.080864, 18.743727>,  <9.831999, 17.829388, 18.654854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.130095, 18.080864, 18.743727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354385, -0.091192, -0.930642,
		-0.564825, 0.772290, -0.290758,
		0.745241, 0.628691, 0.222181,
		10.353668, 18.269470, 18.810381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.834130, 18.335548, 18.136982>,  <9.831999, 17.829388, 18.654854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.834130, 18.335548, 18.136982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.195156, 18.344126, 18.308990>,  <10.411772, 18.349272, 18.412195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.195156, 18.344126, 18.308990>,  <9.834130, 18.335548, 18.136982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.195156, 18.344126, 18.308990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430492, -0.062073, -0.900457,
		0.007383, 0.997841, -0.065256,
		0.902564, 0.021444, 0.430021,
		10.465925, 18.350559, 18.437998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.139308, 18.825291, 17.775377>,  <9.834130, 18.335548, 18.136982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.139308, 18.825291, 17.775377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.446441, 18.616693, 17.924229>,  <10.630720, 18.491535, 18.013540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.446441, 18.616693, 17.924229>,  <10.139308, 18.825291, 17.775377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.446441, 18.616693, 17.924229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389961, -0.080412, -0.917314,
		0.508296, 0.849458, 0.141619,
		0.767832, -0.521493, 0.372128,
		10.676790, 18.460245, 18.035868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.878164, 19.091791, 17.540588>,  <10.139308, 18.825291, 17.775377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.878164, 19.091791, 17.540588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.931691, 18.710157, 17.647781>,  <10.963807, 18.481176, 17.712097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.931691, 18.710157, 17.647781>,  <10.878164, 19.091791, 17.540588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.931691, 18.710157, 17.647781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358420, -0.205513, -0.910659,
		0.923920, 0.217912, 0.314462,
		0.133818, -0.954085, 0.267981,
		10.971836, 18.423931, 17.728176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.487153, 18.904490, 17.256754>,  <10.878164, 19.091791, 17.540588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.487153, 18.904490, 17.256754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.345063, 18.537088, 17.326229>,  <11.259809, 18.316648, 17.367914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.345063, 18.537088, 17.326229>,  <11.487153, 18.904490, 17.256754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.345063, 18.537088, 17.326229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479213, -0.338466, -0.809812,
		0.802602, -0.204433, 0.560390,
		-0.355225, -0.918503, 0.173687,
		11.238496, 18.261538, 17.378336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.050913, 18.439678, 17.171116>,  <11.487153, 18.904490, 17.256754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.050913, 18.439678, 17.171116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.741165, 18.192011, 17.118992>,  <11.555317, 18.043409, 17.087717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.741165, 18.192011, 17.118992>,  <12.050913, 18.439678, 17.171116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.741165, 18.192011, 17.118992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456931, -0.404765, -0.792073,
		0.437683, -0.672899, 0.596356,
		-0.774369, -0.619170, -0.130309,
		11.508854, 18.006260, 17.079899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394480, 17.808390, 17.139267>,  <12.050913, 18.439678, 17.171116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.394480, 17.808390, 17.139267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.615884, 18.074326, 16.938623>,  <12.748727, 18.233887, 16.818237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.615884, 18.074326, 16.938623>,  <12.394480, 17.808390, 17.139267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.615884, 18.074326, 16.938623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124793, 0.529279, 0.839220,
		0.823439, -0.527115, 0.209994,
		0.553511, 0.664841, -0.501609,
		12.781937, 18.273777, 16.788141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.743835, 18.145607, 17.597088>,  <12.394480, 17.808390, 17.139267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.743835, 18.145607, 17.597088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.843676, 18.381056, 17.289524>,  <12.903580, 18.522326, 17.104986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.843676, 18.381056, 17.289524>,  <12.743835, 18.145607, 17.597088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.843676, 18.381056, 17.289524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436787, 0.640239, 0.631910,
		0.864244, -0.493574, -0.097300,
		0.249600, 0.588624, -0.768909,
		12.918555, 18.557644, 17.058851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.435172, 18.239721, 17.725330>,  <12.743835, 18.145607, 17.597088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.435172, 18.239721, 17.725330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.287956, 18.528011, 17.490349>,  <13.199627, 18.700985, 17.349360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.287956, 18.528011, 17.490349>,  <13.435172, 18.239721, 17.725330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.287956, 18.528011, 17.490349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332406, 0.692034, 0.640777,
		0.868362, 0.040559, -0.494270,
		-0.368041, 0.720724, -0.587454,
		13.177545, 18.744228, 17.314112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.939080, 18.728731, 17.567833>,  <13.435172, 18.239721, 17.725330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.939080, 18.728731, 17.567833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.597703, 18.920795, 17.486761>,  <13.392877, 19.036034, 17.438118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.597703, 18.920795, 17.486761>,  <13.939080, 18.728731, 17.567833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.597703, 18.920795, 17.486761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251447, 0.719966, 0.646857,
		0.456519, 0.501093, -0.735185,
		-0.853443, 0.480162, -0.202680,
		13.341670, 19.064844, 17.425957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.153524, 19.401947, 17.608135>,  <13.939080, 18.728731, 17.567833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.153524, 19.401947, 17.608135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.758897, 19.377357, 17.668673>,  <13.522120, 19.362604, 17.704994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.758897, 19.377357, 17.668673>,  <14.153524, 19.401947, 17.608135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.758897, 19.377357, 17.668673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065315, 0.700740, 0.710420,
		-0.149725, 0.710763, -0.687313,
		-0.986568, -0.061476, 0.151342,
		13.462927, 19.358915, 17.714075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.052191, 20.020819, 17.937336>,  <14.153524, 19.401947, 17.608135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.052191, 20.020819, 17.937336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.696115, 19.840614, 17.964470>,  <13.482469, 19.732492, 17.980751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.696115, 19.840614, 17.964470>,  <14.052191, 20.020819, 17.937336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.696115, 19.840614, 17.964470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291885, 0.678292, 0.674331,
		-0.349806, 0.580483, -0.735306,
		-0.890191, -0.450510, 0.067836,
		13.429057, 19.705462, 17.984821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.557318, 20.582905, 17.993916>,  <14.052191, 20.020819, 17.937336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.557318, 20.582905, 17.993916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.361966, 20.266609, 18.141548>,  <13.244756, 20.076832, 18.230127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.361966, 20.266609, 18.141548>,  <13.557318, 20.582905, 17.993916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.361966, 20.266609, 18.141548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215846, 0.519271, 0.826903,
		-0.845516, 0.324177, -0.424279,
		-0.488378, -0.790738, 0.369080,
		13.215453, 20.029388, 18.252272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.933296, 20.725590, 18.168673>,  <13.557318, 20.582905, 17.993916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.933296, 20.725590, 18.168673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.025481, 20.411190, 18.398138>,  <13.080792, 20.222549, 18.535818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.025481, 20.411190, 18.398138>,  <12.933296, 20.725590, 18.168673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.025481, 20.411190, 18.398138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098176, 0.567744, 0.817330,
		-0.968116, -0.244684, 0.053678,
		0.230463, -0.786000, 0.573664,
		13.094620, 20.175390, 18.570238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.461345, 20.678383, 18.732899>,  <12.933296, 20.725590, 18.168673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.461345, 20.678383, 18.732899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.756040, 20.462757, 18.896179>,  <12.932857, 20.333382, 18.994146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.756040, 20.462757, 18.896179>,  <12.461345, 20.678383, 18.732899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.756040, 20.462757, 18.896179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251041, 0.342479, 0.905365,
		-0.627851, -0.769491, 0.116990,
		0.736738, -0.539065, 0.408200,
		12.977061, 20.301037, 19.018639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.221945, 20.480207, 19.426567>,  <12.461345, 20.678383, 18.732899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.221945, 20.480207, 19.426567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.615552, 20.410442, 19.440933>,  <12.851716, 20.368584, 19.449553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.615552, 20.410442, 19.440933>,  <12.221945, 20.480207, 19.426567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.615552, 20.410442, 19.440933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002647, 0.215989, 0.976392,
		-0.178054, -0.960692, 0.212998,
		0.984017, -0.174414, 0.035915,
		12.910757, 20.358118, 19.451708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.331155, 20.210274, 20.145702>,  <12.221945, 20.480207, 19.426567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.331155, 20.210274, 20.145702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.691828, 20.337431, 20.028458>,  <12.908232, 20.413725, 19.958111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.691828, 20.337431, 20.028458>,  <12.331155, 20.210274, 20.145702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.691828, 20.337431, 20.028458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243552, 0.186730, 0.951743,
		0.357284, -0.929557, 0.090948,
		0.901682, 0.317892, -0.293111,
		12.962333, 20.432798, 19.940525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.743196, 19.866488, 20.567289>,  <12.331155, 20.210274, 20.145702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.743196, 19.866488, 20.567289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.974224, 20.168762, 20.443775>,  <13.112841, 20.350128, 20.369667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.974224, 20.168762, 20.443775>,  <12.743196, 19.866488, 20.567289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.974224, 20.168762, 20.443775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303530, 0.152339, 0.940565,
		0.757814, -0.636967, -0.141387,
		0.577570, 0.755689, -0.308783,
		13.147495, 20.395470, 20.351141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361900, 19.830181, 20.998789>,  <12.743196, 19.866488, 20.567289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.361900, 19.830181, 20.998789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.393781, 20.169617, 20.789581>,  <13.412909, 20.373278, 20.664057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.393781, 20.169617, 20.789581>,  <13.361900, 19.830181, 20.998789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.393781, 20.169617, 20.789581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471406, 0.430220, 0.769862,
		0.878308, -0.307912, -0.365740,
		0.079701, 0.848587, -0.523017,
		13.417691, 20.424192, 20.632675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055373, 20.006433, 21.023195>,  <13.361900, 19.830181, 20.998789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.055373, 20.006433, 21.023195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.798454, 20.311850, 20.996473>,  <13.644303, 20.495098, 20.980440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.798454, 20.311850, 20.996473>,  <14.055373, 20.006433, 21.023195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.798454, 20.311850, 20.996473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362862, 0.379701, 0.850975,
		0.675119, 0.522337, -0.520940,
		-0.642297, 0.763538, -0.066807,
		13.605765, 20.540911, 20.976431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494638, 20.644091, 21.099709>,  <14.055373, 20.006433, 21.023195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494638, 20.644091, 21.099709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.111441, 20.731174, 21.174381>,  <13.881522, 20.783424, 21.219185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.111441, 20.731174, 21.174381>,  <14.494638, 20.644091, 21.099709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.111441, 20.731174, 21.174381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274232, 0.504915, 0.818448,
		0.083924, 0.835263, -0.543408,
		-0.957995, 0.217708, 0.186681,
		13.824042, 20.796486, 21.230385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479074, 21.282269, 21.437965>,  <14.494638, 20.644091, 21.099709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.479074, 21.282269, 21.437965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.123954, 21.114328, 21.513371>,  <13.910882, 21.013563, 21.558613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.123954, 21.114328, 21.513371>,  <14.479074, 21.282269, 21.437965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.123954, 21.114328, 21.513371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033278, 0.349968, 0.936170,
		-0.459026, 0.837405, -0.296729,
		-0.887799, -0.419852, 0.188512,
		13.857614, 20.988373, 21.569923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.135031, 21.815168, 21.856480>,  <14.479074, 21.282269, 21.437965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.135031, 21.815168, 21.856480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.946721, 21.470699, 21.933163>,  <13.833735, 21.264017, 21.979174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.946721, 21.470699, 21.933163>,  <14.135031, 21.815168, 21.856480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.946721, 21.470699, 21.933163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054993, 0.188229, 0.980584,
		-0.880538, 0.472176, -0.041254,
		-0.470774, -0.861173, 0.191709,
		13.805489, 21.212347, 21.990675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.482342, 21.997124, 22.272959>,  <14.135031, 21.815168, 21.856480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.482342, 21.997124, 22.272959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.562874, 21.610842, 22.338535>,  <13.611193, 21.379072, 22.377882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.562874, 21.610842, 22.338535>,  <13.482342, 21.997124, 22.272959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.562874, 21.610842, 22.338535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117853, 0.142271, 0.982787,
		-0.972408, -0.217185, -0.085168,
		0.201330, -0.965707, 0.163942,
		13.623273, 21.321129, 22.387718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.129568, 21.864021, 22.905569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.382615, 21.555027, 22.883434>,  <13.534444, 21.369631, 22.870153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.382615, 21.555027, 22.883434>,  <13.129568, 21.864021, 22.905569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.382615, 21.555027, 22.883434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019767, -0.055322, 0.998273,
		-0.774212, -0.632619, -0.019728,
		0.632618, -0.772485, -0.055336,
		13.572400, 21.323282, 22.866833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.977696, 21.489477, 23.432905>,  <13.129568, 21.864021, 22.905569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.977696, 21.489477, 23.432905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.346957, 21.369265, 23.337013>,  <13.568514, 21.297136, 23.279478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.346957, 21.369265, 23.337013>,  <12.977696, 21.489477, 23.432905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.346957, 21.369265, 23.337013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254140, 0.009195, 0.967124,
		-0.288450, -0.953727, 0.084866,
		0.923152, -0.300534, -0.239728,
		13.623903, 21.279104, 23.265095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.094695, 20.992176, 23.919613>,  <12.977696, 21.489477, 23.432905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.094695, 20.992176, 23.919613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.456362, 21.090693, 23.779999>,  <13.673362, 21.149803, 23.696230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.456362, 21.090693, 23.779999>,  <13.094695, 20.992176, 23.919613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.456362, 21.090693, 23.779999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389351, -0.138968, 0.910546,
		0.175756, -0.959181, -0.221545,
		0.904166, 0.246293, -0.349034,
		13.727612, 21.164579, 23.675289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.499934, 20.551210, 24.188505>,  <13.094695, 20.992176, 23.919613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.499934, 20.551210, 24.188505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.748672, 20.849596, 24.093132>,  <13.897914, 21.028627, 24.035908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.748672, 20.849596, 24.093132>,  <13.499934, 20.551210, 24.188505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.748672, 20.849596, 24.093132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312950, 0.042394, 0.948823,
		0.717894, -0.664638, -0.207086,
		0.621844, 0.745963, -0.238432,
		13.935225, 21.073385, 24.021603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133276, 20.397919, 24.604145>,  <13.499934, 20.551210, 24.188505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133276, 20.397919, 24.604145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.153543, 20.782467, 24.495924>,  <14.165703, 21.013195, 24.430992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.153543, 20.782467, 24.495924>,  <14.133276, 20.397919, 24.604145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.153543, 20.782467, 24.495924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462388, 0.217536, 0.859579,
		0.885229, -0.168652, -0.433504,
		0.050667, 0.961371, -0.270552,
		14.168742, 21.070879, 24.414759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.833681, 20.639759, 24.867413>,  <14.133276, 20.397919, 24.604145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.833681, 20.639759, 24.867413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.590291, 20.951262, 24.806362>,  <14.444257, 21.138163, 24.769732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.590291, 20.951262, 24.806362>,  <14.833681, 20.639759, 24.867413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.590291, 20.951262, 24.806362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231707, 0.358293, 0.904399,
		0.758993, 0.514940, -0.398456,
		-0.608475, 0.778757, -0.152626,
		14.407748, 21.184889, 24.760574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.122003, 21.331055, 25.092899>,  <14.833681, 20.639759, 24.867413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.122003, 21.331055, 25.092899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.729786, 21.407713, 25.075895>,  <14.494455, 21.453709, 25.065693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.729786, 21.407713, 25.075895>,  <15.122003, 21.331055, 25.092899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.729786, 21.407713, 25.075895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051060, 0.458091, 0.887438,
		0.189549, 0.868000, -0.458963,
		-0.980543, 0.191647, -0.042510,
		14.435623, 21.465208, 25.063143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080935, 22.002062, 25.263330>,  <15.122003, 21.331055, 25.092899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.080935, 22.002062, 25.263330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.714252, 21.852842, 25.320576>,  <14.494242, 21.763309, 25.354923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.714252, 21.852842, 25.320576>,  <15.080935, 22.002062, 25.263330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.714252, 21.852842, 25.320576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024384, 0.409739, 0.911877,
		-0.398814, 0.832435, -0.384707,
		-0.916708, -0.373050, 0.143112,
		14.439240, 21.740927, 25.363510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.655746, 22.565073, 25.420097>,  <15.080935, 22.002062, 25.263330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.655746, 22.565073, 25.420097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.484740, 22.243322, 25.585125>,  <14.382137, 22.050272, 25.684141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.484740, 22.243322, 25.585125>,  <14.655746, 22.565073, 25.420097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484740, 22.243322, 25.585125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120202, 0.401744, 0.907829,
		-0.895982, 0.437700, -0.075063,
		-0.427513, -0.804376, 0.412568,
		14.356486, 22.002010, 25.708895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.289558, 22.888716, 25.861687>,  <14.655746, 22.565073, 25.420097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.289558, 22.888716, 25.861687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.288986, 22.506599, 25.979954>,  <14.288643, 22.277330, 26.050915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.288986, 22.506599, 25.979954>,  <14.289558, 22.888716, 25.861687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.288986, 22.506599, 25.979954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026261, 0.295530, 0.954973,
		-0.999654, 0.009131, 0.024664,
		-0.001431, -0.955290, 0.295667,
		14.288557, 22.220013, 26.068653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.783971, 22.849174, 26.392918>,  <14.289558, 22.888716, 25.861687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.783971, 22.849174, 26.392918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.046597, 22.551199, 26.440237>,  <14.204172, 22.372414, 26.468628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.046597, 22.551199, 26.440237>,  <13.783971, 22.849174, 26.392918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.046597, 22.551199, 26.440237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253612, 0.365733, 0.895500,
		-0.710356, -0.557951, 0.429052,
		0.656563, -0.744936, 0.118298,
		14.243566, 22.327719, 26.475727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.735170, 22.677925, 27.059992>,  <13.783971, 22.849174, 26.392918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.735170, 22.677925, 27.059992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.078232, 22.493284, 26.969347>,  <14.284069, 22.382500, 26.914961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.078232, 22.493284, 26.969347>,  <13.735170, 22.677925, 27.059992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078232, 22.493284, 26.969347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363808, 0.233237, 0.901801,
		-0.363419, -0.855877, 0.367971,
		0.857654, -0.461602, -0.226612,
		14.335528, 22.354803, 26.901363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.895567, 22.272255, 27.647263>,  <13.735170, 22.677925, 27.059992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.895567, 22.272255, 27.647263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.245541, 22.319786, 27.459488>,  <14.455525, 22.348305, 27.346823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.245541, 22.319786, 27.459488>,  <13.895567, 22.272255, 27.647263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.245541, 22.319786, 27.459488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429025, 0.259338, 0.865264,
		0.224564, -0.958448, 0.175921,
		0.874933, 0.118832, -0.469436,
		14.508021, 22.355434, 27.318657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393447, 21.898046, 28.074514>,  <13.895567, 22.272255, 27.647263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.393447, 21.898046, 28.074514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.578092, 22.175303, 27.853075>,  <14.688879, 22.341656, 27.720211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.578092, 22.175303, 27.853075>,  <14.393447, 21.898046, 28.074514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578092, 22.175303, 27.853075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426695, 0.373637, 0.823606,
		0.777719, -0.616405, -0.123283,
		0.461612, 0.693138, -0.553601,
		14.716576, 22.383244, 27.686995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.031593, 21.869453, 28.300081>,  <14.393447, 21.898046, 28.074514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.031593, 21.869453, 28.300081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.013475, 22.224813, 28.117348>,  <15.002604, 22.438028, 28.007708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.013475, 22.224813, 28.117348>,  <15.031593, 21.869453, 28.300081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013475, 22.224813, 28.117348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570424, 0.398420, 0.718246,
		0.820101, -0.228056, -0.524810,
		-0.045295, 0.888399, -0.456833,
		14.999887, 22.491333, 27.980297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729262, 22.059591, 28.144302>,  <15.031593, 21.869453, 28.300081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729262, 22.059591, 28.144302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.511098, 22.394781, 28.137106>,  <15.380199, 22.595896, 28.132788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.511098, 22.394781, 28.137106>,  <15.729262, 22.059591, 28.144302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.511098, 22.394781, 28.137106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606931, 0.409654, 0.681042,
		0.578067, 0.360528, -0.732023,
		-0.545411, 0.837976, -0.017992,
		15.347475, 22.646173, 28.131708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192175, 22.689369, 28.293682>,  <15.729262, 22.059591, 28.144302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.192175, 22.689369, 28.293682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.828869, 22.847580, 28.348251>,  <15.610885, 22.942507, 28.380993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.828869, 22.847580, 28.348251>,  <16.192175, 22.689369, 28.293682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828869, 22.847580, 28.348251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302604, 0.395827, 0.867036,
		0.288933, 0.828783, -0.479204,
		-0.908267, 0.395525, 0.136425,
		15.556389, 22.966238, 28.389179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277163, 23.336224, 28.586926>,  <16.192175, 22.689369, 28.293682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.277163, 23.336224, 28.586926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.900216, 23.257648, 28.695263>,  <15.674047, 23.210505, 28.760265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.900216, 23.257648, 28.695263>,  <16.277163, 23.336224, 28.586926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.900216, 23.257648, 28.695263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199637, 0.319477, 0.926326,
		-0.268492, 0.927010, -0.261849,
		-0.942368, -0.196437, 0.270842,
		15.617506, 23.198717, 28.776516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075516, 23.971239, 28.886263>,  <16.277163, 23.336224, 28.586926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.075516, 23.971239, 28.886263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.835577, 23.679127, 29.017029>,  <15.691614, 23.503859, 29.095490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.835577, 23.679127, 29.017029>,  <16.075516, 23.971239, 28.886263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835577, 23.679127, 29.017029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088659, 0.345404, 0.934257,
		-0.795187, 0.589395, -0.142444,
		-0.599847, -0.730280, 0.326916,
		15.655622, 23.460043, 29.115103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.569608, 24.427124, 29.331251>,  <16.075516, 23.971239, 28.886263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.569608, 24.427124, 29.331251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.583002, 24.038971, 29.426949>,  <15.591039, 23.806080, 29.484367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.583002, 24.038971, 29.426949>,  <15.569608, 24.427124, 29.331251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.583002, 24.038971, 29.426949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091235, 0.241345, 0.966141,
		-0.995266, -0.010524, 0.096614,
		0.033485, -0.970382, 0.239242,
		15.593047, 23.747856, 29.498722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.226365, 24.357307, 29.973562>,  <15.569608, 24.427124, 29.331251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.226365, 24.357307, 29.973562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.422828, 24.009016, 29.983330>,  <15.540705, 23.800041, 29.989189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.422828, 24.009016, 29.983330>,  <15.226365, 24.357307, 29.973562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.422828, 24.009016, 29.983330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160280, 0.117891, 0.980006,
		-0.856199, -0.477422, 0.197463,
		0.491156, -0.870729, 0.024417,
		15.570174, 23.747797, 29.990654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.058139, 24.026800, 30.679745>,  <15.226365, 24.357307, 29.973562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.058139, 24.026800, 30.679745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.367647, 23.816923, 30.537773>,  <15.553352, 23.690996, 30.452591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.367647, 23.816923, 30.537773>,  <15.058139, 24.026800, 30.679745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.367647, 23.816923, 30.537773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301233, -0.188120, 0.934810,
		-0.557259, -0.830245, 0.012493,
		0.773771, -0.524694, -0.354929,
		15.599778, 23.659515, 30.431295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023694, 23.237198, 31.005930>,  <15.058139, 24.026800, 30.679745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.023694, 23.237198, 31.005930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.379965, 23.382807, 30.896984>,  <15.593727, 23.470173, 30.831617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.379965, 23.382807, 30.896984>,  <15.023694, 23.237198, 31.005930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.379965, 23.382807, 30.896984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333241, -0.115210, 0.935776,
		0.309265, -0.924237, -0.223922,
		0.890677, 0.364023, -0.272363,
		15.647168, 23.492014, 30.815275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.474627, 23.087488, 31.632229>,  <15.023694, 23.237198, 31.005930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.474627, 23.087488, 31.632229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.333407, 22.831470, 31.905199>,  <14.248675, 22.677860, 32.068981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.333407, 22.831470, 31.905199>,  <14.474627, 23.087488, 31.632229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.333407, 22.831470, 31.905199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237509, -0.644189, -0.727056,
		0.904956, -0.418768, 0.075415,
		-0.353050, -0.640042, 0.682423,
		14.227492, 22.639458, 32.109924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.696587, 22.379522, 31.584957>,  <14.474627, 23.087488, 31.632229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.696587, 22.379522, 31.584957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.328324, 22.376057, 31.741070>,  <14.107368, 22.373978, 31.834738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.328324, 22.376057, 31.741070>,  <14.696587, 22.379522, 31.584957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.328324, 22.376057, 31.741070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303955, -0.611433, -0.730590,
		0.244961, -0.791249, 0.560285,
		-0.920655, -0.008664, 0.390281,
		14.052128, 22.373457, 31.858154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495260, 21.647840, 31.518566>,  <14.696587, 22.379522, 31.584957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495260, 21.647840, 31.518566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.146466, 21.833586, 31.580545>,  <13.937190, 21.945034, 31.617733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.146466, 21.833586, 31.580545>,  <14.495260, 21.647840, 31.518566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.146466, 21.833586, 31.580545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462052, -0.676154, -0.573867,
		-0.161715, -0.571998, 0.804156,
		-0.871985, 0.464364, 0.154949,
		13.884871, 21.972895, 31.627029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.022212, 21.190128, 31.828712>,  <14.495260, 21.647840, 31.518566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.022212, 21.190128, 31.828712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.820555, 21.467772, 31.623167>,  <13.699560, 21.634357, 31.499840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.820555, 21.467772, 31.623167>,  <14.022212, 21.190128, 31.828712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.820555, 21.467772, 31.623167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468972, -0.719670, -0.511997,
		-0.725193, -0.017132, 0.688333,
		-0.504144, 0.694105, -0.513865,
		13.669312, 21.676004, 31.469007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.480660, 20.824043, 31.541952>,  <14.022212, 21.190128, 31.828712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.480660, 20.824043, 31.541952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.432694, 21.164236, 31.337091>,  <13.403915, 21.368351, 31.214174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.432694, 21.164236, 31.337091>,  <13.480660, 20.824043, 31.541952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.432694, 21.164236, 31.337091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472176, -0.502651, -0.724149,
		-0.873310, 0.154990, 0.461853,
		-0.119915, 0.850482, -0.512152,
		13.396720, 21.419380, 31.183445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.737831, 20.864655, 31.215702>,  <13.480660, 20.824043, 31.541952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.737831, 20.864655, 31.215702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.947880, 21.120747, 30.991432>,  <13.073909, 21.274403, 30.856871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.947880, 21.120747, 30.991432>,  <12.737831, 20.864655, 31.215702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.947880, 21.120747, 30.991432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552440, -0.244696, -0.796827,
		-0.647347, 0.728168, 0.225194,
		0.525120, 0.640230, -0.560673,
		13.105416, 21.312815, 30.823231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.330956, 21.184912, 30.775463>,  <12.737831, 20.864655, 31.215702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.330956, 21.184912, 30.775463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.675617, 21.240746, 30.580294>,  <12.882414, 21.274246, 30.463192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.675617, 21.240746, 30.580294>,  <12.330956, 21.184912, 30.775463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.675617, 21.240746, 30.580294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443159, -0.261570, -0.857433,
		-0.247309, 0.955038, -0.163526,
		0.861655, 0.139582, -0.487922,
		12.934114, 21.282619, 30.433916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.120224, 21.397188, 30.170092>,  <12.330956, 21.184912, 30.775463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.120224, 21.397188, 30.170092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.487036, 21.259008, 30.090368>,  <12.707123, 21.176102, 30.042534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.487036, 21.259008, 30.090368>,  <12.120224, 21.397188, 30.170092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.487036, 21.259008, 30.090368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282776, -0.210774, -0.935741,
		0.281241, 0.914461, -0.290970,
		0.917028, -0.345448, -0.199309,
		12.762144, 21.155375, 30.030575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.288379, 21.648592, 29.541773>,  <12.120224, 21.397188, 30.170092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.288379, 21.648592, 29.541773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.567828, 21.363979, 29.571829>,  <12.735497, 21.193211, 29.589863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.567828, 21.363979, 29.571829>,  <12.288379, 21.648592, 29.541773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.567828, 21.363979, 29.571829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024889, -0.129124, -0.991316,
		0.715057, 0.690685, -0.107919,
		0.698622, -0.711534, 0.075140,
		12.777415, 21.150518, 29.594372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.800223, 21.734936, 29.003613>,  <12.288379, 21.648592, 29.541773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.800223, 21.734936, 29.003613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.821275, 21.350828, 29.113239>,  <12.833905, 21.120363, 29.179016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.821275, 21.350828, 29.113239>,  <12.800223, 21.734936, 29.003613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.821275, 21.350828, 29.113239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015762, -0.275214, -0.961254,
		0.998490, 0.046270, -0.029620,
		0.052629, -0.960269, 0.274069,
		12.837064, 21.062748, 29.195459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.433284, 21.516212, 28.671070>,  <12.800223, 21.734936, 29.003613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.433284, 21.516212, 28.671070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.189363, 21.210337, 28.754391>,  <13.043012, 21.026812, 28.804384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.189363, 21.210337, 28.754391>,  <13.433284, 21.516212, 28.671070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.189363, 21.210337, 28.754391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007887, -0.256958, -0.966390,
		0.792515, -0.590949, 0.150662,
		-0.609801, -0.764691, 0.208304,
		13.006423, 20.980930, 28.816881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.673017, 21.046684, 28.215776>,  <13.433284, 21.516212, 28.671070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.673017, 21.046684, 28.215776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.314907, 20.904636, 28.323385>,  <13.100041, 20.819408, 28.387951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.314907, 20.904636, 28.323385>,  <13.673017, 21.046684, 28.215776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.314907, 20.904636, 28.323385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152106, -0.323923, -0.933776,
		0.418745, -0.876906, 0.235985,
		-0.895275, -0.355120, 0.269024,
		13.046325, 20.798101, 28.404093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.560780, 20.260252, 27.840332>,  <13.673017, 21.046684, 28.215776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.560780, 20.260252, 27.840332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.205641, 20.406218, 27.952448>,  <12.992558, 20.493797, 28.019718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.205641, 20.406218, 27.952448>,  <13.560780, 20.260252, 27.840332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.205641, 20.406218, 27.952448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306521, -0.014734, -0.951750,
		-0.343178, -0.930924, 0.124936,
		-0.887848, 0.364916, 0.280291,
		12.939286, 20.515692, 28.036535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.140495, 19.885454, 27.456316>,  <13.560780, 20.260252, 27.840332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.140495, 19.885454, 27.456316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.905581, 20.189684, 27.567039>,  <12.764632, 20.372221, 27.633474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.905581, 20.189684, 27.567039>,  <13.140495, 19.885454, 27.456316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905581, 20.189684, 27.567039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461104, -0.033327, -0.886720,
		-0.665190, -0.648396, 0.370276,
		-0.587286, 0.760573, 0.276810,
		12.729395, 20.417856, 27.650082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.435905, 19.720325, 27.224628>,  <13.140495, 19.885454, 27.456316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.435905, 19.720325, 27.224628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.420243, 20.117056, 27.273205>,  <12.410847, 20.355095, 27.302351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.420243, 20.117056, 27.273205>,  <12.435905, 19.720325, 27.224628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.420243, 20.117056, 27.273205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504138, 0.085324, -0.859398,
		-0.862735, -0.094870, 0.496677,
		-0.039153, 0.991826, 0.121440,
		12.408497, 20.414604, 27.309637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.786751, 19.849945, 27.138037>,  <12.435905, 19.720325, 27.224628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.786751, 19.849945, 27.138037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.943148, 20.210970, 27.065920>,  <12.036985, 20.427586, 27.022650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.943148, 20.210970, 27.065920>,  <11.786751, 19.849945, 27.138037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.943148, 20.210970, 27.065920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546392, 0.069981, -0.834601,
		-0.740663, 0.424832, 0.520515,
		0.390991, 0.902563, -0.180292,
		12.060445, 20.481739, 27.011831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.211453, 20.355444, 27.002518>,  <11.786751, 19.849945, 27.138037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.211453, 20.355444, 27.002518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.514495, 20.541014, 26.818861>,  <11.696320, 20.652355, 26.708668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.514495, 20.541014, 26.818861>,  <11.211453, 20.355444, 27.002518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.514495, 20.541014, 26.818861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588356, 0.180801, -0.788130,
		-0.282620, 0.867228, 0.409929,
		0.757604, 0.463925, -0.459141,
		11.741776, 20.680191, 26.681118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.028415, 21.064840, 26.793320>,  <11.211453, 20.355444, 27.002518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.028415, 21.064840, 26.793320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.318130, 20.945131, 26.544855>,  <11.491959, 20.873306, 26.395777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.318130, 20.945131, 26.544855>,  <11.028415, 21.064840, 26.793320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.318130, 20.945131, 26.544855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606237, 0.152751, -0.780477,
		0.328460, 0.941861, -0.070796,
		0.724286, -0.299275, -0.621163,
		11.535416, 20.855349, 26.358505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.794950, 21.329365, 26.243841>,  <11.028415, 21.064840, 26.793320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.794950, 21.329365, 26.243841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.116467, 21.133305, 26.108978>,  <11.309376, 21.015669, 26.028061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.116467, 21.133305, 26.108978>,  <10.794950, 21.329365, 26.243841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.116467, 21.133305, 26.108978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397096, -0.020038, -0.917558,
		0.442985, 0.871408, -0.210743,
		0.803790, -0.490150, -0.337156,
		11.357604, 20.986259, 26.007832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.842489, 21.387432, 25.440437>,  <10.794950, 21.329365, 26.243841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.842489, 21.387432, 25.440437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.084723, 21.074205, 25.497114>,  <11.230062, 20.886271, 25.531120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.084723, 21.074205, 25.497114>,  <10.842489, 21.387432, 25.440437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.084723, 21.074205, 25.497114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221300, -0.336748, -0.915220,
		0.764391, 0.522886, -0.377222,
		0.605584, -0.783065, 0.141693,
		11.266397, 20.839285, 25.539621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.395736, 21.338417, 24.840641>,  <10.842489, 21.387432, 25.440437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.395736, 21.338417, 24.840641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.311455, 20.990782, 25.019657>,  <11.260886, 20.782200, 25.127068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.311455, 20.990782, 25.019657>,  <11.395736, 21.338417, 24.840641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.311455, 20.990782, 25.019657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236619, -0.398861, -0.885958,
		0.948481, -0.292569, -0.121602,
		-0.210701, -0.869088, 0.447540,
		11.248244, 20.730055, 25.153919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.190441, 18.106825, 3.071648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.564859, 18.152367, 2.938470>,  <18.789511, 18.179691, 2.858564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.564859, 18.152367, 2.938470>,  <18.190441, 18.106825, 3.071648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.564859, 18.152367, 2.938470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060157, -0.984055, -0.167382,
		-0.346692, 0.136648, -0.927972,
		0.936048, 0.113854, -0.332944,
		18.845675, 18.186523, 2.838587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622452, 18.024519, 3.602163>,  <18.190441, 18.106825, 3.071648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.622452, 18.024519, 3.602163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.259979, 17.986143, 3.766908>,  <17.042496, 17.963118, 3.865754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.259979, 17.986143, 3.766908>,  <17.622452, 18.024519, 3.602163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259979, 17.986143, 3.766908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329833, 0.449175, 0.830333,
		-0.264659, 0.888278, -0.375390,
		-0.906182, -0.095938, 0.411862,
		16.988125, 17.957361, 3.890466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445871, 18.736858, 4.006774>,  <17.622452, 18.024519, 3.602163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445871, 18.736858, 4.006774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.257107, 18.411737, 4.143391>,  <17.143848, 18.216665, 4.225361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.257107, 18.411737, 4.143391>,  <17.445871, 18.736858, 4.006774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.257107, 18.411737, 4.143391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338473, 0.190681, 0.921454,
		-0.814086, 0.550446, 0.185128,
		-0.471910, -0.812804, 0.341542,
		17.115534, 18.167896, 4.245853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987360, 18.632072, 4.663247>,  <17.445871, 18.736858, 4.006774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.987360, 18.632072, 4.663247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.250923, 18.815084, 4.902079>,  <17.409061, 18.924892, 5.045379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.250923, 18.815084, 4.902079>,  <16.987360, 18.632072, 4.663247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250923, 18.815084, 4.902079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736381, 0.554380, 0.387822,
		-0.153569, -0.695218, 0.702202,
		0.658908, 0.457530, 0.597081,
		17.448595, 18.952343, 5.081203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.820854, 18.658014, 5.396276>,  <16.987360, 18.632072, 4.663247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.820854, 18.658014, 5.396276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.025139, 18.987520, 5.297820>,  <17.147709, 19.185225, 5.238746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.025139, 18.987520, 5.297820>,  <16.820854, 18.658014, 5.396276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025139, 18.987520, 5.297820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735320, 0.566863, 0.371443,
		0.445511, -0.008706, 0.895234,
		0.510709, 0.823766, -0.246142,
		17.178352, 19.234650, 5.223977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.013363, 18.948673, 5.998429>,  <16.820854, 18.658014, 5.396276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.013363, 18.948673, 5.998429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.937794, 19.191294, 5.689520>,  <16.892452, 19.336866, 5.504175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.937794, 19.191294, 5.689520>,  <17.013363, 18.948673, 5.998429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.937794, 19.191294, 5.689520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788161, 0.375449, 0.487688,
		0.585757, 0.700810, 0.407129,
		-0.188921, 0.606550, -0.772273,
		16.881117, 19.373259, 5.457839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.157974, 19.715292, 6.152212>,  <17.013363, 18.948673, 5.998429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.157974, 19.715292, 6.152212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.846743, 19.596109, 5.931011>,  <16.660004, 19.524599, 5.798291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.846743, 19.596109, 5.931011>,  <17.157974, 19.715292, 6.152212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.846743, 19.596109, 5.931011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619444, 0.217771, 0.754232,
		-0.104302, 0.929407, -0.354012,
		-0.778081, -0.297959, -0.553001,
		16.613317, 19.506721, 5.765111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.706045, 19.982540, 6.598469>,  <17.157974, 19.715292, 6.152212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.706045, 19.982540, 6.598469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.095564, 20.000608, 6.509311>,  <18.329275, 20.011450, 6.455817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.095564, 20.000608, 6.509311>,  <17.706045, 19.982540, 6.598469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.095564, 20.000608, 6.509311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220337, -0.430165, 0.875448,
		-0.056334, -0.901620, -0.428846,
		0.973796, 0.045173, -0.222894,
		18.387703, 20.014160, 6.442443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022799, 19.286713, 6.656599>,  <17.706045, 19.982540, 6.598469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022799, 19.286713, 6.656599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.316643, 19.554523, 6.700562>,  <18.492949, 19.715210, 6.726940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.316643, 19.554523, 6.700562>,  <18.022799, 19.286713, 6.656599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316643, 19.554523, 6.700562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273041, -0.440014, 0.855474,
		0.621125, -0.598431, -0.506048,
		0.734611, 0.669528, 0.109907,
		18.537025, 19.755383, 6.733534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.680906, 18.922400, 6.605115>,  <18.022799, 19.286713, 6.656599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.680906, 18.922400, 6.605115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.722298, 19.203829, 6.886334>,  <18.747131, 19.372686, 7.055066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.722298, 19.203829, 6.886334>,  <18.680906, 18.922400, 6.605115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.722298, 19.203829, 6.886334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229433, -0.704665, 0.671422,
		0.967808, 0.091825, -0.234340,
		0.103477, 0.703574, 0.703048,
		18.753342, 19.414902, 7.097249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.284605, 18.803061, 6.951369>,  <18.680906, 18.922400, 6.605115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.284605, 18.803061, 6.951369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.063017, 18.965576, 7.242035>,  <18.930063, 19.063086, 7.416435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.063017, 18.965576, 7.242035>,  <19.284605, 18.803061, 6.951369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.063017, 18.965576, 7.242035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380903, -0.652436, 0.655165,
		0.740289, 0.639732, 0.206675,
		-0.553972, 0.406288, 0.726667,
		18.896826, 19.087463, 7.460035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.716990, 18.816769, 7.458662>,  <19.284605, 18.803061, 6.951369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.716990, 18.816769, 7.458662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.372835, 18.848566, 7.660025>,  <19.166342, 18.867643, 7.780842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.372835, 18.848566, 7.660025>,  <19.716990, 18.816769, 7.458662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.372835, 18.848566, 7.660025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302769, -0.714836, 0.630350,
		0.409961, 0.694760, 0.590966,
		-0.860385, 0.079493, 0.503406,
		19.114719, 18.872414, 7.811047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.895844, 18.872934, 8.203623>,  <19.716990, 18.816769, 7.458662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.895844, 18.872934, 8.203623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.506933, 18.780407, 8.189936>,  <19.273586, 18.724890, 8.181724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.506933, 18.780407, 8.189936>,  <19.895844, 18.872934, 8.203623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.506933, 18.780407, 8.189936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114279, -0.597718, 0.793519,
		-0.204010, 0.767609, 0.607582,
		-0.972276, -0.231320, -0.034219,
		19.215250, 18.711010, 8.179670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468723, 18.985859, 8.926978>,  <19.895844, 18.872934, 8.203623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.468723, 18.985859, 8.926978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.235188, 18.721550, 8.738292>,  <19.095066, 18.562965, 8.625080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.235188, 18.721550, 8.738292>,  <19.468723, 18.985859, 8.926978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235188, 18.721550, 8.738292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021572, -0.568191, 0.822614,
		-0.811584, 0.490449, 0.317477,
		-0.583838, -0.660771, -0.471715,
		19.060036, 18.523319, 8.596777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.895149, 18.748915, 9.432591>,  <19.468723, 18.985859, 8.926978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.895149, 18.748915, 9.432591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.802679, 18.444756, 9.189822>,  <18.747196, 18.262260, 9.044161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.802679, 18.444756, 9.189822>,  <18.895149, 18.748915, 9.432591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.802679, 18.444756, 9.189822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135517, -0.642907, 0.753861,
		-0.963427, 0.092028, 0.251672,
		-0.231178, -0.760396, -0.606922,
		18.733326, 18.216637, 9.007746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.345806, 18.361988, 9.828787>,  <18.895149, 18.748915, 9.432591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.345806, 18.361988, 9.828787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.517668, 18.122082, 9.558772>,  <18.620785, 17.978138, 9.396763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.517668, 18.122082, 9.558772>,  <18.345806, 18.361988, 9.828787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.517668, 18.122082, 9.558772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120644, -0.702725, 0.701158,
		-0.894898, -0.382695, -0.229571,
		0.429654, -0.599768, -0.675037,
		18.646564, 17.942152, 9.356261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.963686, 17.742899, 9.743357>,  <18.345806, 18.361988, 9.828787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.963686, 17.742899, 9.743357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.343851, 17.658741, 9.651753>,  <18.571951, 17.608246, 9.596791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.343851, 17.658741, 9.651753>,  <17.963686, 17.742899, 9.743357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.343851, 17.658741, 9.651753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017297, -0.699492, 0.714431,
		-0.310502, -0.682967, -0.661169,
		0.950415, -0.210396, -0.229007,
		18.628975, 17.595621, 9.583051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075541, 16.976604, 9.914053>,  <17.963686, 17.742899, 9.743357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075541, 16.976604, 9.914053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.439476, 17.141300, 9.893398>,  <18.657837, 17.240118, 9.881005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.439476, 17.141300, 9.893398>,  <18.075541, 16.976604, 9.914053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.439476, 17.141300, 9.893398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308505, -0.587940, 0.747764,
		0.277525, -0.696274, -0.661953,
		0.909837, 0.411739, -0.051636,
		18.712427, 17.264822, 9.877908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.468641, 16.406973, 9.752378>,  <18.075541, 16.976604, 9.914053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.468641, 16.406973, 9.752378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.656965, 16.708044, 9.936471>,  <18.769958, 16.888687, 10.046926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.656965, 16.708044, 9.936471>,  <18.468641, 16.406973, 9.752378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.656965, 16.708044, 9.936471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323284, -0.632567, 0.703809,
		0.820870, -0.182573, -0.541146,
		0.470808, 0.752679, 0.460232,
		18.798208, 16.933847, 10.074541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.108583, 16.130308, 9.938000>,  <18.468641, 16.406973, 9.752378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.108583, 16.130308, 9.938000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.088820, 16.469671, 10.148814>,  <19.076962, 16.673288, 10.275303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.088820, 16.469671, 10.148814>,  <19.108583, 16.130308, 9.938000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.088820, 16.469671, 10.148814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417608, -0.461792, 0.782529,
		0.907283, 0.258758, -0.331485,
		-0.049408, 0.848406, 0.527036,
		19.073997, 16.724194, 10.306925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.683342, 16.097275, 10.363154>,  <19.108583, 16.130308, 9.938000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.683342, 16.097275, 10.363154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.434620, 16.357693, 10.537280>,  <19.285387, 16.513943, 10.641755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.434620, 16.357693, 10.537280>,  <19.683342, 16.097275, 10.363154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.434620, 16.357693, 10.537280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103499, -0.482649, 0.869677,
		0.776303, 0.585824, 0.232731,
		-0.621805, 0.651045, 0.435314,
		19.248079, 16.553007, 10.667874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971033, 16.144999, 11.010280>,  <19.683342, 16.097275, 10.363154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971033, 16.144999, 11.010280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.605322, 16.298508, 11.062144>,  <19.385895, 16.390614, 11.093263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.605322, 16.298508, 11.062144>,  <19.971033, 16.144999, 11.010280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.605322, 16.298508, 11.062144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051148, -0.426892, 0.902855,
		0.401841, 0.818830, 0.409928,
		-0.914280, 0.383771, 0.129662,
		19.331038, 16.413639, 11.101043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015842, 16.476374, 11.676274>,  <19.971033, 16.144999, 11.010280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015842, 16.476374, 11.676274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.622358, 16.436384, 11.616512>,  <19.386269, 16.412390, 11.580655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.622358, 16.436384, 11.616512>,  <20.015842, 16.476374, 11.676274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.622358, 16.436384, 11.616512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104034, -0.361193, 0.926670,
		-0.146607, 0.927117, 0.344908,
		-0.983709, -0.099974, -0.149405,
		19.327246, 16.406391, 11.571691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680151, 16.544640, 12.298405>,  <20.015842, 16.476374, 11.676274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.680151, 16.544640, 12.298405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.406675, 16.333410, 12.096928>,  <19.242590, 16.206673, 11.976042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.406675, 16.333410, 12.096928>,  <19.680151, 16.544640, 12.298405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406675, 16.333410, 12.096928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326676, -0.395729, 0.858301,
		-0.652571, 0.751357, 0.098048,
		-0.683691, -0.528073, -0.503691,
		19.201569, 16.174988, 11.945820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.039589, 16.691643, 12.676158>,  <19.680151, 16.544640, 12.298405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.039589, 16.691643, 12.676158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.032452, 16.357779, 12.455968>,  <19.028170, 16.157459, 12.323853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.032452, 16.357779, 12.455968>,  <19.039589, 16.691643, 12.676158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.032452, 16.357779, 12.455968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210422, -0.535098, 0.818164,
		-0.977448, 0.130429, -0.166084,
		-0.017841, -0.834660, -0.550476,
		19.027100, 16.107380, 12.290825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.450615, 16.315994, 13.016131>,  <19.039589, 16.691643, 12.676158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.450615, 16.315994, 13.016131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.674494, 16.072483, 12.791232>,  <18.808821, 15.926376, 12.656292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.674494, 16.072483, 12.791232>,  <18.450615, 16.315994, 13.016131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.674494, 16.072483, 12.791232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122124, -0.731660, 0.670641,
		-0.819649, -0.306692, -0.483855,
		0.559697, -0.608781, -0.562250,
		18.842403, 15.889849, 12.622558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.202568, 15.725163, 13.212222>,  <18.450615, 16.315994, 13.016131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.202568, 15.725163, 13.212222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.551182, 15.601945, 13.059627>,  <18.760349, 15.528013, 12.968069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.551182, 15.601945, 13.059627>,  <18.202568, 15.725163, 13.212222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.551182, 15.601945, 13.059627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069858, -0.848090, 0.525226,
		-0.485331, -0.431103, -0.760660,
		0.871535, -0.308047, -0.381488,
		18.812643, 15.509531, 12.945180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.018505, 15.226045, 12.806498>,  <18.202568, 15.725163, 13.212222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.018505, 15.226045, 12.806498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.405394, 15.186061, 12.899867>,  <18.637527, 15.162070, 12.955889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.405394, 15.186061, 12.899867>,  <18.018505, 15.226045, 12.806498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.405394, 15.186061, 12.899867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194587, -0.882369, 0.428440,
		0.163140, -0.459819, -0.872899,
		0.967223, -0.099959, 0.233425,
		18.695560, 15.156074, 12.969894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.308889, 14.595666, 12.626420>,  <18.018505, 15.226045, 12.806498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.308889, 14.595666, 12.626420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.591576, 14.699121, 12.889832>,  <18.761187, 14.761193, 13.047878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.591576, 14.699121, 12.889832>,  <18.308889, 14.595666, 12.626420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.591576, 14.699121, 12.889832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127887, -0.868754, 0.478447,
		0.695843, -0.422343, -0.580886,
		0.706716, 0.258636, 0.658529,
		18.803591, 14.776711, 13.087390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.834024, 14.092853, 12.682575>,  <18.308889, 14.595666, 12.626420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.834024, 14.092853, 12.682575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.843826, 14.283641, 13.034006>,  <18.849707, 14.398114, 13.244864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.843826, 14.283641, 13.034006>,  <18.834024, 14.092853, 12.682575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.843826, 14.283641, 13.034006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004832, -0.878775, 0.477212,
		0.999688, -0.015939, -0.019229,
		0.024504, 0.476970, 0.878578,
		18.851177, 14.426732, 13.297580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382074, 13.797144, 13.167534>,  <18.834024, 14.092853, 12.682575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382074, 13.797144, 13.167534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.056326, 13.935649, 13.353823>,  <18.860876, 14.018752, 13.465596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.056326, 13.935649, 13.353823>,  <19.382074, 13.797144, 13.167534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.056326, 13.935649, 13.353823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094648, -0.870999, 0.482082,
		0.572571, 0.348515, 0.742091,
		-0.814373, 0.346263, 0.465723,
		18.812014, 14.039528, 13.493540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171652, 13.215940, 13.566585>,  <19.382074, 13.797144, 13.167534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171652, 13.215940, 13.566585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.893581, 13.498194, 13.621446>,  <18.726738, 13.667545, 13.654362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.893581, 13.498194, 13.621446>,  <19.171652, 13.215940, 13.566585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.893581, 13.498194, 13.621446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481452, -0.598733, 0.640095,
		0.533790, 0.378948, 0.755955,
		-0.695178, 0.705632, 0.137152,
		18.685028, 13.709884, 13.662591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.724413, 13.178626, 13.070613>,  <19.171652, 13.215940, 13.566585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.724413, 13.178626, 13.070613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.652155, 13.390839, 13.401890>,  <19.608801, 13.518167, 13.600656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.652155, 13.390839, 13.401890>,  <19.724413, 13.178626, 13.070613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.652155, 13.390839, 13.401890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046297, -0.845699, 0.531649,
		0.982458, 0.057697, 0.177333,
		-0.180645, 0.530532, 0.828192,
		19.597961, 13.549998, 13.650348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.140438, 12.491853, 13.218411>,  <19.724413, 13.178626, 13.070613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.140438, 12.491853, 13.218411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.965857, 12.714546, 13.501128>,  <19.861107, 12.848162, 13.670758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.965857, 12.714546, 13.501128>,  <20.140438, 12.491853, 13.218411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.965857, 12.714546, 13.501128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851002, 0.000439, 0.525163,
		0.292065, 0.830691, -0.473972,
		-0.436456, 0.556733, 0.706792,
		19.834919, 12.881566, 13.713165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.663193, 13.003109, 13.498335>,  <20.140438, 12.491853, 13.218411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.663193, 13.003109, 13.498335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.385073, 12.922776, 13.774371>,  <20.218201, 12.874577, 13.939993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.385073, 12.922776, 13.774371>,  <20.663193, 13.003109, 13.498335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.385073, 12.922776, 13.774371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717961, -0.149998, 0.679729,
		-0.033000, 0.968074, 0.248484,
		-0.695300, -0.200833, 0.690090,
		20.176483, 12.862526, 13.981398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.024824, 13.216681, 14.133820>,  <20.663193, 13.003109, 13.498335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.024824, 13.216681, 14.133820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.726084, 12.957471, 14.193518>,  <20.546839, 12.801945, 14.229337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.726084, 12.957471, 14.193518>,  <21.024824, 13.216681, 14.133820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726084, 12.957471, 14.193518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527390, -0.440496, 0.726514,
		-0.405058, 0.621310, 0.670748,
		-0.746852, -0.648026, 0.149246,
		20.502028, 12.763063, 14.238292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.640110, 13.502178, 14.546283>,  <21.024824, 13.216681, 14.133820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.640110, 13.502178, 14.546283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.971748, 13.488037, 14.323088>,  <22.170731, 13.479552, 14.189171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.971748, 13.488037, 14.323088>,  <21.640110, 13.502178, 14.546283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.971748, 13.488037, 14.323088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154072, 0.973804, 0.167233,
		0.537459, -0.224623, 0.812824,
		0.829095, -0.035352, -0.557988,
		22.220476, 13.477431, 14.155691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.273510, 13.854279, 14.808944>,  <21.640110, 13.502178, 14.546283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.273510, 13.854279, 14.808944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.305189, 13.860689, 14.410252>,  <22.324198, 13.864535, 14.171037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.305189, 13.860689, 14.410252>,  <22.273510, 13.854279, 14.808944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.305189, 13.860689, 14.410252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053318, 0.998508, 0.011820,
		0.995432, 0.052207, 0.079935,
		0.079198, 0.016028, -0.996730,
		22.328949, 13.865498, 14.111233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.879007, 14.066960, 14.559031>,  <22.273510, 13.854279, 14.808944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.879007, 14.066960, 14.559031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.156330, 14.353223, 14.592883>,  <23.322723, 14.524981, 14.613194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.156330, 14.353223, 14.592883>,  <22.879007, 14.066960, 14.559031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.156330, 14.353223, 14.592883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647177, 0.669975, -0.363725,
		-0.317001, 0.197403, 0.927654,
		0.693306, 0.715657, 0.084628,
		23.364323, 14.567920, 14.618272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.485277, 14.629838, 14.932081>,  <22.879007, 14.066960, 14.559031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.485277, 14.629838, 14.932081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.808348, 14.772099, 14.743967>,  <23.002190, 14.857456, 14.631099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.808348, 14.772099, 14.743967>,  <22.485277, 14.629838, 14.932081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.808348, 14.772099, 14.743967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560790, 0.709732, -0.426375,
		0.182135, 0.608105, 0.772681,
		0.807677, 0.355654, -0.470286,
		23.050652, 14.878796, 14.602881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.506094, 15.329493, 15.028759>,  <22.485277, 14.629838, 14.932081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.506094, 15.329493, 15.028759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.732130, 15.272563, 14.703694>,  <22.867752, 15.238405, 14.508656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.732130, 15.272563, 14.703694>,  <22.506094, 15.329493, 15.028759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.732130, 15.272563, 14.703694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469988, 0.754026, -0.458865,
		0.678075, 0.641241, 0.359201,
		0.565090, -0.142325, -0.812661,
		22.901657, 15.229865, 14.459896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.529625, 16.008282, 14.836904>,  <22.506094, 15.329493, 15.028759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.529625, 16.008282, 14.836904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.654680, 15.781850, 14.531796>,  <22.729713, 15.645991, 14.348732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.654680, 15.781850, 14.531796>,  <22.529625, 16.008282, 14.836904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.654680, 15.781850, 14.531796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386418, 0.657774, -0.646541,
		0.867720, 0.496881, -0.013097,
		0.312639, -0.566077, -0.762767,
		22.748472, 15.612026, 14.302966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.915539, 16.431744, 14.313440>,  <22.529625, 16.008282, 14.836904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.915539, 16.431744, 14.313440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.790497, 16.105429, 14.118806>,  <22.715471, 15.909639, 14.002025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.790497, 16.105429, 14.118806>,  <22.915539, 16.431744, 14.313440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.790497, 16.105429, 14.118806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294448, 0.570250, -0.766886,
		0.903093, -0.096458, -0.418471,
		-0.312606, -0.815788, -0.486587,
		22.696714, 15.860692, 13.972830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.041710, 16.625000, 13.617077>,  <22.915539, 16.431744, 14.313440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.041710, 16.625000, 13.617077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.783503, 16.319712, 13.605796>,  <22.628578, 16.136538, 13.599028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.783503, 16.319712, 13.605796>,  <23.041710, 16.625000, 13.617077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.783503, 16.319712, 13.605796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525827, 0.470910, -0.708343,
		0.553905, -0.442419, -0.705305,
		-0.645519, -0.763223, -0.028203,
		22.589846, 16.090746, 13.597335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.925985, 16.640886, 12.939670>,  <23.041710, 16.625000, 13.617077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.925985, 16.640886, 12.939670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.625469, 16.464338, 13.135939>,  <22.445160, 16.358410, 13.253700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.625469, 16.464338, 13.135939>,  <22.925985, 16.640886, 12.939670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.625469, 16.464338, 13.135939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659965, 0.506017, -0.555331,
		-0.003183, -0.741041, -0.671453,
		-0.751290, -0.441368, 0.490671,
		22.400082, 16.331928, 13.283140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.453358, 16.398283, 12.417097>,  <22.925985, 16.640886, 12.939670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.453358, 16.398283, 12.417097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.219151, 16.422974, 12.740418>,  <22.078625, 16.437788, 12.934411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.219151, 16.422974, 12.740418>,  <22.453358, 16.398283, 12.417097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.219151, 16.422974, 12.740418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648939, 0.561890, -0.512989,
		-0.485844, -0.824906, -0.288939,
		-0.585520, 0.061729, 0.808304,
		22.043495, 16.441492, 12.982910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.776291, 16.257355, 12.153311>,  <22.453358, 16.398283, 12.417097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.776291, 16.257355, 12.153311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.737513, 16.452055, 12.500569>,  <21.714245, 16.568874, 12.708924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.737513, 16.452055, 12.500569>,  <21.776291, 16.257355, 12.153311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.737513, 16.452055, 12.500569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818403, 0.457405, -0.347847,
		-0.566409, -0.744215, 0.354014,
		-0.096946, 0.486750, 0.868146,
		21.708429, 16.598080, 12.761013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.991825, 16.420610, 12.310797>,  <21.776291, 16.257355, 12.153311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.991825, 16.420610, 12.310797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.158226, 16.684340, 12.561312>,  <21.258066, 16.842577, 12.711620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.158226, 16.684340, 12.561312>,  <20.991825, 16.420610, 12.310797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.158226, 16.684340, 12.561312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634263, 0.703903, -0.319736,
		-0.651655, -0.264220, 0.711008,
		0.416000, 0.659324, 0.626287,
		21.283026, 16.882137, 12.749198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.449430, 16.812517, 12.738018>,  <20.991825, 16.420610, 12.310797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.449430, 16.812517, 12.738018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.775759, 17.042181, 12.765666>,  <20.971556, 17.179979, 12.782255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.775759, 17.042181, 12.765666>,  <20.449430, 16.812517, 12.738018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.775759, 17.042181, 12.765666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545628, 0.803816, -0.237002,
		-0.191637, 0.155638, 0.969047,
		0.815822, 0.574158, 0.069121,
		21.020506, 17.214428, 12.786402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.221346, 17.365458, 13.118415>,  <20.449430, 16.812517, 12.738018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.221346, 17.365458, 13.118415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.546606, 17.519350, 12.943706>,  <20.741762, 17.611685, 12.838881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.546606, 17.519350, 12.943706>,  <20.221346, 17.365458, 13.118415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.546606, 17.519350, 12.943706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480236, 0.867456, -0.129971,
		0.328877, 0.315440, 0.890133,
		0.813150, 0.384730, -0.436772,
		20.790550, 17.634769, 12.812674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172005, 18.119020, 13.288812>,  <20.221346, 17.365458, 13.118415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172005, 18.119020, 13.288812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.417692, 18.120831, 12.973162>,  <20.565104, 18.121916, 12.783772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.417692, 18.120831, 12.973162>,  <20.172005, 18.119020, 13.288812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.417692, 18.120831, 12.973162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398675, 0.864765, -0.305351,
		0.681026, 0.502156, 0.532957,
		0.614216, 0.004525, -0.789125,
		20.601957, 18.122189, 12.736424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.485184, 18.780993, 13.223263>,  <20.172005, 18.119020, 13.288812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.485184, 18.780993, 13.223263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.501644, 18.602438, 12.865705>,  <20.511520, 18.495304, 12.651172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.501644, 18.602438, 12.865705>,  <20.485184, 18.780993, 13.223263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501644, 18.602438, 12.865705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388448, 0.817122, -0.425934,
		0.920551, 0.364759, -0.139771,
		0.041153, -0.446388, -0.893893,
		20.513990, 18.468521, 12.597538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.755950, 21.407320, 19.806366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593718, 21.092751, 19.992718>,  <13.496378, 20.904009, 20.104528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593718, 21.092751, 19.992718>,  <13.755950, 21.407320, 19.806366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.593718, 21.092751, 19.992718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154872, -0.443189, -0.882949,
		0.900844, -0.430257, 0.057954,
		-0.405580, -0.786424, 0.465879,
		13.472044, 20.856823, 20.132481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.129147, 20.806198, 19.603209>,  <13.755950, 21.407320, 19.806366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.129147, 20.806198, 19.603209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767514, 20.674856, 19.712622>,  <13.550534, 20.596050, 19.778269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767514, 20.674856, 19.712622>,  <14.129147, 20.806198, 19.603209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.767514, 20.674856, 19.712622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008394, -0.626283, -0.779550,
		0.427277, -0.707073, 0.563455,
		-0.904081, -0.328355, 0.273532,
		13.496289, 20.576349, 19.794682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.222801, 20.170185, 19.535492>,  <14.129147, 20.806198, 19.603209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.222801, 20.170185, 19.535492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832344, 20.250147, 19.501591>,  <13.598069, 20.298124, 19.481249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832344, 20.250147, 19.501591>,  <14.222801, 20.170185, 19.535492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.832344, 20.250147, 19.501591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081852, -0.700339, -0.709102,
		-0.201108, -0.685248, 0.699993,
		-0.976143, 0.199902, -0.084754,
		13.539501, 20.310118, 19.476164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.911839, 19.555052, 19.605728>,  <14.222801, 20.170185, 19.535492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.911839, 19.555052, 19.605728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.638317, 19.783968, 19.424665>,  <13.474204, 19.921318, 19.316029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.638317, 19.783968, 19.424665>,  <13.911839, 19.555052, 19.605728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.638317, 19.783968, 19.424665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129356, -0.705614, -0.696690,
		-0.718117, -0.417837, 0.556524,
		-0.683794, 0.572295, -0.452664,
		13.433176, 19.955654, 19.288868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.410442, 19.099180, 19.194687>,  <13.911839, 19.555052, 19.605728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.410442, 19.099180, 19.194687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.296574, 19.432001, 19.004255>,  <13.228252, 19.631693, 18.889996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.296574, 19.432001, 19.004255>,  <13.410442, 19.099180, 19.194687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296574, 19.432001, 19.004255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222758, -0.540450, -0.811353,
		-0.932385, -0.124919, 0.339196,
		-0.284672, 0.832052, -0.476080,
		13.211172, 19.681616, 18.861431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.654633, 19.072397, 18.906452>,  <13.410442, 19.099180, 19.194687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.654633, 19.072397, 18.906452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.862400, 19.343611, 18.698425>,  <12.987061, 19.506340, 18.573608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.862400, 19.343611, 18.698425>,  <12.654633, 19.072397, 18.906452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.862400, 19.343611, 18.698425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274633, -0.443863, -0.852972,
		-0.809185, 0.585878, -0.044339,
		0.519418, 0.678036, -0.520069,
		13.018226, 19.547022, 18.542404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.311007, 19.072645, 18.361710>,  <12.654633, 19.072397, 18.906452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.311007, 19.072645, 18.361710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.642761, 19.273069, 18.262871>,  <12.841814, 19.393324, 18.203568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.642761, 19.273069, 18.262871>,  <12.311007, 19.072645, 18.361710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.642761, 19.273069, 18.262871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083329, -0.326393, -0.941554,
		-0.552424, 0.801503, -0.228953,
		0.829387, 0.501059, -0.247096,
		12.891578, 19.423388, 18.188742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.118287, 19.507996, 17.825951>,  <12.311007, 19.072645, 18.361710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.118287, 19.507996, 17.825951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.514410, 19.488201, 17.774040>,  <12.752084, 19.476324, 17.742895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.514410, 19.488201, 17.774040>,  <12.118287, 19.507996, 17.825951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.514410, 19.488201, 17.774040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136889, -0.189729, -0.972247,
		0.023493, 0.980588, -0.194665,
		0.990308, -0.049488, -0.129774,
		12.811502, 19.473354, 17.735107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.186504, 19.677715, 17.223721>,  <12.118287, 19.507996, 17.825951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.186504, 19.677715, 17.223721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.548495, 19.512264, 17.263582>,  <12.765690, 19.412994, 17.287498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.548495, 19.512264, 17.263582>,  <12.186504, 19.677715, 17.223721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.548495, 19.512264, 17.263582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044198, -0.324354, -0.944903,
		0.423159, 0.850710, -0.311814,
		0.904977, -0.413626, 0.099654,
		12.819988, 19.388176, 17.293478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.575330, 19.763245, 16.617384>,  <12.186504, 19.677715, 17.223721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.575330, 19.763245, 16.617384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.775349, 19.467695, 16.798058>,  <12.895360, 19.290365, 16.906462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.775349, 19.467695, 16.798058>,  <12.575330, 19.763245, 16.617384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.775349, 19.467695, 16.798058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055894, -0.548023, -0.834594,
		0.864193, 0.392089, -0.315336,
		0.500046, -0.738875, 0.451682,
		12.925363, 19.246033, 16.933561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122882, 19.503635, 16.222454>,  <12.575330, 19.763245, 16.617384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.122882, 19.503635, 16.222454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040540, 19.201307, 16.471085>,  <12.991135, 19.019911, 16.620262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040540, 19.201307, 16.471085>,  <13.122882, 19.503635, 16.222454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.040540, 19.201307, 16.471085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029455, -0.639678, -0.768079,
		0.978139, -0.139805, 0.153944,
		-0.205856, -0.755822, 0.621576,
		12.978783, 18.974560, 16.657557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559181, 18.921310, 16.126034>,  <13.122882, 19.503635, 16.222454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.559181, 18.921310, 16.126034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.216488, 18.773132, 16.269577>,  <13.010872, 18.684225, 16.355703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.216488, 18.773132, 16.269577>,  <13.559181, 18.921310, 16.126034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.216488, 18.773132, 16.269577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039584, -0.646503, -0.761884,
		0.514238, -0.666936, 0.539217,
		-0.856733, -0.370446, 0.358857,
		12.959468, 18.661999, 16.377234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.025000, 18.222681, 16.071407>,  <13.559181, 18.921310, 16.126034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.025000, 18.222681, 16.071407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.711910, 17.993301, 15.974662>,  <13.524056, 17.855673, 15.916615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.711910, 17.993301, 15.974662>,  <14.025000, 18.222681, 16.071407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.711910, 17.993301, 15.974662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098561, 0.269505, -0.957942,
		0.614515, -0.773643, -0.154428,
		-0.782724, -0.573449, -0.241866,
		13.477093, 17.821266, 15.902102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371677, 17.942677, 15.419018>,  <14.025000, 18.222681, 16.071407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.371677, 17.942677, 15.419018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.975622, 17.995144, 15.399330>,  <13.737989, 18.026625, 15.387518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.975622, 17.995144, 15.399330>,  <14.371677, 17.942677, 15.419018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.975622, 17.995144, 15.399330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094884, 0.369367, -0.924427,
		-0.103076, -0.919980, -0.378170,
		-0.990138, 0.131168, -0.049219,
		13.678581, 18.034494, 15.384564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.074090, 17.947191, 15.317625>,  <14.371677, 17.942677, 15.419018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.074090, 17.947191, 15.317625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438884, 17.830622, 15.202139>,  <15.657760, 17.760679, 15.132848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438884, 17.830622, 15.202139>,  <15.074090, 17.947191, 15.317625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.438884, 17.830622, 15.202139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326607, 0.089966, 0.940869,
		-0.248219, -0.952353, 0.177229,
		0.911984, -0.291426, -0.288714,
		15.712479, 17.743195, 15.115524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367406, 17.343193, 15.788386>,  <15.074090, 17.947191, 15.317625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.367406, 17.343193, 15.788386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.671747, 17.532951, 15.611275>,  <15.854352, 17.646807, 15.505008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.671747, 17.532951, 15.611275>,  <15.367406, 17.343193, 15.788386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.671747, 17.532951, 15.611275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390481, 0.210273, 0.896275,
		0.518292, -0.854831, -0.025255,
		0.760853, 0.474394, -0.442778,
		15.900003, 17.675270, 15.478441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.044865, 17.206245, 16.186106>,  <15.367406, 17.343193, 15.788386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.044865, 17.206245, 16.186106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.183626, 17.533442, 16.002563>,  <16.266884, 17.729759, 15.892438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.183626, 17.533442, 16.002563>,  <16.044865, 17.206245, 16.186106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183626, 17.533442, 16.002563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441484, 0.289231, 0.849374,
		0.827496, -0.497228, -0.260794,
		0.346903, 0.817991, -0.458856,
		16.287697, 17.778839, 15.864906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620285, 17.279194, 16.528868>,  <16.044865, 17.206245, 16.186106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620285, 17.279194, 16.528868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597521, 17.630991, 16.339869>,  <16.583862, 17.842070, 16.226469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597521, 17.630991, 16.339869>,  <16.620285, 17.279194, 16.528868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597521, 17.630991, 16.339869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333893, 0.462781, 0.821188,
		0.940891, -0.111030, -0.319993,
		-0.056910, 0.879492, -0.472499,
		16.580448, 17.894838, 16.198118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294119, 17.635992, 16.546364>,  <16.620285, 17.279194, 16.528868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.294119, 17.635992, 16.546364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025671, 17.927202, 16.490391>,  <16.864603, 18.101929, 16.456806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025671, 17.927202, 16.490391>,  <17.294119, 17.635992, 16.546364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025671, 17.927202, 16.490391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277739, 0.421914, 0.863047,
		0.687358, 0.540342, -0.485355,
		-0.671118, 0.728024, -0.139932,
		16.824335, 18.145609, 16.448412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.615553, 18.279209, 16.609976>,  <17.294119, 17.635992, 16.546364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.615553, 18.279209, 16.609976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.231852, 18.359758, 16.689249>,  <17.001631, 18.408089, 16.736813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.231852, 18.359758, 16.689249>,  <17.615553, 18.279209, 16.609976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.231852, 18.359758, 16.689249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267900, 0.425403, 0.864443,
		0.089769, 0.882315, -0.462019,
		-0.959256, 0.201375, 0.198184,
		16.944075, 18.420172, 16.748705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666714, 18.997206, 16.859669>,  <17.615553, 18.279209, 16.609976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666714, 18.997206, 16.859669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312119, 18.858681, 16.982443>,  <17.099361, 18.775566, 17.056107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312119, 18.858681, 16.982443>,  <17.666714, 18.997206, 16.859669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.312119, 18.858681, 16.982443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210534, 0.288826, 0.933946,
		-0.412090, 0.892550, -0.183130,
		-0.886486, -0.346315, 0.306934,
		17.046173, 18.754786, 17.074524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.259222, 19.487974, 17.292501>,  <17.666714, 18.997206, 16.859669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.259222, 19.487974, 17.292501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130453, 19.122044, 17.390036>,  <17.053192, 18.902485, 17.448557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130453, 19.122044, 17.390036>,  <17.259222, 19.487974, 17.292501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.130453, 19.122044, 17.390036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274255, 0.156397, 0.948854,
		-0.906173, 0.372332, 0.200548,
		-0.321924, -0.914827, 0.243837,
		17.033876, 18.847595, 17.463186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.996260, 19.579510, 17.969440>,  <17.259222, 19.487974, 17.292501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.996260, 19.579510, 17.969440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.007904, 19.179785, 17.960258>,  <17.014891, 18.939949, 17.954748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.007904, 19.179785, 17.960258>,  <16.996260, 19.579510, 17.969440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.007904, 19.179785, 17.960258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080087, -0.020561, 0.996576,
		-0.996363, -0.030847, 0.079434,
		0.029109, -0.999313, -0.022957,
		17.016636, 18.879992, 17.953371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407572, 19.347805, 18.321695>,  <16.996260, 19.579510, 17.969440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.407572, 19.347805, 18.321695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.675510, 19.050970, 18.331575>,  <16.836273, 18.872869, 18.337503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.675510, 19.050970, 18.331575>,  <16.407572, 19.347805, 18.321695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675510, 19.050970, 18.331575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179853, -0.129889, 0.975081,
		-0.720388, -0.657596, -0.220472,
		0.669846, -0.742090, 0.024700,
		16.876465, 18.828342, 18.338985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.120876, 19.089380, 18.855436>,  <16.407572, 19.347805, 18.321695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.120876, 19.089380, 18.855436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475220, 18.915474, 18.790649>,  <16.687826, 18.811131, 18.751778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475220, 18.915474, 18.790649>,  <16.120876, 19.089380, 18.855436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475220, 18.915474, 18.790649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088010, -0.185289, 0.978735,
		-0.455531, -0.881276, -0.125876,
		0.885859, -0.434766, -0.161966,
		16.740978, 18.785044, 18.742060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.103588, 18.544655, 19.282114>,  <16.120876, 19.089380, 18.855436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.103588, 18.544655, 19.282114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496220, 18.590534, 19.220999>,  <16.731798, 18.618061, 19.184330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496220, 18.590534, 19.220999>,  <16.103588, 18.544655, 19.282114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.496220, 18.590534, 19.220999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162097, -0.076721, 0.983788,
		0.101116, -0.990433, -0.093900,
		0.981580, 0.114698, -0.152789,
		16.790693, 18.624943, 19.175161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.391371, 18.134506, 19.818993>,  <16.103588, 18.544655, 19.282114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.391371, 18.134506, 19.818993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697601, 18.360443, 19.695807>,  <16.881340, 18.496006, 19.621895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697601, 18.360443, 19.695807>,  <16.391371, 18.134506, 19.818993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697601, 18.360443, 19.695807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286832, 0.128805, 0.949282,
		0.575862, -0.815084, -0.063405,
		0.765578, 0.564843, -0.307966,
		16.927275, 18.529896, 19.603416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.953499, 17.984362, 20.290516>,  <16.391371, 18.134506, 19.818993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.953499, 17.984362, 20.290516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048418, 18.340538, 20.135180>,  <17.105370, 18.554243, 20.041977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048418, 18.340538, 20.135180>,  <16.953499, 17.984362, 20.290516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.048418, 18.340538, 20.135180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270237, 0.323472, 0.906828,
		0.933092, -0.320132, -0.163871,
		0.237297, 0.890439, -0.388341,
		17.119608, 18.607670, 20.018677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.275129, 17.291826, 20.295265>,  <16.953499, 17.984362, 20.290516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.275129, 17.291826, 20.295265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028393, 17.076633, 20.525076>,  <16.880350, 16.947517, 20.662962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028393, 17.076633, 20.525076>,  <17.275129, 17.291826, 20.295265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028393, 17.076633, 20.525076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552798, -0.223488, -0.802787,
		0.560286, -0.812790, -0.159540,
		-0.616842, -0.537983, 0.574526,
		16.843340, 16.915239, 20.697433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256599, 16.683594, 19.942928>,  <17.275129, 17.291826, 20.295265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256599, 16.683594, 19.942928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.925934, 16.696102, 20.167658>,  <16.727533, 16.703608, 20.302496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.925934, 16.696102, 20.167658>,  <17.256599, 16.683594, 19.942928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.925934, 16.696102, 20.167658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539868, -0.325572, -0.776238,
		0.158639, -0.945000, 0.286023,
		-0.826666, 0.031273, 0.561823,
		16.677935, 16.705484, 20.336205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941126, 15.927032, 19.878492>,  <17.256599, 16.683594, 19.942928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941126, 15.927032, 19.878492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656082, 16.194073, 19.964741>,  <16.485056, 16.354298, 20.016491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656082, 16.194073, 19.964741>,  <16.941126, 15.927032, 19.878492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656082, 16.194073, 19.964741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654842, -0.522683, -0.545880,
		-0.251728, -0.530199, 0.809643,
		-0.712611, 0.667602, 0.215623,
		16.442299, 16.394354, 20.029427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.371630, 15.553283, 19.856358>,  <16.941126, 15.927032, 19.878492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.371630, 15.553283, 19.856358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189407, 15.908366, 19.829702>,  <16.080074, 16.121416, 19.813709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189407, 15.908366, 19.829702>,  <16.371630, 15.553283, 19.856358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.189407, 15.908366, 19.829702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686180, -0.397851, -0.608992,
		-0.567119, -0.231706, 0.790372,
		-0.455557, 0.887709, -0.066637,
		16.052740, 16.174679, 19.809711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.717306, 15.415318, 19.946787>,  <16.371630, 15.553283, 19.856358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.717306, 15.415318, 19.946787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.737503, 15.756678, 19.739264>,  <15.749621, 15.961493, 19.614750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.737503, 15.756678, 19.739264>,  <15.717306, 15.415318, 19.946787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.737503, 15.756678, 19.739264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707137, -0.336286, -0.621987,
		-0.705271, 0.398275, 0.586490,
		0.050493, 0.853398, -0.518808,
		15.752651, 16.012697, 19.583622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.983276, 15.427751, 19.691479>,  <15.717306, 15.415318, 19.946787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.983276, 15.427751, 19.691479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.145522, 15.739897, 19.501108>,  <15.242869, 15.927185, 19.386887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.145522, 15.739897, 19.501108>,  <14.983276, 15.427751, 19.691479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.145522, 15.739897, 19.501108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639202, -0.130024, -0.757968,
		-0.653374, 0.611656, 0.446072,
		0.405615, 0.780366, -0.475926,
		15.267207, 15.974007, 19.358330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472549, 15.925054, 19.511129>,  <14.983276, 15.427751, 19.691479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.472549, 15.925054, 19.511129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782510, 15.979335, 19.264191>,  <14.968486, 16.011904, 19.116028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782510, 15.979335, 19.264191>,  <14.472549, 15.925054, 19.511129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.782510, 15.979335, 19.264191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631998, 0.182495, -0.753176,
		0.010454, 0.973797, 0.227179,
		0.774900, 0.135703, -0.617345,
		15.014979, 16.020046, 19.078987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.364460, 16.656368, 19.179501>,  <14.472549, 15.925054, 19.511129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.364460, 16.656368, 19.179501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.610497, 16.466022, 18.928036>,  <14.758119, 16.351814, 18.777157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.610497, 16.466022, 18.928036>,  <14.364460, 16.656368, 19.179501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.610497, 16.466022, 18.928036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632633, 0.178004, -0.753718,
		0.470572, 0.861317, -0.191559,
		0.615092, -0.475865, -0.628661,
		14.795024, 16.323263, 18.739437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492511, 17.015076, 18.513702>,  <14.364460, 16.656368, 19.179501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.492511, 17.015076, 18.513702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577650, 16.632023, 18.436100>,  <14.628734, 16.402191, 18.389538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577650, 16.632023, 18.436100>,  <14.492511, 17.015076, 18.513702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.577650, 16.632023, 18.436100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728537, -0.023234, -0.684612,
		0.651098, 0.287059, -0.702615,
		0.212849, -0.957631, -0.194006,
		14.641504, 16.344734, 18.377899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.510249, 16.924320, 17.818771>,  <14.492511, 17.015076, 18.513702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.510249, 16.924320, 17.818771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464895, 16.540577, 17.922132>,  <14.437683, 16.310331, 17.984150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464895, 16.540577, 17.922132>,  <14.510249, 16.924320, 17.818771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.464895, 16.540577, 17.922132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552502, -0.155277, -0.818921,
		0.825764, -0.235620, -0.512442,
		-0.113384, -0.959360, 0.258402,
		14.430880, 16.252769, 17.999653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.568904, 16.475920, 17.153515>,  <14.510249, 16.924320, 17.818771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.568904, 16.475920, 17.153515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371178, 16.247564, 17.415733>,  <14.252542, 16.110552, 17.573065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371178, 16.247564, 17.415733>,  <14.568904, 16.475920, 17.153515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371178, 16.247564, 17.415733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671526, -0.228093, -0.705002,
		0.552001, -0.788709, -0.270616,
		-0.494316, -0.570887, 0.655546,
		14.222883, 16.076298, 17.612396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.422614, 15.942883, 16.742128>,  <14.568904, 16.475920, 17.153515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.422614, 15.942883, 16.742128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.156044, 15.962616, 17.039703>,  <13.996101, 15.974456, 17.218248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.156044, 15.962616, 17.039703>,  <14.422614, 15.942883, 16.742128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156044, 15.962616, 17.039703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742879, -0.128650, -0.656947,
		0.063300, -0.990462, 0.122382,
		-0.666426, 0.049331, 0.743938,
		13.956117, 15.977415, 17.262884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<18.034927, 18.042395, 26.179617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.384937, 17.848764, 26.178846>,  <18.594944, 17.732586, 26.178385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.384937, 17.848764, 26.178846>,  <18.034927, 18.042395, 26.179617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.384937, 17.848764, 26.178846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036252, 0.069495, -0.996923,
		0.482720, 0.872262, 0.078359,
		0.875024, -0.484076, -0.001925,
		18.647444, 17.703541, 26.178268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.414680, 18.332991, 25.614269>,  <18.034927, 18.042395, 26.179617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.414680, 18.332991, 25.614269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.579103, 17.972692, 25.670391>,  <18.677757, 17.756514, 25.704065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.579103, 17.972692, 25.670391>,  <18.414680, 18.332991, 25.614269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.579103, 17.972692, 25.670391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030378, -0.167360, -0.985428,
		0.911102, 0.400807, -0.096158,
		0.411060, -0.900746, 0.140307,
		18.702421, 17.702469, 25.712482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.927759, 18.397408, 25.150314>,  <18.414680, 18.332991, 25.614269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.927759, 18.397408, 25.150314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.853592, 18.011717, 25.226088>,  <18.809092, 17.780302, 25.271551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.853592, 18.011717, 25.226088>,  <18.927759, 18.397408, 25.150314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853592, 18.011717, 25.226088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042524, -0.184720, -0.981871,
		0.981739, -0.190114, -0.006752,
		-0.185420, -0.964228, 0.189431,
		18.797966, 17.722448, 25.282917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.223259, 18.143944, 24.585577>,  <18.927759, 18.397408, 25.150314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.223259, 18.143944, 24.585577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.990974, 17.842709, 24.709274>,  <18.851604, 17.661966, 24.783493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.990974, 17.842709, 24.709274>,  <19.223259, 18.143944, 24.585577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990974, 17.842709, 24.709274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057830, -0.340735, -0.938379,
		0.812053, -0.562811, 0.154318,
		-0.580711, -0.753089, 0.309243,
		18.816761, 17.616781, 24.802048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.380703, 17.510096, 24.134350>,  <19.223259, 18.143944, 24.585577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.380703, 17.510096, 24.134350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.019545, 17.409615, 24.273876>,  <18.802849, 17.349325, 24.357592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.019545, 17.409615, 24.273876>,  <19.380703, 17.510096, 24.134350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.019545, 17.409615, 24.273876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241741, -0.374260, -0.895260,
		0.355441, -0.892651, 0.277191,
		-0.902897, -0.251204, 0.348818,
		18.748676, 17.334253, 24.378521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.249323, 16.832302, 23.843767>,  <19.380703, 17.510096, 24.134350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.249323, 16.832302, 23.843767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.895605, 16.970030, 23.969923>,  <18.683374, 17.052666, 24.045616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.895605, 16.970030, 23.969923>,  <19.249323, 16.832302, 23.843767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.895605, 16.970030, 23.969923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444666, -0.414891, -0.793812,
		-0.142472, -0.842205, 0.519992,
		-0.884292, 0.344319, 0.315390,
		18.630318, 17.073326, 24.064541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815479, 16.295015, 23.681723>,  <19.249323, 16.832302, 23.843767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815479, 16.295015, 23.681723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.577223, 16.615612, 23.702971>,  <18.434269, 16.807970, 23.715719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.577223, 16.615612, 23.702971>,  <18.815479, 16.295015, 23.681723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577223, 16.615612, 23.702971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510135, -0.326373, -0.795765,
		-0.620462, -0.501090, 0.603271,
		-0.595641, 0.801492, 0.053121,
		18.398531, 16.856060, 23.718906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143143, 16.103819, 23.711981>,  <18.815479, 16.295015, 23.681723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143143, 16.103819, 23.711981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.131100, 16.482357, 23.583281>,  <18.123873, 16.709480, 23.506060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.131100, 16.482357, 23.583281>,  <18.143143, 16.103819, 23.711981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.131100, 16.482357, 23.583281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639160, -0.265714, -0.721713,
		-0.768484, 0.183921, 0.612866,
		-0.030109, 0.946345, -0.321753,
		18.122066, 16.766260, 23.486755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468201, 16.236176, 23.466221>,  <18.143143, 16.103819, 23.711981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.468201, 16.236176, 23.466221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.662235, 16.515852, 23.256145>,  <17.778656, 16.683659, 23.130100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.662235, 16.515852, 23.256145>,  <17.468201, 16.236176, 23.466221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662235, 16.515852, 23.256145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646647, -0.117491, -0.753686,
		-0.588676, 0.705215, 0.395136,
		0.485086, 0.699191, -0.525189,
		17.807760, 16.725609, 23.098589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.921120, 16.604006, 23.116915>,  <17.468201, 16.236176, 23.466221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.921120, 16.604006, 23.116915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.229221, 16.748587, 22.906750>,  <17.414083, 16.835335, 22.780651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.229221, 16.748587, 22.906750>,  <16.921120, 16.604006, 23.116915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229221, 16.748587, 22.906750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511642, -0.141562, -0.847457,
		-0.380694, 0.921581, 0.075895,
		0.770256, 0.361452, -0.525411,
		17.460299, 16.857023, 22.749126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.598537, 17.115475, 22.623524>,  <16.921120, 16.604006, 23.116915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.598537, 17.115475, 22.623524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.963329, 17.040089, 22.477772>,  <17.182205, 16.994856, 22.390322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.963329, 17.040089, 22.477772>,  <16.598537, 17.115475, 22.623524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.963329, 17.040089, 22.477772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345876, 0.124367, -0.930001,
		0.220591, 0.974173, 0.048234,
		0.911981, -0.188467, -0.364378,
		17.236923, 16.983549, 22.368458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823790, 17.642023, 22.175264>,  <16.598537, 17.115475, 22.623524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.823790, 17.642023, 22.175264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.005993, 17.308275, 22.051109>,  <17.115314, 17.108027, 21.976616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.005993, 17.308275, 22.051109>,  <16.823790, 17.642023, 22.175264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.005993, 17.308275, 22.051109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427168, 0.101044, -0.898508,
		0.781050, 0.541866, -0.310390,
		0.455508, -0.834369, -0.310388,
		17.142645, 17.057964, 21.957993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951204, 17.765079, 21.497896>,  <16.823790, 17.642023, 22.175264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.951204, 17.765079, 21.497896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.993546, 17.369537, 21.539776>,  <17.018951, 17.132212, 21.564903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.993546, 17.369537, 21.539776>,  <16.951204, 17.765079, 21.497896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.993546, 17.369537, 21.539776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414534, -0.139590, -0.899264,
		0.903856, 0.051789, -0.424690,
		0.105855, -0.988854, 0.104701,
		17.025303, 17.072882, 21.571186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.342550, 17.609566, 20.970287>,  <16.951204, 17.765079, 21.497896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.342550, 17.609566, 20.970287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.162363, 17.258551, 21.036022>,  <17.054251, 17.047941, 21.075462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.162363, 17.258551, 21.036022>,  <17.342550, 17.609566, 20.970287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162363, 17.258551, 21.036022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278127, -0.036976, -0.959832,
		0.848366, -0.478079, -0.227411,
		-0.450467, -0.877538, 0.164336,
		17.027224, 16.995289, 21.085323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.708538, 18.021034, 20.517797>,  <17.342550, 17.609566, 20.970287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.708538, 18.021034, 20.517797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.557648, 18.379623, 20.424812>,  <17.467113, 18.594776, 20.369020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.557648, 18.379623, 20.424812>,  <17.708538, 18.021034, 20.517797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.557648, 18.379623, 20.424812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127611, 0.298927, 0.945705,
		0.917287, 0.327082, -0.227163,
		-0.377228, 0.896471, -0.232462,
		17.444479, 18.648565, 20.355074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.200872, 18.375292, 20.789160>,  <17.708538, 18.021034, 20.517797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.200872, 18.375292, 20.789160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.881737, 18.608671, 20.728443>,  <17.690254, 18.748699, 20.692013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.881737, 18.608671, 20.728443>,  <18.200872, 18.375292, 20.789160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.881737, 18.608671, 20.728443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220820, 0.517104, 0.826947,
		0.560972, 0.626253, -0.541404,
		-0.797840, 0.583447, -0.151792,
		17.642385, 18.783705, 20.682905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.329157, 19.042856, 21.055897>,  <18.200872, 18.375292, 20.789160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.329157, 19.042856, 21.055897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.930721, 19.075117, 21.041443>,  <17.691660, 19.094473, 21.032770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.930721, 19.075117, 21.041443>,  <18.329157, 19.042856, 21.055897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.930721, 19.075117, 21.041443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003763, 0.447225, 0.894413,
		0.088298, 0.890778, -0.445779,
		-0.996087, 0.080652, -0.036137,
		17.631895, 19.099312, 21.030602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149052, 19.804808, 21.332106>,  <18.329157, 19.042856, 21.055897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.149052, 19.804808, 21.332106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.841541, 19.555538, 21.389563>,  <17.657034, 19.405975, 21.424038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.841541, 19.555538, 21.389563>,  <18.149052, 19.804808, 21.332106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.841541, 19.555538, 21.389563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104180, 0.343649, 0.933302,
		-0.630973, 0.702537, -0.329112,
		-0.768778, -0.623175, 0.143643,
		17.610909, 19.368586, 21.432655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621788, 20.232477, 21.400133>,  <18.149052, 19.804808, 21.332106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621788, 20.232477, 21.400133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.525936, 19.881903, 21.567198>,  <17.468424, 19.671558, 21.667437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.525936, 19.881903, 21.567198>,  <17.621788, 20.232477, 21.400133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.525936, 19.881903, 21.567198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052426, 0.441248, 0.895853,
		-0.969447, 0.192779, -0.151685,
		-0.239632, -0.876434, 0.417660,
		17.454046, 19.618973, 21.692495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.015640, 20.339697, 21.973415>,  <17.621788, 20.232477, 21.400133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.015640, 20.339697, 21.973415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.138489, 19.971968, 22.071815>,  <17.212198, 19.751329, 22.130856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.138489, 19.971968, 22.071815>,  <17.015640, 20.339697, 21.973415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.138489, 19.971968, 22.071815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118305, 0.219608, 0.968388,
		-0.944288, -0.326517, -0.041314,
		0.307122, -0.919325, 0.246002,
		17.230625, 19.696171, 22.145617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.566216, 20.015774, 22.395735>,  <17.015640, 20.339697, 21.973415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.566216, 20.015774, 22.395735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.906614, 19.828207, 22.490322>,  <17.110853, 19.715666, 22.547073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.906614, 19.828207, 22.490322>,  <16.566216, 20.015774, 22.395735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.906614, 19.828207, 22.490322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155456, 0.205164, 0.966303,
		-0.501632, -0.859083, 0.101698,
		0.850999, -0.468919, 0.236467,
		17.161915, 19.687531, 22.561262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481499, 19.520313, 23.020746>,  <16.566216, 20.015774, 22.395735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.481499, 19.520313, 23.020746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.878843, 19.564976, 23.009710>,  <17.117250, 19.591774, 23.003088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.878843, 19.564976, 23.009710>,  <16.481499, 19.520313, 23.020746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.878843, 19.564976, 23.009710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019660, 0.071522, 0.997245,
		0.113329, -0.991169, 0.068852,
		0.993363, 0.111663, -0.027592,
		17.176853, 19.598473, 23.001432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642073, 19.152231, 23.520514>,  <16.481499, 19.520313, 23.020746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642073, 19.152231, 23.520514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.983274, 19.354002, 23.466948>,  <17.187996, 19.475065, 23.434809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.983274, 19.354002, 23.466948>,  <16.642073, 19.152231, 23.520514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.983274, 19.354002, 23.466948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167006, -0.020723, 0.985738,
		0.494460, -0.863204, -0.101920,
		0.853005, 0.504429, -0.133914,
		17.239176, 19.505331, 23.426773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172499, 18.778484, 23.884869>,  <16.642073, 19.152231, 23.520514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172499, 18.778484, 23.884869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.311558, 19.149725, 23.831553>,  <17.394993, 19.372469, 23.799562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.311558, 19.149725, 23.831553>,  <17.172499, 18.778484, 23.884869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.311558, 19.149725, 23.831553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111578, 0.100196, 0.988691,
		0.930963, -0.358587, -0.068723,
		0.347647, 0.928103, -0.133289,
		17.415852, 19.428156, 23.791565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696842, 18.822027, 24.424597>,  <17.172499, 18.778484, 23.884869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.696842, 18.822027, 24.424597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.601555, 19.194675, 24.314810>,  <17.544382, 19.418264, 24.248938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.601555, 19.194675, 24.314810>,  <17.696842, 18.822027, 24.424597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.601555, 19.194675, 24.314810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095798, 0.303763, 0.947919,
		0.966475, 0.199519, -0.161609,
		-0.238219, 0.931622, -0.274466,
		17.530088, 19.474163, 24.232470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186241, 19.277464, 24.738358>,  <17.696842, 18.822027, 24.424597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.186241, 19.277464, 24.738358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.886255, 19.534693, 24.676382>,  <17.706263, 19.689030, 24.639196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.886255, 19.534693, 24.676382>,  <18.186241, 19.277464, 24.738358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886255, 19.534693, 24.676382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082890, 0.323749, 0.942505,
		0.656261, 0.694005, -0.296106,
		-0.749967, 0.643073, -0.154938,
		17.661264, 19.727615, 24.629900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388378, 19.744188, 25.151625>,  <18.186241, 19.277464, 24.738358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388378, 19.744188, 25.151625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.006056, 19.849632, 25.099564>,  <17.776663, 19.912899, 25.068327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.006056, 19.849632, 25.099564>,  <18.388378, 19.744188, 25.151625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.006056, 19.849632, 25.099564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026223, 0.364505, 0.930832,
		0.292820, 0.893110, -0.341484,
		-0.955808, 0.263612, -0.130155,
		17.719313, 19.928717, 25.060516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.201786, 20.454041, 25.264061>,  <18.388378, 19.744188, 25.151625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.201786, 20.454041, 25.264061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.835829, 20.307337, 25.331541>,  <17.616255, 20.219315, 25.372028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.835829, 20.307337, 25.331541>,  <18.201786, 20.454041, 25.264061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.835829, 20.307337, 25.331541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045844, 0.509568, 0.859208,
		-0.401088, 0.778349, -0.483013,
		-0.914892, -0.366761, 0.168699,
		17.561361, 20.197308, 25.382151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<11.214455, 16.950827, 27.690105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.564763, 17.077288, 27.544189>,  <11.774948, 17.153164, 27.456638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.564763, 17.077288, 27.544189>,  <11.214455, 16.950827, 27.690105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.564763, 17.077288, 27.544189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403437, 0.064396, -0.912739,
		-0.265072, 0.946521, 0.183943,
		0.875771, 0.316151, -0.364792,
		11.827495, 17.172132, 27.434752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.996498, 17.392817, 27.139507>,  <11.214455, 16.950827, 27.690105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.996498, 17.392817, 27.139507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.386026, 17.352594, 27.057959>,  <11.619743, 17.328461, 27.009029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.386026, 17.352594, 27.057959>,  <10.996498, 17.392817, 27.139507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.386026, 17.352594, 27.057959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204896, 0.000145, -0.978784,
		0.098452, 0.994931, -0.020463,
		0.973820, -0.100555, -0.203872,
		11.678172, 17.322428, 26.996798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.061913, 17.885763, 26.724489>,  <10.996498, 17.392817, 27.139507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.061913, 17.885763, 26.724489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.368545, 17.634987, 26.668917>,  <11.552524, 17.484522, 26.635574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.368545, 17.634987, 26.668917>,  <11.061913, 17.885763, 26.724489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.368545, 17.634987, 26.668917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252094, -0.094833, -0.963045,
		0.590597, 0.773273, -0.230745,
		0.766579, -0.626941, -0.138930,
		11.598518, 17.446905, 26.627237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.541320, 18.198532, 26.202093>,  <11.061913, 17.885763, 26.724489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.541320, 18.198532, 26.202093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.600261, 17.803051, 26.213072>,  <11.635626, 17.565762, 26.219660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.600261, 17.803051, 26.213072>,  <11.541320, 18.198532, 26.202093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.600261, 17.803051, 26.213072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261079, -0.065648, -0.963083,
		0.954005, 0.134747, -0.267803,
		0.147353, -0.988703, 0.027449,
		11.644466, 17.506439, 26.221306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.986572, 17.996584, 25.550901>,  <11.541320, 18.198532, 26.202093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.986572, 17.996584, 25.550901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.808761, 17.658049, 25.668280>,  <11.702074, 17.454927, 25.738707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.808761, 17.658049, 25.668280>,  <11.986572, 17.996584, 25.550901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.808761, 17.658049, 25.668280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271267, -0.185018, -0.944554,
		0.853703, -0.499483, -0.147338,
		-0.444529, -0.846336, 0.293443,
		11.675402, 17.404148, 25.756313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.136933, 17.441154, 25.058775>,  <11.986572, 17.996584, 25.550901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.136933, 17.441154, 25.058775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.799257, 17.297623, 25.218065>,  <11.596652, 17.211504, 25.313641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.799257, 17.297623, 25.218065>,  <12.136933, 17.441154, 25.058775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.799257, 17.297623, 25.218065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287242, -0.324425, -0.901244,
		0.452589, -0.875208, 0.170805,
		-0.844189, -0.358830, 0.398228,
		11.546000, 17.189974, 25.337534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.036660, 16.997276, 24.518881>,  <12.136933, 17.441154, 25.058775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.036660, 16.997276, 24.518881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.695460, 16.951763, 24.722624>,  <11.490741, 16.924456, 24.844870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.695460, 16.951763, 24.722624>,  <12.036660, 16.997276, 24.518881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.695460, 16.951763, 24.722624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475017, -0.235065, -0.847999,
		0.216220, -0.965297, 0.146462,
		-0.852999, -0.113782, 0.509359,
		11.439561, 16.917629, 24.875431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.759095, 16.334921, 24.415743>,  <12.036660, 16.997276, 24.518881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.759095, 16.334921, 24.415743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.437907, 16.548199, 24.522282>,  <11.245194, 16.676165, 24.586205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.437907, 16.548199, 24.522282>,  <11.759095, 16.334921, 24.415743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.437907, 16.548199, 24.522282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406682, -0.163452, -0.898829,
		-0.435716, -0.830052, 0.348088,
		-0.802970, 0.533195, 0.266349,
		11.197016, 16.708157, 24.602186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.107713, 15.919402, 24.127127>,  <11.759095, 16.334921, 24.415743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.107713, 15.919402, 24.127127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.982049, 16.297070, 24.166826>,  <10.906651, 16.523670, 24.190645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.982049, 16.297070, 24.166826>,  <11.107713, 15.919402, 24.127127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.982049, 16.297070, 24.166826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500315, -0.075806, -0.862519,
		-0.806839, -0.320623, 0.496197,
		-0.314158, 0.944169, 0.099249,
		10.887801, 16.580320, 24.196602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.301510, 16.006908, 23.995102>,  <11.107713, 15.919402, 24.127127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.301510, 16.006908, 23.995102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.478206, 16.359701, 23.929401>,  <10.584223, 16.571377, 23.889980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.478206, 16.359701, 23.929401>,  <10.301510, 16.006908, 23.995102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.478206, 16.359701, 23.929401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474597, 0.074365, -0.877056,
		-0.761331, 0.465384, 0.451435,
		0.441738, 0.881979, -0.164253,
		10.610727, 16.624294, 23.880125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.734721, 16.377804, 23.785118>,  <10.301510, 16.006908, 23.995102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.734721, 16.377804, 23.785118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.060025, 16.588730, 23.686695>,  <10.255208, 16.715286, 23.627642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.060025, 16.588730, 23.686695>,  <9.734721, 16.377804, 23.785118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.060025, 16.588730, 23.686695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312776, 0.039556, -0.949003,
		-0.490691, 0.848748, 0.197101,
		0.813261, 0.527316, -0.246058,
		10.304004, 16.746925, 23.612877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.497126, 16.880957, 23.437262>,  <9.734721, 16.377804, 23.785118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.497126, 16.880957, 23.437262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.880142, 16.891018, 23.322382>,  <10.109952, 16.897055, 23.253454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.880142, 16.891018, 23.322382>,  <9.497126, 16.880957, 23.437262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.880142, 16.891018, 23.322382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287815, 0.025719, -0.957341,
		-0.016691, 0.999353, 0.031865,
		0.957541, 0.025151, -0.287200,
		10.167404, 16.898563, 23.236221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.539680, 17.316402, 22.867451>,  <9.497126, 16.880957, 23.437262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.539680, 17.316402, 22.867451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.879797, 17.105894, 22.869923>,  <10.083868, 16.979589, 22.871407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.879797, 17.105894, 22.869923>,  <9.539680, 17.316402, 22.867451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.879797, 17.105894, 22.869923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094209, -0.163743, -0.981994,
		0.517807, 0.834402, -0.188809,
		0.850295, -0.526271, 0.006179,
		10.134886, 16.948013, 22.871777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.878654, 17.474197, 22.157106>,  <9.539680, 17.316402, 22.867451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.878654, 17.474197, 22.157106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.086587, 17.153872, 22.276083>,  <10.211347, 16.961676, 22.347469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.086587, 17.153872, 22.276083>,  <9.878654, 17.474197, 22.157106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.086587, 17.153872, 22.276083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092585, -0.398946, -0.912288,
		0.849238, 0.446696, -0.281528,
		0.519830, -0.800815, 0.297443,
		10.242536, 16.913628, 22.365316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.488613, 17.818298, 21.980692>,  <9.878654, 17.474197, 22.157106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.488613, 17.818298, 21.980692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.428284, 18.202217, 21.886002>,  <10.392086, 18.432570, 21.829187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.428284, 18.202217, 21.886002>,  <10.488613, 17.818298, 21.980692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.428284, 18.202217, 21.886002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090067, 0.251813, 0.963575,
		0.984449, 0.124009, -0.124426,
		-0.150824, 0.959798, -0.236728,
		10.383037, 18.490156, 21.814983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.007002, 18.171207, 22.334242>,  <10.488613, 17.818298, 21.980692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.007002, 18.171207, 22.334242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.732532, 18.450863, 22.253872>,  <10.567849, 18.618656, 22.205650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.732532, 18.450863, 22.253872>,  <11.007002, 18.171207, 22.334242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.732532, 18.450863, 22.253872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136367, 0.394943, 0.908528,
		0.714540, 0.596010, -0.366340,
		-0.686176, 0.699136, -0.200927,
		10.526679, 18.660604, 22.193594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.337543, 18.803656, 22.383501>,  <11.007002, 18.171207, 22.334242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.337543, 18.803656, 22.383501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.953156, 18.903957, 22.430260>,  <10.722525, 18.964138, 22.458315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.953156, 18.903957, 22.430260>,  <11.337543, 18.803656, 22.383501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.953156, 18.903957, 22.430260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219453, 0.433577, 0.873986,
		0.168472, 0.865525, -0.471682,
		-0.960967, 0.250754, 0.116897,
		10.664866, 18.979183, 22.465328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.293825, 19.613796, 22.388884>,  <11.337543, 18.803656, 22.383501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.293825, 19.613796, 22.388884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.987356, 19.450832, 22.587679>,  <10.803474, 19.353054, 22.706957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.987356, 19.450832, 22.587679>,  <11.293825, 19.613796, 22.388884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.987356, 19.450832, 22.587679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148377, 0.640319, 0.753642,
		-0.625271, 0.651161, -0.430145,
		-0.766172, -0.407408, 0.496990,
		10.757504, 19.328609, 22.736776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.106790, 20.169390, 22.814457>,  <11.293825, 19.613796, 22.388884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.106790, 20.169390, 22.814457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.882004, 19.872128, 22.959740>,  <10.747132, 19.693771, 23.046909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.882004, 19.872128, 22.959740>,  <11.106790, 20.169390, 22.814457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.882004, 19.872128, 22.959740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184981, 0.315069, 0.930867,
		-0.806212, 0.590301, -0.039589,
		-0.561965, -0.743153, 0.363207,
		10.713414, 19.649181, 23.068701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.601881, 20.458145, 23.142523>,  <11.106790, 20.169390, 22.814457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.601881, 20.458145, 23.142523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.606273, 20.093637, 23.307188>,  <10.608908, 19.874933, 23.405987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.606273, 20.093637, 23.307188>,  <10.601881, 20.458145, 23.142523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.606273, 20.093637, 23.307188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200672, 0.405322, 0.891877,
		-0.979597, 0.072817, 0.187317,
		0.010980, -0.911269, 0.411665,
		10.609567, 19.820257, 23.430687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.307203, 20.551908, 23.783222>,  <10.601881, 20.458145, 23.142523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.307203, 20.551908, 23.783222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.488360, 20.203180, 23.857862>,  <10.597054, 19.993944, 23.902647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.488360, 20.203180, 23.857862>,  <10.307203, 20.551908, 23.783222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.488360, 20.203180, 23.857862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263860, 0.330983, 0.905995,
		-0.851626, -0.361082, 0.379938,
		0.452892, -0.871820, 0.186599,
		10.624228, 19.941635, 23.913841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.067021, 20.479548, 24.500597>,  <10.307203, 20.551908, 23.783222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.067021, 20.479548, 24.500597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.380319, 20.246143, 24.414764>,  <10.568297, 20.106100, 24.363264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.380319, 20.246143, 24.414764>,  <10.067021, 20.479548, 24.500597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.380319, 20.246143, 24.414764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386999, 0.187460, 0.902824,
		-0.486581, -0.790174, 0.372645,
		0.783244, -0.583510, -0.214582,
		10.615292, 20.071091, 24.350389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.111199, 20.052155, 25.084478>,  <10.067021, 20.479548, 24.500597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.111199, 20.052155, 25.084478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.468765, 20.068378, 24.905918>,  <10.683305, 20.078114, 24.798782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.468765, 20.068378, 24.905918>,  <10.111199, 20.052155, 25.084478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.468765, 20.068378, 24.905918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402562, 0.365338, 0.839328,
		0.197130, -0.929991, 0.310253,
		0.893915, 0.040560, -0.446398,
		10.736939, 20.080547, 24.771999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.540870, 19.813469, 25.582336>,  <10.111199, 20.052155, 25.084478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.540870, 19.813469, 25.582336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.793897, 19.997355, 25.333012>,  <10.945713, 20.107687, 25.183416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.793897, 19.997355, 25.333012>,  <10.540870, 19.813469, 25.582336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.793897, 19.997355, 25.333012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565748, 0.275367, 0.777240,
		0.528949, -0.844295, -0.085895,
		0.632568, 0.459716, -0.623313,
		10.983667, 20.135269, 25.146017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.308726, 19.653217, 25.800648>,  <10.540870, 19.813469, 25.582336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.308726, 19.653217, 25.800648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.298236, 19.999216, 25.600212>,  <11.291942, 20.206816, 25.479950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.298236, 19.999216, 25.600212>,  <11.308726, 19.653217, 25.800648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.298236, 19.999216, 25.600212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557558, 0.428710, 0.710871,
		0.829723, -0.260744, -0.493529,
		-0.026226, 0.864997, -0.501091,
		11.290368, 20.258715, 25.449884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.987547, 19.776045, 25.563429>,  <11.308726, 19.653217, 25.800648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.987547, 19.776045, 25.563429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.767946, 20.109398, 25.588953>,  <11.636186, 20.309410, 25.604267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.767946, 20.109398, 25.588953>,  <11.987547, 19.776045, 25.563429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.767946, 20.109398, 25.588953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669695, 0.392922, 0.630175,
		0.500104, 0.388700, -0.773827,
		-0.549003, 0.833381, 0.063808,
		11.603246, 20.359413, 25.608095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.338535, 20.231697, 25.644289>,  <11.987547, 19.776045, 25.563429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.338535, 20.231697, 25.644289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.030410, 20.455847, 25.766008>,  <11.845534, 20.590336, 25.839041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.030410, 20.455847, 25.766008>,  <12.338535, 20.231697, 25.644289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.030410, 20.455847, 25.766008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606868, 0.497741, 0.619649,
		0.195771, 0.661995, -0.723489,
		-0.770315, 0.560372, 0.304300,
		11.799315, 20.623959, 25.857298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608493, 20.900642, 25.671118>,  <12.338535, 20.231697, 25.644289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.608493, 20.900642, 25.671118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.292177, 20.869061, 25.913908>,  <12.102387, 20.850111, 26.059582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.292177, 20.869061, 25.913908>,  <12.608493, 20.900642, 25.671118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.292177, 20.869061, 25.913908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567790, 0.275763, 0.775609,
		-0.228617, 0.957978, -0.173242,
		-0.790790, -0.078953, 0.606974,
		12.054940, 20.845375, 26.096001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.188924, 21.414652, 25.650951>,  <12.608493, 20.900642, 25.671118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.188924, 21.414652, 25.650951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.563204, 21.519796, 25.556829>,  <13.787772, 21.582884, 25.500357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.563204, 21.519796, 25.556829>,  <13.188924, 21.414652, 25.650951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.563204, 21.519796, 25.556829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200329, -0.153137, -0.967687,
		-0.290402, 0.952603, -0.090631,
		0.935700, 0.262862, -0.235306,
		13.843914, 21.598656, 25.486238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.134754, 21.678755, 25.032270>,  <13.188924, 21.414652, 25.650951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.134754, 21.678755, 25.032270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.530973, 21.624331, 25.039194>,  <13.768705, 21.591675, 25.043348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.530973, 21.624331, 25.039194>,  <13.134754, 21.678755, 25.032270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.530973, 21.624331, 25.039194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015540, -0.236729, -0.971451,
		0.136276, 0.962001, -0.236607,
		0.990549, -0.136062, 0.017311,
		13.828138, 21.583511, 25.044388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.511413, 22.124121, 24.544140>,  <13.134754, 21.678755, 25.032270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.511413, 22.124121, 24.544140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.785299, 21.839520, 24.607290>,  <13.949632, 21.668758, 24.645180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.785299, 21.839520, 24.607290>,  <13.511413, 22.124121, 24.544140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.785299, 21.839520, 24.607290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062464, -0.158534, -0.985376,
		0.726127, 0.684565, -0.064108,
		0.684717, -0.711504, 0.157876,
		13.990714, 21.626068, 24.654654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.114464, 22.356079, 24.161148>,  <13.511413, 22.124121, 24.544140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.114464, 22.356079, 24.161148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.135517, 21.960125, 24.213848>,  <14.148149, 21.722553, 24.245468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.135517, 21.960125, 24.213848>,  <14.114464, 22.356079, 24.161148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135517, 21.960125, 24.213848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102968, -0.125852, -0.986691,
		0.993291, 0.065500, 0.095303,
		0.052634, -0.989884, 0.131752,
		14.151307, 21.663160, 24.253374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.740819, 22.032852, 23.712536>,  <14.114464, 22.356079, 24.161148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.740819, 22.032852, 23.712536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.480035, 21.742151, 23.799053>,  <14.323565, 21.567732, 23.850964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.480035, 21.742151, 23.799053>,  <14.740819, 22.032852, 23.712536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.480035, 21.742151, 23.799053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166613, -0.140974, -0.975893,
		0.739722, -0.672279, -0.029177,
		-0.651959, -0.726751, 0.216292,
		14.284447, 21.524126, 23.863941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.893328, 21.599873, 23.213673>,  <14.740819, 22.032852, 23.712536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.893328, 21.599873, 23.213673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.541305, 21.470396, 23.352654>,  <14.330091, 21.392710, 23.436043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.541305, 21.470396, 23.352654>,  <14.893328, 21.599873, 23.213673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.541305, 21.470396, 23.352654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305616, -0.173937, -0.936133,
		0.363452, -0.930038, 0.054150,
		-0.880058, -0.323690, 0.347452,
		14.277287, 21.373289, 23.456888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822453, 20.960585, 22.905079>,  <14.893328, 21.599873, 23.213673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822453, 20.960585, 22.905079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.441783, 21.013626, 23.015879>,  <14.213381, 21.045450, 23.082359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.441783, 21.013626, 23.015879>,  <14.822453, 20.960585, 22.905079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.441783, 21.013626, 23.015879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295201, -0.146330, -0.944163,
		-0.084658, -0.980309, 0.178401,
		-0.951676, 0.132595, 0.277000,
		14.156281, 21.053408, 23.098978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.396509, 20.335245, 22.713614>,  <14.822453, 20.960585, 22.905079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.396509, 20.335245, 22.713614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.152369, 20.648989, 22.757889>,  <14.005886, 20.837234, 22.784454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.152369, 20.648989, 22.757889>,  <14.396509, 20.335245, 22.713614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.152369, 20.648989, 22.757889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336334, -0.130094, -0.932714,
		-0.717184, -0.606509, 0.343210,
		-0.610349, 0.784361, 0.110688,
		13.969265, 20.884296, 22.791096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.701245, 20.029247, 22.575096>,  <14.396509, 20.335245, 22.713614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.701245, 20.029247, 22.575096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.683494, 20.423542, 22.510160>,  <13.672843, 20.660118, 22.471199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.683494, 20.423542, 22.510160>,  <13.701245, 20.029247, 22.575096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.683494, 20.423542, 22.510160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477841, -0.163650, -0.863068,
		-0.877324, 0.039271, 0.478288,
		-0.044379, 0.985737, -0.162339,
		13.670180, 20.719263, 22.461458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.126421, 20.116001, 22.219801>,  <13.701245, 20.029247, 22.575096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.126421, 20.116001, 22.219801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.341047, 20.446527, 22.151335>,  <13.469823, 20.644844, 22.110254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.341047, 20.446527, 22.151335>,  <13.126421, 20.116001, 22.219801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.341047, 20.446527, 22.151335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242791, -0.043091, -0.969121,
		-0.808177, 0.561554, 0.177501,
		0.536565, 0.826317, -0.171166,
		13.502017, 20.694422, 22.099985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.661781, 20.624563, 21.899656>,  <13.126421, 20.116001, 22.219801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.661781, 20.624563, 21.899656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.014804, 20.772158, 21.783077>,  <13.226618, 20.860714, 21.713129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.014804, 20.772158, 21.783077>,  <12.661781, 20.624563, 21.899656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014804, 20.772158, 21.783077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279623, -0.086460, -0.956209,
		-0.378027, 0.925404, 0.026871,
		0.882557, 0.368987, -0.291449,
		13.279571, 20.882854, 21.695642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.518209, 21.112837, 21.334862>,  <12.661781, 20.624563, 21.899656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.518209, 21.112837, 21.334862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.908740, 21.032385, 21.303038>,  <13.143059, 20.984114, 21.283943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.908740, 21.032385, 21.303038>,  <12.518209, 21.112837, 21.334862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.908740, 21.032385, 21.303038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114640, -0.169266, -0.978880,
		0.183417, 0.964829, -0.188316,
		0.976328, -0.201132, -0.079562,
		13.201638, 20.972046, 21.279169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.630533, 21.404854, 20.732933>,  <12.518209, 21.112837, 21.334862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.630533, 21.404854, 20.732933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.929492, 21.151987, 20.814678>,  <13.108868, 21.000267, 20.863726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.929492, 21.151987, 20.814678>,  <12.630533, 21.404854, 20.732933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.929492, 21.151987, 20.814678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019516, -0.286576, -0.957859,
		0.664091, 0.719889, -0.201849,
		0.747397, -0.632166, 0.204362,
		13.153711, 20.962337, 20.875986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.120917, 21.639587, 20.296745>,  <12.630533, 21.404854, 20.732933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.120917, 21.639587, 20.296745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.219192, 21.265478, 20.398649>,  <13.278156, 21.041012, 20.459791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.219192, 21.265478, 20.398649>,  <13.120917, 21.639587, 20.296745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.219192, 21.265478, 20.398649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157545, -0.297846, -0.941524,
		0.956461, 0.191183, -0.220524,
		0.245685, -0.935274, 0.254759,
		13.292897, 20.984896, 20.475077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<4.961881, 3.721181, 7.680028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.712406, 3.477393, 7.484248>,  <4.562721, 3.331120, 7.366780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.712406, 3.477393, 7.484248>,  <4.961881, 3.721181, 7.680028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.712406, 3.477393, 7.484248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384541, 0.305919, -0.870943,
		0.680545, -0.731409, 0.043568,
		-0.623687, -0.609470, -0.489449,
		4.525300, 3.294552, 7.337413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.755612, 3.336998, 8.235204>,  <4.961881, 3.721181, 7.680028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.755612, 3.336998, 8.235204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.130318, 3.457839, 8.164545>,  <5.355142, 3.530343, 8.122149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.130318, 3.457839, 8.164545>,  <4.755612, 3.336998, 8.235204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.130318, 3.457839, 8.164545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178890, 0.847210, 0.500233,
		0.300778, -0.437001, 0.847681,
		0.936766, 0.302101, -0.176646,
		5.411348, 3.548469, 8.111551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.121605, 3.391194, 8.911143>,  <4.755612, 3.336998, 8.235204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.121605, 3.391194, 8.911143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.269261, 3.641952, 8.636702>,  <5.357855, 3.792407, 8.472036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.269261, 3.641952, 8.636702>,  <5.121605, 3.391194, 8.911143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.269261, 3.641952, 8.636702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227893, 0.776761, 0.587118,
		0.901000, -0.060370, 0.429597,
		0.369139, 0.626895, -0.686104,
		5.380003, 3.830020, 8.430870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.711021, 3.811858, 9.182920>,  <5.121605, 3.391194, 8.911143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.711021, 3.811858, 9.182920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.474058, 3.975147, 8.905097>,  <5.331881, 4.073121, 8.738403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.474058, 3.975147, 8.905097>,  <5.711021, 3.811858, 9.182920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.474058, 3.975147, 8.905097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122226, 0.806598, 0.578326,
		0.796313, 0.427497, -0.427939,
		-0.592407, 0.408224, -0.694556,
		5.296336, 4.097614, 8.696731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.014148, 4.512688, 8.799179>,  <5.711021, 3.811858, 9.182920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.014148, 4.512688, 8.799179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.626820, 4.449673, 8.876676>,  <5.394423, 4.411864, 8.923174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.626820, 4.449673, 8.876676>,  <6.014148, 4.512688, 8.799179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.626820, 4.449673, 8.876676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019526, 0.821270, 0.570206,
		-0.248943, 0.548359, -0.798329,
		-0.968321, -0.157537, 0.193742,
		5.336323, 4.402412, 8.934798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.667755, 5.195590, 8.593750>,  <6.014148, 4.512688, 8.799179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.667755, 5.195590, 8.593750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.496536, 4.994768, 8.894341>,  <5.393805, 4.874275, 9.074697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.496536, 4.994768, 8.894341>,  <5.667755, 5.195590, 8.593750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.496536, 4.994768, 8.894341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022368, 0.825364, 0.564157,
		-0.903480, 0.258295, -0.342064,
		-0.428046, -0.502053, 0.751478,
		5.368122, 4.844152, 9.119784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.149141, 5.540257, 8.744077>,  <5.667755, 5.195590, 8.593750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.149141, 5.540257, 8.744077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.260648, 5.347205, 9.076186>,  <5.327553, 5.231373, 9.275452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.260648, 5.347205, 9.076186>,  <5.149141, 5.540257, 8.744077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.260648, 5.347205, 9.076186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026240, 0.860396, 0.508950,
		-0.960000, -0.163666, 0.227186,
		0.278768, -0.482631, 0.830274,
		5.344279, 5.202415, 9.325269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.754946, 5.831378, 9.277143>,  <5.149141, 5.540257, 8.744077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.754946, 5.831378, 9.277143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.091244, 5.666192, 9.417204>,  <5.293023, 5.567080, 9.501241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.091244, 5.666192, 9.417204>,  <4.754946, 5.831378, 9.277143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.091244, 5.666192, 9.417204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084858, 0.739231, 0.668084,
		-0.534740, -0.531975, 0.656548,
		0.840745, -0.412965, 0.350155,
		5.343467, 5.542302, 9.522250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.784050, 5.615120, 10.018205>,  <4.754946, 5.831378, 9.277143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.784050, 5.615120, 10.018205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.133195, 5.755756, 9.882856>,  <5.342682, 5.840138, 9.801647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.133195, 5.755756, 9.882856>,  <4.784050, 5.615120, 10.018205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.133195, 5.755756, 9.882856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084279, 0.791635, 0.605154,
		0.480632, -0.499698, 0.720620,
		0.872863, 0.351590, -0.338371,
		5.395054, 5.861233, 9.781344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.153013, 5.787589, 10.572929>,  <4.784050, 5.615120, 10.018205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.153013, 5.787589, 10.572929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.318615, 5.997865, 10.275676>,  <5.417977, 6.124031, 10.097323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.318615, 5.997865, 10.275676>,  <5.153013, 5.787589, 10.572929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.318615, 5.997865, 10.275676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010508, 0.813570, 0.581371,
		0.910214, -0.248499, 0.331298,
		0.414005, 0.525691, -0.743135,
		5.442817, 6.155572, 10.052735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.881841, 6.080739, 10.720342>,  <5.153013, 5.787589, 10.572929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.881841, 6.080739, 10.720342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.684931, 6.291739, 10.443385>,  <5.566784, 6.418340, 10.277211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.684931, 6.291739, 10.443385>,  <5.881841, 6.080739, 10.720342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.684931, 6.291739, 10.443385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120346, 0.829057, 0.546059,
		0.862079, 0.185486, -0.471608,
		-0.492276, 0.527503, -0.692391,
		5.537248, 6.449990, 10.235668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.316399, 6.694712, 10.569517>,  <5.881841, 6.080739, 10.720342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.316399, 6.694712, 10.569517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.943009, 6.782401, 10.455978>,  <5.718975, 6.835014, 10.387856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.943009, 6.782401, 10.455978>,  <6.316399, 6.694712, 10.569517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.943009, 6.782401, 10.455978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093286, 0.912610, 0.398047,
		0.346301, 0.345088, -0.872347,
		-0.933474, 0.219222, -0.283846,
		5.662967, 6.848167, 10.370825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.325635, 7.383320, 10.429143>,  <6.316399, 6.694712, 10.569517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.325635, 7.383320, 10.429143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.928411, 7.338435, 10.443213>,  <5.690076, 7.311504, 10.451654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.928411, 7.338435, 10.443213>,  <6.325635, 7.383320, 10.429143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.928411, 7.338435, 10.443213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074816, 0.833645, 0.547210,
		-0.090726, 0.540782, -0.836256,
		-0.993062, -0.112211, 0.035174,
		5.630493, 7.304772, 10.453765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.889627, 7.921973, 10.058837>,  <6.325635, 7.383320, 10.429143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.889627, 7.921973, 10.058837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.633209, 7.796243, 10.338911>,  <5.479358, 7.720806, 10.506956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.633209, 7.796243, 10.338911>,  <5.889627, 7.921973, 10.058837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.633209, 7.796243, 10.338911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106431, 0.939884, 0.324485,
		-0.760087, 0.133488, -0.635963,
		-0.641046, -0.314323, 0.700186,
		5.440895, 7.701946, 10.548967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.243248, 8.424379, 9.997686>,  <5.889627, 7.921973, 10.058837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.243248, 8.424379, 9.997686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.241524, 8.246985, 10.356195>,  <5.240489, 8.140549, 10.571301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.241524, 8.246985, 10.356195>,  <5.243248, 8.424379, 9.997686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.241524, 8.246985, 10.356195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130466, 0.888869, 0.439194,
		-0.991444, -0.115040, -0.061691,
		-0.004311, -0.443484, 0.896272,
		5.240231, 8.113940, 10.625077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.571785, 8.634451, 10.370303>,  <5.243248, 8.424379, 9.997686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.571785, 8.634451, 10.370303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.821568, 8.526739, 10.663571>,  <4.971438, 8.462111, 10.839533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.821568, 8.526739, 10.663571>,  <4.571785, 8.634451, 10.370303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.821568, 8.526739, 10.663571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194569, 0.855467, 0.479915,
		-0.756436, -0.442339, 0.481810,
		0.624458, -0.269280, 0.733172,
		5.008906, 8.445955, 10.883523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.165394, 8.624748, 10.999773>,  <4.571785, 8.634451, 10.370303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.165394, 8.624748, 10.999773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.539804, 8.670900, 11.132768>,  <4.764450, 8.698591, 11.212564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.539804, 8.670900, 11.132768>,  <4.165394, 8.624748, 10.999773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.539804, 8.670900, 11.132768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305231, 0.736438, 0.603733,
		-0.175197, -0.666593, 0.724541,
		0.936023, 0.115380, 0.332487,
		4.820611, 8.705514, 11.232513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.121358, 8.803068, 11.726709>,  <4.165394, 8.624748, 10.999773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.121358, 8.803068, 11.726709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.497266, 8.909240, 11.640568>,  <4.722811, 8.972943, 11.588882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.497266, 8.909240, 11.640568>,  <4.121358, 8.803068, 11.726709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.497266, 8.909240, 11.640568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099785, 0.815653, 0.569871,
		0.326915, -0.514059, 0.793013,
		0.939771, 0.265430, -0.215354,
		4.779198, 8.988869, 11.575962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.359708, 8.997198, 12.415613>,  <4.121358, 8.803068, 11.726709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.359708, 8.997198, 12.415613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.586088, 9.166645, 12.132700>,  <4.721915, 9.268313, 11.962952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.586088, 9.166645, 12.132700>,  <4.359708, 8.997198, 12.415613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.586088, 9.166645, 12.132700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096804, 0.886106, 0.453260,
		0.818737, -0.188055, 0.542500,
		0.565950, 0.423617, -0.707283,
		4.755872, 9.293730, 11.920515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.814866, 9.419580, 12.789885>,  <4.359708, 8.997198, 12.415613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.814866, 9.419580, 12.789885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.796366, 9.540163, 12.408941>,  <4.785266, 9.612513, 12.180375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.796366, 9.540163, 12.408941>,  <4.814866, 9.419580, 12.789885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.796366, 9.540163, 12.408941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011161, 0.953475, 0.301267,
		0.998868, 0.003304, -0.047462,
		-0.046249, 0.301455, -0.952358,
		4.782491, 9.630600, 12.123234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.392023, 9.775748, 12.605675>,  <4.814866, 9.419580, 12.789885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.392023, 9.775748, 12.605675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.116020, 9.928023, 12.359433>,  <4.950418, 10.019388, 12.211688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.116020, 9.928023, 12.359433>,  <5.392023, 9.775748, 12.605675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.116020, 9.928023, 12.359433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104880, 0.894122, 0.435368,
		0.716164, 0.235842, -0.656877,
		-0.690007, 0.380688, -0.615603,
		4.909018, 10.042230, 12.174752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.579429, 10.488129, 12.508374>,  <5.392023, 9.775748, 12.605675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.579429, 10.488129, 12.508374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.197554, 10.496907, 12.389653>,  <4.968429, 10.502174, 12.318420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.197554, 10.496907, 12.389653>,  <5.579429, 10.488129, 12.508374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.197554, 10.496907, 12.389653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104784, 0.908633, 0.404236,
		0.278555, 0.417019, -0.865160,
		-0.954687, 0.021947, -0.296802,
		4.911148, 10.503491, 12.300612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.543284, 11.144552, 12.160812>,  <5.579429, 10.488129, 12.508374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.543284, 11.144552, 12.160812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.160165, 11.048120, 12.223427>,  <4.930294, 10.990260, 12.260996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.160165, 11.048120, 12.223427>,  <5.543284, 11.144552, 12.160812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.160165, 11.048120, 12.223427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161722, 0.902175, 0.399909,
		-0.237633, 0.357716, -0.903089,
		-0.957798, -0.241081, 0.156536,
		4.872826, 10.975796, 12.270388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.193569, 11.758005, 11.950321>,  <5.543284, 11.144552, 12.160812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.193569, 11.758005, 11.950321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.885244, 11.577767, 12.130461>,  <4.700250, 11.469625, 12.238544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.885244, 11.577767, 12.130461>,  <5.193569, 11.758005, 11.950321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.885244, 11.577767, 12.130461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194685, 0.839707, 0.506942,
		-0.606587, 0.303080, -0.734979,
		-0.770811, -0.450594, 0.450350,
		4.654001, 11.442589, 12.265566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.689791, 12.162827, 11.898232>,  <5.193569, 11.758005, 11.950321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.689791, 12.162827, 11.898232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.581985, 11.947566, 12.217669>,  <4.517302, 11.818409, 12.409332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.581985, 11.947566, 12.217669>,  <4.689791, 12.162827, 11.898232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.581985, 11.947566, 12.217669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086862, 0.839486, 0.536393,
		-0.959071, 0.075198, -0.272998,
		-0.269514, -0.538153, 0.798595,
		4.501131, 11.786120, 12.457248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.130233, 12.606963, 12.167645>,  <4.689791, 12.162827, 11.898232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.130233, 12.606963, 12.167645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.239168, 12.361536, 12.464122>,  <4.304529, 12.214280, 12.642008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.239168, 12.361536, 12.464122>,  <4.130233, 12.606963, 12.167645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.239168, 12.361536, 12.464122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005791, 0.771341, 0.636396,
		-0.962184, -0.169023, 0.213619,
		0.272339, -0.613567, 0.741193,
		4.320870, 12.177465, 12.686480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.639502, 12.693172, 12.741488>,  <4.130233, 12.606963, 12.167645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.639502, 12.693172, 12.741488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.977950, 12.545820, 12.895570>,  <4.181018, 12.457410, 12.988019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.977950, 12.545820, 12.895570>,  <3.639502, 12.693172, 12.741488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.977950, 12.545820, 12.895570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091012, 0.811957, 0.576578,
		-0.525167, -0.452795, 0.720538,
		0.846118, -0.368378, 0.385203,
		4.231785, 12.435307, 13.011130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.619454, 12.721011, 13.533140>,  <3.639502, 12.693172, 12.741488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.619454, 12.721011, 13.533140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.999398, 12.729304, 13.408346>,  <4.227365, 12.734281, 13.333469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.999398, 12.729304, 13.408346>,  <3.619454, 12.721011, 13.533140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.999398, 12.729304, 13.408346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158418, 0.828338, 0.537364,
		0.269570, -0.559845, 0.783521,
		0.949861, 0.020734, -0.311985,
		4.284356, 12.735524, 13.314751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.898495, 12.938839, 14.140364>,  <3.619454, 12.721011, 13.533140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.898495, 12.938839, 14.140364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.143129, 13.008872, 13.831738>,  <4.289909, 13.050892, 13.646562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.143129, 13.008872, 13.831738>,  <3.898495, 12.938839, 14.140364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.143129, 13.008872, 13.831738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310614, 0.843776, 0.437677,
		0.727657, -0.507335, 0.461656,
		0.611584, 0.175082, -0.771565,
		4.326604, 13.061397, 13.600268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.472445, 13.298714, 14.410546>,  <3.898495, 12.938839, 14.140364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.472445, 13.298714, 14.410546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.508985, 13.375483, 14.019687>,  <4.530908, 13.421544, 13.785171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.508985, 13.375483, 14.019687>,  <4.472445, 13.298714, 14.410546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.508985, 13.375483, 14.019687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264334, 0.941378, 0.209608,
		0.960096, -0.277441, 0.035261,
		0.091348, 0.191923, -0.977150,
		4.536389, 13.433060, 13.726542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.089988, 13.601691, 14.351778>,  <4.472445, 13.298714, 14.410546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.089988, 13.601691, 14.351778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.899887, 13.709199, 14.016661>,  <4.785826, 13.773704, 13.815590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.899887, 13.709199, 14.016661>,  <5.089988, 13.601691, 14.351778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.899887, 13.709199, 14.016661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376344, 0.922795, 0.082550,
		0.795299, -0.276066, -0.539711,
		-0.475253, 0.268769, -0.837794,
		4.757311, 13.789829, 13.765323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.753319, 13.977784, 14.626129>,  <5.089988, 13.601691, 14.351778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.753319, 13.977784, 14.626129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.007104, 14.286612, 14.611329>,  <6.159375, 14.471908, 14.602449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.007104, 14.286612, 14.611329>,  <5.753319, 13.977784, 14.626129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.007104, 14.286612, 14.611329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327313, -0.311724, -0.892017,
		-0.700231, 0.553841, -0.450485,
		0.634463, 0.772067, -0.036999,
		6.197443, 14.518231, 14.600229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.691022, 14.318910, 13.938213>,  <5.753319, 13.977784, 14.626129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.691022, 14.318910, 13.938213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.053866, 14.403979, 14.083497>,  <6.271572, 14.455021, 14.170668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.053866, 14.403979, 14.083497>,  <5.691022, 14.318910, 13.938213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.053866, 14.403979, 14.083497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408806, -0.239870, -0.880534,
		-0.100144, 0.947223, -0.304532,
		0.907110, 0.212675, 0.363209,
		6.325999, 14.467782, 14.192460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.978062, 14.652573, 13.393472>,  <5.691022, 14.318910, 13.938213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.978062, 14.652573, 13.393472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.259417, 14.510766, 13.639907>,  <6.428229, 14.425682, 13.787768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.259417, 14.510766, 13.639907>,  <5.978062, 14.652573, 13.393472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.259417, 14.510766, 13.639907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471077, -0.416567, -0.777533,
		0.532291, 0.837132, -0.126002,
		0.703386, -0.354517, 0.616089,
		6.470432, 14.404410, 13.824734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.616786, 14.736372, 13.008346>,  <5.978062, 14.652573, 13.393472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.616786, 14.736372, 13.008346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.711867, 14.483154, 13.303032>,  <6.768916, 14.331223, 13.479844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.711867, 14.483154, 13.303032>,  <6.616786, 14.736372, 13.008346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.711867, 14.483154, 13.303032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514289, -0.561399, -0.648335,
		0.824017, 0.532996, 0.192122,
		0.237703, -0.633045, 0.736716,
		6.783178, 14.293241, 13.524047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.239477, 14.528863, 12.770238>,  <6.616786, 14.736372, 13.008346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.239477, 14.528863, 12.770238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.147686, 14.241598, 13.033017>,  <7.092610, 14.069240, 13.190685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.147686, 14.241598, 13.033017>,  <7.239477, 14.528863, 12.770238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.147686, 14.241598, 13.033017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314023, -0.693496, -0.648423,
		0.921265, 0.057498, 0.384662,
		-0.229479, -0.718162, 0.656949,
		7.078842, 14.026150, 13.230102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.796154, 14.150798, 12.916948>,  <7.239477, 14.528863, 12.770238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.796154, 14.150798, 12.916948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.486552, 13.906439, 12.983542>,  <7.300790, 13.759824, 13.023499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.486552, 13.906439, 12.983542>,  <7.796154, 14.150798, 12.916948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.486552, 13.906439, 12.983542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237804, -0.524155, -0.817747,
		0.586824, -0.593351, 0.550974,
		-0.774007, -0.610897, 0.166485,
		7.254350, 13.723169, 13.033488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.092370, 13.465781, 12.901255>,  <7.796154, 14.150798, 12.916948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.092370, 13.465781, 12.901255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.702764, 13.404912, 12.834159>,  <7.469000, 13.368390, 12.793901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.702764, 13.404912, 12.834159>,  <8.092370, 13.465781, 12.901255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.702764, 13.404912, 12.834159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226160, -0.692869, -0.684678,
		-0.012032, -0.704823, 0.709281,
		-0.974016, -0.152174, -0.167739,
		7.410559, 13.359260, 12.783837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.997767, 12.758995, 13.029119>,  <8.092370, 13.465781, 12.901255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.997767, 12.758995, 13.029119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.688601, 12.885409, 12.809039>,  <7.503100, 12.961258, 12.676991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.688601, 12.885409, 12.809039>,  <7.997767, 12.758995, 13.029119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.688601, 12.885409, 12.809039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087122, -0.806057, -0.585391,
		-0.628496, -0.500394, 0.595482,
		-0.772918, 0.316036, -0.550199,
		7.456725, 12.980221, 12.643979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.659994, 12.185030, 12.912084>,  <7.997767, 12.758995, 13.029119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.659994, 12.185030, 12.912084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.518014, 12.415318, 12.617449>,  <7.432826, 12.553490, 12.440668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.518014, 12.415318, 12.617449>,  <7.659994, 12.185030, 12.912084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.518014, 12.415318, 12.617449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202936, -0.721655, -0.661839,
		-0.912594, -0.384400, 0.139317,
		-0.354950, 0.575718, -0.736586,
		7.411529, 12.588033, 12.396473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.215725, 11.827511, 12.533917>,  <7.659994, 12.185030, 12.912084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.215725, 11.827511, 12.533917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.241776, 12.130134, 12.273647>,  <7.257407, 12.311707, 12.117485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.241776, 12.130134, 12.273647>,  <7.215725, 11.827511, 12.533917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.241776, 12.130134, 12.273647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069198, -0.647066, -0.759288,
		-0.995475, 0.094477, 0.010209,
		0.065129, 0.756558, -0.650675,
		7.261315, 12.357101, 12.078444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.753732, 11.660679, 12.047595>,  <7.215725, 11.827511, 12.533917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.753732, 11.660679, 12.047595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.010886, 11.916107, 11.878395>,  <7.165178, 12.069365, 11.776875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.010886, 11.916107, 11.878395>,  <6.753732, 11.660679, 12.047595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.010886, 11.916107, 11.878395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080233, -0.605347, -0.791908,
		-0.761750, 0.475166, -0.440402,
		0.642883, 0.638571, -0.422999,
		7.203751, 12.107678, 11.751495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.537750, 11.812169, 11.364810>,  <6.753732, 11.660679, 12.047595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.537750, 11.812169, 11.364810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.931300, 11.883696, 11.363209>,  <7.167429, 11.926612, 11.362248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.931300, 11.883696, 11.363209>,  <6.537750, 11.812169, 11.364810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.931300, 11.883696, 11.363209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100935, -0.573548, -0.812930,
		-0.147661, 0.799417, -0.582348,
		0.983874, 0.178817, -0.004002,
		7.226462, 11.937341, 11.362008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.765280, 11.969964, 10.677002>,  <6.537750, 11.812169, 11.364810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.765280, 11.969964, 10.677002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.115407, 11.862496, 10.837817>,  <7.325484, 11.798016, 10.934306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.115407, 11.862496, 10.837817>,  <6.765280, 11.969964, 10.677002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.115407, 11.862496, 10.837817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137914, -0.658189, -0.740113,
		0.463462, 0.703281, -0.539072,
		0.875319, -0.268668, 0.402038,
		7.378003, 11.781896, 10.958428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.201974, 11.822552, 10.109711>,  <6.765280, 11.969964, 10.677002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.201974, 11.822552, 10.109711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.402824, 11.662417, 10.416331>,  <7.523335, 11.566337, 10.600304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.402824, 11.662417, 10.416331>,  <7.201974, 11.822552, 10.109711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.402824, 11.662417, 10.416331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325338, -0.733833, -0.596359,
		0.801265, 0.548835, -0.238232,
		0.502126, -0.400336, 0.766551,
		7.553462, 11.542316, 10.646297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.851991, 11.670248, 9.884856>,  <7.201974, 11.822552, 10.109711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.851991, 11.670248, 9.884856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.795657, 11.422295, 10.193637>,  <7.761856, 11.273522, 10.378905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.795657, 11.422295, 10.193637>,  <7.851991, 11.670248, 9.884856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.795657, 11.422295, 10.193637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153216, -0.783977, -0.601586,
		0.978105, 0.033551, 0.205388,
		-0.140836, -0.619883, 0.771952,
		7.753406, 11.236330, 10.425222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.346455, 11.243171, 9.785391>,  <7.851991, 11.670248, 9.884856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.346455, 11.243171, 9.785391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.128533, 11.027165, 10.042007>,  <7.997780, 10.897562, 10.195977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.128533, 11.027165, 10.042007>,  <8.346455, 11.243171, 9.785391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.128533, 11.027165, 10.042007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019636, -0.773054, -0.634036,
		0.838334, -0.332828, 0.431767,
		-0.544804, -0.540012, 0.641542,
		7.965092, 10.865162, 10.234469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.675281, 10.598368, 9.889373>,  <8.346455, 11.243171, 9.785391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.675281, 10.598368, 9.889373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.291468, 10.541989, 9.986886>,  <8.061180, 10.508162, 10.045394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.291468, 10.541989, 9.986886>,  <8.675281, 10.598368, 9.889373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.291468, 10.541989, 9.986886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058574, -0.946685, -0.316791,
		0.275437, -0.289692, 0.916631,
		-0.959533, -0.140947, 0.243784,
		8.003608, 10.499705, 10.060021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.752354, 9.872483, 10.200496>,  <8.675281, 10.598368, 9.889373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.752354, 9.872483, 10.200496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.364771, 9.945683, 10.134005>,  <8.132221, 9.989604, 10.094110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.364771, 9.945683, 10.134005>,  <8.752354, 9.872483, 10.200496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.364771, 9.945683, 10.134005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149138, -0.968922, -0.197354,
		-0.197177, -0.166436, 0.966137,
		-0.968958, 0.183001, -0.166227,
		8.074083, 10.000584, 10.084136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.410513, 9.345828, 10.577033>,  <8.752354, 9.872483, 10.200496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.410513, 9.345828, 10.577033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.171568, 9.483059, 10.287079>,  <8.028201, 9.565397, 10.113107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.171568, 9.483059, 10.287079>,  <8.410513, 9.345828, 10.577033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.171568, 9.483059, 10.287079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217932, -0.939308, -0.264965,
		-0.771793, -0.000305, 0.635874,
		-0.597362, 0.343076, -0.724884,
		7.992359, 9.585981, 10.069613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.867846, 8.957380, 10.668226>,  <8.410513, 9.345828, 10.577033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.867846, 8.957380, 10.668226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.785800, 9.090155, 10.299933>,  <7.736571, 9.169819, 10.078958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.785800, 9.090155, 10.299933>,  <7.867846, 8.957380, 10.668226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.785800, 9.090155, 10.299933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132476, -0.941492, -0.309907,
		-0.969731, 0.058408, 0.237089,
		-0.205116, 0.331935, -0.920732,
		7.724265, 9.189735, 10.023714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.247889, 8.758652, 10.557780>,  <7.867846, 8.957380, 10.668226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.247889, 8.758652, 10.557780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.448983, 8.765973, 10.212082>,  <7.569639, 8.770366, 10.004663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.448983, 8.765973, 10.212082>,  <7.247889, 8.758652, 10.557780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.448983, 8.765973, 10.212082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236478, -0.958727, -0.157866,
		-0.831466, 0.283740, -0.477658,
		0.502736, 0.018304, -0.864246,
		7.599803, 8.771464, 9.952808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.691059, 21.137325, 25.525717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.508986, 20.794493, 25.622231>,  <17.399742, 20.588793, 25.680138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.508986, 20.794493, 25.622231>,  <17.691059, 21.137325, 25.525717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.508986, 20.794493, 25.622231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065370, 0.302420, 0.950931,
		-0.887995, 0.417075, -0.193684,
		-0.455184, -0.857083, 0.241283,
		17.372431, 20.537369, 25.694616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.995226, 21.260437, 25.806940>,  <17.691059, 21.137325, 25.525717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.995226, 21.260437, 25.806940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.129833, 20.910629, 25.946640>,  <17.210598, 20.700745, 26.030460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.129833, 20.910629, 25.946640>,  <16.995226, 21.260437, 25.806940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.129833, 20.910629, 25.946640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044601, 0.355660, 0.933550,
		-0.940620, -0.329733, 0.080682,
		0.336518, -0.874518, 0.349248,
		17.230789, 20.648273, 26.051414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565678, 21.128521, 26.426764>,  <16.995226, 21.260437, 25.806940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.565678, 21.128521, 26.426764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.898808, 20.909710, 26.460619>,  <17.098684, 20.778423, 26.480932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.898808, 20.909710, 26.460619>,  <16.565678, 21.128521, 26.426764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898808, 20.909710, 26.460619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001274, 0.154801, 0.987945,
		-0.553537, -0.822676, 0.129619,
		0.832824, -0.547029, 0.084639,
		17.148655, 20.745602, 26.486012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458302, 20.668812, 26.958366>,  <16.565678, 21.128521, 26.426764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458302, 20.668812, 26.958366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.850487, 20.736271, 26.917871>,  <17.085798, 20.776747, 26.893574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.850487, 20.736271, 26.917871>,  <16.458302, 20.668812, 26.958366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850487, 20.736271, 26.917871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055704, 0.255557, 0.965188,
		0.188648, -0.951971, 0.241170,
		0.980463, 0.168647, -0.101239,
		17.144627, 20.786865, 26.887499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682037, 20.470007, 27.476686>,  <16.458302, 20.668812, 26.958366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682037, 20.470007, 27.476686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.029289, 20.641924, 27.377384>,  <17.237640, 20.745073, 27.317802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.029289, 20.641924, 27.377384>,  <16.682037, 20.470007, 27.476686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029289, 20.641924, 27.377384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046117, 0.428163, 0.902524,
		0.494194, -0.794955, 0.351880,
		0.868128, 0.429794, -0.248256,
		17.289728, 20.770863, 27.302908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142916, 20.434559, 28.081039>,  <16.682037, 20.470007, 27.476686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.142916, 20.434559, 28.081039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.309544, 20.729116, 27.867802>,  <17.409521, 20.905851, 27.739859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.309544, 20.729116, 27.867802>,  <17.142916, 20.434559, 28.081039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.309544, 20.729116, 27.867802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207981, 0.493650, 0.844425,
		0.884993, -0.462636, 0.052484,
		0.416571, 0.736395, -0.533096,
		17.434515, 20.950035, 27.707872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.695763, 20.588333, 28.532888>,  <17.142916, 20.434559, 28.081039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.695763, 20.588333, 28.532888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.686306, 20.897816, 28.279648>,  <17.680632, 21.083506, 28.127703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.686306, 20.897816, 28.279648>,  <17.695763, 20.588333, 28.532888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.686306, 20.897816, 28.279648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230047, 0.620495, 0.749710,
		0.972892, -0.127919, -0.192659,
		-0.023642, 0.773707, -0.633102,
		17.679213, 21.129929, 28.089718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.383505, 20.877520, 28.643850>,  <17.695763, 20.588333, 28.532888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.383505, 20.877520, 28.643850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.145073, 21.157009, 28.485622>,  <18.002014, 21.324703, 28.390686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.145073, 21.157009, 28.485622>,  <18.383505, 20.877520, 28.643850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.145073, 21.157009, 28.485622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397800, 0.684940, 0.610420,
		0.697457, 0.206500, -0.686230,
		-0.596078, 0.698724, -0.395570,
		17.966249, 21.366627, 28.366951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815865, 21.465990, 28.573109>,  <18.383505, 20.877520, 28.643850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815865, 21.465990, 28.573109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.441328, 21.600874, 28.612209>,  <18.216606, 21.681805, 28.635670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.441328, 21.600874, 28.612209>,  <18.815865, 21.465990, 28.573109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.441328, 21.600874, 28.612209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292236, 0.594250, 0.749310,
		0.194587, 0.730175, -0.654965,
		-0.936341, 0.337211, 0.097750,
		18.160425, 21.702038, 28.641535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878963, 22.157927, 28.755346>,  <18.815865, 21.465990, 28.573109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.878963, 22.157927, 28.755346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.517368, 22.048912, 28.887123>,  <18.300411, 21.983503, 28.966190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.517368, 22.048912, 28.887123>,  <18.878963, 22.157927, 28.755346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.517368, 22.048912, 28.887123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147066, 0.525304, 0.838109,
		-0.401473, 0.806089, -0.434787,
		-0.903986, -0.272536, 0.329443,
		18.246172, 21.967152, 28.985956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.558043, 22.808100, 28.801102>,  <18.878963, 22.157927, 28.755346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.558043, 22.808100, 28.801102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.388288, 22.528967, 29.031902>,  <18.286436, 22.361486, 29.170382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.388288, 22.528967, 29.031902>,  <18.558043, 22.808100, 28.801102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.388288, 22.528967, 29.031902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151658, 0.573448, 0.805082,
		-0.892691, 0.429171, -0.137531,
		-0.424384, -0.697832, 0.576999,
		18.260973, 22.319616, 29.205002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.011862, 23.120575, 29.274103>,  <18.558043, 22.808100, 28.801102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.011862, 23.120575, 29.274103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.124886, 22.768553, 29.426765>,  <18.192699, 22.557339, 29.518362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.124886, 22.768553, 29.426765>,  <18.011862, 23.120575, 29.274103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.124886, 22.768553, 29.426765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110105, 0.424994, 0.898475,
		-0.952910, -0.211849, 0.216985,
		0.282559, -0.880057, 0.381655,
		18.209654, 22.504536, 29.541262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474344, 22.950617, 29.821104>,  <18.011862, 23.120575, 29.274103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474344, 22.950617, 29.821104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.839333, 22.797812, 29.879711>,  <18.058325, 22.706129, 29.914875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.839333, 22.797812, 29.879711>,  <17.474344, 22.950617, 29.821104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.839333, 22.797812, 29.879711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001347, 0.360908, 0.932600,
		-0.409143, -0.850772, 0.329832,
		0.912470, -0.382011, 0.146517,
		18.113073, 22.683208, 29.923666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116428, 22.678383, 30.515409>,  <17.474344, 22.950617, 29.821104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116428, 22.678383, 30.515409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.278360, 22.312796, 30.504234>,  <17.375519, 22.093443, 30.497528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.278360, 22.312796, 30.504234>,  <17.116428, 22.678383, 30.515409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.278360, 22.312796, 30.504234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876558, 0.396595, -0.272687,
		0.260307, 0.085900, 0.961697,
		0.404828, -0.913966, -0.027940,
		17.399809, 22.038607, 30.495852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631912, 23.076916, 30.138737>,  <17.116428, 22.678383, 30.515409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631912, 23.076916, 30.138737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.269245, 23.214151, 30.236914>,  <16.051645, 23.296494, 30.295820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.269245, 23.214151, 30.236914>,  <16.631912, 23.076916, 30.138737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.269245, 23.214151, 30.236914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331634, -0.220121, -0.917369,
		-0.260715, -0.913145, 0.313357,
		-0.906668, 0.343092, 0.245441,
		15.997245, 23.317080, 30.310547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132431, 22.584131, 29.925169>,  <16.631912, 23.076916, 30.138737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.132431, 22.584131, 29.925169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.950874, 22.940014, 29.944778>,  <15.841941, 23.153543, 29.956543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.950874, 22.940014, 29.944778>,  <16.132431, 22.584131, 29.925169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950874, 22.940014, 29.944778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389003, -0.148355, -0.909212,
		-0.801661, -0.431753, 0.413436,
		-0.453890, 0.889708, 0.049023,
		15.814707, 23.206926, 29.959486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455956, 22.424189, 29.808193>,  <16.132431, 22.584131, 29.925169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.455956, 22.424189, 29.808193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.505901, 22.810150, 29.715790>,  <15.535869, 23.041727, 29.660347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.505901, 22.810150, 29.715790>,  <15.455956, 22.424189, 29.808193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505901, 22.810150, 29.715790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534602, -0.130711, -0.834934,
		-0.835828, 0.227752, 0.499520,
		0.124866, 0.964906, -0.231009,
		15.543361, 23.099623, 29.646486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816834, 22.609322, 29.572287>,  <15.455956, 22.424189, 29.808193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.816834, 22.609322, 29.572287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.087049, 22.870930, 29.436104>,  <15.249177, 23.027895, 29.354395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.087049, 22.870930, 29.436104>,  <14.816834, 22.609322, 29.572287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.087049, 22.870930, 29.436104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420814, -0.037168, -0.906385,
		-0.605448, 0.755564, 0.250112,
		0.675536, 0.654019, -0.340455,
		15.289709, 23.067135, 29.333967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.418835, 23.032475, 29.198793>,  <14.816834, 22.609322, 29.572287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.418835, 23.032475, 29.198793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.786839, 23.073072, 29.047384>,  <15.007643, 23.097431, 28.956539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.786839, 23.073072, 29.047384>,  <14.418835, 23.032475, 29.198793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.786839, 23.073072, 29.047384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360692, -0.158368, -0.919141,
		-0.153231, 0.982150, -0.109093,
		0.920012, 0.101492, -0.378521,
		15.062843, 23.103519, 28.933828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.420709, 23.492855, 28.694546>,  <14.418835, 23.032475, 29.198793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.420709, 23.492855, 28.694546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.762853, 23.316517, 28.585724>,  <14.968139, 23.210714, 28.520432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.762853, 23.316517, 28.585724>,  <14.420709, 23.492855, 28.694546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.762853, 23.316517, 28.585724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347887, -0.099708, -0.932220,
		0.383841, 0.892027, -0.238651,
		0.855360, -0.440847, -0.272053,
		15.019461, 23.184263, 28.504108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.556960, 23.661579, 28.028118>,  <14.420709, 23.492855, 28.694546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.556960, 23.661579, 28.028118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.811231, 23.353531, 28.049404>,  <14.963793, 23.168703, 28.062176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.811231, 23.353531, 28.049404>,  <14.556960, 23.661579, 28.028118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.811231, 23.353531, 28.049404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283887, -0.297318, -0.911598,
		0.717860, 0.564375, -0.407624,
		0.635677, -0.770119, 0.053214,
		15.001934, 23.122496, 28.065369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853521, 23.582172, 27.351103>,  <14.556960, 23.661579, 28.028118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.853521, 23.582172, 27.351103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.928764, 23.242510, 27.548508>,  <14.973910, 23.038713, 27.666950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.928764, 23.242510, 27.548508>,  <14.853521, 23.582172, 27.351103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.928764, 23.242510, 27.548508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122515, -0.518843, -0.846045,
		0.974477, 0.098685, -0.201632,
		0.188107, -0.849155, 0.493510,
		14.985196, 22.987764, 27.696560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346332, 23.238432, 27.006927>,  <14.853521, 23.582172, 27.351103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.346332, 23.238432, 27.006927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.142791, 22.958839, 27.207924>,  <15.020666, 22.791084, 27.328522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.142791, 22.958839, 27.207924>,  <15.346332, 23.238432, 27.006927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.142791, 22.958839, 27.207924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109810, -0.526239, -0.843217,
		0.853821, -0.484252, 0.191023,
		-0.508853, -0.698980, 0.502490,
		14.990135, 22.749146, 27.358671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.611446, 22.562883, 26.775339>,  <15.346332, 23.238432, 27.006927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.611446, 22.562883, 26.775339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.248873, 22.508673, 26.935343>,  <15.031328, 22.476147, 27.031345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.248873, 22.508673, 26.935343>,  <15.611446, 22.562883, 26.775339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.248873, 22.508673, 26.935343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247101, -0.597916, -0.762520,
		0.342516, -0.790018, 0.508483,
		-0.906435, -0.135528, 0.400010,
		14.976942, 22.468014, 27.055346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389543, 21.751129, 26.624104>,  <15.611446, 22.562883, 26.775339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389543, 21.751129, 26.624104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.041748, 21.910038, 26.741524>,  <14.833072, 22.005383, 26.811975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.041748, 21.910038, 26.741524>,  <15.389543, 21.751129, 26.624104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041748, 21.910038, 26.741524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457674, -0.424367, -0.781311,
		-0.185819, -0.813689, 0.550802,
		-0.869486, 0.397270, 0.293549,
		14.780902, 22.029219, 26.829588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.856772, 21.204357, 26.760427>,  <15.389543, 21.751129, 26.624104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.856772, 21.204357, 26.760427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.681694, 21.549812, 26.660385>,  <14.576647, 21.757086, 26.600361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.681694, 21.549812, 26.660385>,  <14.856772, 21.204357, 26.760427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.681694, 21.549812, 26.660385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310001, -0.406062, -0.859659,
		-0.843992, -0.298736, 0.445460,
		-0.437696, 0.863638, -0.250104,
		14.550385, 21.808903, 26.585354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.142939, 20.989637, 26.637598>,  <14.856772, 21.204357, 26.760427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.142939, 20.989637, 26.637598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.206938, 21.339836, 26.455210>,  <14.245337, 21.549955, 26.345778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.206938, 21.339836, 26.455210>,  <14.142939, 20.989637, 26.637598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.206938, 21.339836, 26.455210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167336, -0.431179, -0.886613,
		-0.972831, 0.218156, 0.077515,
		0.159997, 0.875496, -0.455969,
		14.254937, 21.602486, 26.318419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.661234, 21.011095, 26.138023>,  <14.142939, 20.989637, 26.637598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.661234, 21.011095, 26.138023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.895920, 21.308611, 26.009937>,  <14.036732, 21.487122, 25.933084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.895920, 21.308611, 26.009937>,  <13.661234, 21.011095, 26.138023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.895920, 21.308611, 26.009937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065915, -0.350253, -0.934333,
		-0.807106, 0.569295, -0.156472,
		0.586716, 0.743792, -0.320217,
		14.071935, 21.531748, 25.913872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.877176, 21.162012, 26.271681>,  <13.661234, 21.011095, 26.138023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.877176, 21.162012, 26.271681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.515866, 21.050766, 26.402369>,  <12.299080, 20.984018, 26.480782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.515866, 21.050766, 26.402369>,  <12.877176, 21.162012, 26.271681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.515866, 21.050766, 26.402369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288640, 0.169530, 0.942309,
		-0.317460, 0.945469, -0.072857,
		-0.903275, -0.278116, 0.326719,
		12.244884, 20.967331, 26.500383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.809136, 21.513996, 26.816685>,  <12.877176, 21.162012, 26.271681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.809136, 21.513996, 26.816685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.546922, 21.221733, 26.893011>,  <12.389593, 21.046375, 26.938807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.546922, 21.221733, 26.893011>,  <12.809136, 21.513996, 26.816685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.546922, 21.221733, 26.893011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170222, 0.103210, 0.979986,
		-0.735728, 0.674898, 0.056716,
		-0.655537, -0.730657, 0.190817,
		12.350261, 21.002537, 26.950256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.498153, 21.689548, 27.462622>,  <12.809136, 21.513996, 26.816685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.498153, 21.689548, 27.462622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.447313, 21.295668, 27.414940>,  <12.416809, 21.059340, 27.386332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.447313, 21.295668, 27.414940>,  <12.498153, 21.689548, 27.462622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.447313, 21.295668, 27.414940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166834, -0.139690, 0.976040,
		-0.977759, 0.104167, 0.182036,
		-0.127099, -0.984701, -0.119205,
		12.409184, 21.000257, 27.379179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.987164, 21.446991, 28.013939>,  <12.498153, 21.689548, 27.462622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.987164, 21.446991, 28.013939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.199562, 21.120953, 27.921284>,  <12.327002, 20.925329, 27.865690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.199562, 21.120953, 27.921284>,  <11.987164, 21.446991, 28.013939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.199562, 21.120953, 27.921284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254469, -0.107359, 0.961103,
		-0.808262, -0.569289, 0.150411,
		0.530997, -0.815098, -0.231640,
		12.358861, 20.876423, 27.851791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.751671, 20.938839, 28.424337>,  <11.987164, 21.446991, 28.013939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.751671, 20.938839, 28.424337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.110431, 20.800833, 28.313677>,  <12.325686, 20.718029, 28.247280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.110431, 20.800833, 28.313677>,  <11.751671, 20.938839, 28.424337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.110431, 20.800833, 28.313677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267747, -0.074245, 0.960624,
		-0.351972, -0.935655, 0.025787,
		0.896899, -0.345017, -0.276651,
		12.379500, 20.697329, 28.230682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.822485, 20.275995, 28.799925>,  <11.751671, 20.938839, 28.424337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.822485, 20.275995, 28.799925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.180582, 20.419870, 28.694727>,  <12.395440, 20.506195, 28.631609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.180582, 20.419870, 28.694727>,  <11.822485, 20.275995, 28.799925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.180582, 20.419870, 28.694727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329076, -0.135778, 0.934491,
		0.300417, -0.923141, -0.239920,
		0.895242, 0.359688, -0.262994,
		12.449155, 20.527777, 28.615829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.378913, 19.872379, 29.178543>,  <11.822485, 20.275995, 28.799925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.378913, 19.872379, 29.178543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.558354, 20.207876, 29.055082>,  <12.666019, 20.409174, 28.981005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.558354, 20.207876, 29.055082>,  <12.378913, 19.872379, 29.178543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.558354, 20.207876, 29.055082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251692, 0.212814, 0.944119,
		0.857558, -0.501221, -0.115636,
		0.448604, 0.838742, -0.308654,
		12.692936, 20.459499, 28.962486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768678, 19.203106, 29.316198>,  <12.378913, 19.872379, 29.178543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768678, 19.203106, 29.316198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.950454, 18.885807, 29.478304>,  <13.059519, 18.695427, 29.575567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.950454, 18.885807, 29.478304>,  <12.768678, 19.203106, 29.316198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.950454, 18.885807, 29.478304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189226, -0.530539, -0.826270,
		0.870447, 0.298803, -0.391202,
		0.454440, -0.793250, 0.405265,
		13.086785, 18.647833, 29.599884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182722, 19.049999, 28.766956>,  <12.768678, 19.203106, 29.316198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182722, 19.049999, 28.766956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.124448, 18.738785, 29.011393>,  <13.089483, 18.552055, 29.158054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.124448, 18.738785, 29.011393>,  <13.182722, 19.049999, 28.766956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124448, 18.738785, 29.011393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198879, -0.582041, -0.788463,
		0.969135, -0.236402, -0.069940,
		-0.145686, -0.778037, 0.611092,
		13.080742, 18.505373, 29.194721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581253, 18.491016, 28.495256>,  <13.182722, 19.049999, 28.766956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.581253, 18.491016, 28.495256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.284625, 18.329231, 28.709352>,  <13.106648, 18.232161, 28.837811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.284625, 18.329231, 28.709352>,  <13.581253, 18.491016, 28.495256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.284625, 18.329231, 28.709352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303384, -0.509401, -0.805276,
		0.598357, -0.759552, 0.255049,
		-0.741571, -0.404465, 0.535239,
		13.062154, 18.207891, 28.869925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.556015, 17.734318, 28.330256>,  <13.581253, 18.491016, 28.495256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.556015, 17.734318, 28.330256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.204538, 17.765676, 28.518620>,  <12.993652, 17.784492, 28.631638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.204538, 17.765676, 28.518620>,  <13.556015, 17.734318, 28.330256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.204538, 17.765676, 28.518620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414131, -0.615882, -0.670213,
		0.237483, -0.783929, 0.573635,
		-0.878691, 0.078396, 0.470911,
		12.940931, 17.789196, 28.659893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.249251, 17.018564, 28.234789>,  <13.556015, 17.734318, 28.330256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.249251, 17.018564, 28.234789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.934500, 17.245932, 28.330891>,  <12.745648, 17.382353, 28.388552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.934500, 17.245932, 28.330891>,  <13.249251, 17.018564, 28.234789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.934500, 17.245932, 28.330891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536778, -0.438376, -0.720899,
		-0.304450, -0.696224, 0.650063,
		-0.786880, 0.568418, 0.240255,
		12.698436, 17.416456, 28.402967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.580770, 16.585739, 28.241898>,  <13.249251, 17.018564, 28.234789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.580770, 16.585739, 28.241898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.470667, 16.963816, 28.171646>,  <12.404605, 17.190662, 28.129496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.470667, 16.963816, 28.171646>,  <12.580770, 16.585739, 28.241898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.470667, 16.963816, 28.171646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528337, -0.301353, -0.793755,
		-0.803177, -0.125695, 0.582330,
		-0.275258, 0.945192, -0.175631,
		12.388089, 17.247374, 28.118958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.757100, 16.658028, 28.058092>,  <12.580770, 16.585739, 28.241898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.757100, 16.658028, 28.058092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.969205, 16.963186, 27.910141>,  <12.096468, 17.146282, 27.821371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.969205, 16.963186, 27.910141>,  <11.757100, 16.658028, 28.058092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.969205, 16.963186, 27.910141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442321, -0.123257, -0.888347,
		-0.723307, 0.634661, 0.272087,
		0.530263, 0.762898, -0.369877,
		12.128284, 17.192055, 27.799177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<20.376455, 18.755650, 29.460510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.723965, 18.869074, 29.298115>,  <20.932470, 18.937128, 29.200678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.723965, 18.869074, 29.298115>,  <20.376455, 18.755650, 29.460510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.723965, 18.869074, 29.298115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427998, 0.017553, -0.903609,
		-0.249103, 0.958793, 0.136614,
		0.868772, 0.283563, -0.405989,
		20.984596, 18.954144, 29.176317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.117243, 19.375616, 29.116350>,  <20.376455, 18.755650, 29.460510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.117243, 19.375616, 29.116350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.454285, 19.206635, 28.982754>,  <20.656509, 19.105246, 28.902596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.454285, 19.206635, 28.982754>,  <20.117243, 19.375616, 29.116350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454285, 19.206635, 28.982754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389289, -0.049266, -0.919797,
		0.372116, 0.905045, -0.205968,
		0.842605, -0.422452, -0.333992,
		20.707066, 19.079899, 28.882557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.418625, 19.717091, 28.440578>,  <20.117243, 19.375616, 29.116350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.418625, 19.717091, 28.440578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.489571, 19.327196, 28.494890>,  <20.532137, 19.093260, 28.527477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.489571, 19.327196, 28.494890>,  <20.418625, 19.717091, 28.440578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.489571, 19.327196, 28.494890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585271, -0.215388, -0.781707,
		0.791202, 0.059177, -0.608685,
		0.177362, -0.974734, 0.135781,
		20.542780, 19.034777, 28.535624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.660496, 19.342354, 27.773603>,  <20.418625, 19.717091, 28.440578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.660496, 19.342354, 27.773603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.482021, 19.068251, 28.003851>,  <20.374937, 18.903788, 28.141998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.482021, 19.068251, 28.003851>,  <20.660496, 19.342354, 27.773603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482021, 19.068251, 28.003851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682705, -0.155246, -0.714012,
		0.578646, -0.711560, -0.398562,
		-0.446187, -0.685260, 0.575617,
		20.348166, 18.862673, 28.176537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.496531, 18.805752, 27.364580>,  <20.660496, 19.342354, 27.773603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.496531, 18.805752, 27.364580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.240425, 18.750648, 27.666861>,  <20.086761, 18.717587, 27.848228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.240425, 18.750648, 27.666861>,  <20.496531, 18.805752, 27.364580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240425, 18.750648, 27.666861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712951, -0.259642, -0.651374,
		0.285944, -0.955829, 0.068024,
		-0.640264, -0.137758, 0.755702,
		20.048346, 18.709322, 27.893572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.387644, 18.059725, 27.530582>,  <20.496531, 18.805752, 27.364580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.387644, 18.059725, 27.530582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.072041, 18.296556, 27.596195>,  <19.882679, 18.438656, 27.635563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.072041, 18.296556, 27.596195>,  <20.387644, 18.059725, 27.530582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.072041, 18.296556, 27.596195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332686, -0.187277, -0.924255,
		-0.516513, -0.783817, 0.344739,
		-0.789009, 0.592080, 0.164034,
		19.835339, 18.474180, 27.645405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.911743, 17.762445, 27.022842>,  <20.387644, 18.059725, 27.530582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.911743, 17.762445, 27.022842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.782408, 18.121790, 27.141769>,  <19.704807, 18.337397, 27.213125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.782408, 18.121790, 27.141769>,  <19.911743, 17.762445, 27.022842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.782408, 18.121790, 27.141769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367772, 0.170195, -0.914209,
		-0.871893, -0.404944, 0.275362,
		-0.323338, 0.898362, 0.297319,
		19.685406, 18.391298, 27.230965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128040, 17.243523, 27.531637>,  <19.911743, 17.762445, 27.022842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128040, 17.243523, 27.531637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.773691, 17.333344, 27.694021>,  <19.561081, 17.387236, 27.791452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.773691, 17.333344, 27.694021>,  <20.128040, 17.243523, 27.531637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773691, 17.333344, 27.694021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463922, -0.424784, -0.777390,
		-0.002117, -0.877004, 0.480479,
		-0.885874, 0.224550, 0.405962,
		19.507929, 17.400709, 27.815809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.654402, 16.609953, 27.578373>,  <20.128040, 17.243523, 27.531637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.654402, 16.609953, 27.578373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.463552, 16.961142, 27.562754>,  <19.349043, 17.171854, 27.553383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.463552, 16.961142, 27.562754>,  <19.654402, 16.609953, 27.578373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.463552, 16.961142, 27.562754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491604, -0.303457, -0.816235,
		-0.728479, -0.370247, 0.576399,
		-0.477121, 0.877970, -0.039047,
		19.320415, 17.224533, 27.551039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.995811, 16.517984, 27.388874>,  <19.654402, 16.609953, 27.578373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.995811, 16.517984, 27.388874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.036455, 16.907179, 27.305952>,  <19.060841, 17.140696, 27.256199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.036455, 16.907179, 27.305952>,  <18.995811, 16.517984, 27.388874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.036455, 16.907179, 27.305952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436262, -0.143698, -0.888271,
		-0.894064, 0.180696, 0.409876,
		0.101609, 0.972985, -0.207306,
		19.066938, 17.199074, 27.243761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.475502, 16.660984, 27.099672>,  <18.995811, 16.517984, 27.388874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.475502, 16.660984, 27.099672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.684166, 16.979746, 26.977812>,  <18.809364, 17.171003, 26.904696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.684166, 16.979746, 26.977812>,  <18.475502, 16.660984, 27.099672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.684166, 16.979746, 26.977812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517117, 0.011325, -0.855839,
		-0.678573, 0.603998, 0.418001,
		0.521659, 0.796906, -0.304653,
		18.840664, 17.218817, 26.886415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.963974, 17.126865, 26.715206>,  <18.475502, 16.660984, 27.099672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.963974, 17.126865, 26.715206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.330877, 17.233788, 26.597097>,  <18.551020, 17.297941, 26.526232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.330877, 17.233788, 26.597097>,  <17.963974, 17.126865, 26.715206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330877, 17.233788, 26.597097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343266, 0.154562, -0.926434,
		-0.202004, 0.951135, 0.233530,
		0.917258, 0.267306, -0.295270,
		18.606054, 17.313980, 26.508516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448116, 16.891523, 27.251076>,  <17.963974, 17.126865, 26.715206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.448116, 16.891523, 27.251076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.318213, 16.532017, 27.368889>,  <17.240271, 16.316313, 27.439577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.318213, 16.532017, 27.368889>,  <17.448116, 16.891523, 27.251076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.318213, 16.532017, 27.368889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000914, 0.311114, 0.950372,
		-0.945796, 0.308912, -0.100216,
		-0.324760, -0.898767, 0.294533,
		17.220785, 16.262386, 27.457249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771776, 16.908754, 27.635876>,  <17.448116, 16.891523, 27.251076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.771776, 16.908754, 27.635876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.952652, 16.575151, 27.762339>,  <17.061178, 16.374990, 27.838217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.952652, 16.575151, 27.762339>,  <16.771776, 16.908754, 27.635876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.952652, 16.575151, 27.762339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179361, 0.262197, 0.948199,
		-0.873701, -0.485472, -0.031026,
		0.452190, -0.834008, 0.316157,
		17.088308, 16.324949, 27.857185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338335, 16.683872, 28.157885>,  <16.771776, 16.908754, 27.635876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.338335, 16.683872, 28.157885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.686363, 16.491901, 28.202873>,  <16.895180, 16.376719, 28.229866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.686363, 16.491901, 28.202873>,  <16.338335, 16.683872, 28.157885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.686363, 16.491901, 28.202873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133765, -0.010273, 0.990960,
		-0.474434, -0.877248, -0.073135,
		0.870069, -0.479928, 0.112471,
		16.947384, 16.347923, 28.236614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.220631, 16.246819, 28.759893>,  <16.338335, 16.683872, 28.157885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.220631, 16.246819, 28.759893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.615412, 16.287977, 28.710360>,  <16.852282, 16.312672, 28.680639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.615412, 16.287977, 28.710360>,  <16.220631, 16.246819, 28.759893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.615412, 16.287977, 28.710360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109754, 0.132754, 0.985053,
		0.117789, -0.985794, 0.119730,
		0.986955, 0.102887, -0.123832,
		16.911497, 16.318846, 28.673210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403610, 15.906615, 29.319675>,  <16.220631, 16.246819, 28.759893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.403610, 15.906615, 29.319675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.713461, 16.129456, 29.199949>,  <16.899372, 16.263161, 29.128115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.713461, 16.129456, 29.199949>,  <16.403610, 15.906615, 29.319675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.713461, 16.129456, 29.199949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014312, 0.488607, 0.872386,
		0.632256, -0.671490, 0.386462,
		0.774627, 0.557103, -0.299314,
		16.945850, 16.296585, 29.110155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879181, 15.958817, 29.904877>,  <16.403610, 15.906615, 29.319675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879181, 15.958817, 29.904877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.988928, 16.271402, 29.680721>,  <17.054777, 16.458954, 29.546228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.988928, 16.271402, 29.680721>,  <16.879181, 15.958817, 29.904877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988928, 16.271402, 29.680721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227511, 0.513455, 0.827407,
		0.934324, -0.354509, -0.036916,
		0.274369, 0.781465, -0.560388,
		17.071239, 16.505842, 29.512606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662560, 16.250681, 30.161388>,  <16.879181, 15.958817, 29.904877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662560, 16.250681, 30.161388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.475100, 16.540854, 29.959749>,  <17.362623, 16.714958, 29.838766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.475100, 16.540854, 29.959749>,  <17.662560, 16.250681, 30.161388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475100, 16.540854, 29.959749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156678, 0.629854, 0.760747,
		0.869379, 0.277542, -0.408840,
		-0.468649, 0.725434, -0.504097,
		17.334505, 16.758484, 29.808519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.107122, 16.790171, 30.405008>,  <17.662560, 16.250681, 30.161388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.107122, 16.790171, 30.405008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.786795, 16.941069, 30.218945>,  <17.594599, 17.031609, 30.107306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.786795, 16.941069, 30.218945>,  <18.107122, 16.790171, 30.405008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.786795, 16.941069, 30.218945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060602, 0.823737, 0.563724,
		0.595832, 0.423252, -0.682526,
		-0.800820, 0.377247, -0.465159,
		17.546549, 17.054243, 30.079397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375179, 17.472050, 30.195583>,  <18.107122, 16.790171, 30.405008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375179, 17.472050, 30.195583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.980869, 17.437023, 30.252964>,  <17.744284, 17.416008, 30.287394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.980869, 17.437023, 30.252964>,  <18.375179, 17.472050, 30.195583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980869, 17.437023, 30.252964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009873, 0.821906, 0.569538,
		-0.167777, 0.562853, -0.809350,
		-0.985776, -0.087565, 0.143454,
		17.685137, 17.410753, 30.296000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092340, 18.070549, 30.028353>,  <18.375179, 17.472050, 30.195583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092340, 18.070549, 30.028353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.791479, 17.910677, 30.237932>,  <17.610962, 17.814754, 30.363680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.791479, 17.910677, 30.237932>,  <18.092340, 18.070549, 30.028353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.791479, 17.910677, 30.237932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266245, 0.911608, 0.313185,
		-0.602808, 0.096065, -0.792082,
		-0.752154, -0.399678, 0.523948,
		17.565832, 17.790773, 30.395117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421932, 18.490658, 29.938654>,  <18.092340, 18.070549, 30.028353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421932, 18.490658, 29.938654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.376539, 18.283689, 30.277924>,  <17.349304, 18.159510, 30.481485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.376539, 18.283689, 30.277924>,  <17.421932, 18.490658, 29.938654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.376539, 18.283689, 30.277924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260759, 0.839273, 0.477101,
		-0.958711, -0.167026, -0.230165,
		-0.113483, -0.517420, 0.848174,
		17.342495, 18.128464, 30.532375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952856, 18.836313, 30.193779>,  <17.421932, 18.490658, 29.938654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.952856, 18.836313, 30.193779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.056311, 18.600893, 30.500168>,  <17.118383, 18.459641, 30.684002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.056311, 18.600893, 30.500168>,  <16.952856, 18.836313, 30.193779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.056311, 18.600893, 30.500168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246857, 0.726352, 0.641462,
		-0.933900, -0.354991, 0.042573,
		0.258637, -0.588552, 0.765972,
		17.133902, 18.424328, 30.729959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.356808, 18.812140, 30.679066>,  <16.952856, 18.836313, 30.193779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.356808, 18.812140, 30.679066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.693457, 18.742464, 30.883547>,  <16.895447, 18.700659, 31.006235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.693457, 18.742464, 30.883547>,  <16.356808, 18.812140, 30.679066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.693457, 18.742464, 30.883547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354099, 0.536722, 0.765861,
		-0.407780, -0.825583, 0.390037,
		0.841623, -0.174191, 0.511203,
		16.945944, 18.690207, 31.036907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.039043, 18.624722, 31.296658>,  <16.356808, 18.812140, 30.679066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.039043, 18.624722, 31.296658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.419538, 18.727564, 31.364828>,  <16.647835, 18.789268, 31.405731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.419538, 18.727564, 31.364828>,  <16.039043, 18.624722, 31.296658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.419538, 18.727564, 31.364828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288738, 0.547781, 0.785217,
		0.108526, -0.796137, 0.595305,
		0.951237, 0.257104, 0.170426,
		16.704910, 18.804695, 31.415956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.337472, 18.970360, 31.369137>,  <16.039043, 18.624722, 31.296658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.337472, 18.970360, 31.369137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.053848, 19.110765, 31.613768>,  <14.883675, 19.195009, 31.760546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.053848, 19.110765, 31.613768>,  <15.337472, 18.970360, 31.369137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.053848, 19.110765, 31.613768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698572, -0.231479, -0.677063,
		-0.096091, -0.907308, 0.409340,
		-0.709059, 0.351013, 0.611577,
		14.841130, 19.216070, 31.797241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.780672, 18.374876, 31.547020>,  <15.337472, 18.970360, 31.369137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.780672, 18.374876, 31.547020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.613630, 18.738045, 31.561371>,  <14.513405, 18.955946, 31.569981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.613630, 18.738045, 31.561371>,  <14.780672, 18.374876, 31.547020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.613630, 18.738045, 31.561371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710168, -0.301509, -0.636202,
		-0.566804, -0.291158, 0.770688,
		-0.417604, 0.907920, 0.035875,
		14.488349, 19.010422, 31.572134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.199524, 18.242546, 31.709984>,  <14.780672, 18.374876, 31.547020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.199524, 18.242546, 31.709984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.180529, 18.606609, 31.545370>,  <14.169131, 18.825047, 31.446602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.180529, 18.606609, 31.545370>,  <14.199524, 18.242546, 31.709984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180529, 18.606609, 31.545370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700508, -0.324046, -0.635832,
		-0.712063, 0.258087, 0.652960,
		-0.047489, 0.910157, -0.411533,
		14.166282, 18.879656, 31.421909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.571524, 18.345613, 31.580828>,  <14.199524, 18.242546, 31.709984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.571524, 18.345613, 31.580828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.730856, 18.612860, 31.329447>,  <13.826455, 18.773207, 31.178617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.730856, 18.612860, 31.329447>,  <13.571524, 18.345613, 31.580828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.730856, 18.612860, 31.329447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759866, -0.143393, -0.634068,
		-0.513747, 0.730109, 0.450561,
		0.398332, 0.668116, -0.628453,
		13.850355, 18.813295, 31.140911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.980839, 18.740450, 31.335302>,  <13.571524, 18.345613, 31.580828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.980839, 18.740450, 31.335302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.258737, 18.811583, 31.056532>,  <13.425475, 18.854263, 30.889269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.258737, 18.811583, 31.056532>,  <12.980839, 18.740450, 31.335302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.258737, 18.811583, 31.056532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674208, -0.176514, -0.717137,
		-0.250548, 0.968100, -0.002735,
		0.694744, 0.177833, -0.696926,
		13.467159, 18.864933, 30.847454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.679486, 19.103403, 30.727619>,  <12.980839, 18.740450, 31.335302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.679486, 19.103403, 30.727619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.014897, 18.972162, 30.553621>,  <13.216144, 18.893417, 30.449223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.014897, 18.972162, 30.553621>,  <12.679486, 19.103403, 30.727619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014897, 18.972162, 30.553621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515015, -0.216683, -0.829342,
		0.177854, 0.919455, -0.350672,
		0.838527, -0.328104, -0.434995,
		13.266456, 18.873732, 30.423122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.714918, 19.350357, 30.096430>,  <12.679486, 19.103403, 30.727619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.714918, 19.350357, 30.096430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.946977, 19.025635, 30.069899>,  <13.086211, 18.830801, 30.053980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.946977, 19.025635, 30.069899>,  <12.714918, 19.350357, 30.096430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.946977, 19.025635, 30.069899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508832, -0.297630, -0.807778,
		0.636019, 0.502379, -0.585743,
		0.580146, -0.811808, -0.066328,
		13.121020, 18.782093, 30.050001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.938643, 19.861252, 29.605976>,  <12.714918, 19.350357, 30.096430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.938643, 19.861252, 29.605976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.917712, 20.232571, 29.458717>,  <12.905153, 20.455362, 29.370363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.917712, 20.232571, 29.458717>,  <12.938643, 19.861252, 29.605976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.917712, 20.232571, 29.458717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299096, 0.366295, 0.881118,
		0.952787, -0.064003, -0.296817,
		-0.052329, 0.928295, -0.368145,
		12.902014, 20.511059, 29.348274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.557918, 20.147633, 29.822762>,  <12.938643, 19.861252, 29.605976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.557918, 20.147633, 29.822762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.318588, 20.457729, 29.741756>,  <13.174991, 20.643787, 29.693153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.318588, 20.457729, 29.741756>,  <13.557918, 20.147633, 29.822762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.318588, 20.457729, 29.741756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447023, 0.532722, 0.718594,
		0.664965, 0.339425, -0.665291,
		-0.598324, 0.775240, -0.202511,
		13.139091, 20.690302, 29.681004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.940229, 20.696999, 29.913847>,  <13.557918, 20.147633, 29.822762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.940229, 20.696999, 29.913847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.577404, 20.865387, 29.915688>,  <13.359709, 20.966419, 29.916792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.577404, 20.865387, 29.915688>,  <13.940229, 20.696999, 29.913847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.577404, 20.865387, 29.915688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320121, 0.682584, 0.656964,
		0.273421, 0.597380, -0.753908,
		-0.907063, 0.420970, 0.004602,
		13.305285, 20.991678, 29.917068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.061080, 21.459280, 29.915144>,  <13.940229, 20.696999, 29.913847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.061080, 21.459280, 29.915144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.698949, 21.379570, 30.065168>,  <13.481670, 21.331743, 30.155182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.698949, 21.379570, 30.065168>,  <14.061080, 21.459280, 29.915144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.698949, 21.379570, 30.065168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171631, 0.636111, 0.752267,
		-0.388488, 0.745420, -0.541688,
		-0.905329, -0.199276, 0.375059,
		13.427350, 21.319788, 30.177687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.716472, 22.049059, 29.964670>,  <14.061080, 21.459280, 29.915144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.716472, 22.049059, 29.964670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.538424, 21.820776, 30.240688>,  <13.431597, 21.683805, 30.406300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.538424, 21.820776, 30.240688>,  <13.716472, 22.049059, 29.964670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.538424, 21.820776, 30.240688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090607, 0.737935, 0.668761,
		-0.890877, 0.360200, -0.276757,
		-0.445117, -0.570708, 0.690046,
		13.404889, 21.649563, 30.447702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.340671, 22.432047, 30.354162>,  <13.716472, 22.049059, 29.964670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.340671, 22.432047, 30.354162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.352983, 22.132109, 30.618521>,  <13.360370, 21.952145, 30.777136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.352983, 22.132109, 30.618521>,  <13.340671, 22.432047, 30.354162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.352983, 22.132109, 30.618521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206132, 0.651757, 0.729879,
		-0.978040, 0.113766, 0.174628,
		0.030780, -0.749847, 0.660895,
		13.362217, 21.907154, 30.816790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.951354, 22.625814, 31.043440>,  <13.340671, 22.432047, 30.354162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.951354, 22.625814, 31.043440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.149827, 22.305712, 31.178137>,  <13.268911, 22.113651, 31.258955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.149827, 22.305712, 31.178137>,  <12.951354, 22.625814, 31.043440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.149827, 22.305712, 31.178137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141730, 0.457307, 0.877942,
		-0.856572, -0.387894, 0.340328,
		0.496183, -0.800255, 0.336741,
		13.298682, 22.065636, 31.279160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.767015, 22.526941, 31.718697>,  <12.951354, 22.625814, 31.043440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.767015, 22.526941, 31.718697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.128946, 22.359001, 31.690388>,  <13.346106, 22.258236, 31.673403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.128946, 22.359001, 31.690388>,  <12.767015, 22.526941, 31.718697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.128946, 22.359001, 31.690388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230911, 0.344238, 0.910044,
		-0.357721, -0.839777, 0.408425,
		0.904829, -0.419851, -0.070773,
		13.400395, 22.233046, 31.669155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.914117, 22.187500, 32.357780>,  <12.767015, 22.526941, 31.718697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.914117, 22.187500, 32.357780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.260649, 22.296173, 32.190132>,  <13.468568, 22.361378, 32.089542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.260649, 22.296173, 32.190132>,  <12.914117, 22.187500, 32.357780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.260649, 22.296173, 32.190132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297111, 0.394205, 0.869671,
		0.401506, -0.877943, 0.260785,
		0.866324, 0.271696, -0.419123,
		13.520548, 22.377678, 32.064396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<10.644635, 17.098196, 17.021725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.910896, 17.395018, 17.053381>,  <11.070653, 17.573111, 17.072374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.910896, 17.395018, 17.053381>,  <10.644635, 17.098196, 17.021725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.910896, 17.395018, 17.053381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330203, 0.197769, 0.922959,
		0.669233, -0.640503, 0.376673,
		0.665652, 0.742054, 0.079142,
		11.110592, 17.617634, 17.077124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.817525, 17.074657, 17.677238>,  <10.644635, 17.098196, 17.021725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.817525, 17.074657, 17.677238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.947985, 17.442247, 17.588591>,  <11.026260, 17.662802, 17.535402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.947985, 17.442247, 17.588591>,  <10.817525, 17.074657, 17.677238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.947985, 17.442247, 17.588591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296269, 0.321995, 0.899191,
		0.897692, -0.227612, 0.377281,
		0.326149, 0.918973, -0.221618,
		11.045830, 17.717939, 17.522104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.264834, 17.248629, 18.205296>,  <10.817525, 17.074657, 17.677238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.264834, 17.248629, 18.205296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.175991, 17.611298, 18.061848>,  <11.122684, 17.828899, 17.975779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.175991, 17.611298, 18.061848>,  <11.264834, 17.248629, 18.205296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.175991, 17.611298, 18.061848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259197, 0.299668, 0.918159,
		0.939938, 0.296885, 0.168449,
		-0.222109, 0.906674, -0.358622,
		11.109359, 17.883301, 17.954262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.682023, 17.808804, 18.501060>,  <11.264834, 17.248629, 18.205296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.682023, 17.808804, 18.501060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.359468, 17.997734, 18.358709>,  <11.165936, 18.111092, 18.273298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.359468, 17.997734, 18.358709>,  <11.682023, 17.808804, 18.501060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.359468, 17.997734, 18.358709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245546, 0.280036, 0.928055,
		0.538003, 0.835756, -0.109840,
		-0.806387, 0.472326, -0.355877,
		11.117553, 18.139431, 18.251945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.643872, 18.307461, 18.984348>,  <11.682023, 17.808804, 18.501060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.643872, 18.307461, 18.984348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295937, 18.352018, 18.792110>,  <11.087175, 18.378752, 18.676767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295937, 18.352018, 18.792110>,  <11.643872, 18.307461, 18.984348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.295937, 18.352018, 18.792110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418569, 0.348973, 0.838461,
		0.261114, 0.930489, -0.256925,
		-0.869839, 0.111393, -0.480596,
		11.034985, 18.385437, 18.647932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.365308, 18.907402, 19.265747>,  <11.643872, 18.307461, 18.984348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.365308, 18.907402, 19.265747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.046112, 18.733753, 19.098534>,  <10.854595, 18.629564, 18.998205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.046112, 18.733753, 19.098534>,  <11.365308, 18.907402, 19.265747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.046112, 18.733753, 19.098534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536932, 0.197090, 0.820280,
		-0.273712, 0.879030, -0.390370,
		-0.797988, -0.434122, -0.418034,
		10.806716, 18.603516, 18.973124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.832411, 19.365990, 19.214752>,  <11.365308, 18.907402, 19.265747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.832411, 19.365990, 19.214752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.669368, 19.002642, 19.252100>,  <10.571542, 18.784632, 19.274508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.669368, 19.002642, 19.252100>,  <10.832411, 19.365990, 19.214752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.669368, 19.002642, 19.252100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456569, 0.291280, 0.840655,
		-0.790823, 0.300028, -0.533462,
		-0.407607, -0.908372, 0.093368,
		10.547086, 18.730129, 19.280109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.166812, 19.408913, 19.657883>,  <10.832411, 19.365990, 19.214752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.166812, 19.408913, 19.657883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.260748, 19.021826, 19.694490>,  <10.317109, 18.789574, 19.716455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.260748, 19.021826, 19.694490>,  <10.166812, 19.408913, 19.657883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.260748, 19.021826, 19.694490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270626, 0.025337, 0.962351,
		-0.933602, -0.250765, -0.255939,
		0.234839, -0.967717, 0.091518,
		10.331200, 18.731510, 19.721947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.595023, 19.116144, 19.988287>,  <10.166812, 19.408913, 19.657883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.595023, 19.116144, 19.988287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.911259, 18.879560, 20.051714>,  <10.101000, 18.737610, 20.089771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.911259, 18.879560, 20.051714>,  <9.595023, 19.116144, 19.988287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.911259, 18.879560, 20.051714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142440, 0.074221, 0.987017,
		-0.595550, -0.802912, -0.025569,
		0.790590, -0.591460, 0.158569,
		10.148436, 18.702124, 20.099285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.432055, 18.751587, 20.520536>,  <9.595023, 19.116144, 19.988287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.432055, 18.751587, 20.520536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.821444, 18.662462, 20.499723>,  <10.055077, 18.608988, 20.487236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.821444, 18.662462, 20.499723>,  <9.432055, 18.751587, 20.520536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.821444, 18.662462, 20.499723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052500, -0.003835, 0.998613,
		-0.222706, -0.974853, 0.007965,
		0.973471, -0.222815, -0.052034,
		10.113485, 18.595617, 20.484114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.448435, 18.287209, 21.092144>,  <9.432055, 18.751587, 20.520536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.448435, 18.287209, 21.092144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.821661, 18.415133, 21.026285>,  <10.045597, 18.491888, 20.986771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.821661, 18.415133, 21.026285>,  <9.448435, 18.287209, 21.092144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.821661, 18.415133, 21.026285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200419, -0.082132, 0.976261,
		0.298698, -0.943914, -0.140731,
		0.933066, 0.319812, -0.164645,
		10.101581, 18.511076, 20.976892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.929931, 17.828362, 21.428234>,  <9.448435, 18.287209, 21.092144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.929931, 17.828362, 21.428234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.084342, 18.196774, 21.407507>,  <10.176989, 18.417820, 21.395071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.084342, 18.196774, 21.407507>,  <9.929931, 17.828362, 21.428234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.084342, 18.196774, 21.407507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125374, 0.003271, 0.992104,
		0.913927, -0.389478, -0.114210,
		0.386029, 0.921030, -0.051820,
		10.200150, 18.473083, 21.391960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.471153, 17.251019, 21.549240>,  <9.929931, 17.828362, 21.428234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.471153, 17.251019, 21.549240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.422388, 16.921972, 21.771391>,  <10.393128, 16.724545, 21.904680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.422388, 16.921972, 21.771391>,  <10.471153, 17.251019, 21.549240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.422388, 16.921972, 21.771391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001581, -0.559387, -0.828905,
		0.992539, -0.101933, 0.066896,
		-0.121914, -0.822615, 0.555375,
		10.385814, 16.675188, 21.938004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.499710, 16.754602, 21.068233>,  <10.471153, 17.251019, 21.549240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.499710, 16.754602, 21.068233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.468654, 16.515350, 21.387285>,  <10.450020, 16.371799, 21.578716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.468654, 16.515350, 21.387285>,  <10.499710, 16.754602, 21.068233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.468654, 16.515350, 21.387285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116184, -0.789165, -0.603092,
		0.990188, -0.139496, -0.008222,
		-0.077640, -0.598130, 0.797629,
		10.445361, 16.335911, 21.626574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.134105, 16.302624, 21.051088>,  <10.499710, 16.754602, 21.068233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.134105, 16.302624, 21.051088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.781705, 16.185740, 21.199924>,  <10.570265, 16.115608, 21.289227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.781705, 16.185740, 21.199924>,  <11.134105, 16.302624, 21.051088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.781705, 16.185740, 21.199924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173864, -0.531477, -0.829038,
		0.440013, -0.795075, 0.417426,
		-0.880999, -0.292212, 0.372092,
		10.517406, 16.098076, 21.311552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.043250, 15.588766, 20.926733>,  <11.134105, 16.302624, 21.051088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.043250, 15.588766, 20.926733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.675334, 15.740746, 20.965971>,  <10.454584, 15.831935, 20.989513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.675334, 15.740746, 20.965971>,  <11.043250, 15.588766, 20.926733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.675334, 15.740746, 20.965971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274732, -0.445017, -0.852339,
		-0.280191, -0.810924, 0.513707,
		-0.919791, 0.379949, 0.098097,
		10.399397, 15.854732, 20.995399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.554147, 15.062479, 20.796181>,  <11.043250, 15.588766, 20.926733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.554147, 15.062479, 20.796181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.336310, 15.395695, 20.757265>,  <10.205608, 15.595624, 20.733915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.336310, 15.395695, 20.757265>,  <10.554147, 15.062479, 20.796181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.336310, 15.395695, 20.757265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439599, -0.382307, -0.812769,
		-0.714264, -0.399859, 0.574404,
		-0.544592, 0.833039, -0.097290,
		10.172933, 15.645606, 20.728079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.872964, 14.867300, 20.723700>,  <10.554147, 15.062479, 20.796181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.872964, 14.867300, 20.723700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.852345, 15.233286, 20.563608>,  <9.839974, 15.452877, 20.467552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.852345, 15.233286, 20.563608>,  <9.872964, 14.867300, 20.723700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.852345, 15.233286, 20.563608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491710, -0.372072, -0.787263,
		-0.869232, 0.156217, 0.469076,
		-0.051546, 0.914964, -0.400231,
		9.836882, 15.507775, 20.443539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.281180, 14.887682, 20.501602>,  <9.872964, 14.867300, 20.723700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.281180, 14.887682, 20.501602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.481184, 15.162676, 20.290943>,  <9.601186, 15.327672, 20.164547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.481184, 15.162676, 20.290943>,  <9.281180, 14.887682, 20.501602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.481184, 15.162676, 20.290943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411074, -0.346838, -0.843043,
		-0.762240, 0.638019, 0.109185,
		0.500009, 0.687484, -0.526647,
		9.631186, 15.368921, 20.132950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.806047, 15.102696, 19.972961>,  <9.281180, 14.887682, 20.501602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.806047, 15.102696, 19.972961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.158437, 15.228377, 19.831448>,  <9.369870, 15.303786, 19.746540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.158437, 15.228377, 19.831448>,  <8.806047, 15.102696, 19.972961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.158437, 15.228377, 19.831448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250711, -0.324142, -0.912182,
		-0.401286, 0.892305, -0.206787,
		0.880973, 0.314202, -0.353785,
		9.422729, 15.322639, 19.725311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.669560, 15.506304, 19.374449>,  <8.806047, 15.102696, 19.972961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.669560, 15.506304, 19.374449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.044699, 15.376841, 19.324341>,  <9.269781, 15.299163, 19.294275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.044699, 15.376841, 19.324341>,  <8.669560, 15.506304, 19.374449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.044699, 15.376841, 19.324341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242987, -0.354635, -0.902879,
		0.247798, 0.877200, -0.411237,
		0.937845, -0.323657, -0.125271,
		9.326053, 15.279743, 19.286760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.796793, 15.603733, 18.648909>,  <8.669560, 15.506304, 19.374449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.796793, 15.603733, 18.648909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.090917, 15.349000, 18.741657>,  <9.267391, 15.196160, 18.797306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.090917, 15.349000, 18.741657>,  <8.796793, 15.603733, 18.648909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.090917, 15.349000, 18.741657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086986, -0.427979, -0.899593,
		0.672126, 0.641309, -0.370093,
		0.735309, -0.636833, 0.231871,
		9.311509, 15.157950, 18.811218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.361527, 15.670621, 18.191738>,  <8.796793, 15.603733, 18.648909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.361527, 15.670621, 18.191738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.412645, 15.300653, 18.334953>,  <9.443316, 15.078671, 18.420881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.412645, 15.300653, 18.334953>,  <9.361527, 15.670621, 18.191738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.412645, 15.300653, 18.334953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147705, -0.339222, -0.929038,
		0.980741, 0.171610, 0.093265,
		0.127794, -0.924921, 0.358037,
		9.450984, 15.023176, 18.442364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.942167, 15.443950, 17.742838>,  <9.361527, 15.670621, 18.191738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.942167, 15.443950, 17.742838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.882302, 15.091413, 17.922096>,  <9.846383, 14.879890, 18.029652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.882302, 15.091413, 17.922096>,  <9.942167, 15.443950, 17.742838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.882302, 15.091413, 17.922096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214830, -0.471409, -0.855349,
		0.965116, -0.031739, 0.259892,
		-0.149663, -0.881343, 0.448146,
		9.837403, 14.827009, 18.056540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.518833, 15.070263, 17.625401>,  <9.942167, 15.443950, 17.742838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.518833, 15.070263, 17.625401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.214496, 14.822093, 17.701496>,  <10.031893, 14.673191, 17.747152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.214496, 14.822093, 17.701496>,  <10.518833, 15.070263, 17.625401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.214496, 14.822093, 17.701496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245276, -0.546346, -0.800840,
		0.600795, -0.562654, 0.567860,
		-0.760845, -0.620424, 0.190237,
		9.986242, 14.635966, 17.758568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.810339, 14.469276, 17.558704>,  <10.518833, 15.070263, 17.625401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.810339, 14.469276, 17.558704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.418917, 14.413299, 17.498245>,  <10.184064, 14.379712, 17.461969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.418917, 14.413299, 17.498245>,  <10.810339, 14.469276, 17.558704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.418917, 14.413299, 17.498245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203566, -0.544838, -0.813457,
		0.031488, -0.826781, 0.561642,
		-0.978555, -0.139945, -0.151148,
		10.125350, 14.371315, 17.452900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.989580, 14.434981, 18.294052>,  <10.810339, 14.469276, 17.558704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.989580, 14.434981, 18.294052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336733, 14.261996, 18.196272>,  <11.545025, 14.158205, 18.137604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336733, 14.261996, 18.196272>,  <10.989580, 14.434981, 18.294052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.336733, 14.261996, 18.196272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227509, 0.091419, -0.969475,
		0.441609, 0.897005, -0.019049,
		0.867883, -0.432463, -0.244448,
		11.597097, 14.132257, 18.122938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.083213, 14.338091, 18.970009>,  <10.989580, 14.434981, 18.294052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.083213, 14.338091, 18.970009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.344744, 14.363763, 18.668442>,  <11.501662, 14.379166, 18.487501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.344744, 14.363763, 18.668442>,  <11.083213, 14.338091, 18.970009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.344744, 14.363763, 18.668442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756069, -0.094270, 0.647667,
		-0.029505, -0.993476, -0.110161,
		0.653826, 0.064180, -0.753918,
		11.540892, 14.383017, 18.442266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.589501, 13.807350, 19.073645>,  <11.083213, 14.338091, 18.970009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.589501, 13.807350, 19.073645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765515, 14.061004, 18.819324>,  <11.871123, 14.213196, 18.666733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765515, 14.061004, 18.819324>,  <11.589501, 13.807350, 19.073645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.765515, 14.061004, 18.819324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764294, 0.107212, 0.635893,
		0.471407, -0.765754, -0.437489,
		0.440034, 0.634134, -0.635802,
		11.897526, 14.251244, 18.628584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.241602, 13.634465, 18.852608>,  <11.589501, 13.807350, 19.073645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.241602, 13.634465, 18.852608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.194321, 14.031258, 18.870514>,  <12.165952, 14.269333, 18.881258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.194321, 14.031258, 18.870514>,  <12.241602, 13.634465, 18.852608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.194321, 14.031258, 18.870514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742965, 0.058442, 0.666774,
		0.658810, 0.112073, -0.743914,
		-0.118203, 0.991980, 0.044764,
		12.158860, 14.328852, 18.883944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.926939, 13.964350, 18.727530>,  <12.241602, 13.634465, 18.852608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.926939, 13.964350, 18.727530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.699964, 14.223322, 18.931038>,  <12.563778, 14.378705, 19.053143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.699964, 14.223322, 18.931038>,  <12.926939, 13.964350, 18.727530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.699964, 14.223322, 18.931038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710275, 0.072279, 0.700204,
		0.416560, 0.758689, -0.500868,
		-0.567439, 0.647431, 0.508769,
		12.529732, 14.417551, 19.083668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.307419, 14.627494, 18.801712>,  <12.926939, 13.964350, 18.727530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.307419, 14.627494, 18.801712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.046186, 14.616444, 19.104425>,  <12.889447, 14.609814, 19.286053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.046186, 14.616444, 19.104425>,  <13.307419, 14.627494, 18.801712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046186, 14.616444, 19.104425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744595, 0.158777, 0.648359,
		-0.138071, 0.986928, -0.083124,
		-0.653081, -0.027625, 0.756784,
		12.850262, 14.608156, 19.331461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.606670, 14.937266, 19.295069>,  <13.307419, 14.627494, 18.801712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.606670, 14.937266, 19.295069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326642, 14.838500, 19.563078>,  <13.158625, 14.779240, 19.723885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326642, 14.838500, 19.563078>,  <13.606670, 14.937266, 19.295069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.326642, 14.838500, 19.563078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664785, 0.117192, 0.737785,
		-0.260693, 0.961924, 0.082104,
		-0.700071, -0.246917, 0.670024,
		13.116621, 14.764425, 19.764086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.686005, 15.388564, 19.816555>,  <13.606670, 14.937266, 19.295069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.686005, 15.388564, 19.816555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.476720, 15.093391, 19.987062>,  <13.351150, 14.916287, 20.089367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.476720, 15.093391, 19.987062>,  <13.686005, 15.388564, 19.816555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.476720, 15.093391, 19.987062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544938, 0.094867, 0.833092,
		-0.655204, 0.668174, 0.352492,
		-0.523211, -0.737932, 0.426271,
		13.319757, 14.872012, 20.114944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462259, 15.655807, 20.442188>,  <13.686005, 15.388564, 19.816555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462259, 15.655807, 20.442188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444306, 15.260717, 20.502037>,  <13.433535, 15.023664, 20.537947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444306, 15.260717, 20.502037>,  <13.462259, 15.655807, 20.442188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444306, 15.260717, 20.502037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321291, 0.127542, 0.938352,
		-0.945916, 0.090186, 0.311623,
		-0.044882, -0.987724, 0.149620,
		13.430841, 14.964400, 20.546923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.194844, 15.634502, 21.045219>,  <13.462259, 15.655807, 20.442188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.194844, 15.634502, 21.045219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.356616, 15.271475, 21.000042>,  <13.453679, 15.053658, 20.972937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.356616, 15.271475, 21.000042>,  <13.194844, 15.634502, 21.045219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.356616, 15.271475, 21.000042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358604, 0.043761, 0.932463,
		-0.841332, -0.417617, 0.343156,
		0.404430, -0.907569, -0.112942,
		13.477945, 14.999205, 20.966160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.019725, 15.173222, 21.610424>,  <13.194844, 15.634502, 21.045219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.019725, 15.173222, 21.610424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.349753, 15.019603, 21.444647>,  <13.547771, 14.927431, 21.345181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.349753, 15.019603, 21.444647>,  <13.019725, 15.173222, 21.610424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.349753, 15.019603, 21.444647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373224, -0.180271, 0.910058,
		-0.424219, -0.905543, -0.005400,
		0.825071, -0.384048, -0.414445,
		13.597275, 14.904388, 21.320312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.210640, 14.630705, 22.088238>,  <13.019725, 15.173222, 21.610424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.210640, 14.630705, 22.088238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.543338, 14.689442, 21.874083>,  <13.742956, 14.724684, 21.745590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.543338, 14.689442, 21.874083>,  <13.210640, 14.630705, 22.088238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.543338, 14.689442, 21.874083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553200, -0.300180, 0.777085,
		-0.046603, -0.942512, -0.330906,
		0.831744, 0.146843, -0.535387,
		13.792861, 14.733494, 21.713467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.743428, 14.139608, 22.313179>,  <13.210640, 14.630705, 22.088238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.743428, 14.139608, 22.313179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.954107, 14.421424, 22.122931>,  <14.080515, 14.590513, 22.008781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.954107, 14.421424, 22.122931>,  <13.743428, 14.139608, 22.313179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.954107, 14.421424, 22.122931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642373, 0.036567, 0.765520,
		0.556730, -0.708724, -0.433316,
		0.526697, 0.704538, -0.475622,
		14.112117, 14.632785, 21.980244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.524617, 13.965021, 22.333311>,  <13.743428, 14.139608, 22.313179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.524617, 13.965021, 22.333311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.505511, 14.357944, 22.260878>,  <14.494048, 14.593698, 22.217417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.505511, 14.357944, 22.260878>,  <14.524617, 13.965021, 22.333311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.505511, 14.357944, 22.260878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632954, 0.170012, 0.755292,
		0.772715, -0.078541, -0.629876,
		-0.047765, 0.982307, -0.181083,
		14.491182, 14.652636, 22.206553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.177880, 14.173663, 22.501833>,  <14.524617, 13.965021, 22.333311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.177880, 14.173663, 22.501833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974071, 14.516810, 22.475161>,  <14.851785, 14.722699, 22.459156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974071, 14.516810, 22.475161>,  <15.177880, 14.173663, 22.501833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974071, 14.516810, 22.475161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578160, 0.398728, 0.711862,
		0.637272, 0.324159, -0.699147,
		-0.509525, 0.857868, -0.066682,
		14.821213, 14.774171, 22.455156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618342, 14.777149, 22.374893>,  <15.177880, 14.173663, 22.501833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.618342, 14.777149, 22.374893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.284678, 14.908227, 22.552338>,  <15.084478, 14.986874, 22.658804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.284678, 14.908227, 22.552338>,  <15.618342, 14.777149, 22.374893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.284678, 14.908227, 22.552338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545098, 0.367469, 0.753548,
		0.083921, 0.870392, -0.485155,
		-0.834162, 0.327695, 0.443610,
		15.034429, 15.006536, 22.685421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951940, 15.299813, 22.701212>,  <15.618342, 14.777149, 22.374893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951940, 15.299813, 22.701212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.595757, 15.261222, 22.879099>,  <15.382047, 15.238067, 22.985832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.595757, 15.261222, 22.879099>,  <15.951940, 15.299813, 22.701212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.595757, 15.261222, 22.879099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422440, 0.188105, 0.886657,
		-0.169197, 0.977399, -0.126743,
		-0.890459, -0.096478, 0.444719,
		15.328619, 15.232279, 23.012514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800547, 15.895360, 22.952477>,  <15.951940, 15.299813, 22.701212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.800547, 15.895360, 22.952477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577885, 15.653707, 23.180567>,  <15.444287, 15.508715, 23.317421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577885, 15.653707, 23.180567>,  <15.800547, 15.895360, 22.952477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577885, 15.653707, 23.180567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432558, 0.375233, 0.819813,
		-0.709244, 0.703009, 0.052448,
		-0.556656, -0.604135, 0.570224,
		15.410888, 15.472466, 23.351635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873198, 16.262085, 23.567568>,  <15.800547, 15.895360, 22.952477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873198, 16.262085, 23.567568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685866, 15.943774, 23.721142>,  <15.573468, 15.752788, 23.813286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685866, 15.943774, 23.721142>,  <15.873198, 16.262085, 23.567568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685866, 15.943774, 23.721142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417947, 0.183321, 0.889783,
		-0.778454, 0.577174, 0.246739,
		-0.468327, -0.795779, 0.383935,
		15.545368, 15.705041, 23.836323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492229, 16.485075, 24.155745>,  <15.873198, 16.262085, 23.567568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.492229, 16.485075, 24.155745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.548832, 16.092646, 24.208612>,  <15.582794, 15.857187, 24.240334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.548832, 16.092646, 24.208612>,  <15.492229, 16.485075, 24.155745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.548832, 16.092646, 24.208612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252380, 0.164853, 0.953482,
		-0.957225, -0.101569, 0.270932,
		0.141508, -0.981075, 0.132167,
		15.591285, 15.798324, 24.248262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159662, 16.337303, 24.868420>,  <15.492229, 16.485075, 24.155745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.159662, 16.337303, 24.868420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.411536, 16.043312, 24.767778>,  <15.562660, 15.866918, 24.707394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.411536, 16.043312, 24.767778>,  <15.159662, 16.337303, 24.868420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.411536, 16.043312, 24.767778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265615, -0.100665, 0.958809,
		-0.730032, -0.670577, 0.131834,
		0.629684, -0.734978, -0.251604,
		15.600442, 15.822819, 24.692297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.022022, 15.687977, 25.387814>,  <15.159662, 16.337303, 24.868420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.022022, 15.687977, 25.387814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380105, 15.682764, 25.209629>,  <15.594954, 15.679636, 25.102718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380105, 15.682764, 25.209629>,  <15.022022, 15.687977, 25.387814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380105, 15.682764, 25.209629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436628, -0.174459, 0.882564,
		-0.089215, -0.984578, -0.150487,
		0.895208, -0.013032, -0.445459,
		15.648667, 15.678854, 25.075991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383715, 15.084569, 25.711769>,  <15.022022, 15.687977, 25.387814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.383715, 15.084569, 25.711769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692618, 15.279627, 25.548885>,  <15.877961, 15.396662, 25.451155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692618, 15.279627, 25.548885>,  <15.383715, 15.084569, 25.711769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.692618, 15.279627, 25.548885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513487, -0.101681, 0.852052,
		0.374093, -0.867101, -0.328922,
		0.772260, 0.487644, -0.407207,
		15.924296, 15.425920, 25.426723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026840, 14.734457, 25.830824>,  <15.383715, 15.084569, 25.711769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026840, 14.734457, 25.830824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177113, 15.092424, 25.734505>,  <16.267277, 15.307205, 25.676714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177113, 15.092424, 25.734505>,  <16.026840, 14.734457, 25.830824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.177113, 15.092424, 25.734505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626732, -0.053930, 0.777367,
		0.682694, -0.442957, -0.581135,
		0.375681, 0.894919, -0.240798,
		16.289816, 15.360900, 25.662266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784313, 14.763704, 25.981325>,  <16.026840, 14.734457, 25.830824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.784313, 14.763704, 25.981325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.683096, 15.150042, 25.959000>,  <16.622366, 15.381844, 25.945604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.683096, 15.150042, 25.959000>,  <16.784313, 14.763704, 25.981325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.683096, 15.150042, 25.959000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576065, 0.196772, 0.793366,
		0.777250, 0.168606, -0.606181,
		-0.253045, 0.965843, -0.055813,
		16.607182, 15.439795, 25.942255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421078, 15.192164, 25.895027>,  <16.784313, 14.763704, 25.981325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421078, 15.192164, 25.895027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125320, 15.395179, 26.071980>,  <16.947866, 15.516988, 26.178152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125320, 15.395179, 26.071980>,  <17.421078, 15.192164, 25.895027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.125320, 15.395179, 26.071980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601848, 0.203730, 0.772188,
		0.301787, 0.837198, -0.456097,
		-0.739394, 0.507537, 0.442383,
		16.903502, 15.547440, 26.204695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.792870, 15.718781, 26.410980>,  <17.421078, 15.192164, 25.895027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.792870, 15.718781, 26.410980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.415133, 15.768377, 26.532864>,  <17.188490, 15.798136, 26.605993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.415133, 15.768377, 26.532864>,  <17.792870, 15.718781, 26.410980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415133, 15.768377, 26.532864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326562, 0.241448, 0.913816,
		0.039735, 0.962460, -0.268500,
		-0.944340, 0.123992, 0.304709,
		17.131830, 15.805575, 26.624277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813343, 16.374588, 26.775181>,  <17.792870, 15.718781, 26.410980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813343, 16.374588, 26.775181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.483891, 16.193241, 26.911469>,  <17.286219, 16.084433, 26.993240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.483891, 16.193241, 26.911469>,  <17.813343, 16.374588, 26.775181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.483891, 16.193241, 26.911469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232626, 0.277838, 0.932036,
		-0.517220, 0.846914, -0.123370,
		-0.823631, -0.453369, 0.340718,
		17.236801, 16.057230, 27.013683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
