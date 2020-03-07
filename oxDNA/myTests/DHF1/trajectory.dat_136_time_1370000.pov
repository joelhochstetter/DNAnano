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
	<1.723800, 4.349264, 2.373077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.705021, 4.076042, 2.664619>,  <1.693753, 3.912109, 2.839545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.705021, 4.076042, 2.664619>,  <1.723800, 4.349264, 2.373077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.705021, 4.076042, 2.664619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734692, -0.517974, -0.438100,
		0.676775, 0.514917, 0.526153,
		-0.046948, -0.683055, 0.728857,
		1.690936, 3.871126, 2.883276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.439528, 4.178670, 2.649738>,  <1.723800, 4.349264, 2.373077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.439528, 4.178670, 2.649738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.192638, 3.877888, 2.742344>,  <2.044505, 3.697418, 2.797907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.192638, 3.877888, 2.742344>,  <2.439528, 4.178670, 2.649738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.192638, 3.877888, 2.742344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707890, -0.659174, -0.253736,
		0.343406, 0.007275, 0.939159,
		-0.617223, -0.751956, 0.231514,
		2.007472, 3.652301, 2.811798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.556633, 3.776166, 3.262338>,  <2.439528, 4.178670, 2.649738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.556633, 3.776166, 3.262338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.373665, 3.532742, 3.002979>,  <2.263884, 3.386687, 2.847364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.373665, 3.532742, 3.002979>,  <2.556633, 3.776166, 3.262338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.373665, 3.532742, 3.002979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813493, -0.580865, -0.028712,
		-0.359158, -0.540600, 0.760761,
		-0.457422, -0.608562, -0.648396,
		2.236438, 3.350173, 2.808460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.099250, 4.287496, 3.636322>,  <2.556633, 3.776166, 3.262338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.099250, 4.287496, 3.636322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.293367, 4.428093, 3.316086>,  <2.409838, 4.512451, 3.123945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.293367, 4.428093, 3.316086>,  <2.099250, 4.287496, 3.636322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.293367, 4.428093, 3.316086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035469, 0.906970, 0.419699,
		0.873632, -0.232073, 0.427678,
		0.485292, 0.351493, -0.800590,
		2.438956, 4.533541, 3.075909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.837663, 4.474459, 3.728240>,  <2.099250, 4.287496, 3.636322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.837663, 4.474459, 3.728240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.657539, 4.707764, 3.457825>,  <2.549465, 4.847746, 3.295575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.657539, 4.707764, 3.457825>,  <2.837663, 4.474459, 3.728240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.657539, 4.707764, 3.457825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131775, 0.792273, 0.595767,
		0.883095, 0.179194, -0.433627,
		-0.450309, 0.583261, -0.676039,
		2.522447, 4.882742, 3.255013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.230094, 5.047698, 3.688290>,  <2.837663, 4.474459, 3.728240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.230094, 5.047698, 3.688290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.867729, 5.149006, 3.552540>,  <2.650310, 5.209790, 3.471090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.867729, 5.149006, 3.552540>,  <3.230094, 5.047698, 3.688290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.867729, 5.149006, 3.552540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019296, 0.825285, 0.564386,
		0.423023, 0.504737, -0.752524,
		-0.905913, 0.253269, -0.339376,
		2.595955, 5.224987, 3.450727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.307376, 5.671927, 3.598913>,  <3.230094, 5.047698, 3.688290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.307376, 5.671927, 3.598913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.908375, 5.644085, 3.603699>,  <2.668974, 5.627379, 3.606570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.908375, 5.644085, 3.603699>,  <3.307376, 5.671927, 3.598913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.908375, 5.644085, 3.603699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049500, 0.809837, 0.584563,
		-0.050377, 0.582511, -0.811261,
		-0.997503, -0.069606, 0.011963,
		2.609124, 5.623203, 3.607288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.982563, 6.328085, 3.267810>,  <3.307376, 5.671927, 3.598913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.982563, 6.328085, 3.267810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.725014, 6.147961, 3.515244>,  <2.570484, 6.039886, 3.663704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.725014, 6.147961, 3.515244>,  <2.982563, 6.328085, 3.267810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.725014, 6.147961, 3.515244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127317, 0.860252, 0.493718,
		-0.754466, 0.239135, -0.611225,
		-0.643872, -0.450312, 0.618585,
		2.531852, 6.012867, 3.700819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.167956, 2.387881, 4.312805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.178139, 2.200256, 4.665924>,  <2.184248, 2.087682, 4.877796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.178139, 2.200256, 4.665924>,  <2.167956, 2.387881, 4.312805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.178139, 2.200256, 4.665924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219285, -0.864197, -0.452855,
		0.975329, -0.182056, -0.124857,
		0.025456, -0.469061, 0.882799,
		2.185776, 2.059538, 4.930764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.736829, 1.888150, 4.422674>,  <2.167956, 2.387881, 4.312805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.736829, 1.888150, 4.422674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.383937, 1.787170, 4.581642>,  <2.172203, 1.726582, 4.677023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.383937, 1.787170, 4.581642>,  <2.736829, 1.888150, 4.422674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.383937, 1.787170, 4.581642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020798, -0.822377, -0.568562,
		0.470363, -0.509867, 0.720274,
		-0.882228, -0.252450, 0.397420,
		2.119269, 1.711435, 4.700868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.798951, 1.231989, 4.623463>,  <2.736829, 1.888150, 4.422674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.798951, 1.231989, 4.623463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.412049, 1.311935, 4.560890>,  <2.179908, 1.359903, 4.523346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.412049, 1.311935, 4.560890>,  <2.798951, 1.231989, 4.623463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.412049, 1.311935, 4.560890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076628, -0.817549, -0.570738,
		-0.241962, -0.540063, 0.806094,
		-0.967255, 0.199866, -0.156432,
		2.121872, 1.371895, 4.513961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.338095, 0.622328, 4.772683>,  <2.798951, 1.231989, 4.623463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.338095, 0.622328, 4.772683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.189320, 0.869003, 4.495163>,  <2.100055, 1.017009, 4.328651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.189320, 0.869003, 4.495163>,  <2.338095, 0.622328, 4.772683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.189320, 0.869003, 4.495163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111684, -0.712262, -0.692972,
		-0.921515, -0.335228, 0.196043,
		-0.371938, 0.616689, -0.693799,
		2.077739, 1.054010, 4.287023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.745089, 0.276869, 4.374843>,  <2.338095, 0.622328, 4.772683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.745089, 0.276869, 4.374843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.976199, 0.529831, 4.168449>,  <2.114865, 0.681608, 4.044613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.976199, 0.529831, 4.168449>,  <1.745089, 0.276869, 4.374843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.976199, 0.529831, 4.168449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053111, -0.659972, -0.749411,
		-0.814466, 0.405587, -0.414903,
		0.577775, 0.632405, -0.515984,
		2.149532, 0.719553, 4.013654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.345079, 0.311392, 3.746781>,  <1.745089, 0.276869, 4.374843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.345079, 0.311392, 3.746781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.718449, 0.441681, 3.686615>,  <1.942470, 0.519854, 3.650515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.718449, 0.441681, 3.686615>,  <1.345079, 0.311392, 3.746781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.718449, 0.441681, 3.686615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038505, -0.507774, -0.860630,
		-0.356703, 0.797541, -0.486510,
		0.933424, 0.325722, -0.150415,
		1.998476, 0.539397, 3.641490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.413302, 0.585074, 2.980109>,  <1.345079, 0.311392, 3.746781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.413302, 0.585074, 2.980109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.760046, 0.472969, 3.145035>,  <1.968093, 0.405706, 3.243990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.760046, 0.472969, 3.145035>,  <1.413302, 0.585074, 2.980109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.760046, 0.472969, 3.145035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149063, -0.643494, -0.750797,
		0.475742, 0.712298, -0.516044,
		0.866862, -0.280263, 0.412314,
		2.020105, 0.388890, 3.268729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.887782, 0.658109, 2.475945>,  <1.413302, 0.585074, 2.980109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.887782, 0.658109, 2.475945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.048522, 0.391418, 2.727020>,  <2.144966, 0.231404, 2.877666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.048522, 0.391418, 2.727020>,  <1.887782, 0.658109, 2.475945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.048522, 0.391418, 2.727020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031517, -0.674993, -0.737151,
		0.915163, 0.316007, -0.250232,
		0.401849, -0.666727, 0.627688,
		2.169077, 0.191400, 2.915327>
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
