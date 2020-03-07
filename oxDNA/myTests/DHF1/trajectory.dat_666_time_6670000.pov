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
	<3.228760, 4.225368, 1.435915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.095491, 4.109810, 1.076908>,  <3.015530, 4.040475, 0.861504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.095491, 4.109810, 1.076908>,  <3.228760, 4.225368, 1.435915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.095491, 4.109810, 1.076908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772362, 0.462348, -0.435535,
		0.540789, -0.838316, 0.069092,
		-0.333171, -0.288897, -0.897516,
		2.995540, 4.023141, 0.807653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.771925, 3.982021, 0.953340>,  <3.228760, 4.225368, 1.435915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.771925, 3.982021, 0.953340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.479753, 4.169157, 0.754303>,  <3.304451, 4.281439, 0.634881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.479753, 4.169157, 0.754303>,  <3.771925, 3.982021, 0.953340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.479753, 4.169157, 0.754303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681974, 0.539289, -0.494043,
		0.037213, -0.700209, -0.712968,
		-0.730429, 0.467840, -0.497593,
		3.260625, 4.309509, 0.605025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.645984, 3.888944, 0.156305>,  <3.771925, 3.982021, 0.953340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.645984, 3.888944, 0.156305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.548498, 4.256153, 0.281420>,  <3.490007, 4.476479, 0.356489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.548498, 4.256153, 0.281420>,  <3.645984, 3.888944, 0.156305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.548498, 4.256153, 0.281420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611233, 0.395790, -0.685379,
		-0.752992, 0.024150, -0.657586,
		-0.243714, 0.918023, 0.312788,
		3.475384, 4.531560, 0.375256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.465395, 4.311382, -0.392959>,  <3.645984, 3.888944, 0.156305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.465395, 4.311382, -0.392959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.551855, 4.587715, -0.116980>,  <3.603731, 4.753515, 0.048608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.551855, 4.587715, -0.116980>,  <3.465395, 4.311382, -0.392959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.551855, 4.587715, -0.116980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539722, 0.504326, -0.674059,
		-0.813621, 0.518078, -0.263847,
		0.216150, 0.690833, 0.689949,
		3.616700, 4.794965, 0.090005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.189034, 4.929840, -0.567393>,  <3.465395, 4.311382, -0.392959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.189034, 4.929840, -0.567393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.489809, 5.026976, -0.322243>,  <3.670274, 5.085257, -0.175152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.489809, 5.026976, -0.322243>,  <3.189034, 4.929840, -0.567393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.489809, 5.026976, -0.322243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399816, 0.571194, -0.716857,
		-0.524153, 0.784070, 0.332412,
		0.751938, 0.242839, 0.612877,
		3.715390, 5.099827, -0.138380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.469705, 5.546390, -0.817945>,  <3.189034, 4.929840, -0.567393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.469705, 5.546390, -0.817945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.764997, 5.475903, -0.557495>,  <3.942173, 5.433610, -0.401225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.764997, 5.475903, -0.557495>,  <3.469705, 5.546390, -0.817945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.764997, 5.475903, -0.557495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594785, 0.625379, -0.505106,
		-0.318191, 0.760164, 0.566486,
		0.738231, -0.176218, 0.651124,
		3.986467, 5.423037, -0.362158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.793848, 6.258486, -0.555390>,  <3.469705, 5.546390, -0.817945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.793848, 6.258486, -0.555390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.065758, 5.969345, -0.505766>,  <4.228904, 5.795860, -0.475992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.065758, 5.969345, -0.505766>,  <3.793848, 6.258486, -0.555390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.065758, 5.969345, -0.505766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704162, 0.595950, -0.386003,
		0.205091, 0.349753, 0.914117,
		0.679774, -0.722853, 0.124059,
		4.269690, 5.752489, -0.468548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.366592, 6.546162, -0.196278>,  <3.793848, 6.258486, -0.555390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.366592, 6.546162, -0.196278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.507204, 6.224045, -0.387247>,  <4.591571, 6.030775, -0.501828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.507204, 6.224045, -0.387247>,  <4.366592, 6.546162, -0.196278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.507204, 6.224045, -0.387247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739732, 0.551491, -0.385556,
		0.573779, -0.217630, 0.789566,
		0.351530, -0.805292, -0.477422,
		4.612663, 5.982457, -0.530474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.023489, 1.753188, 3.301600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.269573, 1.439825, 3.336900>,  <5.417224, 1.251807, 3.358080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.269573, 1.439825, 3.336900>,  <5.023489, 1.753188, 3.301600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.269573, 1.439825, 3.336900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694222, -0.485296, 0.531548,
		-0.373590, -0.388282, -0.842418,
		0.615213, -0.783406, 0.088252,
		5.454137, 1.204803, 3.363375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.633796, 1.058709, 3.289307>,  <5.023489, 1.753188, 3.301600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.633796, 1.058709, 3.289307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.986164, 0.995424, 3.467721>,  <5.197585, 0.957453, 3.574769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.986164, 0.995424, 3.467721>,  <4.633796, 1.058709, 3.289307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.986164, 0.995424, 3.467721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432560, -0.651552, 0.623195,
		0.192019, -0.741922, -0.642402,
		0.880920, -0.158212, 0.446036,
		5.250440, 0.947961, 3.601532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.837250, 0.347226, 3.362459>,  <4.633796, 1.058709, 3.289307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.837250, 0.347226, 3.362459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.951912, 0.563998, 3.678469>,  <5.020709, 0.694062, 3.868075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.951912, 0.563998, 3.678469>,  <4.837250, 0.347226, 3.362459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.951912, 0.563998, 3.678469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540131, -0.589658, 0.600468,
		0.791258, -0.598844, 0.123686,
		0.286654, 0.541932, 0.790025,
		5.037908, 0.726578, 3.915476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.212943, -0.011055, 3.979112>,  <4.837250, 0.347226, 3.362459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.212943, -0.011055, 3.979112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.013813, 0.306544, 4.118676>,  <4.894335, 0.497104, 4.202415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.013813, 0.306544, 4.118676>,  <5.212943, -0.011055, 3.979112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.013813, 0.306544, 4.118676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495164, -0.590501, 0.637276,
		0.712029, 0.144483, 0.687124,
		-0.497824, 0.793998, 0.348911,
		4.864466, 0.544744, 4.223350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.075807, -0.259292, 4.650274>,  <5.212943, -0.011055, 3.979112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.075807, -0.259292, 4.650274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.818367, 0.038979, 4.581285>,  <4.663903, 0.217941, 4.539891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.818367, 0.038979, 4.581285>,  <5.075807, -0.259292, 4.650274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.818367, 0.038979, 4.581285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667359, -0.436422, 0.603463,
		0.374717, 0.503490, 0.778515,
		-0.643599, 0.745677, -0.172474,
		4.625288, 0.262682, 4.529542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.035250, 0.089333, 5.279515>,  <5.075807, -0.259292, 4.650274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.035250, 0.089333, 5.279515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.697021, 0.149762, 5.074698>,  <4.494084, 0.186020, 4.951808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.697021, 0.149762, 5.074698>,  <5.035250, 0.089333, 5.279515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.697021, 0.149762, 5.074698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531812, -0.322353, 0.783112,
		-0.046750, 0.934486, 0.352916,
		-0.845571, 0.151074, -0.512041,
		4.443350, 0.195084, 4.921086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.623121, 0.314829, 5.756052>,  <5.035250, 0.089333, 5.279515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.623121, 0.314829, 5.756052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.361210, 0.233330, 5.464916>,  <4.204063, 0.184430, 5.290235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.361210, 0.233330, 5.464916>,  <4.623121, 0.314829, 5.756052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.361210, 0.233330, 5.464916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636990, -0.369575, 0.676504,
		-0.406828, 0.906587, 0.112204,
		-0.654778, -0.203748, -0.727841,
		4.164776, 0.172205, 5.246564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.005253, 0.605307, 6.002646>,  <4.623121, 0.314829, 5.756052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.005253, 0.605307, 6.002646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.915333, 0.338940, 5.718106>,  <3.861380, 0.179119, 5.547382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.915333, 0.338940, 5.718106>,  <4.005253, 0.605307, 6.002646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.915333, 0.338940, 5.718106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751284, -0.346443, 0.561738,
		-0.620513, 0.660705, -0.422412,
		-0.224802, -0.665918, -0.711350,
		3.847892, 0.139164, 5.504702>
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
