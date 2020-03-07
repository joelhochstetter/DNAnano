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
	<3.732513, 4.954193, 4.443900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.068101, 5.143757, 4.336914>,  <4.269454, 5.257495, 4.272722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.068101, 5.143757, 4.336914>,  <3.732513, 4.954193, 4.443900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.068101, 5.143757, 4.336914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478111, -0.876662, -0.053609,
		-0.259882, -0.082901, -0.962075,
		0.838970, 0.473911, -0.267465,
		4.319792, 5.285930, 4.256675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.978413, 4.787261, 3.724533>,  <3.732513, 4.954193, 4.443900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.978413, 4.787261, 3.724533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.284076, 4.895426, 3.958778>,  <4.467474, 4.960325, 4.099325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.284076, 4.895426, 3.958778>,  <3.978413, 4.787261, 3.724533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.284076, 4.895426, 3.958778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443996, -0.879082, -0.173440,
		0.467902, 0.392545, -0.791818,
		0.764157, 0.270412, 0.585613,
		4.513323, 4.976549, 4.134462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.696747, 4.732730, 3.381511>,  <3.978413, 4.787261, 3.724533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.696747, 4.732730, 3.381511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.676034, 4.678661, 3.777298>,  <4.663606, 4.646220, 4.014771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.676034, 4.678661, 3.777298>,  <4.696747, 4.732730, 3.381511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.676034, 4.678661, 3.777298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588098, -0.804904, -0.079180,
		0.807130, 0.577804, 0.121174,
		-0.051783, -0.135171, 0.989468,
		4.660499, 4.638110, 4.074139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.336964, 4.735411, 3.672115>,  <4.696747, 4.732730, 3.381511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.336964, 4.735411, 3.672115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.056392, 4.501280, 3.834785>,  <4.888049, 4.360801, 3.932388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.056392, 4.501280, 3.834785>,  <5.336964, 4.735411, 3.672115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.056392, 4.501280, 3.834785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588395, -0.797550, -0.133056,
		0.402227, 0.145957, 0.903831,
		-0.701430, -0.585329, 0.406677,
		4.845963, 4.325681, 3.956789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.557862, 4.298954, 4.271572>,  <5.336964, 4.735411, 3.672115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.557862, 4.298954, 4.271572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.265700, 4.094107, 4.090797>,  <5.090404, 3.971198, 3.982333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.265700, 4.094107, 4.090797>,  <5.557862, 4.298954, 4.271572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.265700, 4.094107, 4.090797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590405, -0.806076, -0.040776,
		-0.343412, -0.296608, 0.891119,
		-0.730404, -0.512118, -0.451935,
		5.046579, 3.940471, 3.955217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.650517, 3.621469, 4.578543>,  <5.557862, 4.298954, 4.271572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.650517, 3.621469, 4.578543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.431039, 3.562199, 4.249428>,  <5.299352, 3.526637, 4.051959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.431039, 3.562199, 4.249428>,  <5.650517, 3.621469, 4.578543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.431039, 3.562199, 4.249428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545710, -0.809063, -0.218216,
		-0.633352, -0.568737, 0.524790,
		-0.548695, -0.148175, -0.822786,
		5.266430, 3.517746, 4.002592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.344432, 3.048998, 4.734120>,  <5.650517, 3.621469, 4.578543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.344432, 3.048998, 4.734120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.326241, 3.106594, 4.338707>,  <5.315327, 3.141152, 4.101459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.326241, 3.106594, 4.338707>,  <5.344432, 3.048998, 4.734120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.326241, 3.106594, 4.338707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358602, -0.921248, -0.150687,
		-0.932382, -0.361343, -0.009741,
		-0.045476, 0.143991, -0.988533,
		5.312599, 3.149791, 4.042147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.104082, 2.391680, 4.500560>,  <5.344432, 3.048998, 4.734120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.104082, 2.391680, 4.500560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.267768, 2.557938, 4.175652>,  <5.365979, 2.657692, 3.980706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.267768, 2.557938, 4.175652>,  <5.104082, 2.391680, 4.500560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.267768, 2.557938, 4.175652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744778, -0.666436, 0.034193,
		-0.527115, -0.618953, -0.582278,
		0.409214, 0.415644, -0.812271,
		5.390532, 2.682631, 3.931970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.315336, 1.968275, 4.341290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.408057, 1.978661, 3.952324>,  <1.463690, 1.984892, 3.718944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.408057, 1.978661, 3.952324>,  <1.315336, 1.968275, 4.341290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.408057, 1.978661, 3.952324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662423, 0.736263, -0.138249,
		0.712365, 0.676197, 0.187867,
		0.231804, 0.025964, -0.972416,
		1.477598, 1.986450, 3.660599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.538821, 2.720935, 4.172648>,  <1.315336, 1.968275, 4.341290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.538821, 2.720935, 4.172648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.343063, 2.517105, 3.889572>,  <1.225609, 2.394807, 3.719727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.343063, 2.517105, 3.889572>,  <1.538821, 2.720935, 4.172648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.343063, 2.517105, 3.889572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666482, 0.741907, -0.073316,
		0.562400, 0.435782, -0.702709,
		-0.489395, -0.509576, -0.707690,
		1.196245, 2.364233, 3.677265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.373739, 3.238040, 3.606984>,  <1.538821, 2.720935, 4.172648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.373739, 3.238040, 3.606984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.108242, 2.940823, 3.572731>,  <0.948944, 2.762492, 3.552179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.108242, 2.940823, 3.572731>,  <1.373739, 3.238040, 3.606984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.108242, 2.940823, 3.572731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739395, 0.669103, -0.074806,
		0.112880, 0.013664, -0.993515,
		-0.663741, -0.743044, -0.085631,
		0.909120, 2.717909, 3.547041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.935662, 3.423611, 3.007581>,  <1.373739, 3.238040, 3.606984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.935662, 3.423611, 3.007581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.752960, 3.183716, 3.270393>,  <0.643339, 3.039779, 3.428081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.752960, 3.183716, 3.270393>,  <0.935662, 3.423611, 3.007581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.752960, 3.183716, 3.270393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791383, 0.611270, 0.007813,
		-0.406310, -0.516395, -0.753823,
		-0.456754, -0.599737, 0.657032,
		0.615934, 3.003795, 3.467503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.174154, 3.306357, 2.727330>,  <0.935662, 3.423611, 3.007581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.174154, 3.306357, 2.727330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.211912, 3.250160, 3.121559>,  <0.234567, 3.216442, 3.358096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.211912, 3.250160, 3.121559>,  <0.174154, 3.306357, 2.727330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.211912, 3.250160, 3.121559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755235, 0.634904, 0.162839,
		-0.648621, -0.759710, -0.046172,
		0.094396, -0.140491, 0.985572,
		0.240231, 3.208013, 3.417231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.470507, 3.248511, 2.972910>,  <0.174154, 3.306357, 2.727330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.470507, 3.248511, 2.972910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.265579, 3.299961, 3.312553>,  <-0.142623, 3.330831, 3.516339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.265579, 3.299961, 3.312553>,  <-0.470507, 3.248511, 2.972910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.265579, 3.299961, 3.312553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627533, 0.731053, 0.267888,
		-0.586286, -0.670087, 0.455249,
		0.512319, 0.128625, 0.849108,
		-0.111883, 3.338549, 3.567286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.977972, 3.331059, 3.532371>,  <-0.470507, 3.248511, 2.972910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.977972, 3.331059, 3.532371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.649714, 3.509830, 3.674805>,  <-0.452759, 3.617093, 3.760265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.649714, 3.509830, 3.674805>,  <-0.977972, 3.331059, 3.532371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.649714, 3.509830, 3.674805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567993, 0.706282, 0.422552,
		-0.062646, -0.549019, 0.833459,
		0.820646, 0.446927, 0.356085,
		-0.403520, 3.643909, 3.781630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.124963, 3.486480, 4.220964>,  <-0.977972, 3.331059, 3.532371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.124963, 3.486480, 4.220964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.859415, 3.758953, 4.097504>,  <-0.700086, 3.922437, 4.023427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.859415, 3.758953, 4.097504>,  <-1.124963, 3.486480, 4.220964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.859415, 3.758953, 4.097504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563705, 0.727011, 0.392036,
		0.491440, -0.086274, 0.866628,
		0.663870, 0.681184, -0.308650,
		-0.660254, 3.963308, 4.004909>
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
