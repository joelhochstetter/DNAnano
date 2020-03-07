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
	<2.331253, 3.507871, 5.238626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.094098, 3.738216, 5.013462>,  <1.951805, 3.876424, 4.878364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.094098, 3.738216, 5.013462>,  <2.331253, 3.507871, 5.238626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.094098, 3.738216, 5.013462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523313, -0.255778, -0.812847,
		-0.612068, -0.776505, -0.149710,
		-0.592887, 0.575863, -0.562909,
		1.916232, 3.910975, 4.844589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.988691, 3.137317, 4.775102>,  <2.331253, 3.507871, 5.238626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.988691, 3.137317, 4.775102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.035153, 3.501881, 4.617195>,  <2.063031, 3.720619, 4.522451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.035153, 3.501881, 4.617195>,  <1.988691, 3.137317, 4.775102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.035153, 3.501881, 4.617195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484515, -0.398954, -0.778512,
		-0.867037, -0.100840, -0.487932,
		0.116157, 0.911409, -0.394766,
		2.070000, 3.775304, 4.498765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.802903, 2.983093, 4.149503>,  <1.988691, 3.137317, 4.775102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.802903, 2.983093, 4.149503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019131, 3.319534, 4.142246>,  <2.148867, 3.521399, 4.137892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019131, 3.319534, 4.142246>,  <1.802903, 2.983093, 4.149503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.019131, 3.319534, 4.142246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349066, -0.243856, -0.904813,
		-0.765466, 0.482781, -0.425422,
		0.540569, 0.841104, -0.018141,
		2.181301, 3.571866, 4.136804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.786134, 3.234591, 3.379161>,  <1.802903, 2.983093, 4.149503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.786134, 3.234591, 3.379161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.110862, 3.386261, 3.556778>,  <2.305698, 3.477263, 3.663348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.110862, 3.386261, 3.556778>,  <1.786134, 3.234591, 3.379161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.110862, 3.386261, 3.556778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511587, -0.095296, -0.853931,
		-0.281475, 0.920404, -0.271344,
		0.811819, 0.379176, 0.444043,
		2.354408, 3.500014, 3.689991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.965559, 3.851189, 3.007016>,  <1.786134, 3.234591, 3.379161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.965559, 3.851189, 3.007016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.282430, 3.704540, 3.202175>,  <2.472552, 3.616551, 3.319271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.282430, 3.704540, 3.202175>,  <1.965559, 3.851189, 3.007016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.282430, 3.704540, 3.202175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525275, 0.002577, -0.850929,
		0.310711, 0.930367, 0.194619,
		0.792177, -0.366621, 0.487897,
		2.520083, 3.594554, 3.348544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.535498, 4.216704, 2.844472>,  <1.965559, 3.851189, 3.007016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.535498, 4.216704, 2.844472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.642840, 3.842625, 2.936897>,  <2.707246, 3.618177, 2.992353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.642840, 3.842625, 2.936897>,  <2.535498, 4.216704, 2.844472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.642840, 3.842625, 2.936897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483937, -0.076522, -0.871751,
		0.832941, 0.345759, 0.432042,
		0.268355, -0.935198, 0.231064,
		2.723347, 3.562065, 3.006217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.112780, 4.210776, 2.437598>,  <2.535498, 4.216704, 2.844472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.112780, 4.210776, 2.437598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.040490, 3.832535, 2.545799>,  <2.997116, 3.605590, 2.610720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.040490, 3.832535, 2.545799>,  <3.112780, 4.210776, 2.437598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.040490, 3.832535, 2.545799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420737, -0.322927, -0.847761,
		0.888999, -0.039401, 0.456211,
		-0.180725, -0.945604, 0.270504,
		2.986273, 3.548854, 2.626951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.806911, 3.879651, 2.357593>,  <3.112780, 4.210776, 2.437598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.806911, 3.879651, 2.357593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.524305, 3.596958, 2.342789>,  <3.354742, 3.427343, 2.333906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.524305, 3.596958, 2.342789>,  <3.806911, 3.879651, 2.357593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.524305, 3.596958, 2.342789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489726, -0.450482, -0.746481,
		0.510889, -0.545524, 0.664376,
		-0.706513, -0.706731, -0.037011,
		3.312351, 3.384939, 2.331685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.291938, 3.145046, 0.949571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.176865, 2.804672, 1.125366>,  <3.107820, 2.600448, 1.230844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.176865, 2.804672, 1.125366>,  <3.291938, 3.145046, 0.949571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.176865, 2.804672, 1.125366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121126, 0.487530, 0.864663,
		-0.950035, 0.195517, -0.243325,
		-0.287684, -0.850933, 0.439489,
		3.090559, 2.549392, 1.257213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.718837, 3.302269, 1.342385>,  <3.291938, 3.145046, 0.949571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.718837, 3.302269, 1.342385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.938530, 3.006226, 1.497604>,  <3.070346, 2.828599, 1.590736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.938530, 3.006226, 1.497604>,  <2.718837, 3.302269, 1.342385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.938530, 3.006226, 1.497604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143342, 0.374036, 0.916269,
		-0.823283, -0.558869, 0.099345,
		0.549234, -0.740109, 0.388048,
		3.103300, 2.784193, 1.614019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.307061, 2.960822, 1.895924>,  <2.718837, 3.302269, 1.342385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.307061, 2.960822, 1.895924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.693531, 2.895836, 1.976036>,  <2.925413, 2.856844, 2.024103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.693531, 2.895836, 1.976036>,  <2.307061, 2.960822, 1.895924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.693531, 2.895836, 1.976036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161338, 0.225073, 0.960891,
		-0.201190, -0.960701, 0.191248,
		0.966174, -0.162466, 0.200280,
		2.983383, 2.847096, 2.036120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.364295, 2.489508, 2.506624>,  <2.307061, 2.960822, 1.895924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.364295, 2.489508, 2.506624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.688492, 2.715584, 2.445091>,  <2.883010, 2.851229, 2.408172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.688492, 2.715584, 2.445091>,  <2.364295, 2.489508, 2.506624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.688492, 2.715584, 2.445091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024367, 0.294928, 0.955209,
		0.585244, -0.770440, 0.252808,
		0.810491, 0.565190, -0.153831,
		2.931639, 2.885141, 2.398942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.825799, 2.350571, 3.090640>,  <2.364295, 2.489508, 2.506624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.825799, 2.350571, 3.090640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.883904, 2.714848, 2.935959>,  <2.918766, 2.933414, 2.843150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.883904, 2.714848, 2.935959>,  <2.825799, 2.350571, 3.090640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.883904, 2.714848, 2.935959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024464, 0.387424, 0.921577,
		0.989091, -0.143330, 0.033999,
		0.145262, 0.910692, -0.386704,
		2.927482, 2.988055, 2.819948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.348410, 2.565784, 3.411277>,  <2.825799, 2.350571, 3.090640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.348410, 2.565784, 3.411277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.154697, 2.890144, 3.279877>,  <3.038470, 3.084761, 3.201037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.154697, 2.890144, 3.279877>,  <3.348410, 2.565784, 3.411277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.154697, 2.890144, 3.279877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028289, 0.389783, 0.920472,
		0.874455, 0.436473, -0.211704,
		-0.484280, 0.810901, -0.328500,
		3.009413, 3.133415, 3.181327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.606721, 3.094046, 3.859551>,  <3.348410, 2.565784, 3.411277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.606721, 3.094046, 3.859551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.260151, 3.222183, 3.706352>,  <3.052209, 3.299065, 3.614433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.260151, 3.222183, 3.706352>,  <3.606721, 3.094046, 3.859551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.260151, 3.222183, 3.706352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161973, 0.545254, 0.822474,
		0.472304, 0.774648, -0.420535,
		-0.866426, 0.320342, -0.382998,
		3.000223, 3.318286, 3.591453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.529513, 3.700350, 4.156985>,  <3.606721, 3.094046, 3.859551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.529513, 3.700350, 4.156985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.158379, 3.620472, 4.030975>,  <2.935698, 3.572545, 3.955369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.158379, 3.620472, 4.030975>,  <3.529513, 3.700350, 4.156985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.158379, 3.620472, 4.030975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372699, 0.463202, 0.804077,
		-0.014651, 0.863461, -0.504202,
		-0.927837, -0.199696, -0.315025,
		2.880028, 3.560563, 3.936468>
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
