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
	<3.069731, 2.531210, 3.631082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.446857, 2.542847, 3.763897>,  <3.673134, 2.549829, 3.843586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.446857, 2.542847, 3.763897>,  <3.069731, 2.531210, 3.631082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.446857, 2.542847, 3.763897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189454, 0.772837, -0.605665,
		-0.274230, 0.633937, 0.723133,
		0.942817, 0.029091, 0.332038,
		3.729703, 2.551574, 3.863508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.273053, 3.144073, 4.105570>,  <3.069731, 2.531210, 3.631082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.273053, 3.144073, 4.105570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567909, 3.011539, 3.869997>,  <3.744823, 2.932019, 3.728653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567909, 3.011539, 3.869997>,  <3.273053, 3.144073, 4.105570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567909, 3.011539, 3.869997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060222, 0.835858, -0.545633,
		0.673050, 0.437675, 0.596192,
		0.737141, -0.331334, -0.588932,
		3.789052, 2.912139, 3.693317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.688582, 3.670258, 3.987891>,  <3.273053, 3.144073, 4.105570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.688582, 3.670258, 3.987891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.797440, 3.424284, 3.691839>,  <3.862754, 3.276700, 3.514208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.797440, 3.424284, 3.691839>,  <3.688582, 3.670258, 3.987891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.797440, 3.424284, 3.691839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076509, 0.752898, -0.653675,
		0.959210, 0.234520, 0.157849,
		0.272144, -0.614935, -0.740131,
		3.879083, 3.239804, 3.469800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.251537, 3.970940, 3.518575>,  <3.688582, 3.670258, 3.987891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.251537, 3.970940, 3.518575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.042038, 3.720467, 3.287548>,  <3.916339, 3.570183, 3.148932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.042038, 3.720467, 3.287548>,  <4.251537, 3.970940, 3.518575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.042038, 3.720467, 3.287548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085886, 0.635726, -0.767122,
		0.847533, -0.451383, -0.279179,
		-0.523747, -0.626184, -0.577567,
		3.884914, 3.532612, 3.114278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.680117, 3.931643, 2.980363>,  <4.251537, 3.970940, 3.518575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.680117, 3.931643, 2.980363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.336655, 3.793238, 2.829109>,  <4.130578, 3.710194, 2.738357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.336655, 3.793238, 2.829109>,  <4.680117, 3.931643, 2.980363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.336655, 3.793238, 2.829109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133543, 0.561239, -0.816809,
		0.494848, -0.751856, -0.435704,
		-0.858657, -0.346012, -0.378133,
		4.079058, 3.689434, 2.715669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.864095, 3.679898, 2.293016>,  <4.680117, 3.931643, 2.980363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.864095, 3.679898, 2.293016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.467930, 3.735149, 2.292309>,  <4.230231, 3.768300, 2.291884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.467930, 3.735149, 2.292309>,  <4.864095, 3.679898, 2.293016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.467930, 3.735149, 2.292309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030727, 0.207804, -0.977688,
		-0.134680, -0.968369, -0.210055,
		-0.990413, 0.138129, -0.001768,
		4.170806, 3.776588, 2.291778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.626066, 3.184281, 1.753785>,  <4.864095, 3.679898, 2.293016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.626066, 3.184281, 1.753785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.344265, 3.465078, 1.795513>,  <4.175184, 3.633557, 1.820550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.344265, 3.465078, 1.795513>,  <4.626066, 3.184281, 1.753785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.344265, 3.465078, 1.795513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002320, 0.149268, -0.988794,
		-0.709698, -0.696366, -0.106788,
		-0.704502, 0.701993, 0.104319,
		4.132915, 3.675676, 1.826809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.178070, 3.084370, 1.312394>,  <4.626066, 3.184281, 1.753785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.178070, 3.084370, 1.312394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.058437, 3.460777, 1.375685>,  <3.986658, 3.686622, 1.413659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.058437, 3.460777, 1.375685>,  <4.178070, 3.084370, 1.312394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.058437, 3.460777, 1.375685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105078, 0.197287, -0.974698,
		-0.948425, -0.274887, -0.157885,
		-0.299080, 0.941018, 0.158227,
		3.968713, 3.743083, 1.423153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.209835, 4.159237, 0.104265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.956253, 4.429761, 0.254309>,  <3.804104, 4.592075, 0.344335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.956253, 4.429761, 0.254309>,  <4.209835, 4.159237, 0.104265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.956253, 4.429761, 0.254309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002428, -0.486770, 0.873527,
		0.773367, 0.552865, 0.310231,
		-0.633954, 0.676310, 0.375110,
		3.766067, 4.632654, 0.366842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.512787, 4.458092, 0.673272>,  <4.209835, 4.159237, 0.104265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.512787, 4.458092, 0.673272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.116447, 4.493262, 0.714237>,  <3.878644, 4.514364, 0.738816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.116447, 4.493262, 0.714237>,  <4.512787, 4.458092, 0.673272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.116447, 4.493262, 0.714237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042709, -0.515530, 0.855806,
		0.128044, 0.852349, 0.507057,
		-0.990848, 0.087925, 0.102413,
		3.819193, 4.519640, 0.744961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.298810, 4.936041, 1.243901>,  <4.512787, 4.458092, 0.673272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.298810, 4.936041, 1.243901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.047791, 4.633164, 1.171412>,  <3.897178, 4.451438, 1.127918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.047791, 4.633164, 1.171412>,  <4.298810, 4.936041, 1.243901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.047791, 4.633164, 1.171412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161712, -0.354450, 0.920986,
		-0.761597, 0.548659, 0.344882,
		-0.627550, -0.757192, -0.181223,
		3.859525, 4.406007, 1.117045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.631466, 4.952871, 1.693791>,  <4.298810, 4.936041, 1.243901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.631466, 4.952871, 1.693791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.718025, 4.572233, 1.606485>,  <3.769961, 4.343851, 1.554102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.718025, 4.572233, 1.606485>,  <3.631466, 4.952871, 1.693791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.718025, 4.572233, 1.606485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006054, -0.222249, 0.974971,
		-0.976287, -0.212302, -0.042334,
		0.216397, -0.951595, -0.218264,
		3.782944, 4.286755, 1.541006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.141820, 4.546265, 1.972989>,  <3.631466, 4.952871, 1.693791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.141820, 4.546265, 1.972989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.437691, 4.281373, 1.925102>,  <3.615213, 4.122438, 1.896370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.437691, 4.281373, 1.925102>,  <3.141820, 4.546265, 1.972989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.437691, 4.281373, 1.925102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124224, -0.309199, 0.942849,
		-0.661398, -0.682531, -0.310972,
		0.739677, -0.662229, -0.119717,
		3.659594, 4.082705, 1.889187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.900676, 4.020199, 2.295165>,  <3.141820, 4.546265, 1.972989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.900676, 4.020199, 2.295165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.283096, 3.905219, 2.272039>,  <3.512548, 3.836231, 2.258164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.283096, 3.905219, 2.272039>,  <2.900676, 4.020199, 2.295165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.283096, 3.905219, 2.272039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092692, -0.483370, 0.870495,
		-0.278167, -0.826878, -0.488770,
		0.956049, -0.287449, -0.057812,
		3.569911, 3.818984, 2.254696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.859161, 3.431201, 2.397681>,  <2.900676, 4.020199, 2.295165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.859161, 3.431201, 2.397681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.235847, 3.523627, 2.495480>,  <3.461859, 3.579083, 2.554159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.235847, 3.523627, 2.495480>,  <2.859161, 3.431201, 2.397681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.235847, 3.523627, 2.495480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043822, -0.636337, 0.770165,
		0.333542, -0.735991, -0.589123,
		0.941716, 0.231066, 0.244498,
		3.518362, 3.592947, 2.568829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.119335, 2.748984, 2.431520>,  <2.859161, 3.431201, 2.397681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.119335, 2.748984, 2.431520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327766, 3.015186, 2.645279>,  <3.452825, 3.174908, 2.773534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327766, 3.015186, 2.645279>,  <3.119335, 2.748984, 2.431520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.327766, 3.015186, 2.645279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010714, -0.631169, 0.775571,
		0.853442, -0.398407, -0.336019,
		0.521078, 0.665505, 0.534397,
		3.484090, 3.214838, 2.805598>
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
