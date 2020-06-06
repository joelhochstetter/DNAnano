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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.263878, 32.603004, 22.959013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184605, 32.895435, 23.220165>,  <43.137043, 33.070892, 23.376858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184605, 32.895435, 23.220165>,  <43.263878, 32.603004, 22.959013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184605, 32.895435, 23.220165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975316, -0.213263, -0.057249,
		0.097382, -0.648112, 0.755293,
		-0.198180, 0.731074, 0.652882,
		43.125149, 33.114758, 23.416029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757854, 32.410545, 23.263050>,  <43.263878, 32.603004, 22.959013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757854, 32.410545, 23.263050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739498, 32.797485, 23.362755>,  <42.728485, 33.029648, 23.422579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739498, 32.797485, 23.362755>,  <42.757854, 32.410545, 23.263050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739498, 32.797485, 23.362755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998919, -0.046294, -0.004262,
		0.007417, -0.249189, 0.968426,
		-0.045894, 0.967348, 0.249263,
		42.725731, 33.087688, 23.437534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398411, 32.359348, 23.832083>,  <42.757854, 32.410545, 23.263050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398411, 32.359348, 23.832083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370121, 32.726570, 23.676048>,  <42.353146, 32.946903, 23.582428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370121, 32.726570, 23.676048>,  <42.398411, 32.359348, 23.832083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370121, 32.726570, 23.676048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993672, -0.030632, 0.108065,
		0.087260, 0.395261, 0.914415,
		-0.070724, 0.918058, -0.390087,
		42.348904, 33.001987, 23.559023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084492, 32.915703, 24.355766>,  <42.398411, 32.359348, 23.832083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084492, 32.915703, 24.355766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035057, 33.049503, 23.982063>,  <42.005394, 33.129784, 23.757841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035057, 33.049503, 23.982063>,  <42.084492, 32.915703, 24.355766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035057, 33.049503, 23.982063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980140, 0.105985, 0.167607,
		0.155082, 0.936418, 0.314756,
		-0.123591, 0.334498, -0.934257,
		41.997978, 33.149853, 23.701786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672791, 33.579540, 24.344250>,  <42.084492, 32.915703, 24.355766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672791, 33.579540, 24.344250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636833, 33.363914, 24.009270>,  <41.615261, 33.234539, 23.808281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636833, 33.363914, 24.009270>,  <41.672791, 33.579540, 24.344250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636833, 33.363914, 24.009270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995234, 0.080540, 0.054982,
		0.037810, 0.838402, -0.543739,
		-0.089889, -0.539069, -0.837452,
		41.609867, 33.202194, 23.758034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144901, 33.678425, 24.850563>,  <41.672791, 33.579540, 24.344250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144901, 33.678425, 24.850563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849083, 33.806576, 25.087349>,  <40.671593, 33.883469, 25.229420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849083, 33.806576, 25.087349>,  <41.144901, 33.678425, 24.850563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849083, 33.806576, 25.087349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003773, 0.877471, -0.479615,
		-0.673091, -0.356933, -0.647725,
		-0.739550, 0.320381, 0.591965,
		40.627216, 33.902691, 25.264938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615837, 34.006599, 24.397114>,  <41.144901, 33.678425, 24.850563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615837, 34.006599, 24.397114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567860, 34.161793, 24.762646>,  <40.539074, 34.254910, 24.981964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567860, 34.161793, 24.762646>,  <40.615837, 34.006599, 24.397114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567860, 34.161793, 24.762646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105475, 0.920244, -0.376862,
		-0.987162, 0.051185, -0.151296,
		-0.119939, 0.387982, 0.913830,
		40.531879, 34.278187, 25.036795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191509, 34.563953, 24.280148>,  <40.615837, 34.006599, 24.397114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191509, 34.563953, 24.280148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330441, 34.657108, 24.643494>,  <40.413799, 34.713001, 24.861502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330441, 34.657108, 24.643494>,  <40.191509, 34.563953, 24.280148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330441, 34.657108, 24.643494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168329, 0.937454, -0.304706,
		-0.922510, 0.258738, 0.286407,
		0.347333, 0.232883, 0.908364,
		40.434639, 34.726974, 24.916002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900391, 35.147064, 24.446205>,  <40.191509, 34.563953, 24.280148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900391, 35.147064, 24.446205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233444, 35.119102, 24.665962>,  <40.433277, 35.102325, 24.797817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233444, 35.119102, 24.665962>,  <39.900391, 35.147064, 24.446205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233444, 35.119102, 24.665962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240912, 0.938945, -0.245650,
		-0.498678, 0.336892, 0.798639,
		0.832636, -0.069901, 0.549392,
		40.483234, 35.098133, 24.830780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904549, 35.791134, 24.646217>,  <39.900391, 35.147064, 24.446205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904549, 35.791134, 24.646217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271729, 35.660275, 24.735962>,  <40.492035, 35.581757, 24.789808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271729, 35.660275, 24.735962>,  <39.904549, 35.791134, 24.646217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271729, 35.660275, 24.735962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355892, 0.929002, -0.101468,
		-0.175239, 0.172991, 0.969209,
		0.917950, -0.327153, 0.224363,
		40.547115, 35.562130, 24.803270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142948, 36.273857, 25.117489>,  <39.904549, 35.791134, 24.646217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142948, 36.273857, 25.117489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480953, 36.112812, 24.976711>,  <40.683754, 36.016186, 24.892244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480953, 36.112812, 24.976711>,  <40.142948, 36.273857, 25.117489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480953, 36.112812, 24.976711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431107, 0.902296, 0.002877,
		0.316398, -0.154157, 0.936017,
		0.845008, -0.402613, -0.351943,
		40.734455, 35.992027, 24.871128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664829, 36.463181, 25.559519>,  <40.142948, 36.273857, 25.117489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664829, 36.463181, 25.559519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871304, 36.387070, 25.225491>,  <40.995190, 36.341404, 25.025074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871304, 36.387070, 25.225491>,  <40.664829, 36.463181, 25.559519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871304, 36.387070, 25.225491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212197, 0.973023, -0.090543,
		0.829772, -0.130462, 0.542641,
		0.516189, -0.190276, -0.835071,
		41.026161, 36.329987, 24.974970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242542, 36.702164, 25.685431>,  <40.664829, 36.463181, 25.559519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242542, 36.702164, 25.685431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256493, 36.683403, 25.286114>,  <41.264862, 36.672146, 25.046524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256493, 36.683403, 25.286114>,  <41.242542, 36.702164, 25.685431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256493, 36.683403, 25.286114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243960, 0.969079, -0.037007,
		0.969158, -0.242252, 0.045241,
		0.034877, -0.046903, -0.998290,
		41.266956, 36.669331, 24.986626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772614, 37.101654, 25.531372>,  <41.242542, 36.702164, 25.685431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772614, 37.101654, 25.531372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542702, 37.089375, 25.204281>,  <41.404755, 37.082008, 25.008026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542702, 37.089375, 25.204281>,  <41.772614, 37.101654, 25.531372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542702, 37.089375, 25.204281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210025, 0.960287, -0.183677,
		0.790894, -0.277319, -0.545511,
		-0.574784, -0.030698, -0.817729,
		41.370266, 37.080166, 24.958961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130634, 37.485840, 25.129574>,  <41.772614, 37.101654, 25.531372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130634, 37.485840, 25.129574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762344, 37.466518, 24.974686>,  <41.541370, 37.454926, 24.881752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762344, 37.466518, 24.974686>,  <42.130634, 37.485840, 25.129574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762344, 37.466518, 24.974686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074614, 0.952212, -0.296185,
		0.383022, -0.301596, -0.873117,
		-0.920721, -0.048299, -0.387221,
		41.486130, 37.452030, 24.858519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220020, 37.932957, 24.555201>,  <42.130634, 37.485840, 25.129574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220020, 37.932957, 24.555201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822186, 37.895153, 24.572491>,  <41.583485, 37.872471, 24.582865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822186, 37.895153, 24.572491>,  <42.220020, 37.932957, 24.555201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822186, 37.895153, 24.572491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101969, 0.967725, -0.230459,
		-0.020049, -0.233619, -0.972122,
		-0.994586, -0.094506, 0.043224,
		41.523811, 37.866802, 24.585457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091694, 38.359409, 24.076920>,  <42.220020, 37.932957, 24.555201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091694, 38.359409, 24.076920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752045, 38.290012, 24.276478>,  <41.548256, 38.248375, 24.396212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752045, 38.290012, 24.276478>,  <42.091694, 38.359409, 24.076920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752045, 38.290012, 24.276478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282589, 0.947190, -0.151573,
		-0.446250, -0.269686, -0.853306,
		-0.849120, -0.173495, 0.498894,
		41.497307, 38.237965, 24.426146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529720, 38.752796, 23.728436>,  <42.091694, 38.359409, 24.076920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529720, 38.752796, 23.728436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430073, 38.690926, 24.110851>,  <41.370285, 38.653805, 24.340302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430073, 38.690926, 24.110851>,  <41.529720, 38.752796, 23.728436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430073, 38.690926, 24.110851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354344, 0.933274, 0.058656,
		-0.901320, -0.324155, -0.287308,
		-0.249123, -0.154674, 0.956041,
		41.355335, 38.644524, 24.397663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802094, 38.850342, 23.774130>,  <41.529720, 38.752796, 23.728436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802094, 38.850342, 23.774130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932407, 38.926949, 24.144466>,  <41.010597, 38.972912, 24.366669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932407, 38.926949, 24.144466>,  <40.802094, 38.850342, 23.774130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932407, 38.926949, 24.144466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637020, 0.768079, 0.065271,
		-0.698620, -0.611045, 0.372229,
		0.325785, 0.191517, 0.925843,
		41.030144, 38.984406, 24.422220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255707, 39.228218, 24.121004>,  <40.802094, 38.850342, 23.774130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255707, 39.228218, 24.121004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540165, 39.281071, 24.397209>,  <40.710842, 39.312782, 24.562933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540165, 39.281071, 24.397209>,  <40.255707, 39.228218, 24.121004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540165, 39.281071, 24.397209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409594, 0.876143, 0.254178,
		-0.571402, -0.463589, 0.677189,
		0.711149, 0.132135, 0.690513,
		40.753510, 39.320713, 24.604362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951874, 39.468834, 24.667496>,  <40.255707, 39.228218, 24.121004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951874, 39.468834, 24.667496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329029, 39.591301, 24.719994>,  <40.555321, 39.664783, 24.751492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329029, 39.591301, 24.719994>,  <39.951874, 39.468834, 24.667496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329029, 39.591301, 24.719994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325540, 0.930460, 0.168131,
		-0.070641, -0.201254, 0.976989,
		0.942886, 0.306172, 0.131245,
		40.611897, 39.683151, 24.759367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999203, 39.872196, 25.276337>,  <39.951874, 39.468834, 24.667496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999203, 39.872196, 25.276337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315392, 39.992218, 25.062752>,  <40.505104, 40.064232, 24.934601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315392, 39.992218, 25.062752>,  <39.999203, 39.872196, 25.276337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315392, 39.992218, 25.062752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282114, 0.952167, 0.117429,
		0.543656, 0.057813, 0.837314,
		0.790474, 0.300059, -0.533961,
		40.552532, 40.082237, 24.902563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290428, 40.431644, 25.666681>,  <39.999203, 39.872196, 25.276337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290428, 40.431644, 25.666681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465694, 40.499722, 25.313625>,  <40.570854, 40.540565, 25.101791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465694, 40.499722, 25.313625>,  <40.290428, 40.431644, 25.666681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465694, 40.499722, 25.313625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173504, 0.979461, 0.102728,
		0.881993, 0.108130, 0.458691,
		0.438161, 0.170190, -0.882638,
		40.597141, 40.550777, 25.048834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581554, 41.061451, 25.735840>,  <40.290428, 40.431644, 25.666681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581554, 41.061451, 25.735840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562695, 41.019180, 25.338528>,  <40.551380, 40.993816, 25.100140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562695, 41.019180, 25.338528>,  <40.581554, 41.061451, 25.735840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562695, 41.019180, 25.338528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275491, 0.957197, -0.088765,
		0.960147, 0.269455, -0.074244,
		-0.047148, -0.105681, -0.993282,
		40.548550, 40.987476, 25.040543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973251, 41.556973, 25.437248>,  <40.581554, 41.061451, 25.735840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973251, 41.556973, 25.437248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737724, 41.469406, 25.126026>,  <40.596409, 41.416866, 24.939293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737724, 41.469406, 25.126026>,  <40.973251, 41.556973, 25.437248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737724, 41.469406, 25.126026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342885, 0.939365, -0.004817,
		0.731933, 0.263947, -0.628176,
		-0.588815, -0.218918, -0.778056,
		40.561081, 41.403732, 24.892609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136269, 42.085175, 24.765270>,  <40.973251, 41.556973, 25.437248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136269, 42.085175, 24.765270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769077, 41.928490, 24.740349>,  <40.548763, 41.834476, 24.725397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769077, 41.928490, 24.740349>,  <41.136269, 42.085175, 24.765270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769077, 41.928490, 24.740349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392353, 0.919812, -0.002140,
		0.058144, 0.022480, -0.998055,
		-0.917975, -0.391714, -0.062302,
		40.493683, 41.810974, 24.721659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740715, 42.448311, 24.274437>,  <41.136269, 42.085175, 24.765270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740715, 42.448311, 24.274437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474552, 42.301102, 24.534218>,  <40.314854, 42.212776, 24.690086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474552, 42.301102, 24.534218>,  <40.740715, 42.448311, 24.274437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474552, 42.301102, 24.534218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433418, 0.898826, 0.065269,
		-0.607765, -0.238053, -0.757596,
		-0.665410, -0.368024, 0.649452,
		40.274929, 42.190693, 24.729053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040909, 42.804138, 24.089647>,  <40.740715, 42.448311, 24.274437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040909, 42.804138, 24.089647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024582, 42.673977, 24.467525>,  <40.014786, 42.595882, 24.694252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024582, 42.673977, 24.467525>,  <40.040909, 42.804138, 24.089647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024582, 42.673977, 24.467525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525409, 0.811199, 0.256713,
		-0.849870, -0.485872, -0.204082,
		-0.040822, -0.325399, 0.944695,
		40.012337, 42.576359, 24.750935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349274, 42.673439, 24.219053>,  <40.040909, 42.804138, 24.089647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349274, 42.673439, 24.219053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566978, 42.787018, 24.534813>,  <39.697601, 42.855164, 24.724270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566978, 42.787018, 24.534813>,  <39.349274, 42.673439, 24.219053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566978, 42.787018, 24.534813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537387, 0.840577, 0.068159,
		-0.644198, -0.461310, 0.610083,
		0.544265, 0.283943, 0.789400,
		39.730259, 42.872200, 24.771633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840477, 42.899006, 24.906878>,  <39.349274, 42.673439, 24.219053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840477, 42.899006, 24.906878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194645, 43.077652, 24.855404>,  <39.407146, 43.184841, 24.824520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194645, 43.077652, 24.855404>,  <38.840477, 42.899006, 24.906878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194645, 43.077652, 24.855404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445328, 0.894462, 0.040245,
		0.133079, 0.021673, 0.990868,
		0.885422, 0.446617, -0.128685,
		39.460270, 43.211636, 24.816799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157227, 43.385643, 25.483061>,  <38.840477, 42.899006, 24.906878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157227, 43.385643, 25.483061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249092, 43.489964, 25.107990>,  <39.304211, 43.552555, 24.882948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249092, 43.489964, 25.107990>,  <39.157227, 43.385643, 25.483061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249092, 43.489964, 25.107990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378129, 0.911654, 0.160952,
		0.896813, 0.317598, 0.307990,
		0.229663, 0.260804, -0.937676,
		39.317989, 43.568203, 24.826687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141220, 43.334938, 26.220310>,  <39.157227, 43.385643, 25.483061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141220, 43.334938, 26.220310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079002, 43.037411, 26.480324>,  <39.041672, 42.858894, 26.636332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079002, 43.037411, 26.480324>,  <39.141220, 43.334938, 26.220310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079002, 43.037411, 26.480324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868481, 0.210583, 0.448772,
		-0.470690, 0.634346, 0.613234,
		-0.155540, -0.743815, 0.650036,
		39.032341, 42.814266, 26.675335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467861, 43.517857, 26.799156>,  <39.141220, 43.334938, 26.220310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467861, 43.517857, 26.799156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419933, 43.125889, 26.862904>,  <39.391178, 42.890709, 26.901152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419933, 43.125889, 26.862904>,  <39.467861, 43.517857, 26.799156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419933, 43.125889, 26.862904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897719, -0.038389, 0.438894,
		-0.423963, 0.195656, 0.884293,
		-0.119820, -0.979921, 0.159369,
		39.383987, 42.831913, 26.910715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579136, 43.264442, 27.497587>,  <39.467861, 43.517857, 26.799156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579136, 43.264442, 27.497587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736134, 43.004570, 27.237167>,  <39.830330, 42.848648, 27.080915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736134, 43.004570, 27.237167>,  <39.579136, 43.264442, 27.497587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736134, 43.004570, 27.237167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835369, -0.044381, 0.547895,
		-0.384851, -0.758910, 0.525305,
		0.392490, -0.649681, -0.651050,
		39.853882, 42.809666, 27.041853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730621, 42.636532, 27.822309>,  <39.579136, 43.264442, 27.497587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730621, 42.636532, 27.822309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976101, 42.686363, 27.510448>,  <40.123386, 42.716263, 27.323332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976101, 42.686363, 27.510448>,  <39.730621, 42.636532, 27.822309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976101, 42.686363, 27.510448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788923, -0.135845, 0.599288,
		-0.031252, -0.982866, -0.181652,
		0.613697, 0.124580, -0.779651,
		40.160210, 42.723736, 27.276552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211548, 42.630795, 28.438810>,  <39.730621, 42.636532, 27.822309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211548, 42.630795, 28.438810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549702, 42.436684, 28.349518>,  <39.752594, 42.320217, 28.295942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549702, 42.436684, 28.349518>,  <39.211548, 42.630795, 28.438810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549702, 42.436684, 28.349518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508886, -0.858710, -0.060436,
		-0.162362, 0.164690, -0.972890,
		0.845384, -0.485278, -0.223230,
		39.803318, 42.291100, 28.282549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090397, 42.186790, 27.938864>,  <39.211548, 42.630795, 28.438810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090397, 42.186790, 27.938864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412960, 42.021770, 28.108334>,  <39.606499, 41.922756, 28.210016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412960, 42.021770, 28.108334>,  <39.090397, 42.186790, 27.938864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412960, 42.021770, 28.108334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341755, -0.909817, -0.235449,
		0.482603, 0.045075, -0.874678,
		0.806410, -0.412554, 0.423676,
		39.654884, 41.898003, 28.235437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161884, 41.635880, 27.521235>,  <39.090397, 42.186790, 27.938864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161884, 41.635880, 27.521235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372936, 41.565468, 27.853649>,  <39.499569, 41.523220, 28.053097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372936, 41.565468, 27.853649>,  <39.161884, 41.635880, 27.521235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372936, 41.565468, 27.853649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236134, -0.970131, -0.055564,
		0.815993, -0.166918, -0.553439,
		0.527633, -0.176026, 0.831035,
		39.531227, 41.512661, 28.102959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613621, 41.166939, 27.391195>,  <39.161884, 41.635880, 27.521235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613621, 41.166939, 27.391195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577606, 41.119152, 27.786694>,  <39.556000, 41.090481, 28.023993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577606, 41.119152, 27.786694>,  <39.613621, 41.166939, 27.391195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577606, 41.119152, 27.786694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147929, -0.980164, -0.131896,
		0.984891, -0.158139, 0.070576,
		-0.090034, -0.119463, 0.988748,
		39.550594, 41.083313, 28.083319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064320, 40.620132, 27.623934>,  <39.613621, 41.166939, 27.391195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064320, 40.620132, 27.623934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789719, 40.640228, 27.914089>,  <39.624958, 40.652287, 28.088182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789719, 40.640228, 27.914089>,  <40.064320, 40.620132, 27.623934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789719, 40.640228, 27.914089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238068, -0.958154, -0.158946,
		0.687050, -0.281809, 0.669736,
		-0.686503, 0.050239, 0.725389,
		39.583767, 40.655300, 28.131706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161018, 39.982685, 28.036343>,  <40.064320, 40.620132, 27.623934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161018, 39.982685, 28.036343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790062, 40.108559, 28.117260>,  <39.567490, 40.184082, 28.165812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790062, 40.108559, 28.117260>,  <40.161018, 39.982685, 28.036343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790062, 40.108559, 28.117260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346501, -0.926399, -0.147385,
		0.141025, -0.206778, 0.968171,
		-0.927388, 0.314688, 0.202295,
		39.511845, 40.202965, 28.177948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929886, 39.501240, 28.536472>,  <40.161018, 39.982685, 28.036343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929886, 39.501240, 28.536472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629192, 39.669525, 28.333340>,  <39.448776, 39.770496, 28.211460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629192, 39.669525, 28.333340>,  <39.929886, 39.501240, 28.536472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629192, 39.669525, 28.333340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302132, -0.904214, -0.301850,
		-0.586180, -0.073480, 0.806842,
		-0.751738, 0.420711, -0.507831,
		39.403671, 39.795738, 28.180990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551483, 38.950253, 28.499517>,  <39.929886, 39.501240, 28.536472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551483, 38.950253, 28.499517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347126, 39.202705, 28.266052>,  <39.224514, 39.354176, 28.125973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347126, 39.202705, 28.266052>,  <39.551483, 38.950253, 28.499517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347126, 39.202705, 28.266052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580728, -0.753996, -0.306995,
		-0.633834, 0.182110, 0.751725,
		-0.510890, 0.631131, -0.583665,
		39.193859, 39.392044, 28.090952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872856, 38.775402, 28.696148>,  <39.551483, 38.950253, 28.499517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872856, 38.775402, 28.696148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855843, 38.941948, 28.332867>,  <38.845634, 39.041874, 28.114899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855843, 38.941948, 28.332867>,  <38.872856, 38.775402, 28.696148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855843, 38.941948, 28.332867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553355, -0.766683, -0.325572,
		-0.831859, 0.488711, 0.263004,
		-0.042530, 0.416364, -0.908203,
		38.843082, 39.066856, 28.060406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215149, 38.706554, 28.501526>,  <38.872856, 38.775402, 28.696148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215149, 38.706554, 28.501526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404865, 38.765518, 28.154350>,  <38.518696, 38.800896, 27.946045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404865, 38.765518, 28.154350>,  <38.215149, 38.706554, 28.501526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404865, 38.765518, 28.154350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558014, -0.712206, -0.425891,
		-0.680934, 0.686317, -0.255532,
		0.474288, 0.147414, -0.867940,
		38.547153, 38.809742, 27.893969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681168, 38.672390, 28.066788>,  <38.215149, 38.706554, 28.501526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681168, 38.672390, 28.066788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990425, 38.643162, 27.814785>,  <38.175980, 38.625626, 27.663584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990425, 38.643162, 27.814785>,  <37.681168, 38.672390, 28.066788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990425, 38.643162, 27.814785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474973, -0.724980, -0.498804,
		-0.420296, 0.684883, -0.595219,
		0.773144, -0.073067, -0.630007,
		38.222370, 38.621243, 27.625782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387547, 38.394138, 27.402431>,  <37.681168, 38.672390, 28.066788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387547, 38.394138, 27.402431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779415, 38.320019, 27.371696>,  <38.014538, 38.275547, 27.353256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779415, 38.320019, 27.371696>,  <37.387547, 38.394138, 27.402431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779415, 38.320019, 27.371696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200262, -0.881166, -0.428300,
		0.011660, 0.434981, -0.900364,
		0.979673, -0.185303, -0.076836,
		38.073318, 38.264427, 27.348646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569073, 38.187485, 26.718712>,  <37.387547, 38.394138, 27.402431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569073, 38.187485, 26.718712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845303, 38.037136, 26.965881>,  <38.011040, 37.946926, 27.114183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845303, 38.037136, 26.965881>,  <37.569073, 38.187485, 26.718712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845303, 38.037136, 26.965881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021875, -0.864821, -0.501604,
		0.722931, 0.332877, -0.605445,
		0.690573, -0.375869, 0.617924,
		38.052475, 37.924374, 27.151258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886227, 37.745152, 26.288132>,  <37.569073, 38.187485, 26.718712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886227, 37.745152, 26.288132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021103, 37.630676, 26.646885>,  <38.102028, 37.561989, 26.862137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021103, 37.630676, 26.646885>,  <37.886227, 37.745152, 26.288132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021103, 37.630676, 26.646885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181390, -0.915074, -0.360191,
		0.923798, 0.284137, -0.256638,
		0.337186, -0.286193, 0.896883,
		38.122257, 37.544819, 26.915951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528366, 37.483173, 26.185341>,  <37.886227, 37.745152, 26.288132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528366, 37.483173, 26.185341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395016, 37.325321, 26.527832>,  <38.315006, 37.230610, 26.733326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395016, 37.325321, 26.527832>,  <38.528366, 37.483173, 26.185341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395016, 37.325321, 26.527832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265678, -0.910700, -0.316291,
		0.904584, 0.122036, 0.408454,
		-0.333381, -0.394629, 0.856227,
		38.295002, 37.206932, 26.784700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929287, 36.937088, 26.228317>,  <38.528366, 37.483173, 26.185341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929287, 36.937088, 26.228317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628746, 36.854637, 26.479069>,  <38.448421, 36.805164, 26.629520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628746, 36.854637, 26.479069>,  <38.929287, 36.937088, 26.228317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628746, 36.854637, 26.479069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050384, -0.965108, -0.256957,
		0.657972, -0.161481, 0.735524,
		-0.751355, -0.206129, 0.626879,
		38.403339, 36.792797, 26.667131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082767, 36.275032, 26.711012>,  <38.929287, 36.937088, 26.228317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082767, 36.275032, 26.711012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686089, 36.310135, 26.673420>,  <38.448082, 36.331196, 26.650866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686089, 36.310135, 26.673420>,  <39.082767, 36.275032, 26.711012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686089, 36.310135, 26.673420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043018, -0.915199, -0.400699,
		-0.121176, -0.393330, 0.911377,
		-0.991698, 0.087760, -0.093980,
		38.388580, 36.336464, 26.645226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839886, 35.618179, 26.943922>,  <39.082767, 36.275032, 26.711012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839886, 35.618179, 26.943922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519901, 35.759079, 26.749607>,  <38.327911, 35.843620, 26.633018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519901, 35.759079, 26.749607>,  <38.839886, 35.618179, 26.943922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519901, 35.759079, 26.749607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250169, -0.931633, -0.263583,
		-0.545420, -0.089327, 0.833389,
		-0.799957, 0.352251, -0.485785,
		38.279915, 35.864754, 26.603872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336220, 35.170692, 27.284561>,  <38.839886, 35.618179, 26.943922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336220, 35.170692, 27.284561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228905, 35.355537, 26.946453>,  <38.164516, 35.466442, 26.743589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228905, 35.355537, 26.946453>,  <38.336220, 35.170692, 27.284561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228905, 35.355537, 26.946453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291460, -0.875250, -0.385991,
		-0.918190, 0.142806, 0.369503,
		-0.268286, 0.462108, -0.845268,
		38.148418, 35.494171, 26.692873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614899, 34.924690, 27.178188>,  <38.336220, 35.170692, 27.284561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614899, 34.924690, 27.178188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758888, 35.059483, 26.830196>,  <37.845284, 35.140358, 26.621401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758888, 35.059483, 26.830196>,  <37.614899, 34.924690, 27.178188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758888, 35.059483, 26.830196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228773, -0.872140, -0.432476,
		-0.904478, 0.354708, -0.236858,
		0.359977, 0.336978, -0.869978,
		37.866882, 35.160576, 26.569202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217876, 34.683838, 26.705515>,  <37.614899, 34.924690, 27.178188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217876, 34.683838, 26.705515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529995, 34.781414, 26.475166>,  <37.717266, 34.839962, 26.336958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529995, 34.781414, 26.475166>,  <37.217876, 34.683838, 26.705515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529995, 34.781414, 26.475166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070311, -0.880737, -0.468357,
		-0.621441, 0.405948, -0.670087,
		0.780299, 0.243942, -0.575869,
		37.764084, 34.854595, 26.302406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962406, 34.614201, 26.084305>,  <37.217876, 34.683838, 26.705515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962406, 34.614201, 26.084305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358345, 34.565998, 26.054153>,  <37.595909, 34.537075, 26.036062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358345, 34.565998, 26.054153>,  <36.962406, 34.614201, 26.084305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358345, 34.565998, 26.054153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140610, -0.752523, -0.643380,
		0.020810, 0.647446, -0.761827,
		0.989846, -0.120509, -0.075378,
		37.655300, 34.529846, 26.031540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250473, 34.886715, 25.341938>,  <36.962406, 34.614201, 26.084305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250473, 34.886715, 25.341938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423161, 34.580791, 25.533226>,  <37.526772, 34.397240, 25.647999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423161, 34.580791, 25.533226>,  <37.250473, 34.886715, 25.341938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423161, 34.580791, 25.533226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129905, -0.577362, -0.806088,
		0.892605, 0.285880, -0.348610,
		0.431718, -0.764804, 0.478219,
		37.552677, 34.351349, 25.676691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056190, 35.546478, 24.936434>,  <37.250473, 34.886715, 25.341938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056190, 35.546478, 24.936434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710495, 35.734715, 24.865292>,  <36.503078, 35.847656, 24.822607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710495, 35.734715, 24.865292>,  <37.056190, 35.546478, 24.936434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710495, 35.734715, 24.865292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217134, 0.030021, -0.975680,
		-0.453805, -0.881842, -0.128126,
		-0.864242, 0.470588, -0.177854,
		36.451221, 35.875893, 24.811935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827061, 35.187202, 24.374573>,  <37.056190, 35.546478, 24.936434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827061, 35.187202, 24.374573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704399, 35.564999, 24.421741>,  <36.630802, 35.791676, 24.450043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704399, 35.564999, 24.421741>,  <36.827061, 35.187202, 24.374573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704399, 35.564999, 24.421741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139239, 0.167075, -0.976063,
		-0.941580, -0.282898, -0.182744,
		-0.306658, 0.944486, 0.117924,
		36.612400, 35.848343, 24.457119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309380, 35.304005, 23.828102>,  <36.827061, 35.187202, 24.374573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309380, 35.304005, 23.828102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515705, 35.625324, 23.947193>,  <36.639500, 35.818115, 24.018648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515705, 35.625324, 23.947193>,  <36.309380, 35.304005, 23.828102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515705, 35.625324, 23.947193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289121, 0.163910, -0.943156,
		-0.806439, 0.572572, -0.147705,
		0.515814, 0.803302, 0.297727,
		36.670448, 35.866314, 24.036510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872406, 35.736847, 23.573944>,  <36.309380, 35.304005, 23.828102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872406, 35.736847, 23.573944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967705, 36.124596, 23.550114>,  <36.024883, 36.357246, 23.535816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967705, 36.124596, 23.550114>,  <35.872406, 35.736847, 23.573944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967705, 36.124596, 23.550114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752115, 0.222962, 0.620170,
		0.614461, -0.102943, 0.782202,
		0.238243, 0.969377, -0.059576,
		36.039177, 36.415409, 23.532242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329906, 35.374123, 23.698235>,  <35.872406, 35.736847, 23.573944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329906, 35.374123, 23.698235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332756, 35.709415, 23.916340>,  <35.334465, 35.910591, 24.047203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332756, 35.709415, 23.916340>,  <35.329906, 35.374123, 23.698235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332756, 35.709415, 23.916340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428407, 0.490144, -0.759096,
		-0.903558, 0.239000, -0.355615,
		0.007122, 0.838235, 0.545263,
		35.334892, 35.960884, 24.079918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054035, 35.732582, 23.135313>,  <35.329906, 35.374123, 23.698235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054035, 35.732582, 23.135313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874645, 35.394855, 23.252621>,  <34.767014, 35.192219, 23.323006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874645, 35.394855, 23.252621>,  <35.054035, 35.732582, 23.135313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874645, 35.394855, 23.252621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241954, -0.430548, -0.869532,
		0.860425, -0.319003, 0.397374,
		-0.448472, -0.844314, 0.293271,
		34.740105, 35.141560, 23.340601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489422, 35.184452, 23.022089>,  <35.054035, 35.732582, 23.135313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489422, 35.184452, 23.022089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111923, 35.052353, 23.015396>,  <34.885426, 34.973095, 23.011381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111923, 35.052353, 23.015396>,  <35.489422, 35.184452, 23.022089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111923, 35.052353, 23.015396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231816, -0.624682, -0.745677,
		0.235805, -0.707609, 0.666097,
		-0.943747, -0.330246, -0.016732,
		34.828800, 34.953278, 23.010376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516674, 34.440742, 22.882376>,  <35.489422, 35.184452, 23.022089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516674, 34.440742, 22.882376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132011, 34.509502, 22.796902>,  <34.901215, 34.550758, 22.745617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132011, 34.509502, 22.796902>,  <35.516674, 34.440742, 22.882376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132011, 34.509502, 22.796902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025779, -0.719059, -0.694471,
		-0.273035, -0.673353, 0.687057,
		-0.961658, 0.171903, -0.213686,
		34.843513, 34.561073, 22.732796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221928, 33.776478, 22.811699>,  <35.516674, 34.440742, 22.882376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221928, 33.776478, 22.811699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946526, 33.988110, 22.613289>,  <34.781284, 34.115089, 22.494244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946526, 33.988110, 22.613289>,  <35.221928, 33.776478, 22.811699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946526, 33.988110, 22.613289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149101, -0.772607, -0.617129,
		-0.709739, -0.350939, 0.610829,
		-0.688505, 0.529076, -0.496024,
		34.739975, 34.146832, 22.464481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535515, 33.421375, 22.867579>,  <35.221928, 33.776478, 22.811699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535515, 33.421375, 22.867579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515343, 33.644627, 22.536289>,  <34.503239, 33.778576, 22.337515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515343, 33.644627, 22.536289>,  <34.535515, 33.421375, 22.867579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515343, 33.644627, 22.536289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404839, -0.769516, -0.493913,
		-0.912996, 0.310390, 0.264756,
		-0.050428, 0.558124, -0.828224,
		34.500214, 33.812065, 22.287823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905190, 33.202606, 22.619625>,  <34.535515, 33.421375, 22.867579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905190, 33.202606, 22.619625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089600, 33.374485, 22.309059>,  <34.200245, 33.477612, 22.122719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089600, 33.374485, 22.309059>,  <33.905190, 33.202606, 22.619625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089600, 33.374485, 22.309059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354389, -0.712990, -0.605024,
		-0.813550, 0.554085, -0.176428,
		0.461026, 0.429693, -0.776414,
		34.227909, 33.503391, 22.076136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402321, 33.372719, 22.209215>,  <33.905190, 33.202606, 22.619625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402321, 33.372719, 22.209215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739975, 33.318268, 22.001793>,  <33.942570, 33.285599, 21.877340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739975, 33.318268, 22.001793>,  <33.402321, 33.372719, 22.209215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739975, 33.318268, 22.001793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463858, -0.670430, -0.579102,
		-0.268823, 0.729378, -0.629080,
		0.844139, -0.136128, -0.518555,
		33.993217, 33.277428, 21.846226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216568, 33.263149, 21.599802>,  <33.402321, 33.372719, 22.209215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216568, 33.263149, 21.599802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590321, 33.122459, 21.577091>,  <33.814571, 33.038048, 21.563465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590321, 33.122459, 21.577091>,  <33.216568, 33.263149, 21.599802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590321, 33.122459, 21.577091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304523, -0.705733, -0.639692,
		0.184923, 0.615007, -0.766531,
		0.934382, -0.351720, -0.056778,
		33.870636, 33.016945, 21.560059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187103, 33.105228, 20.856430>,  <33.216568, 33.263149, 21.599802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187103, 33.105228, 20.856430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521042, 32.925476, 20.983608>,  <33.721405, 32.817623, 21.059916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521042, 32.925476, 20.983608>,  <33.187103, 33.105228, 20.856430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521042, 32.925476, 20.983608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074738, -0.664756, -0.743313,
		0.545387, 0.596789, -0.588555,
		0.834846, -0.449380, 0.317946,
		33.771496, 32.790661, 21.078993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346954, 32.799263, 20.269493>,  <33.187103, 33.105228, 20.856430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346954, 32.799263, 20.269493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540054, 32.625565, 20.573700>,  <33.655914, 32.521347, 20.756224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540054, 32.625565, 20.573700>,  <33.346954, 32.799263, 20.269493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540054, 32.625565, 20.573700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109937, -0.891589, -0.439298,
		0.868829, 0.128463, -0.478156,
		0.482752, -0.434242, 0.760516,
		33.684879, 32.495293, 20.801855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711452, 32.255909, 19.888926>,  <33.346954, 32.799263, 20.269493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711452, 32.255909, 19.888926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692505, 32.180855, 20.281364>,  <33.681137, 32.135822, 20.516829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692505, 32.180855, 20.281364>,  <33.711452, 32.255909, 19.888926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692505, 32.180855, 20.281364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261463, -0.945624, -0.193472,
		0.964050, -0.265685, -0.004267,
		-0.047368, -0.187632, 0.981097,
		33.678295, 32.124565, 20.575693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157417, 31.766666, 20.027546>,  <33.711452, 32.255909, 19.888926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157417, 31.766666, 20.027546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890396, 31.751934, 20.325005>,  <33.730183, 31.743093, 20.503481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890396, 31.751934, 20.325005>,  <34.157417, 31.766666, 20.027546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890396, 31.751934, 20.325005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230609, -0.939434, -0.253542,
		0.707947, -0.340746, 0.618630,
		-0.667555, -0.036833, 0.743649,
		33.690128, 31.740885, 20.548100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268295, 31.013697, 20.417629>,  <34.157417, 31.766666, 20.027546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268295, 31.013697, 20.417629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912083, 31.170841, 20.509384>,  <33.698357, 31.265129, 20.564436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912083, 31.170841, 20.509384>,  <34.268295, 31.013697, 20.417629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912083, 31.170841, 20.509384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430413, -0.890881, -0.145175,
		0.147322, -0.228013, 0.962448,
		-0.890529, 0.392863, 0.229386,
		33.644924, 31.288700, 20.578199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993313, 30.560364, 20.948227>,  <34.268295, 31.013697, 20.417629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993313, 30.560364, 20.948227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669975, 30.735386, 20.790680>,  <33.475975, 30.840399, 20.696152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669975, 30.735386, 20.790680>,  <33.993313, 30.560364, 20.948227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669975, 30.735386, 20.790680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468574, -0.883209, -0.019514,
		-0.356405, 0.168782, 0.918961,
		-0.808340, 0.437555, -0.393867,
		33.427475, 30.866653, 20.672520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348698, 30.396999, 21.377569>,  <33.993313, 30.560364, 20.948227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348698, 30.396999, 21.377569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216953, 30.521042, 21.020840>,  <33.137905, 30.595467, 20.806801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216953, 30.521042, 21.020840>,  <33.348698, 30.396999, 21.377569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216953, 30.521042, 21.020840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411792, -0.897144, -0.159875,
		-0.849674, 0.314589, 0.423188,
		-0.329365, 0.310107, -0.891825,
		33.118145, 30.614075, 20.753292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578846, 30.338919, 21.276066>,  <33.348698, 30.396999, 21.377569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578846, 30.338919, 21.276066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778141, 30.282757, 20.933826>,  <32.897717, 30.249060, 20.728483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778141, 30.282757, 20.933826>,  <32.578846, 30.338919, 21.276066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778141, 30.282757, 20.933826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349868, -0.935451, -0.050230,
		-0.793317, 0.324373, -0.515199,
		0.498237, -0.140403, -0.855597,
		32.927612, 30.240635, 20.677147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125141, 30.022673, 20.821806>,  <32.578846, 30.338919, 21.276066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125141, 30.022673, 20.821806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487053, 29.943035, 20.671215>,  <32.704201, 29.895252, 20.580860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487053, 29.943035, 20.671215>,  <32.125141, 30.022673, 20.821806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487053, 29.943035, 20.671215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249697, -0.964110, -0.090241,
		-0.345001, 0.175654, -0.922019,
		0.904779, -0.199093, -0.376479,
		32.758488, 29.883307, 20.558271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024384, 29.590242, 20.194008>,  <32.125141, 30.022673, 20.821806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024384, 29.590242, 20.194008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395184, 29.536419, 20.334049>,  <32.617664, 29.504124, 20.418074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395184, 29.536419, 20.334049>,  <32.024384, 29.590242, 20.194008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395184, 29.536419, 20.334049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087760, -0.985334, -0.146338,
		0.364660, 0.104930, -0.925210,
		0.926996, -0.134560, 0.350103,
		32.673283, 29.496052, 20.439079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279533, 29.046659, 19.694578>,  <32.024384, 29.590242, 20.194008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279533, 29.046659, 19.694578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512012, 29.033188, 20.019806>,  <32.651501, 29.025105, 20.214943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512012, 29.033188, 20.019806>,  <32.279533, 29.046659, 19.694578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512012, 29.033188, 20.019806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015833, -0.998486, -0.052677,
		0.813612, 0.043489, -0.579780,
		0.581193, -0.033679, 0.813068,
		32.686371, 29.023085, 20.263727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750877, 28.472679, 19.641680>,  <32.279533, 29.046659, 19.694578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750877, 28.472679, 19.641680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751637, 28.552837, 20.033566>,  <32.752094, 28.600933, 20.268696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751637, 28.552837, 20.033566>,  <32.750877, 28.472679, 19.641680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751637, 28.552837, 20.033566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071209, -0.977255, 0.199756,
		0.997460, 0.069384, -0.016128,
		0.001901, 0.200397, 0.979713,
		32.752209, 28.612957, 20.327480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305305, 28.057716, 19.904408>,  <32.750877, 28.472679, 19.641680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305305, 28.057716, 19.904408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062897, 28.136818, 20.212597>,  <32.917450, 28.184278, 20.397511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062897, 28.136818, 20.212597>,  <33.305305, 28.057716, 19.904408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062897, 28.136818, 20.212597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177121, -0.910739, 0.373071,
		0.775476, 0.362557, 0.516904,
		-0.606024, 0.197753, 0.770473,
		32.881088, 28.196144, 20.443739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719574, 27.932915, 20.490772>,  <33.305305, 28.057716, 19.904408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719574, 27.932915, 20.490772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330418, 27.892162, 20.573811>,  <33.096924, 27.867710, 20.623634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330418, 27.892162, 20.573811>,  <33.719574, 27.932915, 20.490772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330418, 27.892162, 20.573811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175453, -0.909998, 0.375660,
		0.150639, 0.401901, 0.903207,
		-0.972895, -0.101882, 0.207596,
		33.038548, 27.861597, 20.636089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676392, 27.566771, 21.167894>,  <33.719574, 27.932915, 20.490772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676392, 27.566771, 21.167894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315689, 27.537254, 20.997532>,  <33.099270, 27.519545, 20.895315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315689, 27.537254, 20.997532>,  <33.676392, 27.566771, 21.167894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315689, 27.537254, 20.997532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026897, -0.973831, 0.225674,
		-0.431415, 0.214958, 0.876170,
		-0.901753, -0.073792, -0.425907,
		33.045162, 27.515116, 20.869761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545029, 27.100157, 21.577122>,  <33.676392, 27.566771, 21.167894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545029, 27.100157, 21.577122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252060, 27.117645, 21.305344>,  <33.076279, 27.128138, 21.142277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252060, 27.117645, 21.305344>,  <33.545029, 27.100157, 21.577122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252060, 27.117645, 21.305344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165367, -0.979477, 0.115235,
		-0.660461, 0.196758, 0.724623,
		-0.732425, 0.043721, -0.679443,
		33.032333, 27.130762, 21.101511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962219, 26.845657, 21.893890>,  <33.545029, 27.100157, 21.577122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962219, 26.845657, 21.893890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953865, 26.766335, 21.501923>,  <32.948853, 26.718740, 21.266743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953865, 26.766335, 21.501923>,  <32.962219, 26.845657, 21.893890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953865, 26.766335, 21.501923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136508, -0.970386, 0.199288,
		-0.990419, 0.137928, -0.006807,
		-0.020882, -0.198308, -0.979917,
		32.947601, 26.706842, 21.207947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389355, 26.310905, 21.804867>,  <32.962219, 26.845657, 21.893890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389355, 26.310905, 21.804867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603222, 26.291138, 21.467419>,  <32.731541, 26.279278, 21.264950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603222, 26.291138, 21.467419>,  <32.389355, 26.310905, 21.804867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603222, 26.291138, 21.467419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240611, -0.965871, -0.095913,
		-0.810086, 0.254265, -0.528308,
		0.534665, -0.049419, -0.843618,
		32.763622, 26.276312, 21.214333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914354, 25.985273, 21.202408>,  <32.389355, 26.310905, 21.804867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914354, 25.985273, 21.202408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294899, 25.929188, 21.092678>,  <32.523224, 25.895536, 21.026840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294899, 25.929188, 21.092678>,  <31.914354, 25.985273, 21.202408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294899, 25.929188, 21.092678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200733, -0.957592, -0.206695,
		-0.233712, 0.251708, -0.939160,
		0.951360, -0.140214, -0.274327,
		32.580307, 25.887123, 21.010380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857224, 25.479317, 20.748671>,  <31.914354, 25.985273, 21.202408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857224, 25.479317, 20.748671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255409, 25.517124, 20.752949>,  <32.494320, 25.539808, 20.755516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255409, 25.517124, 20.752949>,  <31.857224, 25.479317, 20.748671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255409, 25.517124, 20.752949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089631, -0.894429, -0.438137,
		-0.031847, 0.437108, -0.898845,
		0.995466, 0.094518, 0.010693,
		32.554050, 25.545479, 20.756157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122025, 25.304344, 20.136106>,  <31.857224, 25.479317, 20.748671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122025, 25.304344, 20.136106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429192, 25.245388, 20.385452>,  <32.613491, 25.210014, 20.535059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429192, 25.245388, 20.385452>,  <32.122025, 25.304344, 20.136106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429192, 25.245388, 20.385452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079679, -0.943628, -0.321274,
		0.635577, 0.296380, -0.712882,
		0.767915, -0.147393, 0.623364,
		32.659565, 25.201170, 20.572462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697395, 24.988998, 19.780348>,  <32.122025, 25.304344, 20.136106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697395, 24.988998, 19.780348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739273, 24.878185, 20.162403>,  <32.764400, 24.811697, 20.391636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739273, 24.878185, 20.162403>,  <32.697395, 24.988998, 19.780348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739273, 24.878185, 20.162403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056771, -0.957187, -0.283851,
		0.992882, 0.083943, -0.084488,
		0.104698, -0.277034, 0.955139,
		32.770683, 24.795074, 20.448944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122009, 24.469305, 19.674061>,  <32.697395, 24.988998, 19.780348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122009, 24.469305, 19.674061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982563, 24.422237, 20.046001>,  <32.898895, 24.393997, 20.269165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982563, 24.422237, 20.046001>,  <33.122009, 24.469305, 19.674061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982563, 24.422237, 20.046001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025802, -0.992917, -0.115974,
		0.936912, -0.016438, 0.349179,
		-0.348612, -0.117667, 0.929852,
		32.877979, 24.386938, 20.324957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656250, 24.087551, 20.084805>,  <33.122009, 24.469305, 19.674061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656250, 24.087551, 20.084805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293694, 24.027802, 20.242867>,  <33.076160, 23.991953, 20.337704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293694, 24.027802, 20.242867>,  <33.656250, 24.087551, 20.084805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293694, 24.027802, 20.242867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142814, -0.988673, -0.046150,
		0.397574, 0.014604, 0.917454,
		-0.906388, -0.149373, 0.395156,
		33.021778, 23.982990, 20.361414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712322, 23.611351, 20.674559>,  <33.656250, 24.087551, 20.084805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712322, 23.611351, 20.674559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338181, 23.591412, 20.534489>,  <33.113693, 23.579447, 20.450447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338181, 23.591412, 20.534489>,  <33.712322, 23.611351, 20.674559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338181, 23.591412, 20.534489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044828, -0.998743, 0.022438,
		-0.350851, 0.005290, 0.936416,
		-0.935358, -0.049850, -0.350173,
		33.057571, 23.576456, 20.429436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377262, 23.153419, 21.172871>,  <33.712322, 23.611351, 20.674559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377262, 23.153419, 21.172871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151890, 23.157860, 20.842434>,  <33.016666, 23.160524, 20.644173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151890, 23.157860, 20.842434>,  <33.377262, 23.153419, 21.172871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151890, 23.157860, 20.842434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140226, -0.986686, 0.082381,
		-0.814178, 0.162256, 0.557483,
		-0.563427, 0.011101, -0.826091,
		32.982861, 23.161190, 20.594606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902737, 22.730577, 21.294125>,  <33.377262, 23.153419, 21.172871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902737, 22.730577, 21.294125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890594, 22.727440, 20.894321>,  <32.883308, 22.725557, 20.654440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890594, 22.727440, 20.894321>,  <32.902737, 22.730577, 21.294125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890594, 22.727440, 20.894321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094398, -0.995477, 0.010678,
		-0.995072, 0.094676, 0.029480,
		-0.030358, -0.007843, -0.999508,
		32.881489, 22.725086, 20.594469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414726, 22.237722, 21.172676>,  <32.902737, 22.730577, 21.294125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414726, 22.237722, 21.172676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587105, 22.275818, 20.813740>,  <32.690533, 22.298676, 20.598379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587105, 22.275818, 20.813740>,  <32.414726, 22.237722, 21.172676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587105, 22.275818, 20.813740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206462, -0.957631, -0.200789,
		-0.878442, 0.271795, -0.393022,
		0.430944, 0.095237, -0.897339,
		32.716389, 22.304390, 20.544538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915340, 22.067703, 20.614271>,  <32.414726, 22.237722, 21.172676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915340, 22.067703, 20.614271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285030, 22.017063, 20.470173>,  <32.506844, 21.986679, 20.383715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285030, 22.017063, 20.470173>,  <31.915340, 22.067703, 20.614271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285030, 22.017063, 20.470173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190471, -0.970535, -0.147589,
		-0.330946, 0.205023, -0.921108,
		0.924227, -0.126601, -0.360246,
		32.562298, 21.979082, 20.362099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854118, 21.781578, 19.987259>,  <31.915340, 22.067703, 20.614271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854118, 21.781578, 19.987259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226852, 21.700760, 20.107830>,  <32.450493, 21.652269, 20.180172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226852, 21.700760, 20.107830>,  <31.854118, 21.781578, 19.987259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226852, 21.700760, 20.107830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178923, -0.978483, -0.102755,
		0.315701, 0.041819, -0.947937,
		0.931837, -0.202047, 0.301426,
		32.506405, 21.640146, 20.198257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996071, 21.257607, 19.634954>,  <31.854118, 21.781578, 19.987259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996071, 21.257607, 19.634954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281612, 21.236870, 19.914303>,  <32.452938, 21.224428, 20.081911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281612, 21.236870, 19.914303>,  <31.996071, 21.257607, 19.634954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281612, 21.236870, 19.914303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190594, -0.973993, 0.122518,
		0.673858, -0.220566, -0.705171,
		0.713855, -0.051842, 0.698371,
		32.495770, 21.221317, 20.123814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291939, 20.607361, 19.536808>,  <31.996071, 21.257607, 19.634954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291939, 20.607361, 19.536808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422340, 20.693600, 19.904991>,  <32.500580, 20.745344, 20.125900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422340, 20.693600, 19.904991>,  <32.291939, 20.607361, 19.536808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422340, 20.693600, 19.904991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057844, -0.976372, 0.208209,
		0.943597, -0.014634, -0.330771,
		0.326003, 0.215599, 0.920456,
		32.520142, 20.758280, 20.181128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827293, 20.190115, 19.701042>,  <32.291939, 20.607361, 19.536808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827293, 20.190115, 19.701042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710526, 20.297504, 20.068237>,  <32.640465, 20.361938, 20.288555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710526, 20.297504, 20.068237>,  <32.827293, 20.190115, 19.701042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710526, 20.297504, 20.068237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075461, -0.963268, 0.257720,
		0.953462, 0.005960, 0.301455,
		-0.291918, 0.268474, 0.917990,
		32.622952, 20.378046, 20.343634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195122, 19.735239, 20.145939>,  <32.827293, 20.190115, 19.701042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195122, 19.735239, 20.145939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880398, 19.867607, 20.354332>,  <32.691563, 19.947027, 20.479368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880398, 19.867607, 20.354332>,  <33.195122, 19.735239, 20.145939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880398, 19.867607, 20.354332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114448, -0.907699, 0.403712,
		0.606493, 0.258019, 0.752059,
		-0.786809, 0.330920, 0.520983,
		32.644356, 19.966883, 20.510628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204838, 19.257895, 20.800310>,  <33.195122, 19.735239, 20.145939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204838, 19.257895, 20.800310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834614, 19.407700, 20.778103>,  <32.612480, 19.497583, 20.764778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834614, 19.407700, 20.778103>,  <33.204838, 19.257895, 20.800310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834614, 19.407700, 20.778103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378541, -0.918123, 0.117285,
		-0.007046, 0.129569, 0.991545,
		-0.925557, 0.374515, -0.055517,
		32.556946, 19.520054, 20.761448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837986, 19.206308, 21.463614>,  <33.204838, 19.257895, 20.800310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837986, 19.206308, 21.463614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570374, 19.209068, 21.166332>,  <32.409805, 19.210724, 20.987965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570374, 19.209068, 21.166332>,  <32.837986, 19.206308, 21.463614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570374, 19.209068, 21.166332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370801, -0.869718, 0.325724,
		-0.644129, 0.493500, 0.584428,
		-0.669033, 0.006898, -0.743201,
		32.369663, 19.211138, 20.943373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119705, 19.248207, 21.767538>,  <32.837986, 19.206308, 21.463614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119705, 19.248207, 21.767538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191219, 19.052849, 21.425892>,  <32.234127, 18.935635, 21.220905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191219, 19.052849, 21.425892>,  <32.119705, 19.248207, 21.767538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191219, 19.052849, 21.425892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374666, -0.836488, 0.399891,
		-0.909760, 0.248514, -0.332532,
		0.178780, -0.488393, -0.854113,
		32.244854, 18.906330, 21.169659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588182, 18.738834, 21.770355>,  <32.119705, 19.248207, 21.767538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588182, 18.738834, 21.770355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858580, 18.600025, 21.510323>,  <32.020817, 18.516739, 21.354303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858580, 18.600025, 21.510323>,  <31.588182, 18.738834, 21.770355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858580, 18.600025, 21.510323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337838, -0.929950, 0.145117,
		-0.654902, 0.121524, -0.745879,
		0.675994, -0.347024, -0.650082,
		32.061378, 18.495918, 21.315298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228973, 18.276543, 21.358734>,  <31.588182, 18.738834, 21.770355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228973, 18.276543, 21.358734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616949, 18.182373, 21.334106>,  <31.849735, 18.125872, 21.319330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616949, 18.182373, 21.334106>,  <31.228973, 18.276543, 21.358734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616949, 18.182373, 21.334106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187542, -0.884436, 0.427318,
		-0.155056, -0.402926, -0.902002,
		0.969941, -0.235422, -0.061571,
		31.907932, 18.111746, 21.315636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236071, 17.555080, 21.126551>,  <31.228973, 18.276543, 21.358734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236071, 17.555080, 21.126551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595062, 17.620571, 21.290367>,  <31.810457, 17.659866, 21.388657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595062, 17.620571, 21.290367>,  <31.236071, 17.555080, 21.126551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595062, 17.620571, 21.290367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015441, -0.916314, 0.400164,
		0.440787, -0.365462, -0.819844,
		0.897479, 0.163728, 0.409542,
		31.864305, 17.669689, 21.413229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784790, 17.272900, 20.629391>,  <31.236071, 17.555080, 21.126551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784790, 17.272900, 20.629391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471390, 17.107327, 20.444012>,  <31.283350, 17.007982, 20.332785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471390, 17.107327, 20.444012>,  <31.784790, 17.272900, 20.629391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471390, 17.107327, 20.444012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616399, 0.612082, 0.495386,
		0.078611, 0.673805, -0.734716,
		-0.783500, -0.413935, -0.463449,
		31.236340, 16.983147, 20.304977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431263, 17.813538, 20.288616>,  <31.784790, 17.272900, 20.629391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431263, 17.813538, 20.288616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190399, 17.512383, 20.394871>,  <31.045881, 17.331690, 20.458624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190399, 17.512383, 20.394871>,  <31.431263, 17.813538, 20.288616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190399, 17.512383, 20.394871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586946, 0.643016, 0.491961,
		-0.541201, 0.140323, -0.829103,
		-0.602159, -0.752888, 0.265638,
		31.009752, 17.286516, 20.474562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815395, 18.113382, 20.282421>,  <31.431263, 17.813538, 20.288616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815395, 18.113382, 20.282421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788095, 17.798912, 20.528111>,  <30.771715, 17.610229, 20.675524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788095, 17.798912, 20.528111>,  <30.815395, 18.113382, 20.282421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788095, 17.798912, 20.528111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559569, 0.539868, 0.628828,
		-0.825969, -0.300785, -0.476764,
		-0.068248, -0.786175, 0.614224,
		30.767620, 17.563059, 20.712378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140635, 17.913696, 20.620605>,  <30.815395, 18.113382, 20.282421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140635, 17.913696, 20.620605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426079, 17.845486, 20.892395>,  <30.597345, 17.804560, 21.055468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426079, 17.845486, 20.892395>,  <30.140635, 17.913696, 20.620605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426079, 17.845486, 20.892395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465386, 0.609568, 0.641750,
		-0.523620, -0.774175, 0.355633,
		0.713609, -0.170526, 0.679472,
		30.640162, 17.794329, 21.096237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868050, 17.729223, 21.289415>,  <30.140635, 17.913696, 20.620605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868050, 17.729223, 21.289415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222935, 17.907116, 21.338516>,  <30.435865, 18.013851, 21.367977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222935, 17.907116, 21.338516>,  <29.868050, 17.729223, 21.289415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222935, 17.907116, 21.338516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407272, 0.629957, 0.661275,
		0.216761, -0.636685, 0.740032,
		0.887212, 0.444732, 0.122754,
		30.489098, 18.040535, 21.375341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027172, 17.891619, 21.977417>,  <29.868050, 17.729223, 21.289415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027172, 17.891619, 21.977417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275700, 18.149303, 21.799000>,  <30.424816, 18.303913, 21.691950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275700, 18.149303, 21.799000>,  <30.027172, 17.891619, 21.977417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275700, 18.149303, 21.799000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148946, 0.655979, 0.739937,
		0.769271, -0.393300, 0.503525,
		0.621319, 0.644210, -0.446045,
		30.462095, 18.342566, 21.665186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221014, 18.254042, 22.522106>,  <30.027172, 17.891619, 21.977417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221014, 18.254042, 22.522106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344870, 18.466526, 22.206654>,  <30.419182, 18.594017, 22.017382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344870, 18.466526, 22.206654>,  <30.221014, 18.254042, 22.522106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344870, 18.466526, 22.206654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284189, 0.843184, 0.456373,
		0.907393, 0.082811, 0.412045,
		0.309637, 0.531209, -0.788634,
		30.437761, 18.625889, 21.970064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423567, 18.869474, 22.845747>,  <30.221014, 18.254042, 22.522106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423567, 18.869474, 22.845747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396637, 18.983719, 22.463356>,  <30.380480, 19.052265, 22.233921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396637, 18.983719, 22.463356>,  <30.423567, 18.869474, 22.845747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396637, 18.983719, 22.463356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256240, 0.921064, 0.293227,
		0.964266, 0.264701, 0.011175,
		-0.067324, 0.285612, -0.955978,
		30.376440, 19.069403, 22.176563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916136, 19.492384, 22.647705>,  <30.423567, 18.869474, 22.845747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916136, 19.492384, 22.647705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595144, 19.478714, 22.409424>,  <30.402550, 19.470512, 22.266455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595144, 19.478714, 22.409424>,  <30.916136, 19.492384, 22.647705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595144, 19.478714, 22.409424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151172, 0.977431, 0.147569,
		0.577216, 0.208475, -0.789532,
		-0.802477, -0.034176, -0.595704,
		30.354401, 19.468462, 22.230713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998911, 20.029705, 22.263697>,  <30.916136, 19.492384, 22.647705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998911, 20.029705, 22.263697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609814, 19.946625, 22.222446>,  <30.376356, 19.896776, 22.197697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609814, 19.946625, 22.222446>,  <30.998911, 20.029705, 22.263697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609814, 19.946625, 22.222446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218618, 0.969689, 0.109134,
		0.077333, 0.128704, -0.988663,
		-0.972741, -0.207700, -0.103126,
		30.317991, 19.884315, 22.191509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764238, 20.529049, 21.927107>,  <30.998911, 20.029705, 22.263697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764238, 20.529049, 21.927107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414999, 20.401394, 22.074539>,  <30.205456, 20.324800, 22.162998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414999, 20.401394, 22.074539>,  <30.764238, 20.529049, 21.927107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414999, 20.401394, 22.074539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243949, 0.940512, 0.236486,
		-0.422125, 0.116561, -0.899013,
		-0.873098, -0.319140, 0.368579,
		30.153070, 20.305653, 22.185112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294176, 20.969486, 21.562660>,  <30.764238, 20.529049, 21.927107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294176, 20.969486, 21.562660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172550, 20.819195, 21.912830>,  <30.099575, 20.729019, 22.122932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172550, 20.819195, 21.912830>,  <30.294176, 20.969486, 21.562660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172550, 20.819195, 21.912830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184107, 0.924790, 0.332970,
		-0.934693, -0.059928, -0.350369,
		-0.304063, -0.375730, 0.875427,
		30.081331, 20.706476, 22.175459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613127, 21.276907, 21.573021>,  <30.294176, 20.969486, 21.562660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613127, 21.276907, 21.573021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743809, 21.183754, 21.939415>,  <29.822218, 21.127863, 22.159252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743809, 21.183754, 21.939415>,  <29.613127, 21.276907, 21.573021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743809, 21.183754, 21.939415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195292, 0.931618, 0.306511,
		-0.924729, -0.279024, 0.258885,
		0.326706, -0.232882, 0.915986,
		29.841820, 21.113890, 22.214211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252182, 21.655676, 21.972649>,  <29.613127, 21.276907, 21.573021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252182, 21.655676, 21.972649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512821, 21.521488, 22.244789>,  <29.669205, 21.440975, 22.408073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512821, 21.521488, 22.244789>,  <29.252182, 21.655676, 21.972649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512821, 21.521488, 22.244789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075519, 0.863751, 0.498228,
		-0.754797, -0.376024, 0.537483,
		0.651597, -0.335471, 0.680353,
		29.708300, 21.420847, 22.448895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921295, 21.752871, 22.728388>,  <29.252182, 21.655676, 21.972649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921295, 21.752871, 22.728388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320459, 21.743595, 22.752525>,  <29.559958, 21.738029, 22.767008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320459, 21.743595, 22.752525>,  <28.921295, 21.752871, 22.728388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320459, 21.743595, 22.752525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008747, 0.876445, 0.481422,
		-0.064052, -0.480943, 0.874409,
		0.997908, -0.023188, 0.060345,
		29.619831, 21.736639, 22.770628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012383, 21.958879, 23.363966>,  <28.921295, 21.752871, 22.728388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012383, 21.958879, 23.363966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372284, 22.003075, 23.195095>,  <29.588224, 22.029591, 23.093773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372284, 22.003075, 23.195095>,  <29.012383, 21.958879, 23.363966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372284, 22.003075, 23.195095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073841, 0.914925, 0.396812,
		0.430104, -0.388208, 0.815049,
		0.899754, 0.110487, -0.422179,
		29.642210, 22.036221, 23.068441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316181, 22.300749, 23.876179>,  <29.012383, 21.958879, 23.363966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316181, 22.300749, 23.876179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556131, 22.360634, 23.561794>,  <29.700102, 22.396564, 23.373163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556131, 22.360634, 23.561794>,  <29.316181, 22.300749, 23.876179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556131, 22.360634, 23.561794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182081, 0.931016, 0.316316,
		0.779098, -0.332859, 0.531236,
		0.599878, 0.149713, -0.785959,
		29.736095, 22.405548, 23.326006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845806, 22.603531, 24.130325>,  <29.316181, 22.300749, 23.876179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845806, 22.603531, 24.130325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861679, 22.705540, 23.743877>,  <29.871202, 22.766745, 23.512009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861679, 22.705540, 23.743877>,  <29.845806, 22.603531, 24.130325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861679, 22.705540, 23.743877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154732, 0.953650, 0.258087,
		0.987159, -0.159732, -0.001616,
		0.039683, 0.255023, -0.966120,
		29.873585, 22.782047, 23.454041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418653, 23.111845, 24.078815>,  <29.845806, 22.603531, 24.130325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418653, 23.111845, 24.078815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252266, 23.164188, 23.718849>,  <30.152433, 23.195595, 23.502871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252266, 23.164188, 23.718849>,  <30.418653, 23.111845, 24.078815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252266, 23.164188, 23.718849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196769, 0.979101, 0.051418,
		0.887835, -0.155687, -0.433026,
		-0.415971, 0.130857, -0.899914,
		30.127474, 23.203445, 23.448875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939346, 23.528467, 23.627720>,  <30.418653, 23.111845, 24.078815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939346, 23.528467, 23.627720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565529, 23.589081, 23.498932>,  <30.341238, 23.625448, 23.421659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565529, 23.589081, 23.498932>,  <30.939346, 23.528467, 23.627720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565529, 23.589081, 23.498932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210199, 0.965152, -0.155876,
		0.287131, -0.213351, -0.933829,
		-0.934544, 0.151534, -0.321972,
		30.285166, 23.634541, 23.402340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993143, 23.916164, 22.998938>,  <30.939346, 23.528467, 23.627720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993143, 23.916164, 22.998938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623579, 23.968426, 23.142780>,  <30.401840, 23.999783, 23.229086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623579, 23.968426, 23.142780>,  <30.993143, 23.916164, 22.998938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623579, 23.968426, 23.142780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059502, 0.977518, -0.202283,
		-0.377953, -0.165494, -0.910913,
		-0.923911, 0.130655, 0.359609,
		30.346405, 24.007622, 23.250664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625525, 24.292030, 22.475157>,  <30.993143, 23.916164, 22.998938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625525, 24.292030, 22.475157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431978, 24.377766, 22.814552>,  <30.315851, 24.429207, 23.018190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431978, 24.377766, 22.814552>,  <30.625525, 24.292030, 22.475157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431978, 24.377766, 22.814552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208031, 0.969923, -0.126382,
		-0.850058, 0.115360, -0.513900,
		-0.483864, 0.214339, 0.848490,
		30.286819, 24.442068, 23.069099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356546, 24.893347, 22.348337>,  <30.625525, 24.292030, 22.475157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356546, 24.893347, 22.348337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300642, 24.885040, 22.744324>,  <30.267099, 24.880056, 22.981916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300642, 24.885040, 22.744324>,  <30.356546, 24.893347, 22.348337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300642, 24.885040, 22.744324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113267, 0.992882, 0.036818,
		-0.983686, 0.117277, -0.136413,
		-0.139760, -0.020766, 0.989968,
		30.258715, 24.878811, 23.041313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861160, 25.369701, 22.530451>,  <30.356546, 24.893347, 22.348337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861160, 25.369701, 22.530451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095554, 25.323910, 22.851330>,  <30.236191, 25.296434, 23.043858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095554, 25.323910, 22.851330>,  <29.861160, 25.369701, 22.530451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095554, 25.323910, 22.851330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070750, 0.993418, 0.090086,
		-0.807229, 0.003967, 0.590225,
		0.585983, -0.114479, 0.802196,
		30.271349, 25.289566, 23.091990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703844, 25.942812, 22.863506>,  <29.861160, 25.369701, 22.530451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703844, 25.942812, 22.863506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028877, 25.822910, 23.063450>,  <30.223896, 25.750969, 23.183416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028877, 25.822910, 23.063450>,  <29.703844, 25.942812, 22.863506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028877, 25.822910, 23.063450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317845, 0.946767, 0.051060,
		-0.488554, 0.117387, 0.864601,
		0.812582, -0.299755, 0.499858,
		30.272652, 25.732985, 23.213408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830393, 26.438847, 23.463379>,  <29.703844, 25.942812, 22.863506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830393, 26.438847, 23.463379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187885, 26.259773, 23.451881>,  <30.402380, 26.152328, 23.444983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187885, 26.259773, 23.451881>,  <29.830393, 26.438847, 23.463379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187885, 26.259773, 23.451881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434240, 0.847247, 0.305955,
		-0.112617, -0.285923, 0.951612,
		0.893730, -0.447684, -0.028744,
		30.456005, 26.125467, 23.443258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188286, 26.516964, 24.136784>,  <29.830393, 26.438847, 23.463379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188286, 26.516964, 24.136784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456421, 26.463055, 23.844898>,  <30.617302, 26.430708, 23.669767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456421, 26.463055, 23.844898>,  <30.188286, 26.516964, 24.136784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456421, 26.463055, 23.844898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391524, 0.899589, 0.193517,
		0.630362, -0.415423, 0.655796,
		0.670338, -0.134774, -0.729714,
		30.657522, 26.422623, 23.625984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802023, 26.665318, 24.483940>,  <30.188286, 26.516964, 24.136784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802023, 26.665318, 24.483940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853539, 26.724632, 24.091732>,  <30.884447, 26.760221, 23.856407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853539, 26.724632, 24.091732>,  <30.802023, 26.665318, 24.483940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853539, 26.724632, 24.091732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394356, 0.899555, 0.187840,
		0.909889, -0.410866, 0.057372,
		0.128787, 0.148289, -0.980523,
		30.892176, 26.769119, 23.797575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340029, 27.220493, 24.462353>,  <30.802023, 26.665318, 24.483940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340029, 27.220493, 24.462353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207575, 27.217129, 24.084934>,  <31.128103, 27.215109, 23.858482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207575, 27.217129, 24.084934>,  <31.340029, 27.220493, 24.462353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207575, 27.217129, 24.084934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286253, 0.951940, -0.108947,
		0.899116, -0.306170, -0.312811,
		-0.331133, -0.008413, -0.943546,
		31.108234, 27.214605, 23.801870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878502, 27.238544, 24.137377>,  <31.340029, 27.220493, 24.462353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878502, 27.238544, 24.137377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603518, 27.381004, 23.884220>,  <31.438526, 27.466480, 23.732327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603518, 27.381004, 23.884220>,  <31.878502, 27.238544, 24.137377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603518, 27.381004, 23.884220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444911, 0.895339, 0.020561,
		0.573977, -0.267447, -0.773966,
		-0.687462, 0.356147, -0.632894,
		31.397280, 27.487848, 23.694351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197224, 27.616293, 23.641687>,  <31.878502, 27.238544, 24.137377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197224, 27.616293, 23.641687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816416, 27.738400, 23.650448>,  <31.587933, 27.811663, 23.655704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816416, 27.738400, 23.650448>,  <32.197224, 27.616293, 23.641687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816416, 27.738400, 23.650448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305274, 0.952260, -0.003085,
		-0.021796, 0.003748, -0.999755,
		-0.952015, 0.305266, 0.021899,
		31.530811, 27.829979, 23.657017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100292, 28.245945, 23.218960>,  <32.197224, 27.616293, 23.641687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100292, 28.245945, 23.218960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786104, 28.251751, 23.466454>,  <31.597591, 28.255234, 23.614950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786104, 28.251751, 23.466454>,  <32.100292, 28.245945, 23.218960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786104, 28.251751, 23.466454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176942, 0.963264, 0.202026,
		-0.593072, 0.268165, -0.759180,
		-0.785466, 0.014514, 0.618734,
		31.550465, 28.256105, 23.652073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824463, 28.813072, 22.908915>,  <32.100292, 28.245945, 23.218960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824463, 28.813072, 22.908915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686342, 28.754353, 23.279690>,  <31.603470, 28.719122, 23.502155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686342, 28.754353, 23.279690>,  <31.824463, 28.813072, 22.908915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686342, 28.754353, 23.279690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154396, 0.965347, 0.210395,
		-0.925704, 0.215766, -0.310671,
		-0.345301, -0.146797, 0.926940,
		31.582752, 28.710314, 23.557772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329769, 29.310987, 22.982162>,  <31.824463, 28.813072, 22.908915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329769, 29.310987, 22.982162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424807, 29.188210, 23.350800>,  <31.481829, 29.114542, 23.571981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424807, 29.188210, 23.350800>,  <31.329769, 29.310987, 22.982162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424807, 29.188210, 23.350800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103270, 0.951366, 0.290238,
		-0.965860, 0.026215, 0.257736,
		0.237593, -0.306946, 0.921593,
		31.496084, 29.096127, 23.627277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952290, 29.847128, 23.358244>,  <31.329769, 29.310987, 22.982162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952290, 29.847128, 23.358244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249372, 29.691322, 23.576111>,  <31.427622, 29.597839, 23.706831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249372, 29.691322, 23.576111>,  <30.952290, 29.847128, 23.358244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249372, 29.691322, 23.576111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395180, 0.911618, 0.113071,
		-0.540573, 0.131263, 0.830994,
		0.742707, -0.389515, 0.544668,
		31.472185, 29.574469, 23.739511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944500, 30.260927, 23.963032>,  <30.952290, 29.847128, 23.358244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944500, 30.260927, 23.963032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296070, 30.070362, 23.972168>,  <31.507011, 29.956022, 23.977650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296070, 30.070362, 23.972168>,  <30.944500, 30.260927, 23.963032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296070, 30.070362, 23.972168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472201, 0.875902, 0.099105,
		-0.067222, -0.076320, 0.994815,
		0.878924, -0.476414, 0.022842,
		31.559748, 29.927439, 23.979021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291111, 30.449354, 24.579906>,  <30.944500, 30.260927, 23.963032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291111, 30.449354, 24.579906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565683, 30.324345, 24.317261>,  <31.730427, 30.249340, 24.159674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565683, 30.324345, 24.317261>,  <31.291111, 30.449354, 24.579906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565683, 30.324345, 24.317261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457407, 0.887508, 0.055760,
		0.565322, -0.338615, 0.752164,
		0.686432, -0.312523, -0.656613,
		31.771612, 30.230587, 24.120277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882093, 30.682859, 24.856113>,  <31.291111, 30.449354, 24.579906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882093, 30.682859, 24.856113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990820, 30.599228, 24.480370>,  <32.056057, 30.549049, 24.254923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990820, 30.599228, 24.480370>,  <31.882093, 30.682859, 24.856113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990820, 30.599228, 24.480370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551724, 0.833625, -0.025897,
		0.788490, -0.511229, 0.341949,
		0.271818, -0.209081, -0.939362,
		32.072365, 30.536503, 24.198561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617367, 30.775978, 24.802294>,  <31.882093, 30.682859, 24.856113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617367, 30.775978, 24.802294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452374, 30.829453, 24.441853>,  <32.353378, 30.861538, 24.225588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452374, 30.829453, 24.441853>,  <32.617367, 30.775978, 24.802294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452374, 30.829453, 24.441853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438810, 0.896008, -0.067935,
		0.798314, -0.423435, -0.428250,
		-0.412482, 0.133687, -0.901103,
		32.328629, 30.869558, 24.171522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010563, 31.184059, 24.490900>,  <32.617367, 30.775978, 24.802294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010563, 31.184059, 24.490900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715645, 31.226566, 24.224037>,  <32.538692, 31.252071, 24.063919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715645, 31.226566, 24.224037>,  <33.010563, 31.184059, 24.490900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715645, 31.226566, 24.224037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283364, 0.945126, -0.162608,
		0.613268, -0.308939, -0.726951,
		-0.737297, 0.106270, -0.667158,
		32.494457, 31.258448, 24.023890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386112, 31.489214, 23.948669>,  <33.010563, 31.184059, 24.490900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386112, 31.489214, 23.948669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996746, 31.578846, 23.929691>,  <32.763126, 31.632626, 23.918304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996746, 31.578846, 23.929691>,  <33.386112, 31.489214, 23.948669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996746, 31.578846, 23.929691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226991, 0.971454, -0.068934,
		0.030642, -0.077871, -0.996493,
		-0.973415, 0.224082, -0.047443,
		32.704723, 31.646070, 23.915459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438557, 31.943001, 23.458126>,  <33.386112, 31.489214, 23.948669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438557, 31.943001, 23.458126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076817, 32.006546, 23.616573>,  <32.859772, 32.044674, 23.711641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076817, 32.006546, 23.616573>,  <33.438557, 31.943001, 23.458126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076817, 32.006546, 23.616573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174423, 0.984665, 0.003314,
		-0.389516, 0.072089, -0.918194,
		-0.904353, 0.158863, 0.396117,
		32.805511, 32.054207, 23.735409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972939, 32.450966, 22.943415>,  <33.438557, 31.943001, 23.458126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972939, 32.450966, 22.943415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797039, 32.463928, 23.302429>,  <32.691498, 32.471706, 23.517838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797039, 32.463928, 23.302429>,  <32.972939, 32.450966, 22.943415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797039, 32.463928, 23.302429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010334, 0.999100, -0.041133,
		-0.898060, -0.027364, -0.439021,
		-0.439751, 0.032403, 0.897535,
		32.665115, 32.473648, 23.571690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528408, 32.977196, 22.896194>,  <32.972939, 32.450966, 22.943415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528408, 32.977196, 22.896194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555290, 32.929283, 23.292404>,  <32.571419, 32.900536, 23.530130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555290, 32.929283, 23.292404>,  <32.528408, 32.977196, 22.896194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555290, 32.929283, 23.292404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204177, 0.973409, 0.103856,
		-0.976624, 0.195263, 0.089872,
		0.067203, -0.119778, 0.990524,
		32.575451, 32.893349, 23.589561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030159, 33.303532, 23.283384>,  <32.528408, 32.977196, 22.896194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030159, 33.303532, 23.283384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353096, 33.277699, 23.517998>,  <32.546860, 33.262199, 23.658766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353096, 33.277699, 23.517998>,  <32.030159, 33.303532, 23.283384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353096, 33.277699, 23.517998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037148, 0.997584, 0.058705,
		-0.588908, -0.025607, 0.807794,
		0.807346, -0.064580, 0.586534,
		32.595299, 33.258324, 23.693958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319691, 33.099400, 23.373425>,  <32.030159, 33.303532, 23.283384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319691, 33.099400, 23.373425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033220, 33.244896, 23.135170>,  <30.861338, 33.332195, 22.992218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033220, 33.244896, 23.135170>,  <31.319691, 33.099400, 23.373425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033220, 33.244896, 23.135170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216034, -0.927068, -0.306388,
		-0.663641, -0.090750, 0.742526,
		-0.716177, 0.363742, -0.595636,
		30.818367, 33.354019, 22.956480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720287, 32.744301, 23.594208>,  <31.319691, 33.099400, 23.373425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720287, 32.744301, 23.594208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637859, 32.895683, 23.233253>,  <30.588402, 32.986515, 23.016680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637859, 32.895683, 23.233253>,  <30.720287, 32.744301, 23.594208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637859, 32.895683, 23.233253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407952, -0.871445, -0.272322,
		-0.889444, 0.312013, 0.333973,
		-0.206071, 0.378460, -0.902387,
		30.576038, 33.009220, 22.962538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010412, 32.747204, 23.535360>,  <30.720287, 32.744301, 23.594208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010412, 32.747204, 23.535360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177933, 32.742741, 23.172157>,  <30.278444, 32.740063, 22.954235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177933, 32.742741, 23.172157>,  <30.010412, 32.747204, 23.535360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177933, 32.742741, 23.172157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589920, -0.763532, -0.262703,
		-0.690363, 0.645674, -0.326351,
		0.418800, -0.011161, -0.908010,
		30.303574, 32.739391, 22.899754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446579, 32.731976, 23.116020>,  <30.010412, 32.747204, 23.535360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446579, 32.731976, 23.116020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758312, 32.598061, 22.904148>,  <29.945353, 32.517712, 22.777025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758312, 32.598061, 22.904148>,  <29.446579, 32.731976, 23.116020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758312, 32.598061, 22.904148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533760, -0.797483, -0.281286,
		-0.328242, 0.501938, -0.800197,
		0.779331, -0.334783, -0.529682,
		29.992111, 32.497627, 22.745243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223282, 32.628216, 22.450451>,  <29.446579, 32.731976, 23.116020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223282, 32.628216, 22.450451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544962, 32.391037, 22.466831>,  <29.737970, 32.248730, 22.476660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544962, 32.391037, 22.466831>,  <29.223282, 32.628216, 22.450451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544962, 32.391037, 22.466831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550016, -0.768551, -0.326820,
		0.225258, 0.240306, -0.944199,
		0.804202, -0.592944, 0.040950,
		29.786222, 32.213154, 22.479116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976330, 32.157436, 22.062513>,  <29.223282, 32.628216, 22.450451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976330, 32.157436, 22.062513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315386, 31.993675, 22.197506>,  <29.518820, 31.895418, 22.278502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315386, 31.993675, 22.197506>,  <28.976330, 32.157436, 22.062513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315386, 31.993675, 22.197506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273451, -0.882183, -0.383377,
		0.454675, 0.232682, -0.859726,
		0.847641, -0.409405, 0.337479,
		29.569677, 31.870853, 22.298750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364864, 31.719311, 21.597294>,  <28.976330, 32.157436, 22.062513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364864, 31.719311, 21.597294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455189, 31.584126, 21.962761>,  <29.509384, 31.503014, 22.182041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455189, 31.584126, 21.962761>,  <29.364864, 31.719311, 21.597294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455189, 31.584126, 21.962761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408123, -0.884438, -0.226286,
		0.884560, -0.321791, -0.337647,
		0.225811, -0.337964, 0.913668,
		29.522932, 31.482737, 22.236862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453833, 30.978123, 21.461033>,  <29.364864, 31.719311, 21.597294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453833, 30.978123, 21.461033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422718, 30.977913, 21.859821>,  <29.404049, 30.977787, 22.099094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422718, 30.977913, 21.859821>,  <29.453833, 30.978123, 21.461033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422718, 30.977913, 21.859821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579194, -0.813912, -0.045622,
		0.811470, -0.580988, 0.063008,
		-0.077788, -0.000527, 0.996970,
		29.399382, 30.977755, 22.158913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586378, 30.319693, 21.604519>,  <29.453833, 30.978123, 21.461033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586378, 30.319693, 21.604519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391884, 30.431175, 21.935795>,  <29.275187, 30.498064, 22.134560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391884, 30.431175, 21.935795>,  <29.586378, 30.319693, 21.604519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391884, 30.431175, 21.935795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320543, -0.938592, 0.127665,
		0.812912, -0.203395, 0.545715,
		-0.486237, 0.278705, 0.828189,
		29.246014, 30.514786, 22.184252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754780, 29.856012, 22.131937>,  <29.586378, 30.319693, 21.604519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754780, 29.856012, 22.131937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418701, 30.009701, 22.285011>,  <29.217054, 30.101913, 22.376856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418701, 30.009701, 22.285011>,  <29.754780, 29.856012, 22.131937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418701, 30.009701, 22.285011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382955, -0.920036, 0.082935,
		0.383949, -0.076869, 0.920149,
		-0.840196, 0.384219, 0.382684,
		29.166643, 30.124966, 22.399817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620186, 29.397060, 22.639467>,  <29.754780, 29.856012, 22.131937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620186, 29.397060, 22.639467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273140, 29.595928, 22.636131>,  <29.064913, 29.715248, 22.634130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273140, 29.595928, 22.636131>,  <29.620186, 29.397060, 22.639467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273140, 29.595928, 22.636131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490296, -0.852589, 0.180836,
		0.082795, 0.160985, 0.983478,
		-0.867614, 0.497168, -0.008340,
		29.012856, 29.745079, 22.633629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204550, 29.044744, 23.147940>,  <29.620186, 29.397060, 22.639467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204550, 29.044744, 23.147940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947060, 29.220455, 22.897293>,  <28.792564, 29.325882, 22.746904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947060, 29.220455, 22.897293>,  <29.204550, 29.044744, 23.147940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947060, 29.220455, 22.897293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635585, -0.762945, 0.118090,
		-0.426201, 0.474287, 0.770328,
		-0.643727, 0.439279, -0.626618,
		28.753942, 29.352240, 22.709307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466404, 29.024429, 23.474083>,  <29.204550, 29.044744, 23.147940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466404, 29.024429, 23.474083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414066, 29.067783, 23.079899>,  <28.382664, 29.093796, 22.843388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414066, 29.067783, 23.079899>,  <28.466404, 29.024429, 23.474083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414066, 29.067783, 23.079899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735749, -0.676856, 0.023244,
		-0.664495, 0.728093, 0.168307,
		-0.130843, 0.108386, -0.985461,
		28.374813, 29.100300, 22.784260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693428, 29.039595, 23.311054>,  <28.466404, 29.024429, 23.474083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693428, 29.039595, 23.311054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885986, 28.936256, 22.976028>,  <28.001520, 28.874254, 22.775013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885986, 28.936256, 22.976028>,  <27.693428, 29.039595, 23.311054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885986, 28.936256, 22.976028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485485, -0.874194, -0.009392,
		-0.729769, 0.411147, -0.546255,
		0.481395, -0.258345, -0.837566,
		28.030405, 28.858753, 22.724758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289734, 28.612255, 22.914703>,  <27.693428, 29.039595, 23.311054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289734, 28.612255, 22.914703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604551, 28.528610, 22.682552>,  <27.793442, 28.478424, 22.543262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604551, 28.528610, 22.682552>,  <27.289734, 28.612255, 22.914703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604551, 28.528610, 22.682552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381962, -0.903955, -0.192279,
		-0.484426, 0.373013, -0.791324,
		0.787043, -0.209111, -0.580376,
		27.840664, 28.465878, 22.508440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133841, 28.339230, 22.179142>,  <27.289734, 28.612255, 22.914703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133841, 28.339230, 22.179142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494942, 28.190323, 22.265358>,  <27.711601, 28.100979, 22.317087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494942, 28.190323, 22.265358>,  <27.133841, 28.339230, 22.179142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494942, 28.190323, 22.265358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308919, -0.909738, -0.277391,
		0.299347, 0.183832, -0.936268,
		0.902752, -0.372267, 0.215538,
		27.765768, 28.078642, 22.330019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278467, 27.843174, 21.661354>,  <27.133841, 28.339230, 22.179142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278467, 27.843174, 21.661354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518770, 27.744633, 21.965565>,  <27.662952, 27.685509, 22.148090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518770, 27.744633, 21.965565>,  <27.278467, 27.843174, 21.661354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518770, 27.744633, 21.965565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189452, -0.968107, -0.163939,
		0.776659, -0.045596, -0.628269,
		0.600757, -0.246352, 0.760527,
		27.698997, 27.670727, 22.193724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733082, 27.377899, 21.405991>,  <27.278467, 27.843174, 21.661354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733082, 27.377899, 21.405991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754414, 27.316704, 21.800705>,  <27.767214, 27.279985, 22.037535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754414, 27.316704, 21.800705>,  <27.733082, 27.377899, 21.405991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754414, 27.316704, 21.800705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078090, -0.984529, -0.156860,
		0.995519, 0.085423, -0.040559,
		0.053331, -0.152990, 0.986788,
		27.770412, 27.270807, 22.096741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296787, 26.882654, 21.498871>,  <27.733082, 27.377899, 21.405991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296787, 26.882654, 21.498871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057711, 26.882111, 21.819561>,  <27.914265, 26.881784, 22.011974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057711, 26.882111, 21.819561>,  <28.296787, 26.882654, 21.498871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057711, 26.882111, 21.819561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085884, -0.994136, -0.065715,
		0.797112, -0.108132, 0.594071,
		-0.597693, -0.001361, 0.801724,
		27.878403, 26.881702, 22.060078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592794, 26.516138, 21.920250>,  <28.296787, 26.882654, 21.498871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592794, 26.516138, 21.920250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213364, 26.482948, 22.042442>,  <27.985704, 26.463034, 22.115757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213364, 26.482948, 22.042442>,  <28.592794, 26.516138, 21.920250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213364, 26.482948, 22.042442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040422, -0.988884, -0.143090,
		0.313957, -0.123384, 0.941386,
		-0.948576, -0.082977, 0.305479,
		27.928791, 26.458055, 22.134087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582113, 26.005136, 22.512897>,  <28.592794, 26.516138, 21.920250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582113, 26.005136, 22.512897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218870, 26.009781, 22.345467>,  <28.000925, 26.012568, 22.245008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218870, 26.009781, 22.345467>,  <28.582113, 26.005136, 22.512897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218870, 26.009781, 22.345467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008912, -0.998853, -0.047046,
		-0.418643, -0.046453, 0.906962,
		-0.908107, 0.011613, -0.418576,
		27.946438, 26.013266, 22.219894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104124, 25.617012, 22.968596>,  <28.582113, 26.005136, 22.512897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104124, 25.617012, 22.968596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959967, 25.629143, 22.595673>,  <27.873472, 25.636421, 22.371920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959967, 25.629143, 22.595673>,  <28.104124, 25.617012, 22.968596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959967, 25.629143, 22.595673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074611, -0.995332, -0.061218,
		-0.929811, -0.091623, 0.356449,
		-0.360394, 0.030327, -0.932307,
		27.851849, 25.638241, 22.315981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695486, 25.119659, 22.997982>,  <28.104124, 25.617012, 22.968596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695486, 25.119659, 22.997982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765982, 25.156433, 22.605965>,  <27.808279, 25.178497, 22.370754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765982, 25.156433, 22.605965>,  <27.695486, 25.119659, 22.997982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765982, 25.156433, 22.605965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135728, -0.983850, -0.116697,
		-0.974945, 0.153586, -0.160915,
		0.176239, 0.091932, -0.980045,
		27.818853, 25.184013, 22.311951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253672, 24.662020, 22.680536>,  <27.695486, 25.119659, 22.997982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253672, 24.662020, 22.680536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478527, 24.743393, 22.359882>,  <27.613440, 24.792217, 22.167490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478527, 24.743393, 22.359882>,  <27.253672, 24.662020, 22.680536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478527, 24.743393, 22.359882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012134, -0.971200, -0.237957,
		-0.826955, 0.124038, -0.548416,
		0.562137, 0.203434, -0.801633,
		27.647169, 24.804422, 22.119392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932648, 24.250750, 22.160160>,  <27.253672, 24.662020, 22.680536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932648, 24.250750, 22.160160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313841, 24.338024, 22.076046>,  <27.542557, 24.390388, 22.025578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313841, 24.338024, 22.076046>,  <26.932648, 24.250750, 22.160160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313841, 24.338024, 22.076046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149799, -0.942432, -0.298970,
		-0.263410, 0.253413, -0.930804,
		0.952982, 0.218185, -0.210285,
		27.599735, 24.403481, 22.012960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168144, 24.165680, 21.347216>,  <26.932648, 24.250750, 22.160160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168144, 24.165680, 21.347216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518927, 24.109058, 21.530914>,  <27.729397, 24.075085, 21.641134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518927, 24.109058, 21.530914>,  <27.168144, 24.165680, 21.347216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518927, 24.109058, 21.530914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154893, -0.821378, -0.548951,
		0.454921, 0.552541, -0.698388,
		0.876958, -0.141554, 0.459247,
		27.782015, 24.066593, 21.668688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663439, 24.149012, 20.830070>,  <27.168144, 24.165680, 21.347216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663439, 24.149012, 20.830070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833115, 23.956055, 21.136627>,  <27.934919, 23.840281, 21.320562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833115, 23.956055, 21.136627>,  <27.663439, 24.149012, 20.830070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833115, 23.956055, 21.136627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299185, -0.724131, -0.621388,
		0.854723, 0.492879, -0.162843,
		0.424189, -0.482395, 0.766393,
		27.960371, 23.811337, 21.366545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252058, 23.898018, 20.547371>,  <27.663439, 24.149012, 20.830070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252058, 23.898018, 20.547371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218384, 23.693924, 20.889732>,  <28.198179, 23.571468, 21.095150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218384, 23.693924, 20.889732>,  <28.252058, 23.898018, 20.547371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218384, 23.693924, 20.889732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289261, -0.834480, -0.469012,
		0.953541, 0.208096, 0.217842,
		-0.084185, -0.510235, 0.855905,
		28.193129, 23.540854, 21.146503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840931, 23.556761, 20.592150>,  <28.252058, 23.898018, 20.547371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840931, 23.556761, 20.592150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602009, 23.335739, 20.824669>,  <28.458654, 23.203127, 20.964180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602009, 23.335739, 20.824669>,  <28.840931, 23.556761, 20.592150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602009, 23.335739, 20.824669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302465, -0.826478, -0.474814,
		0.742791, -0.107787, 0.660790,
		-0.597308, -0.552554, 0.581299,
		28.422817, 23.169973, 20.999058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168186, 23.023647, 20.821016>,  <28.840931, 23.556761, 20.592150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168186, 23.023647, 20.821016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795259, 22.895775, 20.888653>,  <28.571505, 22.819052, 20.929235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795259, 22.895775, 20.888653>,  <29.168186, 23.023647, 20.821016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795259, 22.895775, 20.888653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246972, -0.904362, -0.348043,
		0.264182, -0.282725, 0.922103,
		-0.932315, -0.319681, 0.169091,
		28.515564, 22.799871, 20.939381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246153, 22.388426, 21.018101>,  <29.168186, 23.023647, 20.821016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246153, 22.388426, 21.018101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858345, 22.368492, 20.922142>,  <28.625660, 22.356533, 20.864567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858345, 22.368492, 20.922142>,  <29.246153, 22.388426, 21.018101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858345, 22.368492, 20.922142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137644, -0.920777, -0.364998,
		-0.202704, -0.386892, 0.899569,
		-0.969518, -0.049833, -0.239899,
		28.567490, 22.353542, 20.850172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107761, 21.697212, 21.147606>,  <29.246153, 22.388426, 21.018101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107761, 21.697212, 21.147606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817951, 21.812729, 20.897274>,  <28.644066, 21.882038, 20.747074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817951, 21.812729, 20.897274>,  <29.107761, 21.697212, 21.147606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817951, 21.812729, 20.897274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113216, -0.845792, -0.521362,
		-0.679886, -0.448594, 0.580102,
		-0.724525, 0.288790, -0.625830,
		28.600594, 21.899366, 20.709524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709499, 21.115532, 21.083284>,  <29.107761, 21.697212, 21.147606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709499, 21.115532, 21.083284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609787, 21.340099, 20.767647>,  <28.549959, 21.474840, 20.578264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609787, 21.340099, 20.767647>,  <28.709499, 21.115532, 21.083284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609787, 21.340099, 20.767647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096822, -0.796285, -0.597124,
		-0.963579, -0.225252, 0.144139,
		-0.249279, 0.561420, -0.789093,
		28.535004, 21.508526, 20.530918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135782, 20.748680, 20.780506>,  <28.709499, 21.115532, 21.083284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135782, 20.748680, 20.780506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337685, 20.963879, 20.510460>,  <28.458826, 21.092997, 20.348433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337685, 20.963879, 20.510460>,  <28.135782, 20.748680, 20.780506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337685, 20.963879, 20.510460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110642, -0.815921, -0.567477,
		-0.856142, 0.211742, -0.471367,
		0.504757, 0.537994, -0.675117,
		28.489111, 21.125277, 20.307924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888075, 20.548107, 20.049078>,  <28.135782, 20.748680, 20.780506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888075, 20.548107, 20.049078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246744, 20.719467, 20.004448>,  <28.461946, 20.822283, 19.977669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246744, 20.719467, 20.004448>,  <27.888075, 20.548107, 20.049078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246744, 20.719467, 20.004448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258734, -0.711664, -0.653139,
		-0.359208, 0.556785, -0.748973,
		0.896675, 0.428398, -0.111576,
		28.515747, 20.847986, 19.970976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135729, 20.339432, 19.298334>,  <27.888075, 20.548107, 20.049078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135729, 20.339432, 19.298334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485863, 20.476662, 19.434620>,  <28.695944, 20.559000, 19.516392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485863, 20.476662, 19.434620>,  <28.135729, 20.339432, 19.298334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485863, 20.476662, 19.434620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482741, -0.659957, -0.575689,
		0.027354, 0.668399, -0.743300,
		0.875336, 0.343073, 0.340716,
		28.748463, 20.579584, 19.536835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594130, 20.343912, 18.726477>,  <28.135729, 20.339432, 19.298334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594130, 20.343912, 18.726477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842569, 20.353497, 19.039822>,  <28.991634, 20.359247, 19.227829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842569, 20.353497, 19.039822>,  <28.594130, 20.343912, 18.726477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842569, 20.353497, 19.039822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517463, -0.763226, -0.386934,
		0.588613, 0.645687, -0.486440,
		0.621102, 0.023960, 0.783364,
		29.028900, 20.360685, 19.274830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191366, 20.276003, 18.473082>,  <28.594130, 20.343912, 18.726477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191366, 20.276003, 18.473082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245047, 20.128944, 18.841175>,  <29.277254, 20.040709, 19.062031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245047, 20.128944, 18.841175>,  <29.191366, 20.276003, 18.473082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245047, 20.128944, 18.841175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331377, -0.858522, -0.391317,
		0.933906, 0.357458, 0.006617,
		0.134199, -0.367646, 0.920232,
		29.285307, 20.018650, 19.117245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802809, 19.778515, 18.631605>,  <29.191366, 20.276003, 18.473082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802809, 19.778515, 18.631605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785604, 19.833790, 18.235817>,  <29.775282, 19.866955, 17.998344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785604, 19.833790, 18.235817>,  <29.802809, 19.778515, 18.631605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785604, 19.833790, 18.235817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085897, 0.987233, 0.134140,
		0.995375, -0.079224, -0.054330,
		-0.043010, 0.138186, -0.989472,
		29.772701, 19.875246, 17.938976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206045, 20.294895, 18.513052>,  <29.802809, 19.778515, 18.631605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206045, 20.294895, 18.513052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018974, 20.298958, 18.159515>,  <29.906733, 20.301395, 17.947393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018974, 20.298958, 18.159515>,  <30.206045, 20.294895, 18.513052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018974, 20.298958, 18.159515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053720, 0.997759, 0.039892,
		0.882266, 0.066137, -0.466082,
		-0.467676, 0.010157, -0.883842,
		29.878672, 20.302006, 17.894363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679504, 20.738850, 17.965389>,  <30.206045, 20.294895, 18.513052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679504, 20.738850, 17.965389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299179, 20.762741, 17.843811>,  <30.070984, 20.777077, 17.770864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299179, 20.762741, 17.843811>,  <30.679504, 20.738850, 17.965389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299179, 20.762741, 17.843811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083448, 0.994348, -0.065643,
		0.298309, -0.087778, -0.950424,
		-0.950815, 0.059729, -0.303948,
		30.013935, 20.780661, 17.752626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716871, 21.214663, 17.448233>,  <30.679504, 20.738850, 17.965389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716871, 21.214663, 17.448233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332752, 21.178261, 17.553722>,  <30.102282, 21.156420, 17.617016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332752, 21.178261, 17.553722>,  <30.716871, 21.214663, 17.448233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332752, 21.178261, 17.553722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079073, 0.995321, 0.055536,
		-0.267543, 0.032478, -0.962998,
		-0.960296, -0.091005, 0.263723,
		30.044664, 21.150959, 17.632839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330139, 21.755339, 17.098225>,  <30.716871, 21.214663, 17.448233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330139, 21.755339, 17.098225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072252, 21.647541, 17.384361>,  <29.917521, 21.582863, 17.556044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072252, 21.647541, 17.384361>,  <30.330139, 21.755339, 17.098225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072252, 21.647541, 17.384361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096147, 0.956952, 0.273859,
		-0.758352, 0.107783, -0.642873,
		-0.644716, -0.269492, 0.715343,
		29.878838, 21.566694, 17.598965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617361, 22.160856, 17.103836>,  <30.330139, 21.755339, 17.098225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617361, 22.160856, 17.103836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660046, 22.006939, 17.470562>,  <29.685656, 21.914589, 17.690598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660046, 22.006939, 17.470562>,  <29.617361, 22.160856, 17.103836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660046, 22.006939, 17.470562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300491, 0.866482, 0.398641,
		-0.947796, -0.318033, -0.023164,
		0.106710, -0.384791, 0.916815,
		29.692059, 21.891502, 17.745605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023903, 22.274874, 17.417242>,  <29.617361, 22.160856, 17.103836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023903, 22.274874, 17.417242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310968, 22.265381, 17.695637>,  <29.483208, 22.259686, 17.862673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310968, 22.265381, 17.695637>,  <29.023903, 22.274874, 17.417242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310968, 22.265381, 17.695637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302132, 0.889848, 0.341886,
		-0.627437, -0.455639, 0.631439,
		0.717661, -0.023734, 0.695987,
		29.526266, 22.258261, 17.904432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776829, 22.765343, 18.023741>,  <29.023903, 22.274874, 17.417242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776829, 22.765343, 18.023741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166929, 22.716179, 18.097260>,  <29.400990, 22.686680, 18.141371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166929, 22.716179, 18.097260>,  <28.776829, 22.765343, 18.023741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166929, 22.716179, 18.097260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011562, 0.858469, 0.512736,
		-0.220805, -0.497920, 0.838642,
		0.975249, -0.122911, 0.183798,
		29.459503, 22.679306, 18.152399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849524, 23.131687, 18.624737>,  <28.776829, 22.765343, 18.023741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849524, 23.131687, 18.624737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218470, 23.103264, 18.472843>,  <29.439837, 23.086210, 18.381706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218470, 23.103264, 18.472843>,  <28.849524, 23.131687, 18.624737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218470, 23.103264, 18.472843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220299, 0.904203, 0.365904,
		0.317356, -0.421151, 0.849657,
		0.922363, -0.071056, -0.379733,
		29.495178, 23.081947, 18.358923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321960, 23.228516, 19.178268>,  <28.849524, 23.131687, 18.624737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321960, 23.228516, 19.178268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551950, 23.330074, 18.867157>,  <29.689945, 23.391010, 18.680490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551950, 23.330074, 18.867157>,  <29.321960, 23.228516, 19.178268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551950, 23.330074, 18.867157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287449, 0.827342, 0.482574,
		0.766013, -0.501040, 0.402719,
		0.574975, 0.253897, -0.777779,
		29.724443, 23.406244, 18.633823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933498, 23.344263, 19.473862>,  <29.321960, 23.228516, 19.178268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933498, 23.344263, 19.473862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926926, 23.547077, 19.129154>,  <29.922983, 23.668766, 18.922329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926926, 23.547077, 19.129154>,  <29.933498, 23.344263, 19.473862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926926, 23.547077, 19.129154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242247, 0.838225, 0.488565,
		0.970075, -0.200733, -0.136601,
		-0.016431, 0.507036, -0.861768,
		29.921997, 23.699188, 18.870625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586021, 23.783848, 19.426401>,  <29.933498, 23.344263, 19.473862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586021, 23.783848, 19.426401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341726, 23.933945, 19.147491>,  <30.195148, 24.024002, 18.980145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341726, 23.933945, 19.147491>,  <30.586021, 23.783848, 19.426401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341726, 23.933945, 19.147491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234234, 0.926789, 0.293591,
		0.756396, 0.015981, -0.653919,
		-0.610737, 0.375241, -0.697276,
		30.158504, 24.046516, 18.938309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864527, 24.410673, 19.226902>,  <30.586021, 23.783848, 19.426401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864527, 24.410673, 19.226902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510080, 24.459297, 19.048008>,  <30.297413, 24.488472, 18.940672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510080, 24.459297, 19.048008>,  <30.864527, 24.410673, 19.226902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510080, 24.459297, 19.048008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089381, 0.991697, 0.092452,
		0.454760, 0.041949, -0.889625,
		-0.886117, 0.121559, -0.447235,
		30.244246, 24.495766, 18.913837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874004, 24.971821, 18.576721>,  <30.864527, 24.410673, 19.226902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874004, 24.971821, 18.576721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507551, 24.949566, 18.735519>,  <30.287680, 24.936213, 18.830799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507551, 24.949566, 18.735519>,  <30.874004, 24.971821, 18.576721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507551, 24.949566, 18.735519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011399, 0.993537, 0.112936,
		-0.400713, 0.098939, -0.910846,
		-0.916132, -0.055638, 0.396995,
		30.232712, 24.932875, 18.854618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472414, 25.444401, 18.229885>,  <30.874004, 24.971821, 18.576721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472414, 25.444401, 18.229885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231571, 25.385204, 18.543716>,  <30.087065, 25.349686, 18.732016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231571, 25.385204, 18.543716>,  <30.472414, 25.444401, 18.229885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231571, 25.385204, 18.543716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217647, 0.975878, 0.017048,
		-0.768176, -0.160497, -0.619796,
		-0.602109, -0.147993, 0.784578,
		30.050938, 25.340807, 18.779089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945190, 25.869699, 18.087063>,  <30.472414, 25.444401, 18.229885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945190, 25.869699, 18.087063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891222, 25.804474, 18.478001>,  <29.858841, 25.765339, 18.712564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891222, 25.804474, 18.478001>,  <29.945190, 25.869699, 18.087063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891222, 25.804474, 18.478001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397226, 0.912536, 0.097414,
		-0.907748, -0.375084, -0.187895,
		-0.134922, -0.163065, 0.977346,
		29.850746, 25.755554, 18.771204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362942, 26.041040, 18.214426>,  <29.945190, 25.869699, 18.087063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362942, 26.041040, 18.214426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523771, 26.083187, 18.578236>,  <29.620270, 26.108475, 18.796522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523771, 26.083187, 18.578236>,  <29.362942, 26.041040, 18.214426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523771, 26.083187, 18.578236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389274, 0.918780, 0.065649,
		-0.828735, -0.380450, 0.410434,
		0.402075, 0.105366, 0.909524,
		29.644394, 26.114798, 18.851093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769152, 26.076633, 18.767305>,  <29.362942, 26.041040, 18.214426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769152, 26.076633, 18.767305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100239, 26.251575, 18.907936>,  <29.298891, 26.356541, 18.992315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100239, 26.251575, 18.907936>,  <28.769152, 26.076633, 18.767305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100239, 26.251575, 18.907936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476801, 0.878510, 0.029678,
		-0.295885, -0.192198, 0.935688,
		0.827715, 0.437356, 0.351578,
		29.348553, 26.382782, 19.013409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543932, 26.373388, 19.318068>,  <28.769152, 26.076633, 18.767305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543932, 26.373388, 19.318068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903366, 26.548901, 19.319611>,  <29.119026, 26.654209, 19.320536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903366, 26.548901, 19.319611>,  <28.543932, 26.373388, 19.318068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903366, 26.548901, 19.319611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430209, 0.879229, 0.204635,
		0.086399, -0.185542, 0.978831,
		0.898585, 0.438782, 0.003857,
		29.172941, 26.680536, 19.320768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629833, 26.634010, 19.913782>,  <28.543932, 26.373388, 19.318068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629833, 26.634010, 19.913782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920403, 26.840984, 19.732864>,  <29.094744, 26.965168, 19.624313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920403, 26.840984, 19.732864>,  <28.629833, 26.634010, 19.913782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920403, 26.840984, 19.732864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418336, 0.855073, 0.306340,
		0.545254, -0.033323, 0.837608,
		0.726425, 0.517435, -0.452292,
		29.138330, 26.996216, 19.597178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820621, 27.111881, 20.419624>,  <28.629833, 26.634010, 19.913782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820621, 27.111881, 20.419624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941265, 27.261032, 20.068626>,  <29.013651, 27.350523, 19.858028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941265, 27.261032, 20.068626>,  <28.820621, 27.111881, 20.419624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941265, 27.261032, 20.068626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316310, 0.907361, 0.276846,
		0.899433, 0.194061, 0.391612,
		0.301608, 0.372876, -0.877494,
		29.031748, 27.372894, 19.805378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301584, 27.779045, 20.606928>,  <28.820621, 27.111881, 20.419624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301584, 27.779045, 20.606928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205393, 27.828705, 20.221855>,  <29.147678, 27.858500, 19.990812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205393, 27.828705, 20.221855>,  <29.301584, 27.779045, 20.606928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205393, 27.828705, 20.221855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284366, 0.939260, 0.192163,
		0.928065, 0.319966, -0.190570,
		-0.240480, 0.124148, -0.962682,
		29.133249, 27.865950, 19.933050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610041, 28.427294, 20.377800>,  <29.301584, 27.779045, 20.606928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610041, 28.427294, 20.377800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294748, 28.344696, 20.145920>,  <29.105574, 28.295137, 20.006792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294748, 28.344696, 20.145920>,  <29.610041, 28.427294, 20.377800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294748, 28.344696, 20.145920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238608, 0.970880, -0.021398,
		0.567240, 0.121455, -0.814547,
		-0.788229, -0.206495, -0.579702,
		29.058279, 28.282747, 19.972010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508730, 29.115555, 20.102819>,  <29.610041, 28.427294, 20.377800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508730, 29.115555, 20.102819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156187, 28.954727, 20.003582>,  <28.944660, 28.858231, 19.944040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156187, 28.954727, 20.003582>,  <29.508730, 29.115555, 20.102819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156187, 28.954727, 20.003582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454584, 0.864735, 0.213509,
		0.128689, 0.300957, -0.944915,
		-0.881358, -0.402067, -0.248092,
		28.891779, 28.834106, 19.929153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131100, 29.632174, 19.803547>,  <29.508730, 29.115555, 20.102819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131100, 29.632174, 19.803547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833738, 29.374790, 19.876549>,  <28.655321, 29.220360, 19.920351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833738, 29.374790, 19.876549>,  <29.131100, 29.632174, 19.803547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833738, 29.374790, 19.876549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568548, 0.751670, 0.334284,
		-0.352284, 0.144744, -0.924633,
		-0.743404, -0.643461, 0.182507,
		28.610718, 29.181751, 19.931301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611956, 29.807398, 19.303305>,  <29.131100, 29.632174, 19.803547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611956, 29.807398, 19.303305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420853, 29.621082, 19.601242>,  <28.306190, 29.509293, 19.780005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420853, 29.621082, 19.601242>,  <28.611956, 29.807398, 19.303305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420853, 29.621082, 19.601242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607187, 0.787828, 0.103205,
		-0.634879, -0.402951, -0.659211,
		-0.477758, -0.465786, 0.744842,
		28.277525, 29.481346, 19.824696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844637, 29.708742, 19.116491>,  <28.611956, 29.807398, 19.303305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844637, 29.708742, 19.116491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901213, 29.708965, 19.512470>,  <27.935158, 29.709099, 19.750057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901213, 29.708965, 19.512470>,  <27.844637, 29.708742, 19.116491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901213, 29.708965, 19.512470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679359, 0.727413, 0.096652,
		-0.720046, -0.686200, 0.103263,
		0.141438, 0.000559, 0.989947,
		27.943644, 29.709133, 19.809454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146574, 29.476786, 19.465860>,  <27.844637, 29.708742, 19.116491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146574, 29.476786, 19.465860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369003, 29.711632, 19.701176>,  <27.502460, 29.852539, 19.842365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369003, 29.711632, 19.701176>,  <27.146574, 29.476786, 19.465860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369003, 29.711632, 19.701176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752237, 0.656522, 0.055833,
		-0.353443, -0.473578, 0.806723,
		0.556073, 0.587113, 0.588286,
		27.535826, 29.887766, 19.877661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694803, 29.687660, 20.057993>,  <27.146574, 29.476786, 19.465860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694803, 29.687660, 20.057993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006929, 29.937813, 20.057327>,  <27.194206, 30.087904, 20.056929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006929, 29.937813, 20.057327>,  <26.694803, 29.687660, 20.057993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006929, 29.937813, 20.057327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600331, 0.749801, 0.278211,
		0.175236, -0.216094, 0.960519,
		0.780317, 0.625382, -0.001664,
		27.241024, 30.125427, 20.056828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602837, 30.055441, 20.652891>,  <26.694803, 29.687660, 20.057993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602837, 30.055441, 20.652891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831434, 30.288963, 20.422218>,  <26.968594, 30.429077, 20.283815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831434, 30.288963, 20.422218>,  <26.602837, 30.055441, 20.652891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831434, 30.288963, 20.422218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562382, 0.790411, 0.242852,
		0.597595, 0.185527, 0.780039,
		0.571496, 0.583806, -0.576683,
		27.002884, 30.464106, 20.249214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490662, 30.703564, 20.973637>,  <26.602837, 30.055441, 20.652891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490662, 30.703564, 20.973637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660950, 30.803463, 20.625755>,  <26.763123, 30.863403, 20.417027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660950, 30.803463, 20.625755>,  <26.490662, 30.703564, 20.973637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660950, 30.803463, 20.625755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292745, 0.947478, 0.128785,
		0.856191, 0.199775, 0.476474,
		0.425721, 0.249750, -0.869705,
		26.788666, 30.878387, 20.364843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707865, 31.361948, 21.107267>,  <26.490662, 30.703564, 20.973637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707865, 31.361948, 21.107267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720016, 31.349487, 20.707645>,  <26.727308, 31.342010, 20.467873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720016, 31.349487, 20.707645>,  <26.707865, 31.361948, 21.107267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720016, 31.349487, 20.707645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341986, 0.938867, -0.039673,
		0.939214, 0.342867, 0.017872,
		0.030382, -0.031150, -0.999053,
		26.729132, 31.340143, 20.407930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001507, 31.946306, 20.862194>,  <26.707865, 31.361948, 21.107267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001507, 31.946306, 20.862194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775448, 31.827415, 20.554359>,  <26.639812, 31.756081, 20.369658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775448, 31.827415, 20.554359>,  <27.001507, 31.946306, 20.862194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775448, 31.827415, 20.554359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514556, 0.856157, 0.047199,
		0.644859, 0.422670, -0.636794,
		-0.565146, -0.297229, -0.769588,
		26.605904, 31.738247, 20.323483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845957, 32.521645, 20.532690>,  <27.001507, 31.946306, 20.862194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845957, 32.521645, 20.532690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559347, 32.297218, 20.366898>,  <26.387381, 32.162563, 20.267422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559347, 32.297218, 20.366898>,  <26.845957, 32.521645, 20.532690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559347, 32.297218, 20.366898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623197, 0.781835, 0.019002,
		0.313395, 0.271919, -0.909859,
		-0.716526, -0.561066, -0.414482,
		26.344389, 32.128899, 20.242554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686773, 32.839317, 19.939634>,  <26.845957, 32.521645, 20.532690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686773, 32.839317, 19.939634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369526, 32.615788, 20.036530>,  <26.179178, 32.481670, 20.094666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369526, 32.615788, 20.036530>,  <26.686773, 32.839317, 19.939634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369526, 32.615788, 20.036530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588328, 0.805817, -0.067300,
		-0.157589, -0.195892, -0.967880,
		-0.793118, -0.558825, 0.242236,
		26.131590, 32.448139, 20.109200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055395, 32.962021, 19.367558>,  <26.686773, 32.839317, 19.939634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055395, 32.962021, 19.367558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930950, 32.827068, 19.722946>,  <25.856283, 32.746098, 19.936180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930950, 32.827068, 19.722946>,  <26.055395, 32.962021, 19.367558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930950, 32.827068, 19.722946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665642, 0.744616, 0.049672,
		-0.678329, -0.575951, -0.456235,
		-0.311111, -0.337383, 0.888472,
		25.837616, 32.725853, 19.989489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342937, 33.001034, 19.226974>,  <26.055395, 32.962021, 19.367558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342937, 33.001034, 19.226974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420601, 33.001492, 19.619362>,  <25.467199, 33.001766, 19.854795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420601, 33.001492, 19.619362>,  <25.342937, 33.001034, 19.226974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420601, 33.001492, 19.619362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602456, 0.789334, 0.118319,
		-0.774177, -0.613963, 0.153944,
		0.194156, 0.001145, 0.980970,
		25.478848, 33.001835, 19.913652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.665237, 33.078388, 19.558228>,  <25.342937, 33.001034, 19.226974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.665237, 33.078388, 19.558228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936878, 33.159122, 19.840527>,  <25.099863, 33.207561, 20.009907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936878, 33.159122, 19.840527>,  <24.665237, 33.078388, 19.558228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.936878, 33.159122, 19.840527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596258, 0.712449, 0.369992,
		-0.428133, -0.672071, 0.604172,
		0.679102, 0.201836, 0.705750,
		25.140608, 33.219673, 20.052252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355942, 32.950539, 20.094439>,  <24.665237, 33.078388, 19.558228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355942, 32.950539, 20.094439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649813, 33.205242, 20.188061>,  <24.826136, 33.358067, 20.244234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649813, 33.205242, 20.188061>,  <24.355942, 32.950539, 20.094439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.649813, 33.205242, 20.188061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671493, 0.731694, 0.117139,
		-0.096668, -0.243227, 0.965140,
		0.734678, 0.636762, 0.234056,
		24.870216, 33.396271, 20.258278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.271513, 33.262230, 20.757473>,  <24.355942, 32.950539, 20.094439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.271513, 33.262230, 20.757473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520679, 33.519650, 20.579567>,  <24.670179, 33.674103, 20.472822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520679, 33.519650, 20.579567>,  <24.271513, 33.262230, 20.757473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520679, 33.519650, 20.579567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607861, 0.756061, 0.242645,
		0.492425, 0.119209, 0.862152,
		0.622915, 0.643553, -0.444766,
		24.707554, 33.712715, 20.446136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.346260, 33.746197, 21.196665>,  <24.271513, 33.262230, 20.757473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.346260, 33.746197, 21.196665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424307, 33.899830, 20.835686>,  <24.471134, 33.992008, 20.619099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424307, 33.899830, 20.835686>,  <24.346260, 33.746197, 21.196665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.424307, 33.899830, 20.835686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649989, 0.739690, 0.174278,
		0.734469, 0.552577, 0.393971,
		0.195115, 0.384078, -0.902449,
		24.482841, 34.015053, 20.564951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.441654, 34.430672, 21.341742>,  <24.346260, 33.746197, 21.196665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.441654, 34.430672, 21.341742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312149, 34.395866, 20.964890>,  <24.234446, 34.374985, 20.738779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312149, 34.395866, 20.964890>,  <24.441654, 34.430672, 21.341742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312149, 34.395866, 20.964890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699221, 0.692827, 0.176297,
		0.637393, 0.715834, -0.285153,
		-0.323762, -0.087014, -0.942129,
		24.215021, 34.369762, 20.682251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.325890, 35.229675, 21.223778>,  <24.441654, 34.430672, 21.341742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.325890, 35.229675, 21.223778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.108608, 34.998249, 20.980404>,  <23.978239, 34.859394, 20.834379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.108608, 34.998249, 20.980404>,  <24.325890, 35.229675, 21.223778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.108608, 34.998249, 20.980404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837328, 0.320002, 0.443260,
		-0.061754, 0.750240, -0.658275,
		-0.543201, -0.578565, -0.608436,
		23.945648, 34.824680, 20.797873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.702866, 35.499210, 20.707600>,  <24.325890, 35.229675, 21.223778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.702866, 35.499210, 20.707600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.677143, 35.132401, 20.865044>,  <23.661711, 34.912315, 20.959511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.677143, 35.132401, 20.865044>,  <23.702866, 35.499210, 20.707600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.677143, 35.132401, 20.865044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706149, 0.320515, 0.631366,
		-0.705137, -0.237348, -0.668167,
		-0.064304, -0.917026, 0.393610,
		23.657852, 34.857292, 20.983128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.985941, 35.373856, 20.799612>,  <23.702866, 35.499210, 20.707600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.985941, 35.373856, 20.799612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.192459, 35.120766, 21.030472>,  <23.316370, 34.968914, 21.168987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.192459, 35.120766, 21.030472>,  <22.985941, 35.373856, 20.799612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.192459, 35.120766, 21.030472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584742, 0.231937, 0.777356,
		-0.625712, -0.738830, -0.250230,
		0.516296, -0.632721, 0.577151,
		23.347347, 34.930950, 21.203617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.422548, 34.885529, 20.534109>,  <22.985941, 35.373856, 20.799612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.422548, 34.885529, 20.534109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478458, 35.118149, 20.854675>,  <22.512005, 35.257721, 21.047014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478458, 35.118149, 20.854675>,  <22.422548, 34.885529, 20.534109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.478458, 35.118149, 20.854675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771102, 0.571670, -0.280348,
		-0.621181, -0.578786, 0.528338,
		0.139774, 0.581550, 0.801414,
		22.520390, 35.292614, 21.095098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.962687, 35.300781, 21.040857>,  <22.422548, 34.885529, 20.534109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.962687, 35.300781, 21.040857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.867266, 35.686565, 20.995419>,  <21.810013, 35.918037, 20.968155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.867266, 35.686565, 20.995419>,  <21.962687, 35.300781, 21.040857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.867266, 35.686565, 20.995419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948957, -0.256357, -0.183743,
		-0.206335, 0.063965, 0.976389,
		-0.238551, 0.964463, -0.113595,
		21.795700, 35.975903, 20.961340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.258394, 35.018650, 21.316448>,  <21.962687, 35.300781, 21.040857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.258394, 35.018650, 21.316448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.088322, 35.360561, 21.435497>,  <20.986279, 35.565708, 21.506926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.088322, 35.360561, 21.435497>,  <21.258394, 35.018650, 21.316448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.088322, 35.360561, 21.435497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693048, -0.095965, -0.714475,
		-0.582155, -0.510047, 0.633204,
		-0.425181, 0.854776, 0.297621,
		20.960768, 35.616993, 21.524784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.564417, 34.871716, 21.555042>,  <21.258394, 35.018650, 21.316448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.564417, 34.871716, 21.555042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.568268, 35.253387, 21.435413>,  <20.570580, 35.482391, 21.363636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.568268, 35.253387, 21.435413>,  <20.564417, 34.871716, 21.555042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.568268, 35.253387, 21.435413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693801, -0.209009, -0.689170,
		-0.720102, 0.214134, 0.659999,
		0.009629, 0.954181, -0.299074,
		20.571156, 35.539642, 21.345692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.807487, 35.068192, 21.535467>,  <20.564417, 34.871716, 21.555042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.807487, 35.068192, 21.535467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.012005, 35.315651, 21.296856>,  <20.134716, 35.464127, 21.153688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.012005, 35.315651, 21.296856>,  <19.807487, 35.068192, 21.535467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.012005, 35.315651, 21.296856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506620, -0.343714, -0.790694,
		-0.694200, 0.706491, 0.137683,
		0.511294, 0.618653, -0.596529,
		20.165394, 35.501247, 21.117897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280067, 35.308033, 21.129004>,  <19.807487, 35.068192, 21.535467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280067, 35.308033, 21.129004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.609741, 35.402733, 20.923222>,  <19.807547, 35.459553, 20.799751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.609741, 35.402733, 20.923222>,  <19.280067, 35.308033, 21.129004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.609741, 35.402733, 20.923222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407136, -0.383736, -0.828847,
		-0.393647, 0.892578, -0.219880,
		0.824186, 0.236751, -0.514457,
		19.856997, 35.473759, 20.768885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.072182, 35.757374, 20.581520>,  <19.280067, 35.308033, 21.129004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.072182, 35.757374, 20.581520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.404486, 35.558220, 20.481964>,  <19.603868, 35.438728, 20.422232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.404486, 35.558220, 20.481964>,  <19.072182, 35.757374, 20.581520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.404486, 35.558220, 20.481964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456852, -0.354445, -0.815877,
		0.317996, 0.791505, -0.521919,
		0.830762, -0.497885, -0.248889,
		19.653715, 35.408855, 20.407297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199032, 35.846786, 19.927107>,  <19.072182, 35.757374, 20.581520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199032, 35.846786, 19.927107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.444239, 35.535732, 19.982952>,  <19.591362, 35.349098, 20.016460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.444239, 35.535732, 19.982952>,  <19.199032, 35.846786, 19.927107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.444239, 35.535732, 19.982952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177062, -0.307436, -0.934950,
		0.769975, 0.548419, -0.326153,
		0.613015, -0.777637, 0.139614,
		19.628143, 35.302441, 20.024836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665916, 35.837791, 19.435129>,  <19.199032, 35.846786, 19.927107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.665916, 35.837791, 19.435129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.638117, 35.452015, 19.537128>,  <19.621437, 35.220551, 19.598328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.638117, 35.452015, 19.537128>,  <19.665916, 35.837791, 19.435129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.638117, 35.452015, 19.537128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277513, -0.226836, -0.933559,
		0.958205, -0.135646, -0.251880,
		-0.069499, -0.964441, 0.254999,
		19.617268, 35.162682, 19.613628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.090384, 35.490353, 18.921515>,  <19.665916, 35.837791, 19.435129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.090384, 35.490353, 18.921515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.834669, 35.227951, 19.082005>,  <19.681240, 35.070511, 19.178299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.834669, 35.227951, 19.082005>,  <20.090384, 35.490353, 18.921515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.834669, 35.227951, 19.082005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331732, -0.235449, -0.913519,
		0.693736, -0.717097, -0.067098,
		-0.639284, -0.656000, 0.401224,
		19.642883, 35.031151, 19.202372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.075472, 34.896824, 18.439749>,  <20.090384, 35.490353, 18.921515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.075472, 34.896824, 18.439749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733372, 34.855812, 18.642937>,  <19.528111, 34.831203, 18.764849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733372, 34.855812, 18.642937>,  <20.075472, 34.896824, 18.439749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.733372, 34.855812, 18.642937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489378, -0.162613, -0.856776,
		0.170450, -0.981348, 0.088898,
		-0.855252, -0.102533, 0.507968,
		19.476795, 34.825054, 18.795326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758406, 34.180008, 18.277973>,  <20.075472, 34.896824, 18.439749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758406, 34.180008, 18.277973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.447781, 34.396709, 18.406631>,  <19.261406, 34.526730, 18.483826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.447781, 34.396709, 18.406631>,  <19.758406, 34.180008, 18.277973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.447781, 34.396709, 18.406631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483992, -0.186113, -0.855052,
		-0.403364, -0.819675, 0.406732,
		-0.776562, 0.541752, 0.321644,
		19.214811, 34.559235, 18.503124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.084114, 33.777145, 18.134115>,  <19.758406, 34.180008, 18.277973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.084114, 33.777145, 18.134115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958084, 34.154282, 18.177517>,  <18.882465, 34.380566, 18.203558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958084, 34.154282, 18.177517>,  <19.084114, 33.777145, 18.134115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.958084, 34.154282, 18.177517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463951, -0.053280, -0.884257,
		-0.827936, -0.328947, 0.454220,
		-0.315075, 0.942844, 0.108502,
		18.863562, 34.437134, 18.210068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.357790, 33.726276, 17.884727>,  <19.084114, 33.777145, 18.134115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.357790, 33.726276, 17.884727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.430206, 34.117653, 17.924484>,  <18.473656, 34.352478, 17.948339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.430206, 34.117653, 17.924484>,  <18.357790, 33.726276, 17.884727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430206, 34.117653, 17.924484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664185, 0.196175, -0.721369,
		-0.725315, 0.064583, 0.685381,
		0.181042, 0.978440, 0.099394,
		18.484518, 34.411186, 17.954302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.764351, 34.052399, 17.804951>,  <18.357790, 33.726276, 17.884727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.764351, 34.052399, 17.804951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036497, 34.337440, 17.736485>,  <18.199785, 34.508465, 17.695406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036497, 34.337440, 17.736485>,  <17.764351, 34.052399, 17.804951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.036497, 34.337440, 17.736485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622979, 0.439334, -0.647212,
		-0.386009, 0.546971, 0.742846,
		0.680363, 0.712607, -0.171165,
		18.240606, 34.551224, 17.685135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432117, 34.748726, 17.767986>,  <17.764351, 34.052399, 17.804951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.432117, 34.748726, 17.767986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.775835, 34.750587, 17.563404>,  <17.982065, 34.751705, 17.440655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.775835, 34.750587, 17.563404>,  <17.432117, 34.748726, 17.767986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.775835, 34.750587, 17.563404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472080, 0.392066, -0.789573,
		0.196853, 0.919925, 0.339096,
		0.859296, 0.004650, -0.511458,
		18.033625, 34.751984, 17.409967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.220062, 35.170876, 17.313284>,  <17.432117, 34.748726, 17.767986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.220062, 35.170876, 17.313284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.563705, 35.051197, 17.147190>,  <17.769892, 34.979389, 17.047535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.563705, 35.051197, 17.147190>,  <17.220062, 35.170876, 17.313284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.563705, 35.051197, 17.147190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328352, 0.300124, -0.895606,
		0.392582, 0.905764, 0.159597,
		0.859107, -0.299195, -0.415232,
		17.821438, 34.961437, 17.022621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.280872, 35.571255, 16.763237>,  <17.220062, 35.170876, 17.313284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.280872, 35.571255, 16.763237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.539587, 35.292900, 16.638393>,  <17.694817, 35.125889, 16.563488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.539587, 35.292900, 16.638393>,  <17.280872, 35.571255, 16.763237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.539587, 35.292900, 16.638393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363195, 0.078810, -0.928374,
		0.670636, 0.713819, -0.201768,
		0.646789, -0.695882, -0.312109,
		17.733624, 35.084137, 16.544762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621731, 35.904793, 16.242949>,  <17.280872, 35.571255, 16.763237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621731, 35.904793, 16.242949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.668350, 35.512547, 16.179951>,  <17.696321, 35.277199, 16.142151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.668350, 35.512547, 16.179951>,  <17.621731, 35.904793, 16.242949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.668350, 35.512547, 16.179951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257834, 0.123267, -0.958294,
		0.959134, 0.152298, -0.238470,
		0.116550, -0.980618, -0.157497,
		17.703316, 35.218361, 16.132702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131630, 35.903656, 15.626677>,  <17.621731, 35.904793, 16.242949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131630, 35.903656, 15.626677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.935503, 35.556141, 15.654399>,  <17.817827, 35.347633, 15.671033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.935503, 35.556141, 15.654399>,  <18.131630, 35.903656, 15.626677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.935503, 35.556141, 15.654399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223297, 0.048358, -0.973550,
		0.842454, -0.492823, -0.217708,
		-0.490316, -0.868785, 0.069307,
		17.788408, 35.295506, 15.675191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.157244, 35.693687, 14.937896>,  <18.131630, 35.903656, 15.626677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.157244, 35.693687, 14.937896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.878992, 35.455353, 15.098433>,  <17.712040, 35.312351, 15.194757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.878992, 35.455353, 15.098433>,  <18.157244, 35.693687, 14.937896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.878992, 35.455353, 15.098433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506931, 0.011267, -0.861913,
		0.509037, -0.803028, -0.309885,
		-0.695632, -0.595835, 0.401344,
		17.670303, 35.276604, 15.218837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.101597, 35.200512, 14.446335>,  <18.157244, 35.693687, 14.937896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.101597, 35.200512, 14.446335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.758461, 35.208496, 14.651746>,  <17.552580, 35.213287, 14.774993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.758461, 35.208496, 14.651746>,  <18.101597, 35.200512, 14.446335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.758461, 35.208496, 14.651746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511652, -0.126872, -0.849774,
		0.048194, -0.991718, 0.119047,
		-0.857840, 0.019957, 0.513529,
		17.501108, 35.214481, 14.805804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713905, 34.614101, 14.146079>,  <18.101597, 35.200512, 14.446335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.713905, 34.614101, 14.146079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.470734, 34.887218, 14.308173>,  <17.324831, 35.051090, 14.405430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.470734, 34.887218, 14.308173>,  <17.713905, 34.614101, 14.146079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.470734, 34.887218, 14.308173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619700, -0.088958, -0.779781,
		-0.496381, -0.725175, 0.477208,
		-0.607929, 0.682794, 0.405234,
		17.288355, 35.092056, 14.429744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.026371, 34.315815, 14.229565>,  <17.713905, 34.614101, 14.146079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.026371, 34.315815, 14.229565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.036366, 34.708782, 14.155549>,  <17.042362, 34.944561, 14.111139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.036366, 34.708782, 14.155549>,  <17.026371, 34.315815, 14.229565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.036366, 34.708782, 14.155549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489931, -0.149311, -0.858880,
		-0.871403, 0.112115, 0.477584,
		0.024985, 0.982414, -0.185039,
		17.043861, 35.003506, 14.100038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.632978, 34.384430, 13.599704>,  <17.026371, 34.315815, 14.229565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.632978, 34.384430, 13.599704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.697266, 34.770714, 13.681272>,  <16.735838, 35.002483, 13.730212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.697266, 34.770714, 13.681272>,  <16.632978, 34.384430, 13.599704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697266, 34.770714, 13.681272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620595, 0.259527, -0.739938,
		-0.767484, -0.007630, 0.641022,
		0.160717, 0.965706, 0.203918,
		16.745481, 35.060425, 13.742447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068361, 34.874752, 13.776408>,  <16.632978, 34.384430, 13.599704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068361, 34.874752, 13.776408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340935, 35.095657, 13.584304>,  <16.504478, 35.228199, 13.469042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340935, 35.095657, 13.584304>,  <16.068361, 34.874752, 13.776408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340935, 35.095657, 13.584304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709127, 0.335876, -0.619940,
		-0.181063, 0.763015, 0.620503,
		0.681436, 0.552264, -0.480260,
		16.545366, 35.261337, 13.440226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884003, 35.505680, 13.883611>,  <16.068361, 34.874752, 13.776408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884003, 35.505680, 13.883611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.081314, 35.497944, 13.535748>,  <16.199701, 35.493301, 13.327031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.081314, 35.497944, 13.535748>,  <15.884003, 35.505680, 13.883611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.081314, 35.497944, 13.535748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785362, 0.419950, -0.454807,
		0.374010, 0.907341, 0.191959,
		0.493278, -0.019345, -0.869657,
		16.229298, 35.492142, 13.274852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.753844, 36.176430, 13.511501>,  <15.884003, 35.505680, 13.883611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.753844, 36.176430, 13.511501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.815012, 35.907822, 13.221486>,  <15.851713, 35.746658, 13.047477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.815012, 35.907822, 13.221486>,  <15.753844, 36.176430, 13.511501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815012, 35.907822, 13.221486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725706, 0.421692, -0.543623,
		0.670795, 0.609296, -0.422838,
		0.152920, -0.671516, -0.725039,
		15.860888, 35.706367, 13.003974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.731636, 36.542252, 12.899137>,  <15.753844, 36.176430, 13.511501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.731636, 36.542252, 12.899137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.632503, 36.160683, 12.831483>,  <15.573022, 35.931740, 12.790890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.632503, 36.160683, 12.831483>,  <15.731636, 36.542252, 12.899137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.632503, 36.160683, 12.831483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638060, 0.292091, -0.712434,
		0.729012, -0.068646, -0.681050,
		-0.247835, -0.953924, -0.169137,
		15.558152, 35.874504, 12.780742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646950, 37.303921, 12.655804>,  <15.731636, 36.542252, 12.899137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.646950, 37.303921, 12.655804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.447181, 37.638378, 12.746526>,  <15.327319, 37.839054, 12.800959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.447181, 37.638378, 12.746526>,  <15.646950, 37.303921, 12.655804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.447181, 37.638378, 12.746526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308609, -0.072922, 0.948390,
		0.809529, 0.543641, -0.221623,
		-0.499422, 0.836144, 0.226805,
		15.297354, 37.889221, 12.814568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.941608, 37.792721, 13.104860>,  <15.646950, 37.303921, 12.655804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.941608, 37.792721, 13.104860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563998, 37.909924, 13.165479>,  <15.337432, 37.980244, 13.201850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563998, 37.909924, 13.165479>,  <15.941608, 37.792721, 13.104860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.563998, 37.909924, 13.165479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125221, -0.106715, 0.986373,
		0.305183, 0.950137, 0.064051,
		-0.944025, 0.293004, 0.151545,
		15.280790, 37.997826, 13.210942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919202, 38.451958, 13.500830>,  <15.941608, 37.792721, 13.104860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919202, 38.451958, 13.500830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653847, 38.154877, 13.537301>,  <15.494634, 37.976627, 13.559184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653847, 38.154877, 13.537301>,  <15.919202, 38.451958, 13.500830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653847, 38.154877, 13.537301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292930, -0.145638, 0.944977,
		-0.688556, 0.653594, 0.314174,
		-0.663387, -0.742701, 0.091178,
		15.454830, 37.932068, 13.564654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352075, 38.697819, 13.985127>,  <15.919202, 38.451958, 13.500830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.352075, 38.697819, 13.985127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.464813, 38.316525, 13.941491>,  <15.532456, 38.087746, 13.915309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.464813, 38.316525, 13.941491>,  <15.352075, 38.697819, 13.985127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.464813, 38.316525, 13.941491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627868, 0.097269, 0.772218,
		-0.725496, -0.286142, 0.625922,
		0.281847, -0.953237, -0.109091,
		15.549367, 38.030552, 13.908764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.331496, 38.339214, 14.569909>,  <15.352075, 38.697819, 13.985127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.331496, 38.339214, 14.569909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.614447, 38.137253, 14.372045>,  <15.784217, 38.016075, 14.253325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.614447, 38.137253, 14.372045>,  <15.331496, 38.339214, 14.569909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.614447, 38.137253, 14.372045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607863, 0.077393, 0.790261,
		-0.360723, -0.859699, 0.361659,
		0.707376, -0.504904, -0.494662,
		15.826659, 37.985783, 14.223646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.581721, 37.832664, 15.061337>,  <15.331496, 38.339214, 14.569909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.581721, 37.832664, 15.061337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871784, 37.854786, 14.786794>,  <16.045822, 37.868057, 14.622067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871784, 37.854786, 14.786794>,  <15.581721, 37.832664, 15.061337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.871784, 37.854786, 14.786794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684472, 0.050854, 0.727263,
		0.075127, -0.997174, -0.000978,
		0.725158, 0.055306, -0.686358,
		16.089333, 37.871376, 14.580886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.997412, 37.465595, 15.319026>,  <15.581721, 37.832664, 15.061337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.997412, 37.465595, 15.319026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.224152, 37.663338, 15.055423>,  <16.360195, 37.781982, 14.897261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.224152, 37.663338, 15.055423>,  <15.997412, 37.465595, 15.319026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224152, 37.663338, 15.055423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757814, 0.000842, 0.652470,
		0.323110, -0.869257, -0.374155,
		0.566849, 0.494359, -0.659007,
		16.394207, 37.811646, 14.857720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496870, 36.956589, 15.119230>,  <15.997412, 37.465595, 15.319026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.496870, 36.956589, 15.119230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643597, 37.326660, 15.080276>,  <16.731632, 37.548702, 15.056903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643597, 37.326660, 15.080276>,  <16.496870, 36.956589, 15.119230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643597, 37.326660, 15.080276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662825, -0.186462, 0.725186,
		0.652771, -0.330558, -0.681631,
		0.366814, 0.925183, -0.097386,
		16.753641, 37.604214, 15.051060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107576, 36.744888, 15.269769>,  <16.496870, 36.956589, 15.119230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107576, 36.744888, 15.269769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.092741, 37.141891, 15.316331>,  <17.083839, 37.380093, 15.344268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.092741, 37.141891, 15.316331>,  <17.107576, 36.744888, 15.269769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.092741, 37.141891, 15.316331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461436, -0.086314, 0.882965,
		0.886398, 0.086463, -0.454778,
		-0.037091, 0.992509, 0.116406,
		17.081614, 37.439644, 15.351253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838423, 36.951031, 15.327972>,  <17.107576, 36.744888, 15.269769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838423, 36.951031, 15.327972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607000, 37.236370, 15.486169>,  <17.468147, 37.407574, 15.581086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607000, 37.236370, 15.486169>,  <17.838423, 36.951031, 15.327972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607000, 37.236370, 15.486169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498909, -0.074089, 0.863482,
		0.645261, 0.696887, -0.313029,
		-0.578557, 0.713344, 0.395490,
		17.433434, 37.450375, 15.604815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.272514, 37.395050, 15.661314>,  <17.838423, 36.951031, 15.327972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.272514, 37.395050, 15.661314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.916740, 37.470131, 15.828012>,  <17.703276, 37.515179, 15.928030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.916740, 37.470131, 15.828012>,  <18.272514, 37.395050, 15.661314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916740, 37.470131, 15.828012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444283, 0.140947, 0.884730,
		0.107325, 0.972061, -0.208755,
		-0.889434, 0.187700, 0.416744,
		17.649910, 37.526440, 15.953034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.397263, 37.853928, 16.239975>,  <18.272514, 37.395050, 15.661314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.397263, 37.853928, 16.239975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.039003, 37.690540, 16.310368>,  <17.824049, 37.592506, 16.352604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.039003, 37.690540, 16.310368>,  <18.397263, 37.853928, 16.239975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.039003, 37.690540, 16.310368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246850, -0.127388, 0.960644,
		-0.369977, 0.903839, 0.214925,
		-0.895646, -0.408470, 0.175982,
		17.770309, 37.568001, 16.363163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388739, 38.023567, 16.905548>,  <18.397263, 37.853928, 16.239975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388739, 38.023567, 16.905548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.080416, 37.771404, 16.868793>,  <17.895422, 37.620106, 16.846741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.080416, 37.771404, 16.868793>,  <18.388739, 38.023567, 16.905548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.080416, 37.771404, 16.868793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019252, -0.167218, 0.985732,
		-0.636780, 0.758039, 0.141029,
		-0.770805, -0.630409, -0.091887,
		17.849174, 37.582283, 16.841227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.980333, 38.252853, 17.513559>,  <18.388739, 38.023567, 16.905548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.980333, 38.252853, 17.513559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901203, 37.880760, 17.389927>,  <17.853725, 37.657505, 17.315748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901203, 37.880760, 17.389927>,  <17.980333, 38.252853, 17.513559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.901203, 37.880760, 17.389927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032643, -0.321388, 0.946385,
		-0.979694, 0.177129, 0.093944,
		-0.197825, -0.930234, -0.309080,
		17.841856, 37.601688, 17.297203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.437485, 38.166851, 17.892635>,  <17.980333, 38.252853, 17.513559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.437485, 38.166851, 17.892635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623850, 37.826077, 17.797024>,  <17.735668, 37.621613, 17.739656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623850, 37.826077, 17.797024>,  <17.437485, 38.166851, 17.892635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623850, 37.826077, 17.797024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026994, -0.256331, 0.966212,
		-0.884419, -0.456623, -0.096431,
		0.465913, -0.851933, -0.239030,
		17.763624, 37.570496, 17.725315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.189661, 37.654594, 18.358355>,  <17.437485, 38.166851, 17.892635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.189661, 37.654594, 18.358355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513010, 37.464344, 18.219612>,  <17.707020, 37.350193, 18.136368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513010, 37.464344, 18.219612>,  <17.189661, 37.654594, 18.358355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513010, 37.464344, 18.219612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266880, -0.229075, 0.936109,
		-0.524696, -0.849295, -0.058242,
		0.808374, -0.475629, -0.346855,
		17.755522, 37.321655, 18.115555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243975, 37.273838, 18.857410>,  <17.189661, 37.654594, 18.358355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.243975, 37.273838, 18.857410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.597555, 37.209518, 18.681786>,  <17.809704, 37.170925, 18.576410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.597555, 37.209518, 18.681786>,  <17.243975, 37.273838, 18.857410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.597555, 37.209518, 18.681786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416177, -0.157464, 0.895546,
		-0.213139, -0.974345, -0.072270,
		0.883950, -0.160798, -0.439062,
		17.862740, 37.161278, 18.550068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.639891, 36.707500, 19.217443>,  <17.243975, 37.273838, 18.857410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.639891, 36.707500, 19.217443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.927925, 36.919590, 19.038406>,  <18.100746, 37.046844, 18.930984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.927925, 36.919590, 19.038406>,  <17.639891, 36.707500, 19.217443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.927925, 36.919590, 19.038406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501915, 0.047391, 0.863618,
		0.479125, -0.846531, -0.232002,
		0.720085, 0.530226, -0.447593,
		18.143951, 37.078659, 18.904129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284849, 36.544846, 19.464884>,  <17.639891, 36.707500, 19.217443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.284849, 36.544846, 19.464884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.412157, 36.875557, 19.279350>,  <18.488543, 37.073982, 19.168030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.412157, 36.875557, 19.279350>,  <18.284849, 36.544846, 19.464884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.412157, 36.875557, 19.279350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651333, 0.164799, 0.740680,
		0.688817, -0.537847, -0.486057,
		0.318271, 0.826778, -0.463834,
		18.507639, 37.123589, 19.140200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.045168, 36.532955, 19.431488>,  <18.284849, 36.544846, 19.464884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.045168, 36.532955, 19.431488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948256, 36.917404, 19.378513>,  <18.890108, 37.148075, 19.346729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948256, 36.917404, 19.378513>,  <19.045168, 36.532955, 19.431488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.948256, 36.917404, 19.378513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713377, 0.268996, 0.647097,
		0.657565, 0.062303, -0.750817,
		-0.242283, 0.961124, -0.132437,
		18.875570, 37.205742, 19.338781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.696339, 36.971413, 19.276915>,  <19.045168, 36.532955, 19.431488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.696339, 36.971413, 19.276915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.422459, 37.206936, 19.448727>,  <19.258131, 37.348251, 19.551813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.422459, 37.206936, 19.448727>,  <19.696339, 36.971413, 19.276915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.422459, 37.206936, 19.448727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670083, 0.276769, 0.688758,
		0.286665, 0.759411, -0.584053,
		-0.684698, 0.588807, 0.429528,
		19.217049, 37.383579, 19.577585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015400, 37.718437, 19.440683>,  <19.696339, 36.971413, 19.276915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015400, 37.718437, 19.440683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.687281, 37.739155, 19.668518>,  <19.490410, 37.751587, 19.805220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.687281, 37.739155, 19.668518>,  <20.015400, 37.718437, 19.440683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687281, 37.739155, 19.668518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543377, 0.381344, 0.747876,
		-0.178473, 0.922981, -0.340959,
		-0.820298, 0.051793, 0.569586,
		19.441191, 37.754692, 19.839394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.205418, 38.271267, 19.864771>,  <20.015400, 37.718437, 19.440683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.205418, 38.271267, 19.864771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.873299, 38.131138, 20.038151>,  <19.674026, 38.047062, 20.142178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.873299, 38.131138, 20.038151>,  <20.205418, 38.271267, 19.864771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.873299, 38.131138, 20.038151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302934, 0.369123, 0.878623,
		-0.467797, 0.860827, -0.200359,
		-0.830300, -0.350322, 0.433448,
		19.624208, 38.026043, 20.168186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.921104, 38.741982, 20.346869>,  <20.205418, 38.271267, 19.864771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.921104, 38.741982, 20.346869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.755741, 38.399765, 20.471539>,  <19.656523, 38.194435, 20.546341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.755741, 38.399765, 20.471539>,  <19.921104, 38.741982, 20.346869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.755741, 38.399765, 20.471539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153017, 0.272151, 0.950010,
		-0.897596, 0.440436, 0.018402,
		-0.413410, -0.855541, 0.311676,
		19.631718, 38.143105, 20.565041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.437416, 38.910568, 20.872734>,  <19.921104, 38.741982, 20.346869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.437416, 38.910568, 20.872734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.514290, 38.527615, 20.958973>,  <19.560413, 38.297844, 21.010715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.514290, 38.527615, 20.958973>,  <19.437416, 38.910568, 20.872734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.514290, 38.527615, 20.958973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006961, 0.221017, 0.975245,
		-0.981334, -0.185927, 0.049141,
		0.192185, -0.957383, 0.215597,
		19.571945, 38.240398, 21.023651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.125414, 38.910244, 21.436060>,  <19.437416, 38.910568, 20.872734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.125414, 38.910244, 21.436060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359947, 38.586216, 21.436184>,  <19.500668, 38.391800, 21.436258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359947, 38.586216, 21.436184>,  <19.125414, 38.910244, 21.436060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359947, 38.586216, 21.436184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342448, 0.248214, 0.906156,
		-0.734128, -0.531202, 0.422943,
		0.586333, -0.810070, 0.000312,
		19.535847, 38.343193, 21.436277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910370, 38.406963, 21.949642>,  <19.125414, 38.910244, 21.436060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910370, 38.406963, 21.949642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.308670, 38.386181, 21.919220>,  <19.547649, 38.373711, 21.900967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.308670, 38.386181, 21.919220>,  <18.910370, 38.406963, 21.949642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.308670, 38.386181, 21.919220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084647, 0.190625, 0.978007,
		-0.036316, -0.980287, 0.194213,
		0.995749, -0.051957, -0.076055,
		19.607395, 38.370594, 21.896404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.321732, 37.748993, 22.362621>,  <18.910370, 38.406963, 21.949642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.321732, 37.748993, 22.362621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.513557, 38.097755, 22.323025>,  <19.628653, 38.307014, 22.299267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.513557, 38.097755, 22.323025>,  <19.321732, 37.748993, 22.362621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.513557, 38.097755, 22.323025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114826, 0.174190, 0.977994,
		0.869962, -0.457644, 0.183653,
		0.479563, 0.871906, -0.098990,
		19.657427, 38.359325, 22.293327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.786669, 37.489517, 22.597240>,  <19.321732, 37.748993, 22.362621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.786669, 37.489517, 22.597240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.944439, 37.790443, 22.808311>,  <19.039101, 37.971001, 22.934954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.944439, 37.790443, 22.808311>,  <18.786669, 37.489517, 22.597240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.944439, 37.790443, 22.808311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911163, 0.394680, 0.118365,
		-0.119216, -0.527488, 0.841156,
		0.394424, 0.752319, 0.527680,
		19.062767, 38.016140, 22.966616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494034, 37.506275, 23.250710>,  <18.786669, 37.489517, 22.597240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.494034, 37.506275, 23.250710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.599203, 37.874279, 23.134464>,  <18.662306, 38.095081, 23.064716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.599203, 37.874279, 23.134464>,  <18.494034, 37.506275, 23.250710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.599203, 37.874279, 23.134464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944411, 0.307033, 0.117555,
		0.197380, 0.243550, 0.949592,
		0.262926, 0.920008, -0.290613,
		18.678082, 38.150280, 23.047279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.328678, 26.896456, 17.033463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.630955, 26.843910, 17.290112>,  <32.812321, 26.812384, 17.444101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.630955, 26.843910, 17.290112>,  <32.328678, 26.896456, 17.033463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630955, 26.843910, 17.290112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089201, 0.949905, 0.299540,
		-0.648827, -0.283592, 0.706115,
		0.755689, -0.131363, 0.641621,
		32.857662, 26.804501, 17.482597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170673, 27.231054, 17.761877>,  <32.328678, 26.896456, 17.033463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170673, 27.231054, 17.761877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.568966, 27.205910, 17.734844>,  <32.807941, 27.190823, 17.718624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.568966, 27.205910, 17.734844>,  <32.170673, 27.231054, 17.761877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568966, 27.205910, 17.734844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084480, 0.915661, 0.392973,
		0.037181, -0.397005, 0.917063,
		0.995731, -0.062862, -0.067584,
		32.867683, 27.187052, 17.714569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440861, 27.363844, 18.391859>,  <32.170673, 27.231054, 17.761877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440861, 27.363844, 18.391859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.737976, 27.442299, 18.135799>,  <32.916245, 27.489372, 17.982164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.737976, 27.442299, 18.135799>,  <32.440861, 27.363844, 18.391859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737976, 27.442299, 18.135799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096487, 0.914787, 0.392244,
		0.662534, -0.353122, 0.660571,
		0.742791, 0.196138, -0.640149,
		32.960815, 27.501141, 17.943754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948414, 27.689375, 18.754723>,  <32.440861, 27.363844, 18.391859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948414, 27.689375, 18.754723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.027950, 27.778282, 18.372925>,  <33.075672, 27.831627, 18.143847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.027950, 27.778282, 18.372925>,  <32.948414, 27.689375, 18.754723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027950, 27.778282, 18.372925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185978, 0.947687, 0.259424,
		0.962224, -0.229099, 0.147101,
		0.198840, 0.222266, -0.954495,
		33.087601, 27.844961, 18.086576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672993, 28.081087, 18.702934>,  <32.948414, 27.689375, 18.754723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672993, 28.081087, 18.702934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.449482, 28.163509, 18.381611>,  <33.315376, 28.212963, 18.188816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.449482, 28.163509, 18.381611>,  <33.672993, 28.081087, 18.702934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449482, 28.163509, 18.381611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195631, 0.974056, 0.113773,
		0.805913, -0.093578, -0.584592,
		-0.558779, 0.206056, -0.803310,
		33.281849, 28.225327, 18.140617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038029, 28.620659, 18.223314>,  <33.672993, 28.081087, 18.702934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038029, 28.620659, 18.223314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.655056, 28.641472, 18.109741>,  <33.425274, 28.653959, 18.041597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.655056, 28.641472, 18.109741>,  <34.038029, 28.620659, 18.223314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655056, 28.641472, 18.109741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067225, 0.996767, -0.044014,
		0.280725, -0.061227, -0.957833,
		-0.957431, 0.052034, -0.283934,
		33.367828, 28.657082, 18.024561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000797, 29.249546, 17.968355>,  <34.038029, 28.620659, 18.223314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000797, 29.249546, 17.968355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.611317, 29.158653, 17.974869>,  <33.377628, 29.104118, 17.978777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.611317, 29.158653, 17.974869>,  <34.000797, 29.249546, 17.968355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611317, 29.158653, 17.974869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227642, 0.973256, -0.030855,
		-0.008836, -0.033751, -0.999392,
		-0.973705, -0.227230, 0.016283,
		33.319206, 29.090485, 17.979753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718082, 29.691324, 17.522884>,  <34.000797, 29.249546, 17.968355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718082, 29.691324, 17.522884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.412846, 29.562744, 17.747158>,  <33.229706, 29.485596, 17.881723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.412846, 29.562744, 17.747158>,  <33.718082, 29.691324, 17.522884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412846, 29.562744, 17.747158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363000, 0.930944, 0.039683,
		-0.534723, -0.173247, -0.827077,
		-0.763088, -0.321448, 0.560686,
		33.183918, 29.466311, 17.915363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158367, 30.092703, 17.262735>,  <33.718082, 29.691324, 17.522884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158367, 30.092703, 17.262735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.046345, 29.983456, 17.630859>,  <32.979130, 29.917908, 17.851734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.046345, 29.983456, 17.630859>,  <33.158367, 30.092703, 17.262735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046345, 29.983456, 17.630859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491549, 0.864264, 0.106899,
		-0.824588, -0.422441, -0.376296,
		-0.280060, -0.273116, 0.920312,
		32.962326, 29.901522, 17.906954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472729, 30.226070, 17.281664>,  <33.158367, 30.092703, 17.262735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472729, 30.226070, 17.281664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.595242, 30.237720, 17.662262>,  <32.668747, 30.244711, 17.890621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.595242, 30.237720, 17.662262>,  <32.472729, 30.226070, 17.281664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595242, 30.237720, 17.662262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561034, 0.813016, 0.155707,
		-0.769047, -0.581512, 0.265349,
		0.306279, 0.029124, 0.951496,
		32.687126, 30.246458, 17.947710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963999, 30.441282, 17.560604>,  <32.472729, 30.226070, 17.281664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963999, 30.441282, 17.560604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.216545, 30.508457, 17.863438>,  <32.368073, 30.548761, 18.045137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.216545, 30.508457, 17.863438>,  <31.963999, 30.441282, 17.560604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216545, 30.508457, 17.863438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669496, 0.610709, 0.422859,
		-0.391344, -0.773843, 0.498013,
		0.631367, 0.167935, 0.757082,
		32.405956, 30.558838, 18.090563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498543, 30.371771, 18.173208>,  <31.963999, 30.441282, 17.560604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498543, 30.371771, 18.173208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.811998, 30.596615, 18.278992>,  <32.000072, 30.731522, 18.342461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.811998, 30.596615, 18.278992>,  <31.498543, 30.371771, 18.173208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811998, 30.596615, 18.278992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604748, 0.592922, 0.531718,
		0.142082, -0.576606, 0.804574,
		0.783640, 0.562112, 0.264457,
		32.047092, 30.765249, 18.358330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375437, 30.475554, 18.903002>,  <31.498543, 30.371771, 18.173208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375437, 30.475554, 18.903002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.630047, 30.736225, 18.738007>,  <31.782814, 30.892628, 18.639009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.630047, 30.736225, 18.738007>,  <31.375437, 30.475554, 18.903002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630047, 30.736225, 18.738007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522090, 0.757738, 0.391478,
		0.567677, -0.033830, 0.822556,
		0.636526, 0.651681, -0.412488,
		31.821005, 30.931730, 18.614260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231318, 31.039007, 19.311041>,  <31.375437, 30.475554, 18.903002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231318, 31.039007, 19.311041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.453346, 31.195217, 19.017269>,  <31.586563, 31.288942, 18.841007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.453346, 31.195217, 19.017269>,  <31.231318, 31.039007, 19.311041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453346, 31.195217, 19.017269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269350, 0.919752, 0.285495,
		0.786984, 0.039347, 0.615718,
		0.555074, 0.390523, -0.734428,
		31.619869, 31.312374, 18.796940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557545, 31.614201, 19.690231>,  <31.231318, 31.039007, 19.311041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557545, 31.614201, 19.690231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.535494, 31.677952, 19.295959>,  <31.522263, 31.716202, 19.059397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.535494, 31.677952, 19.295959>,  <31.557545, 31.614201, 19.690231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535494, 31.677952, 19.295959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477918, 0.862539, 0.166195,
		0.876673, 0.480235, 0.028620,
		-0.055127, 0.159376, -0.985677,
		31.518955, 31.725765, 19.000256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813105, 32.310081, 19.558535>,  <31.557545, 31.614201, 19.690231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813105, 32.310081, 19.558535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.579445, 32.228043, 19.244411>,  <31.439249, 32.178818, 19.055939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.579445, 32.228043, 19.244411>,  <31.813105, 32.310081, 19.558535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579445, 32.228043, 19.244411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523970, 0.834213, 0.171883,
		0.619859, 0.511882, -0.594770,
		-0.584149, -0.205098, -0.785306,
		31.404200, 32.166512, 19.008820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502464, 32.844189, 19.338619>,  <31.813105, 32.310081, 19.558535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502464, 32.844189, 19.338619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.233164, 32.607197, 19.161667>,  <31.071583, 32.465000, 19.055494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.233164, 32.607197, 19.161667>,  <31.502464, 32.844189, 19.338619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233164, 32.607197, 19.161667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722530, 0.654267, 0.223349,
		0.157106, 0.470005, -0.868570,
		-0.673251, -0.592478, -0.442382,
		31.031189, 32.429455, 19.028952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103830, 33.290108, 18.887663>,  <31.502464, 32.844189, 19.338619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103830, 33.290108, 18.887663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.885399, 32.971909, 18.992718>,  <30.754339, 32.780991, 19.055752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.885399, 32.971909, 18.992718>,  <31.103830, 33.290108, 18.887663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885399, 32.971909, 18.992718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760281, 0.602266, 0.243411,
		-0.351812, -0.066758, -0.933687,
		-0.546079, -0.795500, 0.262639,
		30.721575, 32.733257, 19.071510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423698, 33.537346, 18.695145>,  <31.103830, 33.290108, 18.887663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423698, 33.537346, 18.695145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.375429, 33.226868, 18.942677>,  <30.346468, 33.040581, 19.091196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.375429, 33.226868, 18.942677>,  <30.423698, 33.537346, 18.695145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375429, 33.226868, 18.942677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866212, 0.386832, 0.316288,
		-0.484886, -0.497871, -0.719034,
		-0.120675, -0.776199, 0.618831,
		30.339226, 32.994007, 19.128326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760561, 33.375748, 18.600784>,  <30.423698, 33.537346, 18.695145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760561, 33.375748, 18.600784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.861689, 33.206341, 18.948742>,  <29.922365, 33.104698, 19.157516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.861689, 33.206341, 18.948742>,  <29.760561, 33.375748, 18.600784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861689, 33.206341, 18.948742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813513, 0.393635, 0.428076,
		-0.523717, -0.815897, -0.245016,
		0.252819, -0.423514, 0.869896,
		29.937534, 33.079288, 19.209711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179066, 32.916759, 18.835241>,  <29.760561, 33.375748, 18.600784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179066, 32.916759, 18.835241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.406027, 33.025036, 19.146313>,  <29.542204, 33.090000, 19.332954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.406027, 33.025036, 19.146313>,  <29.179066, 32.916759, 18.835241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406027, 33.025036, 19.146313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803992, 0.386168, 0.452186,
		-0.177912, -0.881817, 0.436745,
		0.567402, 0.270690, 0.777677,
		29.576248, 33.106243, 19.379616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735891, 32.837963, 19.389519>,  <29.179066, 32.916759, 18.835241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735891, 32.837963, 19.389519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.016901, 33.052311, 19.576836>,  <29.185507, 33.180920, 19.689226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.016901, 33.052311, 19.576836>,  <28.735891, 32.837963, 19.389519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016901, 33.052311, 19.576836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693323, 0.366957, 0.620198,
		0.160503, -0.760383, 0.629330,
		0.702525, 0.535873, 0.468293,
		29.227659, 33.213074, 19.717323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346800, 32.958218, 19.879324>,  <28.735891, 32.837963, 19.389519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346800, 32.958218, 19.879324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.646231, 33.211487, 19.958035>,  <28.825890, 33.363449, 20.005260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.646231, 33.211487, 19.958035>,  <28.346800, 32.958218, 19.879324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646231, 33.211487, 19.958035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548367, 0.424381, 0.720552,
		0.372724, -0.647297, 0.664893,
		0.748579, 0.633172, 0.196779,
		28.870804, 33.401440, 20.017067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660227, 32.463345, 19.845686>,  <28.346800, 32.958218, 19.879324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660227, 32.463345, 19.845686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.508158, 32.707706, 19.567905>,  <27.416916, 32.854324, 19.401237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.508158, 32.707706, 19.567905>,  <27.660227, 32.463345, 19.845686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508158, 32.707706, 19.567905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420589, -0.554522, -0.718060,
		-0.823755, -0.565066, -0.046126,
		-0.380174, 0.610906, -0.694451,
		27.394106, 32.890980, 19.359570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142324, 32.147320, 19.526333>,  <27.660227, 32.463345, 19.845686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142324, 32.147320, 19.526333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.228985, 32.424648, 19.251415>,  <27.280981, 32.591045, 19.086464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.228985, 32.424648, 19.251415>,  <27.142324, 32.147320, 19.526333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228985, 32.424648, 19.251415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197929, -0.720588, -0.664512,
		-0.955974, 0.007932, -0.293345,
		0.216652, 0.693318, -0.687294,
		27.293980, 32.632645, 19.045227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831339, 31.889496, 18.981554>,  <27.142324, 32.147320, 19.526333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831339, 31.889496, 18.981554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.109020, 32.140682, 18.840847>,  <27.275629, 32.291393, 18.756422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.109020, 32.140682, 18.840847>,  <26.831339, 31.889496, 18.981554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109020, 32.140682, 18.840847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299504, -0.696415, -0.652153,
		-0.654506, 0.347372, -0.671532,
		0.694204, 0.627964, -0.351769,
		27.317282, 32.329071, 18.735317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747768, 31.960342, 18.257103>,  <26.831339, 31.889496, 18.981554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747768, 31.960342, 18.257103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.125641, 32.066353, 18.334393>,  <27.352365, 32.129959, 18.380766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.125641, 32.066353, 18.334393>,  <26.747768, 31.960342, 18.257103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125641, 32.066353, 18.334393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326187, -0.697517, -0.638022,
		-0.034315, 0.665755, -0.745381,
		0.944682, 0.265027, 0.193225,
		27.409046, 32.145863, 18.392361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053797, 32.029194, 17.641943>,  <26.747768, 31.960342, 18.257103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053797, 32.029194, 17.641943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.362850, 32.001793, 17.894402>,  <27.548283, 31.985352, 18.045876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.362850, 32.001793, 17.894402>,  <27.053797, 32.029194, 17.641943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362850, 32.001793, 17.894402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519735, -0.502656, -0.690806,
		0.364572, 0.861768, -0.352765,
		0.772634, -0.068504, 0.631145,
		27.594641, 31.981241, 18.083744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646864, 32.117809, 17.291430>,  <27.053797, 32.029194, 17.641943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646864, 32.117809, 17.291430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.794268, 31.941994, 17.619091>,  <27.882710, 31.836504, 17.815687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.794268, 31.941994, 17.619091>,  <27.646864, 32.117809, 17.291430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794268, 31.941994, 17.619091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590767, -0.569630, -0.571416,
		0.717772, 0.694499, 0.049750,
		0.368508, -0.439537, 0.819151,
		27.904819, 31.810133, 17.864836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341545, 31.948931, 17.193615>,  <27.646864, 32.117809, 17.291430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341545, 31.948931, 17.193615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.205742, 31.699368, 17.475174>,  <28.124260, 31.549629, 17.644110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.205742, 31.699368, 17.475174>,  <28.341545, 31.948931, 17.193615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205742, 31.699368, 17.475174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596920, -0.721257, -0.351389,
		0.726927, 0.300872, 0.617295,
		-0.339506, -0.623910, 0.703898,
		28.103889, 31.512194, 17.686344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907398, 31.695253, 17.590679>,  <28.341545, 31.948931, 17.193615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907398, 31.695253, 17.590679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.607931, 31.433086, 17.630516>,  <28.428249, 31.275785, 17.654417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.607931, 31.433086, 17.630516>,  <28.907398, 31.695253, 17.590679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607931, 31.433086, 17.630516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640125, -0.753772, -0.148553,
		0.172433, -0.047467, 0.983877,
		-0.748670, -0.655420, 0.099590,
		28.383329, 31.236460, 17.660393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169294, 31.120735, 17.886621>,  <28.907398, 31.695253, 17.590679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169294, 31.120735, 17.886621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.854994, 30.912884, 17.752407>,  <28.666414, 30.788174, 17.671879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.854994, 30.912884, 17.752407>,  <29.169294, 31.120735, 17.886621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854994, 30.912884, 17.752407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581046, -0.806079, -0.112352,
		-0.212085, -0.283241, 0.935304,
		-0.785752, -0.519626, -0.335533,
		28.619268, 30.756996, 17.651747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268206, 30.568850, 18.084066>,  <29.169294, 31.120735, 17.886621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268206, 30.568850, 18.084066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.007517, 30.459507, 17.801071>,  <28.851105, 30.393902, 17.631275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.007517, 30.459507, 17.801071>,  <29.268206, 30.568850, 18.084066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007517, 30.459507, 17.801071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609724, -0.743621, -0.274345,
		-0.451108, -0.610167, 0.651305,
		-0.651720, -0.273357, -0.707487,
		28.812000, 30.377501, 17.588825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200617, 29.836292, 18.076963>,  <29.268206, 30.568850, 18.084066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200617, 29.836292, 18.076963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.052692, 29.927364, 17.716652>,  <28.963938, 29.982008, 17.500465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.052692, 29.927364, 17.716652>,  <29.200617, 29.836292, 18.076963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052692, 29.927364, 17.716652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556201, -0.722344, -0.410926,
		-0.744231, -0.652979, 0.140496,
		-0.369812, 0.227679, -0.900778,
		28.941748, 29.995668, 17.446419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849955, 29.213926, 17.877235>,  <29.200617, 29.836292, 18.076963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849955, 29.213926, 17.877235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.979170, 29.452705, 17.583488>,  <29.056700, 29.595974, 17.407240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.979170, 29.452705, 17.583488>,  <28.849955, 29.213926, 17.877235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979170, 29.452705, 17.583488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595023, -0.731525, -0.332895,
		-0.735930, -0.329428, -0.591510,
		0.323040, 0.596949, -0.734369,
		29.076082, 29.631790, 17.363178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824409, 28.811527, 17.367517>,  <28.849955, 29.213926, 17.877235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824409, 28.811527, 17.367517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.055454, 29.104652, 17.223656>,  <29.194080, 29.280527, 17.137339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.055454, 29.104652, 17.223656>,  <28.824409, 28.811527, 17.367517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055454, 29.104652, 17.223656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553233, -0.675389, -0.487630,
		-0.600249, 0.082687, -0.795528,
		0.577611, 0.732811, -0.359656,
		29.228737, 29.324495, 17.115759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831762, 28.633005, 16.762789>,  <28.824409, 28.811527, 17.367517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831762, 28.633005, 16.762789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.139162, 28.886166, 16.800404>,  <29.323603, 29.038063, 16.822973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.139162, 28.886166, 16.800404>,  <28.831762, 28.633005, 16.762789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139162, 28.886166, 16.800404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631489, -0.726538, -0.270857,
		-0.103103, 0.267538, -0.958015,
		0.768499, 0.632902, 0.094039,
		29.369713, 29.076036, 16.828615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105947, 28.649952, 16.098537>,  <28.831762, 28.633005, 16.762789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105947, 28.649952, 16.098537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.396973, 28.775517, 16.342541>,  <29.571589, 28.850855, 16.488943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.396973, 28.775517, 16.342541>,  <29.105947, 28.649952, 16.098537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396973, 28.775517, 16.342541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610334, -0.702213, -0.366593,
		0.313280, 0.639029, -0.702494,
		0.727564, 0.313909, 0.610010,
		29.615242, 28.869690, 16.525543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691563, 28.660725, 15.713736>,  <29.105947, 28.649952, 16.098537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691563, 28.660725, 15.713736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.844822, 28.654442, 16.083157>,  <29.936777, 28.650671, 16.304810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.844822, 28.654442, 16.083157>,  <29.691563, 28.660725, 15.713736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844822, 28.654442, 16.083157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639970, -0.716470, -0.277687,
		0.666059, 0.697441, -0.264462,
		0.383150, -0.015708, 0.923553,
		29.959766, 28.649729, 16.360222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574575, 28.689087, 15.691438>,  <29.691563, 28.660725, 15.713736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574575, 28.689087, 15.691438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.425987, 28.503380, 16.013050>,  <30.336834, 28.391956, 16.206018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.425987, 28.503380, 16.013050>,  <30.574575, 28.689087, 15.691438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425987, 28.503380, 16.013050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546094, -0.809615, -0.215187,
		0.750859, 0.359141, 0.554282,
		-0.371472, -0.464265, 0.804031,
		30.314545, 28.364100, 16.254259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.169222, 28.276361, 15.999262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846668, 28.132912, 16.187363>,  <30.653137, 28.046843, 16.300222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846668, 28.132912, 16.187363>,  <31.169222, 28.276361, 15.999262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846668, 28.132912, 16.187363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377621, -0.924188, -0.057265,
		0.455138, 0.131399, 0.880672,
		-0.806382, -0.358624, 0.470252,
		30.604753, 28.025324, 16.328438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471991, 27.685072, 16.415714>,  <31.169222, 28.276361, 15.999262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471991, 27.685072, 16.415714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076256, 27.626816, 16.416512>,  <30.838816, 27.591862, 16.416990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076256, 27.626816, 16.416512>,  <31.471991, 27.685072, 16.415714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076256, 27.626816, 16.416512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144894, -0.985467, -0.088663,
		0.014877, -0.087429, 0.996060,
		-0.989335, -0.145642, 0.001993,
		30.779455, 27.583122, 16.417109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344559, 27.225992, 17.059103>,  <31.471991, 27.685072, 16.415714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344559, 27.225992, 17.059103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.054531, 27.191296, 16.785828>,  <30.880514, 27.170477, 16.621862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.054531, 27.191296, 16.785828>,  <31.344559, 27.225992, 17.059103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054531, 27.191296, 16.785828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190131, -0.978693, -0.077526,
		-0.661908, -0.186107, 0.726114,
		-0.725071, -0.086742, -0.683190,
		30.837009, 27.165274, 16.580872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916248, 26.712870, 17.340338>,  <31.344559, 27.225992, 17.059103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916248, 26.712870, 17.340338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847815, 26.723282, 16.946373>,  <30.806755, 26.729528, 16.709993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847815, 26.723282, 16.946373>,  <30.916248, 26.712870, 17.340338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847815, 26.723282, 16.946373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280293, -0.957059, -0.073980,
		-0.944546, -0.288722, 0.156442,
		-0.171084, 0.026028, -0.984913,
		30.796490, 26.731091, 16.650900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624517, 26.109381, 17.206295>,  <30.916248, 26.712870, 17.340338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624517, 26.109381, 17.206295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.748890, 26.200535, 16.837212>,  <30.823513, 26.255228, 16.615763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.748890, 26.200535, 16.837212>,  <30.624517, 26.109381, 17.206295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748890, 26.200535, 16.837212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139615, -0.971249, -0.192829,
		-0.940121, -0.068867, -0.333810,
		0.310933, 0.227887, -0.922707,
		30.842171, 26.268902, 16.560400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304083, 25.676443, 16.799307>,  <30.624517, 26.109381, 17.206295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304083, 25.676443, 16.799307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639193, 25.791466, 16.613644>,  <30.840260, 25.860479, 16.502247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639193, 25.791466, 16.613644>,  <30.304083, 25.676443, 16.799307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639193, 25.791466, 16.613644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233536, -0.957115, -0.171439,
		-0.493550, 0.035231, -0.869004,
		0.837776, 0.287557, -0.464157,
		30.890526, 25.877733, 16.474396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321621, 25.216059, 16.211876>,  <30.304083, 25.676443, 16.799307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321621, 25.216059, 16.211876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.692583, 25.354851, 16.267765>,  <30.915161, 25.438126, 16.301298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.692583, 25.354851, 16.267765>,  <30.321621, 25.216059, 16.211876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692583, 25.354851, 16.267765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364323, -0.922548, -0.127179,
		0.084774, 0.168852, -0.981989,
		0.927406, 0.346980, 0.139724,
		30.970804, 25.458944, 16.309683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658092, 24.935329, 15.658834>,  <30.321621, 25.216059, 16.211876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658092, 24.935329, 15.658834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959890, 25.037415, 15.900695>,  <31.140968, 25.098665, 16.045813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959890, 25.037415, 15.900695>,  <30.658092, 24.935329, 15.658834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959890, 25.037415, 15.900695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510334, -0.807429, -0.296003,
		0.412672, 0.531908, -0.739442,
		0.754493, 0.255211, 0.604654,
		31.186239, 25.113977, 16.082090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267891, 24.824398, 15.301951>,  <30.658092, 24.935329, 15.658834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267891, 24.824398, 15.301951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.367405, 24.837852, 15.689141>,  <31.427114, 24.845924, 15.921455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.367405, 24.837852, 15.689141>,  <31.267891, 24.824398, 15.301951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367405, 24.837852, 15.689141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656818, -0.740348, -0.143088,
		0.711825, 0.671382, -0.206280,
		0.248786, 0.033635, 0.967974,
		31.442041, 24.847942, 15.979533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001434, 24.722551, 15.398655>,  <31.267891, 24.824398, 15.301951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001434, 24.722551, 15.398655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834024, 24.583588, 15.734309>,  <31.733580, 24.500210, 15.935701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834024, 24.583588, 15.734309>,  <32.001434, 24.722551, 15.398655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834024, 24.583588, 15.734309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510491, -0.854163, -0.099022,
		0.751159, 0.386928, 0.534834,
		-0.418521, -0.347409, 0.839135,
		31.708467, 24.479364, 15.986050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506626, 24.360699, 15.572724>,  <32.001434, 24.722551, 15.398655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506626, 24.360699, 15.572724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203751, 24.242004, 15.805484>,  <32.022026, 24.170788, 15.945140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203751, 24.242004, 15.805484>,  <32.506626, 24.360699, 15.572724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203751, 24.242004, 15.805484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303510, -0.948678, -0.088830,
		0.578395, 0.109352, 0.808395,
		-0.757193, -0.296735, 0.581900,
		31.976593, 24.152985, 15.980054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738663, 23.895767, 16.024963>,  <32.506626, 24.360699, 15.572724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738663, 23.895767, 16.024963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.345688, 23.825069, 16.001030>,  <32.109901, 23.782652, 15.986670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.345688, 23.825069, 16.001030>,  <32.738663, 23.895767, 16.024963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345688, 23.825069, 16.001030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185385, -0.960987, -0.205271,
		-0.021218, -0.212758, 0.976874,
		-0.982437, -0.176742, -0.059832,
		32.050957, 23.772047, 15.983080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698872, 23.269817, 16.147060>,  <32.738663, 23.895767, 16.024963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698872, 23.269817, 16.147060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.318584, 23.297867, 16.026257>,  <32.090412, 23.314695, 15.953774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.318584, 23.297867, 16.026257>,  <32.698872, 23.269817, 16.147060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318584, 23.297867, 16.026257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023219, -0.987456, -0.156177,
		-0.309173, -0.141468, 0.940425,
		-0.950722, 0.070122, -0.302010,
		32.033367, 23.318903, 15.935654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290951, 22.852633, 16.571501>,  <32.698872, 23.269817, 16.147060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290951, 22.852633, 16.571501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.115635, 22.882736, 16.213230>,  <32.010445, 22.900799, 15.998268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.115635, 22.882736, 16.213230>,  <32.290951, 22.852633, 16.571501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115635, 22.882736, 16.213230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146518, -0.989142, -0.011414,
		-0.886809, 0.126230, 0.444561,
		-0.438294, 0.075259, -0.895676,
		31.984146, 22.905313, 15.944528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676235, 22.678589, 16.565809>,  <32.290951, 22.852633, 16.571501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676235, 22.678589, 16.565809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.702530, 22.595932, 16.175327>,  <31.718307, 22.546339, 15.941038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.702530, 22.595932, 16.175327>,  <31.676235, 22.678589, 16.565809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702530, 22.595932, 16.175327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066548, -0.977052, 0.202339,
		-0.995615, 0.051663, -0.077980,
		0.065737, -0.206641, -0.976206,
		31.722250, 22.533939, 15.882465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067080, 22.249088, 16.393141>,  <31.676235, 22.678589, 16.565809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067080, 22.249088, 16.393141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344559, 22.185764, 16.112080>,  <31.511045, 22.147770, 15.943442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344559, 22.185764, 16.112080>,  <31.067080, 22.249088, 16.393141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344559, 22.185764, 16.112080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032787, -0.967595, 0.250370,
		-0.719520, -0.196719, -0.666027,
		0.693697, -0.158309, -0.702654,
		31.552668, 22.138271, 15.901283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784372, 21.750172, 16.017334>,  <31.067080, 22.249088, 16.393141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784372, 21.750172, 16.017334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.171740, 21.733715, 15.918969>,  <31.404160, 21.723841, 15.859950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.171740, 21.733715, 15.918969>,  <30.784372, 21.750172, 16.017334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171740, 21.733715, 15.918969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070793, -0.991072, -0.112984,
		-0.239069, 0.126825, -0.962685,
		0.968418, -0.041140, -0.245913,
		31.462265, 21.721373, 15.845196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869837, 21.284008, 15.412290>,  <30.784372, 21.750172, 16.017334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869837, 21.284008, 15.412290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.234436, 21.320610, 15.572690>,  <31.453196, 21.342571, 15.668930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.234436, 21.320610, 15.572690>,  <30.869837, 21.284008, 15.412290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234436, 21.320610, 15.572690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060899, -0.994218, 0.088443,
		0.406776, -0.056195, -0.911798,
		0.911496, 0.091504, 0.401002,
		31.507885, 21.348061, 15.692990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368015, 20.930050, 14.959835>,  <30.869837, 21.284008, 15.412290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368015, 20.930050, 14.959835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520338, 20.955524, 15.328818>,  <31.611732, 20.970808, 15.550208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520338, 20.955524, 15.328818>,  <31.368015, 20.930050, 14.959835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520338, 20.955524, 15.328818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147737, -0.989000, 0.007289,
		0.912775, 0.133506, -0.386029,
		0.380809, 0.063684, 0.922458,
		31.634581, 20.974630, 15.605556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574478, 20.268433, 15.124992>,  <31.368015, 20.930050, 14.959835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574478, 20.268433, 15.124992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653839, 20.397968, 15.495023>,  <31.701456, 20.475689, 15.717041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653839, 20.397968, 15.495023>,  <31.574478, 20.268433, 15.124992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653839, 20.397968, 15.495023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140335, -0.943499, 0.300192,
		0.970022, 0.070263, -0.232637,
		0.198400, 0.323840, 0.925076,
		31.713360, 20.495121, 15.772546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182339, 19.974485, 15.392979>,  <31.574478, 20.268433, 15.124992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182339, 19.974485, 15.392979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.950861, 20.051235, 15.710040>,  <31.811975, 20.097284, 15.900277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.950861, 20.051235, 15.710040>,  <32.182339, 19.974485, 15.392979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950861, 20.051235, 15.710040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301277, -0.852884, 0.426406,
		0.757857, 0.485566, 0.435751,
		-0.578693, 0.191873, 0.792653,
		31.777252, 20.108797, 15.947836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565693, 19.769054, 16.046288>,  <32.182339, 19.974485, 15.392979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565693, 19.769054, 16.046288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.191818, 19.788311, 16.187172>,  <31.967495, 19.799866, 16.271702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.191818, 19.788311, 16.187172>,  <32.565693, 19.769054, 16.046288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191818, 19.788311, 16.187172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110236, -0.902692, 0.415927,
		0.337961, 0.427585, 0.838423,
		-0.934682, 0.048142, 0.352210,
		31.911413, 19.802753, 16.292835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603188, 19.793409, 16.865135>,  <32.565693, 19.769054, 16.046288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603188, 19.793409, 16.865135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.296997, 19.635353, 16.661995>,  <32.113285, 19.540520, 16.540112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.296997, 19.635353, 16.661995>,  <32.603188, 19.793409, 16.865135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296997, 19.635353, 16.661995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284550, -0.915747, 0.283617,
		-0.577132, 0.072592, 0.813418,
		-0.765474, -0.395143, -0.507851,
		32.067356, 19.516809, 16.509640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506783, 19.290871, 17.402538>,  <32.603188, 19.793409, 16.865135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506783, 19.290871, 17.402538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.162582, 19.243198, 17.600662>,  <31.956062, 19.214596, 17.719536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.162582, 19.243198, 17.600662>,  <32.506783, 19.290871, 17.402538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162582, 19.243198, 17.600662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466146, -0.208040, -0.859899,
		0.205527, -0.970832, 0.123463,
		-0.860503, -0.119181, 0.495308,
		31.904430, 19.207445, 17.749254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799786, 18.814688, 17.786266>,  <32.506783, 19.290871, 17.402538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799786, 18.814688, 17.786266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.186699, 18.755836, 17.868931>,  <33.418846, 18.720526, 17.918530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.186699, 18.755836, 17.868931>,  <32.799786, 18.814688, 17.786266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186699, 18.755836, 17.868931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062050, 0.927110, 0.369616,
		-0.245981, -0.344702, 0.905911,
		0.967287, -0.147130, 0.206662,
		33.476887, 18.711697, 17.930929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895294, 19.198624, 18.403902>,  <32.799786, 18.814688, 17.786266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895294, 19.198624, 18.403902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266537, 19.149208, 18.263416>,  <33.489285, 19.119558, 18.179125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266537, 19.149208, 18.263416>,  <32.895294, 19.198624, 18.403902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266537, 19.149208, 18.263416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178397, 0.975562, 0.128271,
		0.326783, -0.181705, 0.927468,
		0.928109, -0.123541, -0.351213,
		33.544968, 19.112146, 18.158052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346352, 19.566280, 18.885855>,  <32.895294, 19.198624, 18.403902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346352, 19.566280, 18.885855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526951, 19.527191, 18.531094>,  <33.635311, 19.503738, 18.318237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526951, 19.527191, 18.531094>,  <33.346352, 19.566280, 18.885855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526951, 19.527191, 18.531094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209181, 0.977876, -0.001258,
		0.867405, -0.184956, 0.461951,
		0.451498, -0.097723, -0.886905,
		33.662399, 19.497875, 18.265022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912525, 19.956732, 19.010214>,  <33.346352, 19.566280, 18.885855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912525, 19.956732, 19.010214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914867, 19.947639, 18.610325>,  <33.916271, 19.942184, 18.370392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914867, 19.947639, 18.610325>,  <33.912525, 19.956732, 19.010214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914867, 19.947639, 18.610325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363769, 0.931294, -0.019046,
		0.931471, -0.363558, 0.013716,
		0.005849, -0.022731, -0.999725,
		33.916622, 19.940821, 18.310408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560562, 20.269264, 18.760111>,  <33.912525, 19.956732, 19.010214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560562, 20.269264, 18.760111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311272, 20.264992, 18.447323>,  <34.161697, 20.262428, 18.259649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311272, 20.264992, 18.447323>,  <34.560562, 20.269264, 18.760111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311272, 20.264992, 18.447323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199315, 0.964717, -0.172030,
		0.756218, -0.263071, -0.599106,
		-0.623224, -0.010681, -0.781970,
		34.124306, 20.261787, 18.212732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856644, 20.632074, 18.221449>,  <34.560562, 20.269264, 18.760111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856644, 20.632074, 18.221449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459499, 20.659168, 18.182167>,  <34.221214, 20.675425, 18.158598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459499, 20.659168, 18.182167>,  <34.856644, 20.632074, 18.221449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459499, 20.659168, 18.182167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071884, 0.996637, -0.039340,
		0.095210, -0.046119, -0.994388,
		-0.992858, 0.067735, -0.098205,
		34.161640, 20.679489, 18.152706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752796, 21.286226, 17.881262>,  <34.856644, 20.632074, 18.221449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752796, 21.286226, 17.881262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.376331, 21.227093, 18.002823>,  <34.150452, 21.191612, 18.075760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.376331, 21.227093, 18.002823>,  <34.752796, 21.286226, 17.881262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376331, 21.227093, 18.002823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159965, 0.987005, -0.015273,
		-0.297695, -0.062987, -0.952581,
		-0.941164, -0.147833, 0.303902,
		34.093983, 21.182743, 18.093994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311127, 21.660290, 17.444401>,  <34.752796, 21.286226, 17.881262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311127, 21.660290, 17.444401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077579, 21.605896, 17.764553>,  <33.937450, 21.573259, 17.956644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077579, 21.605896, 17.764553>,  <34.311127, 21.660290, 17.444401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077579, 21.605896, 17.764553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235147, 0.971939, -0.006403,
		-0.777051, -0.191946, -0.599457,
		-0.583865, -0.135985, 0.800381,
		33.902420, 21.565100, 18.004667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674068, 21.958023, 17.224594>,  <34.311127, 21.660290, 17.444401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674068, 21.958023, 17.224594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652016, 21.946842, 17.623829>,  <33.638786, 21.940134, 17.863371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652016, 21.946842, 17.623829>,  <33.674068, 21.958023, 17.224594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652016, 21.946842, 17.623829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280293, 0.959847, 0.011401,
		-0.958330, -0.279128, -0.060751,
		-0.055129, -0.027954, 0.998088,
		33.635475, 21.938456, 17.923256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058720, 22.320127, 17.377337>,  <33.674068, 21.958023, 17.224594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058720, 22.320127, 17.377337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253143, 22.331589, 17.726719>,  <33.369797, 22.338465, 17.936348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253143, 22.331589, 17.726719>,  <33.058720, 22.320127, 17.377337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253143, 22.331589, 17.726719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113485, 0.993069, 0.030575,
		-0.866527, -0.113985, 0.485940,
		0.486057, 0.028653, 0.873457,
		33.398960, 22.340185, 17.988756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616608, 22.717901, 17.873810>,  <33.058720, 22.320127, 17.377337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616608, 22.717901, 17.873810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991257, 22.737091, 18.012630>,  <33.216045, 22.748604, 18.095922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991257, 22.737091, 18.012630>,  <32.616608, 22.717901, 17.873810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991257, 22.737091, 18.012630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081230, 0.993323, 0.081917,
		-0.340804, -0.104916, 0.934262,
		0.936619, 0.047972, 0.347051,
		33.272243, 22.751482, 18.116745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547340, 23.125559, 18.407457>,  <32.616608, 22.717901, 17.873810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547340, 23.125559, 18.407457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929714, 23.166401, 18.297352>,  <33.159138, 23.190907, 18.231289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929714, 23.166401, 18.297352>,  <32.547340, 23.125559, 18.407457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929714, 23.166401, 18.297352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160035, 0.967259, -0.196972,
		0.246139, 0.232344, 0.940974,
		0.955931, 0.102107, -0.275263,
		33.216492, 23.197033, 18.214773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798763, 23.632490, 18.768101>,  <32.547340, 23.125559, 18.407457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798763, 23.632490, 18.768101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066875, 23.638073, 18.471310>,  <33.227741, 23.641422, 18.293236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066875, 23.638073, 18.471310>,  <32.798763, 23.632490, 18.768101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066875, 23.638073, 18.471310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056584, 0.997874, -0.032345,
		0.739949, 0.063664, 0.669643,
		0.670279, 0.013957, -0.741978,
		33.267960, 23.642260, 18.248716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205742, 24.106873, 18.871487>,  <32.798763, 23.632490, 18.768101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205742, 24.106873, 18.871487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.271076, 24.067001, 18.478878>,  <33.310276, 24.043079, 18.243313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.271076, 24.067001, 18.478878>,  <33.205742, 24.106873, 18.871487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271076, 24.067001, 18.478878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053621, 0.994309, -0.092053,
		0.985112, -0.037595, 0.167751,
		0.163336, -0.099677, -0.981522,
		33.320076, 24.037098, 18.184422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663795, 24.665611, 18.736683>,  <33.205742, 24.106873, 18.871487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663795, 24.665611, 18.736683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.523060, 24.547516, 18.381371>,  <33.438618, 24.476658, 18.168182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.523060, 24.547516, 18.381371>,  <33.663795, 24.665611, 18.736683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523060, 24.547516, 18.381371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008938, 0.947854, -0.318578,
		0.936019, -0.120027, -0.330850,
		-0.351836, -0.295238, -0.888283,
		33.417507, 24.458944, 18.114885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063713, 24.965122, 18.208466>,  <33.663795, 24.665611, 18.736683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063713, 24.965122, 18.208466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759151, 24.899120, 17.957695>,  <33.576416, 24.859518, 17.807234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759151, 24.899120, 17.957695>,  <34.063713, 24.965122, 18.208466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759151, 24.899120, 17.957695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066815, 0.941941, -0.329065,
		0.644824, -0.292440, -0.706174,
		-0.761405, -0.165006, -0.626925,
		33.530731, 24.849619, 17.769617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264057, 25.241529, 17.565151>,  <34.063713, 24.965122, 18.208466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264057, 25.241529, 17.565151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864597, 25.233662, 17.584354>,  <33.624920, 25.228941, 17.595877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864597, 25.233662, 17.584354>,  <34.264057, 25.241529, 17.565151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864597, 25.233662, 17.584354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032702, 0.957032, -0.288132,
		-0.040280, -0.289314, -0.956387,
		-0.998653, -0.019670, 0.048010,
		33.565002, 25.227760, 17.598757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038876, 25.593914, 17.044895>,  <34.264057, 25.241529, 17.565151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038876, 25.593914, 17.044895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.704296, 25.598427, 17.264065>,  <33.503548, 25.601135, 17.395567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.704296, 25.598427, 17.264065>,  <34.038876, 25.593914, 17.044895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704296, 25.598427, 17.264065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094591, 0.981811, -0.164618,
		-0.539814, -0.189524, -0.820172,
		-0.836453, 0.011282, 0.547922,
		33.453362, 25.601812, 17.428442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534111, 25.938229, 16.641647>,  <34.038876, 25.593914, 17.044895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534111, 25.938229, 16.641647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.398880, 25.956512, 17.017651>,  <33.317741, 25.967484, 17.243252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.398880, 25.956512, 17.017651>,  <33.534111, 25.938229, 16.641647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398880, 25.956512, 17.017651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369472, 0.912182, -0.177239,
		-0.865561, -0.407227, -0.291497,
		-0.338075, 0.045711, 0.940008,
		33.297459, 25.970226, 17.299654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826443, 26.199467, 16.723261>,  <33.534111, 25.938229, 16.641647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826443, 26.199467, 16.723261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965061, 26.275570, 17.090675>,  <33.048233, 26.321232, 17.311125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965061, 26.275570, 17.090675>,  <32.826443, 26.199467, 16.723261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965061, 26.275570, 17.090675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142009, 0.978570, -0.149114,
		-0.927222, -0.078766, 0.366135,
		0.346543, 0.190256, 0.918537,
		33.069023, 26.332647, 17.366236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.534546, 35.794033, 15.198390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.746132, 35.555660, 14.956708>,  <16.873083, 35.412636, 14.811699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.746132, 35.555660, 14.956708>,  <16.534546, 35.794033, 15.198390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746132, 35.555660, 14.956708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581271, -0.264319, 0.769584,
		-0.618320, -0.758291, 0.206580,
		0.528965, -0.595928, -0.604206,
		16.904821, 35.376881, 14.775446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.416039, 35.179470, 15.522272>,  <16.534546, 35.794033, 15.198390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.416039, 35.179470, 15.522272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.745565, 35.169159, 15.295764>,  <16.943281, 35.162971, 15.159859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.745565, 35.169159, 15.295764>,  <16.416039, 35.179470, 15.522272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.745565, 35.169159, 15.295764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528687, -0.325435, 0.783953,
		-0.204487, -0.945213, -0.254473,
		0.823817, -0.025771, -0.566270,
		16.992710, 35.161427, 15.125883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.676876, 34.571510, 15.647421>,  <16.416039, 35.179470, 15.522272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.676876, 34.571510, 15.647421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.978437, 34.793621, 15.506965>,  <17.159374, 34.926888, 15.422690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.978437, 34.793621, 15.506965>,  <16.676876, 34.571510, 15.647421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.978437, 34.793621, 15.506965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527554, -0.193112, 0.827282,
		0.391561, -0.808935, -0.438526,
		0.753901, 0.555277, -0.351141,
		17.204607, 34.960205, 15.401623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167601, 34.158211, 15.822591>,  <16.676876, 34.571510, 15.647421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.167601, 34.158211, 15.822591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.368944, 34.500340, 15.773503>,  <17.489750, 34.705616, 15.744051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.368944, 34.500340, 15.773503>,  <17.167601, 34.158211, 15.822591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.368944, 34.500340, 15.773503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598555, -0.242719, 0.763426,
		0.623186, -0.457731, -0.634130,
		0.503360, 0.855318, -0.122718,
		17.519953, 34.756935, 15.736688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.927891, 33.978394, 15.876150>,  <17.167601, 34.158211, 15.822591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.927891, 33.978394, 15.876150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.852045, 34.358940, 15.973264>,  <17.806538, 34.587269, 16.031532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.852045, 34.358940, 15.973264>,  <17.927891, 33.978394, 15.876150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852045, 34.358940, 15.973264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544959, -0.103713, 0.832024,
		0.816741, 0.290070, -0.498792,
		-0.189613, 0.951369, 0.242783,
		17.795160, 34.644352, 16.046099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567102, 34.167206, 16.200548>,  <17.927891, 33.978394, 15.876150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567102, 34.167206, 16.200548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.304209, 34.450722, 16.303047>,  <18.146473, 34.620831, 16.364546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.304209, 34.450722, 16.303047>,  <18.567102, 34.167206, 16.200548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.304209, 34.450722, 16.303047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491637, 0.145482, 0.858562,
		0.571260, 0.690256, -0.444082,
		-0.657233, 0.708789, 0.256247,
		18.107038, 34.663357, 16.379921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.989058, 34.615181, 16.525614>,  <18.567102, 34.167206, 16.200548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.989058, 34.615181, 16.525614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.633667, 34.717407, 16.678085>,  <18.420433, 34.778744, 16.769569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.633667, 34.717407, 16.678085>,  <18.989058, 34.615181, 16.525614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.633667, 34.717407, 16.678085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416748, 0.101478, 0.903340,
		0.192178, 0.961452, -0.196665,
		-0.888476, 0.255562, 0.381181,
		18.367125, 34.794075, 16.792440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158422, 35.125381, 16.901402>,  <18.989058, 34.615181, 16.525614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.158422, 35.125381, 16.901402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.811897, 34.981922, 17.040466>,  <18.603981, 34.895847, 17.123905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.811897, 34.981922, 17.040466>,  <19.158422, 35.125381, 16.901402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.811897, 34.981922, 17.040466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394849, -0.065420, 0.916414,
		-0.305930, 0.931176, 0.198287,
		-0.866315, -0.358652, 0.347660,
		18.552002, 34.874325, 17.144764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171814, 35.411808, 17.522715>,  <19.158422, 35.125381, 16.901402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171814, 35.411808, 17.522715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.839926, 35.196140, 17.580494>,  <18.640793, 35.066742, 17.615162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.839926, 35.196140, 17.580494>,  <19.171814, 35.411808, 17.522715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.839926, 35.196140, 17.580494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263408, -0.150054, 0.952943,
		-0.492120, 0.828724, 0.266524,
		-0.829719, -0.539167, 0.144448,
		18.591009, 35.034389, 17.623829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.831945, 35.672161, 18.075336>,  <19.171814, 35.411808, 17.522715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.831945, 35.672161, 18.075336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.705658, 35.293640, 18.047512>,  <18.629887, 35.066528, 18.030817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.705658, 35.293640, 18.047512>,  <18.831945, 35.672161, 18.075336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.705658, 35.293640, 18.047512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235342, -0.149114, 0.960405,
		-0.919204, 0.286847, 0.269783,
		-0.315717, -0.946300, -0.069559,
		18.610943, 35.009750, 18.026644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454264, 35.605671, 18.601553>,  <18.831945, 35.672161, 18.075336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454264, 35.605671, 18.601553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.567299, 35.239815, 18.485912>,  <18.635120, 35.020302, 18.416527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.567299, 35.239815, 18.485912>,  <18.454264, 35.605671, 18.601553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.567299, 35.239815, 18.485912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266146, -0.214795, 0.939697,
		-0.921581, -0.342488, 0.182730,
		0.282586, -0.914640, -0.289103,
		18.652075, 34.965424, 18.399181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222010, 35.132275, 19.115555>,  <18.454264, 35.605671, 18.601553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222010, 35.132275, 19.115555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.524788, 34.963314, 18.916115>,  <18.706455, 34.861938, 18.796450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.524788, 34.963314, 18.916115>,  <18.222010, 35.132275, 19.115555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.524788, 34.963314, 18.916115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474986, -0.168370, 0.863736,
		-0.448796, -0.890632, 0.073190,
		0.756948, -0.422405, -0.498602,
		18.751873, 34.836594, 18.766535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.437548, 34.576633, 19.514492>,  <18.222010, 35.132275, 19.115555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.437548, 34.576633, 19.514492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.757315, 34.645405, 19.284233>,  <18.949175, 34.686668, 19.146078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.757315, 34.645405, 19.284233>,  <18.437548, 34.576633, 19.514492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.757315, 34.645405, 19.284233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598294, -0.140806, 0.788808,
		0.054566, -0.974994, -0.215428,
		0.799417, 0.171931, -0.575650,
		18.997139, 34.696983, 19.111538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.930792, 34.123768, 19.801861>,  <18.437548, 34.576633, 19.514492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.930792, 34.123768, 19.801861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.150583, 34.394531, 19.605957>,  <19.282457, 34.556992, 19.488415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.150583, 34.394531, 19.605957>,  <18.930792, 34.123768, 19.801861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.150583, 34.394531, 19.605957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697784, -0.049391, 0.714603,
		0.459534, -0.734404, -0.499478,
		0.549478, 0.676912, -0.489758,
		19.315426, 34.597607, 19.459030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.597334, 33.944141, 20.029430>,  <18.930792, 34.123768, 19.801861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.597334, 33.944141, 20.029430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.584253, 34.318073, 19.887993>,  <19.576405, 34.542431, 19.803131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.584253, 34.318073, 19.887993>,  <19.597334, 33.944141, 20.029430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584253, 34.318073, 19.887993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524368, 0.317229, 0.790193,
		0.850864, -0.159571, -0.500568,
		-0.032703, 0.934828, -0.353592,
		19.574442, 34.598522, 19.781916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.364403, 34.254677, 20.162483>,  <19.597334, 33.944141, 20.029430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.364403, 34.254677, 20.162483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.119638, 34.567108, 20.112705>,  <19.972780, 34.754566, 20.082838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.119638, 34.567108, 20.112705>,  <20.364403, 34.254677, 20.162483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.119638, 34.567108, 20.112705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595110, 0.558316, 0.578037,
		0.520970, 0.279649, -0.806465,
		-0.611911, 0.781076, -0.124444,
		19.936066, 34.801430, 20.075373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.796629, 34.857029, 20.200964>,  <20.364403, 34.254677, 20.162483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.796629, 34.857029, 20.200964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.443047, 35.030758, 20.270233>,  <20.230898, 35.134995, 20.311794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.443047, 35.030758, 20.270233>,  <20.796629, 34.857029, 20.200964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.443047, 35.030758, 20.270233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429665, 0.608452, 0.667214,
		0.184415, 0.664194, -0.724456,
		-0.883957, 0.434318, 0.173173,
		20.177860, 35.161053, 20.322186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.968287, 35.511303, 20.172306>,  <20.796629, 34.857029, 20.200964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.968287, 35.511303, 20.172306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.611479, 35.524662, 20.352612>,  <20.397394, 35.532677, 20.460794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.611479, 35.524662, 20.352612>,  <20.968287, 35.511303, 20.172306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.611479, 35.524662, 20.352612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271427, 0.837014, 0.475116,
		-0.361427, 0.546162, -0.755697,
		-0.892019, 0.033397, 0.450763,
		20.343874, 35.534679, 20.487841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.814650, 36.330517, 20.309996>,  <20.968287, 35.511303, 20.172306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.814650, 36.330517, 20.309996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.607748, 36.107777, 20.569954>,  <20.483606, 35.974133, 20.725929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.607748, 36.107777, 20.569954>,  <20.814650, 36.330517, 20.309996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.607748, 36.107777, 20.569954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285098, 0.603883, 0.744341,
		-0.806950, 0.570297, -0.153603,
		-0.517253, -0.556854, 0.649894,
		20.452572, 35.940720, 20.764921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.509453, 36.765320, 20.944311>,  <20.814650, 36.330517, 20.309996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.509453, 36.765320, 20.944311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.558054, 36.382957, 21.051262>,  <20.587215, 36.153542, 21.115433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.558054, 36.382957, 21.051262>,  <20.509453, 36.765320, 20.944311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.558054, 36.382957, 21.051262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583927, 0.286665, 0.759508,
		-0.802662, 0.063845, 0.593007,
		0.121503, -0.955901, 0.267376,
		20.594505, 36.096188, 21.131475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.332506, 36.723797, 21.769899>,  <20.509453, 36.765320, 20.944311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.332506, 36.723797, 21.769899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.550234, 36.402485, 21.673183>,  <20.680870, 36.209698, 21.615154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.550234, 36.402485, 21.673183>,  <20.332506, 36.723797, 21.769899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.550234, 36.402485, 21.673183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573565, 0.146041, 0.806037,
		-0.612161, -0.577422, 0.540225,
		0.544319, -0.803278, -0.241789,
		20.713530, 36.161503, 21.600647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811012, 36.985546, 21.240551>,  <20.332506, 36.723797, 21.769899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811012, 36.985546, 21.240551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.723217, 37.371624, 21.183678>,  <19.670540, 37.603271, 21.149553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.723217, 37.371624, 21.183678>,  <19.811012, 36.985546, 21.240551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.723217, 37.371624, 21.183678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138174, -0.175022, -0.974820,
		-0.965781, -0.194314, 0.171780,
		-0.219486, 0.965199, -0.142184,
		19.657372, 37.661182, 21.141022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.137360, 37.037838, 20.903393>,  <19.811012, 36.985546, 21.240551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.137360, 37.037838, 20.903393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.308624, 37.384754, 20.801811>,  <19.411383, 37.592903, 20.740862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.308624, 37.384754, 20.801811>,  <19.137360, 37.037838, 20.903393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.308624, 37.384754, 20.801811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354604, -0.097240, -0.929947,
		-0.831225, 0.488219, 0.265909,
		0.428160, 0.867287, -0.253953,
		19.437073, 37.644939, 20.725626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.634657, 37.411854, 20.756195>,  <19.137360, 37.037838, 20.903393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.634657, 37.411854, 20.756195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.932428, 37.588730, 20.556076>,  <19.111092, 37.694855, 20.436005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.932428, 37.588730, 20.556076>,  <18.634657, 37.411854, 20.756195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.932428, 37.588730, 20.556076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491751, -0.143769, -0.858785,
		-0.451671, 0.885325, 0.110420,
		0.744429, 0.442188, -0.500296,
		19.155758, 37.721386, 20.405987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.270821, 37.932659, 20.414490>,  <18.634657, 37.411854, 20.756195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.270821, 37.932659, 20.414490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.627388, 37.845184, 20.255718>,  <18.841328, 37.792702, 20.160454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.627388, 37.845184, 20.255718>,  <18.270821, 37.932659, 20.414490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.627388, 37.845184, 20.255718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444485, -0.251094, -0.859875,
		0.088372, 0.942937, -0.321031,
		0.891417, -0.218683, -0.396931,
		18.894814, 37.779579, 20.136639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.269962, 38.291199, 19.846561>,  <18.270821, 37.932659, 20.414490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.269962, 38.291199, 19.846561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.554457, 38.022926, 19.762344>,  <18.725153, 37.861961, 19.711813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.554457, 38.022926, 19.762344>,  <18.269962, 38.291199, 19.846561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.554457, 38.022926, 19.762344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376259, -0.110219, -0.919935,
		0.593779, 0.733509, -0.330743,
		0.711235, -0.670684, -0.210544,
		18.767828, 37.821720, 19.699181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.615894, 38.485954, 19.171806>,  <18.269962, 38.291199, 19.846561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.615894, 38.485954, 19.171806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.670069, 38.094398, 19.233044>,  <18.702574, 37.859467, 19.269787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.670069, 38.094398, 19.233044>,  <18.615894, 38.485954, 19.171806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.670069, 38.094398, 19.233044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311102, -0.188716, -0.931451,
		0.940677, 0.078523, -0.330092,
		0.135434, -0.978887, 0.153093,
		18.710699, 37.800732, 19.278971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.867140, 38.284847, 18.589449>,  <18.615894, 38.485954, 19.171806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.867140, 38.284847, 18.589449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.747093, 37.939983, 18.752720>,  <18.675066, 37.733067, 18.850683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.747093, 37.939983, 18.752720>,  <18.867140, 38.284847, 18.589449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.747093, 37.939983, 18.752720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298149, -0.321684, -0.898681,
		0.906112, -0.391405, -0.160510,
		-0.300114, -0.862161, 0.408178,
		18.657059, 37.681335, 18.875174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.067257, 37.742313, 18.240627>,  <18.867140, 38.284847, 18.589449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.067257, 37.742313, 18.240627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.786375, 37.541775, 18.442841>,  <18.617846, 37.421452, 18.564169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.786375, 37.541775, 18.442841>,  <19.067257, 37.742313, 18.240627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.786375, 37.541775, 18.442841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285768, -0.451876, -0.845071,
		0.652109, -0.737877, 0.174041,
		-0.702204, -0.501343, 0.505534,
		18.575714, 37.391373, 18.594501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.016283, 37.162773, 17.863543>,  <19.067257, 37.742313, 18.240627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.016283, 37.162773, 17.863543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.684120, 37.163563, 18.086403>,  <18.484823, 37.164036, 18.220119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.684120, 37.163563, 18.086403>,  <19.016283, 37.162773, 17.863543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.684120, 37.163563, 18.086403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538741, -0.257818, -0.802053,
		0.142063, -0.966192, 0.215156,
		-0.830408, 0.001971, 0.557153,
		18.434998, 37.164154, 18.253550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.683666, 36.555038, 17.672655>,  <19.016283, 37.162773, 17.863543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.683666, 36.555038, 17.672655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.416460, 36.824440, 17.799240>,  <18.256136, 36.986080, 17.875191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.416460, 36.824440, 17.799240>,  <18.683666, 36.555038, 17.672655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.416460, 36.824440, 17.799240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464442, -0.045073, -0.884456,
		-0.581421, -0.737808, 0.342913,
		-0.668015, 0.673504, 0.316462,
		18.216055, 37.026493, 17.894178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.027514, 36.337521, 17.433201>,  <18.683666, 36.555038, 17.672655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.027514, 36.337521, 17.433201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.998646, 36.732533, 17.489162>,  <17.981325, 36.969540, 17.522739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.998646, 36.732533, 17.489162>,  <18.027514, 36.337521, 17.433201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.998646, 36.732533, 17.489162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523440, 0.081902, -0.848117,
		-0.849001, -0.134440, 0.511002,
		-0.072169, 0.987531, 0.139906,
		17.976995, 37.028793, 17.531134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.707792, 36.438553, 16.852392>,  <18.027514, 36.337521, 17.433201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.707792, 36.438553, 16.852392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.713654, 36.814281, 16.989479>,  <17.717171, 37.039719, 17.071732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.713654, 36.814281, 16.989479>,  <17.707792, 36.438553, 16.852392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713654, 36.814281, 16.989479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527586, 0.298422, -0.795360,
		-0.849375, -0.169159, 0.499947,
		0.014653, 0.939324, 0.342718,
		17.718050, 37.096077, 17.092295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962830, 36.633312, 16.720644>,  <17.707792, 36.438553, 16.852392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962830, 36.633312, 16.720644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.245340, 36.914295, 16.755814>,  <17.414846, 37.082886, 16.776915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.245340, 36.914295, 16.755814>,  <16.962830, 36.633312, 16.720644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245340, 36.914295, 16.755814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423941, 0.519136, -0.742140,
		-0.566965, 0.486881, 0.664452,
		0.706275, 0.702456, 0.087923,
		17.457222, 37.125031, 16.782190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612976, 37.254154, 16.780569>,  <16.962830, 36.633312, 16.720644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.612976, 37.254154, 16.780569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.980026, 37.330135, 16.640926>,  <17.200256, 37.375725, 16.557140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.980026, 37.330135, 16.640926>,  <16.612976, 37.254154, 16.780569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.980026, 37.330135, 16.640926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396306, 0.370963, -0.839838,
		-0.030027, 0.909012, 0.415687,
		0.917627, 0.189957, -0.349108,
		17.255314, 37.387123, 16.536194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.526321, 37.951015, 16.456604>,  <16.612976, 37.254154, 16.780569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.526321, 37.951015, 16.456604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.860231, 37.795174, 16.300987>,  <17.060577, 37.701668, 16.207617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.860231, 37.795174, 16.300987>,  <16.526321, 37.951015, 16.456604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860231, 37.795174, 16.300987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219403, 0.412677, -0.884059,
		0.504985, 0.823348, 0.259012,
		0.834777, -0.389609, -0.389041,
		17.110664, 37.678291, 16.184275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725983, 38.468964, 16.034201>,  <16.526321, 37.951015, 16.456604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725983, 38.468964, 16.034201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.937300, 38.153004, 15.909642>,  <17.064091, 37.963428, 15.834907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.937300, 38.153004, 15.909642>,  <16.725983, 38.468964, 16.034201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.937300, 38.153004, 15.909642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105039, 0.303134, -0.947141,
		0.842539, 0.533078, 0.077173,
		0.528294, -0.789897, -0.311397,
		17.095787, 37.916035, 15.816223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.050907, 38.733170, 15.506733>,  <16.725983, 38.468964, 16.034201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.050907, 38.733170, 15.506733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.045156, 38.336063, 15.459035>,  <17.041706, 38.097801, 15.430416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.045156, 38.336063, 15.459035>,  <17.050907, 38.733170, 15.506733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.045156, 38.336063, 15.459035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281983, 0.118443, -0.952080,
		0.959312, 0.019940, -0.281644,
		-0.014375, -0.992761, -0.119246,
		17.040844, 38.038235, 15.423261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322662, 38.711998, 14.868386>,  <17.050907, 38.733170, 15.506733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.322662, 38.711998, 14.868386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.122364, 38.371777, 14.932645>,  <17.002184, 38.167645, 14.971200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.122364, 38.371777, 14.932645>,  <17.322662, 38.711998, 14.868386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122364, 38.371777, 14.932645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422980, 0.078520, -0.902730,
		0.755208, -0.519990, -0.399087,
		-0.500748, -0.850555, 0.160646,
		16.972139, 38.116611, 14.980839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156895, 38.578365, 14.136001>,  <17.322662, 38.711998, 14.868386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.156895, 38.578365, 14.136001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.934309, 38.326439, 14.352767>,  <16.800756, 38.175282, 14.482827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.934309, 38.326439, 14.352767>,  <17.156895, 38.578365, 14.136001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934309, 38.326439, 14.352767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658604, -0.063274, -0.749825,
		0.506544, -0.774160, -0.379592,
		-0.556466, -0.629820, 0.541916,
		16.767368, 38.137493, 14.515342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978733, 38.151146, 13.653465>,  <17.156895, 38.578365, 14.136001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.978733, 38.151146, 13.653465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.726210, 38.064842, 13.951430>,  <16.574696, 38.013058, 14.130210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.726210, 38.064842, 13.951430>,  <16.978733, 38.151146, 13.653465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726210, 38.064842, 13.951430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714292, -0.212334, -0.666859,
		0.302054, -0.953080, -0.020069,
		-0.631308, -0.215763, 0.744914,
		16.536818, 38.000114, 14.174905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.852911, 37.478966, 13.566051>,  <16.978733, 38.151146, 13.653465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.852911, 37.478966, 13.566051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.542072, 37.637585, 13.761548>,  <16.355570, 37.732758, 13.878846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.542072, 37.637585, 13.761548>,  <16.852911, 37.478966, 13.566051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542072, 37.637585, 13.761548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605377, -0.258529, -0.752783,
		-0.172162, -0.880858, 0.440964,
		-0.777097, 0.396549, 0.488742,
		16.308943, 37.756550, 13.908171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.644495, 30.279823, 16.261988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764093, 30.197548, 16.634716>,  <28.835854, 30.148184, 16.858353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764093, 30.197548, 16.634716>,  <28.644495, 30.279823, 16.261988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764093, 30.197548, 16.634716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749668, 0.553551, 0.362737,
		-0.590422, -0.807015, 0.011314,
		0.298997, -0.205687, 0.931823,
		28.853792, 30.135841, 16.914263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995077, 30.138618, 16.610949>,  <28.644495, 30.279823, 16.261988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995077, 30.138618, 16.610949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232328, 30.201176, 16.926857>,  <28.374680, 30.238710, 17.116402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232328, 30.201176, 16.926857>,  <27.995077, 30.138618, 16.610949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232328, 30.201176, 16.926857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770373, 0.395269, 0.500287,
		-0.233931, -0.905154, 0.354926,
		0.593128, 0.156393, 0.789772,
		28.410267, 30.248095, 17.163788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598621, 30.085924, 17.266739>,  <27.995077, 30.138618, 16.610949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598621, 30.085924, 17.266739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909975, 30.307220, 17.385426>,  <28.096786, 30.439999, 17.456638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909975, 30.307220, 17.385426>,  <27.598621, 30.085924, 17.266739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909975, 30.307220, 17.385426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627473, 0.700569, 0.339824,
		-0.019866, -0.450696, 0.892457,
		0.778385, 0.553241, 0.296717,
		28.143490, 30.473192, 17.474442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390224, 30.461166, 17.947069>,  <27.598621, 30.085924, 17.266739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390224, 30.461166, 17.947069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703569, 30.688255, 17.845848>,  <27.891577, 30.824509, 17.785116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703569, 30.688255, 17.845848>,  <27.390224, 30.461166, 17.947069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703569, 30.688255, 17.845848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441331, 0.794710, 0.416730,
		0.437689, -0.214771, 0.873099,
		0.783362, 0.567723, -0.253051,
		27.938578, 30.858572, 17.769932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753124, 30.680605, 18.624075>,  <27.390224, 30.461166, 17.947069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753124, 30.680605, 18.624075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853363, 30.930744, 18.328468>,  <27.913506, 31.080828, 18.151104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853363, 30.930744, 18.328468>,  <27.753124, 30.680605, 18.624075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853363, 30.930744, 18.328468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090615, 0.775174, 0.625216,
		0.963841, -0.089711, 0.250922,
		0.250597, 0.625346, -0.739015,
		27.928543, 31.118347, 18.106764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152334, 31.216503, 18.966219>,  <27.753124, 30.680605, 18.624075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152334, 31.216503, 18.966219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064655, 31.395737, 18.619537>,  <28.012047, 31.503277, 18.411528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064655, 31.395737, 18.619537>,  <28.152334, 31.216503, 18.966219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064655, 31.395737, 18.619537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064174, 0.879762, 0.471063,
		0.973567, 0.158876, -0.164087,
		-0.219198, 0.448082, -0.866703,
		27.998896, 31.530161, 18.359526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545197, 31.782370, 19.016253>,  <28.152334, 31.216503, 18.966219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545197, 31.782370, 19.016253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266483, 31.845417, 18.736351>,  <28.099257, 31.883245, 18.568411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266483, 31.845417, 18.736351>,  <28.545197, 31.782370, 19.016253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266483, 31.845417, 18.736351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095512, 0.946482, 0.308300,
		0.710896, 0.281653, -0.644437,
		-0.696782, 0.157617, -0.699751,
		28.057449, 31.892702, 18.526426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628368, 32.429329, 18.692284>,  <28.545197, 31.782370, 19.016253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628368, 32.429329, 18.692284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246719, 32.364799, 18.591389>,  <28.017731, 32.326080, 18.530851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246719, 32.364799, 18.591389>,  <28.628368, 32.429329, 18.692284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246719, 32.364799, 18.591389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236913, 0.921909, 0.306522,
		0.183089, 0.352218, -0.917835,
		-0.954123, -0.161326, -0.252236,
		27.960482, 32.316402, 18.515718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333515, 33.089748, 18.441458>,  <28.628368, 32.429329, 18.692284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333515, 33.089748, 18.441458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002459, 32.872719, 18.498901>,  <27.803825, 32.742500, 18.533367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002459, 32.872719, 18.498901>,  <28.333515, 33.089748, 18.441458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002459, 32.872719, 18.498901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475460, 0.813746, 0.334298,
		-0.298242, 0.208398, -0.931462,
		-0.827641, -0.542574, 0.143608,
		27.754166, 32.709946, 18.541985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729292, 33.508533, 18.257349>,  <28.333515, 33.089748, 18.441458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729292, 33.508533, 18.257349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599699, 33.227489, 18.510765>,  <27.521944, 33.058865, 18.662815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599699, 33.227489, 18.510765>,  <27.729292, 33.508533, 18.257349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599699, 33.227489, 18.510765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650245, 0.651789, 0.390324,
		-0.687181, -0.285500, -0.668036,
		-0.323981, -0.702610, 0.633542,
		27.502504, 33.016705, 18.700829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078083, 33.595543, 18.273058>,  <27.729292, 33.508533, 18.257349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078083, 33.595543, 18.273058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181343, 33.429470, 18.621994>,  <27.243299, 33.329826, 18.831356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181343, 33.429470, 18.621994>,  <27.078083, 33.595543, 18.273058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181343, 33.429470, 18.621994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598641, 0.639965, 0.481740,
		-0.758280, -0.646580, -0.083341,
		0.258148, -0.415185, 0.872342,
		27.258787, 33.304913, 18.883698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365139, 33.545551, 18.561157>,  <27.078083, 33.595543, 18.273058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365139, 33.545551, 18.561157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676687, 33.552685, 18.811928>,  <26.863617, 33.556965, 18.962391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676687, 33.552685, 18.811928>,  <26.365139, 33.545551, 18.561157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676687, 33.552685, 18.811928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384318, 0.803512, 0.454607,
		-0.495638, -0.595021, 0.632687,
		0.778872, 0.017833, 0.626929,
		26.910349, 33.558033, 19.000006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090006, 33.741291, 19.204346>,  <26.365139, 33.545551, 18.561157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090006, 33.741291, 19.204346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468002, 33.872131, 19.203869>,  <26.694799, 33.950634, 19.203583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468002, 33.872131, 19.203869>,  <26.090006, 33.741291, 19.204346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468002, 33.872131, 19.203869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322565, 0.932480, 0.162584,
		0.054293, -0.153256, 0.986694,
		0.944989, 0.327100, -0.001192,
		26.751499, 33.970261, 19.203510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201420, 34.171444, 19.750326>,  <26.090006, 33.741291, 19.204346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201420, 34.171444, 19.750326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451712, 34.293018, 19.462971>,  <26.601887, 34.365963, 19.290558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451712, 34.293018, 19.462971>,  <26.201420, 34.171444, 19.750326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451712, 34.293018, 19.462971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401332, 0.915160, 0.037615,
		0.668875, 0.264776, 0.694623,
		0.625731, 0.303934, -0.718390,
		26.639431, 34.384197, 19.247454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606464, 34.520752, 20.039810>,  <26.201420, 34.171444, 19.750326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606464, 34.520752, 20.039810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329472, 34.254993, 20.152275>,  <25.163277, 34.095539, 20.219755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329472, 34.254993, 20.152275>,  <25.606464, 34.520752, 20.039810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329472, 34.254993, 20.152275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718518, -0.670163, 0.186045,
		0.064819, 0.330854, 0.941453,
		-0.692481, -0.664392, 0.281164,
		25.121727, 34.055676, 20.236624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859779, 34.111431, 20.603054>,  <25.606464, 34.520752, 20.039810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859779, 34.111431, 20.603054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551506, 33.889118, 20.478374>,  <25.366543, 33.755730, 20.403566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551506, 33.889118, 20.478374>,  <25.859779, 34.111431, 20.603054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551506, 33.889118, 20.478374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563520, -0.822801, 0.073785,
		-0.297476, -0.118784, 0.947311,
		-0.770684, -0.555778, -0.311701,
		25.320301, 33.722385, 20.384865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926023, 33.502792, 21.043873>,  <25.859779, 34.111431, 20.603054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926023, 33.502792, 21.043873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686453, 33.403439, 20.739349>,  <25.542709, 33.343826, 20.556635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686453, 33.403439, 20.739349>,  <25.926023, 33.502792, 21.043873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686453, 33.403439, 20.739349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392784, -0.919587, -0.008988,
		-0.697858, -0.304413, 0.648327,
		-0.598929, -0.248380, -0.761309,
		25.506775, 33.328926, 20.510956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615591, 32.805508, 21.233683>,  <25.926023, 33.502792, 21.043873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615591, 32.805508, 21.233683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585728, 32.846279, 20.836887>,  <25.567810, 32.870743, 20.598810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585728, 32.846279, 20.836887>,  <25.615591, 32.805508, 21.233683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585728, 32.846279, 20.836887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337481, -0.933483, -0.121315,
		-0.938367, -0.343834, 0.035295,
		-0.074660, 0.101927, -0.991986,
		25.563330, 32.876858, 20.539291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358215, 32.145531, 20.975979>,  <25.615591, 32.805508, 21.233683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358215, 32.145531, 20.975979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532627, 32.324898, 20.663876>,  <25.637274, 32.432518, 20.476614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532627, 32.324898, 20.663876>,  <25.358215, 32.145531, 20.975979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532627, 32.324898, 20.663876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415366, -0.869422, -0.267538,
		-0.798342, -0.207439, -0.565349,
		0.436029, 0.448414, -0.780259,
		25.663435, 32.459423, 20.429798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.079552, 31.704288, 20.366379>,  <25.358215, 32.145531, 20.975979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.079552, 31.704288, 20.366379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410652, 31.917362, 20.295864>,  <25.609312, 32.045208, 20.253555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410652, 31.917362, 20.295864>,  <25.079552, 31.704288, 20.366379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410652, 31.917362, 20.295864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442935, -0.813211, -0.377486,
		-0.344439, 0.234382, -0.909081,
		0.827751, 0.532684, -0.176286,
		25.658978, 32.077168, 20.242979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322847, 31.373970, 19.756029>,  <25.079552, 31.704288, 20.366379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322847, 31.373970, 19.756029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620701, 31.585747, 19.918617>,  <25.799412, 31.712812, 20.016171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620701, 31.585747, 19.918617>,  <25.322847, 31.373970, 19.756029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620701, 31.585747, 19.918617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659936, -0.675240, -0.329447,
		0.100041, 0.513560, -0.852202,
		0.744631, 0.529440, 0.406469,
		25.844090, 31.744579, 20.040558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941858, 31.309435, 19.315987>,  <25.322847, 31.373970, 19.756029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941858, 31.309435, 19.315987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143921, 31.457302, 19.627926>,  <26.265158, 31.546022, 19.815090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143921, 31.457302, 19.627926>,  <25.941858, 31.309435, 19.315987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143921, 31.457302, 19.627926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702703, -0.700770, -0.123001,
		0.501025, 0.610136, -0.613765,
		0.505155, 0.369668, 0.779849,
		26.295467, 31.568203, 19.861881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524521, 31.018845, 19.144987>,  <25.941858, 31.309435, 19.315987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524521, 31.018845, 19.144987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593058, 31.139851, 19.520035>,  <26.634180, 31.212454, 19.745064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593058, 31.139851, 19.520035>,  <26.524521, 31.018845, 19.144987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593058, 31.139851, 19.520035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602928, -0.784866, 0.143050,
		0.779179, 0.540805, -0.316876,
		0.171343, 0.302515, 0.937617,
		26.644461, 31.230606, 19.801319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272223, 31.132200, 19.151299>,  <26.524521, 31.018845, 19.144987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272223, 31.132200, 19.151299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119160, 31.057163, 19.513157>,  <27.027323, 31.012140, 19.730272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119160, 31.057163, 19.513157>,  <27.272223, 31.132200, 19.151299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119160, 31.057163, 19.513157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622201, -0.776153, 0.102238,
		0.682963, 0.601993, 0.413722,
		-0.382658, -0.187593, 0.904645,
		27.004362, 31.000885, 19.784550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820045, 31.231968, 19.599663>,  <27.272223, 31.132200, 19.151299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820045, 31.231968, 19.599663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566769, 30.998753, 19.803284>,  <27.414803, 30.858824, 19.925457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566769, 30.998753, 19.803284>,  <27.820045, 31.231968, 19.599663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566769, 30.998753, 19.803284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716743, -0.689938, 0.101317,
		0.292144, 0.429014, 0.854751,
		-0.633192, -0.583037, 0.509054,
		27.376812, 30.823841, 19.955999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230576, 30.933542, 20.125780>,  <27.820045, 31.231968, 19.599663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230576, 30.933542, 20.125780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915949, 30.692524, 20.071735>,  <27.727173, 30.547913, 20.039309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915949, 30.692524, 20.071735>,  <28.230576, 30.933542, 20.125780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915949, 30.692524, 20.071735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599555, -0.797568, 0.066465,
		-0.147808, -0.028727, 0.988599,
		-0.786566, -0.602544, -0.135110,
		27.679979, 30.511761, 20.031202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260275, 30.528164, 20.764568>,  <28.230576, 30.933542, 20.125780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260275, 30.528164, 20.764568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055361, 30.338478, 20.478161>,  <27.932413, 30.224667, 20.306316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055361, 30.338478, 20.478161>,  <28.260275, 30.528164, 20.764568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055361, 30.338478, 20.478161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601336, -0.793308, 0.095168,
		-0.613155, -0.381816, 0.691562,
		-0.512285, -0.474214, -0.716020,
		27.901674, 30.196215, 20.263355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973917, 29.888746, 21.057243>,  <28.260275, 30.528164, 20.764568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973917, 29.888746, 21.057243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038429, 29.849918, 20.664394>,  <28.077137, 29.826622, 20.428684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038429, 29.849918, 20.664394>,  <27.973917, 29.888746, 21.057243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038429, 29.849918, 20.664394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537342, -0.826077, 0.169886,
		-0.827799, -0.555135, -0.081076,
		0.161284, -0.097066, -0.982123,
		28.086813, 29.820797, 20.369757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974785, 29.870003, 21.798449>,  <27.973917, 29.888746, 21.057243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974785, 29.870003, 21.798449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213715, 29.719692, 22.081856>,  <28.357073, 29.629505, 22.251900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213715, 29.719692, 22.081856>,  <27.974785, 29.870003, 21.798449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213715, 29.719692, 22.081856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373896, 0.912036, 0.168499,
		-0.709510, 0.164262, 0.685284,
		0.597326, -0.375776, 0.708516,
		28.392912, 29.606960, 22.294411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816263, 30.184792, 22.440508>,  <27.974785, 29.870003, 21.798449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816263, 30.184792, 22.440508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192024, 30.062706, 22.502945>,  <28.417480, 29.989454, 22.540407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192024, 30.062706, 22.502945>,  <27.816263, 30.184792, 22.440508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192024, 30.062706, 22.502945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271017, 0.940042, 0.207052,
		-0.209931, -0.152201, 0.965797,
		0.939403, -0.305214, 0.156095,
		28.473845, 29.971142, 22.549774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088297, 30.612988, 22.948944>,  <27.816263, 30.184792, 22.440508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088297, 30.612988, 22.948944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404289, 30.463142, 22.754791>,  <28.593884, 30.373236, 22.638300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404289, 30.463142, 22.754791>,  <28.088297, 30.612988, 22.948944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404289, 30.463142, 22.754791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459659, 0.885750, 0.064502,
		0.405765, -0.274066, 0.871919,
		0.789980, -0.374612, -0.485384,
		28.641283, 30.350760, 22.609177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647600, 31.078234, 23.198580>,  <28.088297, 30.612988, 22.948944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647600, 31.078234, 23.198580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851280, 30.888577, 22.911274>,  <28.973488, 30.774782, 22.738892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851280, 30.888577, 22.911274>,  <28.647600, 31.078234, 23.198580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851280, 30.888577, 22.911274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629807, 0.774069, -0.064491,
		0.586563, -0.419529, 0.692776,
		0.509201, -0.474144, -0.718263,
		29.004040, 30.746334, 22.695795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311447, 31.308237, 23.380741>,  <28.647600, 31.078234, 23.198580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311447, 31.308237, 23.380741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333143, 31.171516, 23.005459>,  <29.346161, 31.089483, 22.780289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333143, 31.171516, 23.005459>,  <29.311447, 31.308237, 23.380741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333143, 31.171516, 23.005459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775937, 0.605806, -0.175844,
		0.628474, -0.718450, 0.298077,
		0.054241, -0.341803, -0.938205,
		29.349415, 31.068975, 22.723997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984850, 30.913631, 23.256098>,  <29.311447, 31.308237, 23.380741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984850, 30.913631, 23.256098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833170, 31.119381, 22.948429>,  <29.742161, 31.242830, 22.763828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833170, 31.119381, 22.948429>,  <29.984850, 30.913631, 23.256098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833170, 31.119381, 22.948429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754684, 0.652904, 0.064562,
		0.535405, -0.556000, -0.635772,
		-0.379202, 0.514374, -0.769172,
		29.719410, 31.273693, 22.717678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507114, 31.232376, 22.898008>,  <29.984850, 30.913631, 23.256098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507114, 31.232376, 22.898008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210146, 31.436996, 22.724976>,  <30.031965, 31.559769, 22.621157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210146, 31.436996, 22.724976>,  <30.507114, 31.232376, 22.898008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210146, 31.436996, 22.724976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599167, 0.795865, -0.087169,
		0.299685, -0.323904, -0.897371,
		-0.742420, 0.511551, -0.432582,
		29.987419, 31.590462, 22.595201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902781, 31.603956, 22.410612>,  <30.507114, 31.232376, 22.898008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902781, 31.603956, 22.410612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546694, 31.780361, 22.456249>,  <30.333042, 31.886204, 22.483631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546694, 31.780361, 22.456249>,  <30.902781, 31.603956, 22.410612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546694, 31.780361, 22.456249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441648, 0.896942, -0.021048,
		-0.111617, 0.031651, -0.993247,
		-0.890219, 0.441015, 0.114092,
		30.279629, 31.912666, 22.490477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022493, 32.156029, 22.047852>,  <30.902781, 31.603956, 22.410612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022493, 32.156029, 22.047852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692596, 32.256924, 22.250309>,  <30.494659, 32.317459, 22.371782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692596, 32.256924, 22.250309>,  <31.022493, 32.156029, 22.047852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692596, 32.256924, 22.250309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217491, 0.967654, -0.127837,
		-0.522016, 0.004649, -0.852923,
		-0.824740, 0.252236, 0.506142,
		30.445175, 32.332596, 22.402151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591135, 32.681561, 21.638521>,  <31.022493, 32.156029, 22.047852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591135, 32.681561, 21.638521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515423, 32.717236, 22.029667>,  <30.469995, 32.738640, 22.264355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515423, 32.717236, 22.029667>,  <30.591135, 32.681561, 21.638521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515423, 32.717236, 22.029667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194668, 0.979508, -0.051660,
		-0.962433, 0.180581, -0.202765,
		-0.189281, 0.089191, 0.977864,
		30.458639, 32.743992, 22.323027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319492, 33.300007, 21.699265>,  <30.591135, 32.681561, 21.638521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319492, 33.300007, 21.699265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416115, 33.230862, 22.081211>,  <30.474089, 33.189373, 22.310379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416115, 33.230862, 22.081211>,  <30.319492, 33.300007, 21.699265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416115, 33.230862, 22.081211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212343, 0.969574, 0.121808,
		-0.946869, 0.173335, 0.270913,
		0.241557, -0.172862, 0.954866,
		30.488583, 33.179005, 22.367670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066074, 33.888378, 22.140627>,  <30.319492, 33.300007, 21.699265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066074, 33.888378, 22.140627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347652, 33.700630, 22.353851>,  <30.516600, 33.587982, 22.481785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347652, 33.700630, 22.353851>,  <30.066074, 33.888378, 22.140627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347652, 33.700630, 22.353851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533600, 0.844826, 0.039236,
		-0.468759, 0.256821, 0.845168,
		0.703943, -0.469374, 0.533059,
		30.558836, 33.559818, 22.513769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.658142, 25.978323, 22.178957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.055189, 26.010704, 22.142834>,  <27.293417, 26.030132, 22.121159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.055189, 26.010704, 22.142834>,  <26.658142, 25.978323, 22.178957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055189, 26.010704, 22.142834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054771, 0.963578, 0.261757,
		0.108211, -0.254879, 0.960899,
		0.992618, 0.080955, -0.090310,
		27.352974, 26.034990, 22.115740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804869, 26.536505, 22.765928>,  <26.658142, 25.978323, 22.178957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804869, 26.536505, 22.765928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.159920, 26.485035, 22.589039>,  <27.372950, 26.454153, 22.482904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.159920, 26.485035, 22.589039>,  <26.804869, 26.536505, 22.765928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159920, 26.485035, 22.589039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328653, 0.849630, 0.412452,
		0.322656, -0.511442, 0.796443,
		0.887626, -0.128673, -0.442224,
		27.426208, 26.446432, 22.456371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157846, 27.022240, 23.185175>,  <26.804869, 26.536505, 22.765928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157846, 27.022240, 23.185175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.365166, 26.955273, 22.849712>,  <27.489557, 26.915092, 22.648436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.365166, 26.955273, 22.849712>,  <27.157846, 27.022240, 23.185175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365166, 26.955273, 22.849712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471089, 0.874345, 0.116596,
		0.713753, -0.455513, 0.532038,
		0.518296, -0.167417, -0.838654,
		27.520655, 26.905048, 22.598116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887684, 27.173037, 23.389048>,  <27.157846, 27.022240, 23.185175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887684, 27.173037, 23.389048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.848774, 27.196648, 22.991646>,  <27.825428, 27.210814, 22.753204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.848774, 27.196648, 22.991646>,  <27.887684, 27.173037, 23.389048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848774, 27.196648, 22.991646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603642, 0.797169, -0.011739,
		0.791299, -0.600863, -0.113175,
		-0.097273, 0.059028, -0.993506,
		27.819592, 27.214355, 22.693594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599100, 27.354315, 23.051792>,  <27.887684, 27.173037, 23.389048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599100, 27.354315, 23.051792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.319626, 27.468800, 22.789520>,  <28.151941, 27.537491, 22.632156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.319626, 27.468800, 22.789520>,  <28.599100, 27.354315, 23.051792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319626, 27.468800, 22.789520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500621, 0.850319, -0.162285,
		0.511090, -0.441634, -0.737391,
		-0.698688, 0.286212, -0.655681,
		28.110020, 27.554663, 22.592815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995798, 27.737286, 22.576115>,  <28.599100, 27.354315, 23.051792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995798, 27.737286, 22.576115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.613091, 27.843731, 22.529156>,  <28.383467, 27.907598, 22.500980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.613091, 27.843731, 22.529156>,  <28.995798, 27.737286, 22.576115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613091, 27.843731, 22.529156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287357, 0.927257, -0.240043,
		0.044978, -0.263400, -0.963638,
		-0.956767, 0.266111, -0.117396,
		28.326061, 27.923565, 22.493937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995419, 28.199263, 22.060896>,  <28.995798, 27.737286, 22.576115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995419, 28.199263, 22.060896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.623388, 28.262604, 22.193489>,  <28.400169, 28.300610, 22.273045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.623388, 28.262604, 22.193489>,  <28.995419, 28.199263, 22.060896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623388, 28.262604, 22.193489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084318, 0.970255, -0.226925,
		-0.357558, -0.183107, -0.915764,
		-0.930077, 0.158354, 0.331483,
		28.344366, 28.310110, 22.292934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590832, 28.587545, 21.543158>,  <28.995419, 28.199263, 22.060896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590832, 28.587545, 21.543158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.393745, 28.657681, 21.884094>,  <28.275494, 28.699760, 22.088655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.393745, 28.657681, 21.884094>,  <28.590832, 28.587545, 21.543158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393745, 28.657681, 21.884094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241973, 0.968466, -0.059345,
		-0.835870, 0.177004, -0.519607,
		-0.492717, 0.175336, 0.852342,
		28.245930, 28.710281, 22.139797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217297, 29.254168, 21.498213>,  <28.590832, 28.587545, 21.543158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217297, 29.254168, 21.498213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.257828, 29.193996, 21.891579>,  <28.282146, 29.157894, 22.127598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.257828, 29.193996, 21.891579>,  <28.217297, 29.254168, 21.498213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257828, 29.193996, 21.891579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246276, 0.961528, 0.121704,
		-0.963888, 0.229860, 0.134474,
		0.101326, -0.150427, 0.983415,
		28.288225, 29.148869, 22.186604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850786, 28.909315, 20.929573>,  <28.217297, 29.254168, 21.498213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850786, 28.909315, 20.929573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.932428, 29.055397, 20.566261>,  <27.981413, 29.143045, 20.348274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.932428, 29.055397, 20.566261>,  <27.850786, 28.909315, 20.929573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932428, 29.055397, 20.566261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481698, -0.845182, -0.231590,
		-0.852237, -0.390247, -0.348422,
		0.204103, 0.365204, -0.908277,
		27.993660, 29.164959, 20.293777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781031, 28.337790, 20.346092>,  <27.850786, 28.909315, 20.929573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781031, 28.337790, 20.346092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.031242, 28.607231, 20.188625>,  <28.181370, 28.768896, 20.094145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.031242, 28.607231, 20.188625>,  <27.781031, 28.337790, 20.346092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031242, 28.607231, 20.188625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527416, -0.736900, -0.422860,
		-0.574932, 0.056885, -0.816221,
		0.625528, 0.673605, -0.393665,
		28.218901, 28.809313, 20.070526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748569, 28.105352, 19.761362>,  <27.781031, 28.337790, 20.346092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748569, 28.105352, 19.761362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.084555, 28.320938, 19.786587>,  <28.286146, 28.450291, 19.801722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.084555, 28.320938, 19.786587>,  <27.748569, 28.105352, 19.761362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084555, 28.320938, 19.786587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530763, -0.791824, -0.302168,
		-0.112924, 0.287281, -0.951166,
		0.839964, 0.538966, 0.063063,
		28.336544, 28.482628, 19.805506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081703, 27.885326, 19.169432>,  <27.748569, 28.105352, 19.761362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081703, 27.885326, 19.169432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.386419, 28.025284, 19.387516>,  <28.569248, 28.109259, 19.518366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.386419, 28.025284, 19.387516>,  <28.081703, 27.885326, 19.169432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386419, 28.025284, 19.387516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549405, -0.794878, -0.257533,
		0.343265, 0.495726, -0.797762,
		0.761789, 0.349892, 0.545209,
		28.614956, 28.130251, 19.551079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624943, 27.989439, 18.719650>,  <28.081703, 27.885326, 19.169432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624943, 27.989439, 18.719650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.769392, 27.949268, 19.090488>,  <28.856062, 27.925167, 19.312992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.769392, 27.949268, 19.090488>,  <28.624943, 27.989439, 18.719650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769392, 27.949268, 19.090488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713975, -0.609750, -0.344158,
		0.599858, 0.786206, -0.148495,
		0.361124, -0.100424, 0.927095,
		28.877729, 27.919142, 19.368616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282320, 27.854145, 18.569923>,  <28.624943, 27.989439, 18.719650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282320, 27.854145, 18.569923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.227604, 27.704010, 18.936619>,  <29.194775, 27.613930, 19.156637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.227604, 27.704010, 18.936619>,  <29.282320, 27.854145, 18.569923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227604, 27.704010, 18.936619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528485, -0.810387, -0.252935,
		0.837849, 0.449884, 0.309213,
		-0.136791, -0.375336, 0.916740,
		29.186567, 27.591410, 19.211641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937706, 27.572874, 18.728619>,  <29.282320, 27.854145, 18.569923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937706, 27.572874, 18.728619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.683937, 27.401985, 18.986298>,  <29.531675, 27.299452, 19.140905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.683937, 27.401985, 18.986298>,  <29.937706, 27.572874, 18.728619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683937, 27.401985, 18.986298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422452, -0.889547, -0.173894,
		0.647334, 0.161819, 0.744830,
		-0.634423, -0.427223, 0.644196,
		29.493610, 27.273819, 19.179556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363213, 27.202147, 19.047039>,  <29.937706, 27.572874, 18.728619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363213, 27.202147, 19.047039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.996515, 27.062344, 19.124420>,  <29.776497, 26.978462, 19.170849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.996515, 27.062344, 19.124420>,  <30.363213, 27.202147, 19.047039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996515, 27.062344, 19.124420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347732, -0.936552, -0.044195,
		0.196623, 0.026754, 0.980114,
		-0.916745, -0.349507, 0.193451,
		29.721491, 26.957491, 19.182455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410906, 26.783028, 19.623528>,  <30.363213, 27.202147, 19.047039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410906, 26.783028, 19.623528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.081335, 26.677948, 19.422676>,  <29.883593, 26.614901, 19.302166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.081335, 26.677948, 19.422676>,  <30.410906, 26.783028, 19.623528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081335, 26.677948, 19.422676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304100, -0.952640, -0.000596,
		-0.478190, -0.153188, 0.864794,
		-0.823928, -0.262699, -0.502127,
		29.834156, 26.599138, 19.272038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328344, 26.122046, 19.907320>,  <30.410906, 26.783028, 19.623528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328344, 26.122046, 19.907320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.060574, 26.134911, 19.610447>,  <29.899912, 26.142630, 19.432323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.060574, 26.134911, 19.610447>,  <30.328344, 26.122046, 19.907320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060574, 26.134911, 19.610447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072469, -0.991470, -0.108334,
		-0.739334, -0.126307, 0.661386,
		-0.669428, 0.032165, -0.742180,
		29.859745, 26.144560, 19.387793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807352, 25.612206, 20.040987>,  <30.328344, 26.122046, 19.907320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807352, 25.612206, 20.040987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.793926, 25.656963, 19.643726>,  <29.785870, 25.683819, 19.405369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.793926, 25.656963, 19.643726>,  <29.807352, 25.612206, 20.040987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793926, 25.656963, 19.643726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203434, -0.973674, -0.102825,
		-0.978513, 0.198590, 0.055445,
		-0.033565, 0.111895, -0.993153,
		29.783857, 25.690533, 19.345781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313585, 25.115360, 19.802439>,  <29.807352, 25.612206, 20.040987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313585, 25.115360, 19.802439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.535711, 25.184120, 19.476967>,  <29.668987, 25.225376, 19.281685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.535711, 25.184120, 19.476967>,  <29.313585, 25.115360, 19.802439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535711, 25.184120, 19.476967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157496, -0.938961, -0.305856,
		-0.816589, 0.297998, -0.494347,
		0.555317, 0.171901, -0.813678,
		29.702307, 25.235691, 19.232862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030117, 24.743410, 19.247015>,  <29.313585, 25.115360, 19.802439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030117, 24.743410, 19.247015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.403955, 24.807728, 19.120098>,  <29.628260, 24.846317, 19.043947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.403955, 24.807728, 19.120098>,  <29.030117, 24.743410, 19.247015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403955, 24.807728, 19.120098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006735, -0.899841, -0.436166,
		-0.355645, 0.405503, -0.842071,
		0.934597, 0.160792, -0.317292,
		29.684334, 24.855965, 19.024910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041424, 24.614868, 18.485674>,  <29.030117, 24.743410, 19.247015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041424, 24.614868, 18.485674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.416365, 24.566559, 18.616386>,  <29.641329, 24.537573, 18.694815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.416365, 24.566559, 18.616386>,  <29.041424, 24.614868, 18.485674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416365, 24.566559, 18.616386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009163, -0.929119, -0.369667,
		0.348264, 0.349502, -0.869805,
		0.937351, -0.120772, 0.326782,
		29.697571, 24.530327, 18.714420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.520439, 24.954899, 21.516005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241882, 25.027580, 21.238293>,  <33.074749, 25.071188, 21.071665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241882, 25.027580, 21.238293>,  <33.520439, 24.954899, 21.516005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241882, 25.027580, 21.238293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155312, 0.982649, 0.101388,
		0.700655, -0.037223, -0.712529,
		-0.696391, 0.181702, -0.694279,
		33.032967, 25.082090, 21.030008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813450, 25.516783, 21.116905>,  <33.520439, 24.954899, 21.516005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813450, 25.516783, 21.116905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.427555, 25.513203, 21.011677>,  <33.196018, 25.511055, 20.948540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.427555, 25.513203, 21.011677>,  <33.813450, 25.516783, 21.116905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427555, 25.513203, 21.011677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025467, 0.991560, -0.127120,
		0.261987, -0.129337, -0.956365,
		-0.964735, -0.008948, -0.263070,
		33.138134, 25.510519, 20.932756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687004, 25.794598, 20.420191>,  <33.813450, 25.516783, 21.116905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687004, 25.794598, 20.420191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344906, 25.826527, 20.625004>,  <33.139645, 25.845684, 20.747892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344906, 25.826527, 20.625004>,  <33.687004, 25.794598, 20.420191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344906, 25.826527, 20.625004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046562, 0.972232, -0.229341,
		-0.516123, -0.219985, -0.827782,
		-0.855248, 0.079825, 0.512034,
		33.088333, 25.850473, 20.778614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382935, 26.214161, 20.053616>,  <33.687004, 25.794598, 20.420191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382935, 26.214161, 20.053616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190044, 26.223518, 20.403908>,  <33.074310, 26.229134, 20.614084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190044, 26.223518, 20.403908>,  <33.382935, 26.214161, 20.053616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190044, 26.223518, 20.403908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088055, 0.993286, -0.075023,
		-0.871609, -0.113291, -0.476931,
		-0.482229, 0.023395, 0.875733,
		33.045376, 26.230537, 20.666628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765762, 26.631905, 19.933023>,  <33.382935, 26.214161, 20.053616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765762, 26.631905, 19.933023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838291, 26.649895, 20.325981>,  <32.881809, 26.660688, 20.561756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838291, 26.649895, 20.325981>,  <32.765762, 26.631905, 19.933023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838291, 26.649895, 20.325981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236479, 0.971636, -0.000836,
		-0.954568, -0.232164, 0.186815,
		0.181322, 0.044976, 0.982395,
		32.892689, 26.663387, 20.620699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140972, 26.932352, 20.177092>,  <32.765762, 26.631905, 19.933023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140972, 26.932352, 20.177092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.415550, 27.003250, 20.459190>,  <32.580299, 27.045790, 20.628450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.415550, 27.003250, 20.459190>,  <32.140972, 26.932352, 20.177092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415550, 27.003250, 20.459190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203336, 0.977938, -0.047863,
		-0.698172, -0.110547, 0.707344,
		0.686448, 0.177245, 0.705247,
		32.621483, 27.056423, 20.670765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771820, 27.362144, 20.597414>,  <32.140972, 26.932352, 20.177092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771820, 27.362144, 20.597414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.159897, 27.418274, 20.676445>,  <32.392742, 27.451952, 20.723864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.159897, 27.418274, 20.676445>,  <31.771820, 27.362144, 20.597414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159897, 27.418274, 20.676445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135534, 0.990058, -0.037632,
		-0.200895, 0.009732, 0.979564,
		0.970192, 0.140324, 0.197579,
		32.450954, 27.460371, 20.735718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821749, 27.978146, 21.030178>,  <31.771820, 27.362144, 20.597414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821749, 27.978146, 21.030178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.213837, 27.948147, 20.956921>,  <32.449089, 27.930147, 20.912966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.213837, 27.948147, 20.956921>,  <31.821749, 27.978146, 21.030178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213837, 27.948147, 20.956921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070882, 0.997066, -0.028909,
		0.184776, 0.015356, 0.982661,
		0.980221, -0.074995, -0.183146,
		32.507904, 27.925648, 20.901978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206436, 28.490038, 21.514189>,  <31.821749, 27.978146, 21.030178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206436, 28.490038, 21.514189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409073, 28.400105, 21.181248>,  <32.530655, 28.346144, 20.981483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409073, 28.400105, 21.181248>,  <32.206436, 28.490038, 21.514189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409073, 28.400105, 21.181248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148439, 0.973729, -0.172679,
		0.849311, -0.036076, 0.526659,
		0.506594, -0.224835, -0.832353,
		32.561050, 28.332655, 20.931541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784939, 28.854013, 21.595467>,  <32.206436, 28.490038, 21.514189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784939, 28.854013, 21.595467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.766933, 28.772850, 21.204201>,  <32.756130, 28.724152, 20.969442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.766933, 28.772850, 21.204201>,  <32.784939, 28.854013, 21.595467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766933, 28.772850, 21.204201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177395, 0.961970, -0.207714,
		0.983110, -0.182872, -0.007309,
		-0.045016, -0.202909, -0.978162,
		32.753429, 28.711977, 20.910751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385891, 29.135345, 21.349524>,  <32.784939, 28.854013, 21.595467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385891, 29.135345, 21.349524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199982, 29.078197, 20.999992>,  <33.088436, 29.043909, 20.790274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199982, 29.078197, 20.999992>,  <33.385891, 29.135345, 21.349524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199982, 29.078197, 20.999992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342331, 0.881157, -0.326148,
		0.816576, -0.450722, -0.360628,
		-0.464772, -0.142870, -0.873828,
		33.060551, 29.035336, 20.737844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866173, 29.127331, 20.690998>,  <33.385891, 29.135345, 21.349524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866173, 29.127331, 20.690998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502068, 29.263306, 20.596462>,  <33.283604, 29.344891, 20.539742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502068, 29.263306, 20.596462>,  <33.866173, 29.127331, 20.690998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502068, 29.263306, 20.596462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375444, 0.918362, -0.125109,
		0.174514, -0.202614, -0.963583,
		-0.910267, 0.339938, -0.236338,
		33.228989, 29.365288, 20.525560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934841, 29.499882, 20.066399>,  <33.866173, 29.127331, 20.690998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934841, 29.499882, 20.066399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.591946, 29.626770, 20.228642>,  <33.386208, 29.702904, 20.325987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.591946, 29.626770, 20.228642>,  <33.934841, 29.499882, 20.066399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591946, 29.626770, 20.228642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283956, 0.948331, -0.141550,
		-0.429551, -0.006168, -0.903022,
		-0.857237, 0.317221, 0.405605,
		33.334774, 29.721937, 20.350323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688198, 29.951191, 19.587301>,  <33.934841, 29.499882, 20.066399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688198, 29.951191, 19.587301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.528149, 30.045475, 19.941555>,  <33.432121, 30.102045, 20.154106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.528149, 30.045475, 19.941555>,  <33.688198, 29.951191, 19.587301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528149, 30.045475, 19.941555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179929, 0.967756, -0.176280,
		-0.898627, 0.088819, -0.429629,
		-0.400119, 0.235712, 0.885632,
		33.408112, 30.116188, 20.207245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000328, 30.164515, 19.241224>,  <33.688198, 29.951191, 19.587301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000328, 30.164515, 19.241224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896900, 30.190266, 18.855686>,  <32.834843, 30.205715, 18.624363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896900, 30.190266, 18.855686>,  <33.000328, 30.164515, 19.241224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896900, 30.190266, 18.855686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350645, -0.923468, -0.155744,
		-0.900106, -0.378237, 0.216204,
		-0.258566, 0.064376, -0.963846,
		32.819332, 30.209578, 18.566532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615917, 29.518738, 19.058056>,  <33.000328, 30.164515, 19.241224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615917, 29.518738, 19.058056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.709003, 29.650581, 18.692062>,  <32.764854, 29.729687, 18.472466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.709003, 29.650581, 18.692062>,  <32.615917, 29.518738, 19.058056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709003, 29.650581, 18.692062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285904, -0.922432, -0.259574,
		-0.929570, -0.201191, -0.308904,
		0.232719, 0.329609, -0.914986,
		32.778820, 29.749464, 18.417566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191471, 29.072960, 18.643379>,  <32.615917, 29.518738, 19.058056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191471, 29.072960, 18.643379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493206, 29.202972, 18.415226>,  <32.674248, 29.280979, 18.278334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493206, 29.202972, 18.415226>,  <32.191471, 29.072960, 18.643379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493206, 29.202972, 18.415226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238356, -0.945144, -0.223360,
		-0.611691, 0.032534, -0.790427,
		0.754334, 0.325031, -0.570382,
		32.719505, 29.300482, 18.244112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077122, 28.780066, 18.079855>,  <32.191471, 29.072960, 18.643379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077122, 28.780066, 18.079855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.468182, 28.860645, 18.055813>,  <32.702820, 28.908993, 18.041388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.468182, 28.860645, 18.055813>,  <32.077122, 28.780066, 18.079855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468182, 28.860645, 18.055813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159245, -0.896314, -0.413839,
		-0.137239, 0.395020, -0.908364,
		0.977654, 0.201447, -0.060104,
		32.761478, 28.921080, 18.037781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210609, 28.743567, 17.362263>,  <32.077122, 28.780066, 18.079855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210609, 28.743567, 17.362263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556694, 28.710426, 17.560070>,  <32.764343, 28.690542, 17.678755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556694, 28.710426, 17.560070>,  <32.210609, 28.743567, 17.362263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556694, 28.710426, 17.560070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140850, -0.906384, -0.398283,
		0.481220, 0.414252, -0.772543,
		0.865210, -0.082849, 0.494518,
		32.816257, 28.685572, 17.708426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807667, 28.478020, 16.972513>,  <32.210609, 28.743567, 17.362263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807667, 28.478020, 16.972513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893024, 28.394451, 17.354259>,  <32.944237, 28.344311, 17.583307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893024, 28.394451, 17.354259>,  <32.807667, 28.478020, 16.972513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893024, 28.394451, 17.354259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070431, -0.971036, -0.228319,
		0.974425, 0.115939, -0.192495,
		0.213391, -0.208922, 0.954367,
		32.957043, 28.331774, 17.640570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445286, 28.051640, 16.873747>,  <32.807667, 28.478020, 16.972513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445286, 28.051640, 16.873747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300781, 27.987587, 17.241192>,  <33.214081, 27.949156, 17.461658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300781, 27.987587, 17.241192>,  <33.445286, 28.051640, 16.873747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300781, 27.987587, 17.241192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246143, -0.966578, -0.071693,
		0.899392, 0.200211, 0.388599,
		-0.361257, -0.160131, 0.918614,
		33.192406, 27.939548, 17.516775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906483, 27.502584, 17.111712>,  <33.445286, 28.051640, 16.873747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906483, 27.502584, 17.111712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622883, 27.497623, 17.393753>,  <33.452724, 27.494646, 17.562977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622883, 27.497623, 17.393753>,  <33.906483, 27.502584, 17.111712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622883, 27.497623, 17.393753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111413, -0.989259, 0.094628,
		0.696354, 0.145648, 0.702764,
		-0.708998, -0.012402, 0.705101,
		33.410183, 27.493902, 17.605284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213543, 27.150387, 17.685371>,  <33.906483, 27.502584, 17.111712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213543, 27.150387, 17.685371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814240, 27.157665, 17.707794>,  <33.574657, 27.162033, 17.721249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814240, 27.157665, 17.707794>,  <34.213543, 27.150387, 17.685371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814240, 27.157665, 17.707794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005306, -0.975034, 0.221994,
		0.058697, 0.221310, 0.973435,
		-0.998262, 0.018196, 0.056058,
		33.514763, 27.163124, 17.724611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015835, 26.706612, 18.174646>,  <34.213543, 27.150387, 17.685371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015835, 26.706612, 18.174646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.662724, 26.736961, 17.989201>,  <33.450855, 26.755171, 17.877934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.662724, 26.736961, 17.989201>,  <34.015835, 26.706612, 18.174646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662724, 26.736961, 17.989201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174798, -0.969065, 0.174236,
		-0.436054, 0.234851, 0.868735,
		-0.882781, 0.075877, -0.463616,
		33.397888, 26.759724, 17.850115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534256, 26.445881, 18.554825>,  <34.015835, 26.706612, 18.174646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534256, 26.445881, 18.554825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371952, 26.440586, 18.189270>,  <33.274570, 26.437408, 17.969938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371952, 26.440586, 18.189270>,  <33.534256, 26.445881, 18.554825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371952, 26.440586, 18.189270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409780, -0.891131, 0.194847,
		-0.816971, 0.453552, 0.356157,
		-0.405757, -0.013238, -0.913885,
		33.250225, 26.436615, 17.915104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815495, 26.183662, 18.554708>,  <33.534256, 26.445881, 18.554825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815495, 26.183662, 18.554708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947060, 26.116413, 18.182999>,  <33.025997, 26.076063, 17.959972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947060, 26.116413, 18.182999>,  <32.815495, 26.183662, 18.554708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947060, 26.116413, 18.182999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171723, -0.978268, 0.116205,
		-0.928617, 0.121356, -0.350633,
		0.328911, -0.168121, -0.929275,
		33.045734, 26.065977, 17.904217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365349, 25.631710, 18.143812>,  <32.815495, 26.183662, 18.554708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365349, 25.631710, 18.143812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.696877, 25.621056, 17.920261>,  <32.895794, 25.614664, 17.786131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.696877, 25.621056, 17.920261>,  <32.365349, 25.631710, 18.143812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696877, 25.621056, 17.920261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011381, -0.999462, 0.030754,
		-0.559394, -0.019129, -0.828681,
		0.828823, -0.026635, -0.558876,
		32.945522, 25.613066, 17.752598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283276, 25.103855, 17.619474>,  <32.365349, 25.631710, 18.143812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283276, 25.103855, 17.619474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.679192, 25.147076, 17.582283>,  <32.916740, 25.173008, 17.559969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.679192, 25.147076, 17.582283>,  <32.283276, 25.103855, 17.619474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679192, 25.147076, 17.582283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098376, -0.989802, -0.103020,
		-0.103161, 0.092821, -0.990324,
		0.989788, 0.108052, -0.092978,
		32.976128, 25.179491, 17.554390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166698, 25.397993, 16.907131>,  <32.283276, 25.103855, 17.619474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166698, 25.397993, 16.907131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.866251, 25.320652, 16.654644>,  <31.685984, 25.274246, 16.503151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.866251, 25.320652, 16.654644>,  <32.166698, 25.397993, 16.907131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866251, 25.320652, 16.654644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257387, 0.966254, 0.010294,
		0.607928, 0.170200, -0.775536,
		-0.751116, -0.193355, -0.631220,
		31.640917, 25.262646, 16.465279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115467, 26.036379, 16.304705>,  <32.166698, 25.397993, 16.907131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115467, 26.036379, 16.304705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760538, 25.851936, 16.307308>,  <31.547581, 25.741270, 16.308870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760538, 25.851936, 16.307308>,  <32.115467, 26.036379, 16.304705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760538, 25.851936, 16.307308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460424, 0.885036, -0.068708,
		0.025920, -0.063964, -0.997616,
		-0.887321, -0.461107, 0.006510,
		31.494343, 25.713604, 16.309261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769156, 26.250957, 15.660026>,  <32.115467, 26.036379, 16.304705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769156, 26.250957, 15.660026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509325, 26.164589, 15.951623>,  <31.353428, 26.112768, 16.126581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509325, 26.164589, 15.951623>,  <31.769156, 26.250957, 15.660026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509325, 26.164589, 15.951623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430961, 0.894480, -0.119072,
		-0.626359, -0.391514, -0.674086,
		-0.649575, -0.215923, 0.728992,
		31.314453, 26.099812, 16.170321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285891, 26.711714, 15.438943>,  <31.769156, 26.250957, 15.660026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285891, 26.711714, 15.438943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129917, 26.563152, 15.775992>,  <31.036333, 26.474016, 15.978222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129917, 26.563152, 15.775992>,  <31.285891, 26.711714, 15.438943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129917, 26.563152, 15.775992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587730, 0.804813, 0.082759,
		-0.708891, -0.462965, -0.532106,
		-0.389931, -0.371401, 0.842624,
		31.012938, 26.451733, 16.028780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558149, 26.760180, 15.361627>,  <31.285891, 26.711714, 15.438943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558149, 26.760180, 15.361627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.640871, 26.765156, 15.752948>,  <30.690504, 26.768141, 15.987741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.640871, 26.765156, 15.752948>,  <30.558149, 26.760180, 15.361627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640871, 26.765156, 15.752948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545139, 0.831787, 0.104659,
		-0.812438, -0.554955, 0.178798,
		0.206803, 0.012441, 0.978303,
		30.702911, 26.768888, 16.046438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949505, 26.970152, 15.682681>,  <30.558149, 26.760180, 15.361627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949505, 26.970152, 15.682681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.231066, 27.035450, 15.959195>,  <30.400002, 27.074629, 16.125103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.231066, 27.035450, 15.959195>,  <29.949505, 26.970152, 15.682681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231066, 27.035450, 15.959195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491972, 0.814037, 0.308719,
		-0.512335, -0.557401, 0.653312,
		0.703900, 0.163244, 0.691285,
		30.442236, 27.084423, 16.166580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541065, 27.239456, 16.225138>,  <29.949505, 26.970152, 15.682681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541065, 27.239456, 16.225138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.921333, 27.357338, 16.263870>,  <30.149494, 27.428066, 16.287109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.921333, 27.357338, 16.263870>,  <29.541065, 27.239456, 16.225138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921333, 27.357338, 16.263870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308097, 0.860693, 0.405320,
		0.036107, -0.415159, 0.909032,
		0.950670, 0.294705, 0.096832,
		30.206533, 27.445749, 16.292919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561598, 27.514400, 16.868870>,  <29.541065, 27.239456, 16.225138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561598, 27.514400, 16.868870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.895275, 27.672180, 16.714710>,  <30.095482, 27.766848, 16.622215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.895275, 27.672180, 16.714710>,  <29.561598, 27.514400, 16.868870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895275, 27.672180, 16.714710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227041, 0.882528, 0.411820,
		0.502568, -0.256036, 0.825755,
		0.834193, 0.394448, -0.385399,
		30.145533, 27.790514, 16.599091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844770, 27.924408, 17.382435>,  <29.561598, 27.514400, 16.868870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844770, 27.924408, 17.382435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.983152, 28.050442, 17.028931>,  <30.066181, 28.126062, 16.816828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.983152, 28.050442, 17.028931>,  <29.844770, 27.924408, 17.382435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983152, 28.050442, 17.028931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117978, 0.949058, 0.292181,
		0.930804, 0.003183, 0.365505,
		0.345956, 0.315085, -0.883762,
		30.086939, 28.144968, 16.763802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414799, 28.525949, 17.545321>,  <29.844770, 27.924408, 17.382435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414799, 28.525949, 17.545321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.285234, 28.596981, 17.173611>,  <30.207497, 28.639599, 16.950584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.285234, 28.596981, 17.173611>,  <30.414799, 28.525949, 17.545321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285234, 28.596981, 17.173611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209174, 0.944478, 0.253393,
		0.922675, 0.276456, -0.268780,
		-0.323909, 0.177578, -0.929273,
		30.188061, 28.650255, 16.894829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556753, 29.229383, 17.367430>,  <30.414799, 28.525949, 17.545321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556753, 29.229383, 17.367430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.266003, 29.135521, 17.109257>,  <30.091553, 29.079203, 16.954353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.266003, 29.135521, 17.109257>,  <30.556753, 29.229383, 17.367430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266003, 29.135521, 17.109257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297867, 0.954537, -0.011581,
		0.618808, 0.183836, -0.763728,
		-0.726878, -0.234656, -0.645434,
		30.047939, 29.065125, 16.915627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376583, 29.873699, 17.123354>,  <30.556753, 29.229383, 17.367430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376583, 29.873699, 17.123354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.085649, 29.619915, 17.018707>,  <29.911089, 29.467644, 16.955919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.085649, 29.619915, 17.018707>,  <30.376583, 29.873699, 17.123354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085649, 29.619915, 17.018707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661473, 0.749678, 0.020912,
		0.182860, 0.188262, -0.964945,
		-0.727335, -0.634461, -0.261617,
		29.867449, 29.429577, 16.940222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044214, 30.206511, 16.642832>,  <30.376583, 29.873699, 17.123354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044214, 30.206511, 16.642832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.799990, 29.930840, 16.798908>,  <29.653456, 29.765438, 16.892555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.799990, 29.930840, 16.798908>,  <30.044214, 30.206511, 16.642832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799990, 29.930840, 16.798908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773779, 0.624100, -0.108469,
		-0.168765, -0.368150, -0.914321,
		-0.610561, -0.689177, 0.390193,
		29.616821, 29.724087, 16.915966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414001, 30.308731, 16.321465>,  <30.044214, 30.206511, 16.642832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414001, 30.308731, 16.321465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.328833, 30.100220, 16.652023>,  <29.277731, 29.975113, 16.850359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.328833, 30.100220, 16.652023>,  <29.414001, 30.308731, 16.321465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328833, 30.100220, 16.652023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838167, 0.532117, 0.119694,
		-0.502134, -0.667175, -0.550217,
		-0.212924, -0.521277, 0.826398,
		29.264956, 29.943836, 16.899942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.339508, 41.353115, 24.494444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.711075, 41.490421, 24.549984>,  <39.934017, 41.572803, 24.583307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.711075, 41.490421, 24.549984>,  <39.339508, 41.353115, 24.494444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711075, 41.490421, 24.549984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354193, -0.933056, -0.062882,
		0.107968, 0.107592, -0.988315,
		0.928919, 0.343265, 0.138848,
		39.989750, 41.593399, 24.591639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730728, 41.067375, 23.954468>,  <39.339508, 41.353115, 24.494444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730728, 41.067375, 23.954468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.987232, 41.164169, 24.245735>,  <40.141136, 41.222248, 24.420496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.987232, 41.164169, 24.245735>,  <39.730728, 41.067375, 23.954468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987232, 41.164169, 24.245735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368999, -0.929290, -0.016130,
		0.672775, 0.279036, -0.685210,
		0.641259, 0.241990, 0.728167,
		40.179611, 41.236767, 24.464186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327927, 40.806232, 23.773584>,  <39.730728, 41.067375, 23.954468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327927, 40.806232, 23.773584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.406761, 40.850910, 24.163185>,  <40.454063, 40.877716, 24.396946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.406761, 40.850910, 24.163185>,  <40.327927, 40.806232, 23.773584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406761, 40.850910, 24.163185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489807, -0.871830, 0.000865,
		0.849261, 0.476903, -0.226538,
		0.197090, 0.111695, 0.974002,
		40.465889, 40.884418, 24.455385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018082, 40.654202, 23.797991>,  <40.327927, 40.806232, 23.773584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018082, 40.654202, 23.797991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.891571, 40.596909, 24.173107>,  <40.815666, 40.562534, 24.398178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.891571, 40.596909, 24.173107>,  <41.018082, 40.654202, 23.797991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891571, 40.596909, 24.173107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382697, -0.923796, -0.012027,
		0.868051, 0.355086, 0.346987,
		-0.316275, -0.143231, 0.937793,
		40.796688, 40.553940, 24.454445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541515, 40.424942, 24.163582>,  <41.018082, 40.654202, 23.797991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541515, 40.424942, 24.163582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.235905, 40.317543, 24.398247>,  <41.052540, 40.253101, 24.539045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.235905, 40.317543, 24.398247>,  <41.541515, 40.424942, 24.163582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235905, 40.317543, 24.398247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458305, -0.865866, 0.200580,
		0.454114, 0.422118, 0.784600,
		-0.764027, -0.268500, 0.586661,
		41.006695, 40.236992, 24.574245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832653, 40.125679, 24.824093>,  <41.541515, 40.424942, 24.163582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832653, 40.125679, 24.824093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.461433, 39.981358, 24.787128>,  <41.238701, 39.894764, 24.764950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.461433, 39.981358, 24.787128>,  <41.832653, 40.125679, 24.824093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461433, 39.981358, 24.787128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348032, -0.928452, 0.129809,
		-0.132632, 0.088308, 0.987224,
		-0.928053, -0.360802, -0.092409,
		41.183018, 39.873116, 24.759405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690796, 39.670483, 25.373671>,  <41.832653, 40.125679, 24.824093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690796, 39.670483, 25.373671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.398968, 39.552856, 25.126690>,  <41.223869, 39.482281, 24.978500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.398968, 39.552856, 25.126690>,  <41.690796, 39.670483, 25.373671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398968, 39.552856, 25.126690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186739, -0.954185, 0.233792,
		-0.657916, 0.055266, 0.751061,
		-0.729572, -0.294068, -0.617454,
		41.180096, 39.464638, 24.941454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361000, 39.054459, 25.666182>,  <41.690796, 39.670483, 25.373671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361000, 39.054459, 25.666182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.272617, 39.023651, 25.277287>,  <41.219589, 39.005165, 25.043949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.272617, 39.023651, 25.277287>,  <41.361000, 39.054459, 25.666182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272617, 39.023651, 25.277287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150079, -0.987688, 0.044139,
		-0.963667, -0.136160, 0.229796,
		-0.220957, -0.077023, -0.972237,
		41.206329, 39.000546, 24.985615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010864, 38.414787, 25.617672>,  <41.361000, 39.054459, 25.666182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010864, 38.414787, 25.617672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.100235, 38.479530, 25.233196>,  <41.153858, 38.518375, 25.002512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.100235, 38.479530, 25.233196>,  <41.010864, 38.414787, 25.617672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100235, 38.479530, 25.233196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041117, -0.986803, -0.156617,
		-0.973853, -0.004528, -0.227136,
		0.223430, 0.161861, -0.961187,
		41.167263, 38.528088, 24.944839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464573, 38.216885, 25.142673>,  <41.010864, 38.414787, 25.617672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464573, 38.216885, 25.142673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796856, 38.205990, 24.920254>,  <40.996223, 38.199451, 24.786802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796856, 38.205990, 24.920254>,  <40.464573, 38.216885, 25.142673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796856, 38.205990, 24.920254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097980, -0.990365, -0.097859,
		-0.548026, 0.135774, -0.825369,
		0.830703, -0.027240, -0.556049,
		41.046066, 38.197819, 24.753439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195541, 37.839176, 24.566101>,  <40.464573, 38.216885, 25.142673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195541, 37.839176, 24.566101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595230, 37.851475, 24.575993>,  <40.835045, 37.858852, 24.581928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595230, 37.851475, 24.575993>,  <40.195541, 37.839176, 24.566101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595230, 37.851475, 24.575993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033047, -0.994567, -0.098716,
		0.021559, 0.099456, -0.994808,
		0.999221, 0.030747, 0.024729,
		40.894997, 37.860699, 24.583410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406445, 37.295761, 24.222681>,  <40.195541, 37.839176, 24.566101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406445, 37.295761, 24.222681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.756805, 37.377808, 24.397369>,  <40.967022, 37.427036, 24.502182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.756805, 37.377808, 24.397369>,  <40.406445, 37.295761, 24.222681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756805, 37.377808, 24.397369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250413, -0.966944, -0.048091,
		0.412422, 0.151484, -0.898310,
		0.875900, 0.205114, 0.436723,
		41.019577, 37.439342, 24.528387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786942, 36.990532, 23.834200>,  <40.406445, 37.295761, 24.222681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786942, 36.990532, 23.834200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978207, 37.013634, 24.184750>,  <41.092964, 37.027493, 24.395079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978207, 37.013634, 24.184750>,  <40.786942, 36.990532, 23.834200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978207, 37.013634, 24.184750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171248, -0.984815, -0.028536,
		0.861416, 0.163722, -0.480788,
		0.478159, 0.057753, 0.876372,
		41.121655, 37.030960, 24.447660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471367, 36.647652, 23.684536>,  <40.786942, 36.990532, 23.834200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471367, 36.647652, 23.684536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.389477, 36.643200, 24.076038>,  <41.340343, 36.640530, 24.310940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.389477, 36.643200, 24.076038>,  <41.471367, 36.647652, 23.684536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389477, 36.643200, 24.076038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153753, -0.987888, 0.020928,
		0.966669, 0.154771, 0.203953,
		-0.204722, -0.011128, 0.978757,
		41.328060, 36.639862, 24.369665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747868, 36.032467, 23.897064>,  <41.471367, 36.647652, 23.684536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747868, 36.032467, 23.897064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.512810, 36.128784, 24.206047>,  <41.371777, 36.186573, 24.391438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.512810, 36.128784, 24.206047>,  <41.747868, 36.032467, 23.897064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512810, 36.128784, 24.206047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166482, -0.970247, 0.175797,
		0.791807, -0.025294, 0.610247,
		-0.587644, 0.240793, 0.772459,
		41.336517, 36.201023, 24.437784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789948, 35.450047, 24.341694>,  <41.747868, 36.032467, 23.897064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789948, 35.450047, 24.341694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.478130, 35.626247, 24.519806>,  <41.291039, 35.731968, 24.626673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.478130, 35.626247, 24.519806>,  <41.789948, 35.450047, 24.341694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478130, 35.626247, 24.519806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310287, -0.889141, 0.336379,
		0.544089, 0.124058, 0.829805,
		-0.779544, 0.440498, 0.445278,
		41.244267, 35.758396, 24.653389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808434, 35.238701, 25.015488>,  <41.789948, 35.450047, 24.341694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808434, 35.238701, 25.015488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.424255, 35.311756, 24.931408>,  <41.193748, 35.355591, 24.880960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.424255, 35.311756, 24.931408>,  <41.808434, 35.238701, 25.015488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424255, 35.311756, 24.931408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258876, -0.863744, 0.432354,
		-0.102595, 0.469669, 0.876861,
		-0.960447, 0.182641, -0.210202,
		41.136120, 35.366547, 24.868347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531227, 35.167030, 25.713211>,  <41.808434, 35.238701, 25.015488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531227, 35.167030, 25.713211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230888, 35.114841, 25.454227>,  <41.050686, 35.083530, 25.298838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230888, 35.114841, 25.454227>,  <41.531227, 35.167030, 25.713211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230888, 35.114841, 25.454227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319537, -0.786177, 0.528982,
		-0.578033, 0.604073, 0.548610,
		-0.750848, -0.130468, -0.647460,
		41.005634, 35.075703, 25.259989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002975, 34.936096, 26.068815>,  <41.531227, 35.167030, 25.713211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002975, 34.936096, 26.068815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.831074, 34.861778, 25.715366>,  <40.727932, 34.817188, 25.503296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.831074, 34.861778, 25.715366>,  <41.002975, 34.936096, 26.068815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831074, 34.861778, 25.715366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528586, -0.741628, 0.413019,
		-0.732058, 0.644568, 0.220508,
		-0.429754, -0.185796, -0.883624,
		40.702148, 34.806038, 25.450279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322079, 34.817696, 26.198463>,  <41.002975, 34.936096, 26.068815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322079, 34.817696, 26.198463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.380730, 34.650684, 25.839760>,  <40.415920, 34.550476, 25.624538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.380730, 34.650684, 25.839760>,  <40.322079, 34.817696, 26.198463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380730, 34.650684, 25.839760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475235, -0.824813, 0.306327,
		-0.867556, 0.381255, -0.319360,
		0.146624, -0.417527, -0.896757,
		40.424717, 34.525425, 25.570732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793941, 34.362942, 26.154131>,  <40.322079, 34.817696, 26.198463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793941, 34.362942, 26.154131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.058079, 34.217133, 25.891506>,  <40.216560, 34.129646, 25.733931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.058079, 34.217133, 25.891506>,  <39.793941, 34.362942, 26.154131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058079, 34.217133, 25.891506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331797, -0.925944, 0.180383,
		-0.673694, 0.098731, -0.732386,
		0.660339, -0.364527, -0.656562,
		40.256180, 34.107773, 25.694538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002907, 34.559837, 25.945515>,  <39.793941, 34.362942, 26.154131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002907, 34.559837, 25.945515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.604187, 34.533405, 25.963493>,  <38.364956, 34.517544, 25.974279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.604187, 34.533405, 25.963493>,  <39.002907, 34.559837, 25.945515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604187, 34.533405, 25.963493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057606, 0.983918, 0.169077,
		-0.055395, 0.165947, -0.984578,
		-0.996801, -0.066084, 0.044945,
		38.305145, 34.513580, 25.976976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724953, 34.995243, 25.349186>,  <39.002907, 34.559837, 25.945515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724953, 34.995243, 25.349186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.470165, 34.970238, 25.656525>,  <38.317291, 34.955235, 25.840929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.470165, 34.970238, 25.656525>,  <38.724953, 34.995243, 25.349186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470165, 34.970238, 25.656525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093406, 0.983104, 0.157420,
		-0.765207, 0.172041, -0.620371,
		-0.636972, -0.062512, 0.768348,
		38.279072, 34.951485, 25.887030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369720, 35.745026, 25.463839>,  <38.724953, 34.995243, 25.349186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369720, 35.745026, 25.463839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.209400, 35.541813, 25.768803>,  <38.113209, 35.419888, 25.951780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.209400, 35.541813, 25.768803>,  <38.369720, 35.745026, 25.463839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209400, 35.541813, 25.768803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073054, 0.847246, 0.526153,
		-0.913248, 0.155185, -0.376689,
		-0.400799, -0.508027, 0.762409,
		38.089161, 35.389404, 25.997526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809708, 36.019001, 25.561560>,  <38.369720, 35.745026, 25.463839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809708, 36.019001, 25.561560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.913639, 35.848900, 25.908352>,  <37.975998, 35.746841, 26.116426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.913639, 35.848900, 25.908352>,  <37.809708, 36.019001, 25.561560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913639, 35.848900, 25.908352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161618, 0.866000, 0.473206,
		-0.952035, -0.263070, 0.156280,
		0.259824, -0.425251, 0.866979,
		37.991585, 35.721325, 26.168446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186214, 36.259544, 26.011791>,  <37.809708, 36.019001, 25.561560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186214, 36.259544, 26.011791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.528061, 36.152767, 26.189945>,  <37.733170, 36.088699, 26.296837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.528061, 36.152767, 26.189945>,  <37.186214, 36.259544, 26.011791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528061, 36.152767, 26.189945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064499, 0.905665, 0.419059,
		-0.515236, -0.329408, 0.791215,
		0.854618, -0.266947, 0.445385,
		37.784447, 36.072681, 26.323561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117367, 36.332668, 26.702244>,  <37.186214, 36.259544, 26.011791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117367, 36.332668, 26.702244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.516109, 36.361092, 26.688210>,  <37.755356, 36.378147, 26.679789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.516109, 36.361092, 26.688210>,  <37.117367, 36.332668, 26.702244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516109, 36.361092, 26.688210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035773, 0.798518, 0.600906,
		0.070715, -0.597761, 0.798549,
		0.996855, 0.071060, -0.035083,
		37.815166, 36.382408, 26.677685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283394, 36.546154, 27.328783>,  <37.117367, 36.332668, 26.702244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283394, 36.546154, 27.328783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628223, 36.617336, 27.138981>,  <37.835121, 36.660046, 27.025099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628223, 36.617336, 27.138981>,  <37.283394, 36.546154, 27.328783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628223, 36.617336, 27.138981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173666, 0.775889, 0.606495,
		0.476094, -0.605251, 0.637971,
		0.862076, 0.177955, -0.474507,
		37.886845, 36.670723, 26.996628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752937, 36.750908, 27.885798>,  <37.283394, 36.546154, 27.328783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752937, 36.750908, 27.885798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920547, 36.892685, 27.551422>,  <38.021114, 36.977753, 27.350798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920547, 36.892685, 27.551422>,  <37.752937, 36.750908, 27.885798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920547, 36.892685, 27.551422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191577, 0.865420, 0.462976,
		0.887535, -0.354144, 0.294726,
		0.419022, 0.354445, -0.835937,
		38.046253, 36.999020, 27.300642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394676, 37.043320, 28.041573>,  <37.752937, 36.750908, 27.885798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394676, 37.043320, 28.041573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.314857, 37.199390, 27.682030>,  <38.266968, 37.293034, 27.466303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.314857, 37.199390, 27.682030>,  <38.394676, 37.043320, 28.041573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314857, 37.199390, 27.682030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261642, 0.905217, 0.334851,
		0.944313, -0.168361, -0.282716,
		-0.199544, 0.390175, -0.898858,
		38.254993, 37.316444, 27.412373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960758, 37.501163, 27.882454>,  <38.394676, 37.043320, 28.041573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960758, 37.501163, 27.882454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.694405, 37.647182, 27.622196>,  <38.534592, 37.734795, 27.466042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.694405, 37.647182, 27.622196>,  <38.960758, 37.501163, 27.882454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694405, 37.647182, 27.622196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367837, 0.919386, 0.139373,
		0.649073, -0.146525, -0.746481,
		-0.665883, 0.365047, -0.650647,
		38.494640, 37.756695, 27.427002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314945, 37.909378, 27.359091>,  <38.960758, 37.501163, 27.882454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314945, 37.909378, 27.359091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.935455, 38.035763, 27.355350>,  <38.707760, 38.111591, 27.353107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.935455, 38.035763, 27.355350>,  <39.314945, 37.909378, 27.359091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935455, 38.035763, 27.355350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305138, 0.923156, 0.233825,
		0.082509, 0.218984, -0.972234,
		-0.948727, 0.315958, -0.009348,
		38.650837, 38.130550, 27.352547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296543, 38.537491, 26.927433>,  <39.314945, 37.909378, 27.359091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296543, 38.537491, 26.927433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961121, 38.558815, 27.144310>,  <38.759865, 38.571609, 27.274437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961121, 38.558815, 27.144310>,  <39.296543, 38.537491, 26.927433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961121, 38.558815, 27.144310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221028, 0.942912, 0.249126,
		-0.497959, 0.328748, -0.802472,
		-0.838560, 0.053315, 0.542194,
		38.709553, 38.574810, 27.306969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089020, 39.199890, 26.763899>,  <39.296543, 38.537491, 26.927433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089020, 39.199890, 26.763899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.923965, 39.081120, 27.108356>,  <38.824932, 39.009857, 27.315031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.923965, 39.081120, 27.108356>,  <39.089020, 39.199890, 26.763899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923965, 39.081120, 27.108356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056626, 0.935191, 0.349586,
		-0.909136, 0.193013, -0.369076,
		-0.412631, -0.296923, 0.861146,
		38.800175, 38.992043, 27.366701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564804, 39.654430, 26.876242>,  <39.089020, 39.199890, 26.763899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564804, 39.654430, 26.876242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.706779, 39.493141, 27.213627>,  <38.791965, 39.396366, 27.416058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.706779, 39.493141, 27.213627>,  <38.564804, 39.654430, 26.876242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706779, 39.493141, 27.213627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176942, 0.914872, 0.362907,
		-0.917994, 0.020436, 0.396067,
		0.354934, -0.403228, 0.843463,
		38.813259, 39.372173, 27.466665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586891, 40.207401, 27.313929>,  <38.564804, 39.654430, 26.876242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586891, 40.207401, 27.313929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.779423, 39.957848, 27.560207>,  <38.894943, 39.808113, 27.707975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.779423, 39.957848, 27.560207>,  <38.586891, 40.207401, 27.313929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779423, 39.957848, 27.560207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167465, 0.754935, 0.634058,
		-0.860392, -0.202085, 0.467854,
		0.481333, -0.623887, 0.615698,
		38.923824, 39.770683, 27.744917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248478, 40.278191, 27.933361>,  <38.586891, 40.207401, 27.313929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248478, 40.278191, 27.933361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.622902, 40.157784, 28.006218>,  <38.847557, 40.085541, 28.049932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.622902, 40.157784, 28.006218>,  <38.248478, 40.278191, 27.933361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622902, 40.157784, 28.006218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134124, 0.783904, 0.606223,
		-0.325264, -0.543033, 0.774157,
		0.936063, -0.301016, 0.182142,
		38.903721, 40.067478, 28.060860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363144, 40.655228, 28.501617>,  <38.248478, 40.278191, 27.933361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363144, 40.655228, 28.501617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.723938, 40.509418, 28.409061>,  <38.940414, 40.421932, 28.353527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.723938, 40.509418, 28.409061>,  <38.363144, 40.655228, 28.501617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723938, 40.509418, 28.409061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431315, 0.736345, 0.521308,
		-0.019646, -0.570016, 0.821398,
		0.901987, -0.364523, -0.231391,
		38.994534, 40.400063, 28.339643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758400, 40.675117, 29.133287>,  <38.363144, 40.655228, 28.501617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758400, 40.675117, 29.133287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982929, 40.696106, 28.802914>,  <39.117645, 40.708698, 28.604689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982929, 40.696106, 28.802914>,  <38.758400, 40.675117, 29.133287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982929, 40.696106, 28.802914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468389, 0.802632, 0.369316,
		0.682299, -0.594162, 0.425956,
		0.561320, 0.052471, -0.825934,
		39.151325, 40.711845, 28.555134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403492, 41.033176, 29.362082>,  <38.758400, 40.675117, 29.133287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403492, 41.033176, 29.362082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.442101, 41.052292, 28.964409>,  <39.465267, 41.063763, 28.725805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.442101, 41.052292, 28.964409>,  <39.403492, 41.033176, 29.362082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442101, 41.052292, 28.964409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522367, 0.847800, 0.091471,
		0.847240, -0.528158, 0.056868,
		0.096523, 0.047792, -0.994183,
		39.471058, 41.066631, 28.666155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133995, 41.230335, 29.253439>,  <39.403492, 41.033176, 29.362082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133995, 41.230335, 29.253439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.965103, 41.303825, 28.898369>,  <39.863770, 41.347919, 28.685326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.965103, 41.303825, 28.898369>,  <40.133995, 41.230335, 29.253439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965103, 41.303825, 28.898369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507741, 0.859152, -0.063689,
		0.750947, -0.477601, -0.456043,
		-0.422228, 0.183724, -0.887676,
		39.838436, 41.358944, 28.632067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693985, 41.433510, 28.835817>,  <40.133995, 41.230335, 29.253439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693985, 41.433510, 28.835817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.366421, 41.590542, 28.668358>,  <40.169884, 41.684761, 28.567883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.366421, 41.590542, 28.668358>,  <40.693985, 41.433510, 28.835817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366421, 41.590542, 28.668358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465488, 0.881022, -0.084380,
		0.335715, -0.263977, -0.904219,
		-0.818911, 0.392575, -0.418651,
		40.120747, 41.708313, 28.542763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.472256, 24.549301, 17.909595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.691349, 24.403843, 18.210991>,  <29.822805, 24.316568, 18.391829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.691349, 24.403843, 18.210991>,  <29.472256, 24.549301, 17.909595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691349, 24.403843, 18.210991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099261, -0.865997, -0.490099,
		0.830743, 0.343237, -0.438241,
		0.547735, -0.363646, 0.753490,
		29.855669, 24.294748, 18.437038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148914, 24.258879, 17.709072>,  <29.472256, 24.549301, 17.909595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148914, 24.258879, 17.709072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.054411, 24.086388, 18.057377>,  <29.997709, 23.982893, 18.266359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.054411, 24.086388, 18.057377>,  <30.148914, 24.258879, 17.709072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054411, 24.086388, 18.057377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061969, -0.900992, -0.429388,
		0.969712, -0.047486, 0.239589,
		-0.236258, -0.431229, 0.870760,
		29.983534, 23.957018, 18.318605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462788, 23.658649, 17.617073>,  <30.148914, 24.258879, 17.709072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462788, 23.658649, 17.617073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.230581, 23.591175, 17.935707>,  <30.091257, 23.550692, 18.126886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.230581, 23.591175, 17.935707>,  <30.462788, 23.658649, 17.617073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230581, 23.591175, 17.935707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016669, -0.975639, -0.218749,
		0.814078, -0.140266, 0.563562,
		-0.580516, -0.168685, 0.796584,
		30.056427, 23.540569, 18.174683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749580, 23.018499, 17.914734>,  <30.462788, 23.658649, 17.617073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749580, 23.018499, 17.914734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369797, 23.043610, 18.037754>,  <30.141926, 23.058676, 18.111567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369797, 23.043610, 18.037754>,  <30.749580, 23.018499, 17.914734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369797, 23.043610, 18.037754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094728, -0.991419, -0.090081,
		0.299256, -0.114662, 0.947258,
		-0.949459, 0.062774, 0.307550,
		30.084959, 23.062443, 18.130018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675613, 22.523630, 18.483070>,  <30.749580, 23.018499, 17.914734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675613, 22.523630, 18.483070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.300940, 22.579906, 18.354801>,  <30.076136, 22.613672, 18.277840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.300940, 22.579906, 18.354801>,  <30.675613, 22.523630, 18.483070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300940, 22.579906, 18.354801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112623, -0.988121, -0.104561,
		-0.331572, -0.061826, 0.941402,
		-0.936683, 0.140693, -0.320671,
		30.019934, 22.622114, 18.258600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297817, 21.973061, 18.869650>,  <30.675613, 22.523630, 18.483070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297817, 21.973061, 18.869650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.052076, 22.081108, 18.573109>,  <29.904633, 22.145937, 18.395184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.052076, 22.081108, 18.573109>,  <30.297817, 21.973061, 18.869650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052076, 22.081108, 18.573109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186542, -0.962663, -0.196171,
		-0.766663, 0.017775, 0.641803,
		-0.614353, 0.270120, -0.741354,
		29.867771, 22.162144, 18.350702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659330, 21.490639, 18.938461>,  <30.297817, 21.973061, 18.869650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659330, 21.490639, 18.938461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.689060, 21.619934, 18.561104>,  <29.706898, 21.697512, 18.334690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.689060, 21.619934, 18.561104>,  <29.659330, 21.490639, 18.938461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689060, 21.619934, 18.561104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033509, -0.944667, -0.326314,
		-0.996671, 0.055866, -0.059382,
		0.074326, 0.323238, -0.943394,
		29.711357, 21.716906, 18.278086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247013, 21.108133, 18.625378>,  <29.659330, 21.490639, 18.938461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247013, 21.108133, 18.625378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.392593, 21.271320, 18.290451>,  <29.479942, 21.369232, 18.089495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.392593, 21.271320, 18.290451>,  <29.247013, 21.108133, 18.625378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392593, 21.271320, 18.290451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047886, -0.905979, -0.420606,
		-0.930186, 0.112985, -0.349269,
		0.363953, 0.407966, -0.837318,
		29.501780, 21.393711, 18.039255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806904, 20.956894, 18.020065>,  <29.247013, 21.108133, 18.625378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806904, 20.956894, 18.020065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.176840, 21.028290, 17.885715>,  <29.398802, 21.071127, 17.805105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.176840, 21.028290, 17.885715>,  <28.806904, 20.956894, 18.020065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176840, 21.028290, 17.885715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002804, -0.879832, -0.475276,
		-0.380346, 0.440496, -0.813204,
		0.924840, 0.178489, -0.335875,
		29.454292, 21.081837, 17.784952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747730, 20.735519, 17.376217>,  <28.806904, 20.956894, 18.020065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747730, 20.735519, 17.376217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.129467, 20.732491, 17.495667>,  <29.358509, 20.730673, 17.567337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.129467, 20.732491, 17.495667>,  <28.747730, 20.735519, 17.376217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129467, 20.732491, 17.495667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111640, -0.918201, -0.380058,
		0.277075, 0.396043, -0.875431,
		0.954341, -0.007571, 0.298625,
		29.415770, 20.730219, 17.585255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104351, 20.300163, 16.893353>,  <28.747730, 20.735519, 17.376217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104351, 20.300163, 16.893353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.345470, 20.292973, 17.212429>,  <29.490143, 20.288658, 17.403875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.345470, 20.292973, 17.212429>,  <29.104351, 20.300163, 16.893353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345470, 20.292973, 17.212429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152979, -0.978595, -0.137654,
		0.783091, 0.205007, -0.587146,
		0.602798, -0.017974, 0.797691,
		29.526310, 20.287580, 17.451736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617558, 19.922590, 16.682676>,  <29.104351, 20.300163, 16.893353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617558, 19.922590, 16.682676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630798, 19.901222, 17.081886>,  <29.638742, 19.888401, 17.321411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630798, 19.901222, 17.081886>,  <29.617558, 19.922590, 16.682676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630798, 19.901222, 17.081886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051969, -0.997128, -0.055096,
		0.998100, 0.053690, -0.030229,
		0.033100, -0.053420, 0.998023,
		29.640728, 19.885197, 17.381294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189087, 19.496256, 16.912998>,  <29.617558, 19.922590, 16.682676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189087, 19.496256, 16.912998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.879997, 19.478809, 17.166294>,  <29.694544, 19.468342, 17.318272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.879997, 19.478809, 17.166294>,  <30.189087, 19.496256, 16.912998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879997, 19.478809, 17.166294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000696, -0.997578, -0.069560,
		0.634739, -0.054191, 0.770824,
		-0.772726, -0.043616, 0.633239,
		29.648180, 19.465725, 17.356266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753241, 19.275536, 16.452971>,  <30.189087, 19.496256, 16.912998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753241, 19.275536, 16.452971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.097754, 19.433247, 16.581181>,  <31.304462, 19.527872, 16.658106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.097754, 19.433247, 16.581181>,  <30.753241, 19.275536, 16.452971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097754, 19.433247, 16.581181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150765, 0.800686, -0.579804,
		-0.485241, 0.451053, 0.749061,
		0.861284, 0.394277, 0.320523,
		31.356138, 19.551529, 16.677338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710949, 19.989405, 16.672413>,  <30.753241, 19.275536, 16.452971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710949, 19.989405, 16.672413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.097012, 19.947536, 16.576485>,  <31.328650, 19.922415, 16.518927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.097012, 19.947536, 16.576485>,  <30.710949, 19.989405, 16.672413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097012, 19.947536, 16.576485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023660, 0.947666, -0.318385,
		0.260597, 0.301618, 0.917124,
		0.965158, -0.104670, -0.239823,
		31.386559, 19.916136, 16.504538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103582, 20.554321, 16.962297>,  <30.710949, 19.989405, 16.672413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103582, 20.554321, 16.962297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.344572, 20.418427, 16.673409>,  <31.489166, 20.336889, 16.500076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.344572, 20.418427, 16.673409>,  <31.103582, 20.554321, 16.962297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344572, 20.418427, 16.673409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328366, 0.930261, -0.163678,
		0.727461, -0.138542, 0.672016,
		0.602474, -0.339737, -0.722221,
		31.525314, 20.316505, 16.456741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638407, 20.922693, 17.067348>,  <31.103582, 20.554321, 16.962297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638407, 20.922693, 17.067348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693132, 20.814842, 16.686069>,  <31.725967, 20.750132, 16.457302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693132, 20.814842, 16.686069>,  <31.638407, 20.922693, 17.067348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693132, 20.814842, 16.686069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210121, 0.948248, -0.238067,
		0.968055, -0.167716, 0.186387,
		0.136813, -0.269626, -0.953197,
		31.734177, 20.733955, 16.400110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259335, 21.094252, 16.775402>,  <31.638407, 20.922693, 17.067348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259335, 21.094252, 16.775402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062157, 21.071892, 16.428097>,  <31.943851, 21.058475, 16.219713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062157, 21.071892, 16.428097>,  <32.259335, 21.094252, 16.775402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062157, 21.071892, 16.428097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161221, 0.974784, -0.154286,
		0.854995, -0.216036, -0.471500,
		-0.492942, -0.055898, -0.868265,
		31.914274, 21.055122, 16.167618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648148, 21.424601, 16.280603>,  <32.259335, 21.094252, 16.775402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648148, 21.424601, 16.280603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290466, 21.397453, 16.103611>,  <32.075855, 21.381165, 15.997416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290466, 21.397453, 16.103611>,  <32.648148, 21.424601, 16.280603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290466, 21.397453, 16.103611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030214, 0.977037, -0.210918,
		0.446636, -0.201973, -0.871621,
		-0.894205, -0.067868, -0.442482,
		32.022205, 21.377092, 15.970866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735256, 21.683285, 15.623919>,  <32.648148, 21.424601, 16.280603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735256, 21.683285, 15.623919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339745, 21.679890, 15.683583>,  <32.102440, 21.677853, 15.719381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339745, 21.679890, 15.683583>,  <32.735256, 21.683285, 15.623919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339745, 21.679890, 15.683583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051000, 0.957584, -0.283606,
		-0.140426, -0.288030, -0.947269,
		-0.988777, -0.008486, 0.149159,
		32.043110, 21.677343, 15.728331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399029, 21.943270, 14.932343>,  <32.735256, 21.683285, 15.623919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399029, 21.943270, 14.932343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155453, 21.989464, 15.246249>,  <32.009308, 22.017179, 15.434592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155453, 21.989464, 15.246249>,  <32.399029, 21.943270, 14.932343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155453, 21.989464, 15.246249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024859, 0.986080, -0.164400,
		-0.792827, -0.119618, -0.597593,
		-0.608940, 0.115486, 0.784765,
		31.972771, 22.024109, 15.481679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847557, 22.337305, 14.613329>,  <32.399029, 21.943270, 14.932343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847557, 22.337305, 14.613329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836592, 22.404217, 15.007541>,  <31.830013, 22.444365, 15.244067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836592, 22.404217, 15.007541>,  <31.847557, 22.337305, 14.613329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836592, 22.404217, 15.007541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073942, 0.982859, -0.168883,
		-0.996886, -0.077501, -0.014575,
		-0.027414, 0.167279, 0.985528,
		31.828367, 22.454401, 15.303199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533022, 23.047630, 14.758846>,  <31.847557, 22.337305, 14.613329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533022, 23.047630, 14.758846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649618, 22.990574, 15.137198>,  <31.719576, 22.956341, 15.364209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649618, 22.990574, 15.137198>,  <31.533022, 23.047630, 14.758846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649618, 22.990574, 15.137198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149346, 0.969908, 0.192287,
		-0.944844, -0.197313, 0.261415,
		0.291489, -0.142640, 0.945879,
		31.737064, 22.947783, 15.420962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047821, 23.463079, 15.161150>,  <31.533022, 23.047630, 14.758846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047821, 23.463079, 15.161150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349344, 23.414524, 15.419465>,  <31.530258, 23.385391, 15.574454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349344, 23.414524, 15.419465>,  <31.047821, 23.463079, 15.161150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349344, 23.414524, 15.419465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149256, 0.925470, 0.348179,
		-0.639921, -0.358848, 0.679507,
		0.753806, -0.121386, 0.645788,
		31.575485, 23.378109, 15.613201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811764, 23.614532, 15.773096>,  <31.047821, 23.463079, 15.161150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811764, 23.614532, 15.773096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.201031, 23.650684, 15.857739>,  <31.434591, 23.672377, 15.908525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.201031, 23.650684, 15.857739>,  <30.811764, 23.614532, 15.773096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201031, 23.650684, 15.857739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177998, 0.878481, 0.443383,
		-0.145822, -0.469152, 0.870995,
		0.973166, 0.090380, 0.211610,
		31.492981, 23.677799, 15.921223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915773, 23.641945, 16.546143>,  <30.811764, 23.614532, 15.773096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915773, 23.641945, 16.546143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219702, 23.829262, 16.365753>,  <31.402058, 23.941652, 16.257521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219702, 23.829262, 16.365753>,  <30.915773, 23.641945, 16.546143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219702, 23.829262, 16.365753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110380, 0.776509, 0.620363,
		0.640694, -0.421586, 0.641698,
		0.759820, 0.468294, -0.450970,
		31.447647, 23.969749, 16.230461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247869, 24.051691, 17.088669>,  <30.915773, 23.641945, 16.546143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247869, 24.051691, 17.088669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.373392, 24.199715, 16.738907>,  <31.448706, 24.288528, 16.529051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.373392, 24.199715, 16.738907>,  <31.247869, 24.051691, 17.088669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373392, 24.199715, 16.738907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215941, 0.924605, 0.313809,
		0.924605, 0.090343, 0.370060,
		-0.313809, -0.370060, 0.874403,
		31.467535, 24.310732, 16.476585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713751, 24.606138, 17.237141>,  <31.247869, 24.051691, 17.088669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713751, 24.606138, 17.237141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.603720, 24.682446, 16.860218>,  <31.537701, 24.728230, 16.634064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.603720, 24.682446, 16.860218>,  <31.713751, 24.606138, 17.237141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603720, 24.682446, 16.860218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335567, 0.899427, 0.280045,
		0.900959, 0.393241, -0.183398,
		-0.275078, 0.190767, -0.942306,
		31.521196, 24.739676, 16.577526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523785, 24.593420, 17.050915>,  <31.713751, 24.606138, 17.237141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523785, 24.593420, 17.050915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848721, 24.670162, 17.271206>,  <33.043682, 24.716208, 17.403381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848721, 24.670162, 17.271206>,  <32.523785, 24.593420, 17.050915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848721, 24.670162, 17.271206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138399, -0.980781, 0.137528,
		0.566530, -0.035498, -0.823277,
		0.812336, 0.191854, 0.550728,
		33.092422, 24.727718, 17.436424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051128, 24.109310, 16.867353>,  <32.523785, 24.593420, 17.050915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051128, 24.109310, 16.867353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184933, 24.234856, 17.222790>,  <33.265213, 24.310183, 17.436052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184933, 24.234856, 17.222790>,  <33.051128, 24.109310, 16.867353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184933, 24.234856, 17.222790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247930, -0.939002, 0.238339,
		0.909195, 0.140582, -0.391919,
		0.334507, 0.313865, 0.888591,
		33.285286, 24.329016, 17.489367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706944, 23.780220, 16.980577>,  <33.051128, 24.109310, 16.867353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706944, 23.780220, 16.980577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584663, 23.878201, 17.348610>,  <33.511295, 23.936989, 17.569429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584663, 23.878201, 17.348610>,  <33.706944, 23.780220, 16.980577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584663, 23.878201, 17.348610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319548, -0.883897, 0.341489,
		0.896905, 0.398402, 0.191930,
		-0.305696, 0.244952, 0.920081,
		33.492954, 23.951687, 17.624634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223320, 23.654348, 17.374170>,  <33.706944, 23.780220, 16.980577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223320, 23.654348, 17.374170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923035, 23.648140, 17.638348>,  <33.742863, 23.644415, 17.796854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923035, 23.648140, 17.638348>,  <34.223320, 23.654348, 17.374170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923035, 23.648140, 17.638348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241013, -0.937253, 0.251932,
		0.615090, 0.348305, 0.707353,
		-0.750717, -0.015520, 0.660441,
		33.697819, 23.643484, 17.836479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476414, 23.223745, 17.973673>,  <34.223320, 23.654348, 17.374170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476414, 23.223745, 17.973673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080147, 23.211510, 18.026791>,  <33.842384, 23.204168, 18.058661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080147, 23.211510, 18.026791>,  <34.476414, 23.223745, 17.973673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080147, 23.211510, 18.026791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043566, -0.994432, 0.095953,
		0.129118, 0.100843, 0.986488,
		-0.990672, -0.030589, 0.132792,
		33.782944, 23.202333, 18.066628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435917, 22.885405, 18.654757>,  <34.476414, 23.223745, 17.973673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435917, 22.885405, 18.654757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085007, 22.837917, 18.468731>,  <33.874458, 22.809425, 18.357115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085007, 22.837917, 18.468731>,  <34.435917, 22.885405, 18.654757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085007, 22.837917, 18.468731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005931, -0.971535, 0.236821,
		-0.479944, 0.205000, 0.853012,
		-0.877279, -0.118720, -0.465066,
		33.821823, 22.802301, 18.329210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065117, 22.420410, 19.117956>,  <34.435917, 22.885405, 18.654757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065117, 22.420410, 19.117956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910641, 22.399940, 18.749557>,  <33.817955, 22.387659, 18.528519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910641, 22.399940, 18.749557>,  <34.065117, 22.420410, 19.117956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910641, 22.399940, 18.749557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102292, -0.989926, 0.097897,
		-0.916730, 0.132018, 0.377065,
		-0.386190, -0.051174, -0.920999,
		33.794785, 22.384588, 18.473257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394981, 22.428440, 19.446192>,  <34.065117, 22.420410, 19.117956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394981, 22.428440, 19.446192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166214, 22.387520, 19.771755>,  <33.028954, 22.362967, 19.967093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166214, 22.387520, 19.771755>,  <33.394981, 22.428440, 19.446192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166214, 22.387520, 19.771755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268602, 0.960850, -0.067968,
		-0.775091, -0.257490, -0.577003,
		-0.571914, -0.102303, 0.813909,
		32.994640, 22.356829, 20.015928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710728, 22.790602, 19.345886>,  <33.394981, 22.428440, 19.446192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710728, 22.790602, 19.345886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785927, 22.773312, 19.738373>,  <32.831047, 22.762938, 19.973866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785927, 22.773312, 19.738373>,  <32.710728, 22.790602, 19.345886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785927, 22.773312, 19.738373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460609, 0.878477, 0.126954,
		-0.867465, -0.475825, 0.145244,
		0.188002, -0.043228, 0.981217,
		32.842327, 22.760344, 20.032738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195248, 23.219313, 19.566938>,  <32.710728, 22.790602, 19.345886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195248, 23.219313, 19.566938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433334, 23.191669, 19.887173>,  <32.576187, 23.175083, 20.079313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433334, 23.191669, 19.887173>,  <32.195248, 23.219313, 19.566938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433334, 23.191669, 19.887173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214867, 0.946329, 0.241440,
		-0.774303, -0.315729, 0.548425,
		0.595220, -0.069110, 0.800585,
		32.611900, 23.170937, 20.127348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770597, 23.476353, 20.162830>,  <32.195248, 23.219313, 19.566938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770597, 23.476353, 20.162830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156422, 23.505932, 20.264145>,  <32.387917, 23.523680, 20.324934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156422, 23.505932, 20.264145>,  <31.770597, 23.476353, 20.162830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156422, 23.505932, 20.264145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151792, 0.940690, 0.303416,
		-0.215826, -0.331110, 0.918578,
		0.964561, 0.073948, 0.253285,
		32.445789, 23.528116, 20.340130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853746, 23.760363, 20.913008>,  <31.770597, 23.476353, 20.162830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853746, 23.760363, 20.913008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207748, 23.835793, 20.742737>,  <32.420151, 23.881050, 20.640574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207748, 23.835793, 20.742737>,  <31.853746, 23.760363, 20.913008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207748, 23.835793, 20.742737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016270, 0.901215, 0.433067,
		0.465294, -0.390193, 0.794513,
		0.885007, 0.188577, -0.425678,
		32.473251, 23.892366, 20.615034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320152, 24.013573, 21.442747>,  <31.853746, 23.760363, 20.913008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320152, 24.013573, 21.442747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479202, 24.138542, 21.097660>,  <32.574631, 24.213524, 20.890608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479202, 24.138542, 21.097660>,  <32.320152, 24.013573, 21.442747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479202, 24.138542, 21.097660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130254, 0.911502, 0.390125,
		0.908249, -0.267501, 0.321757,
		0.397641, 0.312421, -0.862714,
		32.598488, 24.232269, 20.838844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898720, 24.401451, 21.691965>,  <32.320152, 24.013573, 21.442747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898720, 24.401451, 21.691965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.833344, 24.535297, 21.320736>,  <32.794117, 24.615606, 21.098000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.833344, 24.535297, 21.320736>,  <32.898720, 24.401451, 21.691965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833344, 24.535297, 21.320736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109036, 0.941086, 0.320108,
		0.980509, -0.048874, -0.190298,
		-0.163442, 0.334618, -0.928072,
		32.784309, 24.635683, 21.042315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.573874, 19.714115, 20.083775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.569639, 19.920807, 19.741341>,  <29.567099, 20.044823, 19.535881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.569639, 19.920807, 19.741341>,  <29.573874, 19.714115, 20.083775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569639, 19.920807, 19.741341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188095, 0.839819, 0.509238,
		0.982094, 0.166416, 0.088303,
		-0.010587, 0.516729, -0.856083,
		29.566463, 20.075825, 19.484516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945084, 20.395391, 20.161345>,  <29.573874, 19.714115, 20.083775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945084, 20.395391, 20.161345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.652555, 20.377811, 19.889099>,  <29.477039, 20.367264, 19.725752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.652555, 20.377811, 19.889099>,  <29.945084, 20.395391, 20.161345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652555, 20.377811, 19.889099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427636, 0.806948, 0.407385,
		0.531316, 0.588985, -0.608933,
		-0.731321, -0.043952, -0.680616,
		29.433159, 20.364626, 19.684914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804140, 21.049377, 20.128107>,  <29.945084, 20.395391, 20.161345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804140, 21.049377, 20.128107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.483038, 20.931358, 19.920826>,  <29.290377, 20.860548, 19.796457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.483038, 20.931358, 19.920826>,  <29.804140, 21.049377, 20.128107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483038, 20.931358, 19.920826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522607, 0.766602, 0.373100,
		0.287174, 0.570324, -0.769586,
		-0.802753, -0.295047, -0.518203,
		29.242212, 20.842844, 19.765366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562601, 21.539215, 19.676044>,  <29.804140, 21.049377, 20.128107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562601, 21.539215, 19.676044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.240728, 21.320366, 19.768257>,  <29.047606, 21.189056, 19.823586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.240728, 21.320366, 19.768257>,  <29.562601, 21.539215, 19.676044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240728, 21.320366, 19.768257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440522, 0.810530, 0.385980,
		-0.398033, 0.209036, -0.893238,
		-0.804680, -0.547124, 0.230533,
		28.999325, 21.156229, 19.837418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962788, 21.873220, 19.368492>,  <29.562601, 21.539215, 19.676044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962788, 21.873220, 19.368492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.821695, 21.641861, 19.662712>,  <28.737040, 21.503046, 19.839245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.821695, 21.641861, 19.662712>,  <28.962788, 21.873220, 19.368492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821695, 21.641861, 19.662712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586528, 0.749152, 0.307824,
		-0.729085, -0.322841, -0.603498,
		-0.352733, -0.578398, 0.735551,
		28.715876, 21.468342, 19.883377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262177, 22.186298, 19.437265>,  <28.962788, 21.873220, 19.368492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262177, 22.186298, 19.437265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373692, 21.988747, 19.766716>,  <28.440601, 21.870214, 19.964386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373692, 21.988747, 19.766716>,  <28.262177, 22.186298, 19.437265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373692, 21.988747, 19.766716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342361, 0.750169, 0.565717,
		-0.897255, -0.439692, 0.040052,
		0.278787, -0.493881, 0.823626,
		28.457327, 21.840582, 20.013803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749485, 22.458864, 19.843870>,  <28.262177, 22.186298, 19.437265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749485, 22.458864, 19.843870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.004499, 22.286949, 20.099628>,  <28.157509, 22.183800, 20.253084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.004499, 22.286949, 20.099628>,  <27.749485, 22.458864, 19.843870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004499, 22.286949, 20.099628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153687, 0.742303, 0.652201,
		-0.754934, -0.514070, 0.407194,
		0.637538, -0.429789, 0.639395,
		28.195761, 22.158012, 20.291447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330114, 22.473600, 20.473545>,  <27.749485, 22.458864, 19.843870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330114, 22.473600, 20.473545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.712692, 22.447147, 20.587276>,  <27.942238, 22.431274, 20.655516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.712692, 22.447147, 20.587276>,  <27.330114, 22.473600, 20.473545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712692, 22.447147, 20.587276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155884, 0.707789, 0.689010,
		-0.246811, -0.703321, 0.666651,
		0.956443, -0.066135, 0.284326,
		27.999626, 22.427307, 20.672575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259003, 22.659353, 21.221443>,  <27.330114, 22.473600, 20.473545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259003, 22.659353, 21.221443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.652206, 22.661934, 21.148064>,  <27.888128, 22.663483, 21.104036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.652206, 22.661934, 21.148064>,  <27.259003, 22.659353, 21.221443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652206, 22.661934, 21.148064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132288, 0.667951, 0.732354,
		0.127259, -0.744178, 0.655748,
		0.983008, 0.006451, -0.183449,
		27.947109, 22.663870, 21.093029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603277, 22.557293, 21.909220>,  <27.259003, 22.659353, 21.221443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603277, 22.557293, 21.909220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.846272, 22.720951, 21.636879>,  <27.992069, 22.819145, 21.473475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.846272, 22.720951, 21.636879>,  <27.603277, 22.557293, 21.909220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846272, 22.720951, 21.636879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265440, 0.703304, 0.659473,
		0.748668, -0.581346, 0.318643,
		0.607485, 0.409146, -0.680854,
		28.028519, 22.843695, 21.432623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224588, 22.788237, 22.243183>,  <27.603277, 22.557293, 21.909220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224588, 22.788237, 22.243183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.207096, 23.018787, 21.916779>,  <28.196602, 23.157118, 21.720936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.207096, 23.018787, 21.916779>,  <28.224588, 22.788237, 22.243183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207096, 23.018787, 21.916779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266029, 0.794022, 0.546586,
		0.962972, -0.193182, -0.188055,
		-0.043729, 0.576376, -0.816014,
		28.193977, 23.191700, 21.671974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536226, 23.352236, 22.448896>,  <28.224588, 22.788237, 22.243183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536226, 23.352236, 22.448896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.365471, 23.484737, 22.112316>,  <28.263018, 23.564238, 21.910368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.365471, 23.484737, 22.112316>,  <28.536226, 23.352236, 22.448896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365471, 23.484737, 22.112316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078271, 0.913468, 0.399312,
		0.900911, 0.236322, -0.364021,
		-0.426888, 0.331252, -0.841450,
		28.237404, 23.584112, 21.859880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298639, 23.322651, 22.494186>,  <28.536226, 23.352236, 22.448896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298639, 23.322651, 22.494186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.577602, 23.297249, 22.779728>,  <29.744980, 23.282007, 22.951054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.577602, 23.297249, 22.779728>,  <29.298639, 23.322651, 22.494186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577602, 23.297249, 22.779728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033261, -0.992125, -0.120756,
		0.715902, 0.107960, -0.689803,
		0.697408, -0.063506, 0.713855,
		29.786825, 23.278196, 22.993885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903881, 23.119076, 22.219532>,  <29.298639, 23.322651, 22.494186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903881, 23.119076, 22.219532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.874201, 23.017246, 22.605213>,  <29.856392, 22.956148, 22.836622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.874201, 23.017246, 22.605213>,  <29.903881, 23.119076, 22.219532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874201, 23.017246, 22.605213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165492, -0.956605, -0.239833,
		0.983416, 0.141772, 0.113111,
		-0.074201, -0.254574, 0.964202,
		29.851940, 22.940874, 22.894474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322399, 22.675396, 22.161886>,  <29.903881, 23.119076, 22.219532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322399, 22.675396, 22.161886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.168474, 22.616783, 22.526402>,  <30.076118, 22.581615, 22.745111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.168474, 22.616783, 22.526402>,  <30.322399, 22.675396, 22.161886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168474, 22.616783, 22.526402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234792, -0.970380, -0.056888,
		0.892632, 0.192072, 0.407819,
		-0.384813, -0.146533, 0.911289,
		30.053030, 22.572823, 22.799788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761030, 22.239143, 22.525200>,  <30.322399, 22.675396, 22.161886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761030, 22.239143, 22.525200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.402180, 22.187061, 22.694057>,  <30.186869, 22.155811, 22.795372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.402180, 22.187061, 22.694057>,  <30.761030, 22.239143, 22.525200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402180, 22.187061, 22.694057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045927, -0.977890, -0.204014,
		0.439376, -0.163639, 0.883273,
		-0.897128, -0.130205, 0.422146,
		30.133041, 22.148001, 22.820702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895695, 21.797249, 22.988379>,  <30.761030, 22.239143, 22.525200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895695, 21.797249, 22.988379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.508837, 21.749538, 22.898579>,  <30.276722, 21.720913, 22.844698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.508837, 21.749538, 22.898579>,  <30.895695, 21.797249, 22.988379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508837, 21.749538, 22.898579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159443, -0.972418, -0.170237,
		-0.198002, -0.200439, 0.959489,
		-0.967147, -0.119277, -0.224499,
		30.218693, 21.713755, 22.831228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561579, 21.199308, 23.371420>,  <30.895695, 21.797249, 22.988379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561579, 21.199308, 23.371420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.318966, 21.261173, 23.059471>,  <30.173399, 21.298292, 22.872303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.318966, 21.261173, 23.059471>,  <30.561579, 21.199308, 23.371420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318966, 21.261173, 23.059471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146795, -0.985817, -0.081340,
		-0.781390, 0.065146, 0.620633,
		-0.606531, 0.154664, -0.779871,
		30.137007, 21.307573, 22.825510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998688, 20.780821, 23.527662>,  <30.561579, 21.199308, 23.371420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998688, 20.780821, 23.527662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.973312, 20.848251, 23.134205>,  <29.958086, 20.888710, 22.898130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.973312, 20.848251, 23.134205>,  <29.998688, 20.780821, 23.527662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973312, 20.848251, 23.134205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022753, -0.985618, -0.167448,
		-0.997726, 0.011757, 0.066364,
		-0.063441, 0.168577, -0.983645,
		29.954281, 20.898825, 22.839111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604782, 20.257645, 23.280254>,  <29.998688, 20.780821, 23.527662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604782, 20.257645, 23.280254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.720917, 20.406620, 22.927666>,  <29.790598, 20.496004, 22.716112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.720917, 20.406620, 22.927666>,  <29.604782, 20.257645, 23.280254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720917, 20.406620, 22.927666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001050, -0.921276, -0.388908,
		-0.956924, 0.111988, -0.267870,
		0.290335, 0.372437, -0.881474,
		29.808018, 20.518351, 22.663223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084732, 19.946430, 22.772120>,  <29.604782, 20.257645, 23.280254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084732, 19.946430, 22.772120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.420685, 20.046524, 22.579464>,  <29.622257, 20.106581, 22.463871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.420685, 20.046524, 22.579464>,  <29.084732, 19.946430, 22.772120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420685, 20.046524, 22.579464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015943, -0.898374, -0.438942,
		-0.542531, 0.360982, -0.758519,
		0.839884, 0.250233, -0.481641,
		29.672649, 20.121593, 22.434971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098175, 19.595329, 22.050673>,  <29.084732, 19.946430, 22.772120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098175, 19.595329, 22.050673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.481377, 19.704659, 22.085365>,  <29.711298, 19.770256, 22.106180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.481377, 19.704659, 22.085365>,  <29.098175, 19.595329, 22.050673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481377, 19.704659, 22.085365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284350, -0.866385, -0.410515,
		-0.037061, 0.417937, -0.907720,
		0.958004, 0.273324, 0.086731,
		29.768778, 19.786655, 22.111385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340309, 19.398193, 21.407284>,  <29.098175, 19.595329, 22.050673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340309, 19.398193, 21.407284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.665565, 19.432060, 21.637634>,  <29.860720, 19.452381, 21.775845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.665565, 19.432060, 21.637634>,  <29.340309, 19.398193, 21.407284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665565, 19.432060, 21.637634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455859, -0.707827, -0.539605,
		0.361934, 0.701294, -0.614159,
		0.813139, 0.084669, 0.575878,
		29.909508, 19.457460, 21.810398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004818, 19.470873, 21.048475>,  <29.340309, 19.398193, 21.407284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004818, 19.470873, 21.048475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.097425, 19.334972, 21.413105>,  <30.152990, 19.253431, 21.631884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.097425, 19.334972, 21.413105>,  <30.004818, 19.470873, 21.048475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097425, 19.334972, 21.413105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733810, -0.554197, -0.392924,
		0.638688, 0.759891, 0.121006,
		0.231518, -0.339751, 0.911575,
		30.166882, 19.233047, 21.686577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649815, 19.564110, 21.061460>,  <30.004818, 19.470873, 21.048475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649815, 19.564110, 21.061460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.576637, 19.278011, 21.331261>,  <30.532730, 19.106352, 21.493141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.576637, 19.278011, 21.331261>,  <30.649815, 19.564110, 21.061460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576637, 19.278011, 21.331261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632133, -0.611034, -0.476493,
		0.752954, 0.339204, 0.563917,
		-0.182944, -0.715247, 0.674502,
		30.521753, 19.063437, 21.533611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297325, 19.243710, 21.244345>,  <30.649815, 19.564110, 21.061460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297325, 19.243710, 21.244345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.041313, 18.963940, 21.371571>,  <30.887707, 18.796078, 21.447906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.041313, 18.963940, 21.371571>,  <31.297325, 19.243710, 21.244345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041313, 18.963940, 21.371571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489518, -0.690258, -0.532837,
		0.592227, -0.185333, 0.784168,
		-0.640030, -0.699425, 0.318066,
		30.849304, 18.754112, 21.466990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329149, 19.877480, 20.716297>,  <31.297325, 19.243710, 21.244345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329149, 19.877480, 20.716297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.718496, 19.792301, 20.750259>,  <31.952105, 19.741194, 20.770638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.718496, 19.792301, 20.750259>,  <31.329149, 19.877480, 20.716297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718496, 19.792301, 20.750259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228845, 0.880651, -0.414831,
		0.013563, 0.423213, 0.905929,
		0.973368, -0.212944, 0.084906,
		32.010506, 19.728418, 20.775732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593678, 20.406069, 21.198622>,  <31.329149, 19.877480, 20.716297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593678, 20.406069, 21.198622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920969, 20.272541, 21.011402>,  <32.117344, 20.192425, 20.899071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920969, 20.272541, 21.011402>,  <31.593678, 20.406069, 21.198622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920969, 20.272541, 21.011402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254186, 0.940310, -0.226287,
		0.515650, 0.066183, 0.854239,
		0.818226, -0.333821, -0.468048,
		32.166435, 20.172396, 20.870987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127991, 20.745993, 21.517263>,  <31.593678, 20.406069, 21.198622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127991, 20.745993, 21.517263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.280521, 20.621792, 21.168968>,  <32.372040, 20.547272, 20.959991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.280521, 20.621792, 21.168968>,  <32.127991, 20.745993, 21.517263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280521, 20.621792, 21.168968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270156, 0.938216, -0.216254,
		0.884086, -0.152772, 0.441648,
		0.381323, -0.310501, -0.870736,
		32.394917, 20.528641, 20.907747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784607, 21.102880, 21.441492>,  <32.127991, 20.745993, 21.517263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784607, 21.102880, 21.441492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.694733, 20.994560, 21.067074>,  <32.640808, 20.929567, 20.842422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.694733, 20.994560, 21.067074>,  <32.784607, 21.102880, 21.441492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694733, 20.994560, 21.067074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407632, 0.846395, -0.342713,
		0.885072, -0.458565, -0.079785,
		-0.224685, -0.270802, -0.936046,
		32.627327, 20.913319, 20.786261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421612, 21.083107, 21.143314>,  <32.784607, 21.102880, 21.441492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421612, 21.083107, 21.143314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.168190, 21.141525, 20.839397>,  <33.016136, 21.176577, 20.657047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.168190, 21.141525, 20.839397>,  <33.421612, 21.083107, 21.143314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168190, 21.141525, 20.839397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459304, 0.861254, -0.217443,
		0.622618, -0.486737, -0.612727,
		-0.633551, 0.146045, -0.759792,
		32.978127, 21.185339, 20.611460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775303, 21.383217, 20.624918>,  <33.421612, 21.083107, 21.143314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775303, 21.383217, 20.624918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.396938, 21.459415, 20.519875>,  <33.169918, 21.505135, 20.456848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.396938, 21.459415, 20.519875>,  <33.775303, 21.383217, 20.624918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396938, 21.459415, 20.519875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272932, 0.904860, -0.326706,
		0.175386, -0.380709, -0.907910,
		-0.945911, 0.190498, -0.262607,
		33.113167, 21.516565, 20.441092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807747, 21.813824, 19.994484>,  <33.775303, 21.383217, 20.624918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807747, 21.813824, 19.994484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.431625, 21.863659, 20.121166>,  <33.205952, 21.893560, 20.197176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.431625, 21.863659, 20.121166>,  <33.807747, 21.813824, 19.994484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431625, 21.863659, 20.121166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070234, 0.981590, -0.177619,
		-0.333003, -0.144773, -0.931746,
		-0.940306, 0.124588, 0.316704,
		33.149532, 21.901035, 20.216177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491802, 21.735334, 19.186369>,  <33.807747, 21.813824, 19.994484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491802, 21.735334, 19.186369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.509037, 21.809441, 18.793671>,  <33.519379, 21.853905, 18.558052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.509037, 21.809441, 18.793671>,  <33.491802, 21.735334, 19.186369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509037, 21.809441, 18.793671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071156, -0.979592, -0.187981,
		-0.996534, 0.077956, -0.029024,
		0.043086, 0.185264, -0.981744,
		33.521961, 21.865021, 18.499147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145199, 21.208519, 18.971544>,  <33.491802, 21.735334, 19.186369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145199, 21.208519, 18.971544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356091, 21.335800, 18.656387>,  <33.482624, 21.412169, 18.467293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356091, 21.335800, 18.656387>,  <33.145199, 21.208519, 18.971544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356091, 21.335800, 18.656387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054058, -0.937917, -0.342621,
		-0.848001, 0.138048, -0.511700,
		0.527230, 0.318205, -0.787892,
		33.514259, 21.431261, 18.420019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865547, 20.940222, 18.392044>,  <33.145199, 21.208519, 18.971544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865547, 20.940222, 18.392044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.241703, 21.023399, 18.284393>,  <33.467396, 21.073305, 18.219803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.241703, 21.023399, 18.284393>,  <32.865547, 20.940222, 18.392044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241703, 21.023399, 18.284393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077421, -0.901423, -0.425960,
		-0.331174, 0.379732, -0.863787,
		0.940388, 0.207942, -0.269129,
		33.523819, 21.085783, 18.203655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918549, 20.649740, 17.752220>,  <32.865547, 20.940222, 18.392044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918549, 20.649740, 17.752220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304890, 20.676064, 17.852463>,  <33.536694, 20.691856, 17.912607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304890, 20.676064, 17.852463>,  <32.918549, 20.649740, 17.752220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304890, 20.676064, 17.852463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129882, -0.959880, -0.248516,
		0.224197, 0.272579, -0.935648,
		0.965850, 0.065807, 0.250606,
		33.594646, 20.695807, 17.927645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326469, 20.309191, 17.211498>,  <32.918549, 20.649740, 17.752220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326469, 20.309191, 17.211498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.543259, 20.307453, 17.547653>,  <33.673332, 20.306412, 17.749346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.543259, 20.307453, 17.547653>,  <33.326469, 20.309191, 17.211498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543259, 20.307453, 17.547653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147730, -0.983923, -0.100356,
		0.827311, 0.178540, -0.532617,
		0.541971, -0.004342, 0.840386,
		33.705849, 20.306150, 17.799768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810390, 19.904261, 17.019831>,  <33.326469, 20.309191, 17.211498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810390, 19.904261, 17.019831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.810184, 19.910583, 17.419781>,  <33.810062, 19.914377, 17.659750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.810184, 19.910583, 17.419781>,  <33.810390, 19.904261, 17.019831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810184, 19.910583, 17.419781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273531, -0.961741, 0.015344,
		0.961863, 0.273505, -0.003831,
		-0.000512, 0.015807, 0.999875,
		33.810032, 19.915325, 17.719744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306046, 19.442995, 17.146866>,  <33.810390, 19.904261, 17.019831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306046, 19.442995, 17.146866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115112, 19.473412, 17.497036>,  <34.000553, 19.491661, 17.707138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115112, 19.473412, 17.497036>,  <34.306046, 19.442995, 17.146866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115112, 19.473412, 17.497036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164823, -0.970818, 0.174198,
		0.863124, 0.227441, 0.450874,
		-0.477336, 0.076040, 0.875424,
		33.971912, 19.496223, 17.759663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783546, 19.140347, 17.610651>,  <34.306046, 19.442995, 17.146866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783546, 19.140347, 17.610651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.409733, 19.116531, 17.750999>,  <34.185444, 19.102243, 17.835209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.409733, 19.116531, 17.750999>,  <34.783546, 19.140347, 17.610651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409733, 19.116531, 17.750999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114632, -0.983720, 0.138397,
		0.336919, 0.169557, 0.926140,
		-0.934529, -0.059536, 0.350871,
		34.129375, 19.098671, 17.856260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804798, 18.636143, 18.168982>,  <34.783546, 19.140347, 17.610651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804798, 18.636143, 18.168982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419193, 18.658749, 18.065075>,  <34.187828, 18.672312, 18.002731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419193, 18.658749, 18.065075>,  <34.804798, 18.636143, 18.168982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419193, 18.658749, 18.065075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084309, -0.991695, 0.097125,
		-0.252118, 0.115531, 0.960775,
		-0.964017, 0.056515, -0.259765,
		34.129990, 18.675703, 17.987146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.109913, 33.997498, 20.201273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829588, 33.735573, 20.088074>,  <29.661392, 33.578419, 20.020155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829588, 33.735573, 20.088074>,  <30.109913, 33.997498, 20.201273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829588, 33.735573, 20.088074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712520, -0.623488, -0.321835,
		0.034295, -0.427186, 0.903513,
		-0.700813, -0.654809, -0.282996,
		29.619345, 33.539131, 20.003176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227264, 33.328438, 20.455744>,  <30.109913, 33.997498, 20.201273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227264, 33.328438, 20.455744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039597, 33.286057, 20.105053>,  <29.926996, 33.260628, 19.894638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039597, 33.286057, 20.105053>,  <30.227264, 33.328438, 20.455744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039597, 33.286057, 20.105053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611018, -0.755728, -0.235652,
		-0.637601, -0.646258, 0.419303,
		-0.469171, -0.105950, -0.876729,
		29.898846, 33.254272, 19.842033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339333, 32.505344, 20.386059>,  <30.227264, 33.328438, 20.455744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339333, 32.505344, 20.386059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210676, 32.664986, 20.042603>,  <30.133482, 32.760769, 19.836529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210676, 32.664986, 20.042603>,  <30.339333, 32.505344, 20.386059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210676, 32.664986, 20.042603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509961, -0.691055, -0.512233,
		-0.797802, -0.602628, 0.018745,
		-0.321640, 0.399101, -0.858642,
		30.114183, 32.784718, 19.785009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105026, 31.949265, 19.857265>,  <30.339333, 32.505344, 20.386059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105026, 31.949265, 19.857265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167547, 32.270378, 19.627098>,  <30.205059, 32.463047, 19.488998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167547, 32.270378, 19.627098>,  <30.105026, 31.949265, 19.857265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167547, 32.270378, 19.627098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528622, -0.560111, -0.637837,
		-0.834343, -0.204483, -0.511916,
		0.156302, 0.802785, -0.575419,
		30.214437, 32.511215, 19.454472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934679, 31.753256, 19.132057>,  <30.105026, 31.949265, 19.857265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934679, 31.753256, 19.132057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183695, 32.066269, 19.135754>,  <30.333105, 32.254078, 19.137972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183695, 32.066269, 19.135754>,  <29.934679, 31.753256, 19.132057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183695, 32.066269, 19.135754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653375, -0.513219, -0.556513,
		-0.430747, 0.352489, -0.830788,
		0.622541, 0.782533, 0.009240,
		30.370457, 32.301029, 19.138525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156446, 31.679571, 18.490404>,  <29.934679, 31.753256, 19.132057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156446, 31.679571, 18.490404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430803, 31.928886, 18.640636>,  <30.595417, 32.078476, 18.730776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430803, 31.928886, 18.640636>,  <30.156446, 31.679571, 18.490404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430803, 31.928886, 18.640636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689138, -0.390555, -0.610373,
		-0.233754, 0.677478, -0.697412,
		0.685892, 0.623290, 0.375582,
		30.636570, 32.115875, 18.753311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676018, 31.798855, 17.929338>,  <30.156446, 31.679571, 18.490404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676018, 31.798855, 17.929338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877590, 31.918949, 18.253292>,  <30.998533, 31.991007, 18.447664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877590, 31.918949, 18.253292>,  <30.676018, 31.798855, 17.929338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877590, 31.918949, 18.253292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793754, -0.530712, -0.297154,
		0.340598, 0.792593, -0.505757,
		0.503933, 0.300237, 0.809883,
		31.028770, 32.009022, 18.496258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382624, 31.957209, 17.727217>,  <30.676018, 31.798855, 17.929338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382624, 31.957209, 17.727217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429306, 31.882732, 18.117439>,  <31.457315, 31.838047, 18.351574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429306, 31.882732, 18.117439>,  <31.382624, 31.957209, 17.727217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429306, 31.882732, 18.117439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702630, -0.678740, -0.213595,
		0.701919, 0.710384, 0.051610,
		0.116704, -0.186189, 0.975558,
		31.464317, 31.826876, 18.410107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103512, 31.902660, 17.787992>,  <31.382624, 31.957209, 17.727217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103512, 31.902660, 17.787992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951693, 31.724346, 18.112270>,  <31.860601, 31.617357, 18.306837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951693, 31.724346, 18.112270>,  <32.103512, 31.902660, 17.787992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951693, 31.724346, 18.112270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627750, -0.767771, -0.128285,
		0.679613, 0.460223, 0.571245,
		-0.379546, -0.445783, 0.810693,
		31.837830, 31.590611, 18.355478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763744, 31.735178, 18.148203>,  <32.103512, 31.902660, 17.787992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763744, 31.735178, 18.148203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476196, 31.492119, 18.283257>,  <32.303669, 31.346283, 18.364288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476196, 31.492119, 18.283257>,  <32.763744, 31.735178, 18.148203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476196, 31.492119, 18.283257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624573, -0.777817, -0.070057,
		0.305186, 0.160515, 0.938667,
		-0.718867, -0.607647, 0.337632,
		32.260536, 31.309824, 18.384546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125526, 31.414900, 18.689537>,  <32.763744, 31.735178, 18.148203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125526, 31.414900, 18.689537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803646, 31.200584, 18.587250>,  <32.610519, 31.071995, 18.525877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803646, 31.200584, 18.587250>,  <33.125526, 31.414900, 18.689537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803646, 31.200584, 18.587250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582448, -0.795882, -0.165304,
		-0.114955, -0.281963, 0.952514,
		-0.804698, -0.535788, -0.255720,
		32.562237, 31.039848, 18.510534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209801, 30.890938, 19.053471>,  <33.125526, 31.414900, 18.689537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209801, 30.890938, 19.053471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965942, 30.773720, 18.758865>,  <32.819626, 30.703390, 18.582102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965942, 30.773720, 18.758865>,  <33.209801, 30.890938, 19.053471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965942, 30.773720, 18.758865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470617, -0.881483, -0.038830,
		-0.637847, -0.370289, 0.675305,
		-0.609649, -0.293043, -0.736515,
		32.783047, 30.685806, 18.537910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629650, 31.222553, 19.629045>,  <33.209801, 30.890938, 19.053471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629650, 31.222553, 19.629045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778172, 31.029770, 19.946499>,  <32.867283, 30.914101, 20.136971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778172, 31.029770, 19.946499>,  <32.629650, 31.222553, 19.629045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778172, 31.029770, 19.946499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337136, 0.866381, 0.368407,
		-0.865145, 0.130774, 0.484172,
		0.371299, -0.481957, 0.793634,
		32.889561, 30.885183, 20.184589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420265, 31.528191, 20.244068>,  <32.629650, 31.222553, 19.629045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420265, 31.528191, 20.244068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733597, 31.333572, 20.398819>,  <32.921597, 31.216801, 20.491669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733597, 31.333572, 20.398819>,  <32.420265, 31.528191, 20.244068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733597, 31.333572, 20.398819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340985, 0.856708, 0.387014,
		-0.519741, -0.171239, 0.836987,
		0.783325, -0.486547, 0.386876,
		32.968594, 31.187609, 20.514881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481915, 31.734936, 21.025923>,  <32.420265, 31.528191, 20.244068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481915, 31.734936, 21.025923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827271, 31.586590, 20.889091>,  <33.034485, 31.497581, 20.806993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827271, 31.586590, 20.889091>,  <32.481915, 31.734936, 21.025923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827271, 31.586590, 20.889091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493399, 0.762319, 0.418841,
		0.105438, -0.530403, 0.841163,
		0.863389, -0.370867, -0.342078,
		33.086288, 31.475330, 20.786469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858253, 31.682259, 21.534904>,  <32.481915, 31.734936, 21.025923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858253, 31.682259, 21.534904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116261, 31.718960, 21.231449>,  <33.271065, 31.740980, 21.049376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116261, 31.718960, 21.231449>,  <32.858253, 31.682259, 21.534904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116261, 31.718960, 21.231449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497930, 0.702610, 0.508335,
		0.579669, -0.705634, 0.407509,
		0.645019, 0.091755, -0.758638,
		33.309765, 31.746487, 21.003859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472412, 31.757631, 21.780844>,  <32.858253, 31.682259, 21.534904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472412, 31.757631, 21.780844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556000, 31.898735, 21.416012>,  <33.606152, 31.983398, 21.197113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556000, 31.898735, 21.416012>,  <33.472412, 31.757631, 21.780844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556000, 31.898735, 21.416012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641494, 0.654516, 0.400117,
		0.738118, -0.668706, -0.089522,
		0.208967, 0.352762, -0.912081,
		33.618690, 32.004562, 21.142387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266582, 31.857513, 21.735386>,  <33.472412, 31.757631, 21.780844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266582, 31.857513, 21.735386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081284, 32.078644, 21.458321>,  <33.970104, 32.211323, 21.292082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081284, 32.078644, 21.458321>,  <34.266582, 31.857513, 21.735386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081284, 32.078644, 21.458321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533432, 0.798082, 0.280208,
		0.707708, -0.239682, -0.664606,
		-0.463249, 0.552827, -0.692663,
		33.942310, 32.244492, 21.250521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827351, 32.177750, 21.574017>,  <34.266582, 31.857513, 21.735386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827351, 32.177750, 21.574017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512787, 32.366920, 21.415070>,  <34.324051, 32.480423, 21.319700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512787, 32.366920, 21.415070>,  <34.827351, 32.177750, 21.574017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512787, 32.366920, 21.415070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374570, 0.876628, 0.302028,
		0.491182, 0.088675, -0.866531,
		-0.786408, 0.472928, -0.397369,
		34.276863, 32.508801, 21.295858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047054, 32.751217, 21.191975>,  <34.827351, 32.177750, 21.574017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047054, 32.751217, 21.191975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683773, 32.830090, 21.339642>,  <34.465805, 32.877411, 21.428242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683773, 32.830090, 21.339642>,  <35.047054, 32.751217, 21.191975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683773, 32.830090, 21.339642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309530, 0.910145, 0.275368,
		-0.281699, 0.364359, -0.887631,
		-0.908205, 0.197178, 0.369167,
		34.411312, 32.889244, 21.450392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161346, 33.413910, 21.231617>,  <35.047054, 32.751217, 21.191975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161346, 33.413910, 21.231617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797436, 33.370480, 21.391876>,  <34.579090, 33.344421, 21.488031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797436, 33.370480, 21.391876>,  <35.161346, 33.413910, 21.231617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797436, 33.370480, 21.391876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052082, 0.927702, 0.369671,
		-0.411821, 0.357184, -0.838345,
		-0.909775, -0.108576, 0.400650,
		34.524502, 33.337906, 21.512072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881210, 34.087326, 21.117973>,  <35.161346, 33.413910, 21.231617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881210, 34.087326, 21.117973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673294, 33.906528, 21.407944>,  <34.548542, 33.798050, 21.581926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673294, 33.906528, 21.407944>,  <34.881210, 34.087326, 21.117973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673294, 33.906528, 21.407944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131408, 0.880774, 0.454939,
		-0.844125, 0.141214, -0.517216,
		-0.519794, -0.451992, 0.724926,
		34.517357, 33.770931, 21.625422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445435, 34.576302, 21.269754>,  <34.881210, 34.087326, 21.117973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445435, 34.576302, 21.269754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452404, 34.335968, 21.589428>,  <34.456585, 34.191769, 21.781233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452404, 34.335968, 21.589428>,  <34.445435, 34.576302, 21.269754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452404, 34.335968, 21.589428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051738, 0.797692, 0.600841,
		-0.998509, -0.051819, -0.017185,
		0.017427, -0.600834, 0.799184,
		34.457634, 34.155716, 21.829184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889889, 34.813789, 21.766582>,  <34.445435, 34.576302, 21.269754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889889, 34.813789, 21.766582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150742, 34.613930, 21.994644>,  <34.307255, 34.494015, 22.131481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150742, 34.613930, 21.994644>,  <33.889889, 34.813789, 21.766582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150742, 34.613930, 21.994644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052057, 0.720786, 0.691200,
		-0.756316, -0.480434, 0.444037,
		0.652132, -0.499651, 0.570152,
		34.346382, 34.464035, 22.165689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644367, 34.872200, 22.418308>,  <33.889889, 34.813789, 21.766582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644367, 34.872200, 22.418308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016415, 34.765812, 22.519608>,  <34.239643, 34.701977, 22.580387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016415, 34.765812, 22.519608>,  <33.644367, 34.872200, 22.418308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016415, 34.765812, 22.519608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079428, 0.527568, 0.845792,
		-0.358565, -0.806803, 0.469575,
		0.930119, -0.265974, 0.253250,
		34.295452, 34.686020, 22.595583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600437, 34.542664, 23.019426>,  <33.644367, 34.872200, 22.418308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600437, 34.542664, 23.019426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970882, 34.688683, 22.981384>,  <34.193150, 34.776295, 22.958559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970882, 34.688683, 22.981384>,  <33.600437, 34.542664, 23.019426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970882, 34.688683, 22.981384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136038, 0.558333, 0.818387,
		0.351852, -0.744985, 0.566743,
		0.926118, 0.365050, -0.095105,
		34.248718, 34.798199, 22.952852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654289, 33.873333, 23.443363>,  <33.600437, 34.542664, 23.019426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654289, 33.873333, 23.443363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437389, 33.909416, 23.777508>,  <33.307251, 33.931065, 23.977995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437389, 33.909416, 23.777508>,  <33.654289, 33.873333, 23.443363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437389, 33.909416, 23.777508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400028, -0.902025, -0.162262,
		0.738880, -0.422155, 0.525207,
		-0.542250, 0.090205, 0.835361,
		33.274715, 33.936478, 24.028116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834957, 33.312767, 23.882572>,  <33.654289, 33.873333, 23.443363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834957, 33.312767, 23.882572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464798, 33.418262, 23.991444>,  <33.242702, 33.481560, 24.056767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464798, 33.418262, 23.991444>,  <33.834957, 33.312767, 23.882572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464798, 33.418262, 23.991444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310890, -0.938984, -0.147163,
		0.216760, -0.220803, 0.950927,
		-0.925399, 0.263735, 0.272179,
		33.187180, 33.497383, 24.073097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607368, 32.804230, 24.326609>,  <33.834957, 33.312767, 23.882572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607368, 32.804230, 24.326609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274635, 32.971542, 24.180683>,  <33.074997, 33.071930, 24.093128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274635, 32.971542, 24.180683>,  <33.607368, 32.804230, 24.326609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274635, 32.971542, 24.180683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448482, -0.893789, -0.002186,
		-0.326982, 0.161795, 0.931077,
		-0.831833, 0.418286, -0.364815,
		33.025085, 33.097027, 24.071238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956882, 32.603321, 24.824125>,  <33.607368, 32.804230, 24.326609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956882, 32.603321, 24.824125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819828, 32.704292, 24.462158>,  <32.737595, 32.764874, 24.244978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819828, 32.704292, 24.462158>,  <32.956882, 32.603321, 24.824125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819828, 32.704292, 24.462158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427942, -0.899427, -0.088862,
		-0.836340, 0.356806, 0.416202,
		-0.342637, 0.252429, -0.904920,
		32.717037, 32.780022, 24.190681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181324, 32.491032, 24.769621>,  <32.956882, 32.603321, 24.824125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181324, 32.491032, 24.769621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359905, 32.487713, 24.411713>,  <32.467052, 32.485722, 24.196968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359905, 32.487713, 24.411713>,  <32.181324, 32.491032, 24.769621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359905, 32.487713, 24.411713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454906, -0.863199, -0.218973,
		-0.770546, 0.504796, -0.389152,
		0.446452, -0.008299, -0.894769,
		32.493839, 32.485222, 24.143282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641361, 32.194908, 24.321682>,  <32.181324, 32.491032, 24.769621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641361, 32.194908, 24.321682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998915, 32.155079, 24.146843>,  <32.213448, 32.131180, 24.041939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998915, 32.155079, 24.146843>,  <31.641361, 32.194908, 24.321682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998915, 32.155079, 24.146843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287316, -0.875694, -0.388083,
		-0.344121, 0.472487, -0.811380,
		0.893885, -0.099575, -0.437098,
		32.267078, 32.125206, 24.015713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458015, 31.875065, 23.708996>,  <31.641361, 32.194908, 24.321682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458015, 31.875065, 23.708996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850424, 31.807487, 23.747055>,  <32.085869, 31.766941, 23.769892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850424, 31.807487, 23.747055>,  <31.458015, 31.875065, 23.708996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850424, 31.807487, 23.747055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144663, -0.964489, -0.220983,
		0.129105, 0.203024, -0.970625,
		0.981022, -0.168944, 0.095150,
		32.144730, 31.756804, 23.775600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632660, 31.502188, 23.128609>,  <31.458015, 31.875065, 23.708996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632660, 31.502188, 23.128609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918421, 31.409470, 23.392700>,  <32.089878, 31.353840, 23.551155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918421, 31.409470, 23.392700>,  <31.632660, 31.502188, 23.128609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918421, 31.409470, 23.392700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164841, -0.972734, -0.163143,
		0.680043, 0.007716, -0.733131,
		0.714401, -0.231794, 0.660229,
		32.132740, 31.339931, 23.590769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942587, 30.868195, 22.929867>,  <31.632660, 31.502188, 23.128609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942587, 30.868195, 22.929867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056084, 30.867405, 23.313427>,  <32.124180, 30.866932, 23.543562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056084, 30.867405, 23.313427>,  <31.942587, 30.868195, 22.929867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056084, 30.867405, 23.313427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083041, -0.996292, 0.022520,
		0.955299, -0.086018, -0.282852,
		0.283741, -0.001975, 0.958899,
		32.141205, 30.866812, 23.601097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415371, 30.320295, 22.954437>,  <31.942587, 30.868195, 22.929867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415371, 30.320295, 22.954437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320316, 30.383987, 23.337723>,  <32.263283, 30.422203, 23.567694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320316, 30.383987, 23.337723>,  <32.415371, 30.320295, 22.954437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320316, 30.383987, 23.337723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190262, -0.974994, 0.114832,
		0.952538, -0.155023, 0.261990,
		-0.237637, 0.159228, 0.958214,
		32.249023, 30.431755, 23.625187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817066, 29.894224, 23.444952>,  <32.415371, 30.320295, 22.954437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817066, 29.894224, 23.444952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478973, 29.982685, 23.639545>,  <32.276115, 30.035761, 23.756302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478973, 29.982685, 23.639545>,  <32.817066, 29.894224, 23.444952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478973, 29.982685, 23.639545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211810, -0.974432, 0.074963,
		0.490624, -0.039681, 0.870467,
		-0.845236, 0.221153, 0.486485,
		32.225403, 30.049030, 23.785490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757290, 29.330299, 23.892668>,  <32.817066, 29.894224, 23.444952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757290, 29.330299, 23.892668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400230, 29.510056, 23.906704>,  <32.185997, 29.617908, 23.915127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400230, 29.510056, 23.906704>,  <32.757290, 29.330299, 23.892668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400230, 29.510056, 23.906704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447427, -0.892809, 0.051977,
		0.054688, 0.030696, 0.998032,
		-0.892647, 0.449389, 0.035092,
		32.132435, 29.644873, 23.917231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408974, 28.954731, 24.392391>,  <32.757290, 29.330299, 23.892668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408974, 28.954731, 24.392391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116661, 29.148289, 24.199810>,  <31.941273, 29.264423, 24.084261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116661, 29.148289, 24.199810>,  <32.408974, 28.954731, 24.392391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116661, 29.148289, 24.199810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584217, -0.808171, 0.074498,
		-0.353048, 0.335716, 0.873299,
		-0.730786, 0.483895, -0.481454,
		31.897425, 29.293457, 24.055374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817284, 28.857561, 24.861113>,  <32.408974, 28.954731, 24.392391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817284, 28.857561, 24.861113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721243, 28.932079, 24.480030>,  <31.663618, 28.976789, 24.251381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721243, 28.932079, 24.480030>,  <31.817284, 28.857561, 24.861113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721243, 28.932079, 24.480030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535200, -0.844186, -0.030195,
		-0.809884, 0.502638, 0.302395,
		-0.240100, 0.186296, -0.952704,
		31.649212, 28.987968, 24.194220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028500, 28.603304, 24.686504>,  <31.817284, 28.857561, 24.861113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028500, 28.603304, 24.686504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201344, 28.641182, 24.327770>,  <31.305050, 28.663908, 24.112530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201344, 28.641182, 24.327770>,  <31.028500, 28.603304, 24.686504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201344, 28.641182, 24.327770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488442, -0.811404, -0.321011,
		-0.758095, 0.576764, -0.304361,
		0.432108, 0.094694, -0.896837,
		31.330976, 28.669590, 24.058720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491573, 28.297316, 24.336018>,  <31.028500, 28.603304, 24.686504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491573, 28.297316, 24.336018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811525, 28.297138, 24.095955>,  <31.003496, 28.297031, 23.951918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811525, 28.297138, 24.095955>,  <30.491573, 28.297316, 24.336018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811525, 28.297138, 24.095955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299697, -0.866686, -0.398793,
		-0.519971, 0.498853, -0.693380,
		0.799882, -0.000443, -0.600157,
		31.051491, 28.297005, 23.915907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324951, 28.228241, 23.654633>,  <30.491573, 28.297316, 24.336018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324951, 28.228241, 23.654633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697369, 28.083900, 23.676334>,  <30.920818, 27.997295, 23.689356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697369, 28.083900, 23.676334>,  <30.324951, 28.228241, 23.654633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697369, 28.083900, 23.676334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306787, -0.854559, -0.419060,
		0.197581, 0.373518, -0.906336,
		0.931044, -0.360851, 0.054254,
		30.976683, 27.975645, 23.692610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265583, 27.754805, 23.081263>,  <30.324951, 28.228241, 23.654633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265583, 27.754805, 23.081263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615814, 27.688808, 23.262875>,  <30.825953, 27.649210, 23.371841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615814, 27.688808, 23.262875>,  <30.265583, 27.754805, 23.081263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615814, 27.688808, 23.262875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025865, -0.954530, -0.296990,
		0.482386, 0.248294, -0.840032,
		0.875577, -0.164991, 0.454030,
		30.878487, 27.639311, 23.399084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702999, 27.291763, 22.596893>,  <30.265583, 27.754805, 23.081263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702999, 27.291763, 22.596893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869125, 27.251846, 22.958569>,  <30.968801, 27.227896, 23.175573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869125, 27.251846, 22.958569>,  <30.702999, 27.291763, 22.596893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869125, 27.251846, 22.958569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020080, -0.994728, -0.100561,
		0.909457, 0.023609, -0.415128,
		0.415313, -0.099792, 0.904188,
		30.993719, 27.221909, 23.229824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187904, 26.767374, 22.544720>,  <30.702999, 27.291763, 22.596893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187904, 26.767374, 22.544720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130997, 26.763973, 22.940636>,  <31.096853, 26.761932, 23.178186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130997, 26.763973, 22.940636>,  <31.187904, 26.767374, 22.544720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130997, 26.763973, 22.940636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246095, -0.968261, -0.043687,
		0.958748, -0.249798, 0.135659,
		-0.142266, -0.008500, 0.989792,
		31.088316, 26.761423, 23.237574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489454, 26.157343, 22.689644>,  <31.187904, 26.767374, 22.544720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489454, 26.157343, 22.689644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239141, 26.251179, 22.987198>,  <31.088953, 26.307480, 23.165730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239141, 26.251179, 22.987198>,  <31.489454, 26.157343, 22.689644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239141, 26.251179, 22.987198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186818, -0.971020, 0.149061,
		0.757294, -0.045691, 0.651474,
		-0.625783, 0.234590, 0.743884,
		31.051407, 26.321556, 23.210363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613649, 25.639578, 23.322960>,  <31.489454, 26.157343, 22.689644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613649, 25.639578, 23.322960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237276, 25.771984, 23.351452>,  <31.011452, 25.851429, 23.368547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237276, 25.771984, 23.351452>,  <31.613649, 25.639578, 23.322960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237276, 25.771984, 23.351452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318423, -0.936601, 0.146237,
		0.115121, 0.114918, 0.986682,
		-0.940933, 0.331017, 0.071230,
		30.954996, 25.871288, 23.372820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323713, 25.381369, 23.925961>,  <31.613649, 25.639578, 23.322960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323713, 25.381369, 23.925961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011511, 25.482910, 23.697445>,  <30.824190, 25.543835, 23.560335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011511, 25.482910, 23.697445>,  <31.323713, 25.381369, 23.925961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011511, 25.482910, 23.697445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398988, -0.905799, 0.142606,
		-0.481272, 0.339242, 0.808265,
		-0.780504, 0.253855, -0.571289,
		30.777359, 25.559067, 23.526058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800686, 25.022276, 24.206482>,  <31.323713, 25.381369, 23.925961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800686, 25.022276, 24.206482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614344, 25.125759, 23.868004>,  <30.502539, 25.187849, 23.664917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614344, 25.125759, 23.868004>,  <30.800686, 25.022276, 24.206482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614344, 25.125759, 23.868004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505414, -0.862756, 0.014475,
		-0.726315, 0.434422, 0.532676,
		-0.465857, 0.258708, -0.846196,
		30.474586, 25.203371, 23.614145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134052, 24.884247, 24.350937>,  <30.800686, 25.022276, 24.206482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134052, 24.884247, 24.350937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177343, 24.882816, 23.953289>,  <30.203318, 24.881958, 23.714701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177343, 24.882816, 23.953289>,  <30.134052, 24.884247, 24.350937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177343, 24.882816, 23.953289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501368, -0.863701, -0.051476,
		-0.858438, 0.503991, -0.095270,
		0.108228, -0.003576, -0.994120,
		30.209812, 24.881742, 23.655052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539513, 24.636173, 24.111147>,  <30.134052, 24.884247, 24.350937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539513, 24.636173, 24.111147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786217, 24.590519, 23.799614>,  <29.934238, 24.563126, 23.612694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786217, 24.590519, 23.799614>,  <29.539513, 24.636173, 24.111147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786217, 24.590519, 23.799614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406576, -0.893420, -0.191039,
		-0.674022, 0.434480, -0.597429,
		0.616758, -0.114136, -0.778834,
		29.971245, 24.556278, 23.565964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196321, 24.292427, 23.658550>,  <29.539513, 24.636173, 24.111147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196321, 24.292427, 23.658550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568190, 24.209221, 23.536934>,  <29.791311, 24.159298, 23.463964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568190, 24.209221, 23.536934>,  <29.196321, 24.292427, 23.658550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568190, 24.209221, 23.536934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252514, -0.960759, -0.114796,
		-0.268232, 0.183497, -0.945717,
		0.929671, -0.208015, -0.304042,
		29.847092, 24.146816, 23.445721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052549, 23.873262, 23.008030>,  <29.196321, 24.292427, 23.658550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052549, 23.873262, 23.008030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422953, 23.780994, 23.127563>,  <29.645195, 23.725634, 23.199284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422953, 23.780994, 23.127563>,  <29.052549, 23.873262, 23.008030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422953, 23.780994, 23.127563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137886, -0.943577, -0.301080,
		0.351423, 0.237597, -0.905566,
		0.926007, -0.230672, 0.298834,
		29.700754, 23.711792, 23.217213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889114, 24.046442, 22.263687>,  <29.052549, 23.873262, 23.008030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889114, 24.046442, 22.263687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545263, 24.056576, 22.059570>,  <28.338953, 24.062656, 21.937099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545263, 24.056576, 22.059570>,  <28.889114, 24.046442, 22.263687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545263, 24.056576, 22.059570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143813, 0.946388, 0.289252,
		0.490264, 0.322036, -0.809897,
		-0.859627, 0.025337, -0.510293,
		28.287374, 24.064177, 21.906483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913982, 24.614985, 21.772871>,  <28.889114, 24.046442, 22.263687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913982, 24.614985, 21.772871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529659, 24.548317, 21.861481>,  <28.299067, 24.508316, 21.914646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529659, 24.548317, 21.861481>,  <28.913982, 24.614985, 21.772871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529659, 24.548317, 21.861481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141131, 0.981861, 0.126611,
		-0.238609, 0.090385, -0.966900,
		-0.960806, -0.166670, 0.221525,
		28.241417, 24.498316, 21.927938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630939, 25.082977, 21.296993>,  <28.913982, 24.614985, 21.772871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630939, 25.082977, 21.296993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332918, 24.986271, 21.545650>,  <28.154104, 24.928247, 21.694845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332918, 24.986271, 21.545650>,  <28.630939, 25.082977, 21.296993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332918, 24.986271, 21.545650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319003, 0.947654, -0.013779,
		-0.585773, -0.208573, -0.783178,
		-0.745055, -0.241765, 0.621645,
		28.109402, 24.913742, 21.732143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054924, 25.359777, 21.041552>,  <28.630939, 25.082977, 21.296993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054924, 25.359777, 21.041552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979616, 25.312168, 21.431503>,  <27.934431, 25.283602, 21.665474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979616, 25.312168, 21.431503>,  <28.054924, 25.359777, 21.041552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979616, 25.312168, 21.431503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339816, 0.939212, 0.049044,
		-0.921455, -0.322046, -0.217273,
		-0.188271, -0.119025, 0.974878,
		27.923136, 25.276461, 21.723967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365330, 25.478006, 21.109463>,  <28.054924, 25.359777, 21.041552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365330, 25.478006, 21.109463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537100, 25.550362, 21.463383>,  <27.640162, 25.593775, 21.675735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537100, 25.550362, 21.463383>,  <27.365330, 25.478006, 21.109463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537100, 25.550362, 21.463383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231785, 0.968993, -0.085608,
		-0.872853, -0.168322, 0.458035,
		0.429423, 0.180889, 0.884802,
		27.665926, 25.604628, 21.728823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
