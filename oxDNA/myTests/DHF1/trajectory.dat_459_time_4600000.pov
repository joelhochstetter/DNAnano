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
	<3.586162, 3.380764, 2.344920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.919735, 3.594948, 2.398346>,  <4.119879, 3.723458, 2.430401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.919735, 3.594948, 2.398346>,  <3.586162, 3.380764, 2.344920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.919735, 3.594948, 2.398346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520916, -0.843673, 0.129857,
		0.182218, -0.038717, -0.982496,
		0.833933, 0.535460, 0.133564,
		4.169915, 3.755586, 2.438415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.145328, 3.173511, 1.925411>,  <3.586162, 3.380764, 2.344920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.145328, 3.173511, 1.925411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.334103, 3.349503, 2.231010>,  <4.447368, 3.455098, 2.414370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.334103, 3.349503, 2.231010>,  <4.145328, 3.173511, 1.925411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.334103, 3.349503, 2.231010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505015, -0.845225, 0.174799,
		0.722659, 0.303337, -0.621089,
		0.471937, 0.439979, 0.763999,
		4.475684, 3.481496, 2.460210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.985726, 3.128983, 1.935904>,  <4.145328, 3.173511, 1.925411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.985726, 3.128983, 1.935904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.816964, 3.151764, 2.297844>,  <4.715706, 3.165432, 2.515008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.816964, 3.151764, 2.297844>,  <4.985726, 3.128983, 1.935904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.816964, 3.151764, 2.297844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438201, -0.860903, 0.258507,
		0.793710, 0.505571, 0.338263,
		-0.421906, 0.056952, 0.904849,
		4.690392, 3.168850, 2.569299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.441286, 2.816138, 2.540943>,  <4.985726, 3.128983, 1.935904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.441286, 2.816138, 2.540943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.094802, 2.772427, 2.735977>,  <4.886911, 2.746200, 2.852998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.094802, 2.772427, 2.735977>,  <5.441286, 2.816138, 2.540943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.094802, 2.772427, 2.735977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286555, -0.908029, 0.305563,
		0.409350, 0.404402, 0.817858,
		-0.866210, -0.109279, 0.487585,
		4.834939, 2.739643, 2.882253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.621021, 2.510912, 3.138338>,  <5.441286, 2.816138, 2.540943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.621021, 2.510912, 3.138338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.232345, 2.425400, 3.098106>,  <4.999139, 2.374092, 3.073967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.232345, 2.425400, 3.098106>,  <5.621021, 2.510912, 3.138338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.232345, 2.425400, 3.098106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187511, -0.956810, 0.222160,
		-0.143729, 0.197011, 0.969809,
		-0.971690, -0.213781, -0.100580,
		4.940837, 2.361266, 3.067932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.485384, 1.935221, 3.598828>,  <5.621021, 2.510912, 3.138338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.485384, 1.935221, 3.598828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.160908, 1.910282, 3.366249>,  <4.966222, 1.895319, 3.226701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.160908, 1.910282, 3.366249>,  <5.485384, 1.935221, 3.598828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.160908, 1.910282, 3.366249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064739, -0.978614, 0.195252,
		-0.581187, 0.196029, 0.789807,
		-0.811191, -0.062347, -0.581448,
		4.917551, 1.891578, 3.191815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.960738, 1.518584, 3.972579>,  <5.485384, 1.935221, 3.598828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.960738, 1.518584, 3.972579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.880350, 1.514210, 3.580765>,  <4.832117, 1.511585, 3.345676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.880350, 1.514210, 3.580765>,  <4.960738, 1.518584, 3.972579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.880350, 1.514210, 3.580765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010936, -0.999850, 0.013406,
		-0.979536, 0.013406, 0.200821,
		-0.200970, -0.010935, -0.979536,
		4.820059, 1.510929, 3.286904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.404577, 1.050878, 3.855855>,  <4.960738, 1.518584, 3.972579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.404577, 1.050878, 3.855855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.641263, 1.049072, 3.533401>,  <4.783276, 1.047989, 3.339930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.641263, 1.049072, 3.533401>,  <4.404577, 1.050878, 3.855855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.641263, 1.049072, 3.533401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092249, -0.993036, 0.073274,
		-0.800850, -0.117723, -0.587180,
		0.591717, -0.004514, -0.806133,
		4.818779, 1.047718, 3.291562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.978568, 0.395587, 3.871176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.888828, 0.170578, 3.552872>,  <5.834984, 0.035573, 3.361889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.888828, 0.170578, 3.552872>,  <5.978568, 0.395587, 3.871176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.888828, 0.170578, 3.552872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752171, 0.419230, -0.508414,
		0.619601, -0.712611, 0.329059,
		-0.224350, -0.562523, -0.795761,
		5.821523, 0.001821, 3.314143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.610075, 0.748812, 3.301374>,  <5.978568, 0.395587, 3.871176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.610075, 0.748812, 3.301374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.456249, 0.612106, 2.958374>,  <5.363954, 0.530083, 2.752574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.456249, 0.612106, 2.958374>,  <5.610075, 0.748812, 3.301374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.456249, 0.612106, 2.958374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696142, 0.717424, 0.026263,
		0.606216, 0.607042, -0.513811,
		-0.384563, -0.341764, -0.857501,
		5.340880, 0.509577, 2.701124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.692003, 1.155144, 2.674846>,  <5.610075, 0.748812, 3.301374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.692003, 1.155144, 2.674846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.354692, 0.941483, 2.698730>,  <5.152306, 0.813286, 2.713061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.354692, 0.941483, 2.698730>,  <5.692003, 1.155144, 2.674846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.354692, 0.941483, 2.698730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526207, 0.843112, 0.110763,
		-0.109507, 0.061984, -0.992052,
		-0.843276, -0.534154, 0.059710,
		5.101710, 0.781236, 2.716644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.234735, 1.220801, 2.152009>,  <5.692003, 1.155144, 2.674846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.234735, 1.220801, 2.152009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.027367, 1.160919, 2.488777>,  <4.902946, 1.124990, 2.690838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.027367, 1.160919, 2.488777>,  <5.234735, 1.220801, 2.152009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.027367, 1.160919, 2.488777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282102, 0.959380, -0.003118,
		-0.807253, -0.239123, -0.539595,
		-0.518422, -0.149703, 0.841919,
		4.871840, 1.116008, 2.741353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.584431, 1.478733, 2.033167>,  <5.234735, 1.220801, 2.152009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.584431, 1.478733, 2.033167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.626032, 1.475441, 2.430984>,  <4.650992, 1.473466, 2.669675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.626032, 1.475441, 2.430984>,  <4.584431, 1.478733, 2.033167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.626032, 1.475441, 2.430984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260126, 0.964933, 0.035187,
		-0.959957, -0.262366, 0.098215,
		0.104003, -0.008230, 0.994543,
		4.657233, 1.472972, 2.729347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.033592, 1.853515, 2.271067>,  <4.584431, 1.478733, 2.033167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.033592, 1.853515, 2.271067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.295105, 1.866455, 2.573463>,  <4.452013, 1.874219, 2.754901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.295105, 1.866455, 2.573463>,  <4.033592, 1.853515, 2.271067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.295105, 1.866455, 2.573463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249437, 0.952455, 0.174957,
		-0.714388, -0.302956, 0.630767,
		0.653782, 0.032349, 0.755991,
		4.491240, 1.876160, 2.800261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.709596, 2.100863, 2.871275>,  <4.033592, 1.853515, 2.271067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.709596, 2.100863, 2.871275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.091341, 2.189949, 2.950867>,  <4.320388, 2.243401, 2.998621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.091341, 2.189949, 2.950867>,  <3.709596, 2.100863, 2.871275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.091341, 2.189949, 2.950867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255906, 0.953306, 0.160377,
		-0.153969, -0.203978, 0.966792,
		0.954362, 0.222715, 0.198978,
		4.377649, 2.256763, 3.010560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.774084, 2.482018, 3.569792>,  <3.709596, 2.100863, 2.871275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.774084, 2.482018, 3.569792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.020901, 2.530830, 3.258827>,  <4.168991, 2.560118, 3.072248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.020901, 2.530830, 3.258827>,  <3.774084, 2.482018, 3.569792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.020901, 2.530830, 3.258827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280220, 0.957220, -0.072158,
		0.735349, 0.262371, 0.624839,
		0.617041, 0.122031, -0.777412,
		4.206013, 2.567440, 3.025604>
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
