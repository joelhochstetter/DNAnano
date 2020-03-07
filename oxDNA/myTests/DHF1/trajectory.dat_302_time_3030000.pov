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
	<3.451828, 2.314982, 5.665022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.777954, 2.544495, 5.696098>,  <3.973630, 2.682202, 5.714744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.777954, 2.544495, 5.696098>,  <3.451828, 2.314982, 5.665022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.777954, 2.544495, 5.696098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306526, 0.541549, -0.782794,
		-0.491226, 0.614410, 0.617412,
		0.815315, 0.573781, 0.077691,
		4.022549, 2.716629, 5.719406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.268419, 3.035431, 5.613296>,  <3.451828, 2.314982, 5.665022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.268419, 3.035431, 5.613296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.653645, 3.015503, 5.507446>,  <3.884780, 3.003546, 5.443936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.653645, 3.015503, 5.507446>,  <3.268419, 3.035431, 5.613296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.653645, 3.015503, 5.507446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215963, 0.444078, -0.869572,
		0.160836, 0.894602, 0.416916,
		0.963064, -0.049820, -0.264624,
		3.942564, 3.000557, 5.428059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.617195, 3.737412, 5.425379>,  <3.268419, 3.035431, 5.613296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.617195, 3.737412, 5.425379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780174, 3.423111, 5.239227>,  <3.877962, 3.234530, 5.127536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780174, 3.423111, 5.239227>,  <3.617195, 3.737412, 5.425379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.780174, 3.423111, 5.239227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258789, 0.389365, -0.883982,
		0.875794, 0.480611, -0.044699,
		0.407447, -0.785753, -0.465380,
		3.902408, 3.187385, 5.099613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.123837, 3.917843, 4.956195>,  <3.617195, 3.737412, 5.425379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.123837, 3.917843, 4.956195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.963669, 3.572678, 4.832878>,  <3.867568, 3.365578, 4.758888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.963669, 3.572678, 4.832878>,  <4.123837, 3.917843, 4.956195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.963669, 3.572678, 4.832878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120226, 0.383007, -0.915888,
		0.908411, -0.329674, -0.257108,
		-0.400419, -0.862914, -0.308292,
		3.843543, 3.313803, 4.740390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.422297, 3.646419, 4.374607>,  <4.123837, 3.917843, 4.956195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.422297, 3.646419, 4.374607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.038273, 3.536469, 4.353729>,  <3.807858, 3.470498, 4.341203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.038273, 3.536469, 4.353729>,  <4.422297, 3.646419, 4.374607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.038273, 3.536469, 4.353729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122711, 0.581328, -0.804363,
		0.251442, -0.765834, -0.591841,
		-0.960062, -0.274876, -0.052194,
		3.750254, 3.454005, 4.338071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.191741, 3.585706, 3.678922>,  <4.422297, 3.646419, 4.374607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.191741, 3.585706, 3.678922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.835239, 3.622360, 3.856583>,  <3.621339, 3.644353, 3.963179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.835239, 3.622360, 3.856583>,  <4.191741, 3.585706, 3.678922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.835239, 3.622360, 3.856583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331846, 0.535753, -0.776432,
		-0.309106, -0.839388, -0.447082,
		-0.891253, 0.091637, 0.444152,
		3.567863, 3.649851, 3.989828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.746059, 3.466024, 3.072775>,  <4.191741, 3.585706, 3.678922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.746059, 3.466024, 3.072775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.541363, 3.659988, 3.356461>,  <3.418545, 3.776367, 3.526672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.541363, 3.659988, 3.356461>,  <3.746059, 3.466024, 3.072775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.541363, 3.659988, 3.356461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406296, 0.590758, -0.697086,
		-0.756998, -0.644877, -0.105298,
		-0.511740, 0.484910, 0.709213,
		3.387841, 3.805461, 3.569225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.056355, 3.555211, 2.794242>,  <3.746059, 3.466024, 3.072775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.056355, 3.555211, 2.794242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.099293, 3.848938, 3.062347>,  <3.125056, 4.025174, 3.223211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.099293, 3.848938, 3.062347>,  <3.056355, 3.555211, 2.794242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.099293, 3.848938, 3.062347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279438, 0.669268, -0.688473,
		-0.954144, -0.113393, 0.277039,
		0.107345, 0.734318, 0.670264,
		3.131496, 4.069233, 3.263427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.036299, 4.321914, 2.442063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.190954, 4.690735, 2.449310>,  <2.283747, 4.912028, 2.453659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.190954, 4.690735, 2.449310>,  <2.036299, 4.321914, 2.442063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.190954, 4.690735, 2.449310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499794, -0.226006, 0.836138,
		0.775059, -0.314228, -0.548219,
		0.386639, 0.922053, 0.018119,
		2.306946, 4.967351, 2.454746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.854611, 4.463445, 2.430031>,  <2.036299, 4.321914, 2.442063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.854611, 4.463445, 2.430031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.677244, 4.762955, 2.627098>,  <2.570824, 4.942660, 2.745338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.677244, 4.762955, 2.627098>,  <2.854611, 4.463445, 2.430031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.677244, 4.762955, 2.627098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487781, -0.259548, 0.833489,
		0.751965, 0.609896, -0.250150,
		-0.443416, 0.748773, 0.492667,
		2.544219, 4.987587, 2.774898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.401840, 4.937239, 2.763026>,  <2.854611, 4.463445, 2.430031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.401840, 4.937239, 2.763026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.049944, 4.914825, 2.951881>,  <2.838806, 4.901378, 3.065195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.049944, 4.914825, 2.951881>,  <3.401840, 4.937239, 2.763026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.049944, 4.914825, 2.951881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448642, -0.426587, 0.785331,
		0.157404, 0.902709, 0.400425,
		-0.879741, -0.056033, 0.472140,
		2.786021, 4.898015, 3.093523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.500919, 5.090473, 3.528919>,  <3.401840, 4.937239, 2.763026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.500919, 5.090473, 3.528919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.177736, 4.861816, 3.471741>,  <2.983827, 4.724622, 3.437434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.177736, 4.861816, 3.471741>,  <3.500919, 5.090473, 3.528919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.177736, 4.861816, 3.471741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338635, -0.648986, 0.681281,
		-0.482218, 0.502039, 0.717930,
		-0.807956, -0.571642, -0.142945,
		2.935349, 4.690324, 3.428857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.310279, 4.723476, 4.200921>,  <3.500919, 5.090473, 3.528919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.310279, 4.723476, 4.200921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.138069, 4.508270, 3.911041>,  <3.034743, 4.379147, 3.737113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.138069, 4.508270, 3.911041>,  <3.310279, 4.723476, 4.200921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.138069, 4.508270, 3.911041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241642, -0.842317, 0.481780,
		-0.869631, 0.032300, 0.492644,
		-0.430524, -0.538014, -0.724700,
		3.008912, 4.346866, 3.693631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.794134, 4.536776, 4.545175>,  <3.310279, 4.723476, 4.200921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.794134, 4.536776, 4.545175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.944815, 4.308304, 4.253464>,  <3.035223, 4.171220, 4.078437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.944815, 4.308304, 4.253464>,  <2.794134, 4.536776, 4.545175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.944815, 4.308304, 4.253464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230255, -0.704829, 0.670968,
		-0.897261, -0.420676, -0.133993,
		0.376702, -0.571181, -0.729279,
		3.057826, 4.136950, 4.034680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.473741, 3.941985, 4.574495>,  <2.794134, 4.536776, 4.545175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.473741, 3.941985, 4.574495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.804996, 3.833649, 4.378197>,  <3.003750, 3.768647, 4.260417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.804996, 3.833649, 4.378197>,  <2.473741, 3.941985, 4.574495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.804996, 3.833649, 4.378197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110721, -0.779221, 0.616891,
		-0.549479, -0.565207, -0.615316,
		0.828139, -0.270841, -0.490746,
		3.053438, 3.752396, 4.230973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.451836, 3.198980, 4.456923>,  <2.473741, 3.941985, 4.574495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.451836, 3.198980, 4.456923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.842915, 3.259933, 4.399109>,  <3.077561, 3.296506, 4.364420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.842915, 3.259933, 4.399109>,  <2.451836, 3.198980, 4.456923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.842915, 3.259933, 4.399109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210028, -0.708473, 0.673761,
		0.000272, -0.689090, -0.724676,
		0.977695, 0.152385, -0.144536,
		3.136223, 3.305649, 4.355748>
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
