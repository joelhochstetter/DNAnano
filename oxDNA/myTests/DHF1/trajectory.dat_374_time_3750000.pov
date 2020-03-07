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
	<3.396046, -0.551679, 1.268220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.147182, -0.472168, 1.571114>,  <2.997864, -0.424461, 1.752850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.147182, -0.472168, 1.571114>,  <3.396046, -0.551679, 1.268220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.147182, -0.472168, 1.571114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688798, -0.320758, 0.650131,
		0.372121, 0.926068, 0.062645,
		-0.622159, 0.198778, 0.757235,
		2.960535, -0.412534, 1.798284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.651115, 0.016102, 1.860322>,  <3.396046, -0.551679, 1.268220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.651115, 0.016102, 1.860322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.431812, -0.303543, 1.958977>,  <3.300230, -0.495330, 2.018170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.431812, -0.303543, 1.958977>,  <3.651115, 0.016102, 1.860322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.431812, -0.303543, 1.958977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696789, -0.273386, 0.663132,
		-0.462491, 0.535422, 0.706700,
		-0.548258, -0.799114, 0.246638,
		3.267335, -0.543277, 2.032968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.536088, 0.719068, 1.724258>,  <3.651115, 0.016102, 1.860322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.536088, 0.719068, 1.724258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.542675, 0.713722, 1.324348>,  <3.546628, 0.710515, 1.084402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.542675, 0.713722, 1.324348>,  <3.536088, 0.719068, 1.724258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.542675, 0.713722, 1.324348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836278, 0.547900, -0.021099,
		0.548058, 0.836438, -0.002152,
		0.016469, -0.013364, -0.999775,
		3.547616, 0.709713, 1.024416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.596630, 1.374052, 1.444165>,  <3.536088, 0.719068, 1.724258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.596630, 1.374052, 1.444165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.390244, 1.122498, 1.211517>,  <3.266412, 0.971565, 1.071929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.390244, 1.122498, 1.211517>,  <3.596630, 1.374052, 1.444165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.390244, 1.122498, 1.211517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796673, 0.601808, 0.056030,
		0.314787, 0.492270, -0.811529,
		-0.515967, -0.628886, -0.581619,
		3.235453, 0.933832, 1.037032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.624260, 1.763431, 0.736217>,  <3.596630, 1.374052, 1.444165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.624260, 1.763431, 0.736217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.326553, 1.497917, 0.765762>,  <3.147929, 1.338609, 0.783489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.326553, 1.497917, 0.765762>,  <3.624260, 1.763431, 0.736217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.326553, 1.497917, 0.765762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659753, 0.713498, -0.235897,
		0.103884, -0.224301, -0.968967,
		-0.744268, -0.663785, 0.073862,
		3.103273, 1.298782, 0.787921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.116722, 2.029384, 0.239747>,  <3.624260, 1.763431, 0.736217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.116722, 2.029384, 0.239747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.886314, 1.761330, 0.426987>,  <2.748070, 1.600497, 0.539331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.886314, 1.761330, 0.426987>,  <3.116722, 2.029384, 0.239747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.886314, 1.761330, 0.426987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768104, 0.639646, -0.029465,
		-0.279673, -0.376522, -0.883184,
		-0.576020, -0.670137, 0.468100,
		2.713508, 1.560289, 0.567417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.555299, 1.883596, -0.216418>,  <3.116722, 2.029384, 0.239747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.555299, 1.883596, -0.216418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.459164, 1.820305, 0.166664>,  <2.401483, 1.782330, 0.396514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.459164, 1.820305, 0.166664>,  <2.555299, 1.883596, -0.216418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.459164, 1.820305, 0.166664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745530, 0.661924, -0.077731,
		-0.621629, -0.732681, -0.277049,
		-0.240337, -0.158228, 0.957706,
		2.387063, 1.772836, 0.453976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.898897, 1.905224, -0.305977>,  <2.555299, 1.883596, -0.216418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.898897, 1.905224, -0.305977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.957870, 1.945457, 0.087601>,  <1.993255, 1.969597, 0.323747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.957870, 1.945457, 0.087601>,  <1.898897, 1.905224, -0.305977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.957870, 1.945457, 0.087601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683526, 0.729394, 0.027858,
		-0.714881, -0.676659, 0.176288,
		0.147434, 0.100582, 0.983944,
		2.002101, 1.975632, 0.382784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.443151, 3.024672, 0.165406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.321587, 2.890709, 0.522163>,  <1.248648, 2.810331, 0.736218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.321587, 2.890709, 0.522163>,  <1.443151, 3.024672, 0.165406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.321587, 2.890709, 0.522163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902065, -0.402299, 0.156313,
		0.306457, 0.852052, 0.424371,
		-0.303911, -0.334907, 0.891894,
		1.230413, 2.790237, 0.789732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.941007, 3.273805, 0.771184>,  <1.443151, 3.024672, 0.165406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.941007, 3.273805, 0.771184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.760875, 2.931366, 0.872612>,  <1.652795, 2.725902, 0.933469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.760875, 2.931366, 0.872612>,  <1.941007, 3.273805, 0.771184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.760875, 2.931366, 0.872612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883891, -0.467607, -0.008969,
		0.126249, 0.220090, 0.967275,
		-0.450330, -0.856098, 0.253571,
		1.625776, 2.674536, 0.948683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.384981, 2.817663, 1.225569>,  <1.941007, 3.273805, 0.771184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.384981, 2.817663, 1.225569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.115525, 2.580292, 1.049362>,  <1.953852, 2.437869, 0.943638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.115525, 2.580292, 1.049362>,  <2.384981, 2.817663, 1.225569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.115525, 2.580292, 1.049362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696327, -0.709364, -0.109227,
		-0.247668, -0.380322, 0.891075,
		-0.673639, -0.593428, -0.440515,
		1.913434, 2.402263, 0.917207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.165621, 2.194997, 1.675946>,  <2.384981, 2.817663, 1.225569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.165621, 2.194997, 1.675946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.115298, 2.113609, 1.287560>,  <2.085105, 2.064777, 1.054528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.115298, 2.113609, 1.287560>,  <2.165621, 2.194997, 1.675946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.115298, 2.113609, 1.287560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678502, -0.731681, 0.065415,
		-0.723746, -0.650572, 0.230105,
		-0.125806, -0.203470, -0.970965,
		2.077556, 2.052568, 0.996270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.075991, 1.495253, 1.664025>,  <2.165621, 2.194997, 1.675946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.075991, 1.495253, 1.664025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.158095, 1.581726, 1.282211>,  <2.207358, 1.633610, 1.053123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.158095, 1.581726, 1.282211>,  <2.075991, 1.495253, 1.664025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.158095, 1.581726, 1.282211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553672, -0.829880, -0.068891,
		-0.807041, -0.514358, -0.290036,
		0.205260, 0.216183, -0.954533,
		2.219673, 1.646581, 0.995851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.914655, 0.805501, 1.342320>,  <2.075991, 1.495253, 1.664025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.914655, 0.805501, 1.342320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.154081, 1.006721, 1.092949>,  <2.297737, 1.127454, 0.943326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.154081, 1.006721, 1.092949>,  <1.914655, 0.805501, 1.342320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.154081, 1.006721, 1.092949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519151, -0.836288, -0.176363,
		-0.610084, -0.218088, -0.761732,
		0.598565, 0.503050, -0.623427,
		2.333651, 1.157637, 0.905921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.089137, 0.380249, 0.777751>,  <1.914655, 0.805501, 1.342320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.089137, 0.380249, 0.777751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.381491, 0.653015, 0.766449>,  <2.556903, 0.816675, 0.759668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.381491, 0.653015, 0.766449>,  <2.089137, 0.380249, 0.777751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.381491, 0.653015, 0.766449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666904, -0.722371, -0.182808,
		-0.145071, 0.114768, -0.982742,
		0.730886, 0.681915, -0.028256,
		2.600756, 0.857590, 0.757972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.537085, 0.136204, 0.285164>,  <2.089137, 0.380249, 0.777751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.537085, 0.136204, 0.285164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.759152, 0.361305, 0.530144>,  <2.892393, 0.496366, 0.677132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.759152, 0.361305, 0.530144>,  <2.537085, 0.136204, 0.285164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.759152, 0.361305, 0.530144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778642, -0.610524, -0.144833,
		0.292410, 0.557287, -0.777128,
		0.555169, 0.562754, 0.612450,
		2.925703, 0.530131, 0.713879>
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
