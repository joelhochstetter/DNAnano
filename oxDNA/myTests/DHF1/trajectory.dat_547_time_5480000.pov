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
	<4.859829, 0.648477, 0.353540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.613693, 0.592548, 0.663845>,  <4.466012, 0.558991, 0.850028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.613693, 0.592548, 0.663845>,  <4.859829, 0.648477, 0.353540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.613693, 0.592548, 0.663845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161134, 0.985673, 0.049843,
		-0.771617, -0.094331, -0.629054,
		-0.615340, -0.139821, 0.775762,
		4.429091, 0.550602, 0.896574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.179011, 0.969966, 0.203237>,  <4.859829, 0.648477, 0.353540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.179011, 0.969966, 0.203237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.276176, 0.971821, 0.591251>,  <4.334476, 0.972934, 0.824060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.276176, 0.971821, 0.591251>,  <4.179011, 0.969966, 0.203237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.276176, 0.971821, 0.591251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253008, 0.965679, 0.058741,
		-0.936472, -0.259696, 0.235749,
		0.242913, 0.004638, 0.970037,
		4.349050, 0.973212, 0.882263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.632900, 1.336174, 0.622402>,  <4.179011, 0.969966, 0.203237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.632900, 1.336174, 0.622402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.999985, 1.361404, 0.779285>,  <4.220235, 1.376543, 0.873415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.999985, 1.361404, 0.779285>,  <3.632900, 1.336174, 0.622402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.999985, 1.361404, 0.779285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076468, 0.996899, 0.018598,
		-0.389819, -0.047060, 0.919689,
		0.917711, 0.063077, 0.392208,
		4.275298, 1.380327, 0.896948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.592353, 1.697303, 1.338106>,  <3.632900, 1.336174, 0.622402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.592353, 1.697303, 1.338106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.924915, 1.733921, 1.118877>,  <4.124453, 1.755892, 0.987340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.924915, 1.733921, 1.118877>,  <3.592353, 1.697303, 1.338106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.924915, 1.733921, 1.118877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076091, 0.995800, 0.050905,
		0.550430, -0.000620, 0.834881,
		0.831407, 0.091546, -0.548071,
		4.174337, 1.761385, 0.954456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.843532, 2.238742, 1.637378>,  <3.592353, 1.697303, 1.338106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.843532, 2.238742, 1.637378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.029480, 2.225094, 1.283489>,  <4.141049, 2.216905, 1.071156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.029480, 2.225094, 1.283489>,  <3.843532, 2.238742, 1.637378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.029480, 2.225094, 1.283489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195065, 0.970756, -0.139934,
		0.863623, 0.237629, 0.444620,
		0.464870, -0.034121, -0.884721,
		4.168941, 2.214858, 1.018073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.377426, 2.686696, 1.711026>,  <3.843532, 2.238742, 1.637378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.377426, 2.686696, 1.711026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.292980, 2.646027, 1.322163>,  <4.242313, 2.621625, 1.088844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.292980, 2.646027, 1.322163>,  <4.377426, 2.686696, 1.711026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.292980, 2.646027, 1.322163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214018, 0.975251, -0.055521,
		0.953744, 0.196338, -0.227650,
		-0.211115, -0.101674, -0.972159,
		4.229646, 2.615525, 1.030515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.802389, 3.262409, 1.359434>,  <4.377426, 2.686696, 1.711026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.802389, 3.262409, 1.359434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.520359, 3.148922, 1.099472>,  <4.351141, 3.080830, 0.943495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.520359, 3.148922, 1.099472>,  <4.802389, 3.262409, 1.359434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.520359, 3.148922, 1.099472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156868, 0.956173, -0.247237,
		0.691566, -0.072372, -0.718679,
		-0.705074, -0.283718, -0.649904,
		4.308837, 3.063807, 0.904501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.878234, 3.554192, 0.670303>,  <4.802389, 3.262409, 1.359434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.878234, 3.554192, 0.670303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.488098, 3.467148, 0.685051>,  <4.254017, 3.414921, 0.693900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.488098, 3.467148, 0.685051>,  <4.878234, 3.554192, 0.670303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.488098, 3.467148, 0.685051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220253, 0.948873, -0.226117,
		0.014221, -0.228661, -0.973402,
		-0.975339, -0.217611, 0.036869,
		4.195497, 3.401865, 0.696112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.098069, 4.537369, 0.814351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.718559, 4.434700, 0.740654>,  <3.490853, 4.373098, 0.696436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.718559, 4.434700, 0.740654>,  <4.098069, 4.537369, 0.814351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.718559, 4.434700, 0.740654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283928, -0.948451, -0.140803,
		-0.138604, -0.185901, 0.972743,
		-0.948775, -0.256673, -0.184241,
		3.433927, 4.357698, 0.685382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.670554, 4.105809, 1.388772>,  <4.098069, 4.537369, 0.814351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.670554, 4.105809, 1.388772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.554916, 4.051125, 1.009777>,  <3.485534, 4.018314, 0.782380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.554916, 4.051125, 1.009777>,  <3.670554, 4.105809, 1.388772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.554916, 4.051125, 1.009777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255348, -0.964903, 0.061314,
		-0.922617, -0.224214, 0.313857,
		-0.289095, -0.136712, -0.947488,
		3.468188, 4.010111, 0.725531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.238720, 3.397805, 1.296081>,  <3.670554, 4.105809, 1.388772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.238720, 3.397805, 1.296081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434784, 3.514671, 0.967598>,  <3.552423, 3.584791, 0.770508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434784, 3.514671, 0.967598>,  <3.238720, 3.397805, 1.296081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.434784, 3.514671, 0.967598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370213, -0.922728, -0.107311,
		-0.789104, -0.251422, -0.560448,
		0.490161, 0.292165, -0.821208,
		3.581832, 3.602321, 0.721236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.957915, 3.118249, 0.709489>,  <3.238720, 3.397805, 1.296081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.957915, 3.118249, 0.709489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.347771, 3.205414, 0.689121>,  <3.581684, 3.257712, 0.676901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.347771, 3.205414, 0.689121>,  <2.957915, 3.118249, 0.709489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.347771, 3.205414, 0.689121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219662, -0.975060, 0.031714,
		-0.042738, -0.042095, -0.998199,
		0.974640, 0.217911, -0.050919,
		3.640162, 3.270787, 0.673846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.248726, 2.742282, 0.188584>,  <2.957915, 3.118249, 0.709489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.248726, 2.742282, 0.188584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585342, 2.835007, 0.383755>,  <3.787312, 2.890642, 0.500857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585342, 2.835007, 0.383755>,  <3.248726, 2.742282, 0.188584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.585342, 2.835007, 0.383755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324647, -0.938961, -0.113830,
		0.431757, 0.254197, -0.865431,
		0.841541, 0.231812, 0.487927,
		3.837805, 2.904550, 0.530133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.865162, 2.442087, -0.177532>,  <3.248726, 2.742282, 0.188584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.865162, 2.442087, -0.177532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.971901, 2.508575, 0.202187>,  <4.035944, 2.548469, 0.430018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.971901, 2.508575, 0.202187>,  <3.865162, 2.442087, -0.177532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.971901, 2.508575, 0.202187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370531, -0.926997, 0.058160,
		0.889663, 0.336224, -0.308956,
		0.266846, 0.166221, 0.949296,
		4.051955, 2.558442, 0.486976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.618080, 2.174752, -0.191913>,  <3.865162, 2.442087, -0.177532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.618080, 2.174752, -0.191913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.481926, 2.182594, 0.184120>,  <4.400234, 2.187300, 0.409740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.481926, 2.182594, 0.184120>,  <4.618080, 2.174752, -0.191913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.481926, 2.182594, 0.184120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520136, -0.828962, 0.205620,
		0.783324, 0.558961, 0.271968,
		-0.340385, 0.019607, 0.940082,
		4.379810, 2.188476, 0.466145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.151426, 2.009525, 0.159064>,  <4.618080, 2.174752, -0.191913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.151426, 2.009525, 0.159064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.843872, 1.921562, 0.399216>,  <4.659339, 1.868785, 0.543307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.843872, 1.921562, 0.399216>,  <5.151426, 2.009525, 0.159064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.843872, 1.921562, 0.399216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462208, -0.839973, 0.284270,
		0.441789, 0.496072, 0.747486,
		-0.768886, -0.219906, 0.600379,
		4.613206, 1.855590, 0.579329>
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
