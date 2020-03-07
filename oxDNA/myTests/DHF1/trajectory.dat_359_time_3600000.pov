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
	<3.579807, 3.098268, 2.440364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.493980, 2.920082, 2.788048>,  <3.442484, 2.813171, 2.996658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.493980, 2.920082, 2.788048>,  <3.579807, 3.098268, 2.440364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.493980, 2.920082, 2.788048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077106, -0.879433, -0.469737,
		0.973661, -0.167811, 0.154349,
		-0.214567, -0.445463, 0.869209,
		3.429610, 2.786443, 3.048810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.822752, 2.367891, 2.361684>,  <3.579807, 3.098268, 2.440364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.822752, 2.367891, 2.361684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.571709, 2.368462, 2.673096>,  <3.421083, 2.368804, 2.859943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.571709, 2.368462, 2.673096>,  <3.822752, 2.367891, 2.361684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.571709, 2.368462, 2.673096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184426, -0.971807, -0.146892,
		0.756370, -0.235771, 0.610177,
		-0.627607, 0.001428, 0.778529,
		3.383426, 2.368890, 2.906654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.016280, 1.760058, 2.806427>,  <3.822752, 2.367891, 2.361684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.016280, 1.760058, 2.806427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.646778, 1.891556, 2.727837>,  <3.425077, 1.970455, 2.680682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.646778, 1.891556, 2.727837>,  <4.016280, 1.760058, 2.806427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.646778, 1.891556, 2.727837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268725, -0.921899, -0.279087,
		-0.272880, -0.205010, 0.939950,
		-0.923755, 0.328745, -0.196476,
		3.369652, 1.990179, 2.668894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.451676, 1.533862, 3.184465>,  <4.016280, 1.760058, 2.806427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.451676, 1.533862, 3.184465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.296894, 1.584366, 2.819099>,  <3.204025, 1.614668, 2.599880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.296894, 1.584366, 2.819099>,  <3.451676, 1.533862, 3.184465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.296894, 1.584366, 2.819099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364817, -0.930719, 0.025897,
		-0.846862, 0.343250, 0.406207,
		-0.386954, 0.126260, -0.913414,
		3.180808, 1.622244, 2.545075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.728389, 1.323939, 3.199221>,  <3.451676, 1.533862, 3.184465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.728389, 1.323939, 3.199221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.896061, 1.281578, 2.838539>,  <2.996664, 1.256162, 2.622130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.896061, 1.281578, 2.838539>,  <2.728389, 1.323939, 3.199221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.896061, 1.281578, 2.838539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367319, -0.928042, -0.061762,
		-0.830280, 0.357103, -0.427916,
		0.419180, -0.105902, -0.901706,
		3.021815, 1.249807, 2.568027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.276213, 0.759871, 2.953410>,  <2.728389, 1.323939, 3.199221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.276213, 0.759871, 2.953410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.568748, 0.789658, 2.682236>,  <2.744270, 0.807530, 2.519531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.568748, 0.789658, 2.682236>,  <2.276213, 0.759871, 2.953410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.568748, 0.789658, 2.682236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024440, -0.990521, -0.135168,
		-0.681575, 0.115422, -0.722587,
		0.731339, 0.074467, -0.677936,
		2.788150, 0.811998, 2.478855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.052085, 0.391516, 2.261583>,  <2.276213, 0.759871, 2.953410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.052085, 0.391516, 2.261583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.449390, 0.403427, 2.306381>,  <2.687773, 0.410574, 2.333260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.449390, 0.403427, 2.306381>,  <2.052085, 0.391516, 2.261583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.449390, 0.403427, 2.306381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047107, -0.986723, -0.155432,
		0.105881, 0.159661, -0.981477,
		0.993262, 0.029777, 0.111996,
		2.747369, 0.412360, 2.339980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.335598, -0.002153, 1.745250>,  <2.052085, 0.391516, 2.261583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.335598, -0.002153, 1.745250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.637379, -0.015175, 2.007469>,  <2.818447, -0.022988, 2.164800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.637379, -0.015175, 2.007469>,  <2.335598, -0.002153, 1.745250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.637379, -0.015175, 2.007469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006168, -0.999077, -0.042515,
		0.656326, 0.028032, -0.753957,
		0.754452, -0.032555, 0.655547,
		2.863714, -0.024941, 2.204133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.467197, -0.761002, 2.582960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.822197, -0.902542, 2.701035>,  <3.035197, -0.987466, 2.771879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.822197, -0.902542, 2.701035>,  <2.467197, -0.761002, 2.582960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.822197, -0.902542, 2.701035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424839, 0.876421, -0.226712,
		-0.178486, 0.326614, 0.928152,
		0.887499, -0.353850, 0.295188,
		3.088447, -1.008697, 2.789591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.656255, -0.420649, 3.183382>,  <2.467197, -0.761002, 2.582960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.656255, -0.420649, 3.183382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.958900, -0.530411, 2.945984>,  <3.140488, -0.596268, 2.803545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.958900, -0.530411, 2.945984>,  <2.656255, -0.420649, 3.183382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.958900, -0.530411, 2.945984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243746, 0.960620, -0.133408,
		0.606731, -0.043724, 0.793704,
		0.756614, -0.274405, -0.593495,
		3.185885, -0.612732, 2.767935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.402639, -0.201306, 3.529493>,  <2.656255, -0.420649, 3.183382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.402639, -0.201306, 3.529493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.359491, -0.237732, 3.133499>,  <3.333603, -0.259587, 2.895903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.359491, -0.237732, 3.133499>,  <3.402639, -0.201306, 3.529493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.359491, -0.237732, 3.133499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280202, 0.958211, -0.057611,
		0.953861, 0.271182, -0.128878,
		-0.107869, -0.091065, -0.989986,
		3.327131, -0.265051, 2.836504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.817234, 0.112410, 3.019015>,  <3.402639, -0.201306, 3.529493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.817234, 0.112410, 3.019015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.491158, 0.083771, 2.789116>,  <3.295511, 0.066587, 2.651176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.491158, 0.083771, 2.789116>,  <3.817234, 0.112410, 3.019015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.491158, 0.083771, 2.789116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064399, 0.974972, -0.212794,
		0.575600, -0.210481, -0.790179,
		-0.815192, -0.071598, -0.574749,
		3.246600, 0.062291, 2.616691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.027279, 0.449740, 2.456070>,  <3.817234, 0.112410, 3.019015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.027279, 0.449740, 2.456070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.627449, 0.446274, 2.444946>,  <3.387551, 0.444194, 2.438272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.627449, 0.446274, 2.444946>,  <4.027279, 0.449740, 2.456070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.627449, 0.446274, 2.444946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003009, 0.980342, -0.197283,
		0.028972, -0.197116, -0.979952,
		-0.999576, -0.008665, -0.027809,
		3.327576, 0.443674, 2.436604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.983294, 0.833635, 1.839100>,  <4.027279, 0.449740, 2.456070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.983294, 0.833635, 1.839100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.624296, 0.828476, 2.015434>,  <3.408897, 0.825380, 2.121235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.624296, 0.828476, 2.015434>,  <3.983294, 0.833635, 1.839100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.624296, 0.828476, 2.015434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121115, 0.968350, -0.218243,
		-0.424069, -0.249264, -0.870651,
		-0.897495, -0.012899, 0.440837,
		3.355048, 0.824606, 2.147685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.466682, 1.037665, 1.326683>,  <3.983294, 0.833635, 1.839100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.466682, 1.037665, 1.326683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.321659, 1.117706, 1.690773>,  <3.234645, 1.165731, 1.909227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.321659, 1.117706, 1.690773>,  <3.466682, 1.037665, 1.326683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.321659, 1.117706, 1.690773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101522, 0.962385, -0.252009,
		-0.926415, -0.183776, -0.328604,
		-0.362557, 0.200104, 0.910225,
		3.212892, 1.177738, 1.963841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.929435, 1.544219, 1.178912>,  <3.466682, 1.037665, 1.326683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.929435, 1.544219, 1.178912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.025866, 1.577194, 1.565712>,  <3.083724, 1.596979, 1.797792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.025866, 1.577194, 1.565712>,  <2.929435, 1.544219, 1.178912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.025866, 1.577194, 1.565712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189968, 0.981120, -0.036282,
		-0.951733, -0.174952, 0.252184,
		0.241075, 0.082438, 0.966999,
		3.098188, 1.601925, 1.855812>
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
