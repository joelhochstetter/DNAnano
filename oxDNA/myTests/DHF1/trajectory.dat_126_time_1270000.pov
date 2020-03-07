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
	<0.298433, 2.281604, -0.190972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.462276, 2.570827, 0.031525>,  <0.560583, 2.744362, 0.165023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.462276, 2.570827, 0.031525>,  <0.298433, 2.281604, -0.190972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.462276, 2.570827, 0.031525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281326, -0.479905, 0.830992,
		0.867799, -0.496868, 0.006842,
		0.409609, 0.723059, 0.556243,
		0.585159, 2.787745, 0.198398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.960020, 1.954173, 0.179485>,  <0.298433, 2.281604, -0.190972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.960020, 1.954173, 0.179485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.786545, 2.260426, 0.369526>,  <0.682460, 2.444177, 0.483550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.786545, 2.260426, 0.369526>,  <0.960020, 1.954173, 0.179485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.786545, 2.260426, 0.369526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246920, -0.608066, 0.754510,
		0.866571, 0.209910, 0.452761,
		-0.433688, 0.765632, 0.475102,
		0.656438, 2.490115, 0.512056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.318696, 2.120869, 0.903085>,  <0.960020, 1.954173, 0.179485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.318696, 2.120869, 0.903085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.941261, 2.253292, 0.900433>,  <0.714800, 2.332746, 0.898841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.941261, 2.253292, 0.900433>,  <1.318696, 2.120869, 0.903085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.941261, 2.253292, 0.900433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178965, -0.493033, 0.851405,
		0.278595, 0.804561, 0.524468,
		-0.943587, 0.331059, -0.006632,
		0.658185, 2.352610, 0.898443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.193957, 2.330036, 1.560568>,  <1.318696, 2.120869, 0.903085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.193957, 2.330036, 1.560568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.845177, 2.268978, 1.374493>,  <0.635908, 2.232343, 1.262847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.845177, 2.268978, 1.374493>,  <1.193957, 2.330036, 1.560568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.845177, 2.268978, 1.374493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338597, -0.498277, 0.798168,
		-0.353629, 0.853475, 0.382788,
		-0.871951, -0.152645, -0.465189,
		0.583591, 2.223185, 1.234936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.597177, 2.603677, 1.922578>,  <1.193957, 2.330036, 1.560568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.597177, 2.603677, 1.922578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.498463, 2.283173, 1.704559>,  <0.439234, 2.090870, 1.573748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.498463, 2.283173, 1.704559>,  <0.597177, 2.603677, 1.922578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.498463, 2.283173, 1.704559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315749, -0.465265, 0.826941,
		-0.916187, 0.376176, -0.138176,
		-0.246787, -0.801261, -0.545047,
		0.424427, 2.042794, 1.541045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.119550, 2.389550, 2.088404>,  <0.597177, 2.603677, 1.922578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.119550, 2.389550, 2.088404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.073502, 2.068363, 1.948509>,  <0.189332, 1.875651, 1.864573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.073502, 2.068363, 1.948509>,  <-0.119550, 2.389550, 2.088404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.073502, 2.068363, 1.948509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124909, -0.458345, 0.879953,
		-0.866873, -0.381005, -0.321507,
		0.482627, -0.802966, -0.349736,
		0.218290, 1.827473, 1.843588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.543517, 1.870829, 2.245510>,  <-0.119550, 2.389550, 2.088404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.543517, 1.870829, 2.245510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.171062, 1.729050, 2.211216>,  <0.052410, 1.643982, 2.190639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.171062, 1.729050, 2.211216>,  <-0.543517, 1.870829, 2.245510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.171062, 1.729050, 2.211216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097242, -0.467925, 0.878402,
		-0.351466, -0.809575, -0.470170,
		0.931136, -0.354449, -0.085736,
		0.108278, 1.622715, 2.185495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.638212, 1.218615, 2.457775>,  <-0.543517, 1.870829, 2.245510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.638212, 1.218615, 2.457775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.238644, 1.237175, 2.458714>,  <0.001097, 1.248311, 2.459277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.238644, 1.237175, 2.458714>,  <-0.638212, 1.218615, 2.457775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.238644, 1.237175, 2.458714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021139, -0.498936, 0.866381,
		0.041371, -0.865396, -0.499378,
		0.998920, 0.046399, 0.002348,
		0.061032, 1.251095, 2.459418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.156305, -0.105196, 3.567641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.502063, 0.075897, 3.655144>,  <0.709518, 0.184553, 3.707646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.502063, 0.075897, 3.655144>,  <0.156305, -0.105196, 3.567641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.502063, 0.075897, 3.655144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180825, 0.685856, -0.704914,
		-0.469174, 0.569767, 0.674715,
		0.864395, 0.452733, 0.218758,
		0.761381, 0.211717, 3.720771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.029012, 0.657204, 3.667774>,  <0.156305, -0.105196, 3.567641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.029012, 0.657204, 3.667774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.388157, 0.560349, 3.520691>,  <0.603644, 0.502235, 3.432441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.388157, 0.560349, 3.520691>,  <0.029012, 0.657204, 3.667774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.388157, 0.560349, 3.520691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151086, 0.615010, -0.773909,
		0.413538, 0.750421, 0.515611,
		0.897864, -0.242139, -0.367708,
		0.657516, 0.487707, 3.410378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.417688, 1.317713, 3.528249>,  <0.029012, 0.657204, 3.667774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.417688, 1.317713, 3.528249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.551878, 1.017937, 3.299934>,  <0.632391, 0.838071, 3.162946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.551878, 1.017937, 3.299934>,  <0.417688, 1.317713, 3.528249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.551878, 1.017937, 3.299934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026311, 0.613117, -0.789554,
		0.941682, 0.249856, 0.225403,
		0.335473, -0.749440, -0.570787,
		0.652520, 0.793105, 3.128698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.114649, 1.454803, 3.180120>,  <0.417688, 1.317713, 3.528249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.114649, 1.454803, 3.180120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.884129, 1.215202, 2.957741>,  <0.745817, 1.071442, 2.824313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.884129, 1.215202, 2.957741>,  <1.114649, 1.454803, 3.180120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.884129, 1.215202, 2.957741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007509, 0.684128, -0.729323,
		0.817204, -0.416133, -0.398761,
		-0.576299, -0.599001, -0.555948,
		0.711239, 1.035502, 2.790956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.384413, 1.325392, 2.481821>,  <1.114649, 1.454803, 3.180120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.384413, 1.325392, 2.481821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.988921, 1.266708, 2.469894>,  <0.751625, 1.231498, 2.462739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.988921, 1.266708, 2.469894>,  <1.384413, 1.325392, 2.481821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.988921, 1.266708, 2.469894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052633, 0.527089, -0.848179,
		0.140151, -0.837051, -0.528870,
		-0.988730, -0.146709, -0.029816,
		0.692302, 1.222696, 2.460950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.188195, 0.849398, 1.964425>,  <1.384413, 1.325392, 2.481821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.188195, 0.849398, 1.964425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.869418, 1.083107, 2.025757>,  <0.678152, 1.223332, 2.062556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.869418, 1.083107, 2.025757>,  <1.188195, 0.849398, 1.964425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.869418, 1.083107, 2.025757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126259, 0.409345, -0.903601,
		-0.590713, -0.700759, -0.399994,
		-0.796942, 0.584272, 0.153329,
		0.630336, 1.258389, 2.071755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.876226, 0.785583, 1.346401>,  <1.188195, 0.849398, 1.964425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.876226, 0.785583, 1.346401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.669922, 1.093029, 1.497780>,  <0.546140, 1.277497, 1.588607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.669922, 1.093029, 1.497780>,  <0.876226, 0.785583, 1.346401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.669922, 1.093029, 1.497780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108939, 0.379309, -0.918835,
		-0.849779, -0.515125, -0.111900,
		-0.515759, 0.768616, 0.378446,
		0.515194, 1.323614, 1.611314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.359173, 0.831375, 0.921641>,  <0.876226, 0.785583, 1.346401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.359173, 0.831375, 0.921641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.402074, 1.193771, 1.085434>,  <0.427815, 1.411209, 1.183710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.402074, 1.193771, 1.085434>,  <0.359173, 0.831375, 0.921641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.402074, 1.193771, 1.085434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033860, 0.414947, -0.909215,
		-0.993655, 0.083650, 0.075181,
		0.107252, 0.905992, 0.409482,
		0.434250, 1.465569, 1.208278>
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
