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
	<1.472071, 3.044888, 2.399312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.411148, 3.186718, 2.768328>,  <1.374594, 3.271816, 2.989737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.411148, 3.186718, 2.768328>,  <1.472071, 3.044888, 2.399312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.411148, 3.186718, 2.768328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861153, -0.410441, 0.299925,
		0.484993, 0.840128, -0.242830,
		-0.152308, 0.354576, 0.922539,
		1.365456, 3.293091, 3.045089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.187341, 3.256551, 2.662648>,  <1.472071, 3.044888, 2.399312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.187341, 3.256551, 2.662648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.952282, 3.213987, 2.983484>,  <1.811247, 3.188449, 3.175986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.952282, 3.213987, 2.983484>,  <2.187341, 3.256551, 2.662648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.952282, 3.213987, 2.983484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717774, -0.526111, 0.456078,
		0.373458, 0.843732, 0.385545,
		-0.587647, -0.106408, 0.802090,
		1.775988, 3.182065, 3.224111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.405798, 3.523323, 3.363354>,  <2.187341, 3.256551, 2.662648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.405798, 3.523323, 3.363354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.184746, 3.203323, 3.456821>,  <2.052114, 3.011324, 3.512902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.184746, 3.203323, 3.456821>,  <2.405798, 3.523323, 3.363354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.184746, 3.203323, 3.456821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752446, -0.358365, 0.552630,
		-0.358365, 0.481224, 0.799999,
		-0.552630, -0.799999, 0.233670,
		2.018957, 2.963324, 3.526922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.508630, 3.358006, 4.106654>,  <2.405798, 3.523323, 3.363354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.508630, 3.358006, 4.106654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.473907, 3.032927, 3.876181>,  <2.453074, 2.837879, 3.737896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.473907, 3.032927, 3.876181>,  <2.508630, 3.358006, 4.106654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.473907, 3.032927, 3.876181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992270, -0.122017, 0.022611,
		-0.088680, -0.569767, 0.817007,
		-0.086806, -0.812697, -0.576184,
		2.447865, 2.789117, 3.703326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.024650, 2.889635, 4.296653>,  <2.508630, 3.358006, 4.106654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.024650, 2.889635, 4.296653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.917297, 2.801453, 3.921554>,  <2.852886, 2.748543, 3.696494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.917297, 2.801453, 3.921554>,  <3.024650, 2.889635, 4.296653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.917297, 2.801453, 3.921554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938277, -0.280316, -0.202632,
		-0.218194, -0.934250, 0.282081,
		-0.268381, -0.220456, -0.937748,
		2.836783, 2.735316, 3.640229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.435040, 2.325867, 4.208772>,  <3.024650, 2.889635, 4.296653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.435040, 2.325867, 4.208772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.302876, 2.436459, 3.847798>,  <3.223577, 2.502814, 3.631214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.302876, 2.436459, 3.847798>,  <3.435040, 2.325867, 4.208772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.302876, 2.436459, 3.847798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911426, -0.154947, -0.381174,
		-0.245216, -0.948446, -0.200795,
		-0.330410, 0.276480, -0.902434,
		3.203753, 2.519403, 3.577068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.782217, 1.742610, 3.769493>,  <3.435040, 2.325867, 4.208772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.782217, 1.742610, 3.769493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.678795, 2.062136, 3.552220>,  <3.616742, 2.253851, 3.421857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.678795, 2.062136, 3.552220>,  <3.782217, 1.742610, 3.769493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.678795, 2.062136, 3.552220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888728, -0.023657, -0.457825,
		-0.378567, -0.601113, -0.703811,
		-0.258554, 0.798814, -0.543182,
		3.601228, 2.301780, 3.389266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.723380, 1.522512, 3.101399>,  <3.782217, 1.742610, 3.769493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.723380, 1.522512, 3.101399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.796467, 1.915165, 3.079453>,  <3.840319, 2.150757, 3.066286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.796467, 1.915165, 3.079453>,  <3.723380, 1.522512, 3.101399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.796467, 1.915165, 3.079453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876088, -0.187890, -0.444036,
		-0.446189, 0.033067, -0.894328,
		0.182718, 0.981633, -0.054864,
		3.851282, 2.209655, 3.062994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.469361, 2.355782, 2.787190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.250206, 2.637081, 2.605967>,  <5.118713, 2.805861, 2.497233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.250206, 2.637081, 2.605967>,  <5.469361, 2.355782, 2.787190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.250206, 2.637081, 2.605967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756609, -0.185526, 0.626996,
		0.356880, 0.686310, 0.633731,
		-0.547887, 0.703249, -0.453058,
		5.085840, 2.848056, 2.470049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.073391, 2.594667, 3.347140>,  <5.469361, 2.355782, 2.787190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.073391, 2.594667, 3.347140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.860016, 2.698990, 3.025290>,  <4.731991, 2.761584, 2.832179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.860016, 2.698990, 3.025290>,  <5.073391, 2.594667, 3.347140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.860016, 2.698990, 3.025290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844355, -0.220524, 0.488296,
		-0.050088, 0.939866, 0.337850,
		-0.533437, 0.260808, -0.804626,
		4.699985, 2.777232, 2.783902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.476751, 3.189460, 3.410444>,  <5.073391, 2.594667, 3.347140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.476751, 3.189460, 3.410444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.377304, 2.937637, 3.116003>,  <4.317636, 2.786544, 2.939338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.377304, 2.937637, 3.116003>,  <4.476751, 3.189460, 3.410444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.377304, 2.937637, 3.116003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927423, -0.064511, 0.368409,
		-0.279421, 0.774272, -0.567827,
		-0.248617, -0.629557, -0.736103,
		4.302719, 2.748770, 2.895172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.962584, 3.501746, 3.068558>,  <4.476751, 3.189460, 3.410444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.962584, 3.501746, 3.068558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.924919, 3.106930, 3.016581>,  <3.902320, 2.870040, 2.985394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.924919, 3.106930, 3.016581>,  <3.962584, 3.501746, 3.068558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.924919, 3.106930, 3.016581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974920, 0.064983, 0.212859,
		-0.201657, 0.146728, -0.968404,
		-0.094162, -0.987040, -0.129944,
		3.896670, 2.810818, 2.977597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.421016, 3.325651, 2.553998>,  <3.962584, 3.501746, 3.068558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.421016, 3.325651, 2.553998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.460442, 3.010586, 2.797266>,  <3.484097, 2.821547, 2.943227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.460442, 3.010586, 2.797266>,  <3.421016, 3.325651, 2.553998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.460442, 3.010586, 2.797266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969704, 0.061249, 0.236480,
		-0.223517, -0.613054, -0.757763,
		0.098563, -0.787663, 0.608171,
		3.490010, 2.774287, 2.979717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.893120, 2.806391, 2.372596>,  <3.421016, 3.325651, 2.553998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.893120, 2.806391, 2.372596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.980812, 2.682362, 2.742632>,  <3.033427, 2.607944, 2.964653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.980812, 2.682362, 2.742632>,  <2.893120, 2.806391, 2.372596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.980812, 2.682362, 2.742632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975034, -0.035311, 0.219230,
		-0.035311, -0.950056, -0.310074,
		-0.219230, 0.310074, -0.925090,
		3.046581, 2.589339, 3.020159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.377321, 2.249597, 2.475003>,  <2.893120, 2.806391, 2.372596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.377321, 2.249597, 2.475003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.516647, 2.375866, 2.828053>,  <2.600243, 2.451627, 3.039882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.516647, 2.375866, 2.828053>,  <2.377321, 2.249597, 2.475003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.516647, 2.375866, 2.828053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924403, -0.040444, 0.379268,
		0.155422, -0.948005, 0.277723,
		0.348316, 0.315675, 0.882625,
		2.621142, 2.470568, 3.092840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.961631, 1.866709, 2.993765>,  <2.377321, 2.249597, 2.475003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.961631, 1.866709, 2.993765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.139854, 2.170166, 3.183897>,  <2.246789, 2.352240, 3.297976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.139854, 2.170166, 3.183897>,  <1.961631, 1.866709, 2.993765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.139854, 2.170166, 3.183897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785598, 0.076708, 0.613965,
		0.429319, -0.646974, 0.630166,
		0.445558, 0.758643, 0.475329,
		2.273522, 2.397759, 3.326496>
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
