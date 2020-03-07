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
	<1.722571, 2.331843, 4.240724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.352859, 2.316174, 4.392605>,  <1.131032, 2.306772, 4.483733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.352859, 2.316174, 4.392605>,  <1.722571, 2.331843, 4.240724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.352859, 2.316174, 4.392605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290279, 0.718096, -0.632516,
		-0.247884, -0.694841, -0.675093,
		-0.924279, -0.039174, 0.379702,
		1.075576, 2.304421, 4.506516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.212821, 2.306815, 3.685846>,  <1.722571, 2.331843, 4.240724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.212821, 2.306815, 3.685846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.076363, 2.506920, 4.004181>,  <0.994488, 2.626983, 4.195182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.076363, 2.506920, 4.004181>,  <1.212821, 2.306815, 3.685846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.076363, 2.506920, 4.004181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097387, 0.823261, -0.559247,
		-0.934952, -0.268289, -0.232133,
		-0.341146, 0.500262, 0.795838,
		0.974019, 2.656998, 4.242932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.628643, 2.715345, 3.463387>,  <1.212821, 2.306815, 3.685846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.628643, 2.715345, 3.463387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.842594, 2.860058, 3.768810>,  <0.970965, 2.946886, 3.952064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.842594, 2.860058, 3.768810>,  <0.628643, 2.715345, 3.463387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.842594, 2.860058, 3.768810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026173, 0.910354, -0.413001,
		-0.844525, 0.200920, 0.496396,
		0.534877, 0.361782, 0.763558,
		1.003057, 2.968592, 3.997878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.330891, 3.339525, 3.839885>,  <0.628643, 2.715345, 3.463387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.330891, 3.339525, 3.839885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.729553, 3.327137, 3.870134>,  <0.968751, 3.319704, 3.888284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.729553, 3.327137, 3.870134>,  <0.330891, 3.339525, 3.839885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.729553, 3.327137, 3.870134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064650, 0.864838, -0.497871,
		-0.049983, 0.501095, 0.863948,
		0.996655, -0.030970, 0.075623,
		1.028550, 3.317846, 3.892821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.497672, 3.906232, 4.161404>,  <0.330891, 3.339525, 3.839885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.497672, 3.906232, 4.161404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.833908, 3.811113, 3.966730>,  <1.035650, 3.754042, 3.849926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.833908, 3.811113, 3.966730>,  <0.497672, 3.906232, 4.161404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.833908, 3.811113, 3.966730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033336, 0.874071, -0.484654,
		0.540645, 0.423620, 0.726808,
		0.840590, -0.237797, -0.486683,
		1.086085, 3.739774, 3.820725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.038119, 4.405519, 4.181157>,  <0.497672, 3.906232, 4.161404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.038119, 4.405519, 4.181157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.146572, 4.202703, 3.853889>,  <1.211644, 4.081015, 3.657529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.146572, 4.202703, 3.853889>,  <1.038119, 4.405519, 4.181157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.146572, 4.202703, 3.853889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076658, 0.858683, -0.506742,
		0.959485, 0.074675, 0.271685,
		0.271132, -0.507038, -0.818169,
		1.227912, 4.050592, 3.608439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.518177, 4.848579, 3.937069>,  <1.038119, 4.405519, 4.181157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.518177, 4.848579, 3.937069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.464954, 4.602541, 3.626211>,  <1.433021, 4.454918, 3.439697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.464954, 4.602541, 3.626211>,  <1.518177, 4.848579, 3.937069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.464954, 4.602541, 3.626211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229637, 0.743646, -0.627899,
		0.964139, -0.262007, 0.042302,
		-0.133056, -0.615096, -0.777144,
		1.425037, 4.418012, 3.393068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.097895, 4.971846, 3.424688>,  <1.518177, 4.848579, 3.937069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.097895, 4.971846, 3.424688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.827484, 4.773016, 3.207100>,  <1.665238, 4.653718, 3.076547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.827484, 4.773016, 3.207100>,  <2.097895, 4.971846, 3.424688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.827484, 4.773016, 3.207100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040133, 0.761952, -0.646389,
		0.735779, -0.415148, -0.535052,
		-0.676031, -0.497072, -0.543967,
		1.624676, 4.623894, 3.043909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.117259, 5.853489, 2.804879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.960991, 5.623611, 2.517239>,  <0.867230, 5.485685, 2.344655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.960991, 5.623611, 2.517239>,  <1.117259, 5.853489, 2.804879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.960991, 5.623611, 2.517239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143372, -0.809633, 0.569156,
		-0.909297, 0.119253, 0.398694,
		-0.390669, -0.574694, -0.719100,
		0.843790, 5.451203, 2.301509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.746325, 5.302718, 3.157460>,  <1.117259, 5.853489, 2.804879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.746325, 5.302718, 3.157460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.894897, 5.204952, 2.799175>,  <0.984041, 5.146293, 2.584204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.894897, 5.204952, 2.799175>,  <0.746325, 5.302718, 3.157460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.894897, 5.204952, 2.799175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235054, -0.908546, 0.345389,
		-0.898213, -0.338829, -0.280014,
		0.371434, -0.244414, -0.895711,
		1.006327, 5.131628, 2.530462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.437154, 4.614604, 2.829571>,  <0.746325, 5.302718, 3.157460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.437154, 4.614604, 2.829571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.805420, 4.700970, 2.699490>,  <1.026379, 4.752789, 2.621440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.805420, 4.700970, 2.699490>,  <0.437154, 4.614604, 2.829571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.805420, 4.700970, 2.699490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343226, -0.844586, 0.410938,
		-0.185936, -0.489955, -0.851688,
		0.920665, 0.215913, -0.325204,
		1.081619, 4.765744, 2.601928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.638491, 4.055550, 2.416006>,  <0.437154, 4.614604, 2.829571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.638491, 4.055550, 2.416006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.942986, 4.231312, 2.606770>,  <1.125682, 4.336769, 2.721228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.942986, 4.231312, 2.606770>,  <0.638491, 4.055550, 2.416006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.942986, 4.231312, 2.606770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035807, -0.762791, 0.645653,
		0.647486, -0.474417, -0.596398,
		0.761236, 0.439406, 0.476909,
		1.171356, 4.363133, 2.749842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.125824, 3.549095, 2.459974>,  <0.638491, 4.055550, 2.416006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.125824, 3.549095, 2.459974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.209564, 3.818825, 2.743229>,  <1.259808, 3.980663, 2.913182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.209564, 3.818825, 2.743229>,  <1.125824, 3.549095, 2.459974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.209564, 3.818825, 2.743229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224801, -0.737978, 0.636281,
		0.951650, 0.025985, -0.306085,
		0.209350, 0.674325, 0.708138,
		1.272369, 4.021122, 2.955670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.755405, 3.383839, 2.664907>,  <1.125824, 3.549095, 2.459974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.755405, 3.383839, 2.664907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.567108, 3.565056, 2.967735>,  <1.454130, 3.673786, 3.149432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.567108, 3.565056, 2.967735>,  <1.755405, 3.383839, 2.664907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.567108, 3.565056, 2.967735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149709, -0.804631, 0.574592,
		0.869476, 0.383825, 0.310950,
		-0.470743, 0.453042, 0.757070,
		1.425885, 3.700968, 3.194856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.122733, 3.258465, 3.236835>,  <1.755405, 3.383839, 2.664907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.122733, 3.258465, 3.236835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.796608, 3.407993, 3.413708>,  <1.600933, 3.497710, 3.519832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.796608, 3.407993, 3.413708>,  <2.122733, 3.258465, 3.236835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.796608, 3.407993, 3.413708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093288, -0.668889, 0.737486,
		0.571458, 0.642531, 0.510480,
		-0.815311, 0.373820, 0.442183,
		1.552015, 3.520139, 3.546363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.321416, 3.295517, 3.938253>,  <2.122733, 3.258465, 3.236835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.321416, 3.295517, 3.938253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.921593, 3.293972, 3.926472>,  <1.681699, 3.293045, 3.919403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.921593, 3.293972, 3.926472>,  <2.321416, 3.295517, 3.938253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.921593, 3.293972, 3.926472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014309, -0.806290, 0.591347,
		-0.026033, 0.591507, 0.805879,
		-0.999559, -0.003863, -0.029454,
		1.621725, 3.292813, 3.917635>
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
