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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.113934, 53.307648, 50.142467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267849, 52.991253, 49.952194>,  <36.360199, 52.801414, 49.838032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267849, 52.991253, 49.952194>,  <36.113934, 53.307648, 50.142467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267849, 52.991253, 49.952194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428206, 0.303563, -0.851169,
		0.817665, 0.531210, -0.221899,
		0.384789, -0.790991, -0.475680,
		36.383286, 52.753956, 49.809490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418015, 53.567314, 49.644714>,  <36.113934, 53.307648, 50.142467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418015, 53.567314, 49.644714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281082, 53.200108, 49.564651>,  <36.198925, 52.979786, 49.516613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281082, 53.200108, 49.564651>,  <36.418015, 53.567314, 49.644714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281082, 53.200108, 49.564651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463338, 0.350264, -0.814023,
		0.817393, -0.185920, -0.545255,
		-0.342326, -0.918014, -0.200159,
		36.178383, 52.924702, 49.504604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137653, 53.294273, 49.393505>,  <36.418015, 53.567314, 49.644714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137653, 53.294273, 49.393505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319225, 53.383369, 49.738602>,  <37.428169, 53.436829, 49.945660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319225, 53.383369, 49.738602>,  <37.137653, 53.294273, 49.393505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319225, 53.383369, 49.738602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869838, 0.099167, -0.483268,
		-0.193199, 0.969821, -0.148732,
		0.453934, 0.222740, 0.862746,
		37.455406, 53.450191, 49.997425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448784, 53.970875, 49.354050>,  <37.137653, 53.294273, 49.393505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448784, 53.970875, 49.354050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641991, 53.780319, 49.647919>,  <37.757915, 53.665985, 49.824242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641991, 53.780319, 49.647919>,  <37.448784, 53.970875, 49.354050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641991, 53.780319, 49.647919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874547, 0.221140, -0.431584,
		0.043135, 0.850972, 0.523437,
		0.483018, -0.476387, 0.734676,
		37.786896, 53.637402, 49.868320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846222, 54.468819, 49.639893>,  <37.448784, 53.970875, 49.354050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846222, 54.468819, 49.639893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020622, 54.111115, 49.680298>,  <38.125263, 53.896492, 49.704540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020622, 54.111115, 49.680298>,  <37.846222, 54.468819, 49.639893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020622, 54.111115, 49.680298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860155, 0.381085, -0.338981,
		0.264640, 0.234687, 0.935354,
		0.436004, -0.894257, 0.101017,
		38.151424, 53.842838, 49.710602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457287, 54.543739, 50.054794>,  <37.846222, 54.468819, 49.639893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457287, 54.543739, 50.054794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457054, 54.248199, 49.785248>,  <38.456913, 54.070873, 49.623520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457054, 54.248199, 49.785248>,  <38.457287, 54.543739, 50.054794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457054, 54.248199, 49.785248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927521, 0.251471, -0.276525,
		0.373769, -0.625186, 0.685156,
		-0.000583, -0.738854, -0.673865,
		38.456879, 54.026543, 49.583088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061008, 54.013382, 50.130627>,  <38.457287, 54.543739, 50.054794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061008, 54.013382, 50.130627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936878, 54.081909, 49.756599>,  <38.862400, 54.123024, 49.532185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936878, 54.081909, 49.756599>,  <39.061008, 54.013382, 50.130627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936878, 54.081909, 49.756599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950424, 0.076340, -0.301440,
		0.019740, -0.982254, -0.186516,
		-0.310329, 0.171319, -0.935064,
		38.843781, 54.133305, 49.476082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627586, 53.942051, 49.738560>,  <39.061008, 54.013382, 50.130627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627586, 53.942051, 49.738560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385403, 54.091579, 49.457512>,  <39.240093, 54.181297, 49.288883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385403, 54.091579, 49.457512>,  <39.627586, 53.942051, 49.738560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385403, 54.091579, 49.457512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795808, 0.272893, -0.540573,
		-0.010336, -0.886447, -0.462714,
		-0.605461, 0.373819, -0.702621,
		39.203766, 54.203724, 49.246727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665600, 53.594463, 49.171974>,  <39.627586, 53.942051, 49.738560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665600, 53.594463, 49.171974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572693, 53.960411, 49.039871>,  <39.516949, 54.179977, 48.960609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572693, 53.960411, 49.039871>,  <39.665600, 53.594463, 49.171974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572693, 53.960411, 49.039871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786079, -0.023404, -0.617683,
		-0.572827, -0.403079, -0.713721,
		-0.232271, 0.914866, -0.330258,
		39.503010, 54.234871, 48.940792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496368, 53.498657, 48.411835>,  <39.665600, 53.594463, 49.171974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496368, 53.498657, 48.411835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650471, 53.834999, 48.563911>,  <39.742931, 54.036804, 48.655159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650471, 53.834999, 48.563911>,  <39.496368, 53.498657, 48.411835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650471, 53.834999, 48.563911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733737, -0.029259, -0.678803,
		-0.559649, 0.540474, -0.628236,
		0.385257, 0.840851, 0.380192,
		39.766048, 54.087254, 48.677967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623821, 54.013706, 47.873009>,  <39.496368, 53.498657, 48.411835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623821, 54.013706, 47.873009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860806, 54.100746, 48.183270>,  <40.002995, 54.152969, 48.369427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860806, 54.100746, 48.183270>,  <39.623821, 54.013706, 47.873009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860806, 54.100746, 48.183270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795239, -0.311892, -0.519921,
		0.128787, 0.924865, -0.357826,
		0.592459, 0.217598, 0.775656,
		40.038544, 54.166027, 48.415966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033882, 54.513741, 47.645458>,  <39.623821, 54.013706, 47.873009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033882, 54.513741, 47.645458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222145, 54.296810, 47.923843>,  <40.335102, 54.166653, 48.090874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222145, 54.296810, 47.923843>,  <40.033882, 54.513741, 47.645458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222145, 54.296810, 47.923843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688906, -0.266949, -0.673904,
		0.551262, 0.796631, 0.247970,
		0.470658, -0.542325, 0.695963,
		40.363342, 54.134113, 48.132633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752392, 54.669827, 47.566227>,  <40.033882, 54.513741, 47.645458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752392, 54.669827, 47.566227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769886, 54.323799, 47.766129>,  <40.780384, 54.116184, 47.886070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769886, 54.323799, 47.766129>,  <40.752392, 54.669827, 47.566227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769886, 54.323799, 47.766129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886431, -0.197119, -0.418789,
		0.460790, 0.461311, 0.758198,
		0.043737, -0.865064, 0.499751,
		40.783009, 54.064281, 47.916054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411175, 54.478767, 47.926048>,  <40.752392, 54.669827, 47.566227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411175, 54.478767, 47.926048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249802, 54.139130, 47.789646>,  <41.152977, 53.935349, 47.707806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249802, 54.139130, 47.789646>,  <41.411175, 54.478767, 47.926048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249802, 54.139130, 47.789646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877383, -0.253210, -0.407533,
		0.259686, -0.463606, 0.847132,
		-0.403437, -0.849090, -0.341005,
		41.128769, 53.884403, 47.687344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851948, 53.744995, 47.974430>,  <41.411175, 54.478767, 47.926048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851948, 53.744995, 47.974430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623375, 53.760372, 47.646530>,  <41.486229, 53.769596, 47.449791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623375, 53.760372, 47.646530>,  <41.851948, 53.744995, 47.974430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623375, 53.760372, 47.646530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776503, -0.297877, -0.555259,
		-0.265527, -0.953830, 0.140370,
		-0.571436, 0.038438, -0.819746,
		41.451942, 53.771904, 47.400608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008579, 54.043697, 48.608334>,  <41.851948, 53.744995, 47.974430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008579, 54.043697, 48.608334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090801, 53.941074, 48.986099>,  <42.140137, 53.879501, 49.212761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090801, 53.941074, 48.986099>,  <42.008579, 54.043697, 48.608334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090801, 53.941074, 48.986099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680951, 0.730602, 0.050264,
		-0.702888, 0.632769, 0.324886,
		0.205557, -0.256562, 0.944416,
		42.152470, 53.864105, 49.269424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923794, 54.658470, 49.172600>,  <42.008579, 54.043697, 48.608334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923794, 54.658470, 49.172600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170712, 54.368900, 49.295803>,  <42.318863, 54.195156, 49.369724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170712, 54.368900, 49.295803>,  <41.923794, 54.658470, 49.172600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170712, 54.368900, 49.295803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737067, 0.669062, 0.095330,
		-0.275090, 0.168177, 0.946595,
		0.617299, -0.723928, 0.308010,
		42.355900, 54.151722, 49.388206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134636, 54.961132, 49.765335>,  <41.923794, 54.658470, 49.172600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134636, 54.961132, 49.765335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360149, 54.662663, 49.623699>,  <42.495457, 54.483582, 49.538719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360149, 54.662663, 49.623699>,  <42.134636, 54.961132, 49.765335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360149, 54.662663, 49.623699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816155, 0.569062, 0.100299,
		0.126656, -0.345535, 0.929819,
		0.563781, -0.746173, -0.354085,
		42.529285, 54.438812, 49.517475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668278, 54.966366, 50.318710>,  <42.134636, 54.961132, 49.765335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668278, 54.966366, 50.318710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772797, 54.824394, 49.959656>,  <42.835506, 54.739212, 49.744225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772797, 54.824394, 49.959656>,  <42.668278, 54.966366, 50.318710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772797, 54.824394, 49.959656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723181, 0.687916, -0.061489,
		0.639323, -0.633088, 0.436424,
		0.261295, -0.354925, -0.897638,
		42.851185, 54.717918, 49.690365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061455, 55.567848, 50.614418>,  <42.668278, 54.966366, 50.318710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061455, 55.567848, 50.614418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814308, 55.871811, 50.695202>,  <42.666019, 56.054188, 50.743671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814308, 55.871811, 50.695202>,  <43.061455, 55.567848, 50.614418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814308, 55.871811, 50.695202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778941, 0.626582, 0.025428,
		-0.107219, 0.173022, -0.979065,
		-0.617863, 0.759907, 0.201956,
		42.628948, 56.099785, 50.755787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946407, 56.014294, 50.006275>,  <43.061455, 55.567848, 50.614418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946407, 56.014294, 50.006275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945942, 56.179977, 50.370346>,  <42.945663, 56.279388, 50.588791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945942, 56.179977, 50.370346>,  <42.946407, 56.014294, 50.006275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945942, 56.179977, 50.370346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861645, 0.462344, -0.209300,
		-0.507511, 0.784009, -0.357439,
		-0.001167, 0.414208, 0.910182,
		42.945591, 56.304241, 50.643402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156284, 56.731995, 49.941143>,  <42.946407, 56.014294, 50.006275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156284, 56.731995, 49.941143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250717, 56.644241, 50.319801>,  <43.307377, 56.591591, 50.546997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250717, 56.644241, 50.319801>,  <43.156284, 56.731995, 49.941143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250717, 56.644241, 50.319801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891802, 0.435834, -0.121398,
		-0.385948, 0.872881, 0.298535,
		0.236077, -0.219381, 0.946646,
		43.321541, 56.578426, 50.603794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353390, 57.424328, 50.284340>,  <43.156284, 56.731995, 49.941143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353390, 57.424328, 50.284340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475025, 57.107735, 50.496410>,  <43.548004, 56.917778, 50.623653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475025, 57.107735, 50.496410>,  <43.353390, 57.424328, 50.284340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475025, 57.107735, 50.496410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887636, 0.437465, 0.143967,
		-0.345881, 0.426824, 0.835576,
		0.304086, -0.791483, 0.530175,
		43.566250, 56.870289, 50.655464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627842, 57.712311, 50.801186>,  <43.353390, 57.424328, 50.284340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627842, 57.712311, 50.801186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775356, 57.344685, 50.745590>,  <43.863865, 57.124107, 50.712234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775356, 57.344685, 50.745590>,  <43.627842, 57.712311, 50.801186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775356, 57.344685, 50.745590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929397, 0.366975, 0.039376,
		0.014815, -0.143695, 0.989511,
		0.368784, -0.919065, -0.138986,
		43.885990, 57.068966, 50.703896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252499, 57.611481, 51.158249>,  <43.627842, 57.712311, 50.801186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252499, 57.611481, 51.158249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296223, 57.348537, 50.860008>,  <44.322456, 57.190769, 50.681065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296223, 57.348537, 50.860008>,  <44.252499, 57.611481, 51.158249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296223, 57.348537, 50.860008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933127, 0.326343, -0.150913,
		0.342527, -0.679246, 0.649077,
		0.109314, -0.657363, -0.745604,
		44.329018, 57.151329, 50.636326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825199, 57.026844, 51.268112>,  <44.252499, 57.611481, 51.158249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825199, 57.026844, 51.268112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748276, 57.161850, 50.899525>,  <44.702122, 57.242855, 50.678371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748276, 57.161850, 50.899525>,  <44.825199, 57.026844, 51.268112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748276, 57.161850, 50.899525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896223, 0.442910, -0.024812,
		0.399752, -0.830611, -0.387663,
		-0.192309, 0.337514, -0.921467,
		44.690582, 57.263103, 50.623085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272320, 56.671616, 50.692730>,  <44.825199, 57.026844, 51.268112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272320, 56.671616, 50.692730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156517, 57.050980, 50.641033>,  <45.087036, 57.278599, 50.610016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156517, 57.050980, 50.641033>,  <45.272320, 56.671616, 50.692730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156517, 57.050980, 50.641033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951920, 0.299415, 0.064807,
		0.100161, -0.104268, -0.989493,
		-0.289511, 0.948409, -0.129245,
		45.069664, 57.335503, 50.602261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523006, 57.043922, 50.071163>,  <45.272320, 56.671616, 50.692730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.523006, 57.043922, 50.071163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468639, 57.205421, 50.433052>,  <45.436020, 57.302319, 50.650185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468639, 57.205421, 50.433052>,  <45.523006, 57.043922, 50.071163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468639, 57.205421, 50.433052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981914, 0.176386, 0.068799,
		-0.131803, 0.897707, -0.420416,
		-0.135917, 0.403745, 0.904719,
		45.427864, 57.326546, 50.704468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102375, 57.473522, 50.219704>,  <45.523006, 57.043922, 50.071163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102375, 57.473522, 50.219704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965946, 57.487633, 50.595455>,  <45.884090, 57.496098, 50.820904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965946, 57.487633, 50.595455>,  <46.102375, 57.473522, 50.219704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965946, 57.487633, 50.595455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871589, 0.386208, 0.301953,
		-0.352143, 0.921737, -0.162470,
		-0.341069, 0.035276, 0.939376,
		45.863625, 57.498215, 50.877270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163368, 58.176350, 50.482456>,  <46.102375, 57.473522, 50.219704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163368, 58.176350, 50.482456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197144, 57.867538, 50.734440>,  <46.217407, 57.682251, 50.885628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197144, 57.867538, 50.734440>,  <46.163368, 58.176350, 50.482456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.197144, 57.867538, 50.734440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967715, 0.214213, 0.132820,
		-0.237485, 0.598403, 0.765189,
		0.084434, -0.772027, 0.629956,
		46.222473, 57.635929, 50.923428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557888, 58.298981, 51.019241>,  <46.163368, 58.176350, 50.482456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557888, 58.298981, 51.019241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609844, 57.902802, 51.000702>,  <46.641018, 57.665096, 50.989578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609844, 57.902802, 51.000702>,  <46.557888, 58.298981, 51.019241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609844, 57.902802, 51.000702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969332, 0.117007, 0.216111,
		-0.208623, -0.072996, 0.975268,
		0.129888, -0.990445, -0.046347,
		46.648811, 57.605667, 50.986797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865147, 57.882336, 51.722435>,  <46.557888, 58.298981, 51.019241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865147, 57.882336, 51.722435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979729, 57.750168, 51.362709>,  <47.048477, 57.670868, 51.146873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979729, 57.750168, 51.362709>,  <46.865147, 57.882336, 51.722435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.979729, 57.750168, 51.362709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955064, 0.173054, 0.240634,
		0.076119, -0.927833, 0.365147,
		0.286459, -0.330422, -0.899312,
		47.065666, 57.651043, 51.092915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.486847, 57.560825, 51.716190>,  <46.865147, 57.882336, 51.722435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.486847, 57.560825, 51.716190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.500298, 57.583527, 51.317062>,  <47.508366, 57.597145, 51.077583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.500298, 57.583527, 51.317062>,  <47.486847, 57.560825, 51.716190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.500298, 57.583527, 51.317062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995695, 0.084391, 0.038350,
		0.086383, -0.994815, -0.053669,
		0.033622, 0.056750, -0.997822,
		47.510384, 57.600552, 51.017715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.951069, 56.995098, 51.349628>,  <47.486847, 57.560825, 51.716190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.951069, 56.995098, 51.349628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.941025, 57.354012, 51.173332>,  <47.934998, 57.569359, 51.067554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.941025, 57.354012, 51.173332>,  <47.951069, 56.995098, 51.349628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.941025, 57.354012, 51.173332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974796, 0.119743, 0.188240,
		0.221680, -0.424901, -0.877677,
		-0.025112, 0.897285, -0.440736,
		47.933491, 57.623196, 51.041111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.486855, 57.058456, 50.894478>,  <47.951069, 56.995098, 51.349628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.486855, 57.058456, 50.894478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.417492, 57.447441, 50.956757>,  <48.375874, 57.680832, 50.994122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.417492, 57.447441, 50.956757>,  <48.486855, 57.058456, 50.894478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.417492, 57.447441, 50.956757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981795, 0.183138, -0.050383,
		-0.077510, 0.144124, -0.986519,
		-0.173407, 0.972465, 0.155695,
		48.365471, 57.739182, 51.003464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.878166, 57.454144, 50.373573>,  <48.486855, 57.058456, 50.894478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.878166, 57.454144, 50.373573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.805660, 57.641518, 50.719452>,  <48.762157, 57.753944, 50.926979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.805660, 57.641518, 50.719452>,  <48.878166, 57.454144, 50.373573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.805660, 57.641518, 50.719452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960238, 0.274150, 0.052780,
		-0.212333, 0.839886, -0.499506,
		-0.181269, 0.468437, 0.864701,
		48.751278, 57.782047, 50.978863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.389069, 57.899456, 50.623531>,  <48.878166, 57.454144, 50.373573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.389069, 57.899456, 50.623531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.173687, 57.997059, 50.946152>,  <49.044456, 58.055622, 51.139725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.173687, 57.997059, 50.946152>,  <49.389069, 57.899456, 50.623531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.173687, 57.997059, 50.946152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815057, 0.393759, 0.425012,
		-0.213879, 0.886235, -0.410905,
		-0.538458, 0.244010, 0.806549,
		49.012150, 58.070263, 51.188118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.592838, 58.608730, 50.966434>,  <49.389069, 57.899456, 50.623531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.592838, 58.608730, 50.966434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.448650, 58.401344, 51.276596>,  <49.362137, 58.276913, 51.462692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.448650, 58.401344, 51.276596>,  <49.592838, 58.608730, 50.966434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.448650, 58.401344, 51.276596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845636, 0.169174, 0.506240,
		-0.393647, 0.838196, 0.377451,
		-0.360474, -0.518466, 0.775404,
		49.340508, 58.245804, 51.509216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.794418, 59.051945, 51.521191>,  <49.592838, 58.608730, 50.966434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.794418, 59.051945, 51.521191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.752045, 58.666702, 51.620140>,  <49.726620, 58.435555, 51.679512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.752045, 58.666702, 51.620140>,  <49.794418, 59.051945, 51.521191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.752045, 58.666702, 51.620140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808866, 0.061234, 0.584795,
		-0.578370, 0.262047, 0.772541,
		-0.105938, -0.963111, 0.247376,
		49.720264, 58.377769, 51.694351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.731728, 59.007744, 52.254543>,  <49.794418, 59.051945, 51.521191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.731728, 59.007744, 52.254543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.882168, 58.686943, 52.068928>,  <49.972431, 58.494461, 51.957558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.882168, 58.686943, 52.068928>,  <49.731728, 59.007744, 52.254543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.882168, 58.686943, 52.068928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756324, -0.023593, 0.653772,
		-0.535277, -0.596849, 0.597704,
		0.376102, -0.802007, -0.464040,
		49.994999, 58.446342, 51.929714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.960537, 58.558830, 52.758434>,  <49.731728, 59.007744, 52.254543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.960537, 58.558830, 52.758434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.164791, 58.424141, 52.441986>,  <50.287346, 58.343327, 52.252117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.164791, 58.424141, 52.441986>,  <49.960537, 58.558830, 52.758434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.164791, 58.424141, 52.441986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826035, -0.063175, 0.560067,
		-0.238567, -0.939481, 0.245888,
		0.510638, -0.336726, -0.791116,
		50.317982, 58.323124, 52.204651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.265285, 57.943127, 52.932446>,  <49.960537, 58.558830, 52.758434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.265285, 57.943127, 52.932446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.498814, 58.115414, 52.657162>,  <50.638931, 58.218784, 52.491993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.498814, 58.115414, 52.657162>,  <50.265285, 57.943127, 52.932446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.498814, 58.115414, 52.657162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806801, -0.213099, 0.551054,
		0.090693, -0.876966, -0.471917,
		0.583821, 0.430719, -0.688211,
		50.673962, 58.244629, 52.450699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.756897, 57.419216, 52.832378>,  <50.265285, 57.943127, 52.932446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.756897, 57.419216, 52.832378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.915993, 57.777435, 52.752575>,  <51.011452, 57.992367, 52.704693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.915993, 57.777435, 52.752575>,  <50.756897, 57.419216, 52.832378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.915993, 57.777435, 52.752575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868511, -0.297388, 0.396546,
		0.295792, -0.331000, -0.896072,
		0.397738, 0.895544, -0.199512,
		51.035313, 58.046097, 52.692722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.438980, 57.334435, 52.436836>,  <50.756897, 57.419216, 52.832378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.438980, 57.334435, 52.436836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.381016, 57.641537, 52.686493>,  <51.346237, 57.825798, 52.836285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.381016, 57.641537, 52.686493>,  <51.438980, 57.334435, 52.436836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.381016, 57.641537, 52.686493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613728, -0.425041, 0.665340,
		0.776105, 0.479463, -0.409604,
		-0.144907, 0.767760, 0.624137,
		51.337543, 57.871864, 52.873734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.338634, 56.652634, 52.766045>,  <51.438980, 57.334435, 52.436836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.338634, 56.652634, 52.766045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.503574, 56.368851, 52.537437>,  <51.602539, 56.198582, 52.400272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.503574, 56.368851, 52.537437>,  <51.338634, 56.652634, 52.766045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.503574, 56.368851, 52.537437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804515, -0.010779, 0.593834,
		-0.427463, -0.704662, 0.566328,
		0.412348, -0.709462, -0.571519,
		51.627277, 56.156013, 52.365982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.633175, 56.210052, 53.141582>,  <51.338634, 56.652634, 52.766045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.633175, 56.210052, 53.141582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.825378, 56.095413, 52.810047>,  <51.940701, 56.026630, 52.611126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.825378, 56.095413, 52.810047>,  <51.633175, 56.210052, 53.141582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.825378, 56.095413, 52.810047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863246, -0.012092, 0.504638,
		-0.154650, -0.957975, 0.241594,
		0.480509, -0.286597, -0.828838,
		51.969532, 56.009434, 52.561394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.015892, 55.552795, 53.215336>,  <51.633175, 56.210052, 53.141582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.015892, 55.552795, 53.215336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.186584, 55.756744, 52.916557>,  <52.289001, 55.879112, 52.737289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.186584, 55.756744, 52.916557>,  <52.015892, 55.552795, 53.215336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.186584, 55.756744, 52.916557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901963, -0.179649, 0.392668,
		0.066020, -0.841285, -0.536545,
		0.426735, 0.509868, -0.746948,
		52.314606, 55.909706, 52.692474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.503986, 55.181053, 52.732925>,  <52.015892, 55.552795, 53.215336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.503986, 55.181053, 52.732925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.603359, 55.568184, 52.748901>,  <52.662983, 55.800461, 52.758488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.603359, 55.568184, 52.748901>,  <52.503986, 55.181053, 52.732925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.603359, 55.568184, 52.748901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862015, -0.239706, 0.446623,
		0.441827, -0.076525, -0.893830,
		0.248434, 0.967825, 0.039942,
		52.677891, 55.858532, 52.760883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.194736, 55.095234, 52.706238>,  <52.503986, 55.181053, 52.732925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.194736, 55.095234, 52.706238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.094685, 55.454041, 52.852005>,  <53.034653, 55.669323, 52.939465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.094685, 55.454041, 52.852005>,  <53.194736, 55.095234, 52.706238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.094685, 55.454041, 52.852005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881156, 0.054921, 0.469625,
		0.401245, 0.438580, -0.804145,
		-0.250133, 0.897012, 0.364421,
		53.019646, 55.723145, 52.961330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.706875, 55.556110, 52.520470>,  <53.194736, 55.095234, 52.706238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.706875, 55.556110, 52.520470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.534782, 55.695595, 52.853531>,  <53.431526, 55.779285, 53.053368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.534782, 55.695595, 52.853531>,  <53.706875, 55.556110, 52.520470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.534782, 55.695595, 52.853531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869767, -0.086823, 0.485765,
		0.241683, 0.933201, -0.265941,
		-0.430227, 0.348708, 0.832651,
		53.405716, 55.800209, 53.103325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.943275, 56.241409, 52.955559>,  <53.706875, 55.556110, 52.520470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.943275, 56.241409, 52.955559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.811466, 55.938164, 53.180656>,  <53.732380, 55.756218, 53.315716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.811466, 55.938164, 53.180656>,  <53.943275, 56.241409, 52.955559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.811466, 55.938164, 53.180656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905237, -0.084340, 0.416453,
		-0.268255, 0.646650, 0.714061,
		-0.329523, -0.758110, 0.562747,
		53.712608, 55.710732, 53.349480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.076199, 55.929245, 53.579075>,  <53.943275, 56.241409, 52.955559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.076199, 55.929245, 53.579075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.925583, 55.842995, 53.939457>,  <53.835213, 55.791245, 54.155685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.925583, 55.842995, 53.939457>,  <54.076199, 55.929245, 53.579075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.925583, 55.842995, 53.939457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691924, -0.712140, 0.118737,
		0.616003, 0.668103, 0.417347,
		-0.376538, -0.215630, 0.900957,
		53.812622, 55.778305, 54.209743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.602089, 55.993084, 54.163799>,  <54.076199, 55.929245, 53.579075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.602089, 55.993084, 54.163799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.324608, 55.707718, 54.203426>,  <54.158119, 55.536499, 54.227203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.324608, 55.707718, 54.203426>,  <54.602089, 55.993084, 54.163799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.324608, 55.707718, 54.203426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719145, -0.693694, 0.040227,
		0.040022, 0.099146, 0.994268,
		-0.693706, -0.713413, 0.099064,
		54.116497, 55.493694, 54.233147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.746571, 55.553349, 54.860790>,  <54.602089, 55.993084, 54.163799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.746571, 55.553349, 54.860790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.592400, 55.385773, 54.531929>,  <54.499897, 55.285229, 54.334614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.592400, 55.385773, 54.531929>,  <54.746571, 55.553349, 54.860790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.592400, 55.385773, 54.531929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711226, -0.702535, 0.024556,
		-0.587878, -0.575271, 0.568738,
		-0.385432, -0.418938, -0.822152,
		54.476768, 55.260090, 54.285282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.813164, 54.768333, 54.946934>,  <54.746571, 55.553349, 54.860790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.813164, 54.768333, 54.946934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.794998, 54.876678, 54.562317>,  <54.784100, 54.941685, 54.331547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.794998, 54.876678, 54.562317>,  <54.813164, 54.768333, 54.946934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.794998, 54.876678, 54.562317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748477, -0.628251, -0.212325,
		-0.661604, -0.729338, -0.174204,
		-0.045412, 0.270863, -0.961546,
		54.781376, 54.957935, 54.273853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.760017, 54.202621, 54.528301>,  <54.813164, 54.768333, 54.946934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.760017, 54.202621, 54.528301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.998787, 54.491875, 54.389294>,  <55.142048, 54.665424, 54.305889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.998787, 54.491875, 54.389294>,  <54.760017, 54.202621, 54.528301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.998787, 54.491875, 54.389294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751437, -0.655682, -0.073642,
		-0.281114, -0.217179, -0.934777,
		0.596923, 0.723128, -0.347518,
		55.177864, 54.708813, 54.285038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.002937, 53.989777, 53.882561>,  <54.760017, 54.202621, 54.528301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.002937, 53.989777, 53.882561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.262436, 54.226944, 54.073383>,  <55.418133, 54.369244, 54.187878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.262436, 54.226944, 54.073383>,  <55.002937, 53.989777, 53.882561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.262436, 54.226944, 54.073383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715250, -0.689150, -0.116142,
		0.259902, 0.416562, -0.871164,
		0.648744, 0.592915, 0.477057,
		55.457058, 54.404819, 54.216499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.570305, 54.117573, 53.349857>,  <55.002937, 53.989777, 53.882561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.570305, 54.117573, 53.349857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.664772, 54.125847, 53.738453>,  <55.721455, 54.130810, 53.971611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.664772, 54.125847, 53.738453>,  <55.570305, 54.117573, 53.349857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.664772, 54.125847, 53.738453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727863, -0.666126, -0.162764,
		0.643769, 0.745553, -0.172373,
		0.236171, 0.020681, 0.971491,
		55.735622, 54.132050, 54.029900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.398895, 54.184887, 53.502876>,  <55.570305, 54.117573, 53.349857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.398895, 54.184887, 53.502876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.192177, 53.953018, 53.754875>,  <56.068146, 53.813896, 53.906075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.192177, 53.953018, 53.754875>,  <56.398895, 54.184887, 53.502876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.192177, 53.953018, 53.754875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680214, -0.724868, -0.108971,
		0.519834, 0.372218, 0.768912,
		-0.516799, -0.579672, 0.630000,
		56.037136, 53.779118, 53.943874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.746414, 53.846226, 54.093422>,  <56.398895, 54.184887, 53.502876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.746414, 53.846226, 54.093422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.447769, 53.626385, 53.943489>,  <56.268581, 53.494480, 53.853531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.447769, 53.626385, 53.943489>,  <56.746414, 53.846226, 54.093422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.447769, 53.626385, 53.943489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633775, -0.758905, -0.149638,
		-0.202219, -0.349281, 0.914937,
		-0.746617, -0.549605, -0.374831,
		56.223785, 53.461502, 53.831039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.075409, 53.560261, 54.722775>,  <56.746414, 53.846226, 54.093422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.075409, 53.560261, 54.722775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.217216, 53.929420, 54.662666>,  <57.302299, 54.150917, 54.626602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.217216, 53.929420, 54.662666>,  <57.075409, 53.560261, 54.722775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.217216, 53.929420, 54.662666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648225, -0.126753, 0.750825,
		0.673885, -0.363591, -0.643180,
		0.354518, 0.922895, -0.150272,
		57.323570, 54.206287, 54.617584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.873554, 53.694080, 54.741535>,  <57.075409, 53.560261, 54.722775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.873554, 53.694080, 54.741535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.747314, 54.063118, 54.830276>,  <57.671570, 54.284538, 54.883522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.747314, 54.063118, 54.830276>,  <57.873554, 53.694080, 54.741535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.747314, 54.063118, 54.830276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825954, 0.152006, 0.542857,
		0.467113, 0.354568, -0.809992,
		-0.315603, 0.922592, 0.221853,
		57.652634, 54.339897, 54.896832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.155876, 53.301353, 55.374187>,  <57.873554, 53.694080, 54.741535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.155876, 53.301353, 55.374187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.030342, 53.009655, 55.130974>,  <57.955021, 52.834637, 54.985046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.030342, 53.009655, 55.130974>,  <58.155876, 53.301353, 55.374187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.030342, 53.009655, 55.130974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870041, 0.035544, -0.491697,
		0.380181, -0.683327, 0.623319,
		-0.313835, -0.729247, -0.608035,
		57.936192, 52.790882, 54.948563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.576679, 53.012783, 55.891247>,  <58.155876, 53.301353, 55.374187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.576679, 53.012783, 55.891247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.356102, 52.819649, 56.163361>,  <58.223755, 52.703770, 56.326630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.356102, 52.819649, 56.163361>,  <58.576679, 53.012783, 55.891247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.356102, 52.819649, 56.163361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668074, -0.232761, -0.706753,
		0.499585, -0.844213, -0.194212,
		-0.551446, -0.482832, 0.680280,
		58.190670, 52.674801, 56.367443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.058769, 52.513313, 56.079525>,  <58.576679, 53.012783, 55.891247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.058769, 52.513313, 56.079525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.058861, 52.913315, 56.079224>,  <59.058914, 53.153316, 56.079044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.058861, 52.913315, 56.079224>,  <59.058769, 52.513313, 56.079525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.058861, 52.913315, 56.079224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973485, -0.000051, 0.228752,
		0.228752, -0.000784, -0.973484,
		0.000229, 1.000000, -0.000751,
		59.058929, 53.213314, 56.078999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.692329, 52.632309, 55.869457>,  <59.058769, 52.513313, 56.079525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.692329, 52.632309, 55.869457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.569611, 52.971008, 56.043304>,  <59.495979, 53.174229, 56.147614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.569611, 52.971008, 56.043304>,  <59.692329, 52.632309, 55.869457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.569611, 52.971008, 56.043304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927250, 0.162912, 0.337144,
		0.214674, 0.506430, -0.835131,
		-0.306793, 0.846751, 0.434615,
		59.477573, 53.225033, 56.173691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.064941, 53.218994, 55.540230>,  <59.692329, 52.632309, 55.869457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.064941, 53.218994, 55.540230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.959518, 53.272415, 55.922371>,  <59.896267, 53.304466, 56.151657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.959518, 53.272415, 55.922371>,  <60.064941, 53.218994, 55.540230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.959518, 53.272415, 55.922371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958187, 0.150645, 0.243277,
		-0.111429, 0.979525, -0.167673,
		-0.263555, 0.133554, 0.955354,
		59.880451, 53.312481, 56.208977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.346939, 53.792271, 55.878368>,  <60.064941, 53.218994, 55.540230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.346939, 53.792271, 55.878368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.299477, 53.554035, 56.196159>,  <60.271000, 53.411095, 56.386833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.299477, 53.554035, 56.196159>,  <60.346939, 53.792271, 55.878368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.299477, 53.554035, 56.196159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960660, 0.133485, 0.243543,
		-0.251102, 0.792124, 0.556316,
		-0.118656, -0.595585, 0.794480,
		60.263878, 53.375359, 56.434502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.642963, 54.060101, 56.378990>,  <60.346939, 53.792271, 55.878368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.642963, 54.060101, 56.378990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.645638, 53.672070, 56.476067>,  <60.647243, 53.439251, 56.534313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.645638, 53.672070, 56.476067>,  <60.642963, 54.060101, 56.378990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.645638, 53.672070, 56.476067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896321, 0.113418, 0.428656,
		-0.443356, 0.214667, 0.870261,
		0.006685, -0.970080, 0.242695,
		60.647644, 53.381046, 56.548874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.673038, 53.883152, 57.065063>,  <60.642963, 54.060101, 56.378990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.673038, 53.883152, 57.065063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.851463, 53.590492, 56.858871>,  <60.958519, 53.414898, 56.735157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.851463, 53.590492, 56.858871>,  <60.673038, 53.883152, 57.065063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.851463, 53.590492, 56.858871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819230, 0.101852, 0.564348,
		-0.360400, -0.674033, 0.644819,
		0.446065, -0.731646, -0.515480,
		60.985283, 53.370998, 56.704227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.074108, 53.422005, 57.559525>,  <60.673038, 53.883152, 57.065063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.074108, 53.422005, 57.559525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.210846, 53.408371, 57.183868>,  <61.292889, 53.400188, 56.958473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.210846, 53.408371, 57.183868>,  <61.074108, 53.422005, 57.559525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.210846, 53.408371, 57.183868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939742, 0.018117, 0.341403,
		0.005378, -0.999254, 0.038224,
		0.341841, -0.034085, -0.939139,
		61.313400, 53.398144, 56.902126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.537220, 52.795414, 57.380226>,  <61.074108, 53.422005, 57.559525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.537220, 52.795414, 57.380226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.611687, 53.138546, 57.188614>,  <61.656364, 53.344425, 57.073647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.611687, 53.138546, 57.188614>,  <61.537220, 52.795414, 57.380226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.611687, 53.138546, 57.188614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956964, -0.047836, 0.286237,
		0.222627, -0.511703, -0.829818,
		0.186164, 0.857830, -0.479032,
		61.667538, 53.395893, 57.044903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.171848, 52.833607, 56.860725>,  <61.537220, 52.795414, 57.380226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.171848, 52.833607, 56.860725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.103920, 53.206528, 56.988464>,  <62.063164, 53.430279, 57.065105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.103920, 53.206528, 56.988464>,  <62.171848, 52.833607, 56.860725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.103920, 53.206528, 56.988464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983868, 0.141890, 0.108956,
		0.056268, 0.332695, -0.941354,
		-0.169818, 0.932299, 0.319344,
		62.052975, 53.486217, 57.084267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.694263, 53.251740, 56.471584>,  <62.171848, 52.833607, 56.860725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.694263, 53.251740, 56.471584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.573174, 53.504021, 56.757401>,  <62.500519, 53.655388, 56.928890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.573174, 53.504021, 56.757401>,  <62.694263, 53.251740, 56.471584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.573174, 53.504021, 56.757401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947629, 0.279242, 0.154993,
		-0.101776, 0.724043, -0.682205,
		-0.302722, 0.630703, 0.714544,
		62.482357, 53.693233, 56.971764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.898037, 53.934536, 56.362728>,  <62.694263, 53.251740, 56.471584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.898037, 53.934536, 56.362728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.885841, 53.828514, 56.748230>,  <62.878525, 53.764900, 56.979530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.885841, 53.828514, 56.748230>,  <62.898037, 53.934536, 56.362728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.885841, 53.828514, 56.748230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948669, 0.295995, 0.111419,
		-0.314797, 0.917679, 0.242420,
		-0.030492, -0.265051, 0.963752,
		62.876694, 53.749001, 57.037357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.173790, 54.542801, 56.907806>,  <62.898037, 53.934536, 56.362728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.173790, 54.542801, 56.907806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.202438, 54.166790, 57.041199>,  <63.219627, 53.941181, 57.121235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.202438, 54.166790, 57.041199>,  <63.173790, 54.542801, 56.907806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.202438, 54.166790, 57.041199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938664, 0.176587, 0.296186,
		-0.337314, 0.291818, 0.895021,
		0.071616, -0.940031, 0.333485,
		63.223923, 53.884781, 57.141243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.473724, 54.648228, 57.546314>,  <63.173790, 54.542801, 56.907806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.473724, 54.648228, 57.546314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.516365, 54.269501, 57.424873>,  <63.541950, 54.042267, 57.352009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.516365, 54.269501, 57.424873>,  <63.473724, 54.648228, 57.546314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.516365, 54.269501, 57.424873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952779, 0.009957, 0.303501,
		-0.284336, -0.321624, 0.903167,
		0.106606, -0.946815, -0.303605,
		63.548347, 53.985455, 57.333794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.597492, 54.107502, 58.034145>,  <63.473724, 54.648228, 57.546314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.597492, 54.107502, 58.034145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.782066, 54.057281, 57.682846>,  <63.892811, 54.027149, 57.472069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.782066, 54.057281, 57.682846>,  <63.597492, 54.107502, 58.034145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.782066, 54.057281, 57.682846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887159, 0.070628, 0.456026,
		0.004775, -0.989570, 0.143973,
		0.461438, -0.125549, -0.878244,
		63.920498, 54.019615, 57.419373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.192032, 53.543407, 58.088062>,  <63.597492, 54.107502, 58.034145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.192032, 53.543407, 58.088062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.258438, 53.815098, 57.802101>,  <64.298279, 53.978111, 57.630524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.258438, 53.815098, 57.802101>,  <64.192032, 53.543407, 58.088062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.258438, 53.815098, 57.802101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980537, -0.036632, 0.192887,
		0.104826, -0.733012, -0.672090,
		0.166009, 0.679228, -0.714906,
		64.308243, 54.018867, 57.587631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.699501, 53.209198, 57.544136>,  <64.192032, 53.543407, 58.088062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.699501, 53.209198, 57.544136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.767952, 53.601028, 57.586380>,  <64.809021, 53.836124, 57.611725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.767952, 53.601028, 57.586380>,  <64.699501, 53.209198, 57.544136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.767952, 53.601028, 57.586380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931369, -0.195798, 0.306944,
		0.321352, 0.045835, -0.945850,
		0.171127, 0.979572, 0.105609,
		64.819290, 53.894901, 57.618061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.293411, 53.335037, 57.113594>,  <64.699501, 53.209198, 57.544136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.293411, 53.335037, 57.113594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.256073, 53.607677, 57.403893>,  <65.233673, 53.771263, 57.578072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.256073, 53.607677, 57.403893>,  <65.293411, 53.335037, 57.113594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.256073, 53.607677, 57.403893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960145, -0.131262, 0.246762,
		0.263456, 0.719853, -0.642185,
		-0.093338, 0.681602, 0.725745,
		65.228073, 53.812157, 57.621616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.956985, 53.737976, 57.109268>,  <65.293411, 53.335037, 57.113594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.956985, 53.737976, 57.109268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.782509, 53.711235, 57.468216>,  <65.677826, 53.695190, 57.683582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.782509, 53.711235, 57.468216>,  <65.956985, 53.737976, 57.109268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.782509, 53.711235, 57.468216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882360, -0.227452, 0.411954,
		0.176567, 0.971492, 0.158203,
		-0.436194, -0.066855, 0.897366,
		65.651649, 53.691177, 57.737427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.133865, 54.379253, 56.809917>,  <65.956985, 53.737976, 57.109268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.133865, 54.379253, 56.809917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.489075, 54.204025, 56.865768>,  <66.702202, 54.098888, 56.899281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.489075, 54.204025, 56.865768>,  <66.133865, 54.379253, 56.809917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.489075, 54.204025, 56.865768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079078, 0.153635, 0.984958,
		-0.452933, -0.885715, 0.101791,
		0.888031, -0.438071, 0.139627,
		66.755486, 54.072605, 56.907658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.009163, 54.403011, 57.523869>,  <66.133865, 54.379253, 56.809917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.009163, 54.403011, 57.523869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.404266, 54.346817, 57.496765>,  <66.641327, 54.313103, 57.480503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.404266, 54.346817, 57.496765>,  <66.009163, 54.403011, 57.523869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.404266, 54.346817, 57.496765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143110, 0.643634, 0.751834,
		-0.062010, -0.752330, 0.655862,
		0.987762, -0.140481, -0.067755,
		66.700592, 54.304672, 57.476440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.237495, 54.233845, 58.217110>,  <66.009163, 54.403011, 57.523869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.237495, 54.233845, 58.217110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.495476, 54.438019, 57.989601>,  <66.650261, 54.560524, 57.853096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.495476, 54.438019, 57.989601>,  <66.237495, 54.233845, 58.217110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.495476, 54.438019, 57.989601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279818, 0.534840, 0.797275,
		0.711158, -0.673352, 0.202115,
		0.644946, 0.510434, -0.568772,
		66.688957, 54.591148, 57.818970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.003693, 54.148365, 58.405712>,  <66.237495, 54.233845, 58.217110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.003693, 54.148365, 58.405712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.910065, 54.508400, 58.258713>,  <66.853889, 54.724422, 58.170513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.910065, 54.508400, 58.258713>,  <67.003693, 54.148365, 58.405712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.910065, 54.508400, 58.258713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414684, 0.434319, 0.799627,
		0.879347, 0.034766, -0.474911,
		-0.234063, 0.900088, -0.367500,
		66.839844, 54.778427, 58.148464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.385971, 54.676525, 58.749531>,  <67.003693, 54.148365, 58.405712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.385971, 54.676525, 58.749531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.563652, 54.976643, 58.945389>,  <67.670258, 55.156712, 59.062904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.563652, 54.976643, 58.945389>,  <67.385971, 54.676525, 58.749531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.563652, 54.976643, 58.945389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084498, -0.579170, 0.810816,
		0.891937, -0.318785, -0.320661,
		0.444194, 0.750292, 0.489646,
		67.696907, 55.201729, 59.092281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.058632, 54.414806, 59.059181>,  <67.385971, 54.676525, 58.749531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.058632, 54.414806, 59.059181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.834015, 54.687927, 59.246132>,  <67.699242, 54.851799, 59.358303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.834015, 54.687927, 59.246132>,  <68.058632, 54.414806, 59.059181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.834015, 54.687927, 59.246132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034523, -0.583683, 0.811247,
		0.826724, 0.439419, 0.351338,
		-0.561548, 0.682806, 0.467375,
		67.665550, 54.892769, 59.386345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.408279, 54.691002, 59.638302>,  <68.058632, 54.414806, 59.059181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.408279, 54.691002, 59.638302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.011154, 54.694321, 59.686035>,  <67.772881, 54.696312, 59.714676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.011154, 54.694321, 59.686035>,  <68.408279, 54.691002, 59.638302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.011154, 54.694321, 59.686035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096818, -0.530178, 0.842340,
		0.070259, 0.847846, 0.525568,
		-0.992819, 0.008298, 0.119337,
		67.713310, 54.696812, 59.721836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.149902, 54.847454, 59.449116>,  <68.408279, 54.691002, 59.638302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.149902, 54.847454, 59.449116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.423050, 54.679832, 59.209755>,  <69.586937, 54.579258, 59.066139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.423050, 54.679832, 59.209755>,  <69.149902, 54.847454, 59.449116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.423050, 54.679832, 59.209755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726553, 0.304052, 0.616176,
		-0.076264, -0.855539, 0.512092,
		0.682865, -0.419053, -0.598406,
		69.627907, 54.554115, 59.030231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.717224, 54.658237, 59.833042>,  <69.149902, 54.847454, 59.449116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.717224, 54.658237, 59.833042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.864456, 54.713764, 59.465294>,  <69.952797, 54.747078, 59.244644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.864456, 54.713764, 59.465294>,  <69.717224, 54.658237, 59.833042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.864456, 54.713764, 59.465294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815430, 0.426904, 0.390931,
		0.446750, -0.893579, 0.043944,
		0.368088, 0.138815, -0.919370,
		69.974884, 54.755409, 59.189484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.393288, 54.260921, 59.748550>,  <69.717224, 54.658237, 59.833042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.393288, 54.260921, 59.748550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.350143, 54.592289, 59.528702>,  <70.324257, 54.791111, 59.396793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.350143, 54.592289, 59.528702>,  <70.393288, 54.260921, 59.748550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.350143, 54.592289, 59.528702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788465, 0.408025, 0.460259,
		0.605548, -0.383712, -0.697192,
		-0.107865, 0.828420, -0.549622,
		70.317787, 54.840816, 59.363815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.994232, 54.379692, 59.355190>,  <70.393288, 54.260921, 59.748550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.994232, 54.379692, 59.355190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.806526, 54.722393, 59.440765>,  <70.693901, 54.928013, 59.492111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.806526, 54.722393, 59.440765>,  <70.994232, 54.379692, 59.355190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.806526, 54.722393, 59.440765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841789, 0.360815, 0.401502,
		0.266794, 0.368504, -0.890520,
		-0.469268, 0.856748, 0.213940,
		70.665749, 54.979416, 59.504948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.414238, 54.862911, 59.215801>,  <70.994232, 54.379692, 59.355190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.414238, 54.862911, 59.215801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.180260, 55.063530, 59.470764>,  <71.039871, 55.183903, 59.623741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.180260, 55.063530, 59.470764>,  <71.414238, 54.862911, 59.215801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.180260, 55.063530, 59.470764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811076, 0.361285, 0.460031,
		0.000442, 0.786079, -0.618126,
		-0.584941, 0.501551, 0.637410,
		71.004776, 55.213997, 59.661987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.309967, 55.711723, 59.108906>,  <71.414238, 54.862911, 59.215801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.309967, 55.711723, 59.108906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.372078, 55.473801, 59.424400>,  <71.409348, 55.331047, 59.613697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.372078, 55.473801, 59.424400>,  <71.309967, 55.711723, 59.108906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.372078, 55.473801, 59.424400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980211, 0.192003, -0.048176,
		-0.122784, 0.780604, 0.612847,
		0.155275, -0.594804, 0.788732,
		71.418663, 55.295361, 59.661018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.601936, 56.133102, 59.656372>,  <71.309967, 55.711723, 59.108906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.601936, 56.133102, 59.656372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.750633, 55.763428, 59.621315>,  <71.839851, 55.541622, 59.600281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.750633, 55.763428, 59.621315>,  <71.601936, 56.133102, 59.656372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.750633, 55.763428, 59.621315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922552, 0.378297, -0.076092,
		0.103479, -0.052570, 0.993241,
		0.371740, -0.924190, -0.087645,
		71.862152, 55.486172, 59.595020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.992889, 56.792400, 59.571922>,  <71.601936, 56.133102, 59.656372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.992889, 56.792400, 59.571922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.924217, 57.180050, 59.501129>,  <71.883011, 57.412640, 59.458652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.924217, 57.180050, 59.501129>,  <71.992889, 56.792400, 59.571922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.924217, 57.180050, 59.501129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922779, 0.221110, 0.315580,
		0.344968, -0.109137, -0.932248,
		-0.171688, 0.969123, -0.176985,
		71.872711, 57.470787, 59.448032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.572655, 57.049828, 59.132938>,  <71.992889, 56.792400, 59.571922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.572655, 57.049828, 59.132938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.395851, 57.291012, 59.398590>,  <72.289772, 57.435722, 59.557980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.395851, 57.291012, 59.398590>,  <72.572655, 57.049828, 59.132938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.395851, 57.291012, 59.398590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896467, 0.322684, 0.303682,
		-0.031196, 0.729600, -0.683163,
		-0.442011, 0.602959, 0.664128,
		72.263245, 57.471901, 59.597828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.724037, 57.787079, 59.124981>,  <72.572655, 57.049828, 59.132938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.724037, 57.787079, 59.124981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.653862, 57.642647, 59.491333>,  <72.611755, 57.555988, 59.711143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.653862, 57.642647, 59.491333>,  <72.724037, 57.787079, 59.124981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.653862, 57.642647, 59.491333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798589, 0.491864, 0.346879,
		-0.575743, 0.792268, 0.202070,
		-0.175430, -0.361084, 0.915884,
		72.601234, 57.534321, 59.766098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.907150, 58.270187, 59.563087>,  <72.724037, 57.787079, 59.124981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.907150, 58.270187, 59.563087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.931702, 57.929523, 59.771286>,  <72.946434, 57.725124, 59.896206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.931702, 57.929523, 59.771286>,  <72.907150, 58.270187, 59.563087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.931702, 57.929523, 59.771286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679629, 0.417574, 0.603106,
		-0.730984, 0.316726, 0.604440,
		0.061379, -0.851655, 0.520496,
		72.950119, 57.674026, 59.927433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
