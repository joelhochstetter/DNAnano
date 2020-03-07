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
	<4.005747, -0.261455, -0.076921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.630154, -0.355061, -0.177754>,  <3.404797, -0.411224, -0.238254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.630154, -0.355061, -0.177754>,  <4.005747, -0.261455, -0.076921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.630154, -0.355061, -0.177754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279766, 0.945968, 0.163939,
		0.200098, 0.224460, -0.953719,
		-0.938985, -0.234014, -0.252082,
		3.348458, -0.425265, -0.253379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.678230, 0.186948, -0.566552>,  <4.005747, -0.261455, -0.076921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.678230, 0.186948, -0.566552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.402096, 0.023814, -0.327519>,  <3.236415, -0.074067, -0.184099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.402096, 0.023814, -0.327519>,  <3.678230, 0.186948, -0.566552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.402096, 0.023814, -0.327519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349044, 0.911235, 0.218674,
		-0.633722, -0.057624, -0.771411,
		-0.690336, -0.407835, 0.597584,
		3.194995, -0.098537, -0.148244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.109147, 0.514143, -0.697621>,  <3.678230, 0.186948, -0.566552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.109147, 0.514143, -0.697621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.033379, 0.387967, -0.325682>,  <2.987918, 0.312261, -0.102519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.033379, 0.387967, -0.325682>,  <3.109147, 0.514143, -0.697621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.033379, 0.387967, -0.325682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513936, 0.838764, 0.179847,
		-0.836654, -0.443815, -0.320996,
		-0.189421, -0.315441, 0.929847,
		2.976552, 0.293334, -0.046728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.337532, 0.500071, -0.541639>,  <3.109147, 0.514143, -0.697621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.337532, 0.500071, -0.541639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.527588, 0.517912, -0.190127>,  <2.641622, 0.528617, 0.020779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.527588, 0.517912, -0.190127>,  <2.337532, 0.500071, -0.541639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.527588, 0.517912, -0.190127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509330, 0.828332, 0.233343,
		-0.717513, -0.558459, 0.416292,
		0.475140, 0.044603, 0.878779,
		2.670130, 0.531293, 0.073506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.789051, 0.546360, -0.126132>,  <2.337532, 0.500071, -0.541639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.789051, 0.546360, -0.126132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.103645, 0.686654, 0.077210>,  <2.292402, 0.770830, 0.199216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.103645, 0.686654, 0.077210>,  <1.789051, 0.546360, -0.126132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.103645, 0.686654, 0.077210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542603, 0.785544, 0.297495,
		-0.294995, -0.509811, 0.808128,
		0.786486, 0.350733, 0.508356,
		2.339591, 0.791874, 0.229717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.588253, 0.740061, 0.613995>,  <1.789051, 0.546360, -0.126132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.588253, 0.740061, 0.613995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.922302, 0.943809, 0.530943>,  <2.122732, 1.066058, 0.481112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.922302, 0.943809, 0.530943>,  <1.588253, 0.740061, 0.613995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.922302, 0.943809, 0.530943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480551, 0.859288, 0.175201,
		0.267656, -0.046538, 0.962390,
		0.835123, 0.509371, -0.207629,
		2.172839, 1.096621, 0.468654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.638584, 1.334916, 1.153828>,  <1.588253, 0.740061, 0.613995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.638584, 1.334916, 1.153828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.872360, 1.450288, 0.850450>,  <2.012626, 1.519511, 0.668424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.872360, 1.450288, 0.850450>,  <1.638584, 1.334916, 1.153828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.872360, 1.450288, 0.850450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355418, 0.931254, 0.080272,
		0.729458, 0.222650, 0.646776,
		0.584440, 0.288430, -0.758444,
		2.047692, 1.536817, 0.622917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.905666, 1.957036, 1.351390>,  <1.638584, 1.334916, 1.153828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.905666, 1.957036, 1.351390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.971436, 1.972046, 0.957120>,  <2.010897, 1.981052, 0.720558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.971436, 1.972046, 0.957120>,  <1.905666, 1.957036, 1.351390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.971436, 1.972046, 0.957120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220098, 0.975478, 0.000422,
		0.961521, 0.216875, 0.168651,
		0.164424, 0.037525, -0.985676,
		2.020763, 1.983304, 0.661417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.337222, 3.450352, 0.397073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.681999, 3.341156, 0.226179>,  <1.888866, 3.275638, 0.123643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.681999, 3.341156, 0.226179>,  <1.337222, 3.450352, 0.397073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.681999, 3.341156, 0.226179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266294, -0.960835, 0.076699,
		-0.431440, 0.047659, -0.900882,
		0.861944, -0.272991, -0.427234,
		1.940582, 3.259259, 0.098009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.223569, 2.772872, 0.002701>,  <1.337222, 3.450352, 0.397073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.223569, 2.772872, 0.002701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.621811, 2.794085, 0.033580>,  <1.860756, 2.806812, 0.052107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.621811, 2.794085, 0.033580>,  <1.223569, 2.772872, 0.002701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.621811, 2.794085, 0.033580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047894, -0.996607, 0.066943,
		0.080486, -0.062952, -0.994766,
		0.995604, 0.053031, 0.077198,
		1.920492, 2.809994, 0.056739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.465655, 2.196001, -0.448009>,  <1.223569, 2.772872, 0.002701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.465655, 2.196001, -0.448009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.728874, 2.297750, -0.164526>,  <1.886806, 2.358800, 0.005564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.728874, 2.297750, -0.164526>,  <1.465655, 2.196001, -0.448009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.728874, 2.297750, -0.164526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339615, -0.940303, 0.022160,
		0.672037, 0.226105, -0.705155,
		0.658049, 0.254374, 0.708707,
		1.926289, 2.374063, 0.048086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.212631, 1.971080, -0.600590>,  <1.465655, 2.196001, -0.448009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.212631, 1.971080, -0.600590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.174988, 1.989103, -0.202773>,  <2.152402, 1.999917, 0.035917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.174988, 1.989103, -0.202773>,  <2.212631, 1.971080, -0.600590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.174988, 1.989103, -0.202773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503555, -0.859613, 0.086594,
		0.858822, 0.508956, 0.058207,
		-0.094108, 0.045059, 0.994542,
		2.146755, 2.002621, 0.095589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.888219, 1.861121, -0.355717>,  <2.212631, 1.971080, -0.600590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.888219, 1.861121, -0.355717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.637230, 1.777060, -0.055820>,  <2.486637, 1.726622, 0.124118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.637230, 1.777060, -0.055820>,  <2.888219, 1.861121, -0.355717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.637230, 1.777060, -0.055820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517617, -0.831905, 0.200017,
		0.581680, 0.513584, 0.630777,
		-0.627472, -0.210155, 0.749742,
		2.448988, 1.714013, 0.169102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.283002, 1.699476, 0.293509>,  <2.888219, 1.861121, -0.355717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.283002, 1.699476, 0.293509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.925255, 1.524994, 0.333165>,  <2.710606, 1.420305, 0.356959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.925255, 1.524994, 0.333165>,  <3.283002, 1.699476, 0.293509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.925255, 1.524994, 0.333165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447267, -0.875723, 0.181827,
		0.007507, 0.206963, 0.978320,
		-0.894369, -0.436206, 0.099142,
		2.656944, 1.394132, 0.362908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.375131, 1.249745, 0.863645>,  <3.283002, 1.699476, 0.293509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.375131, 1.249745, 0.863645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.059830, 1.109423, 0.661422>,  <2.870649, 1.025229, 0.540088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.059830, 1.109423, 0.661422>,  <3.375131, 1.249745, 0.863645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.059830, 1.109423, 0.661422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405567, -0.914063, 0.001919,
		-0.462786, -0.203525, 0.862790,
		-0.788254, -0.350807, -0.505559,
		2.823354, 1.004181, 0.509754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.300676, 0.609990, 1.209603>,  <3.375131, 1.249745, 0.863645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.300676, 0.609990, 1.209603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.125397, 0.581108, 0.851213>,  <3.020229, 0.563779, 0.636180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.125397, 0.581108, 0.851213>,  <3.300676, 0.609990, 1.209603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.125397, 0.581108, 0.851213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503079, -0.845735, -0.177887,
		-0.744912, -0.528695, 0.406924,
		-0.438198, -0.072204, -0.895974,
		2.993937, 0.559447, 0.582421>
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
