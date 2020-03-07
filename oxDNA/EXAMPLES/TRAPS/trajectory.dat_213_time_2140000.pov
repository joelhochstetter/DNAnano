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
	<35.922230, 53.069553, 49.355972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972691, 53.213894, 49.725594>,  <36.002968, 53.300499, 49.947365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972691, 53.213894, 49.725594>,  <35.922230, 53.069553, 49.355972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972691, 53.213894, 49.725594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632042, -0.747190, 0.205500,
		0.764597, 0.558117, -0.322329,
		0.126148, 0.360850, 0.924053,
		36.010536, 53.322147, 50.002808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636963, 53.239548, 49.537220>,  <35.922230, 53.069553, 49.355972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636963, 53.239548, 49.537220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411755, 53.123722, 49.846840>,  <36.276630, 53.054226, 50.032612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411755, 53.123722, 49.846840>,  <36.636963, 53.239548, 49.537220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411755, 53.123722, 49.846840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547431, -0.832336, 0.086816,
		0.619131, 0.472619, 0.627142,
		-0.563024, -0.289566, 0.774051,
		36.242847, 53.036854, 50.079056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091797, 52.873444, 50.029991>,  <36.636963, 53.239548, 49.537220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091797, 52.873444, 50.029991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708855, 52.760056, 50.052338>,  <36.479092, 52.692024, 50.065746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708855, 52.760056, 50.052338>,  <37.091797, 52.873444, 50.029991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708855, 52.760056, 50.052338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285591, -0.957730, 0.034496,
		0.043731, 0.048981, 0.997842,
		-0.957353, -0.283467, 0.055871,
		36.421650, 52.675014, 50.069099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094418, 52.322636, 50.488712>,  <37.091797, 52.873444, 50.029991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094418, 52.322636, 50.488712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746105, 52.277824, 50.297218>,  <36.537117, 52.250938, 50.182320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746105, 52.277824, 50.297218>,  <37.094418, 52.322636, 50.488712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746105, 52.277824, 50.297218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090878, -0.993591, 0.067219,
		-0.483199, 0.015027, 0.875382,
		-0.870781, -0.112033, -0.478736,
		36.484871, 52.244213, 50.153599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764679, 52.374023, 50.088177>,  <37.094418, 52.322636, 50.488712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764679, 52.374023, 50.088177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008255, 52.602440, 50.308395>,  <38.154400, 52.739491, 50.440525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008255, 52.602440, 50.308395>,  <37.764679, 52.374023, 50.088177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008255, 52.602440, 50.308395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670559, 0.741354, -0.027275,
		-0.423725, -0.352565, 0.834359,
		0.608940, 0.571045, 0.550546,
		38.190937, 52.773754, 50.473560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097359, 51.876678, 50.422855>,  <37.764679, 52.374023, 50.088177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097359, 51.876678, 50.422855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009335, 52.256653, 50.511574>,  <37.956520, 52.484638, 50.564804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009335, 52.256653, 50.511574>,  <38.097359, 51.876678, 50.422855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009335, 52.256653, 50.511574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067715, -0.241696, 0.967986,
		0.973134, 0.197995, 0.117512,
		-0.220059, 0.949937, 0.221796,
		37.943317, 52.541634, 50.578114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500607, 52.319988, 50.956562>,  <38.097359, 51.876678, 50.422855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500607, 52.319988, 50.956562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110813, 52.402184, 50.920425>,  <37.876938, 52.451500, 50.898743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110813, 52.402184, 50.920425>,  <38.500607, 52.319988, 50.956562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110813, 52.402184, 50.920425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142568, -0.255718, 0.956181,
		0.173379, 0.944661, 0.278488,
		-0.974481, 0.205486, -0.090342,
		37.818470, 52.463829, 50.893322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165459, 52.170437, 50.896011>,  <38.500607, 52.319988, 50.956562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165459, 52.170437, 50.896011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159649, 52.340019, 50.533783>,  <39.156162, 52.441769, 50.316448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159649, 52.340019, 50.533783>,  <39.165459, 52.170437, 50.896011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159649, 52.340019, 50.533783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251340, 0.878132, 0.407078,
		0.967790, -0.221693, -0.119309,
		-0.014522, 0.423953, -0.905568,
		39.155293, 52.467205, 50.262112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565430, 52.777805, 51.112358>,  <39.165459, 52.170437, 50.896011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565430, 52.777805, 51.112358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269894, 52.811665, 51.379776>,  <39.092571, 52.831982, 51.540226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269894, 52.811665, 51.379776>,  <39.565430, 52.777805, 51.112358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269894, 52.811665, 51.379776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270860, 0.945718, 0.179593,
		-0.617050, 0.313772, -0.721662,
		-0.738840, 0.084651, 0.668543,
		39.048241, 52.837059, 51.580338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170158, 53.412716, 50.943611>,  <39.565430, 52.777805, 51.112358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170158, 53.412716, 50.943611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145519, 53.315475, 51.330830>,  <39.130737, 53.257130, 51.563160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145519, 53.315475, 51.330830>,  <39.170158, 53.412716, 50.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145519, 53.315475, 51.330830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275998, 0.927918, 0.250586,
		-0.959182, 0.282613, 0.009940,
		-0.061596, -0.243102, 0.968043,
		39.127041, 53.242546, 51.621243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927177, 54.057407, 51.274372>,  <39.170158, 53.412716, 50.943611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927177, 54.057407, 51.274372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148880, 53.835857, 51.522892>,  <39.281902, 53.702927, 51.672005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148880, 53.835857, 51.522892>,  <38.927177, 54.057407, 51.274372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148880, 53.835857, 51.522892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556211, 0.801780, 0.218582,
		-0.619216, 0.224425, 0.752466,
		0.554257, -0.553880, 0.621302,
		39.315159, 53.669693, 51.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937622, 54.317963, 52.015514>,  <38.927177, 54.057407, 51.274372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937622, 54.317963, 52.015514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271973, 54.102432, 51.973610>,  <39.472584, 53.973114, 51.948467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271973, 54.102432, 51.973610>,  <38.937622, 54.317963, 52.015514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271973, 54.102432, 51.973610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540120, 0.773344, 0.331980,
		-0.097860, -0.334081, 0.937451,
		0.835880, -0.538823, -0.104764,
		39.522736, 53.940784, 51.942181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230534, 54.194305, 52.665958>,  <38.937622, 54.317963, 52.015514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230534, 54.194305, 52.665958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463795, 54.234898, 52.343559>,  <39.603752, 54.259254, 52.150120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463795, 54.234898, 52.343559>,  <39.230534, 54.194305, 52.665958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463795, 54.234898, 52.343559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490888, 0.746517, 0.449157,
		0.647273, -0.657582, 0.385517,
		0.583152, 0.101482, -0.805999,
		39.638741, 54.265343, 52.101761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040848, 54.248074, 52.908539>,  <39.230534, 54.194305, 52.665958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040848, 54.248074, 52.908539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942924, 54.427464, 52.564693>,  <39.884171, 54.535095, 52.358387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942924, 54.427464, 52.564693>,  <40.040848, 54.248074, 52.908539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942924, 54.427464, 52.564693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398034, 0.854928, 0.332668,
		0.884103, -0.260716, -0.387801,
		-0.244809, 0.448471, -0.859618,
		39.869480, 54.562004, 52.306808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656895, 54.415302, 52.447372>,  <40.040848, 54.248074, 52.908539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656895, 54.415302, 52.447372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368275, 54.684067, 52.380562>,  <40.195103, 54.845325, 52.340477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368275, 54.684067, 52.380562>,  <40.656895, 54.415302, 52.447372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368275, 54.684067, 52.380562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617658, 0.733689, 0.283193,
		0.312825, 0.101174, -0.944407,
		-0.721553, 0.671910, -0.167025,
		40.151810, 54.885639, 52.330456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943905, 55.041965, 52.151318>,  <40.656895, 54.415302, 52.447372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943905, 55.041965, 52.151318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586632, 55.137951, 52.303444>,  <40.372269, 55.195541, 52.394722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586632, 55.137951, 52.303444>,  <40.943905, 55.041965, 52.151318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586632, 55.137951, 52.303444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400750, 0.808443, 0.431067,
		-0.204026, 0.537435, -0.818253,
		-0.893181, 0.239965, 0.380320,
		40.318676, 55.209942, 52.417542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582516, 55.703491, 51.828442>,  <40.943905, 55.041965, 52.151318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582516, 55.703491, 51.828442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548706, 55.588219, 52.209976>,  <40.528419, 55.519054, 52.438896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548706, 55.588219, 52.209976>,  <40.582516, 55.703491, 51.828442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548706, 55.588219, 52.209976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543559, 0.788952, 0.286529,
		-0.835104, 0.542687, 0.089954,
		-0.084526, -0.288177, 0.953839,
		40.523350, 55.501766, 52.496128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273285, 56.209118, 52.259674>,  <40.582516, 55.703491, 51.828442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273285, 56.209118, 52.259674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520683, 56.029366, 52.517517>,  <40.669121, 55.921513, 52.672222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520683, 56.029366, 52.517517>,  <40.273285, 56.209118, 52.259674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520683, 56.029366, 52.517517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377572, 0.889383, 0.257753,
		-0.689135, 0.083969, 0.719751,
		0.618491, -0.449385, 0.644610,
		40.706230, 55.894550, 52.710899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183922, 56.556065, 52.964916>,  <40.273285, 56.209118, 52.259674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183922, 56.556065, 52.964916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539547, 56.384972, 52.899658>,  <40.752922, 56.282314, 52.860504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539547, 56.384972, 52.899658>,  <40.183922, 56.556065, 52.964916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539547, 56.384972, 52.899658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436605, 0.899402, 0.021245,
		0.137645, -0.090118, 0.986374,
		0.889062, -0.427731, -0.163144,
		40.806267, 56.256653, 52.850716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642281, 56.837963, 53.470730>,  <40.183922, 56.556065, 52.964916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642281, 56.837963, 53.470730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883896, 56.719761, 53.174675>,  <41.028866, 56.648838, 52.997040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883896, 56.719761, 53.174675>,  <40.642281, 56.837963, 53.470730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883896, 56.719761, 53.174675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522688, 0.847968, 0.088015,
		0.601607, -0.440027, 0.666668,
		0.604042, -0.295509, -0.740140,
		41.065109, 56.631107, 52.952633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402065, 56.689266, 53.609440>,  <40.642281, 56.837963, 53.470730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402065, 56.689266, 53.609440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438774, 56.819973, 53.233185>,  <41.460800, 56.898396, 53.007431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438774, 56.819973, 53.233185>,  <41.402065, 56.689266, 53.609440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438774, 56.819973, 53.233185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603203, 0.733346, 0.313609,
		0.792290, -0.596177, -0.129803,
		0.091776, 0.326767, -0.940638,
		41.466309, 56.918003, 52.950993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131905, 56.712208, 53.334229>,  <41.402065, 56.689266, 53.609440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131905, 56.712208, 53.334229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875107, 56.966789, 53.163223>,  <41.721027, 57.119537, 53.060619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875107, 56.966789, 53.163223>,  <42.131905, 56.712208, 53.334229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875107, 56.966789, 53.163223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642865, 0.750705, 0.152208,
		0.417809, -0.177116, -0.891104,
		-0.641997, 0.636453, -0.427513,
		41.682507, 57.157726, 53.034969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705986, 56.724262, 52.763214>,  <42.131905, 56.712208, 53.334229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705986, 56.724262, 52.763214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882484, 56.399082, 52.611202>,  <42.988384, 56.203976, 52.519997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882484, 56.399082, 52.611202>,  <42.705986, 56.724262, 52.763214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882484, 56.399082, 52.611202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896764, 0.383687, 0.220452,
		-0.033405, -0.438066, 0.898322,
		0.441247, -0.812947, -0.380025,
		43.014858, 56.155197, 52.497196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252762, 56.393509, 53.248142>,  <42.705986, 56.724262, 52.763214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252762, 56.393509, 53.248142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359581, 56.345028, 52.865730>,  <43.423672, 56.315941, 52.636284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359581, 56.345028, 52.865730>,  <43.252762, 56.393509, 53.248142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359581, 56.345028, 52.865730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928807, 0.296847, 0.221808,
		0.256912, -0.947202, 0.191845,
		0.267046, -0.121202, -0.956032,
		43.439693, 56.308666, 52.578922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863815, 55.907597, 53.253117>,  <43.252762, 56.393509, 53.248142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863815, 55.907597, 53.253117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859501, 56.197868, 52.977940>,  <43.856911, 56.372032, 52.812832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859501, 56.197868, 52.977940>,  <43.863815, 55.907597, 53.253117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859501, 56.197868, 52.977940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948915, 0.224397, 0.221824,
		0.315347, -0.650409, -0.691031,
		-0.010789, 0.725682, -0.687946,
		43.856266, 56.415573, 52.771557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426094, 55.693348, 52.911278>,  <43.863815, 55.907597, 53.253117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426094, 55.693348, 52.911278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363121, 56.087265, 52.881897>,  <44.325336, 56.323616, 52.864269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363121, 56.087265, 52.881897>,  <44.426094, 55.693348, 52.911278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363121, 56.087265, 52.881897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936275, 0.172502, 0.305994,
		0.314011, -0.020593, -0.949196,
		-0.157437, 0.984794, -0.073449,
		44.315891, 56.382702, 52.859863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867733, 56.087486, 52.315384>,  <44.426094, 55.693348, 52.911278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867733, 56.087486, 52.315384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775684, 56.266182, 52.661209>,  <44.720455, 56.373398, 52.868706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775684, 56.266182, 52.661209>,  <44.867733, 56.087486, 52.315384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775684, 56.266182, 52.661209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970912, 0.165770, 0.172772,
		-0.066134, 0.879173, -0.471891,
		-0.230122, 0.446739, 0.864563,
		44.706646, 56.400204, 52.920578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406868, 56.579231, 52.414680>,  <44.867733, 56.087486, 52.315384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406868, 56.579231, 52.414680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243343, 56.544048, 52.778030>,  <45.145229, 56.522938, 52.996040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243343, 56.544048, 52.778030>,  <45.406868, 56.579231, 52.414680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243343, 56.544048, 52.778030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864257, 0.282408, 0.416301,
		-0.293147, 0.955254, -0.039435,
		-0.408810, -0.087955, 0.908371,
		45.120701, 56.517662, 53.050541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949635, 56.488720, 51.965836>,  <45.406868, 56.579231, 52.414680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949635, 56.488720, 51.965836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295059, 56.686161, 52.007042>,  <46.502316, 56.804626, 52.031765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295059, 56.686161, 52.007042>,  <45.949635, 56.488720, 51.965836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.295059, 56.686161, 52.007042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267056, 0.274418, 0.923783,
		0.427718, -0.825255, 0.368798,
		0.863561, 0.493608, 0.103016,
		46.554127, 56.834244, 52.037949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251884, 56.188053, 52.552578>,  <45.949635, 56.488720, 51.965836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251884, 56.188053, 52.552578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383636, 56.564194, 52.518509>,  <46.462688, 56.789879, 52.498066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383636, 56.564194, 52.518509>,  <46.251884, 56.188053, 52.552578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383636, 56.564194, 52.518509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383418, 0.215646, 0.898046,
		0.862845, -0.263137, 0.431576,
		0.329376, 0.940349, -0.085177,
		46.482449, 56.846298, 52.492954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.663960, 56.331638, 53.130493>,  <46.251884, 56.188053, 52.552578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.663960, 56.331638, 53.130493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495522, 56.665581, 52.988678>,  <46.394459, 56.865948, 52.903591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495522, 56.665581, 52.988678>,  <46.663960, 56.331638, 53.130493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495522, 56.665581, 52.988678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389147, 0.186784, 0.902040,
		0.819295, 0.517811, 0.246227,
		-0.421095, 0.834855, -0.354536,
		46.369194, 56.916039, 52.882317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676285, 56.812733, 53.677227>,  <46.663960, 56.331638, 53.130493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676285, 56.812733, 53.677227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402966, 56.957798, 53.423744>,  <46.238976, 57.044838, 53.271656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402966, 56.957798, 53.423744>,  <46.676285, 56.812733, 53.677227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.402966, 56.957798, 53.423744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465206, 0.452700, 0.760688,
		0.562750, 0.814579, -0.140616,
		-0.683297, 0.362661, -0.633705,
		46.197975, 57.066597, 53.233631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.327896, 57.227512, 53.663292>,  <46.676285, 56.812733, 53.677227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.327896, 57.227512, 53.663292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288307, 56.831043, 53.698570>,  <47.264553, 56.593163, 53.719738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288307, 56.831043, 53.698570>,  <47.327896, 57.227512, 53.663292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.288307, 56.831043, 53.698570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995049, -0.097766, 0.017860,
		-0.009081, 0.089522, 0.995943,
		-0.098968, -0.991175, 0.088191,
		47.258617, 56.533691, 53.725029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.907673, 56.907513, 54.268311>,  <47.327896, 57.227512, 53.663292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.907673, 56.907513, 54.268311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.802570, 56.637497, 53.992550>,  <47.739510, 56.475487, 53.827091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.802570, 56.637497, 53.992550>,  <47.907673, 56.907513, 54.268311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.802570, 56.637497, 53.992550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964856, -0.186461, -0.185161,
		-0.003556, -0.713827, 0.700313,
		-0.262754, -0.675043, -0.689404,
		47.723743, 56.434982, 53.785728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.124130, 56.884693, 53.627193>,  <47.907673, 56.907513, 54.268311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.124130, 56.884693, 53.627193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.281776, 57.190018, 53.422440>,  <48.376366, 57.373215, 53.299587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.281776, 57.190018, 53.422440>,  <48.124130, 56.884693, 53.627193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.281776, 57.190018, 53.422440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664355, 0.148242, 0.732568,
		0.635063, -0.628788, -0.448688,
		0.394115, 0.763315, -0.511882,
		48.400013, 57.419014, 53.268875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.932583, 56.826241, 53.569786>,  <48.124130, 56.884693, 53.627193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.932583, 56.826241, 53.569786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.793308, 57.201126, 53.561729>,  <48.709743, 57.426056, 53.556896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.793308, 57.201126, 53.561729>,  <48.932583, 56.826241, 53.569786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.793308, 57.201126, 53.561729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627916, 0.249123, 0.737332,
		0.696052, 0.244080, -0.675230,
		-0.348184, 0.937210, -0.020141,
		48.688854, 57.482288, 53.555687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.471622, 57.417648, 53.684734>,  <48.932583, 56.826241, 53.569786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.471622, 57.417648, 53.684734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.116936, 57.514355, 53.842361>,  <48.904125, 57.572376, 53.936939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.116936, 57.514355, 53.842361>,  <49.471622, 57.417648, 53.684734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.116936, 57.514355, 53.842361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459283, 0.558176, 0.691013,
		-0.052897, 0.793719, -0.605980,
		-0.886714, 0.241764, 0.394067,
		48.850922, 57.586884, 53.960583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.006508, 56.860336, 53.684059>,  <49.471622, 57.417648, 53.684734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.006508, 56.860336, 53.684059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.174702, 56.528355, 53.537437>,  <50.275620, 56.329166, 53.449463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.174702, 56.528355, 53.537437>,  <50.006508, 56.860336, 53.684059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.174702, 56.528355, 53.537437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079756, 0.436256, -0.896281,
		0.903787, 0.347637, 0.249633,
		0.420484, -0.829957, -0.366557,
		50.300846, 56.279366, 53.427471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.556335, 57.046032, 53.321175>,  <50.006508, 56.860336, 53.684059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.556335, 57.046032, 53.321175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.409874, 56.702850, 53.177036>,  <50.321999, 56.496941, 53.090553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.409874, 56.702850, 53.177036>,  <50.556335, 57.046032, 53.321175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.409874, 56.702850, 53.177036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072218, 0.359875, -0.930202,
		0.927747, -0.366622, -0.069810,
		-0.366155, -0.857950, -0.360349,
		50.300026, 56.445465, 53.068932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.015125, 56.828690, 53.872471>,  <50.556335, 57.046032, 53.321175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.015125, 56.828690, 53.872471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.330963, 56.689514, 53.670292>,  <51.520466, 56.606007, 53.548985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.330963, 56.689514, 53.670292>,  <51.015125, 56.828690, 53.872471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.330963, 56.689514, 53.670292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482607, -0.156610, 0.861721,
		-0.378986, -0.924343, 0.044260,
		0.789595, -0.347940, -0.505448,
		51.567841, 56.585133, 53.518658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.226078, 56.200832, 54.147133>,  <51.015125, 56.828690, 53.872471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.226078, 56.200832, 54.147133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.540661, 56.370262, 53.967323>,  <51.729408, 56.471920, 53.859436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.540661, 56.370262, 53.967323>,  <51.226078, 56.200832, 54.147133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.540661, 56.370262, 53.967323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571333, -0.222375, 0.790018,
		0.234670, -0.878141, -0.416892,
		0.786453, 0.423577, -0.449526,
		51.776596, 56.497334, 53.832466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.804401, 55.773235, 54.035603>,  <51.226078, 56.200832, 54.147133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.804401, 55.773235, 54.035603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.942688, 56.147449, 54.064575>,  <52.025661, 56.371979, 54.081959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.942688, 56.147449, 54.064575>,  <51.804401, 55.773235, 54.035603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.942688, 56.147449, 54.064575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608830, -0.282388, 0.741339,
		0.714005, -0.212195, -0.667210,
		0.345721, 0.935537, 0.072436,
		52.046406, 56.428112, 54.086308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.605919, 55.815720, 53.927002>,  <51.804401, 55.773235, 54.035603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.605919, 55.815720, 53.927002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.509151, 56.148293, 54.127083>,  <52.451092, 56.347836, 54.247131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.509151, 56.148293, 54.127083>,  <52.605919, 55.815720, 53.927002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.509151, 56.148293, 54.127083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621487, -0.263111, 0.737921,
		0.745136, 0.489387, -0.453070,
		-0.241921, 0.831428, 0.500201,
		52.436577, 56.397720, 54.277142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.903969, 56.538410, 53.619217>,  <52.605919, 55.815720, 53.927002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.903969, 56.538410, 53.619217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.114216, 56.805031, 53.830662>,  <53.240364, 56.965004, 53.957527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.114216, 56.805031, 53.830662>,  <52.903969, 56.538410, 53.619217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.114216, 56.805031, 53.830662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840585, -0.502553, -0.202129,
		0.130927, 0.550588, -0.824446,
		0.525618, 0.666553, 0.528614,
		53.271900, 57.004997, 53.989246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.525017, 56.781933, 53.223305>,  <52.903969, 56.538410, 53.619217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.525017, 56.781933, 53.223305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.610741, 56.792496, 53.613869>,  <53.662174, 56.798832, 53.848206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.610741, 56.792496, 53.613869>,  <53.525017, 56.781933, 53.223305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.610741, 56.792496, 53.613869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845157, -0.506152, -0.171811,
		0.489676, 0.862040, -0.130785,
		0.214305, 0.026402, 0.976410,
		53.675034, 56.800415, 53.906792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.245255, 56.607567, 53.227863>,  <53.525017, 56.781933, 53.223305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.245255, 56.607567, 53.227863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.170357, 56.664124, 53.616695>,  <54.125420, 56.698059, 53.849995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.170357, 56.664124, 53.616695>,  <54.245255, 56.607567, 53.227863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.170357, 56.664124, 53.616695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856601, -0.460864, 0.232031,
		0.480806, 0.876135, -0.034825,
		-0.187241, 0.141393, 0.972085,
		54.114185, 56.706543, 53.908321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.965809, 56.344341, 53.388542>,  <54.245255, 56.607567, 53.227863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.965809, 56.344341, 53.388542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.709023, 56.403893, 53.689400>,  <54.554951, 56.439625, 53.869915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.709023, 56.403893, 53.689400>,  <54.965809, 56.344341, 53.388542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.709023, 56.403893, 53.689400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560678, -0.577973, 0.592949,
		0.522997, 0.802360, 0.287562,
		-0.641961, 0.148881, 0.752144,
		54.516434, 56.448555, 53.915043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.592926, 56.556023, 53.614414>,  <54.965809, 56.344341, 53.388542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.592926, 56.556023, 53.614414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.977600, 56.664871, 53.601067>,  <56.208405, 56.730183, 53.593060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.977600, 56.664871, 53.601067>,  <55.592926, 56.556023, 53.614414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.977600, 56.664871, 53.601067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209678, -0.651616, 0.728994,
		0.176636, -0.708057, -0.683707,
		0.961684, 0.272125, -0.033366,
		56.266106, 56.746510, 53.591057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.015556, 56.011139, 53.558331>,  <55.592926, 56.556023, 53.614414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.015556, 56.011139, 53.558331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.264977, 56.277710, 53.721821>,  <56.414627, 56.437653, 53.819916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.264977, 56.277710, 53.721821>,  <56.015556, 56.011139, 53.558331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.264977, 56.277710, 53.721821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255574, -0.667856, 0.699035,
		0.738830, -0.331422, -0.586763,
		0.623549, 0.666429, 0.408729,
		56.452042, 56.477638, 53.844440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.821232, 55.884228, 53.414627>,  <56.015556, 56.011139, 53.558331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.821232, 55.884228, 53.414627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.674446, 56.017380, 53.762081>,  <56.586376, 56.097271, 53.970554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.674446, 56.017380, 53.762081>,  <56.821232, 55.884228, 53.414627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.674446, 56.017380, 53.762081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511658, -0.707616, 0.487324,
		0.776882, 0.623275, 0.089348,
		-0.366961, 0.332878, 0.868638,
		56.564358, 56.117245, 54.022671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.402126, 55.968277, 53.791904>,  <56.821232, 55.884228, 53.414627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.402126, 55.968277, 53.791904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.091736, 55.948990, 54.043472>,  <56.905502, 55.937420, 54.194412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.091736, 55.948990, 54.043472>,  <57.402126, 55.968277, 53.791904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.091736, 55.948990, 54.043472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573643, -0.468554, 0.671856,
		0.262287, 0.882118, 0.391246,
		-0.775977, -0.048216, 0.628916,
		56.858944, 55.934525, 54.232147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.796455, 55.980461, 53.174595>,  <57.402126, 55.968277, 53.791904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.796455, 55.980461, 53.174595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.583771, 55.780468, 52.901157>,  <57.456161, 55.660473, 52.737095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.583771, 55.780468, 52.901157>,  <57.796455, 55.980461, 53.174595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.583771, 55.780468, 52.901157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365020, 0.593042, -0.717678,
		0.764228, -0.631121, -0.132821,
		-0.531710, -0.499987, -0.683591,
		57.424259, 55.630470, 52.696079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.205532, 55.757320, 52.576275>,  <57.796455, 55.980461, 53.174595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.205532, 55.757320, 52.576275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.827843, 55.850826, 52.483494>,  <57.601231, 55.906929, 52.427826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.827843, 55.850826, 52.483494>,  <58.205532, 55.757320, 52.576275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.827843, 55.850826, 52.483494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325068, 0.774337, -0.542893,
		0.052705, -0.588012, -0.807133,
		-0.944221, 0.233760, -0.231956,
		57.544575, 55.920956, 52.413906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.080746, 55.974701, 51.835892>,  <58.205532, 55.757320, 52.576275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.080746, 55.974701, 51.835892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.789696, 56.132912, 52.060074>,  <57.615067, 56.227837, 52.194584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.789696, 56.132912, 52.060074>,  <58.080746, 55.974701, 51.835892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.789696, 56.132912, 52.060074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069274, 0.855222, -0.513611,
		-0.682464, -0.334893, -0.649684,
		-0.727629, 0.395528, 0.560459,
		57.571407, 56.251572, 52.228210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.538036, 56.086601, 51.301182>,  <58.080746, 55.974701, 51.835892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.538036, 56.086601, 51.301182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.568085, 56.330582, 51.616730>,  <57.586113, 56.476971, 51.806057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.568085, 56.330582, 51.616730>,  <57.538036, 56.086601, 51.301182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.568085, 56.330582, 51.616730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245458, 0.755452, -0.607489,
		-0.966492, 0.239269, -0.092968,
		0.075121, 0.609953, 0.788869,
		57.590622, 56.513569, 51.853390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.266136, 56.805275, 51.158901>,  <57.538036, 56.086601, 51.301182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.266136, 56.805275, 51.158901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.557289, 56.864922, 51.426617>,  <57.731979, 56.900707, 51.587246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.557289, 56.864922, 51.426617>,  <57.266136, 56.805275, 51.158901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.557289, 56.864922, 51.426617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232004, 0.864947, -0.445017,
		-0.645260, 0.479199, 0.594986,
		0.727883, 0.149112, 0.669292,
		57.775654, 56.909657, 51.627403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.333992, 57.584732, 51.340939>,  <57.266136, 56.805275, 51.158901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.333992, 57.584732, 51.340939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.693832, 57.437149, 51.434402>,  <57.909737, 57.348598, 51.490479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.693832, 57.437149, 51.434402>,  <57.333992, 57.584732, 51.340939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.693832, 57.437149, 51.434402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422977, 0.869261, -0.255881,
		-0.108700, 0.329022, 0.938046,
		0.899597, -0.368958, 0.233657,
		57.963711, 57.326462, 51.504501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.424053, 57.533134, 52.069607>,  <57.333992, 57.584732, 51.340939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.424053, 57.533134, 52.069607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.567841, 57.732475, 51.754032>,  <57.654114, 57.852081, 51.564686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.567841, 57.732475, 51.754032>,  <57.424053, 57.533134, 52.069607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.567841, 57.732475, 51.754032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534262, 0.583259, 0.611860,
		0.765080, -0.641444, -0.056589,
		0.359468, 0.498355, -0.788939,
		57.675682, 57.881981, 51.517349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.217621, 57.474583, 51.995144>,  <57.424053, 57.533134, 52.069607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.217621, 57.474583, 51.995144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.098099, 57.815289, 51.822994>,  <58.026386, 58.019711, 51.719704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.098099, 57.815289, 51.822994>,  <58.217621, 57.474583, 51.995144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.098099, 57.815289, 51.822994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635848, 0.513985, 0.575775,
		0.711626, -0.101603, -0.695173,
		-0.298808, 0.851760, -0.430369,
		58.008457, 58.070816, 51.693882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.538284, 56.912666, 52.511372>,  <58.217621, 57.474583, 51.995144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.538284, 56.912666, 52.511372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.379028, 56.621433, 52.734573>,  <58.283474, 56.446693, 52.868496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.379028, 56.621433, 52.734573>,  <58.538284, 56.912666, 52.511372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.379028, 56.621433, 52.734573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494599, 0.341923, 0.799037,
		-0.772564, 0.594121, 0.223977,
		-0.398142, -0.728086, 0.558009,
		58.259586, 56.403008, 52.901978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.184811, 57.191944, 53.087982>,  <58.538284, 56.912666, 52.511372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.184811, 57.191944, 53.087982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.294220, 56.816978, 53.174179>,  <58.359867, 56.591999, 53.225899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.294220, 56.816978, 53.174179>,  <58.184811, 57.191944, 53.087982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.294220, 56.816978, 53.174179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438330, 0.320902, 0.839577,
		-0.856184, -0.135189, 0.498672,
		0.273527, -0.937414, 0.215494,
		58.376278, 56.535755, 53.238827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.568272, 57.392353, 53.746883>,  <58.184811, 57.191944, 53.087982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.568272, 57.392353, 53.746883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.793564, 57.577812, 54.020470>,  <58.928738, 57.689087, 54.184620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.793564, 57.577812, 54.020470>,  <58.568272, 57.392353, 53.746883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.793564, 57.577812, 54.020470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674139, -0.736487, -0.055890,
		0.477818, 0.492566, -0.727371,
		0.563229, 0.463644, 0.683964,
		58.962532, 57.716904, 54.225658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.305660, 57.549992, 53.447891>,  <58.568272, 57.392353, 53.746883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.305660, 57.549992, 53.447891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.284332, 57.509033, 53.845215>,  <59.271534, 57.484459, 54.083611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.284332, 57.509033, 53.845215>,  <59.305660, 57.549992, 53.447891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.284332, 57.509033, 53.845215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802870, -0.595873, -0.018327,
		0.593765, 0.796524, 0.113982,
		-0.053321, -0.102395, 0.993314,
		59.268337, 57.478313, 54.143208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.941849, 57.741226, 53.763374>,  <59.305660, 57.549992, 53.447891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.941849, 57.741226, 53.763374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.776756, 57.523991, 54.055870>,  <59.677700, 57.393650, 54.231365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.776756, 57.523991, 54.055870>,  <59.941849, 57.741226, 53.763374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.776756, 57.523991, 54.055870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859474, -0.498025, 0.115223,
		0.301597, 0.676034, 0.672322,
		-0.412728, -0.543092, 0.731237,
		59.652939, 57.361061, 54.275242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.421284, 57.825165, 54.419121>,  <59.941849, 57.741226, 53.763374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.421284, 57.825165, 54.419121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.620399, 58.151993, 54.535461>,  <60.739868, 58.348091, 54.605267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.620399, 58.151993, 54.535461>,  <60.421284, 57.825165, 54.419121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.620399, 58.151993, 54.535461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856646, -0.410816, -0.312072,
		-0.135499, 0.404504, -0.904443,
		0.497793, 0.817072, 0.290851,
		60.769737, 58.397114, 54.622715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.580921, 58.324474, 53.951897>,  <60.421284, 57.825165, 54.419121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.580921, 58.324474, 53.951897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.837181, 58.292564, 54.257370>,  <60.990936, 58.273418, 54.440655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.837181, 58.292564, 54.257370>,  <60.580921, 58.324474, 53.951897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.837181, 58.292564, 54.257370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709374, -0.319163, -0.628430,
		0.293870, 0.944336, -0.147882,
		0.640648, -0.079773, 0.763680,
		61.029377, 58.268631, 54.486473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.231773, 58.574280, 53.791775>,  <60.580921, 58.324474, 53.951897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.231773, 58.574280, 53.791775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.311340, 58.304771, 54.076439>,  <61.359081, 58.143066, 54.247238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.311340, 58.304771, 54.076439>,  <61.231773, 58.574280, 53.791775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.311340, 58.304771, 54.076439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745866, -0.366960, -0.555899,
		0.635700, 0.641386, 0.429546,
		0.198920, -0.673769, 0.711665,
		61.371017, 58.102642, 54.289940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.916630, 58.543991, 54.297112>,  <61.231773, 58.574280, 53.791775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.916630, 58.543991, 54.297112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.724648, 58.244888, 54.113590>,  <61.609459, 58.065426, 54.003479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.724648, 58.244888, 54.113590>,  <61.916630, 58.543991, 54.297112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.724648, 58.244888, 54.113590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824840, -0.206503, -0.526304,
		0.298806, -0.631039, 0.715895,
		-0.479953, -0.747761, -0.458801,
		61.580662, 58.020561, 53.975948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.252705, 57.866245, 54.322517>,  <61.916630, 58.543991, 54.297112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.252705, 57.866245, 54.322517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.023994, 57.910049, 53.997292>,  <61.886768, 57.936333, 53.802155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.023994, 57.910049, 53.997292>,  <62.252705, 57.866245, 54.322517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.023994, 57.910049, 53.997292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784856, -0.215566, -0.580975,
		-0.238892, -0.970329, 0.037307,
		-0.571779, 0.109510, -0.813066,
		61.852459, 57.942902, 53.753372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.797699, 57.794968, 54.765408>,  <62.252705, 57.866245, 54.322517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.797699, 57.794968, 54.765408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.885422, 57.955776, 54.409817>,  <62.938057, 58.052261, 54.196461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.885422, 57.955776, 54.409817>,  <62.797699, 57.794968, 54.765408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.885422, 57.955776, 54.409817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540547, 0.708467, 0.453744,
		0.812227, -0.580043, -0.061942,
		0.219307, 0.402025, -0.888977,
		62.951214, 58.076385, 54.143124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.501484, 57.958752, 54.788357>,  <62.797699, 57.794968, 54.765408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.501484, 57.958752, 54.788357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.316307, 58.189270, 54.518967>,  <63.205200, 58.327579, 54.357334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.316307, 58.189270, 54.518967>,  <63.501484, 57.958752, 54.788357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.316307, 58.189270, 54.518967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385128, 0.815106, 0.432757,
		0.798350, -0.059035, -0.599292,
		-0.462939, 0.576296, -0.673476,
		63.177425, 58.362160, 54.316925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.048363, 58.277374, 55.230484>,  <63.501484, 57.958752, 54.788357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.048363, 58.277374, 55.230484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.253723, 57.992462, 55.039040>,  <64.376938, 57.821514, 54.924171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.253723, 57.992462, 55.039040>,  <64.048363, 58.277374, 55.230484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.253723, 57.992462, 55.039040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237292, 0.653814, -0.718484,
		0.824686, 0.255303, 0.504691,
		0.513405, -0.712283, -0.478611,
		64.407745, 57.778778, 54.895458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.878098, 58.339321, 55.117271>,  <64.048363, 58.277374, 55.230484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.878098, 58.339321, 55.117271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.673782, 58.170273, 54.817810>,  <64.551193, 58.068844, 54.638134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.673782, 58.170273, 54.817810>,  <64.878098, 58.339321, 55.117271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.673782, 58.170273, 54.817810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260682, 0.753688, -0.603324,
		0.819231, -0.503332, -0.274806,
		-0.510790, -0.422624, -0.748654,
		64.520546, 58.043484, 54.593212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.323723, 57.746471, 55.023914>,  <64.878098, 58.339321, 55.117271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.323723, 57.746471, 55.023914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.203003, 57.387554, 55.152771>,  <65.130569, 57.172203, 55.230083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.203003, 57.387554, 55.152771>,  <65.323723, 57.746471, 55.023914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.203003, 57.387554, 55.152771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285875, -0.237174, -0.928452,
		0.909498, -0.372306, -0.184934,
		-0.301807, -0.897294, 0.322142,
		65.112457, 57.118366, 55.249413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.624504, 57.185513, 54.654629>,  <65.323723, 57.746471, 55.023914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.624504, 57.185513, 54.654629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.281815, 57.037514, 54.798363>,  <65.076202, 56.948715, 54.884602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.281815, 57.037514, 54.798363>,  <65.624504, 57.185513, 54.654629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.281815, 57.037514, 54.798363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220329, -0.367389, -0.903593,
		0.466340, -0.853305, 0.233232,
		-0.856728, -0.369994, 0.359336,
		65.024796, 56.926514, 54.906162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.574142, 56.488743, 54.690945>,  <65.624504, 57.185513, 54.654629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.574142, 56.488743, 54.690945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.213547, 56.639290, 54.605461>,  <64.997192, 56.729618, 54.554173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.213547, 56.639290, 54.605461>,  <65.574142, 56.488743, 54.690945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.213547, 56.639290, 54.605461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019669, -0.528884, -0.848466,
		-0.432364, -0.760676, 0.484184,
		-0.901484, 0.376369, -0.213709,
		64.943100, 56.752201, 54.541348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.232956, 56.688839, 54.982861>,  <65.574142, 56.488743, 54.690945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.232956, 56.688839, 54.982861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.046585, 56.791302, 55.321632>,  <65.934761, 56.852779, 55.524895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.046585, 56.791302, 55.321632>,  <66.232956, 56.688839, 54.982861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.046585, 56.791302, 55.321632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834592, 0.445150, 0.324495,
		-0.293890, 0.858034, -0.421196,
		-0.465924, 0.256161, 0.846934,
		65.906807, 56.868149, 55.575714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.223526, 57.417782, 55.160885>,  <66.232956, 56.688839, 54.982861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.223526, 57.417782, 55.160885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.247902, 57.170155, 55.474075>,  <66.262527, 57.021580, 55.661987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.247902, 57.170155, 55.474075>,  <66.223526, 57.417782, 55.160885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.247902, 57.170155, 55.474075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896473, 0.378865, 0.229775,
		-0.438886, 0.687911, 0.578063,
		0.060944, -0.619063, 0.782973,
		66.266182, 56.984436, 55.708965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.865860, 57.712440, 55.398811>,  <66.223526, 57.417782, 55.160885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.865860, 57.712440, 55.398811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.865402, 57.323452, 55.492020>,  <66.865128, 57.090057, 55.547947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.865402, 57.323452, 55.492020>,  <66.865860, 57.712440, 55.398811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.865402, 57.323452, 55.492020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996209, 0.019170, 0.084860,
		-0.086991, 0.232236, 0.968762,
		-0.001137, -0.972471, 0.233023,
		66.865059, 57.031712, 55.561928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.472824, 57.537636, 55.935192>,  <66.865860, 57.712440, 55.398811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.472824, 57.537636, 55.935192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.373009, 57.202282, 55.741348>,  <67.313118, 57.001068, 55.625042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.373009, 57.202282, 55.741348>,  <67.472824, 57.537636, 55.935192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.373009, 57.202282, 55.741348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946656, -0.316568, 0.060226,
		-0.203903, -0.443726, 0.872657,
		-0.249532, -0.838386, -0.484605,
		67.298149, 56.950768, 55.595966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.473686, 56.818386, 56.277988>,  <67.472824, 57.537636, 55.935192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.473686, 56.818386, 56.277988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.567184, 56.784229, 55.890572>,  <67.623283, 56.763737, 55.658123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.567184, 56.784229, 55.890572>,  <67.473686, 56.818386, 56.277988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.567184, 56.784229, 55.890572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919386, -0.304726, 0.248740,
		-0.316380, -0.948604, 0.007282,
		0.233737, -0.085391, -0.968543,
		67.637306, 56.758614, 55.600010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.521118, 56.066895, 56.026257>,  <67.473686, 56.818386, 56.277988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.521118, 56.066895, 56.026257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.753555, 56.339653, 55.848564>,  <67.893021, 56.503307, 55.741947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.753555, 56.339653, 55.848564>,  <67.521118, 56.066895, 56.026257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.753555, 56.339653, 55.848564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813593, -0.473369, 0.337622,
		0.019939, -0.557613, -0.829861,
		0.581093, 0.681901, -0.444231,
		67.927887, 56.544224, 55.715294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.972084, 55.707813, 55.525063>,  <67.521118, 56.066895, 56.026257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.972084, 55.707813, 55.525063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.110672, 56.044876, 55.689934>,  <68.193825, 56.247112, 55.788857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.110672, 56.044876, 55.689934>,  <67.972084, 55.707813, 55.525063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.110672, 56.044876, 55.689934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826676, -0.481947, 0.290404,
		0.443357, 0.240117, -0.863585,
		0.346471, 0.842657, 0.412174,
		68.214615, 56.297672, 55.813587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.570427, 55.727394, 55.361195>,  <67.972084, 55.707813, 55.525063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.570427, 55.727394, 55.361195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.550224, 55.932632, 55.703934>,  <68.538101, 56.055775, 55.909576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.550224, 55.932632, 55.703934>,  <68.570427, 55.727394, 55.361195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.550224, 55.932632, 55.703934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745216, -0.551820, 0.374362,
		0.664908, 0.657439, -0.354503,
		-0.050498, 0.513097, 0.856844,
		68.535072, 56.086563, 55.960987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.277237, 55.631714, 55.621521>,  <68.570427, 55.727394, 55.361195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.277237, 55.631714, 55.621521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.123482, 55.839516, 55.926773>,  <69.031227, 55.964195, 56.109924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.123482, 55.839516, 55.926773>,  <69.277237, 55.631714, 55.621521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.123482, 55.839516, 55.926773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833766, -0.159530, 0.528569,
		0.396334, 0.839445, -0.371821,
		-0.384388, 0.519502, 0.763128,
		69.008163, 55.995365, 56.155712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.568954, 56.264622, 55.728256>,  <69.277237, 55.631714, 55.621521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.568954, 56.264622, 55.728256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.416534, 56.082352, 56.050041>,  <69.325081, 55.972992, 56.243111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.416534, 56.082352, 56.050041>,  <69.568954, 56.264622, 55.728256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.416534, 56.082352, 56.050041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923114, -0.139020, 0.358515,
		-0.051530, 0.879224, 0.473613,
		-0.381057, -0.455673, 0.804461,
		69.302216, 55.945648, 56.291378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.783600, 56.551060, 56.467304>,  <69.568954, 56.264622, 55.728256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.783600, 56.551060, 56.467304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.729774, 56.154713, 56.463745>,  <69.697479, 55.916904, 56.461609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.729774, 56.154713, 56.463745>,  <69.783600, 56.551060, 56.467304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.729774, 56.154713, 56.463745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964151, -0.132994, 0.229622,
		-0.228707, 0.022323, 0.973239,
		-0.134560, -0.990866, -0.008893,
		69.689407, 55.857452, 56.461079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.841820, 56.969772, 57.027092>,  <69.783600, 56.551060, 56.467304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.841820, 56.969772, 57.027092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.025665, 56.888779, 57.372986>,  <70.135971, 56.840183, 57.580521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.025665, 56.888779, 57.372986>,  <69.841820, 56.969772, 57.027092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.025665, 56.888779, 57.372986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648192, 0.742086, -0.170748,
		-0.607131, 0.638989, 0.472319,
		0.459608, -0.202487, 0.864731,
		70.163551, 56.828033, 57.632404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.741539, 57.494076, 57.528545>,  <69.841820, 56.969772, 57.027092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.741539, 57.494076, 57.528545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.094948, 57.307007, 57.538940>,  <70.306992, 57.194767, 57.545177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.094948, 57.307007, 57.538940>,  <69.741539, 57.494076, 57.528545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.094948, 57.307007, 57.538940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461405, 0.859441, -0.220150,
		0.080622, 0.206499, 0.975120,
		0.883519, -0.467674, 0.025990,
		70.360001, 57.166706, 57.546738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.239014, 57.850616, 57.961414>,  <69.741539, 57.494076, 57.528545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.239014, 57.850616, 57.961414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.445702, 57.648418, 57.685020>,  <70.569717, 57.527100, 57.519184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.445702, 57.648418, 57.685020>,  <70.239014, 57.850616, 57.961414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.445702, 57.648418, 57.685020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672733, 0.738935, -0.037498,
		0.529551, -0.445475, 0.721892,
		0.516726, -0.505498, -0.690989,
		70.600723, 57.496769, 57.477722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.540939, 57.296490, 58.326824>,  <70.239014, 57.850616, 57.961414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.540939, 57.296490, 58.326824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.164253, 57.431046, 58.326927>,  <69.938240, 57.511780, 58.326988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.164253, 57.431046, 58.326927>,  <70.540939, 57.296490, 58.326824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.164253, 57.431046, 58.326927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332901, -0.931853, -0.144316,
		-0.048310, -0.135990, 0.989532,
		-0.941723, 0.336388, 0.000254,
		69.881737, 57.531963, 58.327003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.599648, 57.980251, 58.613354>,  <70.540939, 57.296490, 58.326824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.599648, 57.980251, 58.613354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.562981, 57.607456, 58.753639>,  <70.540977, 57.383781, 58.837811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.562981, 57.607456, 58.753639>,  <70.599648, 57.980251, 58.613354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.562981, 57.607456, 58.753639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954499, 0.018126, 0.297663,
		-0.283775, 0.362044, 0.887917,
		-0.091672, -0.931985, 0.350714,
		70.535477, 57.327862, 58.858852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.596931, 57.817638, 59.412552>,  <70.599648, 57.980251, 58.613354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.596931, 57.817638, 59.412552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.738853, 57.514660, 59.193321>,  <70.824005, 57.332870, 59.061783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.738853, 57.514660, 59.193321>,  <70.596931, 57.817638, 59.412552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.738853, 57.514660, 59.193321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867590, 0.048276, 0.494932,
		-0.348427, -0.651108, 0.674283,
		0.354806, -0.757448, -0.548073,
		70.845299, 57.287426, 59.028900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.783234, 57.271080, 59.829453>,  <70.596931, 57.817638, 59.412552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.783234, 57.271080, 59.829453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.000809, 57.257442, 59.494080>,  <71.131355, 57.249260, 59.292858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.000809, 57.257442, 59.494080>,  <70.783234, 57.271080, 59.829453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.000809, 57.257442, 59.494080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838950, 0.042416, 0.542553,
		0.017065, -0.998518, 0.051675,
		0.543941, -0.034094, -0.838430,
		71.163994, 57.247215, 59.242550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.321220, 56.853374, 59.936672>,  <70.783234, 57.271080, 59.829453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.321220, 56.853374, 59.936672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.458244, 57.121155, 59.673012>,  <71.540459, 57.281822, 59.514816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.458244, 57.121155, 59.673012>,  <71.321220, 56.853374, 59.936672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.458244, 57.121155, 59.673012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823865, 0.123161, 0.553243,
		0.451553, -0.732571, -0.509351,
		0.342558, 0.669456, -0.659154,
		71.561012, 57.321991, 59.475266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.937088, 56.734245, 59.659077>,  <71.321220, 56.853374, 59.936672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.937088, 56.734245, 59.659077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.925446, 57.133709, 59.641922>,  <71.918457, 57.373386, 59.631630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.925446, 57.133709, 59.641922>,  <71.937088, 56.734245, 59.659077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.925446, 57.133709, 59.641922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892398, 0.045298, 0.448970,
		0.450310, -0.025204, -0.892517,
		-0.029113, 0.998656, -0.042890,
		71.916710, 57.433304, 59.629055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.427002, 57.137989, 59.248329>,  <71.937088, 56.734245, 59.659077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.427002, 57.137989, 59.248329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.328201, 57.359528, 59.566383>,  <72.268921, 57.492451, 59.757217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.328201, 57.359528, 59.566383>,  <72.427002, 57.137989, 59.248329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.328201, 57.359528, 59.566383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955265, 0.001437, 0.295748,
		0.162657, 0.832617, -0.529427,
		-0.247006, 0.553848, 0.795135,
		72.254097, 57.525681, 59.804924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.848846, 57.742241, 59.162159>,  <72.427002, 57.137989, 59.248329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.848846, 57.742241, 59.162159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.739487, 57.674332, 59.540878>,  <72.673866, 57.633587, 59.768108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.739487, 57.674332, 59.540878>,  <72.848846, 57.742241, 59.162159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.739487, 57.674332, 59.540878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923789, 0.227975, 0.307639,
		-0.268076, 0.958751, 0.094509,
		-0.273403, -0.169777, 0.946798,
		72.657463, 57.623398, 59.824917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.193695, 58.081520, 59.692589>,  <72.848846, 57.742241, 59.162159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.193695, 58.081520, 59.692589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.116890, 57.796005, 59.961998>,  <73.070808, 57.624695, 60.123642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.116890, 57.796005, 59.961998>,  <73.193695, 58.081520, 59.692589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.116890, 57.796005, 59.961998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903946, 0.138590, 0.404568,
		-0.382121, 0.686509, 0.618619,
		-0.192005, -0.713792, 0.673525,
		73.059288, 57.581867, 60.164055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.216766, 58.237576, 60.421967>,  <73.193695, 58.081520, 59.692589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.216766, 58.237576, 60.421967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.337303, 57.862221, 60.354279>,  <73.409622, 57.637009, 60.313667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.337303, 57.862221, 60.354279>,  <73.216766, 58.237576, 60.421967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.337303, 57.862221, 60.354279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808576, 0.157412, 0.566945,
		-0.505374, -0.307666, 0.806188,
		0.301334, -0.938383, -0.169219,
		73.427704, 57.580708, 60.303513>
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
