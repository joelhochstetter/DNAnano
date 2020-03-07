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
	<35.786610, 52.578629, 50.486816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884411, 52.608032, 50.100075>,  <35.943092, 52.625675, 49.868031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884411, 52.608032, 50.100075>,  <35.786610, 52.578629, 50.486816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884411, 52.608032, 50.100075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941847, 0.219053, 0.254832,
		0.230526, -0.972940, -0.015676,
		0.244503, 0.073509, -0.966858,
		35.957760, 52.630085, 49.810017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163406, 51.982311, 50.254864>,  <35.786610, 52.578629, 50.486816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163406, 51.982311, 50.254864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280373, 52.307907, 50.054100>,  <36.350552, 52.503265, 49.933643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280373, 52.307907, 50.054100>,  <36.163406, 51.982311, 50.254864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280373, 52.307907, 50.054100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955591, -0.228633, 0.185937,
		0.036597, -0.533991, -0.844698,
		0.292414, 0.813990, -0.501910,
		36.368095, 52.552105, 49.903526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726673, 51.859474, 49.734497>,  <36.163406, 51.982311, 50.254864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726673, 51.859474, 49.734497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781776, 52.218956, 49.901035>,  <36.814838, 52.434647, 50.000957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781776, 52.218956, 49.901035>,  <36.726673, 51.859474, 49.734497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781776, 52.218956, 49.901035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924924, -0.267094, 0.270510,
		0.354314, 0.347827, -0.868031,
		0.137755, 0.898709, 0.416349,
		36.823105, 52.488567, 50.025940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369232, 52.291786, 49.491383>,  <36.726673, 51.859474, 49.734497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369232, 52.291786, 49.491383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284389, 52.447495, 49.849930>,  <37.233482, 52.540916, 50.065060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284389, 52.447495, 49.849930>,  <37.369232, 52.291786, 49.491383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284389, 52.447495, 49.849930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962175, -0.077276, 0.261241,
		0.170960, 0.917878, -0.358151,
		-0.212111, 0.389266, 0.896371,
		37.220757, 52.564274, 50.118839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783760, 52.948406, 49.648945>,  <37.369232, 52.291786, 49.491383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783760, 52.948406, 49.648945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675797, 52.755783, 49.982471>,  <37.611019, 52.640209, 50.182587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675797, 52.755783, 49.982471>,  <37.783760, 52.948406, 49.648945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675797, 52.755783, 49.982471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962176, -0.168157, 0.214339,
		0.036996, 0.860130, 0.508731,
		-0.269906, -0.481559, 0.833818,
		37.594826, 52.611317, 50.232616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062965, 53.377907, 50.211304>,  <37.783760, 52.948406, 49.648945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062965, 53.377907, 50.211304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993259, 52.984467, 50.229904>,  <37.951435, 52.748402, 50.241066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993259, 52.984467, 50.229904>,  <38.062965, 53.377907, 50.211304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993259, 52.984467, 50.229904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973178, -0.164833, 0.160484,
		-0.150187, 0.073223, 0.985942,
		-0.174267, -0.983600, 0.046503,
		37.940979, 52.689388, 50.243855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484184, 53.124275, 50.726147>,  <38.062965, 53.377907, 50.211304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484184, 53.124275, 50.726147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396332, 52.786129, 50.531364>,  <38.343620, 52.583241, 50.414497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396332, 52.786129, 50.531364>,  <38.484184, 53.124275, 50.726147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396332, 52.786129, 50.531364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937786, -0.320532, 0.133477,
		-0.268920, -0.427342, 0.863169,
		-0.219633, -0.845363, -0.486953,
		38.330441, 52.532520, 50.385277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665146, 52.420300, 51.087540>,  <38.484184, 53.124275, 50.726147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665146, 52.420300, 51.087540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689575, 52.410110, 50.688416>,  <38.704231, 52.403996, 50.448940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689575, 52.410110, 50.688416>,  <38.665146, 52.420300, 51.087540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689575, 52.410110, 50.688416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986422, -0.151149, 0.064231,
		-0.152454, -0.988183, 0.015896,
		0.061069, -0.025473, -0.997808,
		38.707897, 52.402470, 50.389072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982773, 51.823364, 50.717972>,  <38.665146, 52.420300, 51.087540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982773, 51.823364, 50.717972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061264, 52.179241, 50.553070>,  <39.108356, 52.392765, 50.454128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061264, 52.179241, 50.553070>,  <38.982773, 51.823364, 50.717972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061264, 52.179241, 50.553070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973320, -0.125737, 0.191932,
		0.118924, -0.438915, -0.890624,
		0.196226, 0.889688, -0.412252,
		39.120132, 52.446148, 50.429394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481678, 51.890171, 50.039783>,  <38.982773, 51.823364, 50.717972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481678, 51.890171, 50.039783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497700, 52.145927, 50.346920>,  <39.507313, 52.299381, 50.531200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497700, 52.145927, 50.346920>,  <39.481678, 51.890171, 50.039783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497700, 52.145927, 50.346920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947038, -0.269330, 0.174873,
		0.318614, 0.720167, -0.616315,
		0.040055, 0.639391, 0.767838,
		39.509716, 52.337746, 50.577271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115963, 52.056160, 50.106537>,  <39.481678, 51.890171, 50.039783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115963, 52.056160, 50.106537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973942, 52.077286, 50.479877>,  <39.888729, 52.089962, 50.703880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973942, 52.077286, 50.479877>,  <40.115963, 52.056160, 50.106537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973942, 52.077286, 50.479877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919137, -0.162536, 0.358844,
		0.170655, 0.985288, 0.009167,
		-0.355055, 0.052813, 0.933352,
		39.867424, 52.093128, 50.759884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398792, 52.638744, 50.488918>,  <40.115963, 52.056160, 50.106537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398792, 52.638744, 50.488918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307613, 52.333767, 50.731148>,  <40.252907, 52.150780, 50.876488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307613, 52.333767, 50.731148>,  <40.398792, 52.638744, 50.488918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307613, 52.333767, 50.731148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937750, -0.004526, 0.347281,
		-0.262040, 0.647041, 0.716011,
		-0.227946, -0.762441, 0.605577,
		40.239231, 52.105034, 50.912823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675930, 52.802498, 51.161488>,  <40.398792, 52.638744, 50.488918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675930, 52.802498, 51.161488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644463, 52.403797, 51.154575>,  <40.625584, 52.164577, 51.150429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644463, 52.403797, 51.154575>,  <40.675930, 52.802498, 51.161488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644463, 52.403797, 51.154575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870475, -0.077128, 0.486133,
		-0.485887, 0.023195, 0.873714,
		-0.078664, -0.996751, -0.017285,
		40.620865, 52.104771, 51.149391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706478, 52.455551, 51.891884>,  <40.675930, 52.802498, 51.161488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706478, 52.455551, 51.891884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849037, 52.237869, 51.588089>,  <40.934574, 52.107262, 51.405811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849037, 52.237869, 51.588089>,  <40.706478, 52.455551, 51.891884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849037, 52.237869, 51.588089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917455, 0.050026, 0.394682,
		-0.176794, -0.837460, 0.517112,
		0.356400, -0.544204, -0.759487,
		40.955956, 52.074608, 51.360241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946842, 51.862804, 52.220310>,  <40.706478, 52.455551, 51.891884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946842, 51.862804, 52.220310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146679, 51.935631, 51.881546>,  <41.266582, 51.979328, 51.678288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146679, 51.935631, 51.881546>,  <40.946842, 51.862804, 52.220310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146679, 51.935631, 51.881546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843166, 0.122033, 0.523622,
		0.198687, -0.975683, -0.092549,
		0.499595, 0.182071, -0.846909,
		41.296558, 51.990253, 51.627472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503498, 51.374409, 52.132561>,  <40.946842, 51.862804, 52.220310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503498, 51.374409, 52.132561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530392, 51.736435, 51.964592>,  <41.546528, 51.953651, 51.863811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530392, 51.736435, 51.964592>,  <41.503498, 51.374409, 52.132561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530392, 51.736435, 51.964592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870573, 0.152396, 0.467844,
		0.487424, -0.397023, -0.777683,
		0.067229, 0.905068, -0.419919,
		41.550560, 52.007954, 51.838615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250099, 51.495827, 51.774143>,  <41.503498, 51.374409, 52.132561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250099, 51.495827, 51.774143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063511, 51.821976, 51.911293>,  <41.951557, 52.017666, 51.993584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063511, 51.821976, 51.911293>,  <42.250099, 51.495827, 51.774143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063511, 51.821976, 51.911293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805727, 0.231746, 0.545067,
		0.364974, 0.530524, -0.765074,
		-0.466474, 0.815376, 0.342877,
		41.923569, 52.066589, 52.014156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750816, 51.933945, 51.805489>,  <42.250099, 51.495827, 51.774143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750816, 51.933945, 51.805489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454414, 52.093159, 52.021812>,  <42.276573, 52.188686, 52.151608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454414, 52.093159, 52.021812>,  <42.750816, 51.933945, 51.805489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454414, 52.093159, 52.021812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671495, 0.437197, 0.598292,
		0.001697, 0.806492, -0.591243,
		-0.741007, 0.398032, 0.540813,
		42.232113, 52.212570, 52.184055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877785, 52.728096, 52.017857>,  <42.750816, 51.933945, 51.805489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877785, 52.728096, 52.017857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707474, 52.475410, 52.276981>,  <42.605286, 52.323799, 52.432457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707474, 52.475410, 52.276981>,  <42.877785, 52.728096, 52.017857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707474, 52.475410, 52.276981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697687, 0.226671, 0.679598,
		-0.576148, 0.741325, 0.344224,
		-0.425777, -0.631710, 0.647809,
		42.579739, 52.285896, 52.471325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704952, 53.009678, 52.585693>,  <42.877785, 52.728096, 52.017857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704952, 53.009678, 52.585693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773544, 52.631378, 52.696075>,  <42.814701, 52.404400, 52.762306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773544, 52.631378, 52.696075>,  <42.704952, 53.009678, 52.585693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773544, 52.631378, 52.696075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780691, 0.301305, 0.547481,
		-0.600928, 0.121555, 0.790007,
		0.171484, -0.945748, 0.275959,
		42.824989, 52.347652, 52.778862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653980, 52.871830, 53.397434>,  <42.704952, 53.009678, 52.585693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653980, 52.871830, 53.397434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950298, 52.711349, 53.181931>,  <43.128090, 52.615063, 53.052628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950298, 52.711349, 53.181931>,  <42.653980, 52.871830, 53.397434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950298, 52.711349, 53.181931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649689, 0.224179, 0.726394,
		-0.170652, -0.888134, 0.426727,
		0.740798, -0.401200, -0.538755,
		43.172539, 52.590988, 53.020306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053852, 52.335144, 53.718327>,  <42.653980, 52.871830, 53.397434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053852, 52.335144, 53.718327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306805, 52.498188, 53.454826>,  <43.458576, 52.596016, 53.296726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306805, 52.498188, 53.454826>,  <43.053852, 52.335144, 53.718327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306805, 52.498188, 53.454826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595358, 0.288340, 0.749940,
		0.495626, -0.866438, -0.060333,
		0.632380, 0.407609, -0.658749,
		43.496517, 52.620472, 53.257202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689007, 51.915813, 53.754978>,  <43.053852, 52.335144, 53.718327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689007, 51.915813, 53.754978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733875, 52.290695, 53.622879>,  <43.760796, 52.515625, 53.543621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733875, 52.290695, 53.622879>,  <43.689007, 51.915813, 53.754978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733875, 52.290695, 53.622879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633720, 0.188512, 0.750241,
		0.765385, -0.293442, -0.572780,
		0.112176, 0.937206, -0.330244,
		43.767529, 52.571857, 53.523808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448696, 52.092899, 53.606522>,  <43.689007, 51.915813, 53.754978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448696, 52.092899, 53.606522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242863, 52.424324, 53.694786>,  <44.119362, 52.623180, 53.747746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242863, 52.424324, 53.694786>,  <44.448696, 52.092899, 53.606522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242863, 52.424324, 53.694786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600579, 0.164618, 0.782436,
		0.611973, 0.535149, -0.582327,
		-0.514581, 0.828563, 0.220657,
		44.088490, 52.672894, 53.760983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949883, 52.645458, 53.641403>,  <44.448696, 52.092899, 53.606522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949883, 52.645458, 53.641403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645481, 52.691681, 53.896751>,  <44.462841, 52.719414, 54.049961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645481, 52.691681, 53.896751>,  <44.949883, 52.645458, 53.641403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645481, 52.691681, 53.896751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648637, 0.153487, 0.745461,
		-0.011840, 0.981371, -0.191757,
		-0.761006, 0.115554, 0.638371,
		44.417179, 52.726349, 54.088264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868721, 53.292145, 53.920456>,  <44.949883, 52.645458, 53.641403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868721, 53.292145, 53.920456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742146, 53.025475, 54.190392>,  <44.666203, 52.865471, 54.352352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742146, 53.025475, 54.190392>,  <44.868721, 53.292145, 53.920456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742146, 53.025475, 54.190392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754145, 0.254745, 0.605286,
		-0.575442, 0.700462, 0.422161,
		-0.316436, -0.666677, 0.674840,
		44.647213, 52.825470, 54.392845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725365, 53.621193, 54.620247>,  <44.868721, 53.292145, 53.920456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725365, 53.621193, 54.620247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892754, 53.258499, 54.599449>,  <44.993187, 53.040882, 54.586971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892754, 53.258499, 54.599449>,  <44.725365, 53.621193, 54.620247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892754, 53.258499, 54.599449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691550, 0.281006, 0.665428,
		-0.588759, -0.314420, 0.744649,
		0.418475, -0.906739, -0.051992,
		45.018295, 52.986477, 54.583851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704018, 53.353409, 55.311096>,  <44.725365, 53.621193, 54.620247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704018, 53.353409, 55.311096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989601, 53.234791, 55.057381>,  <45.160950, 53.163620, 54.905151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989601, 53.234791, 55.057381>,  <44.704018, 53.353409, 55.311096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989601, 53.234791, 55.057381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691706, 0.439296, 0.573203,
		0.108664, -0.847987, 0.518758,
		0.713957, -0.296542, -0.634293,
		45.203789, 53.145828, 54.867092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196938, 53.093063, 55.700584>,  <44.704018, 53.353409, 55.311096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196938, 53.093063, 55.700584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375725, 53.191055, 55.356445>,  <45.482998, 53.249851, 55.149960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375725, 53.191055, 55.356445>,  <45.196938, 53.093063, 55.700584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375725, 53.191055, 55.356445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731556, 0.453407, 0.509163,
		0.514826, -0.856974, 0.023438,
		0.446967, 0.244984, -0.860351,
		45.509815, 53.264549, 55.098339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937332, 53.077709, 55.780769>,  <45.196938, 53.093063, 55.700584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937332, 53.077709, 55.780769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920990, 53.332802, 55.473099>,  <45.911182, 53.485855, 55.288498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920990, 53.332802, 55.473099>,  <45.937332, 53.077709, 55.780769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920990, 53.332802, 55.473099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833347, 0.446460, 0.325894,
		0.551238, -0.627675, -0.549692,
		-0.040860, 0.637729, -0.769176,
		45.908733, 53.524120, 55.242348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646545, 53.427593, 55.925777>,  <45.937332, 53.077709, 55.780769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646545, 53.427593, 55.925777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.738758, 53.681221, 56.221024>,  <46.794086, 53.833397, 56.398170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.738758, 53.681221, 56.221024>,  <46.646545, 53.427593, 55.925777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.738758, 53.681221, 56.221024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964219, -0.046803, -0.260944,
		-0.130912, 0.771857, -0.622173,
		0.230531, 0.634071, 0.738112,
		46.807919, 53.871441, 56.442455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315823, 53.633118, 56.001785>,  <46.646545, 53.427593, 55.925777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315823, 53.633118, 56.001785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622265, 53.499428, 55.782196>,  <47.806129, 53.419216, 55.650440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622265, 53.499428, 55.782196>,  <47.315823, 53.633118, 56.001785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.622265, 53.499428, 55.782196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596810, 0.686938, 0.414649,
		0.238527, -0.645300, 0.725736,
		0.766109, -0.334221, -0.548975,
		47.852097, 53.399162, 55.617504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.834534, 53.472767, 56.471062>,  <47.315823, 53.633118, 56.001785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.834534, 53.472767, 56.471062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.953285, 53.582081, 56.105072>,  <48.024536, 53.647667, 55.885479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.953285, 53.582081, 56.105072>,  <47.834534, 53.472767, 56.471062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.953285, 53.582081, 56.105072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769636, 0.498719, 0.398673,
		0.565267, -0.822554, -0.062271,
		0.296875, 0.273282, -0.914977,
		48.042347, 53.664066, 55.830578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.550808, 53.292034, 56.467060>,  <47.834534, 53.472767, 56.471062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.550808, 53.292034, 56.467060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.460564, 53.579193, 56.203629>,  <48.406418, 53.751488, 56.045570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.460564, 53.579193, 56.203629>,  <48.550808, 53.292034, 56.467060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.460564, 53.579193, 56.203629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769642, 0.545796, 0.331298,
		0.597285, -0.432122, -0.675664,
		-0.225613, 0.717898, -0.658575,
		48.392879, 53.794563, 56.006058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.163540, 53.383316, 55.985195>,  <48.550808, 53.292034, 56.467060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.163540, 53.383316, 55.985195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.937870, 53.712738, 56.008705>,  <48.802467, 53.910393, 56.022812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.937870, 53.712738, 56.008705>,  <49.163540, 53.383316, 55.985195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.937870, 53.712738, 56.008705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816739, 0.546236, 0.185911,
		0.121004, 0.152891, -0.980807,
		-0.564176, 0.823559, 0.058775,
		48.768616, 53.959805, 56.026337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.355408, 53.917458, 55.567631>,  <49.163540, 53.383316, 55.985195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.355408, 53.917458, 55.567631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.203838, 54.165646, 55.842278>,  <49.112896, 54.314556, 56.007065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.203838, 54.165646, 55.842278>,  <49.355408, 53.917458, 55.567631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.203838, 54.165646, 55.842278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897180, 0.428214, 0.108172,
		-0.226900, 0.657004, -0.718931,
		-0.378926, 0.620466, 0.686613,
		49.090160, 54.351784, 56.048260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.359306, 54.589561, 55.378647>,  <49.355408, 53.917458, 55.567631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.359306, 54.589561, 55.378647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.377251, 54.565643, 55.777527>,  <49.388016, 54.551292, 56.016857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.377251, 54.565643, 55.777527>,  <49.359306, 54.589561, 55.378647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.377251, 54.565643, 55.777527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930289, 0.366288, -0.019883,
		-0.364074, 0.928578, 0.072062,
		0.044859, -0.059800, 0.997202,
		49.390709, 54.547703, 56.076687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.583382, 55.245934, 55.623833>,  <49.359306, 54.589561, 55.378647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.583382, 55.245934, 55.623833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.732948, 55.005569, 55.906418>,  <49.822689, 54.861351, 56.075970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.732948, 55.005569, 55.906418>,  <49.583382, 55.245934, 55.623833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.732948, 55.005569, 55.906418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886849, 0.454593, -0.082727,
		-0.271443, 0.657463, 0.702895,
		0.373921, -0.600906, 0.706466,
		49.845123, 54.825298, 56.118359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.076355, 55.781212, 56.021004>,  <49.583382, 55.245934, 55.623833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.076355, 55.781212, 56.021004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.142860, 55.395542, 56.103676>,  <50.182762, 55.164139, 56.153278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.142860, 55.395542, 56.103676>,  <50.076355, 55.781212, 56.021004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.142860, 55.395542, 56.103676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981458, 0.182079, 0.059898,
		-0.095385, 0.192888, 0.976573,
		0.166260, -0.964179, 0.206679,
		50.192738, 55.106289, 56.165680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.427860, 55.887924, 56.534565>,  <50.076355, 55.781212, 56.021004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.427860, 55.887924, 56.534565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.514641, 55.545380, 56.347130>,  <50.566708, 55.339851, 56.234669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.514641, 55.545380, 56.347130>,  <50.427860, 55.887924, 56.534565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.514641, 55.545380, 56.347130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952988, 0.289818, -0.088433,
		0.211536, -0.427372, 0.878980,
		0.216950, -0.856364, -0.468587,
		50.579727, 55.288471, 56.206554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.128433, 55.743366, 56.824966>,  <50.427860, 55.887924, 56.534565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.128433, 55.743366, 56.824966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.050720, 55.520504, 56.502022>,  <51.004093, 55.386787, 56.308254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.050720, 55.520504, 56.502022>,  <51.128433, 55.743366, 56.824966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.050720, 55.520504, 56.502022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928275, 0.161647, -0.334925,
		0.317113, -0.814524, 0.485788,
		-0.194278, -0.557154, -0.807363,
		50.992435, 55.353359, 56.259811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.555611, 55.111263, 56.754662>,  <51.128433, 55.743366, 56.824966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.555611, 55.111263, 56.754662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.469566, 55.297523, 56.411293>,  <51.417938, 55.409279, 56.205273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.469566, 55.297523, 56.411293>,  <51.555611, 55.111263, 56.754662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.469566, 55.297523, 56.411293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958401, 0.269513, -0.093964,
		0.187602, -0.842929, -0.504259,
		-0.215110, 0.465654, -0.858425,
		51.405033, 55.437222, 56.153767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.934441, 54.906326, 56.136250>,  <51.555611, 55.111263, 56.754662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.934441, 54.906326, 56.136250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.807011, 55.284836, 56.114044>,  <51.730553, 55.511940, 56.100719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.807011, 55.284836, 56.114044>,  <51.934441, 54.906326, 56.136250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.807011, 55.284836, 56.114044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927777, 0.299273, -0.222858,
		-0.194270, -0.122501, -0.973269,
		-0.318573, 0.946271, -0.055513,
		51.711437, 55.568718, 56.097389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.929089, 55.202427, 55.473682>,  <51.934441, 54.906326, 56.136250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.929089, 55.202427, 55.473682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.988033, 55.476231, 55.759262>,  <52.023399, 55.640514, 55.930611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.988033, 55.476231, 55.759262>,  <51.929089, 55.202427, 55.473682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.988033, 55.476231, 55.759262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892620, 0.218888, -0.394103,
		-0.426044, 0.695363, -0.578754,
		0.147363, 0.684513, 0.713951,
		52.032242, 55.681583, 55.973446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.642181, 55.334827, 55.266636>,  <51.929089, 55.202427, 55.473682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.642181, 55.334827, 55.266636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.833172, 55.093925, 55.010727>,  <52.947765, 54.949383, 54.857182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.833172, 55.093925, 55.010727>,  <52.642181, 55.334827, 55.266636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.833172, 55.093925, 55.010727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843076, 0.519107, 0.140539,
		0.247469, -0.606478, 0.755608,
		0.477475, -0.602255, -0.639770,
		52.976414, 54.913250, 54.818794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.288078, 55.026878, 55.600758>,  <52.642181, 55.334827, 55.266636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.288078, 55.026878, 55.600758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.318352, 55.073147, 55.204597>,  <53.336517, 55.100910, 54.966900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.318352, 55.073147, 55.204597>,  <53.288078, 55.026878, 55.600758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.318352, 55.073147, 55.204597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890940, 0.438180, 0.119265,
		0.447769, -0.891413, -0.069894,
		0.075688, 0.115674, -0.990399,
		53.341057, 55.107849, 54.907478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.917553, 54.797134, 55.345615>,  <53.288078, 55.026878, 55.600758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.917553, 54.797134, 55.345615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.801590, 55.095825, 55.106163>,  <53.732010, 55.275040, 54.962494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.801590, 55.095825, 55.106163>,  <53.917553, 54.797134, 55.345615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.801590, 55.095825, 55.106163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782776, 0.544887, 0.300598,
		0.550648, -0.381444, -0.742487,
		-0.289910, 0.746725, -0.598627,
		53.714619, 55.319843, 54.926575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.459236, 55.056957, 54.972763>,  <53.917553, 54.797134, 55.345615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.459236, 55.056957, 54.972763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.207695, 55.367958, 54.970482>,  <54.056770, 55.554558, 54.969112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.207695, 55.367958, 54.970482>,  <54.459236, 55.056957, 54.972763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.207695, 55.367958, 54.970482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712198, 0.578943, 0.396987,
		0.311958, 0.245588, -0.917807,
		-0.628853, 0.777504, -0.005699,
		54.019039, 55.601208, 54.968773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.816753, 55.623947, 54.676285>,  <54.459236, 55.056957, 54.972763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.816753, 55.623947, 54.676285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.533020, 55.710957, 54.944473>,  <54.362782, 55.763165, 55.105385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.533020, 55.710957, 54.944473>,  <54.816753, 55.623947, 54.676285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.533020, 55.710957, 54.944473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654551, 0.556223, 0.512034,
		-0.261547, 0.802059, -0.536931,
		-0.709335, 0.217528, 0.670467,
		54.320221, 55.776215, 55.145615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.730312, 56.321426, 54.756561>,  <54.816753, 55.623947, 54.676285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.730312, 56.321426, 54.756561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.628708, 56.179100, 55.116310>,  <54.567745, 56.093704, 55.332161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.628708, 56.179100, 55.116310>,  <54.730312, 56.321426, 54.756561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.628708, 56.179100, 55.116310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584167, 0.684671, 0.435860,
		-0.770862, 0.636097, 0.033943,
		-0.254009, -0.355816, 0.899374,
		54.552505, 56.072353, 55.386124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.505890, 56.881546, 55.254696>,  <54.730312, 56.321426, 54.756561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.505890, 56.881546, 55.254696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.669556, 56.566284, 55.438606>,  <54.767757, 56.377129, 55.548954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.669556, 56.566284, 55.438606>,  <54.505890, 56.881546, 55.254696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.669556, 56.566284, 55.438606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684538, 0.598313, 0.416449,
		-0.603316, 0.144337, 0.784332,
		0.409167, -0.788155, 0.459776,
		54.792305, 56.329838, 55.576538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.507484, 57.005405, 55.916229>,  <54.505890, 56.881546, 55.254696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.507484, 57.005405, 55.916229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.829201, 56.805386, 55.787819>,  <55.022232, 56.685371, 55.710773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.829201, 56.805386, 55.787819>,  <54.507484, 57.005405, 55.916229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.829201, 56.805386, 55.787819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578343, 0.782816, 0.229604,
		0.136491, -0.370333, 0.918816,
		0.804294, -0.500052, -0.321027,
		55.070488, 56.655369, 55.691509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.978821, 56.824837, 56.512569>,  <54.507484, 57.005405, 55.916229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.978821, 56.824837, 56.512569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.139366, 56.912319, 56.156799>,  <55.235691, 56.964809, 55.943336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.139366, 56.912319, 56.156799>,  <54.978821, 56.824837, 56.512569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.139366, 56.912319, 56.156799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380766, 0.843341, 0.379202,
		0.833022, -0.490860, 0.255210,
		0.401363, 0.218708, -0.889423,
		55.259773, 56.977932, 55.889973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.763294, 56.873150, 56.581425>,  <54.978821, 56.824837, 56.512569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.763294, 56.873150, 56.581425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.511612, 57.116684, 56.388176>,  <55.360603, 57.262806, 56.272224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.511612, 57.116684, 56.388176>,  <55.763294, 56.873150, 56.581425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.511612, 57.116684, 56.388176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306378, 0.765553, 0.565739,
		0.714302, 0.207949, -0.668228,
		-0.629209, 0.608839, -0.483125,
		55.322849, 57.299335, 56.243237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.104927, 57.471474, 56.246975>,  <55.763294, 56.873150, 56.581425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.104927, 57.471474, 56.246975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.739655, 57.534153, 56.397469>,  <55.520493, 57.571758, 56.487762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.739655, 57.534153, 56.397469>,  <56.104927, 57.471474, 56.246975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.739655, 57.534153, 56.397469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375986, 0.680147, 0.629313,
		-0.157284, 0.716134, -0.680011,
		-0.913179, 0.156694, 0.376232,
		55.465702, 57.581161, 56.510338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.474556, 56.807644, 56.463551>,  <56.104927, 57.471474, 56.246975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.474556, 56.807644, 56.463551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.461563, 56.836365, 56.862305>,  <56.453770, 56.853600, 57.101559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.461563, 56.836365, 56.862305>,  <56.474556, 56.807644, 56.463551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.461563, 56.836365, 56.862305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967135, 0.253918, 0.013219,
		-0.252179, 0.964557, -0.077691,
		-0.032478, 0.071804, 0.996890,
		56.451820, 56.857906, 57.161373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.810230, 57.447166, 56.855030>,  <56.474556, 56.807644, 56.463551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.810230, 57.447166, 56.855030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.826477, 57.118706, 57.082733>,  <56.836224, 56.921627, 57.219357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.826477, 57.118706, 57.082733>,  <56.810230, 57.447166, 56.855030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.826477, 57.118706, 57.082733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988449, 0.116276, 0.097208,
		-0.146014, 0.558736, 0.816391,
		0.040613, -0.821154, 0.569259,
		56.838661, 56.872360, 57.253510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.088978, 57.623341, 57.499493>,  <56.810230, 57.447166, 56.855030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.088978, 57.623341, 57.499493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.141121, 57.235355, 57.417351>,  <57.172405, 57.002563, 57.368065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.141121, 57.235355, 57.417351>,  <57.088978, 57.623341, 57.499493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.141121, 57.235355, 57.417351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980300, 0.095096, 0.173118,
		-0.148390, -0.223874, 0.963255,
		0.130358, -0.969968, -0.205352,
		57.180229, 56.944366, 57.355743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.429321, 57.170403, 58.010323>,  <57.088978, 57.623341, 57.499493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.429321, 57.170403, 58.010323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.516838, 57.002754, 57.657852>,  <57.569347, 56.902164, 57.446369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.516838, 57.002754, 57.657852>,  <57.429321, 57.170403, 58.010323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.516838, 57.002754, 57.657852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973033, 0.026112, 0.229183,
		-0.073045, -0.907556, 0.413529,
		0.218794, -0.419118, -0.881175,
		57.582478, 56.877018, 57.393501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.721767, 56.451115, 58.138664>,  <57.429321, 57.170403, 58.010323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.721767, 56.451115, 58.138664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.838127, 56.656357, 57.815651>,  <57.907944, 56.779503, 57.621845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.838127, 56.656357, 57.815651>,  <57.721767, 56.451115, 58.138664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.838127, 56.656357, 57.815651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929906, 0.046908, 0.364793,
		0.225055, -0.857046, -0.463490,
		0.290903, 0.513101, -0.807529,
		57.925400, 56.810287, 57.573391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.259426, 56.200645, 57.634583>,  <57.721767, 56.451115, 58.138664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.259426, 56.200645, 57.634583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.285164, 56.595406, 57.693748>,  <58.300606, 56.832264, 57.729248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.285164, 56.595406, 57.693748>,  <58.259426, 56.200645, 57.634583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.285164, 56.595406, 57.693748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934458, -0.111601, 0.338131,
		0.350211, 0.116469, -0.929401,
		0.064341, 0.986904, 0.147919,
		58.304466, 56.891476, 57.738125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.817177, 56.433064, 57.247948>,  <58.259426, 56.200645, 57.634583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.817177, 56.433064, 57.247948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.777588, 56.650208, 57.581535>,  <58.753834, 56.780495, 57.781689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.777588, 56.650208, 57.581535>,  <58.817177, 56.433064, 57.247948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.777588, 56.650208, 57.581535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987603, -0.049025, 0.149121,
		0.121837, 0.838393, -0.531275,
		-0.098976, 0.542857, 0.833972,
		58.747894, 56.813065, 57.831726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.263279, 57.111038, 57.294174>,  <58.817177, 56.433064, 57.247948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.263279, 57.111038, 57.294174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.184120, 56.880745, 57.611504>,  <59.136623, 56.742569, 57.801903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.184120, 56.880745, 57.611504>,  <59.263279, 57.111038, 57.294174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.184120, 56.880745, 57.611504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976724, -0.184142, 0.110010,
		0.082747, 0.796629, 0.598777,
		-0.197897, -0.575737, 0.793324,
		59.124752, 56.708023, 57.849503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.415512, 57.356609, 57.981514>,  <59.263279, 57.111038, 57.294174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.415512, 57.356609, 57.981514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.457161, 56.958797, 57.984711>,  <59.482151, 56.720108, 57.986629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.457161, 56.958797, 57.984711>,  <59.415512, 57.356609, 57.981514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.457161, 56.958797, 57.984711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990708, 0.104422, 0.087148,
		-0.087506, -0.001158, 0.996163,
		0.104122, -0.994532, 0.007991,
		59.488400, 56.660439, 57.987106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.745499, 57.087814, 58.599346>,  <59.415512, 57.356609, 57.981514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.745499, 57.087814, 58.599346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.811989, 56.900623, 58.252159>,  <59.851883, 56.788307, 58.043846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.811989, 56.900623, 58.252159>,  <59.745499, 57.087814, 58.599346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.811989, 56.900623, 58.252159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972252, 0.224715, 0.065034,
		0.164611, -0.854694, 0.492343,
		0.166221, -0.467976, -0.867968,
		59.861855, 56.760231, 57.991768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.137611, 56.572388, 58.905872>,  <59.745499, 57.087814, 58.599346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.137611, 56.572388, 58.905872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.199356, 56.711510, 58.535965>,  <60.236404, 56.794983, 58.314018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.199356, 56.711510, 58.535965>,  <60.137611, 56.572388, 58.905872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.199356, 56.711510, 58.535965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951938, 0.198264, 0.233465,
		0.264549, -0.916364, -0.300484,
		0.154364, 0.347805, -0.924772,
		60.245667, 56.815849, 58.258533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.786686, 56.728893, 58.895180>,  <60.137611, 56.572388, 58.905872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.786686, 56.728893, 58.895180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.704262, 56.894047, 58.540314>,  <60.654808, 56.993141, 58.327393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.704262, 56.894047, 58.540314>,  <60.786686, 56.728893, 58.895180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.704262, 56.894047, 58.540314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959854, 0.261612, -0.101192,
		0.190312, -0.872401, -0.450221,
		-0.206063, 0.412888, -0.887165,
		60.642445, 57.017914, 58.274166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.342590, 56.663437, 58.343098>,  <60.786686, 56.728893, 58.895180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.342590, 56.663437, 58.343098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.110596, 56.944080, 58.177513>,  <60.971397, 57.112465, 58.078163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.110596, 56.944080, 58.177513>,  <61.342590, 56.663437, 58.343098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.110596, 56.944080, 58.177513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794935, 0.598502, -0.099372,
		0.178033, -0.386703, -0.904856,
		-0.579986, 0.701610, -0.413957,
		60.936600, 57.154564, 58.053326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.551193, 56.884083, 57.604546>,  <61.342590, 56.663437, 58.343098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.551193, 56.884083, 57.604546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.398598, 57.193645, 57.806747>,  <61.307041, 57.379383, 57.928066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.398598, 57.193645, 57.806747>,  <61.551193, 56.884083, 57.604546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.398598, 57.193645, 57.806747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904435, 0.425471, 0.031178,
		-0.190947, 0.469087, -0.862263,
		-0.381493, 0.773907, 0.505501,
		61.284149, 57.425819, 57.958397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.935570, 57.364189, 57.409931>,  <61.551193, 56.884083, 57.604546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.935570, 57.364189, 57.409931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.772736, 57.506413, 57.746468>,  <61.675034, 57.591747, 57.948391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.772736, 57.506413, 57.746468>,  <61.935570, 57.364189, 57.409931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.772736, 57.506413, 57.746468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891337, 0.355825, 0.280903,
		-0.199493, 0.864273, -0.461774,
		-0.407088, 0.355558, 0.841343,
		61.650608, 57.613079, 57.998871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.290409, 57.884232, 57.528736>,  <61.935570, 57.364189, 57.409931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.290409, 57.884232, 57.528736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.112831, 57.822872, 57.881866>,  <62.006283, 57.786057, 58.093746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.112831, 57.822872, 57.881866>,  <62.290409, 57.884232, 57.528736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.112831, 57.822872, 57.881866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825595, 0.312930, 0.469539,
		-0.348289, 0.937307, -0.012278,
		-0.443944, -0.153399, 0.882826,
		61.979649, 57.776852, 58.146713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.517971, 58.333179, 57.997295>,  <62.290409, 57.884232, 57.528736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.517971, 58.333179, 57.997295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.389694, 58.042160, 58.239891>,  <62.312729, 57.867550, 58.385448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.389694, 58.042160, 58.239891>,  <62.517971, 58.333179, 57.997295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.389694, 58.042160, 58.239891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724815, 0.223705, 0.651612,
		-0.609755, 0.648559, 0.455599,
		-0.320690, -0.727549, 0.606491,
		62.293488, 57.823895, 58.421837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.478321, 58.567516, 58.728157>,  <62.517971, 58.333179, 57.997295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.478321, 58.567516, 58.728157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.477501, 58.169056, 58.763199>,  <62.477009, 57.929977, 58.784222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.477501, 58.169056, 58.763199>,  <62.478321, 58.567516, 58.728157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.477501, 58.169056, 58.763199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731386, 0.058248, 0.679472,
		-0.681961, 0.065461, 0.728453,
		-0.002048, -0.996154, 0.087600,
		62.476887, 57.870209, 58.789478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.640255, 58.524647, 59.471027>,  <62.478321, 58.567516, 58.728157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.640255, 58.524647, 59.471027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.758781, 58.247787, 59.207779>,  <62.829895, 58.081673, 59.049831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.758781, 58.247787, 59.207779>,  <62.640255, 58.524647, 59.471027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.758781, 58.247787, 59.207779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762519, -0.243491, 0.599397,
		-0.575121, -0.679439, 0.455629,
		0.296313, -0.692152, -0.658122,
		62.847675, 58.040142, 59.010342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.646858, 57.712395, 59.750935>,  <62.640255, 58.524647, 59.471027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.646858, 57.712395, 59.750935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.902069, 57.797951, 59.455048>,  <63.055195, 57.849285, 59.277515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.902069, 57.797951, 59.455048>,  <62.646858, 57.712395, 59.750935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.902069, 57.797951, 59.455048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769513, -0.211891, 0.602455,
		-0.027879, -0.953600, -0.299783,
		0.638023, 0.213891, -0.739714,
		63.093475, 57.862118, 59.233131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.938454, 57.128193, 59.533596>,  <62.646858, 57.712395, 59.750935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.938454, 57.128193, 59.533596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.156067, 57.463314, 59.515182>,  <63.286636, 57.664387, 59.504135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.156067, 57.463314, 59.515182>,  <62.938454, 57.128193, 59.533596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.156067, 57.463314, 59.515182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562848, -0.323703, 0.760538,
		0.622276, -0.439670, -0.647660,
		0.544035, 0.837799, -0.046034,
		63.319279, 57.714653, 59.501373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.588448, 56.922371, 59.610577>,  <62.938454, 57.128193, 59.533596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.588448, 56.922371, 59.610577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.733864, 57.294563, 59.628632>,  <63.821114, 57.517879, 59.639465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.733864, 57.294563, 59.628632>,  <63.588448, 56.922371, 59.610577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.733864, 57.294563, 59.628632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929387, -0.358940, -0.086039,
		-0.063855, 0.073230, -0.995269,
		0.363542, 0.930484, 0.045138,
		63.842926, 57.573708, 59.642174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.029953, 57.098499, 58.999352>,  <63.588448, 56.922371, 59.610577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.029953, 57.098499, 58.999352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.145630, 57.263115, 59.345070>,  <64.215034, 57.361885, 59.552502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.145630, 57.263115, 59.345070>,  <64.029953, 57.098499, 58.999352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.145630, 57.263115, 59.345070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861928, -0.504748, -0.048067,
		0.416469, 0.758859, -0.500686,
		0.289196, 0.411536, 0.864294,
		64.232391, 57.386578, 59.604359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.685158, 57.573574, 59.032909>,  <64.029953, 57.098499, 58.999352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.685158, 57.573574, 59.032909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.623581, 57.409794, 59.392609>,  <64.586632, 57.311527, 59.608429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.623581, 57.409794, 59.392609>,  <64.685158, 57.573574, 59.032909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.623581, 57.409794, 59.392609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923682, -0.382817, -0.016181,
		0.350874, 0.828132, 0.437133,
		-0.153942, -0.409449, 0.899251,
		64.577400, 57.286961, 59.662384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.009949, 57.831665, 59.665863>,  <64.685158, 57.573574, 59.032909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.009949, 57.831665, 59.665863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.956139, 57.435398, 59.657104>,  <64.923851, 57.197636, 59.651852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.956139, 57.435398, 59.657104>,  <65.009949, 57.831665, 59.665863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.956139, 57.435398, 59.657104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985093, -0.136088, 0.105226,
		-0.107223, -0.007412, 0.994207,
		-0.134520, -0.990669, -0.021893,
		64.915779, 57.138199, 59.650536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.337219, 57.436577, 60.258320>,  <65.009949, 57.831665, 59.665863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.337219, 57.436577, 60.258320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.327599, 57.218826, 59.922920>,  <65.321823, 57.088177, 59.721680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.327599, 57.218826, 59.922920>,  <65.337219, 57.436577, 60.258320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.327599, 57.218826, 59.922920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995218, -0.092471, 0.031481,
		-0.094674, -0.833732, 0.543993,
		-0.024057, -0.544371, -0.838499,
		65.320381, 57.055515, 59.671371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.689888, 56.751320, 60.344032>,  <65.337219, 57.436577, 60.258320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.689888, 56.751320, 60.344032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.689125, 56.896866, 59.971451>,  <65.688667, 56.984192, 59.747902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.689125, 56.896866, 59.971451>,  <65.689888, 56.751320, 60.344032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.689125, 56.896866, 59.971451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996831, 0.074761, 0.027166,
		0.079521, -0.928446, -0.362855,
		-0.001905, 0.363866, -0.931449,
		65.688553, 57.006027, 59.692017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.140068, 56.371914, 59.843109>,  <65.689888, 56.751320, 60.344032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.140068, 56.371914, 59.843109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.120483, 56.753517, 59.724808>,  <66.108734, 56.982479, 59.653828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.120483, 56.753517, 59.724808>,  <66.140068, 56.371914, 59.843109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.120483, 56.753517, 59.724808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998083, 0.035505, -0.050699,
		-0.037867, -0.297666, -0.953919,
		-0.048961, 0.954010, -0.295751,
		66.105797, 57.039719, 59.636082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.701660, 56.586967, 59.238239>,  <66.140068, 56.371914, 59.843109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.701660, 56.586967, 59.238239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.615288, 56.833641, 59.541046>,  <66.563461, 56.981644, 59.722729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.615288, 56.833641, 59.541046>,  <66.701660, 56.586967, 59.238239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.615288, 56.833641, 59.541046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975727, 0.107360, 0.190868,
		0.036431, 0.779859, -0.624895,
		-0.215939, 0.616680, 0.757018,
		66.550507, 57.018646, 59.768150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.934006, 57.220928, 59.043182>,  <66.701660, 56.586967, 59.238239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.934006, 57.220928, 59.043182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.959946, 57.182560, 59.440491>,  <66.975510, 57.159538, 59.678875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.959946, 57.182560, 59.440491>,  <66.934006, 57.220928, 59.043182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.959946, 57.182560, 59.440491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972317, 0.229994, -0.041267,
		-0.224489, 0.968453, 0.108179,
		0.064845, -0.095920, 0.993275,
		66.979401, 57.153786, 59.738472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.285385, 57.791176, 59.350342>,  <66.934006, 57.220928, 59.043182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.285385, 57.791176, 59.350342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.336960, 57.472839, 59.586990>,  <67.367905, 57.281837, 59.728981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.336960, 57.472839, 59.586990>,  <67.285385, 57.791176, 59.350342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.336960, 57.472839, 59.586990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938522, 0.290593, 0.186364,
		-0.320237, 0.531224, 0.784378,
		0.128933, -0.795837, 0.591625,
		67.375641, 57.234089, 59.764477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.566040, 58.053864, 60.048203>,  <67.285385, 57.791176, 59.350342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.566040, 58.053864, 60.048203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.671310, 57.682209, 59.944321>,  <67.734474, 57.459217, 59.881992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.671310, 57.682209, 59.944321>,  <67.566040, 58.053864, 60.048203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.671310, 57.682209, 59.944321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956544, 0.216274, 0.195576,
		-0.125548, -0.299894, 0.945675,
		0.263177, -0.929133, -0.259709,
		67.750267, 57.403469, 59.866409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.108925, 57.942516, 60.514835>,  <67.566040, 58.053864, 60.048203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.108925, 57.942516, 60.514835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.163429, 57.717102, 60.188927>,  <68.196136, 57.581856, 59.993382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.163429, 57.717102, 60.188927>,  <68.108925, 57.942516, 60.514835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.163429, 57.717102, 60.188927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924070, 0.368773, -0.100512,
		0.357109, -0.739213, 0.570997,
		0.136268, -0.563534, -0.814776,
		68.204308, 57.548042, 59.944492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.546700, 57.324970, 60.546436>,  <68.108925, 57.942516, 60.514835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.546700, 57.324970, 60.546436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.570633, 57.567326, 60.229118>,  <68.584991, 57.712738, 60.038727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.570633, 57.567326, 60.229118>,  <68.546700, 57.324970, 60.546436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.570633, 57.567326, 60.229118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923983, 0.267104, 0.273699,
		0.377724, -0.749370, -0.543847,
		0.059838, 0.605887, -0.793297,
		68.588585, 57.749092, 59.991131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.070808, 57.163502, 60.120609>,  <68.546700, 57.324970, 60.546436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.070808, 57.163502, 60.120609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.977654, 57.552269, 60.107094>,  <68.921761, 57.785530, 60.098984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.977654, 57.552269, 60.107094>,  <69.070808, 57.163502, 60.120609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.977654, 57.552269, 60.107094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972445, 0.233115, 0.003015,
		0.010806, -0.032153, -0.999425,
		-0.232884, 0.971918, -0.033786,
		68.907791, 57.843845, 60.096958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.498909, 57.480644, 59.565521>,  <69.070808, 57.163502, 60.120609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.498909, 57.480644, 59.565521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.439369, 57.716671, 59.882927>,  <69.403648, 57.858288, 60.073372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.439369, 57.716671, 59.882927>,  <69.498909, 57.480644, 59.565521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.439369, 57.716671, 59.882927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988654, 0.072364, 0.131634,
		0.020250, 0.804107, -0.594139,
		-0.148843, 0.590063, 0.793518,
		69.394714, 57.893688, 60.120983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.881355, 58.090141, 59.460270>,  <69.498909, 57.480644, 59.565521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.881355, 58.090141, 59.460270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.846931, 58.018707, 59.852333>,  <69.826279, 57.975849, 60.087570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.846931, 58.018707, 59.852333>,  <69.881355, 58.090141, 59.460270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.846931, 58.018707, 59.852333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996214, -0.003267, 0.086872,
		-0.012311, 0.983920, 0.178188,
		-0.086057, -0.178583, 0.980154,
		69.821114, 57.965134, 60.146378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.406158, 58.502182, 59.956440>,  <69.881355, 58.090141, 59.460270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.406158, 58.502182, 59.956440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.300583, 58.180534, 60.169502>,  <70.237236, 57.987545, 60.297340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.300583, 58.180534, 60.169502>,  <70.406158, 58.502182, 59.956440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.300583, 58.180534, 60.169502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961717, -0.177181, 0.209064,
		-0.073737, 0.567445, 0.820103,
		-0.263939, -0.804123, 0.532656,
		70.221397, 57.939297, 60.329300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.632378, 58.534809, 60.721600>,  <70.406158, 58.502182, 59.956440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.632378, 58.534809, 60.721600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.631508, 58.177933, 60.540939>,  <70.630989, 57.963806, 60.432541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.631508, 58.177933, 60.540939>,  <70.632378, 58.534809, 60.721600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.631508, 58.177933, 60.540939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975826, -0.100596, 0.194019,
		-0.218536, -0.440314, 0.870842,
		-0.002174, -0.892191, -0.451653,
		70.630859, 57.910275, 60.405445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.955681, 58.107094, 61.178101>,  <70.632378, 58.534809, 60.721600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.955681, 58.107094, 61.178101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.987434, 57.906219, 60.833656>,  <71.006485, 57.785694, 60.626991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.987434, 57.906219, 60.833656>,  <70.955681, 58.107094, 61.178101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.987434, 57.906219, 60.833656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985756, -0.088925, 0.142746,
		-0.148259, -0.860174, 0.487975,
		0.079393, -0.502188, -0.861106,
		71.011253, 57.755562, 60.575325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.289207, 57.568707, 61.226192>,  <70.955681, 58.107094, 61.178101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.289207, 57.568707, 61.226192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.362305, 57.625599, 60.837067>,  <71.406166, 57.659737, 60.603592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.362305, 57.625599, 60.837067>,  <71.289207, 57.568707, 61.226192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.362305, 57.625599, 60.837067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878344, -0.468178, 0.096545,
		-0.441720, -0.872112, -0.210487,
		0.182743, 0.142234, -0.972818,
		71.417130, 57.668270, 60.545219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.429916, 56.935760, 60.732883>,  <71.289207, 57.568707, 61.226192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.429916, 56.935760, 60.732883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.610687, 57.258636, 60.580986>,  <71.719147, 57.452362, 60.489849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.610687, 57.258636, 60.580986>,  <71.429916, 56.935760, 60.732883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.610687, 57.258636, 60.580986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879431, -0.474509, 0.037973,
		-0.149538, -0.351116, -0.924314,
		0.451928, 0.807192, -0.379739,
		71.746269, 57.500793, 60.467064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.937798, 56.768047, 60.192619>,  <71.429916, 56.935760, 60.732883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.937798, 56.768047, 60.192619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.056190, 57.119663, 60.342117>,  <72.127228, 57.330635, 60.431816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.056190, 57.119663, 60.342117>,  <71.937798, 56.768047, 60.192619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.056190, 57.119663, 60.342117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955089, -0.278174, -0.102095,
		0.014220, 0.387176, -0.921896,
		0.295977, 0.879042, 0.373743,
		72.144981, 57.383377, 60.454239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.527397, 57.216782, 59.880375>,  <71.937798, 56.768047, 60.192619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.527397, 57.216782, 59.880375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.531540, 57.277855, 60.275665>,  <72.534027, 57.314499, 60.512840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.531540, 57.277855, 60.275665>,  <72.527397, 57.216782, 59.880375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.531540, 57.277855, 60.275665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915669, -0.398556, 0.051985,
		0.401799, 0.904346, -0.143930,
		0.010351, 0.152680, 0.988222,
		72.534645, 57.323658, 60.572132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.068810, 57.731266, 60.178886>,  <72.527397, 57.216782, 59.880375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.068810, 57.731266, 60.178886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.973839, 57.445427, 60.442093>,  <72.916855, 57.273926, 60.600018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.973839, 57.445427, 60.442093>,  <73.068810, 57.731266, 60.178886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.973839, 57.445427, 60.442093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916130, -0.389958, -0.092941,
		0.323014, 0.580763, 0.747246,
		-0.237418, -0.714596, 0.658017,
		72.902611, 57.231049, 60.639500>
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
