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
	<1.116378, 0.287987, 1.469874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.222084, -0.096085, 1.433609>,  <1.285508, -0.326528, 1.411850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.222084, -0.096085, 1.433609>,  <1.116378, 0.287987, 1.469874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.222084, -0.096085, 1.433609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474498, 0.047600, 0.878969,
		-0.839652, -0.275300, 0.468182,
		0.264265, -0.960179, -0.090662,
		1.301364, -0.384138, 1.406410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.872857, 0.926812, 1.670459>,  <1.116378, 0.287987, 1.469874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.872857, 0.926812, 1.670459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.847069, 1.315567, 1.579880>,  <0.831596, 1.548820, 1.525532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.847069, 1.315567, 1.579880>,  <0.872857, 0.926812, 1.670459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.847069, 1.315567, 1.579880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112839, 0.218364, 0.969321,
		0.991519, 0.088046, 0.095589,
		-0.064471, 0.971887, -0.226448,
		0.827727, 1.607133, 1.511945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.398707, 1.340787, 2.102747>,  <0.872857, 0.926812, 1.670459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.398707, 1.340787, 2.102747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093597, 1.584427, 2.015869>,  <0.910532, 1.730611, 1.963743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093597, 1.584427, 2.015869>,  <1.398707, 1.340787, 2.102747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.093597, 1.584427, 2.015869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037031, 0.294173, 0.955034,
		0.645605, 0.736518, -0.201832,
		-0.762773, 0.609101, -0.217194,
		0.864765, 1.767157, 1.950711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.427925, 2.055903, 2.328677>,  <1.398707, 1.340787, 2.102747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.427925, 2.055903, 2.328677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.030746, 2.031418, 2.288055>,  <0.792440, 2.016727, 2.263683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.030746, 2.031418, 2.288055>,  <1.427925, 2.055903, 2.328677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.030746, 2.031418, 2.288055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118510, 0.483827, 0.867103,
		-0.003944, 0.873020, -0.487668,
		-0.992945, -0.061213, -0.101554,
		0.732863, 2.013054, 2.257589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.027730, 2.758153, 2.363114>,  <1.427925, 2.055903, 2.328677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.027730, 2.758153, 2.363114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.798180, 2.451294, 2.477760>,  <0.660449, 2.267179, 2.546548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.798180, 2.451294, 2.477760>,  <1.027730, 2.758153, 2.363114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.798180, 2.451294, 2.477760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153032, 0.444275, 0.882723,
		-0.804516, 0.462713, -0.372358,
		-0.573877, -0.767148, 0.286617,
		0.626016, 2.221149, 2.563745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.436646, 3.026191, 2.696036>,  <1.027730, 2.758153, 2.363114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.436646, 3.026191, 2.696036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.451569, 2.646103, 2.819771>,  <0.460522, 2.418050, 2.894012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.451569, 2.646103, 2.819771>,  <0.436646, 3.026191, 2.696036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.451569, 2.646103, 2.819771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200782, 0.296112, 0.933812,
		-0.978925, -0.096948, -0.179740,
		0.037308, -0.950220, 0.309337,
		0.462761, 2.361037, 2.912572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.153048, 2.916985, 3.193559>,  <0.436646, 3.026191, 2.696036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.153048, 2.916985, 3.193559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.100327, 2.614838, 3.260704>,  <0.252351, 2.433549, 3.300991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.100327, 2.614838, 3.260704>,  <-0.153048, 2.916985, 3.193559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.100327, 2.614838, 3.260704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192198, 0.056548, 0.979726,
		-0.749545, -0.652857, -0.109361,
		0.633437, -0.755367, 0.167863,
		0.290358, 2.388227, 3.311063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.473398, 2.715096, 3.841117>,  <-0.153048, 2.916985, 3.193559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.473398, 2.715096, 3.841117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.119904, 2.532028, 3.802025>,  <0.092193, 2.422188, 3.778570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.119904, 2.532028, 3.802025>,  <-0.473398, 2.715096, 3.841117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.119904, 2.532028, 3.802025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120638, 0.021013, 0.992474,
		-0.452171, -0.888874, 0.073782,
		0.883735, -0.457669, -0.097730,
		0.145217, 2.394727, 3.772706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.618140, 1.883222, 5.526113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.966404, 2.029984, 5.395065>,  <1.175362, 2.118040, 5.316437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.966404, 2.029984, 5.395065>,  <0.618140, 1.883222, 5.526113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.966404, 2.029984, 5.395065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395330, 0.125633, -0.909907,
		-0.292688, 0.921737, 0.254431,
		0.870659, 0.366903, -0.327619,
		1.227602, 2.140054, 5.296780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.570703, 2.590105, 5.314543>,  <0.618140, 1.883222, 5.526113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.570703, 2.590105, 5.314543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.825207, 2.353210, 5.116783>,  <0.977909, 2.211074, 4.998127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.825207, 2.353210, 5.116783>,  <0.570703, 2.590105, 5.314543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.825207, 2.353210, 5.116783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530252, 0.129772, -0.837850,
		0.560363, 0.795246, -0.231465,
		0.636259, -0.592235, -0.494401,
		1.016085, 2.175540, 4.968463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.806293, 2.973642, 4.695358>,  <0.570703, 2.590105, 5.314543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.806293, 2.973642, 4.695358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.866905, 2.581894, 4.641884>,  <0.903273, 2.346845, 4.609799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.866905, 2.581894, 4.641884>,  <0.806293, 2.973642, 4.695358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.866905, 2.581894, 4.641884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500424, 0.040623, -0.864827,
		0.852417, 0.197947, -0.483945,
		0.151531, -0.979371, -0.133685,
		0.912364, 2.288083, 4.601779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.201129, 2.788729, 3.981976>,  <0.806293, 2.973642, 4.695358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.201129, 2.788729, 3.981976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.934921, 2.505051, 4.075035>,  <0.775196, 2.334844, 4.130870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.934921, 2.505051, 4.075035>,  <1.201129, 2.788729, 3.981976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.934921, 2.505051, 4.075035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169535, -0.159916, -0.972463,
		0.726870, -0.686636, -0.013806,
		-0.665520, -0.709195, 0.232647,
		0.735265, 2.292292, 4.144829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.399638, 1.984262, 3.810996>,  <1.201129, 2.788729, 3.981976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.399638, 1.984262, 3.810996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.014671, 2.090424, 3.787971>,  <0.783691, 2.154120, 3.774157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.014671, 2.090424, 3.787971>,  <1.399638, 1.984262, 3.810996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.014671, 2.090424, 3.787971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007442, -0.186096, -0.982503,
		-0.271474, -0.946006, 0.177126,
		-0.962417, 0.265406, -0.057560,
		0.725946, 2.170045, 3.770704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.066381, 1.381317, 3.578965>,  <1.399638, 1.984262, 3.810996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.066381, 1.381317, 3.578965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813477, 1.679443, 3.494347>,  <0.661734, 1.858319, 3.443576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813477, 1.679443, 3.494347>,  <1.066381, 1.381317, 3.578965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.813477, 1.679443, 3.494347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077382, -0.332433, -0.939947,
		-0.770881, -0.577922, 0.267858,
		-0.632261, 0.745315, -0.211546,
		0.623798, 1.903038, 3.430883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.404272, 1.106692, 3.427665>,  <1.066381, 1.381317, 3.578965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.404272, 1.106692, 3.427665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.438972, 1.463409, 3.250046>,  <0.459793, 1.677440, 3.143474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.438972, 1.463409, 3.250046>,  <0.404272, 1.106692, 3.427665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.438972, 1.463409, 3.250046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082002, -0.437824, -0.895313,
		-0.992849, 0.114083, 0.035147,
		0.086751, 0.891793, -0.444048,
		0.464998, 1.730947, 3.116831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.058394, 1.095011, 2.959013>,  <0.404272, 1.106692, 3.427665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.058394, 1.095011, 2.959013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.157654, 1.406158, 2.830521>,  <0.287283, 1.592847, 2.753425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.157654, 1.406158, 2.830521>,  <-0.058394, 1.095011, 2.959013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.157654, 1.406158, 2.830521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029995, -0.399247, -0.916353,
		-0.841054, 0.485305, -0.238973,
		0.540120, 0.777870, -0.321231,
		0.319690, 1.639519, 2.734151>
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
