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
	<4.453755, 1.076905, -0.275078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.102047, 1.125505, -0.090853>,  <3.891022, 1.154666, 0.019683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.102047, 1.125505, -0.090853>,  <4.453755, 1.076905, -0.275078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.102047, 1.125505, -0.090853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470672, 0.073145, 0.879271,
		0.073145, 0.989892, -0.121502,
		-0.879271, 0.121502, 0.460564,
		3.838265, 1.161956, 0.047316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.425326, 1.638786, 0.188420>,  <4.453755, 1.076905, -0.275078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.425326, 1.638786, 0.188420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.161476, 1.399057, 0.369840>,  <4.003166, 1.255220, 0.478692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.161476, 1.399057, 0.369840>,  <4.425326, 1.638786, 0.188420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.161476, 1.399057, 0.369840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517605, 0.075309, 0.852299,
		-0.544958, 0.796958, 0.260536,
		-0.659625, -0.599322, 0.453550,
		3.963588, 1.219261, 0.505905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.187054, 1.978275, 0.810486>,  <4.425326, 1.638786, 0.188420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.187054, 1.978275, 0.810486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.217880, 1.582809, 0.862028>,  <4.236376, 1.345530, 0.892953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.217880, 1.582809, 0.862028>,  <4.187054, 1.978275, 0.810486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.217880, 1.582809, 0.862028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619644, 0.148743, 0.770660,
		-0.781090, 0.020452, 0.624083,
		0.077066, -0.988664, 0.128855,
		4.241000, 1.286210, 0.900685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.057402, 1.816536, 1.546768>,  <4.187054, 1.978275, 0.810486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.057402, 1.816536, 1.546768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.256355, 1.510817, 1.382594>,  <4.375727, 1.327385, 1.284089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.256355, 1.510817, 1.382594>,  <4.057402, 1.816536, 1.546768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.256355, 1.510817, 1.382594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589120, -0.049723, 0.806514,
		-0.636826, -0.642942, 0.425532,
		0.497383, -0.764299, -0.410435,
		4.405570, 1.281527, 1.259463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.981857, 1.240022, 1.931725>,  <4.057402, 1.816536, 1.546768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.981857, 1.240022, 1.931725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.324646, 1.210020, 1.727776>,  <4.530320, 1.192019, 1.605406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.324646, 1.210020, 1.727776>,  <3.981857, 1.240022, 1.931725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.324646, 1.210020, 1.727776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510337, -0.014292, 0.859856,
		-0.071784, -0.997081, 0.026031,
		0.856974, -0.075008, -0.509873,
		4.581738, 1.187519, 1.574814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.286584, 0.728573, 2.233665>,  <3.981857, 1.240022, 1.931725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.286584, 0.728573, 2.233665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.581161, 0.898502, 2.023076>,  <4.757908, 1.000460, 1.896722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.581161, 0.898502, 2.023076>,  <4.286584, 0.728573, 2.233665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.581161, 0.898502, 2.023076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610255, -0.081319, 0.788021,
		0.291957, -0.901616, -0.319138,
		0.736444, 0.424824, -0.526474,
		4.802095, 1.025949, 1.865134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.771654, 0.194332, 2.207507>,  <4.286584, 0.728573, 2.233665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.771654, 0.194332, 2.207507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.971016, 0.538393, 2.164189>,  <5.090633, 0.744830, 2.138198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.971016, 0.538393, 2.164189>,  <4.771654, 0.194332, 2.207507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.971016, 0.538393, 2.164189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521046, -0.197365, 0.830396,
		0.692894, -0.470302, -0.546547,
		0.498406, 0.860153, -0.108296,
		5.120538, 0.796439, 2.131700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.457030, 0.042145, 2.355206>,  <4.771654, 0.194332, 2.207507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.457030, 0.042145, 2.355206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.417519, 0.438761, 2.388887>,  <5.393812, 0.676731, 2.409095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.417519, 0.438761, 2.388887>,  <5.457030, 0.042145, 2.355206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.417519, 0.438761, 2.388887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423572, -0.034673, 0.905198,
		0.900460, 0.125080, -0.416564,
		-0.098779, 0.991540, 0.084202,
		5.387885, 0.736223, 2.414147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.239234, 0.415450, 3.559792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.579407, 0.615501, 3.494512>,  <0.783511, 0.735532, 3.455343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.579407, 0.615501, 3.494512>,  <0.239234, 0.415450, 3.559792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.579407, 0.615501, 3.494512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353394, 0.313285, -0.881456,
		-0.389714, 0.807294, 0.443171,
		0.850433, 0.500129, -0.163201,
		0.834537, 0.765540, 3.445551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.068750, 1.068917, 3.337120>,  <0.239234, 0.415450, 3.559792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.068750, 1.068917, 3.337120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.439026, 0.978039, 3.216138>,  <0.661192, 0.923512, 3.143548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.439026, 0.978039, 3.216138>,  <0.068750, 1.068917, 3.337120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.439026, 0.978039, 3.216138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214017, 0.344742, -0.913975,
		0.311919, 0.910789, 0.270501,
		0.925691, -0.227194, -0.302456,
		0.716733, 0.909880, 3.125401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.296469, 1.679551, 3.081198>,  <0.068750, 1.068917, 3.337120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.296469, 1.679551, 3.081198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.474266, 1.369343, 2.901869>,  <0.580944, 1.183218, 2.794271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.474266, 1.369343, 2.901869>,  <0.296469, 1.679551, 3.081198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.474266, 1.369343, 2.901869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167173, 0.419874, -0.892053,
		0.880045, 0.471459, 0.056985,
		0.444493, -0.775521, -0.448323,
		0.607614, 1.136687, 2.767372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.523340, 1.988591, 2.529109>,  <0.296469, 1.679551, 3.081198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.523340, 1.988591, 2.529109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.489952, 1.592335, 2.485910>,  <0.469919, 1.354581, 2.459991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.489952, 1.592335, 2.485910>,  <0.523340, 1.988591, 2.529109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.489952, 1.592335, 2.485910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455859, 0.134328, -0.879857,
		0.886130, -0.024210, -0.462804,
		-0.083469, -0.990641, -0.107996,
		0.464911, 1.295142, 2.453512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.863720, 1.834616, 1.926278>,  <0.523340, 1.988591, 2.529109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.863720, 1.834616, 1.926278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.613319, 1.530895, 1.997362>,  <0.463079, 1.348663, 2.040013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.613319, 1.530895, 1.997362>,  <0.863720, 1.834616, 1.926278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.613319, 1.530895, 1.997362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419655, 0.135940, -0.897446,
		0.657275, -0.636381, -0.403744,
		-0.626002, -0.759302, 0.177711,
		0.425519, 1.303105, 2.050675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.770392, 1.596947, 1.259091>,  <0.863720, 1.834616, 1.926278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.770392, 1.596947, 1.259091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.477837, 1.403896, 1.451815>,  <0.302303, 1.288066, 1.567449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.477837, 1.403896, 1.451815>,  <0.770392, 1.596947, 1.259091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.477837, 1.403896, 1.451815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548273, -0.004002, -0.836290,
		0.405545, -0.875816, -0.261685,
		-0.731389, -0.482628, 0.481809,
		0.258420, 1.259108, 1.596357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.599812, 1.008737, 0.819116>,  <0.770392, 1.596947, 1.259091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.599812, 1.008737, 0.819116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.284340, 1.065224, 1.058462>,  <0.095057, 1.099116, 1.202070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.284340, 1.065224, 1.058462>,  <0.599812, 1.008737, 0.819116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.284340, 1.065224, 1.058462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607528, -0.029721, -0.793742,
		-0.094308, -0.989532, 0.109235,
		-0.788680, 0.141220, 0.598366,
		0.047736, 1.107589, 1.237972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.154829, 0.368133, 0.631709>,  <0.599812, 1.008737, 0.819116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.154829, 0.368133, 0.631709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.021935, 0.683716, 0.802479>,  <-0.127992, 0.873066, 0.904940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.021935, 0.683716, 0.802479>,  <0.154829, 0.368133, 0.631709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.021935, 0.683716, 0.802479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581592, 0.110364, -0.805959,
		-0.682985, -0.604455, 0.410081,
		-0.441908, 0.788957, 0.426923,
		-0.154507, 0.920403, 0.930556>
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
