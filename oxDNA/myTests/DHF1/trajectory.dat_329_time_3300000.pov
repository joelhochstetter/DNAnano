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
	<2.049647, 3.291409, 0.380110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.289829, 3.151955, 0.092247>,  <2.433939, 3.068282, -0.080471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.289829, 3.151955, 0.092247>,  <2.049647, 3.291409, 0.380110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.289829, 3.151955, 0.092247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039359, -0.911750, 0.408855,
		-0.798689, -0.217174, -0.561187,
		0.600455, -0.348636, -0.719657,
		2.469966, 3.047364, -0.123650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.686832, 2.802241, 0.005776>,  <2.049647, 3.291409, 0.380110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.686832, 2.802241, 0.005776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.082565, 2.746201, 0.021736>,  <2.320005, 2.712576, 0.031312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.082565, 2.746201, 0.021736>,  <1.686832, 2.802241, 0.005776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.082565, 2.746201, 0.021736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138991, -0.825850, 0.546492,
		-0.043612, -0.546208, -0.836513,
		0.989333, -0.140102, 0.039901,
		2.379365, 2.704170, 0.033706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.892434, 2.030305, -0.227623>,  <1.686832, 2.802241, 0.005776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.892434, 2.030305, -0.227623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.144379, 2.208939, 0.026569>,  <2.295545, 2.316119, 0.179085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.144379, 2.208939, 0.026569>,  <1.892434, 2.030305, -0.227623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.144379, 2.208939, 0.026569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147351, -0.734610, 0.662295,
		0.762602, -0.510794, -0.396898,
		0.629861, 0.446585, 0.635482,
		2.333337, 2.342914, 0.217214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.491358, 1.529377, -0.073975>,  <1.892434, 2.030305, -0.227623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.491358, 1.529377, -0.073975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.370239, 1.783470, 0.210220>,  <2.297568, 1.935926, 0.380738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.370239, 1.783470, 0.210220>,  <2.491358, 1.529377, -0.073975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.370239, 1.783470, 0.210220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207755, -0.771552, 0.601286,
		0.930135, 0.034461, 0.365597,
		-0.302798, 0.635232, 0.710489,
		2.279400, 1.974040, 0.423367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.898359, 1.360124, 0.550752>,  <2.491358, 1.529377, -0.073975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.898359, 1.360124, 0.550752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.536812, 1.520370, 0.610790>,  <2.319884, 1.616518, 0.646813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.536812, 1.520370, 0.610790>,  <2.898359, 1.360124, 0.550752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.536812, 1.520370, 0.610790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242796, -0.769235, 0.591039,
		0.352239, 0.497779, 0.792555,
		-0.903868, 0.400617, 0.150096,
		2.265651, 1.640556, 0.655819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.761793, 1.573082, 1.252462>,  <2.898359, 1.360124, 0.550752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.761793, 1.573082, 1.252462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.405567, 1.502579, 1.084736>,  <2.191831, 1.460277, 0.984100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.405567, 1.502579, 1.084736>,  <2.761793, 1.573082, 1.252462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.405567, 1.502579, 1.084736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247843, -0.584958, 0.772268,
		-0.381401, 0.791680, 0.477259,
		-0.890566, -0.176258, -0.419316,
		2.138397, 1.449701, 0.958941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.245308, 1.596438, 1.806742>,  <2.761793, 1.573082, 1.252462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.245308, 1.596438, 1.806742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.098034, 1.395935, 1.493519>,  <2.009670, 1.275633, 1.305585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.098034, 1.395935, 1.493519>,  <2.245308, 1.596438, 1.806742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.098034, 1.395935, 1.493519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169916, -0.791762, 0.586721,
		-0.914094, 0.349076, 0.206343,
		-0.368184, -0.501257, -0.783059,
		1.987579, 1.245558, 1.258601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.686487, 1.291278, 2.050787>,  <2.245308, 1.596438, 1.806742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.686487, 1.291278, 2.050787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.809376, 1.084869, 1.730953>,  <1.883109, 0.961024, 1.539053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.809376, 1.084869, 1.730953>,  <1.686487, 1.291278, 2.050787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.809376, 1.084869, 1.730953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211304, -0.856235, 0.471394,
		-0.927882, 0.024133, -0.372092,
		0.307222, -0.516023, -0.799585,
		1.901542, 0.930063, 1.491078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.737289, -0.272488, 2.573167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.906176, -0.492737, 2.285126>,  <2.007508, -0.624886, 2.112301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.906176, -0.492737, 2.285126>,  <1.737289, -0.272488, 2.573167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.906176, -0.492737, 2.285126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272278, 0.680669, -0.680114,
		0.864638, 0.483223, 0.137467,
		0.422216, -0.550623, -0.720103,
		2.032840, -0.657924, 2.069095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.173475, 0.184708, 2.209850>,  <1.737289, -0.272488, 2.573167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.173475, 0.184708, 2.209850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.014025, -0.098618, 1.976822>,  <1.918355, -0.268613, 1.837005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.014025, -0.098618, 1.976822>,  <2.173475, 0.184708, 2.209850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.014025, -0.098618, 1.976822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190332, 0.685286, -0.702963,
		0.897146, -0.169338, -0.407988,
		-0.398627, -0.708313, -0.582571,
		1.894437, -0.311112, 1.802050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.594363, 0.175058, 1.569006>,  <2.173475, 0.184708, 2.209850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.594363, 0.175058, 1.569006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.216000, 0.056274, 1.516739>,  <1.988982, -0.014996, 1.485379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.216000, 0.056274, 1.516739>,  <2.594363, 0.175058, 1.569006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.216000, 0.056274, 1.516739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130095, 0.716132, -0.685733,
		0.297210, -0.631641, -0.716028,
		-0.945908, -0.296959, -0.130668,
		1.932227, -0.032813, 1.477538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.544059, 0.014443, 0.833655>,  <2.594363, 0.175058, 1.569006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.544059, 0.014443, 0.833655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.234358, 0.141083, 1.052853>,  <2.048537, 0.217066, 1.184371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.234358, 0.141083, 1.052853>,  <2.544059, 0.014443, 0.833655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.234358, 0.141083, 1.052853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052801, 0.830546, -0.554442,
		-0.630670, -0.458213, -0.626336,
		-0.774253, 0.316599, 0.547994,
		2.002082, 0.236062, 1.217251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.088665, 0.272306, 0.413451>,  <2.544059, 0.014443, 0.833655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.088665, 0.272306, 0.413451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.017300, 0.459366, 0.759739>,  <1.974481, 0.571602, 0.967512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.017300, 0.459366, 0.759739>,  <2.088665, 0.272306, 0.413451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.017300, 0.459366, 0.759739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141905, 0.858410, -0.492945,
		-0.973669, -0.210798, -0.086789,
		-0.178413, 0.467650, 0.865721,
		1.963776, 0.599661, 1.019455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.408703, 0.574776, 0.272931>,  <2.088665, 0.272306, 0.413451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.408703, 0.574776, 0.272931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.595558, 0.766418, 0.570183>,  <1.707671, 0.881404, 0.748534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.595558, 0.766418, 0.570183>,  <1.408703, 0.574776, 0.272931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.595558, 0.766418, 0.570183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119624, 0.866986, -0.483762,
		-0.876055, 0.137088, 0.462315,
		0.467138, 0.479106, 0.743128,
		1.735700, 0.910150, 0.793121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.941470, 1.219671, 0.488104>,  <1.408703, 0.574776, 0.272931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.941470, 1.219671, 0.488104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.318903, 1.267105, 0.611774>,  <1.545363, 1.295565, 0.685977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.318903, 1.267105, 0.611774>,  <0.941470, 1.219671, 0.488104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.318903, 1.267105, 0.611774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035177, 0.892499, -0.449676,
		-0.329263, 0.435183, 0.837975,
		0.943583, 0.118585, 0.309176,
		1.601978, 1.302680, 0.704527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.003919, 1.895956, 0.611500>,  <0.941470, 1.219671, 0.488104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.003919, 1.895956, 0.611500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.392921, 1.802826, 0.613560>,  <1.626323, 1.746948, 0.614796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.392921, 1.802826, 0.613560>,  <1.003919, 1.895956, 0.611500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.392921, 1.802826, 0.613560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217647, 0.900790, -0.375775,
		0.082851, 0.366564, 0.926697,
		0.972505, -0.232826, 0.005150,
		1.684673, 1.732978, 0.615105>
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
