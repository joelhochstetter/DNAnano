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
	<-1.019594, 3.258531, 1.347116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.739817, 3.052711, 1.545517>,  <-0.571950, 2.929220, 1.664557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.739817, 3.052711, 1.545517>,  <-1.019594, 3.258531, 1.347116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.739817, 3.052711, 1.545517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714537, 0.517673, -0.470586,
		-0.014627, 0.683560, 0.729747,
		0.699444, -0.514548, 0.496002,
		-0.529983, 2.898347, 1.694317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.643029, 3.774765, 1.745271>,  <-1.019594, 3.258531, 1.347116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.643029, 3.774765, 1.745271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.423479, 3.461609, 1.628090>,  <-0.291749, 3.273715, 1.557781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.423479, 3.461609, 1.628090>,  <-0.643029, 3.774765, 1.745271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.423479, 3.461609, 1.628090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703457, 0.621922, -0.344038,
		0.451537, -0.017245, 0.892086,
		0.548875, -0.782890, -0.292952,
		-0.258817, 3.226742, 1.540204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.062114, 3.795125, 1.997548>,  <-0.643029, 3.774765, 1.745271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.062114, 3.795125, 1.997548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.044474, 3.593117, 1.652756>,  <0.033889, 3.471912, 1.445881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.044474, 3.593117, 1.652756>,  <0.062114, 3.795125, 1.997548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.044474, 3.593117, 1.652756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695824, 0.603593, -0.389236,
		0.716857, -0.616952, 0.324786,
		-0.044101, -0.505020, -0.861980,
		0.031243, 3.441611, 1.394162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.650287, 3.381235, 1.976308>,  <0.062114, 3.795125, 1.997548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.650287, 3.381235, 1.976308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.485638, 3.552544, 1.654526>,  <0.386848, 3.655329, 1.461456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.485638, 3.552544, 1.654526>,  <0.650287, 3.381235, 1.976308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.485638, 3.552544, 1.654526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763629, 0.643872, -0.047952,
		0.497430, -0.634044, -0.592074,
		-0.411624, 0.428272, -0.804456,
		0.362151, 3.681025, 1.413189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.229464, 3.529256, 1.546178>,  <0.650287, 3.381235, 1.976308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.229464, 3.529256, 1.546178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.939943, 3.764999, 1.402641>,  <0.766231, 3.906446, 1.316519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.939943, 3.764999, 1.402641>,  <1.229464, 3.529256, 1.546178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.939943, 3.764999, 1.402641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667742, 0.729321, -0.149039,
		0.173873, -0.347488, -0.921423,
		-0.723802, 0.589359, -0.358842,
		0.722803, 3.941807, 1.294989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.435510, 3.673659, 0.876772>,  <1.229464, 3.529256, 1.546178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.435510, 3.673659, 0.876772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.201889, 3.964729, 1.020645>,  <1.061716, 4.139371, 1.106969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.201889, 3.964729, 1.020645>,  <1.435510, 3.673659, 0.876772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.201889, 3.964729, 1.020645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789033, 0.612973, 0.041125,
		-0.190550, 0.307820, -0.932168,
		-0.584053, 0.727675, 0.359683,
		1.026673, 4.183032, 1.128550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.708698, 4.304913, 0.616885>,  <1.435510, 3.673659, 0.876772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.708698, 4.304913, 0.616885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.489357, 4.434647, 0.925201>,  <1.357753, 4.512487, 1.110191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.489357, 4.434647, 0.925201>,  <1.708698, 4.304913, 0.616885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.489357, 4.434647, 0.925201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720850, 0.650548, 0.239085,
		-0.423893, 0.686727, -0.590526,
		-0.548352, 0.324334, 0.770790,
		1.324852, 4.531947, 1.156439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.824839, 5.021304, 0.610246>,  <1.708698, 4.304913, 0.616885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.824839, 5.021304, 0.610246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690161, 4.965500, 0.982735>,  <1.609354, 4.932018, 1.206228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690161, 4.965500, 0.982735>,  <1.824839, 5.021304, 0.610246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.690161, 4.965500, 0.982735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544144, 0.778284, 0.313339,
		-0.768468, 0.612219, -0.186131,
		-0.336695, -0.139509, 0.931222,
		1.589152, 4.923647, 1.262101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.800077, 5.233351, 1.731254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.553313, 5.234146, 2.046066>,  <2.405255, 5.234623, 2.234954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.553313, 5.234146, 2.046066>,  <2.800077, 5.233351, 1.731254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.553313, 5.234146, 2.046066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762202, -0.250724, -0.596813,
		0.196141, -0.968057, 0.156189,
		-0.616909, 0.001988, 0.787032,
		2.368240, 5.234743, 2.282176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.428554, 4.520103, 1.888962>,  <2.800077, 5.233351, 1.731254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.428554, 4.520103, 1.888962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.199864, 4.825981, 2.007874>,  <2.062650, 5.009508, 2.079220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.199864, 4.825981, 2.007874>,  <2.428554, 4.520103, 1.888962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.199864, 4.825981, 2.007874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738357, -0.321578, -0.592803,
		-0.357720, -0.558411, 0.748474,
		-0.571721, 0.764699, 0.297272,
		2.028347, 5.055389, 2.097057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.845901, 4.336657, 2.281105>,  <2.428554, 4.520103, 1.888962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.845901, 4.336657, 2.281105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.780996, 4.668633, 2.067612>,  <1.742053, 4.867818, 1.939515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.780996, 4.668633, 2.067612>,  <1.845901, 4.336657, 2.281105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.780996, 4.668633, 2.067612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799755, -0.427444, -0.421526,
		-0.577982, 0.358459, 0.733106,
		-0.162262, 0.829939, -0.533734,
		1.732318, 4.917614, 1.907491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.254702, 4.734910, 2.470955>,  <1.845901, 4.336657, 2.281105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.254702, 4.734910, 2.470955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329966, 4.806587, 2.084694>,  <1.375124, 4.849594, 1.852937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329966, 4.806587, 2.084694>,  <1.254702, 4.734910, 2.470955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.329966, 4.806587, 2.084694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840955, -0.478498, -0.252654,
		-0.507337, 0.859610, 0.060660,
		0.188158, 0.179193, -0.965653,
		1.386413, 4.860345, 1.794998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.684738, 5.016155, 2.168864>,  <1.254702, 4.734910, 2.470955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.684738, 5.016155, 2.168864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.890821, 4.844856, 1.871902>,  <1.014471, 4.742077, 1.693725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.890821, 4.844856, 1.871902>,  <0.684738, 5.016155, 2.168864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.890821, 4.844856, 1.871902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843972, -0.404334, -0.352456,
		-0.149241, 0.808157, -0.569745,
		0.515208, -0.428248, -0.742405,
		1.045384, 4.716382, 1.649181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.198092, 5.036397, 1.694698>,  <0.684738, 5.016155, 2.168864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.198092, 5.036397, 1.694698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.459869, 4.788322, 1.521690>,  <0.616936, 4.639478, 1.417886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.459869, 4.788322, 1.521690>,  <0.198092, 5.036397, 1.694698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.459869, 4.788322, 1.521690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749649, -0.606834, -0.264157,
		-0.098640, 0.497113, -0.862061,
		0.654443, -0.620186, -0.432518,
		0.656202, 4.602266, 1.391935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.107950, 4.889862, 1.032747>,  <0.198092, 5.036397, 1.694698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.107950, 4.889862, 1.032747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.145645, 4.593040, 1.119850>,  <0.297802, 4.414948, 1.172112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.145645, 4.593040, 1.119850>,  <-0.107950, 4.889862, 1.032747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.145645, 4.593040, 1.119850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657807, -0.665508, -0.352689,
		0.406634, 0.080358, -0.910050,
		0.633987, -0.742053, 0.217758,
		0.335841, 4.370425, 1.185178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.061977, 4.453517, 0.436373>,  <-0.107950, 4.889862, 1.032747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.061977, 4.453517, 0.436373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.042336, 4.222412, 0.745743>,  <0.104923, 4.083749, 0.931365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.042336, 4.222412, 0.745743>,  <-0.061977, 4.453517, 0.436373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.042336, 4.222412, 0.745743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520142, -0.759007, -0.391612,
		0.813293, -0.300165, -0.498454,
		0.260782, -0.577762, 0.773424,
		0.120570, 4.049084, 0.977770>
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
