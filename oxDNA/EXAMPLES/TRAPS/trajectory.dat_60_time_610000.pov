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
	<36.160801, 53.690205, 50.062092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966282, 53.345024, 50.007202>,  <35.849571, 53.137917, 49.974270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966282, 53.345024, 50.007202>,  <36.160801, 53.690205, 50.062092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966282, 53.345024, 50.007202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516319, -0.410475, 0.751615,
		-0.704935, 0.294655, 0.645171,
		-0.486293, -0.862954, -0.137222,
		35.820393, 53.086140, 49.966034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581512, 54.405586, 49.837364>,  <36.160801, 53.690205, 50.062092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581512, 54.405586, 49.837364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584785, 54.693489, 49.559692>,  <36.586750, 54.866230, 49.393089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584785, 54.693489, 49.559692>,  <36.581512, 54.405586, 49.837364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584785, 54.693489, 49.559692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425508, 0.625713, 0.653778,
		0.904918, -0.300728, -0.301142,
		0.008181, 0.719754, -0.694181,
		36.587238, 54.909416, 49.351437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237492, 54.646065, 49.796051>,  <36.581512, 54.405586, 49.837364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237492, 54.646065, 49.796051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000652, 54.944889, 49.675171>,  <36.858551, 55.124184, 49.602642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000652, 54.944889, 49.675171>,  <37.237492, 54.646065, 49.796051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000652, 54.944889, 49.675171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385736, 0.591984, 0.707646,
		0.707552, 0.302423, -0.638679,
		-0.592096, 0.747057, -0.302204,
		36.823025, 55.169006, 49.584511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719685, 55.205257, 49.691277>,  <37.237492, 54.646065, 49.796051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719685, 55.205257, 49.691277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339054, 55.311878, 49.752537>,  <37.110676, 55.375851, 49.789291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339054, 55.311878, 49.752537>,  <37.719685, 55.205257, 49.691277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339054, 55.311878, 49.752537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274758, 0.513958, 0.812623,
		0.137895, 0.815350, -0.562307,
		-0.951574, 0.266554, 0.153152,
		37.053581, 55.391846, 49.798481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593105, 55.960011, 49.579899>,  <37.719685, 55.205257, 49.691277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593105, 55.960011, 49.579899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378330, 55.772686, 49.860580>,  <37.249466, 55.660290, 50.028988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378330, 55.772686, 49.860580>,  <37.593105, 55.960011, 49.579899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378330, 55.772686, 49.860580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443859, 0.550517, 0.707050,
		-0.717419, 0.691096, -0.087727,
		-0.536935, -0.468313, 0.701701,
		37.217251, 55.632191, 50.071091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323250, 56.497192, 50.131332>,  <37.593105, 55.960011, 49.579899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323250, 56.497192, 50.131332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355412, 56.131432, 50.290028>,  <37.374706, 55.911976, 50.385246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355412, 56.131432, 50.290028>,  <37.323250, 56.497192, 50.131332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355412, 56.131432, 50.290028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668284, 0.344768, 0.659191,
		-0.739549, 0.212133, 0.638801,
		0.080402, -0.914404, 0.396738,
		37.379532, 55.857109, 50.409050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195583, 56.563591, 50.954662>,  <37.323250, 56.497192, 50.131332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195583, 56.563591, 50.954662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415386, 56.282661, 50.773651>,  <37.547268, 56.114101, 50.665047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415386, 56.282661, 50.773651>,  <37.195583, 56.563591, 50.954662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415386, 56.282661, 50.773651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806639, 0.304876, 0.506344,
		-0.217655, -0.643263, 0.734056,
		0.549508, -0.702327, -0.452523,
		37.580238, 56.071964, 50.637894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545395, 56.230232, 51.415760>,  <37.195583, 56.563591, 50.954662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545395, 56.230232, 51.415760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728439, 56.245960, 51.060448>,  <37.838264, 56.255398, 50.847260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728439, 56.245960, 51.060448>,  <37.545395, 56.230232, 51.415760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728439, 56.245960, 51.060448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777956, 0.466052, 0.421403,
		0.430555, -0.883883, 0.182682,
		0.457611, 0.039319, -0.888283,
		37.865723, 56.257755, 50.793964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154667, 55.925941, 51.505169>,  <37.545395, 56.230232, 51.415760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154667, 55.925941, 51.505169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181824, 56.198048, 51.213242>,  <38.198120, 56.361309, 51.038086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181824, 56.198048, 51.213242>,  <38.154667, 55.925941, 51.505169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181824, 56.198048, 51.213242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697155, 0.490934, 0.522454,
		0.713698, -0.544269, -0.440916,
		0.067895, 0.680261, -0.729819,
		38.202194, 56.402126, 50.994297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814735, 56.105629, 51.571880>,  <38.154667, 55.925941, 51.505169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814735, 56.105629, 51.571880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645046, 56.419743, 51.391499>,  <38.543232, 56.608212, 51.283272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645046, 56.419743, 51.391499>,  <38.814735, 56.105629, 51.571880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645046, 56.419743, 51.391499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468255, 0.616468, 0.633012,
		0.775093, 0.057380, -0.629237,
		-0.424226, 0.785286, -0.450952,
		38.517776, 56.655327, 51.256214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411243, 56.598526, 51.543262>,  <38.814735, 56.105629, 51.571880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411243, 56.598526, 51.543262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070263, 56.807594, 51.538406>,  <38.865677, 56.933037, 51.535492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070263, 56.807594, 51.538406>,  <39.411243, 56.598526, 51.543262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070263, 56.807594, 51.538406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414245, 0.689420, 0.594224,
		0.318955, 0.501515, -0.804208,
		-0.852449, 0.522669, -0.012144,
		38.814529, 56.964394, 51.534763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571552, 57.157257, 51.251259>,  <39.411243, 56.598526, 51.543262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571552, 57.157257, 51.251259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284084, 57.209316, 51.524487>,  <39.111603, 57.240551, 51.688423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284084, 57.209316, 51.524487>,  <39.571552, 57.157257, 51.251259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284084, 57.209316, 51.524487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520572, 0.751954, 0.404438,
		-0.460998, 0.646242, -0.608155,
		-0.718669, 0.130143, 0.683065,
		39.068485, 57.248360, 51.729404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432667, 57.901802, 51.222656>,  <39.571552, 57.157257, 51.251259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432667, 57.901802, 51.222656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309685, 57.773849, 51.581131>,  <39.235893, 57.697079, 51.796215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309685, 57.773849, 51.581131>,  <39.432667, 57.901802, 51.222656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309685, 57.773849, 51.581131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714453, 0.544465, 0.439448,
		-0.628512, 0.775393, 0.061139,
		-0.307457, -0.319879, 0.896185,
		39.217449, 57.677887, 51.849987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361794, 58.487274, 51.665035>,  <39.432667, 57.901802, 51.222656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361794, 58.487274, 51.665035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461147, 58.160137, 51.872665>,  <39.520760, 57.963856, 51.997246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461147, 58.160137, 51.872665>,  <39.361794, 58.487274, 51.665035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461147, 58.160137, 51.872665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851119, 0.440119, 0.286166,
		-0.462495, 0.370719, 0.805398,
		0.248385, -0.817840, 0.519079,
		39.535664, 57.914783, 52.028389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602028, 58.687691, 52.411972>,  <39.361794, 58.487274, 51.665035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602028, 58.687691, 52.411972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782822, 58.359879, 52.271072>,  <39.891296, 58.163193, 52.186531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782822, 58.359879, 52.271072>,  <39.602028, 58.687691, 52.411972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782822, 58.359879, 52.271072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883842, 0.358069, 0.301016,
		-0.120562, -0.447389, 0.886176,
		0.451983, -0.819530, -0.352252,
		39.918415, 58.114021, 52.165398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058910, 58.291729, 52.880745>,  <39.602028, 58.687691, 52.411972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058910, 58.291729, 52.880745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190826, 58.260880, 52.504387>,  <40.269978, 58.242371, 52.278572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190826, 58.260880, 52.504387>,  <40.058910, 58.291729, 52.880745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190826, 58.260880, 52.504387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877194, 0.393430, 0.275214,
		0.348954, -0.916114, 0.197398,
		0.329789, -0.077119, -0.940899,
		40.289764, 58.237743, 52.222118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682652, 57.859383, 52.827942>,  <40.058910, 58.291729, 52.880745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682652, 57.859383, 52.827942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660065, 58.161591, 52.566868>,  <40.646511, 58.342915, 52.410225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660065, 58.161591, 52.566868>,  <40.682652, 57.859383, 52.827942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660065, 58.161591, 52.566868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843802, 0.385549, 0.373295,
		0.533675, -0.529656, -0.659284,
		-0.056468, 0.755524, -0.652683,
		40.643124, 58.388248, 52.371063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438126, 57.957417, 52.569572>,  <40.682652, 57.859383, 52.827942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438126, 57.957417, 52.569572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236019, 58.301804, 52.546082>,  <41.114758, 58.508434, 52.531986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236019, 58.301804, 52.546082>,  <41.438126, 57.957417, 52.569572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236019, 58.301804, 52.546082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827832, 0.502787, 0.248796,
		0.243731, 0.077093, -0.966774,
		-0.505262, 0.860966, -0.058724,
		41.084442, 58.560093, 52.528465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717667, 58.497761, 52.075665>,  <41.438126, 57.957417, 52.569572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717667, 58.497761, 52.075665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545353, 58.601044, 52.421555>,  <41.441963, 58.663013, 52.629089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545353, 58.601044, 52.421555>,  <41.717667, 58.497761, 52.075665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545353, 58.601044, 52.421555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901229, 0.173026, 0.397301,
		-0.047036, 0.950469, -0.307239,
		-0.430783, 0.258205, 0.864729,
		41.416119, 58.678505, 52.680973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191479, 59.022655, 52.278259>,  <41.717667, 58.497761, 52.075665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191479, 59.022655, 52.278259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977859, 58.855759, 52.572388>,  <41.849689, 58.755619, 52.748867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977859, 58.855759, 52.572388>,  <42.191479, 59.022655, 52.278259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977859, 58.855759, 52.572388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791329, 0.059511, 0.608487,
		-0.297649, 0.906843, 0.298398,
		-0.534044, -0.417246, 0.735324,
		41.817646, 58.730583, 52.792984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232403, 59.399826, 52.950695>,  <42.191479, 59.022655, 52.278259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232403, 59.399826, 52.950695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169888, 59.019997, 53.059422>,  <42.132378, 58.792099, 53.124657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169888, 59.019997, 53.059422>,  <42.232403, 59.399826, 52.950695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169888, 59.019997, 53.059422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844981, 0.013959, 0.534614,
		-0.511449, 0.313239, 0.800188,
		-0.156292, -0.949572, 0.271821,
		42.123001, 58.735126, 53.140968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958878, 59.360283, 53.333622>,  <42.232403, 59.399826, 52.950695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958878, 59.360283, 53.333622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772373, 59.034744, 53.472340>,  <42.660473, 58.839420, 53.555569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772373, 59.034744, 53.472340>,  <42.958878, 59.360283, 53.333622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772373, 59.034744, 53.472340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022195, 0.402648, 0.915086,
		-0.884371, 0.418969, -0.205800,
		-0.466257, -0.813843, 0.346791,
		42.632496, 58.790592, 53.576378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670734, 59.365257, 53.285812>,  <42.958878, 59.360283, 53.333622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670734, 59.365257, 53.285812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543633, 59.633293, 53.554146>,  <43.467373, 59.794113, 53.715145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543633, 59.633293, 53.554146>,  <43.670734, 59.365257, 53.285812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543633, 59.633293, 53.554146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792627, 0.576001, -0.199914,
		-0.520360, 0.468196, -0.714155,
		-0.317755, 0.670086, 0.670833,
		43.448307, 59.834320, 53.755394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618530, 60.092052, 52.989517>,  <43.670734, 59.365257, 53.285812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618530, 60.092052, 52.989517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687481, 60.104927, 53.383320>,  <43.728851, 60.112652, 53.619602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687481, 60.104927, 53.383320>,  <43.618530, 60.092052, 52.989517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687481, 60.104927, 53.383320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856866, 0.488087, -0.165987,
		-0.485866, 0.872201, 0.056561,
		0.172381, 0.032182, 0.984505,
		43.739197, 60.114582, 53.678673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902878, 60.734680, 53.056377>,  <43.618530, 60.092052, 52.989517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902878, 60.734680, 53.056377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029160, 60.492020, 53.348217>,  <44.104931, 60.346424, 53.523319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029160, 60.492020, 53.348217>,  <43.902878, 60.734680, 53.056377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029160, 60.492020, 53.348217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948447, 0.179168, -0.261434,
		0.027878, 0.774519, 0.631936,
		0.315708, -0.606646, 0.729595,
		44.123871, 60.310024, 53.567097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468513, 60.978226, 53.378586>,  <43.902878, 60.734680, 53.056377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468513, 60.978226, 53.378586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502628, 60.600967, 53.507088>,  <44.523098, 60.374615, 53.584190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502628, 60.600967, 53.507088>,  <44.468513, 60.978226, 53.378586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502628, 60.600967, 53.507088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994785, 0.062505, -0.080605,
		0.055942, 0.326458, 0.943555,
		0.085291, -0.943143, 0.321258,
		44.528217, 60.318024, 53.603466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.988934, 61.020737, 53.889065>,  <44.468513, 60.978226, 53.378586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.988934, 61.020737, 53.889065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971188, 60.657730, 53.721996>,  <44.960541, 60.439926, 53.621754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971188, 60.657730, 53.721996>,  <44.988934, 61.020737, 53.889065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971188, 60.657730, 53.721996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998431, -0.054584, 0.012553,
		-0.034191, -0.416459, 0.908511,
		-0.044362, -0.907514, -0.417672,
		44.957878, 60.385475, 53.596695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513412, 60.597778, 54.304756>,  <44.988934, 61.020737, 53.889065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513412, 60.597778, 54.304756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488892, 60.421566, 53.946499>,  <45.474178, 60.315838, 53.731544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488892, 60.421566, 53.946499>,  <45.513412, 60.597778, 54.304756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488892, 60.421566, 53.946499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986797, -0.161526, 0.011912,
		-0.149917, -0.883085, 0.444619,
		-0.061298, -0.440534, -0.895641,
		45.470501, 60.289406, 53.677807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752171, 59.926624, 54.341084>,  <45.513412, 60.597778, 54.304756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752171, 59.926624, 54.341084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754078, 59.989990, 53.946140>,  <45.755222, 60.028011, 53.709175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754078, 59.989990, 53.946140>,  <45.752171, 59.926624, 54.341084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754078, 59.989990, 53.946140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791643, -0.603854, -0.093066,
		-0.610965, -0.781194, -0.128289,
		0.004765, 0.158419, -0.987360,
		45.755508, 60.037518, 53.649933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746052, 59.227657, 53.980865>,  <45.752171, 59.926624, 54.341084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746052, 59.227657, 53.980865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927307, 59.526527, 53.786385>,  <46.036060, 59.705849, 53.669697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927307, 59.526527, 53.786385>,  <45.746052, 59.227657, 53.980865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927307, 59.526527, 53.786385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851328, -0.524482, -0.012567,
		-0.264396, -0.408227, -0.873754,
		0.453138, 0.747174, -0.486206,
		46.063248, 59.750679, 53.640522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935192, 59.073597, 53.344498>,  <45.746052, 59.227657, 53.980865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935192, 59.073597, 53.344498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203156, 59.336346, 53.482910>,  <46.363934, 59.493996, 53.565956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203156, 59.336346, 53.482910>,  <45.935192, 59.073597, 53.344498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203156, 59.336346, 53.482910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699163, -0.714954, 0.003632,
		0.249779, 0.239496, -0.938218,
		0.669912, 0.656874, 0.346027,
		46.404129, 59.533409, 53.586720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530266, 59.011536, 52.948677>,  <45.935192, 59.073597, 53.344498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530266, 59.011536, 52.948677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639923, 59.159760, 53.303650>,  <46.705719, 59.248692, 53.516632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639923, 59.159760, 53.303650>,  <46.530266, 59.011536, 52.948677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639923, 59.159760, 53.303650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710652, -0.699781, 0.072668,
		0.647935, 0.610732, -0.455178,
		0.274144, 0.370557, 0.887430,
		46.722168, 59.270927, 53.569878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.184513, 59.342117, 52.985081>,  <46.530266, 59.011536, 52.948677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.184513, 59.342117, 52.985081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084755, 59.188652, 53.340744>,  <47.024902, 59.096573, 53.554142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084755, 59.188652, 53.340744>,  <47.184513, 59.342117, 52.985081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.084755, 59.188652, 53.340744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803097, -0.595016, -0.031486,
		0.541146, 0.706231, 0.456507,
		-0.249392, -0.383658, 0.889162,
		47.009937, 59.073555, 53.607494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.866798, 59.522942, 53.250072>,  <47.184513, 59.342117, 52.985081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.866798, 59.522942, 53.250072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.768757, 59.221825, 53.494438>,  <47.709930, 59.041153, 53.641060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.768757, 59.221825, 53.494438>,  <47.866798, 59.522942, 53.250072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.768757, 59.221825, 53.494438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967642, -0.228915, 0.106146,
		0.059942, 0.617167, 0.784546,
		-0.245104, -0.752797, 0.610918,
		47.695225, 58.995987, 53.677715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.256844, 59.579811, 53.873287>,  <47.866798, 59.522942, 53.250072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.256844, 59.579811, 53.873287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.163540, 59.192802, 53.834297>,  <48.107559, 58.960598, 53.810902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.163540, 59.192802, 53.834297>,  <48.256844, 59.579811, 53.873287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.163540, 59.192802, 53.834297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951958, -0.247653, 0.180122,
		-0.198411, -0.050777, 0.978803,
		-0.233258, -0.967517, -0.097475,
		48.093563, 58.902546, 53.805054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.397396, 59.063881, 54.551723>,  <48.256844, 59.579811, 53.873287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.397396, 59.063881, 54.551723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.456516, 58.863075, 54.210869>,  <48.491989, 58.742592, 54.006355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.456516, 58.863075, 54.210869>,  <48.397396, 59.063881, 54.551723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.456516, 58.863075, 54.210869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934027, -0.212449, 0.287159,
		-0.325193, -0.838360, 0.437495,
		0.147797, -0.502014, -0.852138,
		48.500854, 58.712471, 53.955227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.070465, 58.486187, 54.706936>,  <48.397396, 59.063881, 54.551723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.070465, 58.486187, 54.706936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850796, 58.267506, 54.959766>,  <47.718994, 58.136295, 55.111465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850796, 58.267506, 54.959766>,  <48.070465, 58.486187, 54.706936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.850796, 58.267506, 54.959766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793192, -0.102825, 0.600228,
		-0.263156, 0.830987, 0.490112,
		-0.549177, -0.546707, 0.632073,
		47.686043, 58.103493, 55.149387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.580124, 58.239838, 55.250751>,  <48.070465, 58.486187, 54.706936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.580124, 58.239838, 55.250751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.278709, 58.034912, 55.415543>,  <48.097862, 57.911957, 55.514416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.278709, 58.034912, 55.415543>,  <48.580124, 58.239838, 55.250751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.278709, 58.034912, 55.415543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630263, -0.384744, 0.674345,
		-0.186968, 0.767795, 0.612808,
		-0.753533, -0.512311, 0.411978,
		48.052650, 57.881218, 55.539135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.083645, 57.664143, 55.261951>,  <48.580124, 58.239838, 55.250751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.083645, 57.664143, 55.261951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.151546, 57.568451, 54.879547>,  <49.192287, 57.511036, 54.650105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.151546, 57.568451, 54.879547>,  <49.083645, 57.664143, 55.261951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.151546, 57.568451, 54.879547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727047, 0.685277, -0.042389,
		0.665272, -0.687868, 0.290261,
		0.169752, -0.239234, -0.956008,
		49.202473, 57.496681, 54.592743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.783909, 57.448841, 55.071053>,  <49.083645, 57.664143, 55.261951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.783909, 57.448841, 55.071053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.612457, 57.643456, 54.766537>,  <49.509586, 57.760223, 54.583828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.612457, 57.643456, 54.766537>,  <49.783909, 57.448841, 55.071053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.612457, 57.643456, 54.766537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753649, 0.657263, -0.004272,
		0.498287, -0.575574, -0.648402,
		-0.428630, 0.486539, -0.761286,
		49.483868, 57.789417, 54.538151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.166279, 57.290173, 54.408958>,  <49.783909, 57.448841, 55.071053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.166279, 57.290173, 54.408958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.998550, 57.653206, 54.417603>,  <49.897915, 57.871025, 54.422791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.998550, 57.653206, 54.417603>,  <50.166279, 57.290173, 54.408958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.998550, 57.653206, 54.417603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906560, 0.419874, -0.043058,
		-0.048152, 0.001537, -0.998839,
		-0.419320, 0.907581, 0.021611,
		49.872753, 57.925480, 54.424088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.369801, 57.713520, 53.780640>,  <50.166279, 57.290173, 54.408958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.369801, 57.713520, 53.780640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.286434, 57.867317, 54.140358>,  <50.236412, 57.959595, 54.356190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.286434, 57.867317, 54.140358>,  <50.369801, 57.713520, 53.780640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.286434, 57.867317, 54.140358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956960, 0.270038, 0.106330,
		-0.201960, 0.882748, -0.424226,
		-0.208420, 0.384492, 0.899292,
		50.223907, 57.982666, 54.410145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.744640, 58.370464, 53.920254>,  <50.369801, 57.713520, 53.780640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.744640, 58.370464, 53.920254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.688850, 58.200642, 54.278091>,  <50.655376, 58.098747, 54.492794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.688850, 58.200642, 54.278091>,  <50.744640, 58.370464, 53.920254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.688850, 58.200642, 54.278091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905833, 0.310250, 0.288463,
		-0.400016, 0.850587, 0.341304,
		-0.139473, -0.424554, 0.894595,
		50.647007, 58.073277, 54.546471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.126415, 58.802322, 54.430855>,  <50.744640, 58.370464, 53.920254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.126415, 58.802322, 54.430855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.076866, 58.436207, 54.584171>,  <51.047138, 58.216537, 54.676159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.076866, 58.436207, 54.584171>,  <51.126415, 58.802322, 54.430855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.076866, 58.436207, 54.584171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980047, -0.052336, 0.191751,
		-0.155447, 0.399394, 0.903505,
		-0.123870, -0.915284, 0.383289,
		51.039703, 58.161621, 54.699158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.252598, 58.755791, 55.234650>,  <51.126415, 58.802322, 54.430855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.252598, 58.755791, 55.234650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.306385, 58.412472, 55.036560>,  <51.338657, 58.206482, 54.917706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.306385, 58.412472, 55.036560>,  <51.252598, 58.755791, 55.234650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.306385, 58.412472, 55.036560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966756, 0.003939, 0.255670,
		-0.217490, -0.513137, 0.830294,
		0.134464, -0.858298, -0.495221,
		51.346725, 58.154984, 54.887993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.901226, 58.734478, 55.033581>,  <51.252598, 58.755791, 55.234650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.901226, 58.734478, 55.033581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.861172, 58.934250, 55.377800>,  <51.837139, 59.054111, 55.584332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.861172, 58.934250, 55.377800>,  <51.901226, 58.734478, 55.033581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.861172, 58.934250, 55.377800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168155, -0.843959, 0.509370,
		0.980661, 0.195713, 0.000530,
		-0.100137, 0.499430, 0.860548,
		51.831131, 59.084080, 55.635963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.423767, 58.616180, 55.456734>,  <51.901226, 58.734478, 55.033581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.423767, 58.616180, 55.456734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.113098, 58.680809, 55.700264>,  <51.926697, 58.719585, 55.846382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.113098, 58.680809, 55.700264>,  <52.423767, 58.616180, 55.456734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.113098, 58.680809, 55.700264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191179, -0.860490, 0.472237,
		0.600189, 0.483170, 0.637432,
		-0.776675, 0.161568, 0.608829,
		51.880096, 58.729279, 55.882912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.520172, 58.883389, 56.141685>,  <52.423767, 58.616180, 55.456734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.520172, 58.883389, 56.141685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.254204, 59.178268, 56.189713>,  <52.094624, 59.355198, 56.218529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.254204, 59.178268, 56.189713>,  <52.520172, 58.883389, 56.141685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.254204, 59.178268, 56.189713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746494, 0.650481, 0.140073,
		0.025159, 0.182769, -0.982834,
		-0.664916, 0.737204, 0.120070,
		52.054729, 59.399429, 56.225735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.562103, 59.510696, 55.641098>,  <52.520172, 58.883389, 56.141685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.562103, 59.510696, 55.641098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.436573, 59.583687, 56.013809>,  <52.361256, 59.627483, 56.237438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.436573, 59.583687, 56.013809>,  <52.562103, 59.510696, 55.641098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.436573, 59.583687, 56.013809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725935, 0.678650, 0.111590,
		-0.611990, 0.711432, -0.345446,
		-0.313826, 0.182480, 0.931780,
		52.342426, 59.638432, 56.293343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.463364, 60.198608, 55.838493>,  <52.562103, 59.510696, 55.641098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.463364, 60.198608, 55.838493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.601727, 59.999012, 56.156326>,  <52.684742, 59.879253, 56.347027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.601727, 59.999012, 56.156326>,  <52.463364, 60.198608, 55.838493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.601727, 59.999012, 56.156326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785464, 0.617220, 0.045673,
		-0.513221, 0.608315, 0.605440,
		0.345906, -0.498992, 0.794580,
		52.705498, 59.849316, 56.394699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.624680, 60.771725, 56.350365>,  <52.463364, 60.198608, 55.838493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.624680, 60.771725, 56.350365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.862244, 60.450844, 56.374825>,  <53.004784, 60.258316, 56.389500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.862244, 60.450844, 56.374825>,  <52.624680, 60.771725, 56.350365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.862244, 60.450844, 56.374825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785044, 0.594478, 0.174075,
		-0.175993, -0.055383, 0.982832,
		0.593913, -0.802202, 0.061146,
		53.040417, 60.210182, 56.393169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.087833, 60.972717, 56.883923>,  <52.624680, 60.771725, 56.350365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.087833, 60.972717, 56.883923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.245522, 60.649353, 56.709084>,  <53.340134, 60.455334, 56.604179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.245522, 60.649353, 56.709084>,  <53.087833, 60.972717, 56.883923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.245522, 60.649353, 56.709084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916624, 0.380160, 0.123607,
		0.066241, -0.449382, 0.890881,
		0.394224, -0.808415, -0.437096,
		53.363789, 60.406830, 56.577953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.586620, 60.660698, 57.435249>,  <53.087833, 60.972717, 56.883923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.586620, 60.660698, 57.435249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.648125, 60.629738, 57.041222>,  <53.685028, 60.611160, 56.804806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.648125, 60.629738, 57.041222>,  <53.586620, 60.660698, 57.435249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.648125, 60.629738, 57.041222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938316, 0.323912, 0.121010,
		0.309711, -0.942916, 0.122430,
		0.153759, -0.077400, -0.985072,
		53.694252, 60.606518, 56.745701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.216118, 60.233036, 57.331459>,  <53.586620, 60.660698, 57.435249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.216118, 60.233036, 57.331459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.153839, 60.473602, 57.018013>,  <54.116470, 60.617943, 56.829945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.153839, 60.473602, 57.018013>,  <54.216118, 60.233036, 57.331459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.153839, 60.473602, 57.018013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913732, 0.389086, 0.117071,
		0.375303, -0.697788, -0.610115,
		-0.155696, 0.601419, -0.783616,
		54.107132, 60.654030, 56.782928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.750778, 60.225647, 56.787445>,  <54.216118, 60.233036, 57.331459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.750778, 60.225647, 56.787445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.572311, 60.582802, 56.811707>,  <54.465233, 60.797096, 56.826263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.572311, 60.582802, 56.811707>,  <54.750778, 60.225647, 56.787445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.572311, 60.582802, 56.811707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879523, 0.424940, 0.214162,
		0.165448, 0.148902, -0.974913,
		-0.446168, 0.892891, 0.060657,
		54.438461, 60.850670, 56.829903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.365078, 59.698410, 56.719437>,  <54.750778, 60.225647, 56.787445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.365078, 59.698410, 56.719437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.204338, 59.347622, 56.824837>,  <55.107895, 59.137150, 56.888077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.204338, 59.347622, 56.824837>,  <55.365078, 59.698410, 56.719437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.204338, 59.347622, 56.824837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908519, -0.345850, 0.234481,
		-0.114503, 0.333621, 0.935728,
		-0.401849, -0.876975, 0.263500,
		55.083782, 59.084530, 56.903885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.685177, 59.442806, 57.340714>,  <55.365078, 59.698410, 56.719437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.685177, 59.442806, 57.340714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.571487, 59.179749, 57.061653>,  <55.503273, 59.021912, 56.894218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.571487, 59.179749, 57.061653>,  <55.685177, 59.442806, 57.340714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.571487, 59.179749, 57.061653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920665, -0.390287, -0.007176,
		-0.267565, -0.644342, 0.716403,
		-0.284226, -0.657647, -0.697650,
		55.486221, 58.982456, 56.852360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.940838, 58.863720, 57.622860>,  <55.685177, 59.442806, 57.340714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.940838, 58.863720, 57.622860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.948730, 58.885376, 57.223526>,  <55.953465, 58.898369, 56.983925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.948730, 58.885376, 57.223526>,  <55.940838, 58.863720, 57.622860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.948730, 58.885376, 57.223526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977746, -0.209639, 0.007955,
		-0.208860, -0.976279, -0.057067,
		0.019730, 0.054136, -0.998339,
		55.954651, 58.901615, 56.924023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.246799, 58.238987, 57.516800>,  <55.940838, 58.863720, 57.622860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.246799, 58.238987, 57.516800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.306648, 58.482613, 57.205246>,  <56.342556, 58.628788, 57.018314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.306648, 58.482613, 57.205246>,  <56.246799, 58.238987, 57.516800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.306648, 58.482613, 57.205246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984179, -0.016136, 0.176442,
		0.094895, -0.792959, -0.601839,
		0.149622, 0.609061, -0.778883,
		56.351536, 58.665329, 56.971581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.880440, 57.954063, 57.134987>,  <56.246799, 58.238987, 57.516800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.880440, 57.954063, 57.134987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.824936, 58.346340, 57.079857>,  <56.791634, 58.581707, 57.046780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.824936, 58.346340, 57.079857>,  <56.880440, 57.954063, 57.134987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.824936, 58.346340, 57.079857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952269, 0.170338, 0.253316,
		0.271901, -0.096097, -0.957515,
		-0.138758, 0.980689, -0.137825,
		56.783310, 58.640549, 57.038509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.333469, 58.298927, 56.638844>,  <56.880440, 57.954063, 57.134987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.333469, 58.298927, 56.638844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.210281, 58.520432, 56.948296>,  <57.136368, 58.653332, 57.133968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.210281, 58.520432, 56.948296>,  <57.333469, 58.298927, 56.638844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.210281, 58.520432, 56.948296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939253, 0.047467, 0.339928,
		0.151515, 0.831325, -0.534735,
		-0.307973, 0.553756, 0.773632,
		57.117889, 58.686558, 57.180386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.829998, 58.894962, 56.750057>,  <57.333469, 58.298927, 56.638844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.829998, 58.894962, 56.750057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.655334, 58.767418, 57.086548>,  <57.550537, 58.690891, 57.288441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.655334, 58.767418, 57.086548>,  <57.829998, 58.894962, 56.750057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.655334, 58.767418, 57.086548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896851, -0.227676, 0.379238,
		0.070602, 0.920050, 0.385387,
		-0.436662, -0.318860, 0.841222,
		57.524338, 58.671761, 57.338913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.216087, 59.119480, 57.337585>,  <57.829998, 58.894962, 56.750057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.216087, 59.119480, 57.337585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.034103, 58.767467, 57.392075>,  <57.924911, 58.556259, 57.424767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.034103, 58.767467, 57.392075>,  <58.216087, 59.119480, 57.337585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.034103, 58.767467, 57.392075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883352, -0.426635, 0.194093,
		-0.112690, 0.208638, 0.971479,
		-0.454962, -0.880030, 0.136224,
		57.897614, 58.503460, 57.432941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.447750, 58.779274, 58.027954>,  <58.216087, 59.119480, 57.337585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.447750, 58.779274, 58.027954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.344978, 58.521164, 57.740173>,  <58.283314, 58.366299, 57.567505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.344978, 58.521164, 57.740173>,  <58.447750, 58.779274, 58.027954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.344978, 58.521164, 57.740173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875818, -0.470186, 0.108937,
		-0.408569, -0.602118, 0.685948,
		-0.256930, -0.645275, -0.719450,
		58.267899, 58.327583, 57.524338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.624809, 58.102501, 58.326828>,  <58.447750, 58.779274, 58.027954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.624809, 58.102501, 58.326828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.687416, 58.153938, 57.935120>,  <58.724979, 58.184799, 57.700096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.687416, 58.153938, 57.935120>,  <58.624809, 58.102501, 58.326828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.687416, 58.153938, 57.935120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914871, -0.392485, 0.094689,
		-0.372171, -0.910725, -0.179076,
		0.156521, 0.128591, -0.979268,
		58.734371, 58.192516, 57.641338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.958153, 57.605225, 58.012501>,  <58.624809, 58.102501, 58.326828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.958153, 57.605225, 58.012501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.123184, 57.906593, 57.807701>,  <59.222202, 58.087414, 57.684822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.123184, 57.906593, 57.807701>,  <58.958153, 57.605225, 58.012501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.123184, 57.906593, 57.807701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874202, -0.485462, -0.009912,
		-0.256022, -0.443497, -0.858931,
		0.412582, 0.753417, -0.511995,
		59.246960, 58.132618, 57.654102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.334435, 57.337334, 57.432411>,  <58.958153, 57.605225, 58.012501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.334435, 57.337334, 57.432411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.502853, 57.672020, 57.572479>,  <59.603905, 57.872833, 57.656521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.502853, 57.672020, 57.572479>,  <59.334435, 57.337334, 57.432411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.502853, 57.672020, 57.572479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905142, -0.412548, -0.102576,
		0.058635, 0.360144, -0.931052,
		0.421046, 0.836720, 0.350172,
		59.629166, 57.923035, 57.677532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.992851, 57.519817, 56.974228>,  <59.334435, 57.337334, 57.432411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.992851, 57.519817, 56.974228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.967125, 57.645267, 57.353172>,  <59.951691, 57.720539, 57.580540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.967125, 57.645267, 57.353172>,  <59.992851, 57.519817, 56.974228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.967125, 57.645267, 57.353172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939098, -0.302115, 0.163770,
		0.337576, 0.900201, -0.275099,
		-0.064314, 0.313630, 0.947365,
		59.947830, 57.739357, 57.637383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.630753, 57.786709, 57.212093>,  <59.992851, 57.519817, 56.974228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.630753, 57.786709, 57.212093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.460670, 57.710415, 57.566002>,  <60.358620, 57.664639, 57.778347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.460670, 57.710415, 57.566002>,  <60.630753, 57.786709, 57.212093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.460670, 57.710415, 57.566002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905064, -0.097831, 0.413869,
		0.007621, 0.976755, 0.214223,
		-0.425206, -0.190731, 0.884772,
		60.333107, 57.653194, 57.831432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.728565, 58.351482, 57.628761>,  <60.630753, 57.786709, 57.212093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.728565, 58.351482, 57.628761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.715408, 57.985329, 57.789253>,  <60.707516, 57.765636, 57.885548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.715408, 57.985329, 57.789253>,  <60.728565, 58.351482, 57.628761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.715408, 57.985329, 57.789253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989762, 0.025951, 0.140348,
		-0.138885, 0.401737, 0.905162,
		-0.032893, -0.915387, 0.401229,
		60.705540, 57.710712, 57.909622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.898872, 58.325989, 58.344563>,  <60.728565, 58.351482, 57.628761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.898872, 58.325989, 58.344563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.004623, 57.987503, 58.159508>,  <61.068073, 57.784412, 58.048477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.004623, 57.987503, 58.159508>,  <60.898872, 58.325989, 58.344563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.004623, 57.987503, 58.159508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937548, 0.113061, 0.328970,
		-0.226073, -0.520712, 0.823256,
		0.264377, -0.846213, -0.462632,
		61.083935, 57.733639, 58.020718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.335278, 57.820538, 58.778370>,  <60.898872, 58.325989, 58.344563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.335278, 57.820538, 58.778370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.466492, 57.797256, 58.401222>,  <61.545219, 57.783287, 58.174934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.466492, 57.797256, 58.401222>,  <61.335278, 57.820538, 58.778370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.466492, 57.797256, 58.401222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934544, 0.165711, 0.314909,
		0.137917, -0.984455, 0.108750,
		0.328035, -0.058200, -0.942871,
		61.564903, 57.779797, 58.118362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.985626, 57.502907, 58.806389>,  <61.335278, 57.820538, 58.778370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.985626, 57.502907, 58.806389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.970139, 57.700600, 58.459000>,  <61.960846, 57.819214, 58.250568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.970139, 57.700600, 58.459000>,  <61.985626, 57.502907, 58.806389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.970139, 57.700600, 58.459000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935727, 0.322871, 0.142022,
		0.350595, -0.807151, -0.474963,
		-0.038719, 0.494228, -0.868470,
		61.958523, 57.848869, 58.198460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.794491, 57.549129, 58.792194>,  <61.985626, 57.502907, 58.806389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.794491, 57.549129, 58.792194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.034561, 57.251511, 58.909630>,  <63.178604, 57.072941, 58.980091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.034561, 57.251511, 58.909630>,  <62.794491, 57.549129, 58.792194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.034561, 57.251511, 58.909630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668362, 0.668131, 0.326946,
		-0.439415, -0.000004, 0.898284,
		0.600173, -0.744044, 0.293584,
		63.214615, 57.028297, 58.997704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.157883, 57.837418, 59.459568>,  <62.794491, 57.549129, 58.792194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.157883, 57.837418, 59.459568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.374916, 57.558487, 59.272232>,  <63.505135, 57.391129, 59.159832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.374916, 57.558487, 59.272232>,  <63.157883, 57.837418, 59.459568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.374916, 57.558487, 59.272232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837610, 0.407076, 0.364278,
		-0.063374, -0.589932, 0.804962,
		0.542580, -0.697330, -0.468336,
		63.537689, 57.349289, 59.131733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.590988, 57.409088, 59.922478>,  <63.157883, 57.837418, 59.459568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.590988, 57.409088, 59.922478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.732185, 57.467003, 59.552734>,  <63.816902, 57.501751, 59.330891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.732185, 57.467003, 59.552734>,  <63.590988, 57.409088, 59.922478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.732185, 57.467003, 59.552734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776027, 0.506591, 0.375697,
		0.522666, -0.849943, 0.066464,
		0.352991, 0.144786, -0.924356,
		63.838081, 57.510437, 59.275429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.411888, 57.316814, 59.774101>,  <63.590988, 57.409088, 59.922478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.411888, 57.316814, 59.774101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.257828, 57.581730, 59.517029>,  <64.165390, 57.740681, 59.362785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.257828, 57.581730, 59.517029>,  <64.411888, 57.316814, 59.774101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.257828, 57.581730, 59.517029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529961, 0.728851, 0.433495,
		0.755517, -0.173637, -0.631700,
		-0.385144, 0.662288, -0.642680,
		64.142288, 57.780415, 59.324226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.889793, 57.162266, 59.251129>,  <64.411888, 57.316814, 59.774101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.889793, 57.162266, 59.251129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.234612, 57.347420, 59.168564>,  <65.441505, 57.458511, 59.119026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.234612, 57.347420, 59.168564>,  <64.889793, 57.162266, 59.251129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.234612, 57.347420, 59.168564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463500, -0.555267, 0.690541,
		0.205029, -0.690952, -0.693216,
		0.862051, 0.462886, -0.206410,
		65.493225, 57.486286, 59.106640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.068260, 57.422516, 58.538013>,  <64.889793, 57.162266, 59.251129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.068260, 57.422516, 58.538013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.223885, 57.585320, 58.207443>,  <65.317261, 57.683002, 58.009102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.223885, 57.585320, 58.207443>,  <65.068260, 57.422516, 58.538013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.223885, 57.585320, 58.207443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769098, 0.350291, 0.534588,
		0.507071, -0.843588, -0.176745,
		0.389060, 0.407009, -0.826424,
		65.340599, 57.707420, 57.959515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.831215, 57.366970, 58.622833>,  <65.068260, 57.422516, 58.538013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.831215, 57.366970, 58.622833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.785675, 57.668819, 58.364349>,  <65.758354, 57.849930, 58.209259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.785675, 57.668819, 58.364349>,  <65.831215, 57.366970, 58.622833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.785675, 57.668819, 58.364349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833962, 0.426092, 0.350646,
		0.539950, -0.498994, -0.677834,
		-0.113849, 0.754619, -0.646211,
		65.751518, 57.895206, 58.170486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.505829, 57.516006, 58.484512>,  <65.831215, 57.366970, 58.622833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.505829, 57.516006, 58.484512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.276527, 57.819729, 58.361328>,  <66.138947, 58.001961, 58.287418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.276527, 57.819729, 58.361328>,  <66.505829, 57.516006, 58.484512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.276527, 57.819729, 58.361328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760770, 0.632816, 0.144126,
		0.304318, -0.151666, -0.940419,
		-0.573254, 0.759303, -0.307961,
		66.104553, 58.047520, 58.268940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.787544, 57.660652, 59.123669>,  <66.505829, 57.516006, 58.484512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.787544, 57.660652, 59.123669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.611900, 57.934448, 59.356445>,  <66.506516, 58.098724, 59.496113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.611900, 57.934448, 59.356445>,  <66.787544, 57.660652, 59.123669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.611900, 57.934448, 59.356445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895387, 0.386704, 0.220777,
		-0.073922, 0.618011, -0.782686,
		-0.439111, 0.684487, 0.581945,
		66.480164, 58.139793, 59.531029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.939369, 58.327618, 58.816830>,  <66.787544, 57.660652, 59.123669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.939369, 58.327618, 58.816830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.897659, 58.324760, 59.214638>,  <66.872635, 58.323048, 59.453323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.897659, 58.324760, 59.214638>,  <66.939369, 58.327618, 58.816830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.897659, 58.324760, 59.214638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943939, 0.314216, 0.101233,
		-0.313218, 0.949325, -0.026028,
		-0.104281, -0.007139, 0.994522,
		66.866371, 58.322620, 59.512993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.198547, 59.027573, 59.071274>,  <66.939369, 58.327618, 58.816830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.198547, 59.027573, 59.071274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.249222, 58.700485, 59.295876>,  <67.279625, 58.504234, 59.430637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.249222, 58.700485, 59.295876>,  <67.198547, 59.027573, 59.071274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.249222, 58.700485, 59.295876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949789, 0.263258, 0.169104,
		-0.286101, 0.511892, 0.810008,
		0.126678, -0.817717, 0.561508,
		67.287224, 58.455170, 59.464329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.494156, 59.258266, 59.676769>,  <67.198547, 59.027573, 59.071274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.494156, 59.258266, 59.676769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.580521, 58.877518, 59.589752>,  <67.632339, 58.649071, 59.537540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.580521, 58.877518, 59.589752>,  <67.494156, 59.258266, 59.676769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.580521, 58.877518, 59.589752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943615, 0.146164, 0.297030,
		-0.250936, -0.269415, 0.929756,
		0.215921, -0.951867, -0.217546,
		67.645294, 58.591957, 59.524487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.946220, 58.976692, 60.216606>,  <67.494156, 59.258266, 59.676769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.946220, 58.976692, 60.216606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.003418, 58.810921, 59.857094>,  <68.037735, 58.711456, 59.641388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.003418, 58.810921, 59.857094>,  <67.946220, 58.976692, 60.216606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.003418, 58.810921, 59.857094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988789, 0.099287, 0.111529,
		0.043016, -0.904649, 0.423980,
		0.142991, -0.414429, -0.898778,
		68.046318, 58.686592, 59.587460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.494667, 58.428246, 60.239063>,  <67.946220, 58.976692, 60.216606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.494667, 58.428246, 60.239063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.493591, 58.619804, 59.887917>,  <68.492943, 58.734737, 59.677227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.493591, 58.619804, 59.887917>,  <68.494667, 58.428246, 60.239063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.493591, 58.619804, 59.887917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978746, 0.181276, 0.095889,
		0.205057, -0.858953, -0.469203,
		-0.002691, 0.478893, -0.877869,
		68.492783, 58.763474, 59.624557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.205734, 58.402203, 59.981102>,  <68.494667, 58.428246, 60.239063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.205734, 58.402203, 59.981102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.013641, 58.712189, 59.816757>,  <68.898384, 58.898178, 59.718151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.013641, 58.712189, 59.816757>,  <69.205734, 58.402203, 59.981102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.013641, 58.712189, 59.816757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822930, 0.560189, 0.094730,
		0.303570, -0.292615, -0.906764,
		-0.480240, 0.774961, -0.410858,
		68.869568, 58.944675, 59.693501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.621407, 58.631088, 59.329250>,  <69.205734, 58.402203, 59.981102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.621407, 58.631088, 59.329250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.416145, 58.897602, 59.545670>,  <69.292992, 59.057510, 59.675522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.416145, 58.897602, 59.545670>,  <69.621407, 58.631088, 59.329250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.416145, 58.897602, 59.545670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845444, 0.501075, 0.184791,
		-0.147982, 0.552253, -0.820438,
		-0.513153, 0.666288, 0.541049,
		69.262199, 59.097488, 59.707985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.973236, 59.237148, 59.181892>,  <69.621407, 58.631088, 59.329250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.973236, 59.237148, 59.181892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.802422, 59.271782, 59.541924>,  <69.699936, 59.292564, 59.757942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.802422, 59.271782, 59.541924>,  <69.973236, 59.237148, 59.181892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.802422, 59.271782, 59.541924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903821, 0.070939, 0.421990,
		-0.027313, 0.993715, -0.108552,
		-0.427039, 0.086586, 0.900078,
		69.674309, 59.297756, 59.811947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.226494, 59.934639, 59.501995>,  <69.973236, 59.237148, 59.181892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.226494, 59.934639, 59.501995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.141632, 59.631744, 59.749084>,  <70.090714, 59.450008, 59.897339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.141632, 59.631744, 59.749084>,  <70.226494, 59.934639, 59.501995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.141632, 59.631744, 59.749084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968097, -0.076615, 0.238576,
		-0.133331, 0.648632, 0.749333,
		-0.212158, -0.757237, 0.617723,
		70.077988, 59.404572, 59.934402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.763908, 60.059143, 60.012978>,  <70.226494, 59.934639, 59.501995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.763908, 60.059143, 60.012978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.618050, 59.687004, 60.028366>,  <70.530533, 59.463718, 60.037601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.618050, 59.687004, 60.028366>,  <70.763908, 60.059143, 60.012978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.618050, 59.687004, 60.028366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926579, -0.358458, 0.113836,
		-0.092116, 0.077160, 0.992754,
		-0.364645, -0.930352, 0.038475,
		70.508659, 59.407898, 60.039909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.122993, 59.805134, 60.572460>,  <70.763908, 60.059143, 60.012978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.122993, 59.805134, 60.572460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.996078, 59.502205, 60.344147>,  <70.919930, 59.320446, 60.207161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.996078, 59.502205, 60.344147>,  <71.122993, 59.805134, 60.572460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.996078, 59.502205, 60.344147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875925, -0.464697, 0.129660,
		-0.363435, -0.458823, 0.810800,
		-0.317286, -0.757323, -0.570782,
		70.900894, 59.275009, 60.172913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.140755, 59.068745, 60.865372>,  <71.122993, 59.805134, 60.572460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.140755, 59.068745, 60.865372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.190002, 59.000496, 60.474327>,  <71.219551, 58.959545, 60.239700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.190002, 59.000496, 60.474327>,  <71.140755, 59.068745, 60.865372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.190002, 59.000496, 60.474327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675936, -0.706853, 0.208494,
		-0.726603, -0.686475, 0.028302,
		0.123120, -0.170622, -0.977614,
		71.226936, 58.949310, 60.181042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.979172, 58.380527, 60.571579>,  <71.140755, 59.068745, 60.865372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.979172, 58.380527, 60.571579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.280617, 58.510086, 60.342781>,  <71.461479, 58.587822, 60.205502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.280617, 58.510086, 60.342781>,  <70.979172, 58.380527, 60.571579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.280617, 58.510086, 60.342781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545141, -0.794179, 0.268518,
		-0.367291, -0.514171, -0.775064,
		0.753604, 0.323895, -0.571991,
		71.506699, 58.607254, 60.171185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.382042, 57.841557, 60.338333>,  <70.979172, 58.380527, 60.571579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.382042, 57.841557, 60.338333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.651627, 58.132591, 60.287117>,  <71.813377, 58.307213, 60.256386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.651627, 58.132591, 60.287117>,  <71.382042, 57.841557, 60.338333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.651627, 58.132591, 60.287117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738758, -0.663109, 0.120510,
		0.002776, -0.175810, -0.984420,
		0.673965, 0.727583, -0.128040,
		71.853813, 58.350864, 60.248707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.888962, 57.732906, 59.820389>,  <71.382042, 57.841557, 60.338333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.888962, 57.732906, 59.820389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.091805, 57.950302, 60.087959>,  <72.213509, 58.080738, 60.248501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.091805, 57.950302, 60.087959>,  <71.888962, 57.732906, 59.820389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.091805, 57.950302, 60.087959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790104, -0.603229, -0.108863,
		0.344350, 0.583727, -0.735314,
		0.507108, 0.543487, 0.668927,
		72.243935, 58.113350, 60.288639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.519234, 58.104473, 59.491676>,  <71.888962, 57.732906, 59.820389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.519234, 58.104473, 59.491676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.539497, 57.987907, 59.873779>,  <72.551659, 57.917969, 60.103039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.539497, 57.987907, 59.873779>,  <72.519234, 58.104473, 59.491676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.539497, 57.987907, 59.873779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913758, -0.372516, -0.162107,
		0.403088, 0.881083, 0.247411,
		0.050665, -0.291417, 0.955253,
		72.554695, 57.900482, 60.160355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.109024, 58.160187, 59.815060>,  <72.519234, 58.104473, 59.491676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.109024, 58.160187, 59.815060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.993271, 57.851562, 60.041672>,  <72.923820, 57.666389, 60.177639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.993271, 57.851562, 60.041672>,  <73.109024, 58.160187, 59.815060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.993271, 57.851562, 60.041672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891915, -0.432196, -0.133018,
		0.347482, 0.466803, 0.813235,
		-0.289384, -0.771558, 0.566529,
		72.906456, 57.620094, 60.211632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.608482, 58.201199, 60.304832>,  <73.109024, 58.160187, 59.815060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.608482, 58.201199, 60.304832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.462135, 57.832420, 60.253990>,  <73.374329, 57.611153, 60.223484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.462135, 57.832420, 60.253990>,  <73.608482, 58.201199, 60.304832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.462135, 57.832420, 60.253990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918985, -0.336317, -0.205808,
		0.146996, -0.192108, 0.970302,
		-0.365866, -0.921947, -0.127107,
		73.352379, 57.555836, 60.215858>
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
