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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.186211, 32.437595, 23.551043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037632, 32.799084, 23.465900>,  <42.948483, 33.015976, 23.414816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037632, 32.799084, 23.465900>,  <43.186211, 32.437595, 23.551043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037632, 32.799084, 23.465900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520638, -0.392567, -0.758173,
		-0.768739, -0.170804, 0.616333,
		-0.371451, 0.903724, -0.212854,
		42.926197, 33.070202, 23.402044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350128, 32.589035, 23.509996>,  <43.186211, 32.437595, 23.551043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350128, 32.589035, 23.509996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560307, 32.794621, 23.238777>,  <42.686413, 32.917973, 23.076046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560307, 32.794621, 23.238777>,  <42.350128, 32.589035, 23.509996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560307, 32.794621, 23.238777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547055, -0.406278, -0.731894,
		-0.651643, 0.755499, 0.067691,
		0.525445, 0.513964, -0.678048,
		42.717941, 32.948811, 23.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974182, 33.127354, 23.046907>,  <42.350128, 32.589035, 23.509996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974182, 33.127354, 23.046907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274429, 32.919083, 22.884193>,  <42.454578, 32.794121, 22.786566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274429, 32.919083, 22.884193>,  <41.974182, 33.127354, 23.046907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274429, 32.919083, 22.884193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652806, -0.489284, -0.578313,
		0.102079, 0.699642, -0.707164,
		0.750616, -0.520674, -0.406785,
		42.499615, 32.762882, 22.762157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828873, 33.129513, 22.305302>,  <41.974182, 33.127354, 23.046907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828873, 33.129513, 22.305302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035725, 32.819630, 22.450855>,  <42.159836, 32.633701, 22.538187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035725, 32.819630, 22.450855>,  <41.828873, 33.129513, 22.305302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035725, 32.819630, 22.450855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706761, -0.626304, -0.328986,
		0.482768, -0.087050, -0.871411,
		0.517130, -0.774704, 0.363883,
		42.190865, 32.587219, 22.560020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648567, 32.593044, 21.940695>,  <41.828873, 33.129513, 22.305302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648567, 32.593044, 21.940695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839050, 32.384094, 22.223637>,  <41.953339, 32.258724, 22.393402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839050, 32.384094, 22.223637>,  <41.648567, 32.593044, 21.940695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839050, 32.384094, 22.223637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592568, -0.784975, -0.180768,
		0.649686, -0.333074, -0.683352,
		0.476205, -0.522375, 0.707357,
		41.981911, 32.227383, 22.435844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762074, 31.897167, 21.701990>,  <41.648567, 32.593044, 21.940695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762074, 31.897167, 21.701990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792450, 31.845089, 22.097420>,  <41.810677, 31.813843, 22.334679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792450, 31.845089, 22.097420>,  <41.762074, 31.897167, 21.701990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792450, 31.845089, 22.097420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474106, -0.876910, -0.079067,
		0.877187, -0.462685, -0.128319,
		0.075941, -0.130193, 0.988576,
		41.815231, 31.806030, 22.393993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121601, 32.113846, 21.350153>,  <41.762074, 31.897167, 21.701990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121601, 32.113846, 21.350153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757637, 32.274696, 21.309460>,  <40.539257, 32.371208, 21.285044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757637, 32.274696, 21.309460>,  <41.121601, 32.113846, 21.350153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757637, 32.274696, 21.309460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066495, -0.100674, -0.992695,
		-0.409434, -0.910031, 0.064865,
		-0.909913, 0.402130, -0.101732,
		40.484661, 32.395336, 21.278940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874203, 31.715343, 20.820086>,  <41.121601, 32.113846, 21.350153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874203, 31.715343, 20.820086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685844, 32.067680, 20.800602>,  <40.572830, 32.279083, 20.788912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685844, 32.067680, 20.800602>,  <40.874203, 31.715343, 20.820086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685844, 32.067680, 20.800602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014104, -0.062724, -0.997931,
		-0.882077, -0.469233, 0.041959,
		-0.470894, 0.880844, -0.048709,
		40.544575, 32.331932, 20.785990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332214, 31.601625, 20.292627>,  <40.874203, 31.715343, 20.820086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332214, 31.601625, 20.292627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349762, 31.999386, 20.331089>,  <40.360291, 32.238041, 20.354166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349762, 31.999386, 20.331089>,  <40.332214, 31.601625, 20.292627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349762, 31.999386, 20.331089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039580, 0.094440, -0.994744,
		-0.998253, 0.047441, -0.035216,
		0.043866, 0.994400, 0.096152,
		40.362923, 32.297707, 20.359934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710499, 31.858028, 20.058481>,  <40.332214, 31.601625, 20.292627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710499, 31.858028, 20.058481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947491, 32.179871, 20.042583>,  <40.089684, 32.372974, 20.033045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947491, 32.179871, 20.042583>,  <39.710499, 31.858028, 20.058481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947491, 32.179871, 20.042583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218161, 0.112764, -0.969376,
		-0.775485, 0.583003, 0.242344,
		0.592477, 0.804606, -0.039742,
		40.125233, 32.421253, 20.030661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288147, 32.386135, 19.808437>,  <39.710499, 31.858028, 20.058481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288147, 32.386135, 19.808437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650398, 32.542690, 19.743134>,  <39.867748, 32.636623, 19.703951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650398, 32.542690, 19.743134>,  <39.288147, 32.386135, 19.808437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650398, 32.542690, 19.743134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233426, 0.138653, -0.962439,
		-0.354052, 0.909719, 0.216929,
		0.905627, 0.391390, -0.163261,
		39.922085, 32.660107, 19.694155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159386, 32.986134, 19.390324>,  <39.288147, 32.386135, 19.808437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159386, 32.986134, 19.390324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542812, 32.897339, 19.318905>,  <39.772869, 32.844063, 19.276054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542812, 32.897339, 19.318905>,  <39.159386, 32.986134, 19.390324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542812, 32.897339, 19.318905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112607, 0.280445, -0.953242,
		0.261680, 0.933848, 0.243826,
		0.958563, -0.221987, -0.178545,
		39.830379, 32.830742, 19.265341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411964, 33.581284, 19.132406>,  <39.159386, 32.986134, 19.390324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411964, 33.581284, 19.132406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642982, 33.278633, 19.009800>,  <39.781593, 33.097042, 18.936235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642982, 33.278633, 19.009800>,  <39.411964, 33.581284, 19.132406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642982, 33.278633, 19.009800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118718, 0.293632, -0.948518,
		0.807681, 0.584201, 0.079760,
		0.577545, -0.756631, -0.306516,
		39.816246, 33.051643, 18.917845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777988, 33.941891, 18.584110>,  <39.411964, 33.581284, 19.132406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777988, 33.941891, 18.584110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863495, 33.554165, 18.535561>,  <39.914799, 33.321529, 18.506432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863495, 33.554165, 18.535561>,  <39.777988, 33.941891, 18.584110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863495, 33.554165, 18.535561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029903, 0.130680, -0.990974,
		0.976426, 0.208211, 0.056921,
		0.213770, -0.969315, -0.121373,
		39.927628, 33.263371, 18.499149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352821, 33.980831, 18.231695>,  <39.777988, 33.941891, 18.584110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352821, 33.980831, 18.231695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190125, 33.623348, 18.155956>,  <40.092506, 33.408859, 18.110514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190125, 33.623348, 18.155956>,  <40.352821, 33.980831, 18.231695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190125, 33.623348, 18.155956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007844, 0.203843, -0.978972,
		0.913507, -0.399679, -0.075902,
		-0.406746, -0.893703, -0.189347,
		40.068100, 33.355236, 18.099152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819420, 33.675655, 17.695644>,  <40.352821, 33.980831, 18.231695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819420, 33.675655, 17.695644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479614, 33.465511, 17.676392>,  <40.275730, 33.339424, 17.664841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479614, 33.465511, 17.676392>,  <40.819420, 33.675655, 17.695644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479614, 33.465511, 17.676392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052828, 0.175488, -0.983063,
		0.524911, -0.832585, -0.176834,
		-0.849516, -0.525363, -0.048132,
		40.224758, 33.307903, 17.661953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892189, 33.256725, 17.078808>,  <40.819420, 33.675655, 17.695644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892189, 33.256725, 17.078808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503273, 33.265511, 17.171906>,  <40.269924, 33.270782, 17.227764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503273, 33.265511, 17.171906>,  <40.892189, 33.256725, 17.078808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503273, 33.265511, 17.171906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219935, 0.251565, -0.942520,
		-0.079255, -0.967591, -0.239763,
		-0.972290, 0.021967, 0.232745,
		40.211586, 33.272099, 17.241730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664814, 32.896030, 16.576714>,  <40.892189, 33.256725, 17.078808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664814, 32.896030, 16.576714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352116, 33.097672, 16.723553>,  <40.164497, 33.218655, 16.811657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352116, 33.097672, 16.723553>,  <40.664814, 32.896030, 16.576714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352116, 33.097672, 16.723553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251957, 0.283160, -0.925385,
		-0.570433, -0.815907, -0.094347,
		-0.781744, 0.504099, 0.367097,
		40.117592, 33.248901, 16.833681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009293, 32.649227, 16.191919>,  <40.664814, 32.896030, 16.576714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009293, 32.649227, 16.191919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920872, 33.006653, 16.348217>,  <39.867821, 33.221107, 16.441996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920872, 33.006653, 16.348217>,  <40.009293, 32.649227, 16.191919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920872, 33.006653, 16.348217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473680, 0.251854, -0.843918,
		-0.852504, -0.371637, 0.367591,
		-0.221052, 0.893564, 0.390743,
		39.854557, 33.274723, 16.465441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408546, 32.745277, 15.929233>,  <40.009293, 32.649227, 16.191919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408546, 32.745277, 15.929233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559944, 33.102150, 16.027824>,  <39.650784, 33.316273, 16.086979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559944, 33.102150, 16.027824>,  <39.408546, 32.745277, 15.929233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559944, 33.102150, 16.027824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224126, 0.346705, -0.910803,
		-0.898060, 0.289489, 0.331187,
		0.378492, 0.892183, 0.246480,
		39.673492, 33.369804, 16.101768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902611, 33.273205, 15.759967>,  <39.408546, 32.745277, 15.929233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902611, 33.273205, 15.759967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241188, 33.484657, 15.785558>,  <39.444332, 33.611526, 15.800912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241188, 33.484657, 15.785558>,  <38.902611, 33.273205, 15.759967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241188, 33.484657, 15.785558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192607, 0.415963, -0.888751,
		-0.496431, 0.739951, 0.453905,
		0.846439, 0.528628, 0.063977,
		39.495121, 33.643246, 15.804750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698524, 33.946407, 15.507860>,  <38.902611, 33.273205, 15.759967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698524, 33.946407, 15.507860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098267, 33.938984, 15.495589>,  <39.338112, 33.934528, 15.488227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098267, 33.938984, 15.495589>,  <38.698524, 33.946407, 15.507860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098267, 33.938984, 15.495589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019162, 0.446675, -0.894491,
		0.030306, 0.894503, 0.446032,
		0.999357, -0.018561, -0.030678,
		39.398075, 33.933414, 15.486386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924225, 34.622799, 15.254952>,  <38.698524, 33.946407, 15.507860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924225, 34.622799, 15.254952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220673, 34.368610, 15.168313>,  <39.398540, 34.216095, 15.116329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220673, 34.368610, 15.168313>,  <38.924225, 34.622799, 15.254952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220673, 34.368610, 15.168313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039900, 0.280358, -0.959066,
		0.670187, 0.719424, 0.182423,
		0.741119, -0.635475, -0.216597,
		39.443008, 34.177967, 15.103333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287910, 34.950336, 14.809866>,  <38.924225, 34.622799, 15.254952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287910, 34.950336, 14.809866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316059, 34.560734, 14.723739>,  <39.332947, 34.326973, 14.672063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316059, 34.560734, 14.723739>,  <39.287910, 34.950336, 14.809866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316059, 34.560734, 14.723739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039334, 0.212976, -0.976265,
		0.996745, 0.077167, -0.023325,
		0.070367, -0.974006, -0.215318,
		39.337170, 34.268532, 14.659143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683395, 34.915535, 14.269770>,  <39.287910, 34.950336, 14.809866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683395, 34.915535, 14.269770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538414, 34.546059, 14.220098>,  <39.451427, 34.324371, 14.190294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538414, 34.546059, 14.220098>,  <39.683395, 34.915535, 14.269770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538414, 34.546059, 14.220098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151074, 0.189705, -0.970149,
		0.919677, -0.332871, -0.208305,
		-0.362451, -0.923693, -0.124179,
		39.429680, 34.268951, 14.182844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957775, 34.601696, 13.629319>,  <39.683395, 34.915535, 14.269770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957775, 34.601696, 13.629319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631504, 34.375626, 13.678712>,  <39.435741, 34.239983, 13.708347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631504, 34.375626, 13.678712>,  <39.957775, 34.601696, 13.629319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631504, 34.375626, 13.678712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172874, 0.034433, -0.984342,
		0.552079, -0.824248, -0.125791,
		-0.815673, -0.565181, 0.123481,
		39.386803, 34.206070, 13.715756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835434, 34.244919, 12.959900>,  <39.957775, 34.601696, 13.629319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835434, 34.244919, 12.959900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501640, 34.283203, 13.176961>,  <39.301365, 34.306175, 13.307198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501640, 34.283203, 13.176961>,  <39.835434, 34.244919, 12.959900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501640, 34.283203, 13.176961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535539, 0.090989, -0.839595,
		-0.129738, -0.991241, -0.024669,
		-0.834486, 0.095716, 0.542653,
		39.251293, 34.311916, 13.339757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318478, 33.763798, 12.731673>,  <39.835434, 34.244919, 12.959900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318478, 33.763798, 12.731673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223225, 34.116001, 12.895621>,  <39.166073, 34.327324, 12.993990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223225, 34.116001, 12.895621>,  <39.318478, 33.763798, 12.731673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223225, 34.116001, 12.895621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172144, 0.377063, -0.910049,
		-0.955856, -0.287268, 0.061784,
		-0.238131, 0.880512, 0.409869,
		39.151787, 34.380154, 13.018582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594120, 33.986229, 12.566087>,  <39.318478, 33.763798, 12.731673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594120, 33.986229, 12.566087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816425, 34.312679, 12.629413>,  <38.949806, 34.508549, 12.667408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816425, 34.312679, 12.629413>,  <38.594120, 33.986229, 12.566087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816425, 34.312679, 12.629413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245163, 0.342856, -0.906832,
		-0.794372, 0.465168, 0.390630,
		0.555759, 0.816130, 0.158314,
		38.983154, 34.557518, 12.676907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937790, 34.146984, 12.339037>,  <38.594120, 33.986229, 12.566087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937790, 34.146984, 12.339037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781422, 34.310131, 12.008990>,  <37.687599, 34.408020, 11.810962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781422, 34.310131, 12.008990>,  <37.937790, 34.146984, 12.339037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781422, 34.310131, 12.008990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048446, -0.904330, -0.424075,
		-0.919147, -0.125807, 0.373284,
		-0.390924, 0.407872, -0.825117,
		37.664143, 34.432491, 11.761456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349880, 33.723598, 12.106559>,  <37.937790, 34.146984, 12.339037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349880, 33.723598, 12.106559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481041, 33.941780, 11.798024>,  <37.559738, 34.072689, 11.612904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481041, 33.941780, 11.798024>,  <37.349880, 33.723598, 12.106559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481041, 33.941780, 11.798024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052542, -0.804685, -0.591373,
		-0.943249, 0.234440, -0.235200,
		0.327904, 0.545454, -0.771336,
		37.579411, 34.105415, 11.566624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137707, 33.248001, 12.691842>,  <37.349880, 33.723598, 12.106559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137707, 33.248001, 12.691842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863918, 33.520016, 12.796954>,  <36.699646, 33.683224, 12.860022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863918, 33.520016, 12.796954>,  <37.137707, 33.248001, 12.691842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863918, 33.520016, 12.796954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016445, -0.345953, 0.938108,
		0.728855, 0.646428, 0.225611,
		-0.684470, 0.680035, 0.262780,
		36.658577, 33.724026, 12.875789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399776, 33.581917, 13.247903>,  <37.137707, 33.248001, 12.691842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399776, 33.581917, 13.247903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001469, 33.617641, 13.256570>,  <36.762486, 33.639076, 13.261770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001469, 33.617641, 13.256570>,  <37.399776, 33.581917, 13.247903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001469, 33.617641, 13.256570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001556, -0.219354, 0.975644,
		0.091889, 0.971549, 0.218287,
		-0.995768, 0.089311, 0.021668,
		36.702740, 33.644436, 13.263070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986912, 34.166615, 13.645266>,  <37.399776, 33.581917, 13.247903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986912, 34.166615, 13.645266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822643, 33.801910, 13.642402>,  <36.724083, 33.583088, 13.640683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822643, 33.801910, 13.642402>,  <36.986912, 34.166615, 13.645266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822643, 33.801910, 13.642402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211523, -0.102907, 0.971941,
		-0.886909, 0.397633, 0.235118,
		-0.410670, -0.911756, -0.007161,
		36.699444, 33.528385, 13.640253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643497, 34.090195, 14.255219>,  <36.986912, 34.166615, 13.645266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643497, 34.090195, 14.255219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726196, 33.722355, 14.121602>,  <36.775814, 33.501652, 14.041431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726196, 33.722355, 14.121602>,  <36.643497, 34.090195, 14.255219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726196, 33.722355, 14.121602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289017, -0.268781, 0.918818,
		-0.934733, -0.286504, 0.210212,
		0.206744, -0.919604, -0.334044,
		36.788219, 33.446472, 14.021389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245110, 33.451263, 14.676306>,  <36.643497, 34.090195, 14.255219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245110, 33.451263, 14.676306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592148, 33.351860, 14.504020>,  <36.800373, 33.292217, 14.400648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592148, 33.351860, 14.504020>,  <36.245110, 33.451263, 14.676306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592148, 33.351860, 14.504020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319852, -0.384319, 0.866022,
		-0.380683, -0.889143, -0.253980,
		0.867626, -0.248444, -0.430698,
		36.852428, 33.277309, 14.374805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429905, 32.782993, 14.828565>,  <36.245110, 33.451263, 14.676306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429905, 32.782993, 14.828565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786320, 32.935429, 14.729920>,  <37.000168, 33.026890, 14.670733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786320, 32.935429, 14.729920>,  <36.429905, 32.782993, 14.828565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786320, 32.935429, 14.729920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417414, -0.474429, 0.775037,
		0.178359, -0.793529, -0.581808,
		0.891041, 0.381089, -0.246612,
		37.053631, 33.049755, 14.655937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986809, 32.301083, 14.879048>,  <36.429905, 32.782993, 14.828565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986809, 32.301083, 14.879048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122005, 32.663227, 14.981877>,  <37.203125, 32.880512, 15.043574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122005, 32.663227, 14.981877>,  <36.986809, 32.301083, 14.879048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122005, 32.663227, 14.981877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365830, -0.378051, 0.850439,
		0.867139, -0.193397, -0.458986,
		0.337992, 0.905359, 0.257072,
		37.223404, 32.934834, 15.058999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681545, 32.139038, 15.058752>,  <36.986809, 32.301083, 14.879048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681545, 32.139038, 15.058752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607811, 32.494041, 15.227675>,  <37.563572, 32.707043, 15.329029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607811, 32.494041, 15.227675>,  <37.681545, 32.139038, 15.058752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607811, 32.494041, 15.227675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431815, -0.312853, 0.845966,
		0.882926, 0.338297, -0.325573,
		-0.184331, 0.887512, 0.422308,
		37.552513, 32.760296, 15.354367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306328, 32.357540, 15.398911>,  <37.681545, 32.139038, 15.058752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306328, 32.357540, 15.398911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992283, 32.539894, 15.566611>,  <37.803856, 32.649307, 15.667232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992283, 32.539894, 15.566611>,  <38.306328, 32.357540, 15.398911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992283, 32.539894, 15.566611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276873, -0.347178, 0.895996,
		0.554026, 0.819534, 0.146351,
		-0.785109, 0.455885, 0.419253,
		37.756748, 32.676659, 15.692387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603447, 32.561844, 16.047010>,  <38.306328, 32.357540, 15.398911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603447, 32.561844, 16.047010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205482, 32.566364, 16.087051>,  <37.966702, 32.569077, 16.111076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205482, 32.566364, 16.087051>,  <38.603447, 32.561844, 16.047010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205482, 32.566364, 16.087051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086854, -0.407189, 0.909205,
		0.051035, 0.913274, 0.404137,
		-0.994913, 0.011300, 0.100102,
		37.907009, 32.569756, 16.117083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481285, 32.762169, 16.717911>,  <38.603447, 32.561844, 16.047010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481285, 32.762169, 16.717911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144741, 32.581337, 16.599422>,  <37.942814, 32.472839, 16.528330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144741, 32.581337, 16.599422>,  <38.481285, 32.762169, 16.717911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144741, 32.581337, 16.599422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018361, -0.523849, 0.851613,
		-0.540170, 0.721949, 0.432443,
		-0.841356, -0.452076, -0.296223,
		37.892334, 32.445713, 16.510555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065727, 32.727180, 17.316612>,  <38.481285, 32.762169, 16.717911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065727, 32.727180, 17.316612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896885, 32.449741, 17.083118>,  <37.795578, 32.283279, 16.943022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896885, 32.449741, 17.083118>,  <38.065727, 32.727180, 17.316612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896885, 32.449741, 17.083118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173332, -0.570284, 0.802952,
		-0.889820, 0.440114, 0.120500,
		-0.422110, -0.693596, -0.583736,
		37.770252, 32.241661, 16.907997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421135, 32.629906, 17.487478>,  <38.065727, 32.727180, 17.316612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421135, 32.629906, 17.487478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503853, 32.280136, 17.311928>,  <37.553482, 32.070274, 17.206598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503853, 32.280136, 17.311928>,  <37.421135, 32.629906, 17.487478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503853, 32.280136, 17.311928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249298, -0.480858, 0.840611,
		-0.946091, -0.064421, -0.317431,
		0.206792, -0.874429, -0.438875,
		37.565891, 32.017807, 17.180265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864983, 32.126865, 17.641840>,  <37.421135, 32.629906, 17.487478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864983, 32.126865, 17.641840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175190, 31.900528, 17.529850>,  <37.361313, 31.764725, 17.462656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175190, 31.900528, 17.529850>,  <36.864983, 32.126865, 17.641840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175190, 31.900528, 17.529850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048263, -0.495315, 0.867372,
		-0.629477, -0.659151, -0.411436,
		0.775519, -0.565847, -0.279977,
		37.407845, 31.730774, 17.445858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694916, 31.448753, 17.787436>,  <36.864983, 32.126865, 17.641840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694916, 31.448753, 17.787436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094753, 31.442307, 17.796818>,  <37.334656, 31.438438, 17.802446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094753, 31.442307, 17.796818>,  <36.694916, 31.448753, 17.787436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094753, 31.442307, 17.796818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027824, -0.380290, 0.924449,
		-0.005979, -0.924727, -0.380584,
		0.999595, -0.016117, 0.023456,
		37.394630, 31.437471, 17.803854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860859, 30.836176, 18.087358>,  <36.694916, 31.448753, 17.787436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860859, 30.836176, 18.087358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212234, 31.023464, 18.125538>,  <37.423061, 31.135838, 18.148445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212234, 31.023464, 18.125538>,  <36.860859, 30.836176, 18.087358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212234, 31.023464, 18.125538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101618, -0.378221, 0.920121,
		0.466919, -0.798574, -0.379825,
		0.878442, 0.468219, 0.095449,
		37.475769, 31.163929, 18.154173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351273, 30.301731, 18.405130>,  <36.860859, 30.836176, 18.087358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351273, 30.301731, 18.405130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515835, 30.660973, 18.467304>,  <37.614571, 30.876516, 18.504608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515835, 30.660973, 18.467304>,  <37.351273, 30.301731, 18.405130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515835, 30.660973, 18.467304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177749, -0.246318, 0.952750,
		0.893954, -0.364335, -0.260972,
		0.411402, 0.898103, 0.155437,
		37.639256, 30.930403, 18.513935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946678, 30.191221, 18.679514>,  <37.351273, 30.301731, 18.405130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946678, 30.191221, 18.679514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850193, 30.562626, 18.792427>,  <37.792301, 30.785469, 18.860174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850193, 30.562626, 18.792427>,  <37.946678, 30.191221, 18.679514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850193, 30.562626, 18.792427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262150, -0.217715, 0.940148,
		0.934394, 0.300777, -0.190893,
		-0.241214, 0.928511, 0.282281,
		37.777828, 30.841179, 18.877111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349781, 30.320368, 19.268049>,  <37.946678, 30.191221, 18.679514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349781, 30.320368, 19.268049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113842, 30.641914, 19.298714>,  <37.972279, 30.834843, 19.317112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113842, 30.641914, 19.298714>,  <38.349781, 30.320368, 19.268049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113842, 30.641914, 19.298714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033422, -0.070552, 0.996948,
		0.806824, 0.590608, 0.014748,
		-0.589846, 0.803868, 0.076662,
		37.936890, 30.883076, 19.321712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778599, 30.745752, 19.719999>,  <38.349781, 30.320368, 19.268049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778599, 30.745752, 19.719999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397152, 30.865227, 19.705025>,  <38.168285, 30.936913, 19.696039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397152, 30.865227, 19.705025>,  <38.778599, 30.745752, 19.719999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397152, 30.865227, 19.705025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034152, 0.230911, 0.972375,
		0.299081, 0.925994, -0.230402,
		-0.953616, 0.298688, -0.037436,
		38.111069, 30.954834, 19.693794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696606, 31.451008, 20.000696>,  <38.778599, 30.745752, 19.719999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696606, 31.451008, 20.000696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339397, 31.281044, 20.059982>,  <38.125072, 31.179066, 20.095554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339397, 31.281044, 20.059982>,  <38.696606, 31.451008, 20.000696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339397, 31.281044, 20.059982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010414, 0.348775, 0.937149,
		-0.449897, 0.835349, -0.315888,
		-0.893020, -0.424909, 0.148214,
		38.071491, 31.153572, 20.104446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360661, 31.973381, 20.141685>,  <38.696606, 31.451008, 20.000696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360661, 31.973381, 20.141685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133053, 31.669403, 20.267353>,  <37.996490, 31.487017, 20.342754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133053, 31.669403, 20.267353>,  <38.360661, 31.973381, 20.141685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133053, 31.669403, 20.267353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187767, 0.492027, 0.850090,
		-0.800602, 0.424724, -0.422664,
		-0.569016, -0.759947, 0.314169,
		37.962349, 31.441420, 20.361605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809242, 32.360661, 20.381147>,  <38.360661, 31.973381, 20.141685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809242, 32.360661, 20.381147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822681, 31.996082, 20.545162>,  <37.830746, 31.777334, 20.643572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822681, 31.996082, 20.545162>,  <37.809242, 32.360661, 20.381147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822681, 31.996082, 20.545162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067783, 0.407247, 0.910799,
		-0.997134, -0.058393, -0.048099,
		0.033596, -0.911449, 0.410039,
		37.832760, 31.722647, 20.668173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284286, 32.427742, 20.745014>,  <37.809242, 32.360661, 20.381147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284286, 32.427742, 20.745014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474827, 32.119995, 20.915264>,  <37.589153, 31.935347, 21.017414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474827, 32.119995, 20.915264>,  <37.284286, 32.427742, 20.745014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474827, 32.119995, 20.915264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219202, 0.364877, 0.904884,
		-0.851491, -0.524344, 0.005164,
		0.476354, -0.769369, 0.425627,
		37.617733, 31.889185, 21.042952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775967, 32.125801, 21.175755>,  <37.284286, 32.427742, 20.745014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775967, 32.125801, 21.175755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143166, 32.025589, 21.298721>,  <37.363487, 31.965460, 21.372501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143166, 32.025589, 21.298721>,  <36.775967, 32.125801, 21.175755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143166, 32.025589, 21.298721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282138, 0.132174, 0.950225,
		-0.278697, -0.959042, 0.050651,
		0.918001, -0.250535, 0.307418,
		37.418568, 31.950428, 21.390947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610413, 31.724508, 21.790670>,  <36.775967, 32.125801, 21.175755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610413, 31.724508, 21.790670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992683, 31.842232, 21.793999>,  <37.222046, 31.912867, 21.795996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992683, 31.842232, 21.793999>,  <36.610413, 31.724508, 21.790670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992683, 31.842232, 21.793999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050751, 0.136822, 0.989295,
		0.290021, -0.945865, 0.145694,
		0.955674, 0.294311, 0.008323,
		37.279385, 31.930525, 21.796495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071865, 31.624393, 22.118864>,  <36.610413, 31.724508, 21.790670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071865, 31.624393, 22.118864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754021, 31.397896, 22.031269>,  <35.563313, 31.261997, 21.978712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754021, 31.397896, 22.031269>,  <36.071865, 31.624393, 22.118864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754021, 31.397896, 22.031269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576648, 0.591101, 0.563983,
		-0.189907, 0.574429, -0.796220,
		-0.794615, -0.566243, -0.218990,
		35.515636, 31.228024, 21.965572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643230, 32.061794, 21.912985>,  <36.071865, 31.624393, 22.118864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643230, 32.061794, 21.912985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436878, 31.735001, 22.016056>,  <35.313068, 31.538923, 22.077898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436878, 31.735001, 22.016056>,  <35.643230, 32.061794, 21.912985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436878, 31.735001, 22.016056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671204, 0.572386, 0.471019,
		-0.532309, 0.070035, -0.843648,
		-0.515881, -0.816988, 0.257678,
		35.282112, 31.489904, 22.093359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935719, 32.093567, 21.624836>,  <35.643230, 32.061794, 21.912985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935719, 32.093567, 21.624836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940647, 31.906723, 21.978481>,  <34.943604, 31.794617, 22.190668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940647, 31.906723, 21.978481>,  <34.935719, 32.093567, 21.624836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940647, 31.906723, 21.978481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737220, 0.593099, 0.323637,
		-0.675541, -0.655774, -0.337054,
		0.012326, -0.467113, 0.884112,
		34.944344, 31.766588, 22.243715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222786, 32.054455, 21.835121>,  <34.935719, 32.093567, 21.624836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222786, 32.054455, 21.835121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454136, 32.021210, 22.159733>,  <34.592945, 32.001263, 22.354500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454136, 32.021210, 22.159733>,  <34.222786, 32.054455, 21.835121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454136, 32.021210, 22.159733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514344, 0.734999, 0.441846,
		-0.633196, -0.672955, 0.382353,
		0.578371, -0.083114, 0.811529,
		34.627647, 31.996275, 22.403191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752739, 32.003716, 22.358673>,  <34.222786, 32.054455, 21.835121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752739, 32.003716, 22.358673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099655, 32.175159, 22.459949>,  <34.307804, 32.278027, 22.520716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099655, 32.175159, 22.459949>,  <33.752739, 32.003716, 22.358673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099655, 32.175159, 22.459949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497599, 0.731664, 0.465901,
		0.014439, -0.530057, 0.847839,
		0.867287, 0.428611, 0.253191,
		34.359840, 32.303741, 22.535908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843880, 32.100353, 23.128387>,  <33.752739, 32.003716, 22.358673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843880, 32.100353, 23.128387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023155, 32.377464, 22.902405>,  <34.130722, 32.543732, 22.766815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023155, 32.377464, 22.902405>,  <33.843880, 32.100353, 23.128387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023155, 32.377464, 22.902405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608252, 0.699472, 0.375190,
		0.655098, 0.175481, 0.734883,
		0.448191, 0.692781, -0.564960,
		34.157612, 32.585300, 22.732918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475784, 32.562565, 23.236118>,  <33.843880, 32.100353, 23.128387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475784, 32.562565, 23.236118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768631, 32.828926, 23.293510>,  <34.944340, 32.988743, 23.327946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768631, 32.828926, 23.293510>,  <34.475784, 32.562565, 23.236118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768631, 32.828926, 23.293510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100136, -0.103138, 0.989614,
		0.673781, -0.738878, -0.008829,
		0.732115, 0.665899, 0.143481,
		34.988266, 33.028694, 23.336555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041969, 32.247875, 23.596258>,  <34.475784, 32.562565, 23.236118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041969, 32.247875, 23.596258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024464, 32.640217, 23.672165>,  <35.013962, 32.875622, 23.717709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024464, 32.640217, 23.672165>,  <35.041969, 32.247875, 23.596258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024464, 32.640217, 23.672165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060067, -0.187024, 0.980517,
		0.997235, 0.054306, -0.050732,
		-0.043760, 0.980853, 0.189769,
		35.011337, 32.934471, 23.729095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579262, 32.393360, 23.969587>,  <35.041969, 32.247875, 23.596258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579262, 32.393360, 23.969587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294312, 32.666645, 24.033752>,  <35.123341, 32.830616, 24.072252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294312, 32.666645, 24.033752>,  <35.579262, 32.393360, 23.969587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294312, 32.666645, 24.033752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124466, -0.101952, 0.986972,
		0.690669, 0.723064, -0.012409,
		-0.712379, 0.683216, 0.160412,
		35.080597, 32.871609, 24.081877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821106, 32.744190, 24.626675>,  <35.579262, 32.393360, 23.969587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821106, 32.744190, 24.626675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447712, 32.880341, 24.581520>,  <35.223675, 32.962032, 24.554428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447712, 32.880341, 24.581520>,  <35.821106, 32.744190, 24.626675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447712, 32.880341, 24.581520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069470, 0.137182, 0.988107,
		0.351817, 0.930227, -0.104411,
		-0.933487, 0.340380, -0.112886,
		35.167667, 32.982456, 24.547655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699135, 33.296673, 25.016567>,  <35.821106, 32.744190, 24.626675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699135, 33.296673, 25.016567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316544, 33.197739, 24.954632>,  <35.086990, 33.138378, 24.917471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316544, 33.197739, 24.954632>,  <35.699135, 33.296673, 25.016567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316544, 33.197739, 24.954632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170024, 0.041124, 0.984582,
		-0.237155, 0.968057, -0.081387,
		-0.956478, -0.247336, -0.154840,
		35.029602, 33.123539, 24.908180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336647, 33.620632, 25.503574>,  <35.699135, 33.296673, 25.016567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336647, 33.620632, 25.503574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068005, 33.346832, 25.390144>,  <34.906818, 33.182552, 25.322086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068005, 33.346832, 25.390144>,  <35.336647, 33.620632, 25.503574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068005, 33.346832, 25.390144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164284, -0.235635, 0.957856,
		-0.722470, 0.689884, 0.045801,
		-0.671601, -0.684497, -0.283576,
		34.866524, 33.141483, 25.305071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612896, 33.840969, 25.750601>,  <35.336647, 33.620632, 25.503574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612896, 33.840969, 25.750601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604012, 33.445923, 25.688469>,  <34.598682, 33.208897, 25.651190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604012, 33.445923, 25.688469>,  <34.612896, 33.840969, 25.750601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604012, 33.445923, 25.688469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404248, -0.133230, 0.904894,
		-0.914380, 0.082889, -0.396282,
		-0.022209, -0.987613, -0.155330,
		34.597347, 33.149639, 25.641870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026146, 33.648712, 25.929043>,  <34.612896, 33.840969, 25.750601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026146, 33.648712, 25.929043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224201, 33.303604, 25.969978>,  <34.343033, 33.096539, 25.994539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224201, 33.303604, 25.969978>,  <34.026146, 33.648712, 25.929043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224201, 33.303604, 25.969978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382753, -0.110868, 0.917174,
		-0.779962, -0.493295, -0.385122,
		0.495135, -0.862768, 0.102337,
		34.372742, 33.044773, 26.000679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514980, 33.139866, 26.191612>,  <34.026146, 33.648712, 25.929043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514980, 33.139866, 26.191612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881554, 32.991829, 26.252506>,  <34.101498, 32.903008, 26.289043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881554, 32.991829, 26.252506>,  <33.514980, 33.139866, 26.191612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881554, 32.991829, 26.252506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191210, -0.070780, 0.978994,
		-0.351543, -0.926295, -0.135631,
		0.916437, -0.370092, 0.152235,
		34.156487, 32.880802, 26.298178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588318, 32.470398, 26.604292>,  <33.514980, 33.139866, 26.191612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588318, 32.470398, 26.604292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946308, 32.619720, 26.701996>,  <34.161102, 32.709312, 26.760618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946308, 32.619720, 26.701996>,  <33.588318, 32.470398, 26.604292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946308, 32.619720, 26.701996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169985, -0.220869, 0.960376,
		0.412466, -0.901032, -0.134215,
		0.894974, 0.373308, 0.244262,
		34.214802, 32.731712, 26.775274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696293, 32.076313, 27.145775>,  <33.588318, 32.470398, 26.604292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696293, 32.076313, 27.145775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989140, 32.347713, 27.169945>,  <34.164848, 32.510551, 27.184446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989140, 32.347713, 27.169945>,  <33.696293, 32.076313, 27.145775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989140, 32.347713, 27.169945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128169, 0.050084, 0.990487,
		0.669018, -0.732892, 0.123630,
		0.732112, 0.678499, 0.060427,
		34.208775, 32.551262, 27.188072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186497, 31.836426, 27.617268>,  <33.696293, 32.076313, 27.145775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186497, 31.836426, 27.617268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261177, 32.228832, 27.596306>,  <34.305984, 32.464275, 27.583729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261177, 32.228832, 27.596306>,  <34.186497, 31.836426, 27.617268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261177, 32.228832, 27.596306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122598, 0.029659, 0.992013,
		0.974737, -0.191637, -0.114734,
		0.186703, 0.981018, -0.052404,
		34.317188, 32.523136, 27.580585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725815, 31.931007, 28.074862>,  <34.186497, 31.836426, 27.617268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725815, 31.931007, 28.074862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599602, 32.309940, 28.052963>,  <34.523872, 32.537300, 28.039824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599602, 32.309940, 28.052963>,  <34.725815, 31.931007, 28.074862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599602, 32.309940, 28.052963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257641, 0.141056, 0.955889,
		0.913269, 0.287508, -0.288580,
		-0.315531, 0.947334, -0.054748,
		34.504944, 32.594139, 28.036539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120003, 32.362881, 28.606859>,  <34.725815, 31.931007, 28.074862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120003, 32.362881, 28.606859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789566, 32.583305, 28.559689>,  <34.591305, 32.715561, 28.531385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789566, 32.583305, 28.559689>,  <35.120003, 32.362881, 28.606859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789566, 32.583305, 28.559689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007408, 0.198628, 0.980047,
		0.563486, 0.810483, -0.160003,
		-0.826093, 0.551057, -0.117929,
		34.541737, 32.748623, 28.524309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199928, 32.851913, 29.051685>,  <35.120003, 32.362881, 28.606859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199928, 32.851913, 29.051685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811939, 32.888500, 28.961536>,  <34.579147, 32.910454, 28.907448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811939, 32.888500, 28.961536>,  <35.199928, 32.851913, 29.051685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811939, 32.888500, 28.961536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194434, 0.265112, 0.944410,
		0.146131, 0.959870, -0.239367,
		-0.969970, 0.091467, -0.225373,
		34.520947, 32.915939, 28.893925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980976, 33.541817, 29.334421>,  <35.199928, 32.851913, 29.051685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980976, 33.541817, 29.334421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634624, 33.342739, 29.314171>,  <34.426815, 33.223293, 29.302021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634624, 33.342739, 29.314171>,  <34.980976, 33.541817, 29.334421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634624, 33.342739, 29.314171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187272, 0.228639, 0.955329,
		-0.463884, 0.836677, -0.291176,
		-0.865876, -0.497691, -0.050624,
		34.374863, 33.193432, 29.298985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472878, 33.962151, 29.556900>,  <34.980976, 33.541817, 29.334421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472878, 33.962151, 29.556900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317841, 33.597431, 29.611141>,  <34.224819, 33.378597, 29.643686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317841, 33.597431, 29.611141>,  <34.472878, 33.962151, 29.556900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317841, 33.597431, 29.611141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194363, 0.224629, 0.954864,
		-0.901107, 0.343743, -0.264285,
		-0.387594, -0.911802, 0.135604,
		34.201561, 33.323891, 29.651823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921116, 34.158463, 29.873192>,  <34.472878, 33.962151, 29.556900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921116, 34.158463, 29.873192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929096, 33.768967, 29.963905>,  <33.933884, 33.535271, 30.018333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929096, 33.768967, 29.963905>,  <33.921116, 34.158463, 29.873192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929096, 33.768967, 29.963905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537315, 0.180844, 0.823764,
		-0.843145, -0.138291, -0.519597,
		0.019954, -0.973741, 0.226784,
		33.935081, 33.476845, 30.031940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349411, 33.950829, 30.200588>,  <33.921116, 34.158463, 29.873192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349411, 33.950829, 30.200588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585297, 33.642998, 30.298561>,  <33.726830, 33.458298, 30.357344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585297, 33.642998, 30.298561>,  <33.349411, 33.950829, 30.200588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585297, 33.642998, 30.298561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482143, -0.092175, 0.871230,
		-0.647902, -0.631867, -0.425402,
		0.589713, -0.769576, 0.244930,
		33.762211, 33.412125, 30.372040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861351, 33.492428, 30.441956>,  <33.349411, 33.950829, 30.200588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861351, 33.492428, 30.441956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219341, 33.380325, 30.580788>,  <33.434135, 33.313065, 30.664087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219341, 33.380325, 30.580788>,  <32.861351, 33.492428, 30.441956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219341, 33.380325, 30.580788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369613, -0.030198, 0.928695,
		-0.249794, -0.959449, -0.130614,
		0.894980, -0.280259, 0.347082,
		33.487835, 33.296249, 30.684912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750534, 32.939667, 30.893707>,  <32.861351, 33.492428, 30.441956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750534, 32.939667, 30.893707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106392, 33.069328, 31.022362>,  <33.319908, 33.147125, 31.099554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106392, 33.069328, 31.022362>,  <32.750534, 32.939667, 30.893707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106392, 33.069328, 31.022362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297733, -0.122297, 0.946783,
		0.346237, -0.938067, -0.012290,
		0.889649, 0.324152, 0.321637,
		33.373287, 33.166573, 31.118853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942783, 32.418015, 31.218801>,  <32.750534, 32.939667, 30.893707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942783, 32.418015, 31.218801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143890, 32.733566, 31.360161>,  <33.264557, 32.922897, 31.444977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143890, 32.733566, 31.360161>,  <32.942783, 32.418015, 31.218801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143890, 32.733566, 31.360161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334061, -0.199742, 0.921144,
		0.797262, -0.581179, 0.163110,
		0.502769, 0.788882, 0.353396,
		33.294720, 32.970230, 31.466179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059532, 32.166874, 31.924070>,  <32.942783, 32.418015, 31.218801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059532, 32.166874, 31.924070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146339, 32.556690, 31.946609>,  <33.198425, 32.790581, 31.960133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146339, 32.556690, 31.946609>,  <33.059532, 32.166874, 31.924070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146339, 32.556690, 31.946609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291618, 0.009637, 0.956487,
		0.931591, -0.224008, 0.286284,
		0.217020, 0.974540, 0.056347,
		33.211445, 32.849052, 31.963514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336445, 32.248863, 32.570568>,  <33.059532, 32.166874, 31.924070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336445, 32.248863, 32.570568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274204, 32.636326, 32.493111>,  <33.236858, 32.868801, 32.446636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274204, 32.636326, 32.493111>,  <33.336445, 32.248863, 32.570568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274204, 32.636326, 32.493111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178956, 0.165143, 0.969899,
		0.971475, 0.185570, 0.147650,
		-0.155601, 0.968655, -0.193641,
		33.227524, 32.926922, 32.435017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883709, 32.652237, 32.909805>,  <33.336445, 32.248863, 32.570568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883709, 32.652237, 32.909805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550415, 32.865639, 32.851715>,  <33.350437, 32.993679, 32.816860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550415, 32.865639, 32.851715>,  <33.883709, 32.652237, 32.909805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550415, 32.865639, 32.851715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008798, 0.275415, 0.961285,
		0.552851, 0.799698, -0.234179,
		-0.833234, 0.533507, -0.145228,
		33.300446, 33.025692, 32.808147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983189, 33.274158, 33.396782>,  <33.883709, 32.652237, 32.909805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983189, 33.274158, 33.396782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596092, 33.253109, 33.298222>,  <33.363834, 33.240479, 33.239086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596092, 33.253109, 33.298222>,  <33.983189, 33.274158, 33.396782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596092, 33.253109, 33.298222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251905, 0.221370, 0.942093,
		0.004966, 0.973769, -0.227485,
		-0.967739, -0.052626, -0.246396,
		33.305771, 33.237320, 33.224304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646263, 33.879799, 33.716629>,  <33.983189, 33.274158, 33.396782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646263, 33.879799, 33.716629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378914, 33.586296, 33.667831>,  <33.218506, 33.410194, 33.638554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378914, 33.586296, 33.667831>,  <33.646263, 33.879799, 33.716629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378914, 33.586296, 33.667831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288409, 0.104468, 0.951791,
		-0.685639, 0.671333, -0.281445,
		-0.668371, -0.733757, -0.121991,
		33.178402, 33.366169, 33.631233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082577, 34.155624, 34.063057>,  <33.646263, 33.879799, 33.716629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082577, 34.155624, 34.063057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986160, 33.773861, 33.992622>,  <32.928310, 33.544804, 33.950363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986160, 33.773861, 33.992622>,  <33.082577, 34.155624, 34.063057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986160, 33.773861, 33.992622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298648, -0.099689, 0.949142,
		-0.923423, 0.281365, -0.261004,
		-0.241037, -0.954408, -0.176084,
		32.913849, 33.487537, 33.939796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258907, 34.041485, 34.209084>,  <33.082577, 34.155624, 34.063057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258907, 34.041485, 34.209084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475655, 33.707706, 34.249249>,  <32.605701, 33.507439, 34.273350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475655, 33.707706, 34.249249>,  <32.258907, 34.041485, 34.209084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475655, 33.707706, 34.249249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313205, -0.089611, 0.945448,
		-0.779926, -0.543756, -0.309910,
		0.541864, -0.834445, 0.100417,
		32.638214, 33.457375, 34.279373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910666, 33.726139, 34.717991>,  <32.258907, 34.041485, 34.209084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910666, 33.726139, 34.717991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267998, 33.546608, 34.727047>,  <32.482395, 33.438889, 34.732479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267998, 33.546608, 34.727047>,  <31.910666, 33.726139, 34.717991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267998, 33.546608, 34.727047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133121, -0.216173, 0.967237,
		-0.429235, -0.867074, -0.252863,
		0.893329, -0.448833, 0.022636,
		32.535995, 33.411957, 34.733837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805664, 33.165878, 35.223076>,  <31.910666, 33.726139, 34.717991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805664, 33.165878, 35.223076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200848, 33.223347, 35.200127>,  <32.437958, 33.257828, 35.186356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200848, 33.223347, 35.200127>,  <31.805664, 33.165878, 35.223076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200848, 33.223347, 35.200127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067167, -0.064235, 0.995672,
		0.139369, -0.987538, -0.073112,
		0.987960, 0.143676, -0.057377,
		32.497234, 33.266449, 35.182915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160816, 32.512783, 35.602306>,  <31.805664, 33.165878, 35.223076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160816, 32.512783, 35.602306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398396, 32.833839, 35.580410>,  <32.540943, 33.026474, 35.567272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398396, 32.833839, 35.580410>,  <32.160816, 32.512783, 35.602306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398396, 32.833839, 35.580410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041498, 0.037388, 0.998439,
		0.803436, -0.595288, -0.011101,
		0.593944, 0.802642, -0.054742,
		32.576580, 33.074631, 35.563988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648869, 32.450031, 36.166176>,  <32.160816, 32.512783, 35.602306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648869, 32.450031, 36.166176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675251, 32.836105, 36.064930>,  <32.691078, 33.067749, 36.004181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675251, 32.836105, 36.064930>,  <32.648869, 32.450031, 36.166176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675251, 32.836105, 36.064930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080434, 0.247703, 0.965491,
		0.994576, -0.084035, -0.061298,
		0.065952, 0.965185, -0.253118,
		32.695038, 33.125660, 35.988995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909668, 32.716454, 36.740379>,  <32.648869, 32.450031, 36.166176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909668, 32.716454, 36.740379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805500, 33.061863, 36.567635>,  <32.743000, 33.269108, 36.463985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805500, 33.061863, 36.567635>,  <32.909668, 32.716454, 36.740379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805500, 33.061863, 36.567635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242114, 0.374601, 0.895017,
		0.934646, 0.337640, 0.111518,
		-0.260418, 0.863524, -0.431866,
		32.727375, 33.320919, 36.438076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227528, 33.273907, 37.115780>,  <32.909668, 32.716454, 36.740379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227528, 33.273907, 37.115780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923412, 33.444210, 36.919537>,  <32.740944, 33.546391, 36.801792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923412, 33.444210, 36.919537>,  <33.227528, 33.273907, 37.115780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923412, 33.444210, 36.919537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387067, 0.309611, 0.868516,
		0.521672, 0.850220, -0.070598,
		-0.760288, 0.425754, -0.490608,
		32.695328, 33.571938, 36.772354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259106, 33.952595, 37.250183>,  <33.227528, 33.273907, 37.115780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259106, 33.952595, 37.250183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882195, 33.888279, 37.132702>,  <32.656048, 33.849689, 37.062214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882195, 33.888279, 37.132702>,  <33.259106, 33.952595, 37.250183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882195, 33.888279, 37.132702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330681, 0.309110, 0.891684,
		-0.052590, 0.937335, -0.344438,
		-0.942276, -0.160793, -0.293703,
		32.599510, 33.840042, 37.044590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896599, 34.562763, 37.422153>,  <33.259106, 33.952595, 37.250183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896599, 34.562763, 37.422153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618240, 34.276230, 37.401733>,  <32.451225, 34.104309, 37.389481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618240, 34.276230, 37.401733>,  <32.896599, 34.562763, 37.422153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618240, 34.276230, 37.401733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530071, 0.464386, 0.709485,
		-0.484520, 0.520784, -0.702868,
		-0.695891, -0.716331, -0.051049,
		32.409473, 34.061329, 37.386417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250576, 34.898186, 37.386406>,  <32.896599, 34.562763, 37.422153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250576, 34.898186, 37.386406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166168, 34.532612, 37.525085>,  <32.115524, 34.313267, 37.608295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166168, 34.532612, 37.525085>,  <32.250576, 34.898186, 37.386406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166168, 34.532612, 37.525085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484032, 0.405847, 0.775243,
		-0.849226, -0.004226, -0.528013,
		-0.211016, -0.913931, 0.346701,
		32.102863, 34.258434, 37.629097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539438, 34.899918, 37.492153>,  <32.250576, 34.898186, 37.386406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539438, 34.899918, 37.492153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649797, 34.593601, 37.724514>,  <31.716013, 34.409813, 37.863930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649797, 34.593601, 37.724514>,  <31.539438, 34.899918, 37.492153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649797, 34.593601, 37.724514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518070, 0.390588, 0.760950,
		-0.809620, -0.510893, -0.288969,
		0.275896, -0.765787, 0.580906,
		31.732567, 34.363865, 37.898785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931349, 34.587418, 37.871853>,  <31.539438, 34.899918, 37.492153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931349, 34.587418, 37.871853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255411, 34.497135, 38.088261>,  <31.449848, 34.442966, 38.218105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255411, 34.497135, 38.088261>,  <30.931349, 34.587418, 37.871853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255411, 34.497135, 38.088261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449757, 0.352612, 0.820599,
		-0.375984, -0.908142, 0.184158,
		0.810157, -0.225706, 0.541020,
		31.498459, 34.429424, 38.250568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747202, 34.136951, 38.372536>,  <30.931349, 34.587418, 37.871853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747202, 34.136951, 38.372536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065159, 34.326134, 38.524570>,  <31.255932, 34.439644, 38.615791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065159, 34.326134, 38.524570>,  <30.747202, 34.136951, 38.372536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065159, 34.326134, 38.524570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575063, 0.387446, 0.720547,
		0.193520, -0.791330, 0.579954,
		0.794892, 0.472950, 0.380086,
		31.303627, 34.468018, 38.638596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486582, 34.376835, 39.023232>,  <30.747202, 34.136951, 38.372536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486582, 34.376835, 39.023232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854740, 34.532131, 39.041744>,  <31.075636, 34.625309, 39.052853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854740, 34.532131, 39.041744>,  <30.486582, 34.376835, 39.023232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854740, 34.532131, 39.041744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280647, 0.573599, 0.769559,
		0.272225, -0.721288, 0.636896,
		0.920397, 0.388237, 0.046279,
		31.130859, 34.648602, 39.055630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554735, 34.467602, 39.710476>,  <30.486582, 34.376835, 39.023232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554735, 34.467602, 39.710476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824596, 34.715210, 39.549648>,  <30.986513, 34.863773, 39.453152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824596, 34.715210, 39.549648>,  <30.554735, 34.467602, 39.710476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824596, 34.715210, 39.549648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171504, 0.661256, 0.730293,
		0.717936, -0.423737, 0.552282,
		0.674651, 0.619022, -0.402066,
		31.026993, 34.900917, 39.429028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092316, 34.488537, 40.166492>,  <30.554735, 34.467602, 39.710476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092316, 34.488537, 40.166492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042223, 34.831322, 39.966515>,  <31.012167, 35.036991, 39.846527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042223, 34.831322, 39.966515>,  <31.092316, 34.488537, 40.166492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042223, 34.831322, 39.966515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241394, 0.462445, 0.853155,
		0.962313, 0.227526, 0.148951,
		-0.125233, 0.856958, -0.499940,
		31.004654, 35.088409, 39.816532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690729, 34.997372, 40.249142>,  <31.092316, 34.488537, 40.166492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690729, 34.997372, 40.249142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335375, 35.178631, 40.219669>,  <31.122162, 35.287384, 40.201984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335375, 35.178631, 40.219669>,  <31.690729, 34.997372, 40.249142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335375, 35.178631, 40.219669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132628, 0.406971, 0.903761,
		0.439523, 0.793116, -0.421648,
		-0.888386, 0.453146, -0.073684,
		31.068859, 35.314575, 40.197563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761862, 35.702435, 40.247807>,  <31.690729, 34.997372, 40.249142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761862, 35.702435, 40.247807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418894, 35.547028, 40.382790>,  <31.213112, 35.453781, 40.463779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418894, 35.547028, 40.382790>,  <31.761862, 35.702435, 40.247807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418894, 35.547028, 40.382790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232465, 0.292621, 0.927541,
		-0.459116, 0.873742, -0.160582,
		-0.857422, -0.388520, 0.337462,
		31.161667, 35.430473, 40.484028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591000, 36.084602, 40.832695>,  <31.761862, 35.702435, 40.247807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591000, 36.084602, 40.832695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351168, 35.767529, 40.876781>,  <31.207268, 35.577282, 40.903233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351168, 35.767529, 40.876781>,  <31.591000, 36.084602, 40.832695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351168, 35.767529, 40.876781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025702, 0.118576, 0.992612,
		-0.799901, 0.597984, -0.050722,
		-0.599581, -0.792688, 0.110219,
		31.171293, 35.529720, 40.909847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228966, 36.439751, 41.337833>,  <31.591000, 36.084602, 40.832695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228966, 36.439751, 41.337833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322111, 36.797295, 41.491089>,  <31.377998, 37.011822, 41.583042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322111, 36.797295, 41.491089>,  <31.228966, 36.439751, 41.337833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322111, 36.797295, 41.491089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248475, 0.326208, -0.912057,
		-0.940231, 0.307585, -0.146139,
		0.232864, 0.893856, 0.383139,
		31.391970, 37.065453, 41.606030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733908, 36.927719, 41.008205>,  <31.228966, 36.439751, 41.337833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733908, 36.927719, 41.008205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105221, 37.024635, 41.121048>,  <31.328009, 37.082787, 41.188755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105221, 37.024635, 41.121048>,  <30.733908, 36.927719, 41.008205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105221, 37.024635, 41.121048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203597, 0.303681, -0.930766,
		-0.311187, 0.921451, 0.232573,
		0.928284, 0.242291, 0.282106,
		31.383705, 37.097324, 41.205681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027605, 37.744907, 40.970608>,  <30.733908, 36.927719, 41.008205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027605, 37.744907, 40.970608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294142, 37.453911, 40.905197>,  <31.454063, 37.279312, 40.865952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294142, 37.453911, 40.905197>,  <31.027605, 37.744907, 40.970608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294142, 37.453911, 40.905197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062855, 0.273334, -0.959864,
		0.742992, 0.629319, 0.227860,
		0.666342, -0.727493, -0.163529,
		31.494045, 37.235664, 40.856140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761297, 37.939903, 40.797577>,  <31.027605, 37.744907, 40.970608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761297, 37.939903, 40.797577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606409, 37.612740, 40.627361>,  <31.513475, 37.416439, 40.525234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606409, 37.612740, 40.627361>,  <31.761297, 37.939903, 40.797577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606409, 37.612740, 40.627361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072562, 0.433075, -0.898432,
		0.919126, -0.378771, -0.108347,
		-0.387222, -0.817911, -0.425535,
		31.490242, 37.367367, 40.499702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258736, 37.412563, 40.361980>,  <31.761297, 37.939903, 40.797577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258736, 37.412563, 40.361980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887522, 37.441696, 40.215862>,  <31.664793, 37.459175, 40.128193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887522, 37.441696, 40.215862>,  <32.258736, 37.412563, 40.361980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887522, 37.441696, 40.215862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372429, 0.198188, -0.906652,
		0.006366, -0.977454, -0.211050,
		-0.928039, 0.072829, -0.365294,
		31.609110, 37.463543, 40.106274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006428, 37.559872, 39.636467>,  <32.258736, 37.412563, 40.361980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006428, 37.559872, 39.636467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297413, 37.334690, 39.479553>,  <32.472004, 37.199581, 39.385406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297413, 37.334690, 39.479553>,  <32.006428, 37.559872, 39.636467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297413, 37.334690, 39.479553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047316, 0.529200, -0.847176,
		0.684517, 0.634848, 0.358335,
		0.727460, -0.562952, -0.392286,
		32.515652, 37.165806, 39.361866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509758, 37.958496, 39.385693>,  <32.006428, 37.559872, 39.636467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509758, 37.958496, 39.385693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511200, 37.608917, 39.191292>,  <32.512066, 37.399170, 39.074650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511200, 37.608917, 39.191292>,  <32.509758, 37.958496, 39.385693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511200, 37.608917, 39.191292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074387, 0.484424, -0.871665,
		0.997223, 0.039293, -0.063265,
		0.003603, -0.873951, -0.486001,
		32.512280, 37.346733, 39.045490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039276, 37.873779, 38.824108>,  <32.509758, 37.958496, 39.385693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039276, 37.873779, 38.824108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718063, 37.650433, 38.740818>,  <32.525333, 37.516422, 38.690842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718063, 37.650433, 38.740818>,  <33.039276, 37.873779, 38.824108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718063, 37.650433, 38.740818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088134, 0.456849, -0.885168,
		0.589381, -0.692468, -0.416076,
		-0.803034, -0.558371, -0.208228,
		32.477154, 37.482922, 38.678349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047081, 37.760765, 38.163990>,  <33.039276, 37.873779, 38.824108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047081, 37.760765, 38.163990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665981, 37.657509, 38.228031>,  <32.437321, 37.595554, 38.266457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665981, 37.657509, 38.228031>,  <33.047081, 37.760765, 38.163990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665981, 37.657509, 38.228031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223251, 0.237681, -0.945339,
		0.205968, -0.936417, -0.284079,
		-0.952752, -0.258131, 0.160101,
		32.380157, 37.580067, 38.276062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831402, 37.443081, 37.545582>,  <33.047081, 37.760765, 38.163990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831402, 37.443081, 37.545582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475098, 37.523769, 37.708481>,  <32.261314, 37.572182, 37.806221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475098, 37.523769, 37.708481>,  <32.831402, 37.443081, 37.545582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475098, 37.523769, 37.708481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361732, 0.227774, -0.904029,
		-0.275121, -0.952590, -0.129924,
		-0.890763, 0.201720, 0.407248,
		32.207870, 37.584286, 37.830654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385536, 37.137646, 37.175915>,  <32.831402, 37.443081, 37.545582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385536, 37.137646, 37.175915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175938, 37.432270, 37.346989>,  <32.050179, 37.609043, 37.449635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175938, 37.432270, 37.346989>,  <32.385536, 37.137646, 37.175915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175938, 37.432270, 37.346989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370844, 0.254745, -0.893073,
		-0.766751, -0.626568, 0.139663,
		-0.523993, 0.736558, 0.427685,
		32.018738, 37.653236, 37.475292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766340, 37.030407, 36.944515>,  <32.385536, 37.137646, 37.175915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766340, 37.030407, 36.944515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732145, 37.412678, 37.057213>,  <31.711628, 37.642040, 37.124832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732145, 37.412678, 37.057213>,  <31.766340, 37.030407, 36.944515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732145, 37.412678, 37.057213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421177, 0.221607, -0.879489,
		-0.902941, -0.193847, 0.383564,
		-0.085486, 0.955674, 0.281742,
		31.706499, 37.699379, 37.141735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060892, 37.241917, 36.851063>,  <31.766340, 37.030407, 36.944515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060892, 37.241917, 36.851063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291380, 37.568806, 36.846794>,  <31.429672, 37.764938, 36.844231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291380, 37.568806, 36.846794>,  <31.060892, 37.241917, 36.851063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291380, 37.568806, 36.846794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441033, 0.299920, -0.845895,
		-0.688084, 0.492129, 0.533243,
		0.576220, 0.817225, -0.010675,
		31.464247, 37.813972, 36.843594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579103, 37.611084, 36.454308>,  <31.060892, 37.241917, 36.851063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579103, 37.611084, 36.454308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928364, 37.805946, 36.461098>,  <31.137920, 37.922863, 36.465172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928364, 37.805946, 36.461098>,  <30.579103, 37.611084, 36.454308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928364, 37.805946, 36.461098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165119, 0.328365, -0.930007,
		-0.458630, 0.809234, 0.367150,
		0.873152, 0.487152, 0.016978,
		31.190310, 37.952091, 36.466190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468136, 38.185730, 36.082283>,  <30.579103, 37.611084, 36.454308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468136, 38.185730, 36.082283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864882, 38.136406, 36.069626>,  <31.102928, 38.106812, 36.062031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864882, 38.136406, 36.069626>,  <30.468136, 38.185730, 36.082283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864882, 38.136406, 36.069626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000147, 0.249661, -0.968333,
		0.127302, 0.960450, 0.247648,
		0.991864, -0.123307, -0.031642,
		31.162441, 38.099415, 36.060135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733765, 38.725544, 35.609856>,  <30.468136, 38.185730, 36.082283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733765, 38.725544, 35.609856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017906, 38.445728, 35.640945>,  <31.188391, 38.277840, 35.659599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017906, 38.445728, 35.640945>,  <30.733765, 38.725544, 35.609856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017906, 38.445728, 35.640945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131267, 0.023186, -0.991076,
		0.691494, 0.714218, 0.108297,
		0.710356, -0.699539, 0.077720,
		31.231012, 38.235867, 35.664261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039646, 38.853104, 34.952068>,  <30.733765, 38.725544, 35.609856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039646, 38.853104, 34.952068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198948, 38.513653, 35.091339>,  <31.294529, 38.309982, 35.174900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198948, 38.513653, 35.091339>,  <31.039646, 38.853104, 34.952068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198948, 38.513653, 35.091339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361283, -0.203773, -0.909918,
		0.843130, 0.488169, 0.225441,
		0.398255, -0.848627, 0.348174,
		31.318424, 38.259064, 35.195793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649786, 38.806465, 34.549755>,  <31.039646, 38.853104, 34.952068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649786, 38.806465, 34.549755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541351, 38.436790, 34.657379>,  <31.476290, 38.214985, 34.721954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541351, 38.436790, 34.657379>,  <31.649786, 38.806465, 34.549755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541351, 38.436790, 34.657379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353329, -0.355558, -0.865296,
		0.895360, -0.139505, 0.422929,
		-0.271089, -0.924185, 0.269062,
		31.460024, 38.159534, 34.738098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192425, 38.324654, 34.300976>,  <31.649786, 38.806465, 34.549755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192425, 38.324654, 34.300976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885649, 38.077412, 34.369961>,  <31.701582, 37.929066, 34.411350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885649, 38.077412, 34.369961>,  <32.192425, 38.324654, 34.300976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885649, 38.077412, 34.369961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137887, -0.421204, -0.896423,
		0.626728, -0.663724, 0.408268,
		-0.766941, -0.618108, 0.172462,
		31.655567, 37.891979, 34.421700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464100, 37.646252, 34.170063>,  <32.192425, 38.324654, 34.300976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464100, 37.646252, 34.170063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067425, 37.627575, 34.122112>,  <31.829418, 37.616371, 34.093342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067425, 37.627575, 34.122112>,  <32.464100, 37.646252, 34.170063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067425, 37.627575, 34.122112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128646, -0.358445, -0.924644,
		0.000201, -0.932383, 0.361473,
		-0.991690, -0.046688, -0.119875,
		31.769918, 37.613567, 34.086151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424011, 36.960274, 33.939339>,  <32.464100, 37.646252, 34.170063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424011, 36.960274, 33.939339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084965, 37.146072, 33.836735>,  <31.881538, 37.257549, 33.775173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084965, 37.146072, 33.836735>,  <32.424011, 36.960274, 33.939339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084965, 37.146072, 33.836735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055879, -0.402598, -0.913670,
		-0.527665, -0.788772, 0.315291,
		-0.847612, 0.464494, -0.256513,
		31.830681, 37.285419, 33.759781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060745, 36.500584, 33.530060>,  <32.424011, 36.960274, 33.939339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060745, 36.500584, 33.530060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860079, 36.828476, 33.419525>,  <31.739677, 37.025211, 33.353203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860079, 36.828476, 33.419525>,  <32.060745, 36.500584, 33.530060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860079, 36.828476, 33.419525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024906, -0.332999, -0.942598,
		-0.864701, -0.465990, 0.187471,
		-0.501669, 0.819735, -0.276339,
		31.709578, 37.074398, 33.336624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535259, 36.315132, 32.966015>,  <32.060745, 36.500584, 33.530060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535259, 36.315132, 32.966015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608545, 36.707230, 32.936195>,  <31.652517, 36.942490, 32.918304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608545, 36.707230, 32.936195>,  <31.535259, 36.315132, 32.966015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608545, 36.707230, 32.936195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146178, -0.102156, -0.983970,
		-0.972144, 0.169380, -0.162006,
		0.183215, 0.980242, -0.074551,
		31.663509, 37.001301, 32.913830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116205, 36.526218, 32.295395>,  <31.535259, 36.315132, 32.966015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116205, 36.526218, 32.295395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370785, 36.818790, 32.393326>,  <31.523533, 36.994335, 32.452084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370785, 36.818790, 32.393326>,  <31.116205, 36.526218, 32.295395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370785, 36.818790, 32.393326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383645, -0.024828, -0.923147,
		-0.669140, 0.681463, -0.296412,
		0.636450, 0.731431, 0.244827,
		31.561720, 37.038219, 32.466774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936380, 37.061657, 32.093967>,  <31.116205, 36.526218, 32.295395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936380, 37.061657, 32.093967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327087, 37.144989, 32.114071>,  <31.561512, 37.194988, 32.126133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327087, 37.144989, 32.114071>,  <30.936380, 37.061657, 32.093967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327087, 37.144989, 32.114071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061575, -0.048169, -0.996939,
		-0.205270, 0.976872, -0.059877,
		0.976767, 0.208328, 0.050263,
		31.620117, 37.207489, 32.129150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057882, 37.481030, 31.555365>,  <30.936380, 37.061657, 32.093967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057882, 37.481030, 31.555365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431246, 37.362354, 31.636082>,  <31.655264, 37.291149, 31.684513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431246, 37.362354, 31.636082>,  <31.057882, 37.481030, 31.555365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431246, 37.362354, 31.636082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189305, -0.070561, -0.979380,
		0.304810, 0.952364, -0.009698,
		0.933410, -0.296689, 0.201795,
		31.711269, 37.273346, 31.696621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416149, 37.813847, 31.065577>,  <31.057882, 37.481030, 31.555365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416149, 37.813847, 31.065577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668072, 37.524548, 31.178894>,  <31.819225, 37.350967, 31.246885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668072, 37.524548, 31.178894>,  <31.416149, 37.813847, 31.065577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668072, 37.524548, 31.178894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307861, -0.102419, -0.945903,
		0.713136, 0.682953, 0.158155,
		0.629809, -0.723247, 0.283294,
		31.857014, 37.307575, 31.263882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118912, 37.796474, 30.613903>,  <31.416149, 37.813847, 31.065577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118912, 37.796474, 30.613903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119980, 37.425091, 30.762478>,  <32.120621, 37.202263, 30.851622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119980, 37.425091, 30.762478>,  <32.118912, 37.796474, 30.613903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119980, 37.425091, 30.762478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360001, -0.345639, -0.866564,
		0.932948, 0.136033, 0.333321,
		0.002673, -0.928455, 0.371435,
		32.120781, 37.146553, 30.873909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735497, 37.477886, 30.492823>,  <32.118912, 37.796474, 30.613903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735497, 37.477886, 30.492823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518642, 37.148399, 30.559254>,  <32.388531, 36.950706, 30.599112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518642, 37.148399, 30.559254>,  <32.735497, 37.477886, 30.492823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518642, 37.148399, 30.559254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310150, -0.379839, -0.871509,
		0.780959, -0.420967, 0.461400,
		-0.542135, -0.823716, 0.166075,
		32.356003, 36.901283, 30.609076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098656, 36.954620, 30.411451>,  <32.735497, 37.477886, 30.492823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098656, 36.954620, 30.411451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735710, 36.794498, 30.360146>,  <32.517944, 36.698425, 30.329363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735710, 36.794498, 30.360146>,  <33.098656, 36.954620, 30.411451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735710, 36.794498, 30.360146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292591, -0.382381, -0.876456,
		0.301802, -0.832793, 0.464082,
		-0.907362, -0.400302, -0.128264,
		32.463501, 36.674408, 30.321667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150806, 36.226902, 30.398722>,  <33.098656, 36.954620, 30.411451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150806, 36.226902, 30.398722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828964, 36.338249, 30.188915>,  <32.635857, 36.405056, 30.063032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828964, 36.338249, 30.188915>,  <33.150806, 36.226902, 30.398722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828964, 36.338249, 30.188915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331700, -0.521952, -0.785838,
		-0.492528, -0.806272, 0.327630,
		-0.804606, 0.278373, -0.524517,
		32.587582, 36.421761, 30.031561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842979, 35.514347, 30.131388>,  <33.150806, 36.226902, 30.398722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842979, 35.514347, 30.131388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689945, 35.797173, 29.893501>,  <32.598125, 35.966869, 29.750769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689945, 35.797173, 29.893501>,  <32.842979, 35.514347, 30.131388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689945, 35.797173, 29.893501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451016, -0.418858, -0.788126,
		-0.806359, -0.569751, -0.158649,
		-0.382584, 0.707066, -0.594717,
		32.575169, 36.009293, 29.715086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738018, 35.247250, 29.502674>,  <32.842979, 35.514347, 30.131388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738018, 35.247250, 29.502674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715378, 35.629536, 29.387150>,  <32.701794, 35.858906, 29.317835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715378, 35.629536, 29.387150>,  <32.738018, 35.247250, 29.502674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715378, 35.629536, 29.387150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289407, -0.261149, -0.920893,
		-0.955531, -0.135711, -0.261808,
		-0.056605, 0.955711, -0.288812,
		32.698395, 35.916248, 29.300507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395889, 35.207043, 28.795538>,  <32.738018, 35.247250, 29.502674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395889, 35.207043, 28.795538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568932, 35.567589, 28.787617>,  <32.672756, 35.783916, 28.782864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568932, 35.567589, 28.787617>,  <32.395889, 35.207043, 28.795538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568932, 35.567589, 28.787617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269880, -0.150423, -0.951072,
		-0.860244, 0.406092, -0.308334,
		0.432603, 0.901367, -0.019804,
		32.698711, 35.837997, 28.781675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097637, 35.579956, 28.278172>,  <32.395889, 35.207043, 28.795538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097637, 35.579956, 28.278172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454224, 35.752407, 28.333904>,  <32.668175, 35.855877, 28.367344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454224, 35.752407, 28.333904>,  <32.097637, 35.579956, 28.278172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454224, 35.752407, 28.333904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167003, -0.026794, -0.985592,
		-0.421186, 0.901892, -0.095886,
		0.891466, 0.431131, 0.139334,
		32.721664, 35.881748, 28.375704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047115, 36.152889, 27.895113>,  <32.097637, 35.579956, 28.278172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047115, 36.152889, 27.895113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434055, 36.080635, 27.966232>,  <32.666218, 36.037285, 28.008904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434055, 36.080635, 27.966232>,  <32.047115, 36.152889, 27.895113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434055, 36.080635, 27.966232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179992, -0.004293, -0.983659,
		0.178443, 0.983541, 0.028359,
		0.967347, -0.180632, 0.177796,
		32.724258, 36.026447, 28.019571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281044, 36.546780, 27.324564>,  <32.047115, 36.152889, 27.895113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281044, 36.546780, 27.324564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592632, 36.326611, 27.444729>,  <32.779583, 36.194508, 27.516827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592632, 36.326611, 27.444729>,  <32.281044, 36.546780, 27.324564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592632, 36.326611, 27.444729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363339, 0.005731, -0.931640,
		0.511074, 0.834866, 0.204454,
		0.778966, -0.550423, 0.300410,
		32.826321, 36.161484, 27.534851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845211, 36.832329, 26.993700>,  <32.281044, 36.546780, 27.324564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845211, 36.832329, 26.993700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959011, 36.458725, 27.080132>,  <33.027290, 36.234562, 27.131990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959011, 36.458725, 27.080132>,  <32.845211, 36.832329, 26.993700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959011, 36.458725, 27.080132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551402, -0.024953, -0.833867,
		0.784229, 0.356384, 0.507914,
		0.284502, -0.934007, 0.216079,
		33.044361, 36.178524, 27.144955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547115, 36.824860, 26.681870>,  <32.845211, 36.832329, 26.993700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547115, 36.824860, 26.681870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443150, 36.441257, 26.727051>,  <33.380768, 36.211098, 26.754160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443150, 36.441257, 26.727051>,  <33.547115, 36.824860, 26.681870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443150, 36.441257, 26.727051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212472, -0.170907, -0.962105,
		0.941965, -0.226069, 0.248183,
		-0.259919, -0.959001, 0.112955,
		33.365173, 36.153557, 26.760937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024570, 36.443111, 26.286306>,  <33.547115, 36.824860, 26.681870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024570, 36.443111, 26.286306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711338, 36.196453, 26.318657>,  <33.523399, 36.048458, 26.338066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711338, 36.196453, 26.318657>,  <34.024570, 36.443111, 26.286306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711338, 36.196453, 26.318657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040923, -0.180848, -0.982659,
		0.620576, -0.766189, 0.166852,
		-0.783078, -0.616643, 0.080875,
		33.476414, 36.011459, 26.342920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262852, 35.810223, 26.128513>,  <34.024570, 36.443111, 26.286306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262852, 35.810223, 26.128513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866920, 35.792927, 26.074310>,  <33.629360, 35.782551, 26.041788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866920, 35.792927, 26.074310>,  <34.262852, 35.810223, 26.128513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866920, 35.792927, 26.074310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141300, -0.408100, -0.901936,
		-0.016300, -0.911913, 0.410061,
		-0.989833, -0.043240, -0.135505,
		33.569969, 35.779957, 26.033659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121571, 35.294044, 25.633949>,  <34.262852, 35.810223, 26.128513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121571, 35.294044, 25.633949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758438, 35.461052, 25.618382>,  <33.540558, 35.561256, 25.609041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758438, 35.461052, 25.618382>,  <34.121571, 35.294044, 25.633949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758438, 35.461052, 25.618382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077999, -0.259331, -0.962634,
		-0.412015, -0.870874, 0.267996,
		-0.907832, 0.417523, -0.038921,
		33.486088, 35.586308, 25.606705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602074, 34.841904, 25.267204>,  <34.121571, 35.294044, 25.633949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602074, 34.841904, 25.267204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445881, 35.207275, 25.221287>,  <33.352165, 35.426498, 25.193737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445881, 35.207275, 25.221287>,  <33.602074, 34.841904, 25.267204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445881, 35.207275, 25.221287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169583, -0.193926, -0.966248,
		-0.904858, -0.357832, 0.230626,
		-0.390478, 0.913427, -0.114793,
		33.328739, 35.481304, 25.186850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920361, 34.789070, 24.955948>,  <33.602074, 34.841904, 25.267204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920361, 34.789070, 24.955948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072285, 35.151936, 24.883511>,  <33.163441, 35.369656, 24.840048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072285, 35.151936, 24.883511>,  <32.920361, 34.789070, 24.955948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072285, 35.151936, 24.883511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077013, -0.164074, -0.983437,
		-0.921852, 0.387468, 0.007545,
		0.379813, 0.907165, -0.181092,
		33.186230, 35.424084, 24.829184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440186, 35.078819, 24.451456>,  <32.920361, 34.789070, 24.955948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440186, 35.078819, 24.451456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769844, 35.304424, 24.430794>,  <32.967640, 35.439789, 24.418396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769844, 35.304424, 24.430794>,  <32.440186, 35.078819, 24.451456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769844, 35.304424, 24.430794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090594, 0.041245, -0.995033,
		-0.559080, 0.824736, 0.085089,
		0.824149, 0.564012, -0.051657,
		33.017090, 35.473629, 24.415297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255108, 35.635651, 23.980328>,  <32.440186, 35.078819, 24.451456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255108, 35.635651, 23.980328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646744, 35.566193, 24.022709>,  <32.881725, 35.524517, 24.048138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646744, 35.566193, 24.022709>,  <32.255108, 35.635651, 23.980328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646744, 35.566193, 24.022709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071065, -0.196061, -0.978013,
		0.190602, 0.965094, -0.179622,
		0.979092, -0.173647, 0.105954,
		32.940472, 35.514099, 24.054495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829853, 36.169968, 24.295794>,  <32.255108, 35.635651, 23.980328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829853, 36.169968, 24.295794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464504, 36.147030, 24.134567>,  <31.245295, 36.133266, 24.037832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464504, 36.147030, 24.134567>,  <31.829853, 36.169968, 24.295794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464504, 36.147030, 24.134567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404236, 0.245464, 0.881102,
		0.048408, 0.967708, -0.247382,
		-0.913373, -0.057348, -0.403065,
		31.190493, 36.129826, 24.013647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389265, 36.717247, 24.633980>,  <31.829853, 36.169968, 24.295794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389265, 36.717247, 24.633980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117718, 36.469433, 24.476337>,  <30.954790, 36.320744, 24.381752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117718, 36.469433, 24.476337>,  <31.389265, 36.717247, 24.633980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117718, 36.469433, 24.476337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543271, 0.062728, 0.837210,
		-0.493957, 0.782461, -0.379158,
		-0.678868, -0.619532, -0.394104,
		30.914057, 36.283573, 24.358107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887442, 37.219986, 24.435762>,  <31.389265, 36.717247, 24.633980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887442, 37.219986, 24.435762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703684, 36.869015, 24.491020>,  <30.593430, 36.658432, 24.524176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703684, 36.869015, 24.491020>,  <30.887442, 37.219986, 24.435762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703684, 36.869015, 24.491020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492242, 0.380950, 0.782672,
		-0.739361, 0.291554, -0.606911,
		-0.459394, -0.877424, 0.138145,
		30.565866, 36.605789, 24.532463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178995, 37.373817, 24.534161>,  <30.887442, 37.219986, 24.435762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178995, 37.373817, 24.534161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199684, 36.999298, 24.673115>,  <30.212097, 36.774586, 24.756487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199684, 36.999298, 24.673115>,  <30.178995, 37.373817, 24.534161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199684, 36.999298, 24.673115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750842, 0.192892, 0.631688,
		-0.658454, -0.293504, -0.693033,
		0.051723, -0.936295, 0.347385,
		30.215200, 36.718410, 24.777330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494093, 37.205750, 24.653631>,  <30.178995, 37.373817, 24.534161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494093, 37.205750, 24.653631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685879, 36.935310, 24.877419>,  <29.800951, 36.773045, 25.011690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685879, 36.935310, 24.877419>,  <29.494093, 37.205750, 24.653631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685879, 36.935310, 24.877419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639592, 0.167285, 0.750292,
		-0.600863, -0.717568, -0.352222,
		0.479464, -0.676101, 0.559466,
		29.829718, 36.732479, 25.045258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972895, 36.926971, 25.069578>,  <29.494093, 37.205750, 24.653631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972895, 36.926971, 25.069578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319424, 36.857281, 25.256824>,  <29.527340, 36.815464, 25.369171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319424, 36.857281, 25.256824>,  <28.972895, 36.926971, 25.069578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319424, 36.857281, 25.256824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415133, 0.270012, 0.868768,
		-0.277763, -0.946962, 0.161588,
		0.866322, -0.174231, 0.468115,
		29.579321, 36.805012, 25.397259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766985, 36.503128, 25.814932>,  <28.972895, 36.926971, 25.069578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766985, 36.503128, 25.814932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135056, 36.648289, 25.873699>,  <29.355898, 36.735386, 25.908960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135056, 36.648289, 25.873699>,  <28.766985, 36.503128, 25.814932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135056, 36.648289, 25.873699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278198, 0.342030, 0.897564,
		0.275472, -0.866788, 0.415684,
		0.920174, 0.362897, 0.146919,
		29.411108, 36.757156, 25.917774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085939, 36.120464, 26.409153>,  <28.766985, 36.503128, 25.814932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085939, 36.120464, 26.409153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316916, 36.445786, 26.380577>,  <29.455502, 36.640976, 26.363432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316916, 36.445786, 26.380577>,  <29.085939, 36.120464, 26.409153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316916, 36.445786, 26.380577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118240, 0.169889, 0.978344,
		0.807824, -0.556490, 0.194266,
		0.577442, 0.813300, -0.071441,
		29.490149, 36.689777, 26.359144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631506, 36.201984, 27.014357>,  <29.085939, 36.120464, 26.409153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631506, 36.201984, 27.014357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579220, 36.573139, 26.874676>,  <29.547848, 36.795834, 26.790867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579220, 36.573139, 26.874676>,  <29.631506, 36.201984, 27.014357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579220, 36.573139, 26.874676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169239, 0.326171, 0.930038,
		0.976868, 0.180668, 0.114399,
		-0.130714, 0.927885, -0.349202,
		29.540005, 36.851505, 26.769915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057110, 36.652477, 27.465204>,  <29.631506, 36.201984, 27.014357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057110, 36.652477, 27.465204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785513, 36.883919, 27.284458>,  <29.622555, 37.022785, 27.176010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785513, 36.883919, 27.284458>,  <30.057110, 36.652477, 27.465204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785513, 36.883919, 27.284458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166475, 0.478118, 0.862374,
		0.715019, 0.660772, -0.228316,
		-0.678995, 0.578605, -0.451866,
		29.581814, 37.057499, 27.148899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135262, 37.268494, 27.805052>,  <30.057110, 36.652477, 27.465204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135262, 37.268494, 27.805052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771395, 37.295574, 27.641136>,  <29.553076, 37.311825, 27.542788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771395, 37.295574, 27.641136>,  <30.135262, 37.268494, 27.805052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771395, 37.295574, 27.641136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355626, 0.382738, 0.852668,
		0.214570, 0.921373, -0.324086,
		-0.909665, 0.067704, -0.409788,
		29.498495, 37.315884, 27.518200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944891, 37.959637, 27.900707>,  <30.135262, 37.268494, 27.805052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944891, 37.959637, 27.900707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616911, 37.734558, 27.858654>,  <29.420122, 37.599510, 27.833422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616911, 37.734558, 27.858654>,  <29.944891, 37.959637, 27.900707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616911, 37.734558, 27.858654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417802, 0.462729, 0.781872,
		-0.391309, 0.685021, -0.614511,
		-0.819951, -0.562697, -0.105133,
		29.370926, 37.565750, 27.827114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489801, 38.386303, 27.909563>,  <29.944891, 37.959637, 27.900707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489801, 38.386303, 27.909563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283485, 38.049171, 27.971016>,  <29.159697, 37.846893, 28.007887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283485, 38.049171, 27.971016>,  <29.489801, 38.386303, 27.909563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283485, 38.049171, 27.971016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397096, 0.394098, 0.828856,
		-0.759128, 0.366509, -0.537955,
		-0.515790, -0.842827, 0.153632,
		29.128748, 37.796322, 28.017105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906782, 38.613464, 28.099859>,  <29.489801, 38.386303, 27.909563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906782, 38.613464, 28.099859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942219, 38.243618, 28.248039>,  <28.963480, 38.021709, 28.336948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942219, 38.243618, 28.248039>,  <28.906782, 38.613464, 28.099859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942219, 38.243618, 28.248039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260910, 0.337387, 0.904487,
		-0.961289, -0.176784, -0.211353,
		0.088592, -0.924618, 0.370451,
		28.968796, 37.966232, 28.359175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387716, 38.537426, 28.637594>,  <28.906782, 38.613464, 28.099859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387716, 38.537426, 28.637594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603653, 38.220078, 28.750118>,  <28.733215, 38.029667, 28.817633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603653, 38.220078, 28.750118>,  <28.387716, 38.537426, 28.637594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603653, 38.220078, 28.750118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207646, 0.198352, 0.957883,
		-0.815755, -0.575516, -0.057662,
		0.539839, -0.793371, 0.281311,
		28.765604, 37.982067, 28.834511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936541, 38.184311, 29.170546>,  <28.387716, 38.537426, 28.637594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936541, 38.184311, 29.170546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309036, 38.049179, 29.225185>,  <28.532534, 37.968098, 29.257969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309036, 38.049179, 29.225185>,  <27.936541, 38.184311, 29.170546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309036, 38.049179, 29.225185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086059, 0.160358, 0.983300,
		-0.354095, -0.927445, 0.120259,
		0.931241, -0.337833, 0.136597,
		28.588409, 37.947830, 29.266165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895208, 37.794754, 29.805319>,  <27.936541, 38.184311, 29.170546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895208, 37.794754, 29.805319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289627, 37.835331, 29.752522>,  <28.526278, 37.859676, 29.720844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289627, 37.835331, 29.752522>,  <27.895208, 37.794754, 29.805319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289627, 37.835331, 29.752522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131834, 0.008276, 0.991237,
		0.101642, -0.994807, -0.005213,
		0.986047, 0.101438, -0.131991,
		28.585442, 37.865761, 29.712925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322548, 37.210838, 30.054714>,  <27.895208, 37.794754, 29.805319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322548, 37.210838, 30.054714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546171, 37.542263, 30.066929>,  <28.680346, 37.741119, 30.074257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546171, 37.542263, 30.066929>,  <28.322548, 37.210838, 30.054714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546171, 37.542263, 30.066929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000042, -0.036801, 0.999323,
		0.829129, -0.558680, -0.020539,
		0.559057, 0.828566, 0.030536,
		28.713888, 37.790833, 30.076090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836193, 37.039883, 30.488743>,  <28.322548, 37.210838, 30.054714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836193, 37.039883, 30.488743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805155, 37.438305, 30.471561>,  <28.786531, 37.677361, 30.461252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805155, 37.438305, 30.471561>,  <28.836193, 37.039883, 30.488743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805155, 37.438305, 30.471561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096993, 0.050423, 0.994007,
		0.992256, 0.072962, -0.100523,
		-0.077594, 0.996059, -0.042956,
		28.781878, 37.737122, 30.458675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398113, 37.322704, 30.857182>,  <28.836193, 37.039883, 30.488743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398113, 37.322704, 30.857182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132437, 37.621506, 30.845680>,  <28.973030, 37.800789, 30.838779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132437, 37.621506, 30.845680>,  <29.398113, 37.322704, 30.857182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132437, 37.621506, 30.845680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197098, 0.212089, 0.957168,
		0.721110, 0.630077, -0.288102,
		-0.664193, 0.747008, -0.028752,
		28.933178, 37.845608, 30.837055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760715, 37.760807, 31.246656>,  <29.398113, 37.322704, 30.857182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760715, 37.760807, 31.246656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379143, 37.880772, 31.243313>,  <29.150200, 37.952751, 31.241306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379143, 37.880772, 31.243313>,  <29.760715, 37.760807, 31.246656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379143, 37.880772, 31.243313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120903, 0.409765, 0.904143,
		0.274584, 0.861481, -0.427147,
		-0.953932, 0.299907, -0.008359,
		29.092962, 37.970745, 31.240805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775148, 38.410034, 31.545919>,  <29.760715, 37.760807, 31.246656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775148, 38.410034, 31.545919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406260, 38.265911, 31.602032>,  <29.184925, 38.179436, 31.635698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406260, 38.265911, 31.602032>,  <29.775148, 38.410034, 31.545919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406260, 38.265911, 31.602032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003948, 0.371558, 0.928401,
		-0.386635, 0.855641, -0.344082,
		-0.922224, -0.360311, 0.140279,
		29.129593, 38.157818, 31.644115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472754, 38.895599, 32.125347>,  <29.775148, 38.410034, 31.545919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472754, 38.895599, 32.125347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255899, 38.560040, 32.106014>,  <29.125786, 38.358704, 32.094414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255899, 38.560040, 32.106014>,  <29.472754, 38.895599, 32.125347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255899, 38.560040, 32.106014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192910, 0.068269, 0.978839,
		-0.817846, 0.539989, -0.198843,
		-0.542137, -0.838898, -0.048336,
		29.093258, 38.308369, 32.091515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983511, 38.946342, 32.664875>,  <29.472754, 38.895599, 32.125347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983511, 38.946342, 32.664875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970127, 38.556164, 32.577812>,  <28.962097, 38.322056, 32.525574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970127, 38.556164, 32.577812>,  <28.983511, 38.946342, 32.664875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970127, 38.556164, 32.577812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004592, -0.217931, 0.975954,
		-0.999430, 0.031655, 0.011771,
		-0.033459, -0.975451, -0.217661,
		28.960089, 38.263527, 32.512512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458494, 38.710205, 33.083603>,  <28.983511, 38.946342, 32.664875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458494, 38.710205, 33.083603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699223, 38.400589, 33.004944>,  <28.843660, 38.214817, 32.957748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699223, 38.400589, 33.004944>,  <28.458494, 38.710205, 33.083603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699223, 38.400589, 33.004944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111941, -0.325555, 0.938873,
		-0.790747, -0.543020, -0.282573,
		0.601821, -0.774043, -0.196645,
		28.879768, 38.168377, 32.945950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140202, 38.055115, 33.339272>,  <28.458494, 38.710205, 33.083603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140202, 38.055115, 33.339272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523790, 37.943901, 33.317101>,  <28.753942, 37.877174, 33.303799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523790, 37.943901, 33.317101>,  <28.140202, 38.055115, 33.339272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523790, 37.943901, 33.317101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072233, -0.428682, 0.900563,
		-0.274151, -0.859609, -0.431177,
		0.958970, -0.278035, -0.055431,
		28.811481, 37.860489, 33.300472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139164, 37.293404, 33.658211>,  <28.140202, 38.055115, 33.339272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139164, 37.293404, 33.658211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521872, 37.405373, 33.689789>,  <28.751497, 37.472553, 33.708736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521872, 37.405373, 33.689789>,  <28.139164, 37.293404, 33.658211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521872, 37.405373, 33.689789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024715, -0.348699, 0.936909,
		0.289790, -0.894456, -0.340544,
		0.956771, 0.279924, 0.078944,
		28.808903, 37.489349, 33.713470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501749, 36.739025, 34.018753>,  <28.139164, 37.293404, 33.658211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501749, 36.739025, 34.018753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725828, 37.068108, 34.057407>,  <28.860275, 37.265556, 34.080601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725828, 37.068108, 34.057407>,  <28.501749, 36.739025, 34.018753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725828, 37.068108, 34.057407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010734, -0.109446, 0.993935,
		0.828289, -0.557838, -0.052481,
		0.560198, 0.822702, 0.096640,
		28.893888, 37.314919, 34.086399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129395, 36.498493, 34.407555>,  <28.501749, 36.739025, 34.018753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129395, 36.498493, 34.407555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068275, 36.891113, 34.453541>,  <29.031605, 37.126686, 34.481133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068275, 36.891113, 34.453541>,  <29.129395, 36.498493, 34.407555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068275, 36.891113, 34.453541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089803, -0.102062, 0.990716,
		0.984169, 0.161704, -0.072551,
		-0.152798, 0.981547, 0.114968,
		29.022436, 37.185577, 34.488029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523766, 36.660145, 34.985336>,  <29.129395, 36.498493, 34.407555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523766, 36.660145, 34.985336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284758, 36.978966, 34.950287>,  <29.141354, 37.170258, 34.929256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284758, 36.978966, 34.950287>,  <29.523766, 36.660145, 34.985336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284758, 36.978966, 34.950287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147849, -0.002107, 0.989008,
		0.788107, 0.603906, 0.119102,
		-0.597519, 0.797053, -0.087627,
		29.105501, 37.218082, 34.924000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774641, 37.142361, 35.432308>,  <29.523766, 36.660145, 34.985336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774641, 37.142361, 35.432308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392075, 37.253941, 35.397770>,  <29.162535, 37.320889, 35.377048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392075, 37.253941, 35.397770>,  <29.774641, 37.142361, 35.432308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392075, 37.253941, 35.397770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001176, 0.292004, 0.956416,
		0.292004, 0.914834, -0.278949,
		-0.956416, 0.278949, -0.086342,
		29.105150, 37.337624, 35.371868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614107, 37.546387, 36.004444>,  <29.774641, 37.142361, 35.432308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614107, 37.546387, 36.004444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240034, 37.492306, 35.873508>,  <29.015591, 37.459858, 35.794945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240034, 37.492306, 35.873508>,  <29.614107, 37.546387, 36.004444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240034, 37.492306, 35.873508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325534, -0.035901, 0.944848,
		-0.139497, 0.990167, -0.010438,
		-0.935183, -0.135201, -0.327342,
		28.959478, 37.451744, 35.775307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181053, 38.052200, 36.440189>,  <29.614107, 37.546387, 36.004444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181053, 38.052200, 36.440189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915955, 37.794750, 36.287083>,  <28.756895, 37.640278, 36.195221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915955, 37.794750, 36.287083>,  <29.181053, 38.052200, 36.440189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915955, 37.794750, 36.287083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498004, -0.002904, 0.867170,
		-0.559247, 0.765333, -0.318605,
		-0.662748, -0.643628, -0.382763,
		28.717131, 37.601662, 36.172253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524279, 38.238098, 36.659321>,  <29.181053, 38.052200, 36.440189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524279, 38.238098, 36.659321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513983, 37.849087, 36.566772>,  <28.507805, 37.615681, 36.511242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513983, 37.849087, 36.566772>,  <28.524279, 38.238098, 36.659321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513983, 37.849087, 36.566772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468145, -0.192775, 0.862368,
		-0.883277, 0.130514, -0.450320,
		-0.025740, -0.972525, -0.231373,
		28.506260, 37.557331, 36.497360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824623, 38.043388, 36.638725>,  <28.524279, 38.238098, 36.659321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824623, 38.043388, 36.638725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053679, 37.723850, 36.712414>,  <28.191111, 37.532127, 36.756626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053679, 37.723850, 36.712414>,  <27.824623, 38.043388, 36.638725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053679, 37.723850, 36.712414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589454, -0.245028, 0.769744,
		-0.569764, -0.549375, -0.611192,
		0.572637, -0.798842, 0.184224,
		28.225470, 37.484200, 36.767681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388487, 37.676472, 36.875813>,  <27.824623, 38.043388, 36.638725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388487, 37.676472, 36.875813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722019, 37.474266, 36.964516>,  <27.922138, 37.352943, 37.017738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722019, 37.474266, 36.964516>,  <27.388487, 37.676472, 36.875813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722019, 37.474266, 36.964516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407439, -0.292545, 0.865108,
		-0.372455, -0.811705, -0.449902,
		0.833829, -0.505521, 0.221760,
		27.972168, 37.322609, 37.031044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094938, 37.097176, 37.220303>,  <27.388487, 37.676472, 36.875813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094938, 37.097176, 37.220303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476337, 37.120316, 37.338623>,  <27.705177, 37.134201, 37.409615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476337, 37.120316, 37.338623>,  <27.094938, 37.097176, 37.220303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476337, 37.120316, 37.338623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290964, -0.079434, 0.953431,
		0.078653, -0.995160, -0.058908,
		0.953496, 0.057850, 0.295803,
		27.762386, 37.137669, 37.427364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355919, 36.371437, 37.465374>,  <27.094938, 37.097176, 37.220303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355919, 36.371437, 37.465374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548815, 36.685402, 37.620995>,  <27.664553, 36.873779, 37.714367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548815, 36.685402, 37.620995>,  <27.355919, 36.371437, 37.465374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548815, 36.685402, 37.620995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469304, -0.143530, 0.871294,
		0.739729, -0.602754, 0.299146,
		0.482239, 0.784912, 0.389048,
		27.693487, 36.920876, 37.737709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627127, 35.818314, 37.823406>,  <27.355919, 36.371437, 37.465374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627127, 35.818314, 37.823406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340591, 35.539619, 37.808353>,  <27.168671, 35.372402, 37.799320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340591, 35.539619, 37.808353>,  <27.627127, 35.818314, 37.823406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340591, 35.539619, 37.808353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108017, -0.057451, -0.992488,
		0.689343, -0.715020, 0.116414,
		-0.716337, -0.696739, -0.037631,
		27.125690, 35.330597, 37.797066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947300, 35.426674, 37.251663>,  <27.627127, 35.818314, 37.823406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947300, 35.426674, 37.251663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586359, 35.257797, 37.286346>,  <27.369795, 35.156471, 37.307156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586359, 35.257797, 37.286346>,  <27.947300, 35.426674, 37.251663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586359, 35.257797, 37.286346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058029, -0.318350, -0.946195,
		0.427076, -0.848769, 0.311763,
		-0.902351, -0.422189, 0.086706,
		27.315653, 35.131142, 37.312359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982796, 34.711224, 37.099728>,  <27.947300, 35.426674, 37.251663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982796, 34.711224, 37.099728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601933, 34.826771, 37.059834>,  <27.373415, 34.896099, 37.035896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601933, 34.826771, 37.059834>,  <27.982796, 34.711224, 37.099728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601933, 34.826771, 37.059834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009852, -0.355215, -0.934733,
		-0.305437, -0.889033, 0.341068,
		-0.952161, 0.288862, -0.099737,
		27.316284, 34.913429, 37.029911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750410, 34.192265, 36.634968>,  <27.982796, 34.711224, 37.099728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750410, 34.192265, 36.634968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471825, 34.479290, 36.637554>,  <27.304672, 34.651505, 36.639107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471825, 34.479290, 36.637554>,  <27.750410, 34.192265, 36.634968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471825, 34.479290, 36.637554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094820, -0.083094, -0.992021,
		-0.711298, -0.691521, 0.125911,
		-0.696466, 0.717561, 0.006466,
		27.262884, 34.694557, 36.639492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197477, 33.941944, 36.127056>,  <27.750410, 34.192265, 36.634968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197477, 33.941944, 36.127056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172567, 34.339317, 36.165443>,  <27.157621, 34.577740, 36.188477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172567, 34.339317, 36.165443>,  <27.197477, 33.941944, 36.127056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172567, 34.339317, 36.165443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017287, 0.095069, -0.995321,
		-0.997909, -0.063641, 0.011253,
		-0.062274, 0.993434, 0.095970,
		27.153885, 34.637348, 36.194233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545303, 34.145935, 35.667606>,  <27.197477, 33.941944, 36.127056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545303, 34.145935, 35.667606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779490, 34.460194, 35.747593>,  <26.920000, 34.648750, 35.795586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779490, 34.460194, 35.747593>,  <26.545303, 34.145935, 35.667606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779490, 34.460194, 35.747593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026985, 0.227638, -0.973372,
		-0.810249, 0.575270, 0.112073,
		0.585464, 0.785649, 0.199967,
		26.955130, 34.695889, 35.807583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291124, 34.725418, 35.310478>,  <26.545303, 34.145935, 35.667606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291124, 34.725418, 35.310478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677977, 34.789978, 35.389072>,  <26.910088, 34.828712, 35.436230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677977, 34.789978, 35.389072>,  <26.291124, 34.725418, 35.310478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677977, 34.789978, 35.389072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179093, 0.116160, -0.976951,
		-0.180500, 0.980030, 0.083437,
		0.967133, 0.161396, 0.196483,
		26.968117, 34.838398, 35.448017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409096, 35.332500, 34.967823>,  <26.291124, 34.725418, 35.310478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409096, 35.332500, 34.967823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789663, 35.221142, 35.020432>,  <27.018003, 35.154327, 35.051994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789663, 35.221142, 35.020432>,  <26.409096, 35.332500, 34.967823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789663, 35.221142, 35.020432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214320, 0.292127, -0.932056,
		0.221063, 0.914962, 0.337601,
		0.951419, -0.278398, 0.131517,
		27.075089, 35.137623, 35.059887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869774, 35.878723, 34.576862>,  <26.409096, 35.332500, 34.967823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869774, 35.878723, 34.576862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079079, 35.538525, 34.598198>,  <27.204662, 35.334404, 34.611000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079079, 35.538525, 34.598198>,  <26.869774, 35.878723, 34.576862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079079, 35.538525, 34.598198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318610, 0.137197, -0.937905,
		0.790371, 0.507765, 0.342767,
		0.523262, -0.850501, 0.053343,
		27.236057, 35.283375, 34.614201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518133, 36.100807, 34.321064>,  <26.869774, 35.878723, 34.576862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518133, 36.100807, 34.321064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526775, 35.701267, 34.303959>,  <27.531960, 35.461544, 34.293697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526775, 35.701267, 34.303959>,  <27.518133, 36.100807, 34.321064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526775, 35.701267, 34.303959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557482, 0.047537, -0.828827,
		0.829908, -0.005931, 0.557869,
		0.021603, -0.998852, -0.042758,
		27.533257, 35.401611, 34.291130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107456, 35.942116, 33.897800>,  <27.518133, 36.100807, 34.321064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107456, 35.942116, 33.897800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924011, 35.589134, 33.855934>,  <27.813944, 35.377346, 33.830814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924011, 35.589134, 33.855934>,  <28.107456, 35.942116, 33.897800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924011, 35.589134, 33.855934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245587, -0.012667, -0.969292,
		0.854027, -0.470232, 0.222528,
		-0.458611, -0.882452, -0.104665,
		27.786428, 35.324398, 33.824535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597183, 35.517937, 33.516827>,  <28.107456, 35.942116, 33.897800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597183, 35.517937, 33.516827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244080, 35.337044, 33.465878>,  <28.032217, 35.228508, 33.435307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244080, 35.337044, 33.465878>,  <28.597183, 35.517937, 33.516827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244080, 35.337044, 33.465878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221919, -0.162383, -0.961449,
		0.414113, -0.876994, 0.243704,
		-0.882758, -0.452231, -0.127376,
		27.979252, 35.201374, 33.427666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746346, 35.037693, 32.920055>,  <28.597183, 35.517937, 33.516827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746346, 35.037693, 32.920055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346626, 35.022781, 32.921429>,  <28.106794, 35.013836, 32.922253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346626, 35.022781, 32.921429>,  <28.746346, 35.037693, 32.920055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346626, 35.022781, 32.921429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002908, -0.014222, -0.999895,
		0.037327, -0.999204, 0.014104,
		-0.999299, -0.037282, 0.003436,
		28.046837, 35.011597, 32.922459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510242, 34.460518, 32.530411>,  <28.746346, 35.037693, 32.920055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510242, 34.460518, 32.530411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208746, 34.723324, 32.536106>,  <28.027847, 34.881008, 32.539524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208746, 34.723324, 32.536106>,  <28.510242, 34.460518, 32.530411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208746, 34.723324, 32.536106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005367, 0.027816, -0.999599,
		-0.657149, -0.753363, -0.024492,
		-0.753741, 0.657017, 0.014236,
		27.982624, 34.920429, 32.540379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100771, 34.199585, 32.057724>,  <28.510242, 34.460518, 32.530411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100771, 34.199585, 32.057724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993090, 34.582409, 32.100739>,  <27.928482, 34.812103, 32.126549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993090, 34.582409, 32.100739>,  <28.100771, 34.199585, 32.057724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993090, 34.582409, 32.100739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030645, 0.103088, -0.994200,
		-0.962596, -0.270935, 0.001578,
		-0.269201, 0.957062, 0.107535,
		27.912329, 34.869526, 32.132999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475027, 34.254108, 31.646162>,  <28.100771, 34.199585, 32.057724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475027, 34.254108, 31.646162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593271, 34.632347, 31.700523>,  <27.664219, 34.859291, 31.733139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593271, 34.632347, 31.700523>,  <27.475027, 34.254108, 31.646162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593271, 34.632347, 31.700523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129100, 0.180498, -0.975066,
		-0.946545, 0.270696, 0.175433,
		0.295612, 0.945592, 0.135902,
		27.681955, 34.916023, 31.741295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977701, 34.671272, 31.263283>,  <27.475027, 34.254108, 31.646162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977701, 34.671272, 31.263283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287184, 34.918716, 31.317982>,  <27.472874, 35.067181, 31.350801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287184, 34.918716, 31.317982>,  <26.977701, 34.671272, 31.263283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287184, 34.918716, 31.317982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112402, 0.346459, -0.931307,
		-0.623492, 0.705188, 0.337590,
		0.773708, 0.618608, 0.136750,
		27.519297, 35.104298, 31.359007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763741, 35.419586, 30.982832>,  <26.977701, 34.671272, 31.263283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763741, 35.419586, 30.982832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163237, 35.401688, 30.991947>,  <27.402933, 35.390949, 30.997416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163237, 35.401688, 30.991947>,  <26.763741, 35.419586, 30.982832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163237, 35.401688, 30.991947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034752, 0.288363, -0.956890,
		0.036251, 0.956475, 0.289555,
		0.998738, -0.044751, 0.022786,
		27.462858, 35.388264, 30.998783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884655, 35.976173, 30.600933>,  <26.763741, 35.419586, 30.982832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884655, 35.976173, 30.600933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233656, 35.781712, 30.620506>,  <27.443056, 35.665035, 30.632250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233656, 35.781712, 30.620506>,  <26.884655, 35.976173, 30.600933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233656, 35.781712, 30.620506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164821, 0.198562, -0.966130,
		0.459976, 0.851014, 0.253375,
		0.872500, -0.486158, 0.048931,
		27.495405, 35.635864, 30.635185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369991, 36.382950, 30.274168>,  <26.884655, 35.976173, 30.600933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369991, 36.382950, 30.274168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474834, 35.997509, 30.253109>,  <27.537741, 35.766243, 30.240475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474834, 35.997509, 30.253109>,  <27.369991, 36.382950, 30.274168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474834, 35.997509, 30.253109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271642, 0.126017, -0.954113,
		0.926019, 0.235779, 0.294785,
		0.262107, -0.963602, -0.052647,
		27.553467, 35.708427, 30.237314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998398, 36.247250, 29.984951>,  <27.369991, 36.382950, 30.274168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998398, 36.247250, 29.984951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854729, 35.874710, 29.961025>,  <27.768526, 35.651184, 29.946671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854729, 35.874710, 29.961025>,  <27.998398, 36.247250, 29.984951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854729, 35.874710, 29.961025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160154, 0.001629, -0.987091,
		0.919426, -0.364118, 0.148575,
		-0.359175, -0.931352, -0.059813,
		27.746977, 35.595306, 29.943081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408058, 35.997612, 29.418547>,  <27.998398, 36.247250, 29.984951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408058, 35.997612, 29.418547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098076, 35.747356, 29.454376>,  <27.912086, 35.597202, 29.475874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098076, 35.747356, 29.454376>,  <28.408058, 35.997612, 29.418547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098076, 35.747356, 29.454376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042509, -0.089809, -0.995052,
		0.630587, -0.774927, 0.043003,
		-0.774954, -0.625638, 0.089573,
		27.865589, 35.559666, 29.481249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535191, 35.455444, 29.008669>,  <28.408058, 35.997612, 29.418547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535191, 35.455444, 29.008669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138647, 35.460026, 29.060940>,  <27.900721, 35.462772, 29.092302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138647, 35.460026, 29.060940>,  <28.535191, 35.455444, 29.008669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138647, 35.460026, 29.060940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131167, -0.073942, -0.988599,
		-0.001653, -0.997197, 0.074805,
		-0.991359, 0.011446, 0.130677,
		27.841240, 35.463463, 29.100143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338015, 34.905354, 28.718611>,  <28.535191, 35.455444, 29.008669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338015, 34.905354, 28.718611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014786, 35.140968, 28.721626>,  <27.820848, 35.282337, 28.723434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014786, 35.140968, 28.721626>,  <28.338015, 34.905354, 28.718611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014786, 35.140968, 28.721626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110933, -0.139593, -0.983975,
		-0.578545, -0.795958, 0.178145,
		-0.808071, 0.589037, 0.007537,
		27.772364, 35.317680, 28.723888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967579, 34.581406, 28.259401>,  <28.338015, 34.905354, 28.718611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967579, 34.581406, 28.259401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807428, 34.947342, 28.280441>,  <27.711338, 35.166904, 28.293066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807428, 34.947342, 28.280441>,  <27.967579, 34.581406, 28.259401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807428, 34.947342, 28.280441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148052, -0.007932, -0.988948,
		-0.904312, -0.403737, 0.138620,
		-0.400375, 0.914840, 0.052601,
		27.687315, 35.221794, 28.296221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415567, 34.610512, 27.755104>,  <27.967579, 34.581406, 28.259401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415567, 34.610512, 27.755104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480305, 35.001259, 27.811024>,  <27.519148, 35.235706, 27.844576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480305, 35.001259, 27.811024>,  <27.415567, 34.610512, 27.755104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480305, 35.001259, 27.811024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349477, 0.189224, -0.917638,
		-0.922861, 0.099659, 0.372016,
		0.161845, 0.976864, 0.139799,
		27.528858, 35.294319, 27.852962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858305, 34.939133, 27.340832>,  <27.415567, 34.610512, 27.755104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858305, 34.939133, 27.340832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136379, 35.219135, 27.406193>,  <27.303225, 35.387138, 27.445410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136379, 35.219135, 27.406193>,  <26.858305, 34.939133, 27.340832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136379, 35.219135, 27.406193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222279, 0.425517, -0.877227,
		-0.683599, 0.573516, 0.451412,
		0.695187, 0.700011, 0.163402,
		27.344934, 35.429138, 27.455214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564129, 35.468468, 27.075563>,  <26.858305, 34.939133, 27.340832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564129, 35.468468, 27.075563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955242, 35.552097, 27.081615>,  <27.189911, 35.602276, 27.085247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955242, 35.552097, 27.081615>,  <26.564129, 35.468468, 27.075563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955242, 35.552097, 27.081615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074085, 0.412197, -0.908078,
		-0.196092, 0.886782, 0.418528,
		0.977783, 0.209073, 0.015131,
		27.248577, 35.614819, 27.086155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.652237, 36.097084, 26.762989>,  <26.564129, 35.468468, 27.075563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.652237, 36.097084, 26.762989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003496, 35.917519, 26.696857>,  <27.214252, 35.809780, 26.657179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003496, 35.917519, 26.696857>,  <26.652237, 36.097084, 26.762989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003496, 35.917519, 26.696857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002809, 0.350426, -0.936586,
		0.478380, 0.821997, 0.308987,
		0.878148, -0.448912, -0.165328,
		27.266941, 35.782845, 26.647259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040968, 36.601631, 26.381470>,  <26.652237, 36.097084, 26.762989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040968, 36.601631, 26.381470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219671, 36.248798, 26.321690>,  <27.326893, 36.037098, 26.285822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219671, 36.248798, 26.321690>,  <27.040968, 36.601631, 26.381470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219671, 36.248798, 26.321690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060357, 0.196384, -0.978668,
		0.892617, 0.428207, 0.140976,
		0.446758, -0.882084, -0.149450,
		27.353699, 35.984173, 26.276855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460356, 36.739426, 25.912954>,  <27.040968, 36.601631, 26.381470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460356, 36.739426, 25.912954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496546, 36.343773, 25.866581>,  <27.518259, 36.106380, 25.838757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496546, 36.343773, 25.866581>,  <27.460356, 36.739426, 25.912954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496546, 36.343773, 25.866581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090180, 0.124068, -0.988168,
		0.991808, 0.078950, 0.100425,
		0.090475, -0.989128, -0.115931,
		27.523689, 36.047035, 25.831802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008926, 36.581757, 25.499672>,  <27.460356, 36.739426, 25.912954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008926, 36.581757, 25.499672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803665, 36.241310, 25.455353>,  <27.680508, 36.037041, 25.428761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803665, 36.241310, 25.455353>,  <28.008926, 36.581757, 25.499672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803665, 36.241310, 25.455353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142716, 0.042682, -0.988843,
		0.846348, -0.523242, 0.099565,
		-0.513154, -0.851115, -0.110799,
		27.649719, 35.985977, 25.422113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253845, 36.111305, 24.951214>,  <28.008926, 36.581757, 25.499672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253845, 36.111305, 24.951214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901445, 35.927097, 24.994598>,  <27.690006, 35.816574, 25.020630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901445, 35.927097, 24.994598>,  <28.253845, 36.111305, 24.951214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901445, 35.927097, 24.994598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082826, -0.075587, -0.993693,
		0.465814, -0.884425, 0.028449,
		-0.880998, -0.460520, 0.108463,
		27.637146, 35.788940, 25.027138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286024, 35.439014, 24.565971>,  <28.253845, 36.111305, 24.951214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286024, 35.439014, 24.565971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895805, 35.526180, 24.577442>,  <27.661674, 35.578480, 24.584324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895805, 35.526180, 24.577442>,  <28.286024, 35.439014, 24.565971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895805, 35.526180, 24.577442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091393, -0.283533, -0.954598,
		-0.199887, -0.933876, 0.296515,
		-0.975547, 0.217911, 0.028676,
		27.603142, 35.591553, 24.586044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926226, 34.823437, 24.352404>,  <28.286024, 35.439014, 24.565971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926226, 34.823437, 24.352404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650536, 35.105381, 24.285305>,  <27.485121, 35.274548, 24.245047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650536, 35.105381, 24.285305>,  <27.926226, 34.823437, 24.352404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650536, 35.105381, 24.285305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126937, -0.345408, -0.929828,
		-0.713340, -0.619569, 0.327537,
		-0.689226, 0.704860, -0.167747,
		27.443768, 35.316837, 24.234982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431206, 34.488964, 23.960323>,  <27.926226, 34.823437, 24.352404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431206, 34.488964, 23.960323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352747, 34.874321, 23.887211>,  <27.305672, 35.105534, 23.843344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352747, 34.874321, 23.887211>,  <27.431206, 34.488964, 23.960323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352747, 34.874321, 23.887211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075300, -0.200652, -0.976764,
		-0.977679, -0.177826, 0.111900,
		-0.196147, 0.963388, -0.182783,
		27.293903, 35.163338, 23.832376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773682, 34.502144, 23.649893>,  <27.431206, 34.488964, 23.960323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773682, 34.502144, 23.649893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978863, 34.831104, 23.551472>,  <27.101971, 35.028481, 23.492420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978863, 34.831104, 23.551472>,  <26.773682, 34.502144, 23.649893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978863, 34.831104, 23.551472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235463, -0.140841, -0.961624,
		-0.825493, 0.551202, 0.121400,
		0.512951, 0.822399, -0.246051,
		27.132748, 35.077824, 23.477657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571146, 34.580841, 23.035606>,  <26.773682, 34.502144, 23.649893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571146, 34.580841, 23.035606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839489, 34.875031, 22.997612>,  <27.000494, 35.051544, 22.974815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839489, 34.875031, 22.997612>,  <26.571146, 34.580841, 23.035606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839489, 34.875031, 22.997612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143177, 0.002777, -0.989693,
		-0.727633, 0.677543, 0.107166,
		0.670858, 0.735478, -0.094988,
		27.040747, 35.095673, 22.969116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291578, 35.063114, 22.563190>,  <26.571146, 34.580841, 23.035606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291578, 35.063114, 22.563190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690010, 35.093422, 22.581470>,  <26.929070, 35.111607, 22.592438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690010, 35.093422, 22.581470>,  <26.291578, 35.063114, 22.563190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690010, 35.093422, 22.581470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057002, -0.154447, -0.986355,
		-0.067677, 0.985092, -0.158160,
		0.996078, 0.075769, 0.045699,
		26.988832, 35.116154, 22.595181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445824, 35.395687, 22.000639>,  <26.291578, 35.063114, 22.563190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445824, 35.395687, 22.000639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775810, 35.190231, 22.094967>,  <26.973803, 35.066959, 22.151564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775810, 35.190231, 22.094967>,  <26.445824, 35.395687, 22.000639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775810, 35.190231, 22.094967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157143, -0.192338, -0.968665,
		0.542898, 0.836172, -0.077958,
		0.824965, -0.513636, 0.235818,
		27.023300, 35.036140, 22.165712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868761, 35.721428, 21.628979>,  <26.445824, 35.395687, 22.000639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868761, 35.721428, 21.628979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025080, 35.359459, 21.696388>,  <27.118870, 35.142277, 21.736834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025080, 35.359459, 21.696388>,  <26.868761, 35.721428, 21.628979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025080, 35.359459, 21.696388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255046, -0.069465, -0.964430,
		0.884438, 0.419877, 0.203649,
		0.390796, -0.904919, 0.168526,
		27.142319, 35.087982, 21.746946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990086, 35.343925, 20.971872>,  <26.868761, 35.721428, 21.628979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990086, 35.343925, 20.971872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005846, 35.722191, 20.842766>,  <27.015303, 35.949150, 20.765303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005846, 35.722191, 20.842766>,  <26.990086, 35.343925, 20.971872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005846, 35.722191, 20.842766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592206, -0.238074, -0.769813,
		-0.804823, 0.221473, 0.550645,
		0.039399, 0.945659, -0.322765,
		27.017666, 36.005890, 20.745935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261385, 35.611031, 20.825432>,  <26.990086, 35.343925, 20.971872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261385, 35.611031, 20.825432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510452, 35.817883, 20.590534>,  <26.659893, 35.941994, 20.449594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510452, 35.817883, 20.590534>,  <26.261385, 35.611031, 20.825432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510452, 35.817883, 20.590534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513335, -0.296455, -0.805358,
		-0.590571, 0.802924, 0.080870,
		0.622667, 0.517134, -0.587246,
		26.697252, 35.973022, 20.414360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908564, 35.778545, 20.285934>,  <26.261385, 35.611031, 20.825432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908564, 35.778545, 20.285934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277143, 35.839882, 20.143150>,  <26.498291, 35.876682, 20.057480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277143, 35.839882, 20.143150>,  <25.908564, 35.778545, 20.285934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277143, 35.839882, 20.143150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297037, -0.314140, -0.901713,
		-0.250402, 0.936912, -0.243916,
		0.921449, 0.153338, -0.356959,
		26.553577, 35.885883, 20.036062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930040, 36.548782, 20.317743>,  <25.908564, 35.778545, 20.285934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930040, 36.548782, 20.317743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842230, 36.900974, 20.485817>,  <25.789543, 37.112289, 20.586660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842230, 36.900974, 20.485817>,  <25.930040, 36.548782, 20.317743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842230, 36.900974, 20.485817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789640, 0.092577, -0.606546,
		-0.572953, -0.464948, 0.674943,
		-0.219528, 0.880485, 0.420184,
		25.776371, 37.165119, 20.611872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250145, 36.461895, 20.566872>,  <25.930040, 36.548782, 20.317743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.250145, 36.461895, 20.566872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332726, 36.842854, 20.477146>,  <25.382275, 37.071430, 20.423311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332726, 36.842854, 20.477146>,  <25.250145, 36.461895, 20.566872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.332726, 36.842854, 20.477146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688071, -0.021675, -0.725320,
		-0.695655, 0.304088, 0.650842,
		0.206453, 0.952398, -0.224312,
		25.394661, 37.128574, 20.409853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.587515, 36.873810, 20.606133>,  <25.250145, 36.461895, 20.566872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.587515, 36.873810, 20.606133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862005, 37.059292, 20.381966>,  <25.026699, 37.170582, 20.247465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862005, 37.059292, 20.381966>,  <24.587515, 36.873810, 20.606133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.862005, 37.059292, 20.381966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652068, 0.050750, -0.756460,
		-0.322334, 0.884534, 0.337193,
		0.686227, 0.463706, -0.560419,
		25.067873, 37.198402, 20.213840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418856, 37.144028, 19.963097>,  <24.587515, 36.873810, 20.606133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418856, 37.144028, 19.963097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.095308, 37.296730, 20.141979>,  <23.901180, 37.388351, 20.249310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.095308, 37.296730, 20.141979>,  <24.418856, 37.144028, 19.963097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.095308, 37.296730, 20.141979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054708, 0.806129, -0.589205,
		-0.585441, -0.452123, -0.672937,
		-0.808867, 0.381760, 0.447206,
		23.852648, 37.411259, 20.276140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.812164, 37.328949, 19.437136>,  <24.418856, 37.144028, 19.963097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.812164, 37.328949, 19.437136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.830164, 37.555874, 19.766045>,  <23.840963, 37.692028, 19.963390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.830164, 37.555874, 19.766045>,  <23.812164, 37.328949, 19.437136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.830164, 37.555874, 19.766045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069746, 0.819313, -0.569088,
		-0.996549, 0.082958, -0.002701,
		0.044997, 0.567313, 0.822272,
		23.843662, 37.726067, 20.012726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.320435, 37.857952, 19.344509>,  <23.812164, 37.328949, 19.437136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.320435, 37.857952, 19.344509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.599726, 37.982670, 19.602272>,  <23.767300, 38.057499, 19.756929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.599726, 37.982670, 19.602272>,  <23.320435, 37.857952, 19.344509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.599726, 37.982670, 19.602272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098482, 0.849774, -0.517867,
		-0.709071, 0.425051, 0.562628,
		0.698226, 0.311795, 0.644410,
		23.809193, 38.076210, 19.795595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.082693, 38.563862, 19.572271>,  <23.320435, 37.857952, 19.344509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.082693, 38.563862, 19.572271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.474192, 38.546234, 19.652386>,  <23.709091, 38.535656, 19.700455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.474192, 38.546234, 19.652386>,  <23.082693, 38.563862, 19.572271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.474192, 38.546234, 19.652386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088958, 0.971206, -0.221009,
		-0.184777, 0.234129, 0.954485,
		0.978746, -0.044072, 0.200284,
		23.767815, 38.533012, 19.712471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.271679, 39.145199, 19.908112>,  <23.082693, 38.563862, 19.572271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.271679, 39.145199, 19.908112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.646370, 39.041370, 19.814159>,  <23.871183, 38.979073, 19.757788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.646370, 39.041370, 19.814159>,  <23.271679, 39.145199, 19.908112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.646370, 39.041370, 19.814159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262793, 0.964684, -0.018041,
		0.231268, -0.044825, 0.971857,
		0.936725, -0.259569, -0.234881,
		23.927387, 38.963501, 19.743694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.812469, 39.633114, 20.176384>,  <23.271679, 39.145199, 19.908112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.812469, 39.633114, 20.176384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.009474, 39.447582, 19.881821>,  <24.127676, 39.336262, 19.705082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.009474, 39.447582, 19.881821>,  <23.812469, 39.633114, 20.176384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.009474, 39.447582, 19.881821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335845, 0.881899, -0.330852,
		0.802897, -0.084372, 0.590117,
		0.492509, -0.463828, -0.736410,
		24.157227, 39.308434, 19.660898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.586761, 39.985928, 20.169334>,  <23.812469, 39.633114, 20.176384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.586761, 39.985928, 20.169334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542465, 39.768303, 19.836651>,  <24.515888, 39.637730, 19.637041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542465, 39.768303, 19.836651>,  <24.586761, 39.985928, 20.169334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542465, 39.768303, 19.836651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373724, 0.752637, -0.542096,
		0.920906, -0.370860, 0.119982,
		-0.110739, -0.544059, -0.831707,
		24.509243, 39.605083, 19.587139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281103, 39.851982, 19.933596>,  <24.586761, 39.985928, 20.169334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281103, 39.851982, 19.933596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033340, 39.826756, 19.620583>,  <24.884684, 39.811619, 19.432774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033340, 39.826756, 19.620583>,  <25.281103, 39.851982, 19.933596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033340, 39.826756, 19.620583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542137, 0.686580, -0.484454,
		0.567824, -0.724314, -0.391083,
		-0.619407, -0.063064, -0.782533,
		24.847519, 39.807835, 19.385822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734324, 40.054146, 19.421560>,  <25.281103, 39.851982, 19.933596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734324, 40.054146, 19.421560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387703, 40.090267, 19.225220>,  <25.179731, 40.111938, 19.107416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387703, 40.090267, 19.225220>,  <25.734324, 40.054146, 19.421560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387703, 40.090267, 19.225220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348201, 0.813983, -0.464961,
		0.357556, -0.573827, -0.736801,
		-0.866551, 0.090305, -0.490851,
		25.127737, 40.117359, 19.077965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904593, 40.214859, 18.712515>,  <25.734324, 40.054146, 19.421560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904593, 40.214859, 18.712515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522573, 40.323357, 18.760365>,  <25.293362, 40.388454, 18.789074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522573, 40.323357, 18.760365>,  <25.904593, 40.214859, 18.712515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522573, 40.323357, 18.760365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181975, 0.854950, -0.485741,
		-0.234026, -0.442138, -0.865879,
		-0.955048, 0.271244, 0.119623,
		25.236059, 40.404732, 18.796251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726412, 40.359131, 18.066477>,  <25.904593, 40.214859, 18.712515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726412, 40.359131, 18.066477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489460, 40.554947, 18.322426>,  <25.347290, 40.672436, 18.475996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489460, 40.554947, 18.322426>,  <25.726412, 40.359131, 18.066477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489460, 40.554947, 18.322426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162351, 0.850465, -0.500352,
		-0.789133, -0.192513, -0.583273,
		-0.592378, 0.489539, 0.639875,
		25.311747, 40.701809, 18.514389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318758, 40.707832, 17.658314>,  <25.726412, 40.359131, 18.066477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318758, 40.707832, 17.658314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294361, 40.891403, 18.012863>,  <25.279722, 41.001545, 18.225594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294361, 40.891403, 18.012863>,  <25.318758, 40.707832, 17.658314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294361, 40.891403, 18.012863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223199, 0.871813, -0.436032,
		-0.972863, 0.171243, -0.155608,
		-0.060994, 0.458931, 0.886376,
		25.276062, 41.029083, 18.278776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819206, 41.234959, 17.631262>,  <25.318758, 40.707832, 17.658314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819206, 41.234959, 17.631262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073021, 41.329334, 17.925663>,  <25.225309, 41.385960, 18.102303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073021, 41.329334, 17.925663>,  <24.819206, 41.234959, 17.631262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.073021, 41.329334, 17.925663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161297, 0.890875, -0.424647,
		-0.755876, 0.388168, 0.527235,
		0.634535, 0.235939, 0.736001,
		25.263382, 41.400116, 18.146463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686905, 41.934734, 17.768143>,  <24.819206, 41.234959, 17.631262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686905, 41.934734, 17.768143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047163, 41.883282, 17.934174>,  <25.263319, 41.852409, 18.033792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047163, 41.883282, 17.934174>,  <24.686905, 41.934734, 17.768143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047163, 41.883282, 17.934174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247892, 0.936602, -0.247639,
		-0.356911, 0.325930, 0.875434,
		0.900646, -0.128628, 0.415079,
		25.317356, 41.844692, 18.058697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.785795, 42.533020, 18.205706>,  <24.686905, 41.934734, 17.768143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.785795, 42.533020, 18.205706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155802, 42.388050, 18.160110>,  <25.377806, 42.301067, 18.132753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155802, 42.388050, 18.160110>,  <24.785795, 42.533020, 18.205706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.155802, 42.388050, 18.160110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332919, 0.917778, -0.216446,
		0.183060, 0.162268, 0.969617,
		0.925016, -0.362427, -0.113987,
		25.433306, 42.279324, 18.125914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375843, 43.092247, 18.538767>,  <24.785795, 42.533020, 18.205706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375843, 43.092247, 18.538767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546457, 42.875233, 18.249294>,  <25.648827, 42.745022, 18.075611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546457, 42.875233, 18.249294>,  <25.375843, 43.092247, 18.538767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546457, 42.875233, 18.249294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627252, 0.753885, -0.195482,
		0.651630, -0.370551, 0.661869,
		0.426537, -0.542540, -0.723683,
		25.674417, 42.712471, 18.032190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163225, 43.304317, 18.552158>,  <25.375843, 43.092247, 18.538767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163225, 43.304317, 18.552158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082006, 43.103882, 18.215664>,  <26.033276, 42.983620, 18.013767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082006, 43.103882, 18.215664>,  <26.163225, 43.304317, 18.552158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082006, 43.103882, 18.215664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593417, 0.620411, -0.512783,
		0.778864, -0.603323, 0.171384,
		-0.203045, -0.501090, -0.841238,
		26.021093, 42.953556, 17.963293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763597, 43.299347, 18.241964>,  <26.163225, 43.304317, 18.552158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763597, 43.299347, 18.241964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522928, 43.209141, 17.935467>,  <26.378527, 43.155018, 17.751568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522928, 43.209141, 17.935467>,  <26.763597, 43.299347, 18.241964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522928, 43.209141, 17.935467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584317, 0.529780, -0.614741,
		0.544576, -0.817603, -0.186981,
		-0.601673, -0.225517, -0.766245,
		26.342426, 43.141487, 17.705593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111994, 43.000298, 17.639067>,  <26.763597, 43.299347, 18.241964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111994, 43.000298, 17.639067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780384, 43.166843, 17.489742>,  <26.581419, 43.266769, 17.400146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780384, 43.166843, 17.489742>,  <27.111994, 43.000298, 17.639067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780384, 43.166843, 17.489742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553963, 0.520199, -0.650013,
		-0.076444, -0.745678, -0.661906,
		-0.829024, 0.416362, -0.373312,
		26.531677, 43.291752, 17.377748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363522, 43.428036, 17.200663>,  <27.111994, 43.000298, 17.639067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363522, 43.428036, 17.200663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982519, 43.548397, 17.181965>,  <26.753918, 43.620613, 17.170746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982519, 43.548397, 17.181965>,  <27.363522, 43.428036, 17.200663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982519, 43.548397, 17.181965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252052, 0.692918, -0.675525,
		-0.170879, -0.655224, -0.735854,
		-0.952507, 0.300907, -0.046745,
		26.696768, 43.638668, 17.167942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246449, 43.404526, 16.625233>,  <27.363522, 43.428036, 17.200663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246449, 43.404526, 16.625233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986313, 43.674953, 16.763790>,  <26.830231, 43.837212, 16.846926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986313, 43.674953, 16.763790>,  <27.246449, 43.404526, 16.625233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986313, 43.674953, 16.763790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448995, 0.709919, -0.542603,
		-0.612750, -0.197346, -0.765240,
		-0.650339, 0.676069, 0.346396,
		26.791212, 43.877773, 16.867708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971968, 43.892269, 15.994164>,  <27.246449, 43.404526, 16.625233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971968, 43.892269, 15.994164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950029, 44.076809, 16.348373>,  <26.936867, 44.187531, 16.560900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950029, 44.076809, 16.348373>,  <26.971968, 43.892269, 15.994164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950029, 44.076809, 16.348373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372146, 0.832404, -0.410623,
		-0.926552, 0.307024, -0.217341,
		-0.054845, 0.461346, 0.885524,
		26.933577, 44.215214, 16.614031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461527, 44.442917, 16.020962>,  <26.971968, 43.892269, 15.994164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461527, 44.442917, 16.020962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785595, 44.485264, 16.251583>,  <26.980036, 44.510674, 16.389956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785595, 44.485264, 16.251583>,  <26.461527, 44.442917, 16.020962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785595, 44.485264, 16.251583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275869, 0.798974, -0.534357,
		-0.517223, 0.591973, 0.618100,
		0.810171, 0.105867, 0.576555,
		27.028646, 44.517025, 16.424549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384882, 45.044983, 16.160320>,  <26.461527, 44.442917, 16.020962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384882, 45.044983, 16.160320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770262, 44.992451, 16.253719>,  <27.001490, 44.960934, 16.309759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770262, 44.992451, 16.253719>,  <26.384882, 45.044983, 16.160320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770262, 44.992451, 16.253719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197661, 0.936796, -0.288694,
		-0.180826, 0.324295, 0.928512,
		0.963448, -0.131328, 0.233498,
		27.059296, 44.953053, 16.323769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784861, 45.582714, 16.239647>,  <26.384882, 45.044983, 16.160320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784861, 45.582714, 16.239647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410107, 45.668392, 16.129105>,  <25.185255, 45.719799, 16.062778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410107, 45.668392, 16.129105>,  <25.784861, 45.582714, 16.239647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410107, 45.668392, 16.129105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337345, -0.761532, 0.553414,
		-0.091917, 0.611711, 0.785723,
		-0.936883, 0.214191, -0.276355,
		25.129042, 45.732651, 16.046198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.368931, 45.706486, 16.887787>,  <25.784861, 45.582714, 16.239647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.368931, 45.706486, 16.887787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143200, 45.564526, 16.589638>,  <25.007761, 45.479347, 16.410748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143200, 45.564526, 16.589638>,  <25.368931, 45.706486, 16.887787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143200, 45.564526, 16.589638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411680, -0.661627, 0.626713,
		-0.715581, 0.660525, 0.227267,
		-0.564325, -0.354902, -0.745373,
		24.973902, 45.458054, 16.366026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591633, 45.606159, 17.053347>,  <25.368931, 45.706486, 16.887787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.591633, 45.606159, 17.053347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.725140, 45.345402, 16.780983>,  <24.805244, 45.188946, 16.617565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.725140, 45.345402, 16.780983>,  <24.591633, 45.606159, 17.053347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.725140, 45.345402, 16.780983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244840, -0.757490, 0.605196,
		-0.910304, -0.035281, -0.412434,
		0.333766, -0.651893, -0.680908,
		24.825270, 45.149834, 16.576712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.216421, 46.190300, 17.320755>,  <24.591633, 45.606159, 17.053347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.216421, 46.190300, 17.320755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.947041, 46.447971, 17.175705>,  <23.785412, 46.602573, 17.088675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.947041, 46.447971, 17.175705>,  <24.216421, 46.190300, 17.320755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.947041, 46.447971, 17.175705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686628, -0.726832, -0.016001,
		-0.273874, 0.238212, 0.931798,
		-0.673450, 0.644182, -0.362623,
		23.745007, 46.641224, 17.066917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.765383, 46.588337, 17.793800>,  <24.216421, 46.190300, 17.320755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.765383, 46.588337, 17.793800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.618488, 46.404842, 17.470146>,  <23.530352, 46.294746, 17.275953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.618488, 46.404842, 17.470146>,  <23.765383, 46.588337, 17.793800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.618488, 46.404842, 17.470146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469539, -0.659507, 0.587013,
		-0.802914, 0.595493, 0.026800,
		-0.367237, -0.458736, -0.809134,
		23.508318, 46.267220, 17.227406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.000763, 46.739868, 17.670418>,  <23.765383, 46.588337, 17.793800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.000763, 46.739868, 17.670418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.175869, 46.397495, 17.560333>,  <23.280933, 46.192070, 17.494282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.175869, 46.397495, 17.560333>,  <23.000763, 46.739868, 17.670418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.175869, 46.397495, 17.560333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595735, -0.505403, 0.624233,
		-0.673395, -0.109313, -0.731157,
		0.437766, -0.855931, -0.275214,
		23.307199, 46.140717, 17.477770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.603567, 46.164391, 17.903284>,  <23.000763, 46.739868, 17.670418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.603567, 46.164391, 17.903284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.896139, 45.927914, 17.767342>,  <23.071682, 45.786026, 17.685776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.896139, 45.927914, 17.767342>,  <22.603567, 46.164391, 17.903284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.896139, 45.927914, 17.767342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433526, -0.787840, 0.437451,
		-0.526371, -0.172626, -0.832546,
		0.731429, -0.591192, -0.339858,
		23.115568, 45.750557, 17.665384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.365593, 45.541534, 17.540243>,  <22.603567, 46.164391, 17.903284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.365593, 45.541534, 17.540243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.742054, 45.431149, 17.618298>,  <22.967930, 45.364918, 17.665131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.742054, 45.431149, 17.618298>,  <22.365593, 45.541534, 17.540243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.742054, 45.431149, 17.618298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331977, -0.863166, 0.380443,
		0.063448, -0.422835, -0.903983,
		0.941152, -0.275963, 0.195137,
		23.024399, 45.348358, 17.676838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.436390, 44.804707, 17.375391>,  <22.365593, 45.541534, 17.540243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.436390, 44.804707, 17.375391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.732672, 44.892033, 17.629539>,  <22.910440, 44.944427, 17.782028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.732672, 44.892033, 17.629539>,  <22.436390, 44.804707, 17.375391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.732672, 44.892033, 17.629539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152746, -0.866236, 0.475715,
		0.654237, -0.449414, -0.608277,
		0.740704, 0.218319, 0.635370,
		22.954884, 44.957527, 17.820150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.705624, 44.117039, 17.458349>,  <22.436390, 44.804707, 17.375391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.705624, 44.117039, 17.458349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.835709, 44.324345, 17.774738>,  <22.913759, 44.448730, 17.964571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.835709, 44.324345, 17.774738>,  <22.705624, 44.117039, 17.458349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.835709, 44.324345, 17.774738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065678, -0.822040, 0.565629,
		0.943357, -0.235899, -0.233299,
		0.325213, 0.518268, 0.790971,
		22.933273, 44.479824, 18.012030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.200411, 43.741440, 17.801180>,  <22.705624, 44.117039, 17.458349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.200411, 43.741440, 17.801180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.101713, 43.996342, 18.093212>,  <23.042494, 44.149284, 18.268431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.101713, 43.996342, 18.093212>,  <23.200411, 43.741440, 17.801180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.101713, 43.996342, 18.093212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036980, -0.746635, 0.664205,
		0.968374, 0.190888, 0.160663,
		-0.246745, 0.637258, 0.730081,
		23.027689, 44.187519, 18.312237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.593689, 43.613388, 18.360962>,  <23.200411, 43.741440, 17.801180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.593689, 43.613388, 18.360962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.258904, 43.786777, 18.494583>,  <23.058033, 43.890812, 18.574757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.258904, 43.786777, 18.494583>,  <23.593689, 43.613388, 18.360962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.258904, 43.786777, 18.494583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140850, -0.760475, 0.633908,
		0.528821, 0.483507, 0.697545,
		-0.836964, 0.433473, 0.334054,
		23.007814, 43.916821, 18.594799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.584682, 43.518559, 19.100061>,  <23.593689, 43.613388, 18.360962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.584682, 43.518559, 19.100061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.209826, 43.587688, 18.978802>,  <22.984911, 43.629166, 18.906046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.209826, 43.587688, 18.978802>,  <23.584682, 43.518559, 19.100061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.209826, 43.587688, 18.978802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335269, -0.686824, 0.644878,
		-0.096762, 0.705978, 0.701592,
		-0.937140, 0.172823, -0.303151,
		22.928684, 43.639534, 18.887856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.208624, 43.417976, 19.664238>,  <23.584682, 43.518559, 19.100061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.208624, 43.417976, 19.664238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.883099, 43.403309, 19.432251>,  <22.687782, 43.394508, 19.293058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.883099, 43.403309, 19.432251>,  <23.208624, 43.417976, 19.664238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.883099, 43.403309, 19.432251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422364, -0.648153, 0.633645,
		-0.399142, 0.760627, 0.511989,
		-0.813815, -0.036669, -0.579967,
		22.638954, 43.392307, 19.258261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.569433, 43.597977, 20.035593>,  <23.208624, 43.417976, 19.664238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.569433, 43.597977, 20.035593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.502460, 43.350765, 19.728344>,  <22.462276, 43.202438, 19.543995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.502460, 43.350765, 19.728344>,  <22.569433, 43.597977, 20.035593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.502460, 43.350765, 19.728344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337080, -0.696280, 0.633697,
		-0.926468, 0.365020, -0.091743,
		-0.167433, -0.618025, -0.768122,
		22.452230, 43.165359, 19.497908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.902134, 43.310608, 20.173512>,  <22.569433, 43.597977, 20.035593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.902134, 43.310608, 20.173512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067205, 43.073708, 19.896690>,  <22.166248, 42.931568, 19.730598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067205, 43.073708, 19.896690>,  <21.902134, 43.310608, 20.173512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.067205, 43.073708, 19.896690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440485, -0.794778, 0.417494,
		-0.797276, 0.132529, -0.588887,
		0.412704, -0.592253, -0.692034,
		22.191010, 42.896030, 19.689075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.492836, 42.680687, 20.154119>,  <21.902134, 43.310608, 20.173512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.492836, 42.680687, 20.154119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802275, 42.550217, 19.936806>,  <21.987938, 42.471935, 19.806417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802275, 42.550217, 19.936806>,  <21.492836, 42.680687, 20.154119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.802275, 42.550217, 19.936806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171134, -0.933033, 0.316484,
		-0.610132, -0.151857, -0.777611,
		0.773597, -0.326173, -0.543285,
		22.034353, 42.452366, 19.773821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243370, 42.088703, 19.767862>,  <21.492836, 42.680687, 20.154119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243370, 42.088703, 19.767862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.640106, 42.037815, 19.764622>,  <21.878147, 42.007282, 19.762678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.640106, 42.037815, 19.764622>,  <21.243370, 42.088703, 19.767862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.640106, 42.037815, 19.764622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124185, -0.978594, 0.164108,
		-0.028807, -0.161762, -0.986409,
		0.991841, -0.127225, -0.008102,
		21.937658, 41.999649, 19.762192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.291492, 41.418808, 19.483273>,  <21.243370, 42.088703, 19.767862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.291492, 41.418808, 19.483273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.625784, 41.483593, 19.693157>,  <21.826359, 41.522465, 19.819088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.625784, 41.483593, 19.693157>,  <21.291492, 41.418808, 19.483273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.625784, 41.483593, 19.693157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071511, -0.979478, 0.188439,
		0.544464, -0.119961, -0.830162,
		0.835730, 0.161964, 0.524712,
		21.876503, 41.532181, 19.850571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.739017, 40.832878, 19.355761>,  <21.291492, 41.418808, 19.483273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.739017, 40.832878, 19.355761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.892227, 40.985859, 19.692101>,  <21.984154, 41.077648, 19.893904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.892227, 40.985859, 19.692101>,  <21.739017, 40.832878, 19.355761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.892227, 40.985859, 19.692101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149722, -0.923933, 0.352039,
		0.911524, -0.008946, -0.411149,
		0.383024, 0.382450, 0.840848,
		22.007133, 41.100594, 19.944355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.302557, 40.456406, 19.538143>,  <21.739017, 40.832878, 19.355761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.302557, 40.456406, 19.538143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.239624, 40.660244, 19.876507>,  <22.201864, 40.782547, 20.079525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.239624, 40.660244, 19.876507>,  <22.302557, 40.456406, 19.538143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.239624, 40.660244, 19.876507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101858, -0.843634, 0.527169,
		0.982279, 0.169103, 0.080823,
		-0.157331, 0.509594, 0.845908,
		22.192425, 40.813122, 20.130280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.739685, 40.104210, 20.044029>,  <22.302557, 40.456406, 19.538143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.739685, 40.104210, 20.044029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478090, 40.300640, 20.274208>,  <22.321133, 40.418499, 20.412315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478090, 40.300640, 20.274208>,  <22.739685, 40.104210, 20.044029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.478090, 40.300640, 20.274208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010396, -0.766428, 0.642246,
		0.756434, 0.414039, 0.506340,
		-0.653988, 0.491080, 0.575448,
		22.281895, 40.447964, 20.446842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.999767, 40.034313, 20.720766>,  <22.739685, 40.104210, 20.044029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.999767, 40.034313, 20.720766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.607864, 40.107044, 20.754276>,  <22.372723, 40.150684, 20.774382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.607864, 40.107044, 20.754276>,  <22.999767, 40.034313, 20.720766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.607864, 40.107044, 20.754276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099261, -0.804601, 0.585461,
		0.173859, 0.565293, 0.806360,
		-0.979755, 0.181827, 0.083775,
		22.313938, 40.161591, 20.779409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.826504, 39.737408, 21.307547>,  <22.999767, 40.034313, 20.720766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.826504, 39.737408, 21.307547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.454166, 39.834690, 21.198452>,  <22.230764, 39.893059, 21.132996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.454166, 39.834690, 21.198452>,  <22.826504, 39.737408, 21.307547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.454166, 39.834690, 21.198452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364085, -0.681071, 0.635283,
		-0.031249, 0.690647, 0.722516,
		-0.930841, 0.243205, -0.272737,
		22.174913, 39.907650, 21.116631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.428623, 39.988075, 21.991657>,  <22.826504, 39.737408, 21.307547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.428623, 39.988075, 21.991657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.210930, 39.846302, 21.687504>,  <22.080313, 39.761238, 21.505011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.210930, 39.846302, 21.687504>,  <22.428623, 39.988075, 21.991657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.210930, 39.846302, 21.687504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259521, -0.790788, 0.554350,
		-0.797782, 0.499033, 0.338393,
		-0.544235, -0.354431, -0.760386,
		22.047659, 39.739971, 21.459389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.975061, 39.669674, 22.323238>,  <22.428623, 39.988075, 21.991657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.975061, 39.669674, 22.323238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.901644, 39.514713, 21.961857>,  <21.857594, 39.421738, 21.745028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.901644, 39.514713, 21.961857>,  <21.975061, 39.669674, 22.323238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.901644, 39.514713, 21.961857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127732, -0.901878, 0.412675,
		-0.974677, 0.191145, 0.116052,
		-0.183545, -0.387402, -0.903455,
		21.846581, 39.398491, 21.690821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331652, 39.199371, 22.419449>,  <21.975061, 39.669674, 22.323238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331652, 39.199371, 22.419449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.501837, 39.059887, 22.085411>,  <21.603947, 38.976196, 21.884989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.501837, 39.059887, 22.085411>,  <21.331652, 39.199371, 22.419449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.501837, 39.059887, 22.085411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064452, -0.908761, 0.412309,
		-0.902681, -0.229244, -0.364163,
		0.425456, -0.348713, -0.835097,
		21.629475, 38.955273, 21.834883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.984858, 38.618683, 22.094059>,  <21.331652, 39.199371, 22.419449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.984858, 38.618683, 22.094059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.373018, 38.584053, 22.003883>,  <21.605915, 38.563274, 21.949778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.373018, 38.584053, 22.003883>,  <20.984858, 38.618683, 22.094059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.373018, 38.584053, 22.003883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025969, -0.890712, 0.453826,
		-0.240091, -0.446248, -0.862101,
		0.970403, -0.086572, -0.225441,
		21.664139, 38.558083, 21.936251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.757381, 37.909988, 22.357817>,  <20.984858, 38.618683, 22.094059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.757381, 37.909988, 22.357817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.436234, 37.768265, 22.549595>,  <20.243546, 37.683231, 22.664661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.436234, 37.768265, 22.549595>,  <20.757381, 37.909988, 22.357817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.436234, 37.768265, 22.549595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378215, 0.924380, 0.049761,
		-0.460818, -0.141381, -0.876161,
		-0.802870, -0.354308, 0.479443,
		20.195372, 37.661972, 22.693428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172983, 38.187725, 22.028614>,  <20.757381, 37.909988, 22.357817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172983, 38.187725, 22.028614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.023117, 38.091366, 22.386742>,  <19.933197, 38.033550, 22.601618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.023117, 38.091366, 22.386742>,  <20.172983, 38.187725, 22.028614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.023117, 38.091366, 22.386742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477600, 0.877826, 0.036325,
		-0.794684, -0.413995, -0.443943,
		-0.374666, -0.240894, 0.895319,
		19.910717, 38.019096, 22.655336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.450558, 38.291603, 22.126024>,  <20.172983, 38.187725, 22.028614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.450558, 38.291603, 22.126024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.581070, 38.325191, 22.502640>,  <19.659376, 38.345345, 22.728609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.581070, 38.325191, 22.502640>,  <19.450558, 38.291603, 22.126024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.581070, 38.325191, 22.502640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605844, 0.783149, 0.140106,
		-0.725600, -0.616138, 0.306397,
		0.326279, 0.083968, 0.941537,
		19.678953, 38.350380, 22.785101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.927103, 38.110729, 22.793032>,  <19.450558, 38.291603, 22.126024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.927103, 38.110729, 22.793032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.213812, 38.389591, 22.798866>,  <19.385838, 38.556908, 22.802366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.213812, 38.389591, 22.798866>,  <18.927103, 38.110729, 22.793032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.213812, 38.389591, 22.798866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696336, 0.716722, -0.037772,
		-0.036787, 0.016917, 0.999180,
		0.716773, 0.697154, 0.014586,
		19.428844, 38.598736, 22.803242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.867407, 37.707298, 23.277086>,  <18.927103, 38.110729, 22.793032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.867407, 37.707298, 23.277086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.514742, 37.578106, 23.139477>,  <18.303143, 37.500591, 23.056911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.514742, 37.578106, 23.139477>,  <18.867407, 37.707298, 23.277086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.514742, 37.578106, 23.139477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306412, -0.162578, 0.937913,
		-0.358861, 0.932336, 0.044373,
		-0.881664, -0.322984, -0.344021,
		18.250242, 37.481213, 23.036270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.742786, 31.852999, 32.447147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.134943, 31.784531, 32.486198>,  <30.370237, 31.743450, 32.509628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.134943, 31.784531, 32.486198>,  <29.742786, 31.852999, 32.447147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134943, 31.784531, 32.486198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147226, 0.306976, -0.940261,
		0.130974, 0.936198, 0.326158,
		0.980393, -0.171169, 0.097626,
		30.429060, 31.733179, 32.515488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137583, 32.489048, 32.161041>,  <29.742786, 31.852999, 32.447147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137583, 32.489048, 32.161041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.392410, 32.180748, 32.157364>,  <30.545307, 31.995768, 32.155159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.392410, 32.180748, 32.157364>,  <30.137583, 32.489048, 32.161041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392410, 32.180748, 32.157364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294114, 0.254090, -0.921377,
		0.712488, 0.584278, 0.388562,
		0.637069, -0.770752, -0.009192,
		30.583530, 31.949522, 32.154606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633059, 32.708878, 31.741806>,  <30.137583, 32.489048, 32.161041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633059, 32.708878, 31.741806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.727474, 32.320599, 31.759827>,  <30.784124, 32.087631, 31.770639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.727474, 32.320599, 31.759827>,  <30.633059, 32.708878, 31.741806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727474, 32.320599, 31.759827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396427, 0.053862, -0.916485,
		0.887204, 0.234186, 0.397524,
		0.236039, -0.970698, 0.045052,
		30.798286, 32.029388, 31.773342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399982, 32.625938, 31.608967>,  <30.633059, 32.708878, 31.741806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399982, 32.625938, 31.608967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.272074, 32.260624, 31.508045>,  <31.195328, 32.041435, 31.447493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.272074, 32.260624, 31.508045>,  <31.399982, 32.625938, 31.608967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272074, 32.260624, 31.508045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415475, 0.104161, -0.903621,
		0.851543, -0.393780, 0.346139,
		-0.319774, -0.913284, -0.252303,
		31.176142, 31.986639, 31.432354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979012, 32.300552, 31.253693>,  <31.399982, 32.625938, 31.608967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979012, 32.300552, 31.253693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.672953, 32.068031, 31.142960>,  <31.489317, 31.928518, 31.076519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.672953, 32.068031, 31.142960>,  <31.979012, 32.300552, 31.253693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672953, 32.068031, 31.142960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437636, -0.154181, -0.885835,
		0.472257, -0.798945, 0.372371,
		-0.765146, -0.581304, -0.276834,
		31.443409, 31.893641, 31.059910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273689, 31.727276, 30.833065>,  <31.979012, 32.300552, 31.253693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273689, 31.727276, 30.833065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.886259, 31.772278, 30.744335>,  <31.653801, 31.799280, 30.691097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.886259, 31.772278, 30.744335>,  <32.273689, 31.727276, 30.833065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886259, 31.772278, 30.744335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213456, -0.081804, -0.973522,
		-0.127678, -0.990277, 0.055217,
		-0.968573, 0.112511, -0.221826,
		31.595686, 31.806030, 30.677788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212757, 31.300945, 30.282076>,  <32.273689, 31.727276, 30.833065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212757, 31.300945, 30.282076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929598, 31.582600, 30.259907>,  <31.759701, 31.751593, 30.246605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929598, 31.582600, 30.259907>,  <32.212757, 31.300945, 30.282076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929598, 31.582600, 30.259907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227757, 0.153288, -0.961577,
		-0.668583, -0.693324, -0.268884,
		-0.707901, 0.704134, -0.055424,
		31.717228, 31.793840, 30.243280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741041, 31.148920, 29.733635>,  <32.212757, 31.300945, 30.282076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741041, 31.148920, 29.733635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.703829, 31.545719, 29.767788>,  <31.681501, 31.783798, 29.788280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.703829, 31.545719, 29.767788>,  <31.741041, 31.148920, 29.733635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703829, 31.545719, 29.767788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245784, 0.105983, -0.963513,
		-0.964850, -0.068649, -0.253676,
		-0.093030, 0.991995, 0.085385,
		31.675920, 31.843317, 29.793404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428062, 31.274488, 29.111950>,  <31.741041, 31.148920, 29.733635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428062, 31.274488, 29.111950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.528505, 31.646740, 29.218437>,  <31.588772, 31.870090, 29.282330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.528505, 31.646740, 29.218437>,  <31.428062, 31.274488, 29.111950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528505, 31.646740, 29.218437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071321, 0.292071, -0.953734,
		-0.965328, 0.220505, 0.139715,
		0.251109, 0.930630, 0.266218,
		31.603838, 31.925928, 29.298302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928230, 31.759951, 28.876934>,  <31.428062, 31.274488, 29.111950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928230, 31.759951, 28.876934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.236330, 32.010929, 28.922581>,  <31.421190, 32.161518, 28.949968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.236330, 32.010929, 28.922581>,  <30.928230, 31.759951, 28.876934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236330, 32.010929, 28.922581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184279, 0.390282, -0.902065,
		-0.610535, 0.673788, 0.416241,
		0.770252, 0.627447, 0.114116,
		31.467405, 32.199162, 28.956816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791594, 32.351902, 28.557192>,  <30.928230, 31.759951, 28.876934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791594, 32.351902, 28.557192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.191126, 32.356033, 28.576077>,  <31.430845, 32.358513, 28.587406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.191126, 32.356033, 28.576077>,  <30.791594, 32.351902, 28.557192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191126, 32.356033, 28.576077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041172, 0.329669, -0.943198,
		-0.025305, 0.944040, 0.328858,
		0.998832, 0.010328, 0.047210,
		31.490776, 32.359131, 28.590240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990292, 32.969494, 28.392956>,  <30.791594, 32.351902, 28.557192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990292, 32.969494, 28.392956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.311335, 32.744446, 28.313679>,  <31.503960, 32.609417, 28.266113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.311335, 32.744446, 28.313679>,  <30.990292, 32.969494, 28.392956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311335, 32.744446, 28.313679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171855, 0.536262, -0.826371,
		0.571215, 0.629192, 0.527098,
		0.802608, -0.562619, -0.198191,
		31.552116, 32.575661, 28.254221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447929, 33.399433, 28.077820>,  <30.990292, 32.969494, 28.392956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447929, 33.399433, 28.077820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.611179, 33.052765, 27.963058>,  <31.709129, 32.844765, 27.894201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.611179, 33.052765, 27.963058>,  <31.447929, 33.399433, 28.077820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611179, 33.052765, 27.963058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223436, 0.399538, -0.889070,
		0.885161, 0.298747, 0.356708,
		0.408126, -0.866671, -0.286905,
		31.733618, 32.792763, 27.876987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058891, 33.557049, 27.782787>,  <31.447929, 33.399433, 28.077820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058891, 33.557049, 27.782787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.994696, 33.197540, 27.619591>,  <31.956177, 32.981834, 27.521673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.994696, 33.197540, 27.619591>,  <32.058891, 33.557049, 27.782787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994696, 33.197540, 27.619591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199783, 0.375216, -0.905152,
		0.966607, -0.226781, 0.119339,
		-0.160494, -0.898768, -0.407993,
		31.946548, 32.927910, 27.497192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580894, 33.452827, 27.249750>,  <32.058891, 33.557049, 27.782787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580894, 33.452827, 27.249750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.283081, 33.204227, 27.152256>,  <32.104393, 33.055069, 27.093760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.283081, 33.204227, 27.152256>,  <32.580894, 33.452827, 27.249750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283081, 33.204227, 27.152256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187915, 0.155227, -0.969842,
		0.640589, -0.767883, 0.001217,
		-0.744537, -0.621498, -0.243734,
		32.059719, 33.017776, 27.079136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839615, 33.062134, 26.656919>,  <32.580894, 33.452827, 27.249750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839615, 33.062134, 26.656919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448528, 32.984234, 26.625565>,  <32.213875, 32.937492, 26.606752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448528, 32.984234, 26.625565>,  <32.839615, 33.062134, 26.656919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448528, 32.984234, 26.625565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034434, 0.219557, -0.974992,
		0.207081, -0.955966, -0.207959,
		-0.977718, -0.194741, -0.078384,
		32.155212, 32.925808, 26.602049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746056, 32.576363, 26.156639>,  <32.839615, 33.062134, 26.656919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746056, 32.576363, 26.156639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.383892, 32.744938, 26.177132>,  <32.166595, 32.846085, 26.189426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.383892, 32.744938, 26.177132>,  <32.746056, 32.576363, 26.156639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383892, 32.744938, 26.177132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006549, 0.106794, -0.994260,
		-0.424494, -0.900545, -0.093933,
		-0.905407, 0.421442, 0.051231,
		32.112270, 32.871372, 26.192501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340565, 32.172451, 25.735277>,  <32.746056, 32.576363, 26.156639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340565, 32.172451, 25.735277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.167484, 32.531242, 25.771515>,  <32.063637, 32.746517, 25.793257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.167484, 32.531242, 25.771515>,  <32.340565, 32.172451, 25.735277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167484, 32.531242, 25.771515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001424, 0.101166, -0.994868,
		-0.901538, -0.430348, -0.045052,
		-0.432697, 0.896976, 0.090593,
		32.037674, 32.800335, 25.798693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025269, 32.217575, 25.102879>,  <32.340565, 32.172451, 25.735277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025269, 32.217575, 25.102879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.964220, 32.595589, 25.218540>,  <31.927591, 32.822399, 25.287937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.964220, 32.595589, 25.218540>,  <32.025269, 32.217575, 25.102879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964220, 32.595589, 25.218540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061907, 0.282863, -0.957160,
		-0.986344, -0.163983, 0.015333,
		-0.152621, 0.945038, 0.289152,
		31.918434, 32.879101, 25.305286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487745, 32.464672, 24.616537>,  <32.025269, 32.217575, 25.102879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487745, 32.464672, 24.616537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.646980, 32.802216, 24.760437>,  <31.742521, 33.004742, 24.846777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.646980, 32.802216, 24.760437>,  <31.487745, 32.464672, 24.616537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646980, 32.802216, 24.760437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029522, 0.403746, -0.914394,
		-0.916872, 0.353390, 0.185639,
		0.398089, 0.843863, 0.359751,
		31.766407, 33.055374, 24.868362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047094, 33.015987, 24.514727>,  <31.487745, 32.464672, 24.616537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047094, 33.015987, 24.514727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.423403, 33.151596, 24.516319>,  <31.649187, 33.232960, 24.517275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.423403, 33.151596, 24.516319>,  <31.047094, 33.015987, 24.514727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423403, 33.151596, 24.516319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155135, 0.440870, -0.884063,
		-0.301472, 0.831082, 0.467351,
		0.940770, 0.339022, 0.003980,
		31.705633, 33.253304, 24.517513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980907, 33.689461, 24.342449>,  <31.047094, 33.015987, 24.514727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980907, 33.689461, 24.342449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.358603, 33.601135, 24.244751>,  <31.585220, 33.548141, 24.186132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.358603, 33.601135, 24.244751>,  <30.980907, 33.689461, 24.342449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358603, 33.601135, 24.244751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069822, 0.590652, -0.803900,
		0.321774, 0.776127, 0.542299,
		0.944239, -0.220809, -0.244247,
		31.641874, 33.534893, 24.171476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269842, 33.500149, 23.980724>,  <30.980907, 33.689461, 24.342449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269842, 33.500149, 23.980724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.899698, 33.499874, 23.829090>,  <29.677612, 33.499710, 23.738110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.899698, 33.499874, 23.829090>,  <30.269842, 33.500149, 23.980724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899698, 33.499874, 23.829090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376851, 0.110116, 0.919705,
		0.041113, 0.993919, -0.102155,
		-0.925361, -0.000685, -0.379086,
		29.622089, 33.499668, 23.715364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023102, 34.177288, 24.180414>,  <30.269842, 33.500149, 23.980724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023102, 34.177288, 24.180414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.745985, 33.900665, 24.098640>,  <29.579716, 33.734692, 24.049576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.745985, 33.900665, 24.098640>,  <30.023102, 34.177288, 24.180414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745985, 33.900665, 24.098640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320999, 0.041877, 0.946153,
		-0.645757, 0.721108, -0.251001,
		-0.692790, -0.691556, -0.204433,
		29.538149, 33.693199, 24.037312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390232, 34.539688, 24.456907>,  <30.023102, 34.177288, 24.180414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390232, 34.539688, 24.456907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.305140, 34.149399, 24.436096>,  <29.254084, 33.915226, 24.423609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.305140, 34.149399, 24.436096>,  <29.390232, 34.539688, 24.456907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305140, 34.149399, 24.436096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315541, 0.018205, 0.948737,
		-0.924759, 0.218244, -0.311753,
		-0.212732, -0.975724, -0.052030,
		29.241320, 33.856682, 24.420486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723671, 34.511162, 24.781065>,  <29.390232, 34.539688, 24.456907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723671, 34.511162, 24.781065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.838617, 34.128159, 24.771221>,  <28.907585, 33.898357, 24.765314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.838617, 34.128159, 24.771221>,  <28.723671, 34.511162, 24.781065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838617, 34.128159, 24.771221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438154, -0.154262, 0.885564,
		-0.851728, -0.243699, -0.463864,
		0.287368, -0.957504, -0.024612,
		28.924828, 33.840908, 24.763838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112783, 34.107441, 25.010994>,  <28.723671, 34.511162, 24.781065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112783, 34.107441, 25.010994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.438622, 33.879917, 25.056416>,  <28.634125, 33.743404, 25.083668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.438622, 33.879917, 25.056416>,  <28.112783, 34.107441, 25.010994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438622, 33.879917, 25.056416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276492, -0.208693, 0.938083,
		-0.509890, -0.795554, -0.327271,
		0.814594, -0.568806, 0.113553,
		28.683001, 33.709274, 25.090481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804802, 33.480103, 25.261166>,  <28.112783, 34.107441, 25.010994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804802, 33.480103, 25.261166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.188770, 33.476707, 25.373226>,  <28.419151, 33.474670, 25.440462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.188770, 33.476707, 25.373226>,  <27.804802, 33.480103, 25.261166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188770, 33.476707, 25.373226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280250, -0.043482, 0.958942,
		0.004050, -0.999018, -0.044115,
		0.959919, -0.008479, 0.280151,
		28.476746, 33.474163, 25.457272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943630, 32.939247, 25.741127>,  <27.804802, 33.480103, 25.261166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943630, 32.939247, 25.741127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.240406, 33.195877, 25.819004>,  <28.418470, 33.349857, 25.865730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.240406, 33.195877, 25.819004>,  <27.943630, 32.939247, 25.741127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240406, 33.195877, 25.819004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249214, -0.005683, 0.968432,
		0.622431, -0.767037, 0.155674,
		0.741938, 0.641578, 0.194694,
		28.462988, 33.388351, 25.877413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345472, 32.598125, 26.221067>,  <27.943630, 32.939247, 25.741127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345472, 32.598125, 26.221067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.427374, 32.986931, 26.267139>,  <28.476515, 33.220215, 26.294783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.427374, 32.986931, 26.267139>,  <28.345472, 32.598125, 26.221067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427374, 32.986931, 26.267139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069857, -0.131885, 0.988801,
		0.976318, -0.194414, -0.094906,
		0.204753, 0.972013, 0.115180,
		28.488800, 33.278534, 26.301693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993374, 32.627926, 26.572817>,  <28.345472, 32.598125, 26.221067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993374, 32.627926, 26.572817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.801792, 32.970657, 26.649181>,  <28.686844, 33.176296, 26.695000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.801792, 32.970657, 26.649181>,  <28.993374, 32.627926, 26.572817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801792, 32.970657, 26.649181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097628, -0.164136, 0.981595,
		0.872394, 0.488777, -0.005037,
		-0.478954, 0.856829, 0.190909,
		28.658106, 33.227707, 26.706453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092165, 32.651737, 27.247349>,  <28.993374, 32.627926, 26.572817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092165, 32.651737, 27.247349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.863283, 32.979630, 27.237328>,  <28.725954, 33.176365, 27.231316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.863283, 32.979630, 27.237328>,  <29.092165, 32.651737, 27.247349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863283, 32.979630, 27.237328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071585, -0.019493, 0.997244,
		0.816981, 0.572420, 0.069834,
		-0.572204, 0.819729, -0.025051,
		28.691622, 33.225548, 27.229813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464510, 33.130611, 27.691818>,  <29.092165, 32.651737, 27.247349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464510, 33.130611, 27.691818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.080284, 33.238308, 27.664040>,  <28.849749, 33.302925, 27.647373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.080284, 33.238308, 27.664040>,  <29.464510, 33.130611, 27.691818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080284, 33.238308, 27.664040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040170, 0.112763, 0.992810,
		0.275138, 0.956448, -0.097501,
		-0.960565, 0.269243, -0.069446,
		28.792114, 33.319080, 27.643206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424809, 33.733276, 28.171923>,  <29.464510, 33.130611, 27.691818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424809, 33.733276, 28.171923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.073238, 33.553379, 28.108395>,  <28.862297, 33.445442, 28.070278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.073238, 33.553379, 28.108395>,  <29.424809, 33.733276, 28.171923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073238, 33.553379, 28.108395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203148, 0.051715, 0.977782,
		-0.431533, 0.891662, -0.136817,
		-0.878926, -0.449739, -0.158822,
		28.809561, 33.418457, 28.060747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888966, 34.143467, 28.566647>,  <29.424809, 33.733276, 28.171923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888966, 34.143467, 28.566647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.780220, 33.763908, 28.502541>,  <28.714973, 33.536175, 28.464077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.780220, 33.763908, 28.502541>,  <28.888966, 34.143467, 28.566647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780220, 33.763908, 28.502541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382561, -0.046246, 0.922772,
		-0.883027, 0.312180, -0.350438,
		-0.271865, -0.948897, -0.160265,
		28.698660, 33.479240, 28.454462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289946, 34.068832, 29.014576>,  <28.888966, 34.143467, 28.566647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289946, 34.068832, 29.014576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.364017, 33.684830, 28.930573>,  <28.408461, 33.454430, 28.880171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.364017, 33.684830, 28.930573>,  <28.289946, 34.068832, 29.014576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364017, 33.684830, 28.930573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379792, -0.267013, 0.885698,
		-0.906348, -0.084252, -0.414046,
		0.185178, -0.960003, -0.210008,
		28.419571, 33.396828, 28.867571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686516, 33.667427, 29.257315>,  <28.289946, 34.068832, 29.014576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686516, 33.667427, 29.257315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.989817, 33.409424, 29.219322>,  <28.171797, 33.254623, 29.196526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.989817, 33.409424, 29.219322>,  <27.686516, 33.667427, 29.257315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989817, 33.409424, 29.219322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117084, -0.278038, 0.953407,
		-0.641361, -0.711803, -0.286343,
		0.758252, -0.645005, -0.094982,
		28.217293, 33.215923, 29.190828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407251, 33.081898, 29.636528>,  <27.686516, 33.667427, 29.257315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407251, 33.081898, 29.636528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.806559, 33.058456, 29.634331>,  <28.046143, 33.044392, 29.633013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.806559, 33.058456, 29.634331>,  <27.407251, 33.081898, 29.636528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806559, 33.058456, 29.634331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018208, -0.396199, 0.917984,
		-0.055969, -0.916293, -0.396579,
		0.998266, -0.058600, -0.005491,
		28.106039, 33.040874, 29.632683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507278, 32.408440, 29.729965>,  <27.407251, 33.081898, 29.636528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507278, 32.408440, 29.729965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.835794, 32.605839, 29.844467>,  <28.032904, 32.724277, 29.913168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.835794, 32.605839, 29.844467>,  <27.507278, 32.408440, 29.729965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835794, 32.605839, 29.844467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069591, -0.411344, 0.908819,
		0.566252, -0.766324, -0.303490,
		0.821289, 0.493501, 0.286254,
		28.082182, 32.753887, 29.930344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865221, 31.948689, 30.081095>,  <27.507278, 32.408440, 29.729965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865221, 31.948689, 30.081095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.016769, 32.297943, 30.203793>,  <28.107698, 32.507496, 30.277411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.016769, 32.297943, 30.203793>,  <27.865221, 31.948689, 30.081095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016769, 32.297943, 30.203793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165407, -0.262227, 0.950725,
		0.910547, -0.410941, 0.045072,
		0.378872, 0.873135, 0.306743,
		28.130432, 32.559883, 30.295815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.810551, 31.796492, 30.563934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.622675, 32.141659, 30.638515>,  <28.509949, 32.348759, 30.683264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.622675, 32.141659, 30.638515>,  <28.810551, 31.796492, 30.563934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622675, 32.141659, 30.638515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226553, -0.086311, 0.970167,
		0.853267, 0.497919, -0.154957,
		-0.469690, 0.862918, 0.186451,
		28.481768, 32.400536, 30.694450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230213, 32.125191, 30.966770>,  <28.810551, 31.796492, 30.563934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230213, 32.125191, 30.966770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879444, 32.304237, 31.036800>,  <28.668983, 32.411663, 31.078819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879444, 32.304237, 31.036800>,  <29.230213, 32.125191, 30.966770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879444, 32.304237, 31.036800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118750, -0.151191, 0.981346,
		0.465732, 0.881354, 0.079428,
		-0.876922, 0.447612, 0.175075,
		28.616367, 32.438522, 31.089323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350487, 32.528484, 31.611792>,  <29.230213, 32.125191, 30.966770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350487, 32.528484, 31.611792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.951878, 32.534496, 31.579006>,  <28.712713, 32.538105, 31.559336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.951878, 32.534496, 31.579006>,  <29.350487, 32.528484, 31.611792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951878, 32.534496, 31.579006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082638, -0.051637, 0.995241,
		0.010729, 0.998553, 0.052699,
		-0.996522, 0.015033, -0.081964,
		28.652922, 32.539005, 31.554417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084503, 33.052155, 32.123692>,  <29.350487, 32.528484, 31.611792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084503, 33.052155, 32.123692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772535, 32.807064, 32.072643>,  <28.585354, 32.660011, 32.042015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772535, 32.807064, 32.072643>,  <29.084503, 33.052155, 32.123692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772535, 32.807064, 32.072643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074149, -0.112020, 0.990936,
		-0.621470, 0.782315, 0.041934,
		-0.779921, -0.612727, -0.127625,
		28.538559, 32.623245, 32.034355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568909, 33.332806, 32.523426>,  <29.084503, 33.052155, 32.123692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568909, 33.332806, 32.523426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.463633, 32.950699, 32.469463>,  <28.400467, 32.721436, 32.437084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.463633, 32.950699, 32.469463>,  <28.568909, 33.332806, 32.523426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463633, 32.950699, 32.469463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194995, -0.084281, 0.977177,
		-0.944833, 0.283489, -0.164090,
		-0.263189, -0.955265, -0.134910,
		28.384676, 32.664120, 32.428989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063084, 33.215115, 32.894089>,  <28.568909, 33.332806, 32.523426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063084, 33.215115, 32.894089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.167671, 32.834194, 32.831161>,  <28.230425, 32.605640, 32.793407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.167671, 32.834194, 32.831161>,  <28.063084, 33.215115, 32.894089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167671, 32.834194, 32.831161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148523, -0.200741, 0.968320,
		-0.953716, -0.229821, -0.193927,
		0.261470, -0.952305, -0.157316,
		28.246113, 32.548504, 32.783966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569103, 32.864120, 33.235439>,  <28.063084, 33.215115, 32.894089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569103, 32.864120, 33.235439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.866005, 32.598984, 33.196037>,  <28.044146, 32.439903, 33.172394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.866005, 32.598984, 33.196037>,  <27.569103, 32.864120, 33.235439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866005, 32.598984, 33.196037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094941, -0.249535, 0.963700,
		-0.663360, -0.705957, -0.248149,
		0.742253, -0.662839, -0.098508,
		28.088680, 32.400131, 33.166485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376383, 32.282742, 33.528069>,  <27.569103, 32.864120, 33.235439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376383, 32.282742, 33.528069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.768560, 32.204391, 33.520489>,  <28.003868, 32.157379, 33.515942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.768560, 32.204391, 33.520489>,  <27.376383, 32.282742, 33.528069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768560, 32.204391, 33.520489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023224, -0.210773, 0.977259,
		-0.195410, -0.957710, -0.211201,
		0.980447, -0.195871, -0.018945,
		28.062695, 32.145626, 33.514805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459255, 31.632290, 33.791691>,  <27.376383, 32.282742, 33.528069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459255, 31.632290, 33.791691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.772270, 31.875786, 33.843956>,  <27.960079, 32.021885, 33.875317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.772270, 31.875786, 33.843956>,  <27.459255, 31.632290, 33.791691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772270, 31.875786, 33.843956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104199, -0.078857, 0.991426,
		0.613825, -0.789440, 0.001722,
		0.782535, 0.608741, 0.130663,
		28.007030, 32.058407, 33.883156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661263, 31.434912, 34.397919>,  <27.459255, 31.632290, 33.791691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.661263, 31.434912, 34.397919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.923288, 31.734570, 34.358578>,  <28.080503, 31.914364, 34.334972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.923288, 31.734570, 34.358578>,  <27.661263, 31.434912, 34.397919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923288, 31.734570, 34.358578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008602, 0.122762, 0.992399,
		0.755523, -0.650933, 0.073973,
		0.655067, 0.749144, -0.098349,
		28.119808, 31.959312, 34.329075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195507, 31.287813, 34.844387>,  <27.661263, 31.434912, 34.397919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195507, 31.287813, 34.844387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.181040, 31.685711, 34.806065>,  <28.172359, 31.924450, 34.783070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.181040, 31.685711, 34.806065>,  <28.195507, 31.287813, 34.844387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181040, 31.685711, 34.806065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021127, 0.095087, 0.995245,
		0.999122, 0.038022, 0.017577,
		-0.036170, 0.994743, -0.095807,
		28.170189, 31.984133, 34.777321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713882, 31.535648, 35.245789>,  <28.195507, 31.287813, 34.844387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713882, 31.535648, 35.245789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.453981, 31.836327, 35.200569>,  <28.298040, 32.016735, 35.173439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.453981, 31.836327, 35.200569>,  <28.713882, 31.535648, 35.245789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453981, 31.836327, 35.200569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092277, 0.069617, 0.993297,
		0.754525, 0.655827, 0.024130,
		-0.649751, 0.751694, -0.113046,
		28.259056, 32.061836, 35.166656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921583, 32.063049, 35.631195>,  <28.713882, 31.535648, 35.245789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921583, 32.063049, 35.631195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.543623, 32.176346, 35.565548>,  <28.316847, 32.244324, 35.526161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.543623, 32.176346, 35.565548>,  <28.921583, 32.063049, 35.631195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543623, 32.176346, 35.565548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125476, 0.149670, 0.980742,
		0.302352, 0.947297, -0.105883,
		-0.944902, 0.283244, -0.164116,
		28.260153, 32.261318, 35.516312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845531, 32.784431, 35.891747>,  <28.921583, 32.063049, 35.631195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845531, 32.784431, 35.891747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.490187, 32.601807, 35.872303>,  <28.276979, 32.492233, 35.860638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.490187, 32.601807, 35.872303>,  <28.845531, 32.784431, 35.891747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490187, 32.601807, 35.872303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199633, 0.288753, 0.936359,
		-0.413471, 0.841530, -0.347662,
		-0.888363, -0.456563, -0.048606,
		28.223679, 32.464836, 35.857719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425238, 33.271004, 36.206421>,  <28.845531, 32.784431, 35.891747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425238, 33.271004, 36.206421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.180801, 32.954388, 36.204273>,  <28.034140, 32.764420, 36.202984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.180801, 32.954388, 36.204273>,  <28.425238, 33.271004, 36.206421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180801, 32.954388, 36.204273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260363, 0.194587, 0.945699,
		-0.747515, 0.579308, -0.324999,
		-0.611092, -0.791542, -0.005374,
		27.997475, 32.716927, 36.202660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071442, 33.400364, 36.753357>,  <28.425238, 33.271004, 36.206421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071442, 33.400364, 36.753357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.930056, 33.032284, 36.686077>,  <27.845224, 32.811436, 36.645710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.930056, 33.032284, 36.686077>,  <28.071442, 33.400364, 36.753357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930056, 33.032284, 36.686077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312951, -0.053126, 0.948282,
		-0.881546, 0.387825, -0.269199,
		-0.353466, -0.920201, -0.168203,
		27.824017, 32.756222, 36.635616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332260, 33.365437, 36.962521>,  <28.071442, 33.400364, 36.753357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332260, 33.365437, 36.962521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.477991, 32.993153, 36.975418>,  <27.565430, 32.769783, 36.983158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.477991, 32.993153, 36.975418>,  <27.332260, 33.365437, 36.962521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477991, 32.993153, 36.975418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289771, -0.080391, 0.953714,
		-0.885041, -0.356807, -0.298983,
		0.364327, -0.930713, 0.032243,
		27.587290, 32.713940, 36.985092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845791, 32.971371, 37.242939>,  <27.332260, 33.365437, 36.962521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845791, 32.971371, 37.242939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.162594, 32.733505, 37.298210>,  <27.352676, 32.590786, 37.331371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.162594, 32.733505, 37.298210>,  <26.845791, 32.971371, 37.242939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162594, 32.733505, 37.298210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205491, -0.046539, 0.977552,
		-0.574888, -0.802623, -0.159059,
		0.792008, -0.594668, 0.138177,
		27.400196, 32.555103, 37.339664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687395, 32.336338, 37.553165>,  <26.845791, 32.971371, 37.242939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687395, 32.336338, 37.553165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.072104, 32.373631, 37.656166>,  <27.302929, 32.396008, 37.717968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.072104, 32.373631, 37.656166>,  <26.687395, 32.336338, 37.553165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072104, 32.373631, 37.656166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248264, -0.100081, 0.963508,
		0.115603, -0.990601, -0.073108,
		0.961769, 0.093235, 0.257500,
		27.360634, 32.401600, 37.733418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815884, 31.851154, 38.075535>,  <26.687395, 32.336338, 37.553165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815884, 31.851154, 38.075535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.125004, 32.104843, 38.084873>,  <27.310476, 32.257057, 38.090477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.125004, 32.104843, 38.084873>,  <26.815884, 31.851154, 38.075535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125004, 32.104843, 38.084873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059831, -0.109432, 0.992192,
		0.631823, -0.765369, -0.122515,
		0.772800, 0.634220, 0.023349,
		27.356844, 32.295109, 38.091877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204939, 31.501804, 38.524048>,  <26.815884, 31.851154, 38.075535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204939, 31.501804, 38.524048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.354033, 31.872978, 38.524860>,  <27.443489, 32.095684, 38.525349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.354033, 31.872978, 38.524860>,  <27.204939, 31.501804, 38.524048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354033, 31.872978, 38.524860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199413, -0.082236, 0.976459,
		0.906258, -0.363554, -0.215694,
		0.372734, 0.927936, 0.002030,
		27.465853, 32.151360, 38.525471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910414, 31.558756, 38.807701>,  <27.204939, 31.501804, 38.524048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910414, 31.558756, 38.807701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.725540, 31.911125, 38.848419>,  <27.614616, 32.122547, 38.872849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.725540, 31.911125, 38.848419>,  <27.910414, 31.558756, 38.807701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725540, 31.911125, 38.848419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069517, -0.078444, 0.994492,
		0.884055, 0.466714, -0.024984,
		-0.462184, 0.880923, 0.101793,
		27.586885, 32.175404, 38.878956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366419, 32.011639, 39.166203>,  <27.910414, 31.558756, 38.807701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366419, 32.011639, 39.166203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996805, 32.144756, 39.241470>,  <27.775036, 32.224625, 39.286629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996805, 32.144756, 39.241470>,  <28.366419, 32.011639, 39.166203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996805, 32.144756, 39.241470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183607, -0.045411, 0.981950,
		0.335329, 0.941906, -0.019142,
		-0.924036, 0.332791, 0.188168,
		27.719595, 32.244595, 39.297920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425903, 32.619854, 39.744698>,  <28.366419, 32.011639, 39.166203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425903, 32.619854, 39.744698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.064259, 32.452290, 39.711006>,  <27.847271, 32.351749, 39.690792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.064259, 32.452290, 39.711006>,  <28.425903, 32.619854, 39.744698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064259, 32.452290, 39.711006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044189, -0.104400, 0.993553,
		-0.425007, 0.902004, 0.075878,
		-0.904111, -0.418914, -0.084229,
		27.793026, 32.326614, 39.685738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988338, 32.338631, 40.199593>,  <28.425903, 32.619854, 39.744698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988338, 32.338631, 40.199593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.371761, 32.300465, 40.306973>,  <29.601814, 32.277565, 40.371403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.371761, 32.300465, 40.306973>,  <28.988338, 32.338631, 40.199593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371761, 32.300465, 40.306973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284691, 0.357168, -0.889597,
		-0.011005, 0.929154, 0.369528,
		0.958556, -0.095411, 0.268452,
		29.659328, 32.271843, 40.387508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408976, 32.969677, 39.962959>,  <28.988338, 32.338631, 40.199593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408976, 32.969677, 39.962959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670965, 32.673794, 40.024723>,  <29.828159, 32.496265, 40.061783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670965, 32.673794, 40.024723>,  <29.408976, 32.969677, 39.962959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670965, 32.673794, 40.024723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390682, 0.156574, -0.907112,
		0.646821, 0.654460, 0.391542,
		0.654974, -0.739707, 0.154410,
		29.867456, 32.451881, 40.071045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165167, 33.162498, 39.676769>,  <29.408976, 32.969677, 39.962959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165167, 33.162498, 39.676769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169310, 32.763107, 39.698425>,  <30.171795, 32.523472, 39.711418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169310, 32.763107, 39.698425>,  <30.165167, 33.162498, 39.676769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169310, 32.763107, 39.698425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486998, -0.042254, -0.872380,
		0.873342, 0.035402, 0.485820,
		0.010356, -0.998479, 0.054143,
		30.172417, 32.463562, 39.714668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749113, 32.979809, 39.418591>,  <30.165167, 33.162498, 39.676769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749113, 32.979809, 39.418591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516031, 32.660919, 39.355480>,  <30.376183, 32.469585, 39.317616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516031, 32.660919, 39.355480>,  <30.749113, 32.979809, 39.418591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516031, 32.660919, 39.355480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281842, -0.016147, -0.959325,
		0.762246, -0.603472, 0.234099,
		-0.582706, -0.797221, -0.157775,
		30.341219, 32.421753, 39.308147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081589, 32.555294, 38.910160>,  <30.749113, 32.979809, 39.418591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081589, 32.555294, 38.910160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725056, 32.377766, 38.873161>,  <30.511137, 32.271248, 38.850960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725056, 32.377766, 38.873161>,  <31.081589, 32.555294, 38.910160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725056, 32.377766, 38.873161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236368, -0.280832, -0.930196,
		0.386860, -0.850976, 0.355218,
		-0.891330, -0.443817, -0.092501,
		30.457657, 32.244621, 38.845409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239130, 31.923592, 38.547066>,  <31.081589, 32.555294, 38.910160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239130, 31.923592, 38.547066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847195, 31.999748, 38.522858>,  <30.612034, 32.045441, 38.508331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847195, 31.999748, 38.522858>,  <31.239130, 31.923592, 38.547066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847195, 31.999748, 38.522858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023649, -0.190286, -0.981444,
		-0.198392, -0.963087, 0.181946,
		-0.979837, 0.190408, -0.060528,
		30.553242, 32.056866, 38.504700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836691, 31.400604, 38.249718>,  <31.239130, 31.923592, 38.547066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836691, 31.400604, 38.249718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.641043, 31.740795, 38.172310>,  <30.523653, 31.944910, 38.125866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.641043, 31.740795, 38.172310>,  <30.836691, 31.400604, 38.249718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641043, 31.740795, 38.172310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030220, -0.238260, -0.970731,
		-0.871692, -0.468957, 0.142239,
		-0.489121, 0.850477, -0.193518,
		30.494307, 31.995937, 38.114254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457983, 31.250587, 37.629971>,  <30.836691, 31.400604, 38.249718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457983, 31.250587, 37.629971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.434475, 31.648815, 37.659332>,  <30.420370, 31.887753, 37.676949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.434475, 31.648815, 37.659332>,  <30.457983, 31.250587, 37.629971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434475, 31.648815, 37.659332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033176, 0.075442, -0.996598,
		-0.997720, -0.056137, -0.037463,
		-0.058772, 0.995569, 0.073407,
		30.416843, 31.947485, 37.681355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913937, 31.373001, 37.293743>,  <30.457983, 31.250587, 37.629971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913937, 31.373001, 37.293743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.092680, 31.730831, 37.290722>,  <30.199926, 31.945528, 37.288910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.092680, 31.730831, 37.290722>,  <29.913937, 31.373001, 37.293743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092680, 31.730831, 37.290722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103559, 0.043338, -0.993679,
		-0.888591, 0.444816, 0.112007,
		0.446858, 0.894573, -0.007555,
		30.226738, 31.999203, 37.288456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394688, 32.002926, 36.946236>,  <29.913937, 31.373001, 37.293743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394688, 32.002926, 36.946236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.779800, 32.109455, 36.927826>,  <30.010868, 32.173374, 36.916779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.779800, 32.109455, 36.927826>,  <29.394688, 32.002926, 36.946236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779800, 32.109455, 36.927826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097840, 0.184697, -0.977913,
		-0.251942, 0.946022, 0.203880,
		0.962784, 0.266325, -0.046025,
		30.068636, 32.189354, 36.914017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399384, 32.514805, 36.333229>,  <29.394688, 32.002926, 36.946236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399384, 32.514805, 36.333229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.778267, 32.415062, 36.413841>,  <30.005598, 32.355217, 36.462208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.778267, 32.415062, 36.413841>,  <29.399384, 32.514805, 36.333229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778267, 32.415062, 36.413841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224537, 0.067247, -0.972142,
		0.228856, 0.966075, 0.119687,
		0.947211, -0.249355, 0.201530,
		30.062429, 32.340256, 36.474300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706413, 33.015362, 35.850945>,  <29.399384, 32.514805, 36.333229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706413, 33.015362, 35.850945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968575, 32.725086, 35.934685>,  <30.125872, 32.550922, 35.984928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968575, 32.725086, 35.934685>,  <29.706413, 33.015362, 35.850945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968575, 32.725086, 35.934685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188025, -0.111684, -0.975794,
		0.731501, 0.678900, 0.063249,
		0.655403, -0.725687, 0.209347,
		30.165195, 32.507381, 35.997490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345457, 33.171337, 35.472134>,  <29.706413, 33.015362, 35.850945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345457, 33.171337, 35.472134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.370991, 32.784225, 35.569569>,  <30.386311, 32.551960, 35.628029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.370991, 32.784225, 35.569569>,  <30.345457, 33.171337, 35.472134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370991, 32.784225, 35.569569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235353, -0.222603, -0.946074,
		0.969811, 0.117719, 0.213560,
		0.063832, -0.967776, 0.243589,
		30.390141, 32.493893, 35.642647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920910, 32.929451, 35.121014>,  <30.345457, 33.171337, 35.472134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920910, 32.929451, 35.121014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.712336, 32.596348, 35.195435>,  <30.587191, 32.396484, 35.240086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.712336, 32.596348, 35.195435>,  <30.920910, 32.929451, 35.121014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712336, 32.596348, 35.195435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237602, -0.351117, -0.905683,
		0.819543, -0.428050, 0.380951,
		-0.521436, -0.832761, 0.186050,
		30.555904, 32.346519, 35.251251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355673, 32.466190, 34.838322>,  <30.920910, 32.929451, 35.121014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355673, 32.466190, 34.838322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.998489, 32.287159, 34.857502>,  <30.784180, 32.179741, 34.869011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.998489, 32.287159, 34.857502>,  <31.355673, 32.466190, 34.838322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998489, 32.287159, 34.857502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120200, -0.339741, -0.932807,
		0.433795, -0.827194, 0.357173,
		-0.892958, -0.447579, 0.047949,
		30.730602, 32.152885, 34.871887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421293, 31.848759, 34.572388>,  <31.355673, 32.466190, 34.838322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421293, 31.848759, 34.572388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.023396, 31.886692, 34.556969>,  <30.784657, 31.909452, 34.547718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.023396, 31.886692, 34.556969>,  <31.421293, 31.848759, 34.572388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023396, 31.886692, 34.556969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018890, -0.200061, -0.979601,
		-0.100608, -0.975183, 0.197219,
		-0.994747, 0.094830, -0.038549,
		30.724972, 31.915142, 34.545403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293608, 31.246803, 34.319763>,  <31.421293, 31.848759, 34.572388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293608, 31.246803, 34.319763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.998240, 31.504063, 34.238682>,  <30.821018, 31.658419, 34.190033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.998240, 31.504063, 34.238682>,  <31.293608, 31.246803, 34.319763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998240, 31.504063, 34.238682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051175, -0.246286, -0.967845,
		-0.672394, -0.725052, 0.148950,
		-0.738422, 0.643150, -0.202706,
		30.776712, 31.697008, 34.177872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765837, 30.904758, 34.003021>,  <31.293608, 31.246803, 34.319763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765837, 30.904758, 34.003021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.689163, 31.280632, 33.889706>,  <30.643160, 31.506155, 33.821716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.689163, 31.280632, 33.889706>,  <30.765837, 30.904758, 34.003021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689163, 31.280632, 33.889706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053274, -0.298182, -0.953021,
		-0.980010, -0.167585, 0.107217,
		-0.191682, 0.939682, -0.283293,
		30.631659, 31.562536, 33.804718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229330, 30.798666, 33.386116>,  <30.765837, 30.904758, 34.003021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229330, 30.798666, 33.386116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.383951, 31.166893, 33.363724>,  <30.476723, 31.387829, 33.350288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.383951, 31.166893, 33.363724>,  <30.229330, 30.798666, 33.386116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383951, 31.166893, 33.363724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032642, -0.047010, -0.998361,
		-0.921690, 0.387746, 0.011877,
		0.386552, 0.920567, -0.055985,
		30.499916, 31.443064, 33.346928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775688, 31.206949, 32.966526>,  <30.229330, 30.798666, 33.386116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775688, 31.206949, 32.966526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.135855, 31.380497, 32.953823>,  <30.351954, 31.484627, 32.946201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.135855, 31.380497, 32.953823>,  <29.775688, 31.206949, 32.966526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135855, 31.380497, 32.953823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044807, 0.019872, -0.998798,
		-0.432718, 0.900756, 0.037334,
		0.900415, 0.433871, -0.031761,
		30.405979, 31.510658, 32.944294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.963179, 44.637409, 17.477568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.206711, 44.423443, 17.243237>,  <26.352829, 44.295063, 17.102638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.206711, 44.423443, 17.243237>,  <25.963179, 44.637409, 17.477568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206711, 44.423443, 17.243237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563906, -0.811224, 0.154676,
		-0.557975, 0.236180, -0.795539,
		0.608830, -0.534915, -0.585826,
		26.389360, 44.262970, 17.067488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509909, 44.217445, 17.021389>,  <25.963179, 44.637409, 17.477568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509909, 44.217445, 17.021389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.857769, 44.026554, 17.071930>,  <26.066484, 43.912022, 17.102255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.857769, 44.026554, 17.071930>,  <25.509909, 44.217445, 17.021389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857769, 44.026554, 17.071930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493669, -0.841218, 0.220552,
		0.001038, -0.254180, -0.967156,
		0.869650, -0.477226, 0.126354,
		26.118664, 43.883385, 17.109837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381638, 43.489609, 16.758255>,  <25.509909, 44.217445, 17.021389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381638, 43.489609, 16.758255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.727098, 43.457924, 16.957386>,  <25.934376, 43.438911, 17.076864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.727098, 43.457924, 16.957386>,  <25.381638, 43.489609, 16.758255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.727098, 43.457924, 16.957386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322765, -0.845483, 0.425418,
		0.387205, -0.528094, -0.755770,
		0.863652, -0.079212, 0.497826,
		25.986195, 43.434162, 17.106733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331238, 42.858189, 16.851494>,  <25.381638, 43.489609, 16.758255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331238, 42.858189, 16.851494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.647593, 42.932476, 17.084736>,  <25.837404, 42.977047, 17.224680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.647593, 42.932476, 17.084736>,  <25.331238, 42.858189, 16.851494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647593, 42.932476, 17.084736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338482, -0.661067, 0.669641,
		0.509833, -0.726980, -0.459968,
		0.790886, 0.185715, 0.583104,
		25.884859, 42.988190, 17.259666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812901, 42.235210, 16.932720>,  <25.331238, 42.858189, 16.851494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812901, 42.235210, 16.932720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.866961, 42.480091, 17.244347>,  <25.899397, 42.627022, 17.431322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.866961, 42.480091, 17.244347>,  <25.812901, 42.235210, 16.932720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866961, 42.480091, 17.244347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193804, -0.754757, 0.626723,
		0.971687, -0.235687, 0.016642,
		0.135150, 0.612204, 0.779064,
		25.907505, 42.663754, 17.478065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399975, 41.937424, 17.320780>,  <25.812901, 42.235210, 16.932720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399975, 41.937424, 17.320780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.172020, 42.165398, 17.557560>,  <26.035248, 42.302181, 17.699629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.172020, 42.165398, 17.557560>,  <26.399975, 41.937424, 17.320780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172020, 42.165398, 17.557560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252383, -0.806960, 0.533965,
		0.782005, 0.154901, 0.603717,
		-0.569887, 0.569931, 0.591952,
		26.001053, 42.336376, 17.735146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583088, 41.757946, 17.987436>,  <26.399975, 41.937424, 17.320780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583088, 41.757946, 17.987436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.221792, 41.928066, 18.010353>,  <26.005014, 42.030140, 18.024103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.221792, 41.928066, 18.010353>,  <26.583088, 41.757946, 17.987436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221792, 41.928066, 18.010353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291773, -0.706515, 0.644752,
		0.314691, 0.565648, 0.762242,
		-0.903238, 0.425300, 0.057293,
		25.950821, 42.055656, 18.027540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446468, 41.769421, 18.734310>,  <26.583088, 41.757946, 17.987436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446468, 41.769421, 18.734310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.105906, 41.780788, 18.524815>,  <25.901567, 41.787609, 18.399118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.105906, 41.780788, 18.524815>,  <26.446468, 41.769421, 18.734310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105906, 41.780788, 18.524815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350469, -0.773720, 0.527758,
		-0.390229, 0.632890, 0.668709,
		-0.851406, 0.028415, -0.523737,
		25.850483, 41.789314, 18.367693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994026, 41.537769, 19.181969>,  <26.446468, 41.769421, 18.734310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994026, 41.537769, 19.181969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.761820, 41.538536, 18.856270>,  <25.622496, 41.538998, 18.660851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.761820, 41.538536, 18.856270>,  <25.994026, 41.537769, 19.181969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761820, 41.538536, 18.856270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435017, -0.846051, 0.308154,
		-0.688304, 0.533099, 0.491979,
		-0.580516, 0.001916, -0.814247,
		25.587666, 41.539112, 18.611996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251289, 41.577869, 19.433474>,  <25.994026, 41.537769, 19.181969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251289, 41.577869, 19.433474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.255520, 41.410011, 19.070423>,  <25.258059, 41.309296, 18.852592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.255520, 41.410011, 19.070423>,  <25.251289, 41.577869, 19.433474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255520, 41.410011, 19.070423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578693, -0.742799, 0.336696,
		-0.815477, 0.521675, -0.250706,
		0.010578, -0.419650, -0.907624,
		25.258694, 41.284115, 18.798136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456999, 41.403728, 19.323635>,  <25.251289, 41.577869, 19.433474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456999, 41.403728, 19.323635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.692865, 41.186008, 19.084961>,  <24.834385, 41.055378, 18.941757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.692865, 41.186008, 19.084961>,  <24.456999, 41.403728, 19.323635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.692865, 41.186008, 19.084961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495691, -0.827179, 0.264698,
		-0.637639, 0.139687, -0.757564,
		0.589667, -0.544299, -0.596684,
		24.869766, 41.022720, 18.905956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.081814, 40.856571, 19.003746>,  <24.456999, 41.403728, 19.323635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.081814, 40.856571, 19.003746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.447542, 40.716278, 18.922745>,  <24.666979, 40.632103, 18.874144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.447542, 40.716278, 18.922745>,  <24.081814, 40.856571, 19.003746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.447542, 40.716278, 18.922745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365481, -0.929981, -0.039486,
		-0.174474, 0.110113, -0.978486,
		0.914321, -0.350729, -0.202502,
		24.721838, 40.611061, 18.861994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.872789, 40.295692, 18.650337>,  <24.081814, 40.856571, 19.003746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.872789, 40.295692, 18.650337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.256813, 40.242229, 18.748661>,  <24.487226, 40.210152, 18.807655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.256813, 40.242229, 18.748661>,  <23.872789, 40.295692, 18.650337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256813, 40.242229, 18.748661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171946, -0.974894, 0.141481,
		0.220726, -0.178096, -0.958938,
		0.960059, -0.133657, 0.245807,
		24.544830, 40.202133, 18.822403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.122713, 39.681385, 18.307293>,  <23.872789, 40.295692, 18.650337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.122713, 39.681385, 18.307293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.324438, 39.741879, 18.647362>,  <24.445473, 39.778175, 18.851404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.324438, 39.741879, 18.647362>,  <24.122713, 39.681385, 18.307293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.324438, 39.741879, 18.647362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164001, -0.949849, 0.266253,
		0.847805, -0.273704, -0.454217,
		0.504312, 0.151238, 0.850174,
		24.475733, 39.787251, 18.902414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.475700, 39.021599, 18.428402>,  <24.122713, 39.681385, 18.307293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.475700, 39.021599, 18.428402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.474445, 39.203053, 18.784874>,  <24.473692, 39.311924, 18.998758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.474445, 39.203053, 18.784874>,  <24.475700, 39.021599, 18.428402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474445, 39.203053, 18.784874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046319, -0.890296, 0.453021,
		0.998922, -0.039856, 0.023807,
		-0.003140, 0.453636, 0.891182,
		24.473503, 39.339142, 19.052229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974459, 38.685059, 18.895628>,  <24.475700, 39.021599, 18.428402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974459, 38.685059, 18.895628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.718697, 38.882824, 19.131161>,  <24.565239, 39.001484, 19.272480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.718697, 38.882824, 19.131161>,  <24.974459, 38.685059, 18.895628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.718697, 38.882824, 19.131161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172318, -0.838504, 0.516932,
		0.749313, 0.229062, 0.621338,
		-0.639404, 0.494411, 0.588830,
		24.526875, 39.031147, 19.307810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.041988, 38.397114, 19.462452>,  <24.974459, 38.685059, 18.895628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.041988, 38.397114, 19.462452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.719704, 38.598770, 19.586819>,  <24.526333, 38.719765, 19.661438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.719704, 38.598770, 19.586819>,  <25.041988, 38.397114, 19.462452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719704, 38.598770, 19.586819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222847, -0.744367, 0.629489,
		0.548788, 0.437900, 0.712092,
		-0.805712, 0.504144, 0.310915,
		24.477991, 38.750011, 19.680094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020664, 38.440414, 20.167700>,  <25.041988, 38.397114, 19.462452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020664, 38.440414, 20.167700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.644493, 38.448921, 20.031971>,  <24.418791, 38.454025, 19.950533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.644493, 38.448921, 20.031971>,  <25.020664, 38.440414, 20.167700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644493, 38.448921, 20.031971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289877, -0.571687, 0.767558,
		-0.177661, 0.820196, 0.543797,
		-0.940430, 0.021269, -0.339323,
		24.362364, 38.455303, 19.930174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609507, 38.510807, 20.760748>,  <25.020664, 38.440414, 20.167700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609507, 38.510807, 20.760748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.363962, 38.380341, 20.473194>,  <24.216635, 38.302063, 20.300663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.363962, 38.380341, 20.473194>,  <24.609507, 38.510807, 20.760748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363962, 38.380341, 20.473194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441067, -0.613542, 0.655001,
		-0.654702, 0.719155, 0.232770,
		-0.613861, -0.326164, -0.718882,
		24.179804, 38.282490, 20.257530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.875067, 38.500187, 21.010736>,  <24.609507, 38.510807, 20.760748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.875067, 38.500187, 21.010736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.882042, 38.239910, 20.707081>,  <23.886227, 38.083744, 20.524887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.882042, 38.239910, 20.707081>,  <23.875067, 38.500187, 21.010736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.882042, 38.239910, 20.707081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663966, -0.575210, 0.477789,
		-0.747560, 0.495712, -0.442068,
		0.017436, -0.650695, -0.759140,
		23.887274, 38.044701, 20.479340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.187887, 38.405437, 20.846346>,  <23.875067, 38.500187, 21.010736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.187887, 38.405437, 20.846346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.407099, 38.083176, 20.756386>,  <23.538626, 37.889816, 20.702410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.407099, 38.083176, 20.756386>,  <23.187887, 38.405437, 20.846346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.407099, 38.083176, 20.756386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710480, -0.590251, 0.383172,
		-0.441453, -0.050202, -0.895879,
		0.548029, -0.805657, -0.224901,
		23.571507, 37.841480, 20.688915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.844481, 38.553619, 21.453035>,  <23.187887, 38.405437, 20.846346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.844481, 38.553619, 21.453035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.474867, 38.544567, 21.605690>,  <22.253098, 38.539135, 21.697283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.474867, 38.544567, 21.605690>,  <22.844481, 38.553619, 21.453035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.474867, 38.544567, 21.605690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202439, 0.875777, -0.438217,
		-0.324309, -0.482186, -0.813831,
		-0.924036, -0.022634, 0.381635,
		22.197657, 38.537777, 21.720181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.449734, 38.667046, 20.870840>,  <22.844481, 38.553619, 21.453035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.449734, 38.667046, 20.870840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.220892, 38.770046, 21.182323>,  <22.083588, 38.831848, 21.369213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.220892, 38.770046, 21.182323>,  <22.449734, 38.667046, 20.870840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.220892, 38.770046, 21.182323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338847, 0.790416, -0.510319,
		-0.746913, -0.555819, -0.364947,
		-0.572105, 0.257502, 0.778710,
		22.049261, 38.847298, 21.415936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.752148, 38.742371, 20.580502>,  <22.449734, 38.667046, 20.870840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.752148, 38.742371, 20.580502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.792089, 38.961037, 20.913052>,  <21.816055, 39.092236, 21.112581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.792089, 38.961037, 20.913052>,  <21.752148, 38.742371, 20.580502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792089, 38.961037, 20.913052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235153, 0.824847, -0.514131,
		-0.966815, -0.144162, 0.210915,
		0.099855, 0.546668, 0.831374,
		21.822046, 39.125038, 21.162464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.189442, 39.149029, 20.607767>,  <21.752148, 38.742371, 20.580502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.189442, 39.149029, 20.607767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.442686, 39.345245, 20.847279>,  <21.594633, 39.462975, 20.990986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.442686, 39.345245, 20.847279>,  <21.189442, 39.149029, 20.607767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.442686, 39.345245, 20.847279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221127, 0.855938, -0.467411,
		-0.741805, 0.163516, 0.650375,
		0.633110, 0.490544, 0.598781,
		21.632620, 39.492409, 21.026913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070156, 39.887653, 20.493269>,  <21.189442, 39.149029, 20.607767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070156, 39.887653, 20.493269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.387449, 39.918976, 20.734814>,  <21.577826, 39.937771, 20.879742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.387449, 39.918976, 20.734814>,  <21.070156, 39.887653, 20.493269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.387449, 39.918976, 20.734814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103109, 0.960103, -0.259943,
		-0.600127, 0.268459, 0.753510,
		0.793232, 0.078305, 0.603864,
		21.625420, 39.942467, 20.915974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.012678, 40.557850, 20.852655>,  <21.070156, 39.887653, 20.493269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.012678, 40.557850, 20.852655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.399302, 40.455570, 20.844772>,  <21.631275, 40.394203, 20.840042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.399302, 40.455570, 20.844772>,  <21.012678, 40.557850, 20.852655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.399302, 40.455570, 20.844772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246847, 0.948432, -0.198854,
		0.069535, 0.187340, 0.979831,
		0.966556, -0.255695, -0.019706,
		21.689268, 40.378860, 20.838861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.443991, 41.091194, 21.141228>,  <21.012678, 40.557850, 20.852655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.443991, 41.091194, 21.141228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.705494, 40.873287, 20.931149>,  <21.862396, 40.742542, 20.805101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.705494, 40.873287, 20.931149>,  <21.443991, 41.091194, 21.141228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.705494, 40.873287, 20.931149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422642, 0.838585, -0.343727,
		0.627674, 0.002744, 0.778472,
		0.653758, -0.544763, -0.525198,
		21.901621, 40.709858, 20.773588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060637, 41.393478, 21.266766>,  <21.443991, 41.091194, 21.141228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060637, 41.393478, 21.266766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.091015, 41.202881, 20.916409>,  <22.109241, 41.088524, 20.706194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.091015, 41.202881, 20.916409>,  <22.060637, 41.393478, 21.266766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.091015, 41.202881, 20.916409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376120, 0.827228, -0.417406,
		0.923453, -0.297739, 0.242045,
		0.075948, -0.476493, -0.875892,
		22.113800, 41.059933, 20.653641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.699120, 41.708305, 20.899433>,  <22.060637, 41.393478, 21.266766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.699120, 41.708305, 20.899433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.491272, 41.530201, 20.607750>,  <22.366564, 41.423340, 20.432741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.491272, 41.530201, 20.607750>,  <22.699120, 41.708305, 20.899433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.491272, 41.530201, 20.607750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232172, 0.747774, -0.622037,
		0.822248, -0.492523, -0.285182,
		-0.519619, -0.445258, -0.729206,
		22.335386, 41.396626, 20.388988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.120562, 41.619282, 20.267069>,  <22.699120, 41.708305, 20.899433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.120562, 41.619282, 20.267069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.744545, 41.621292, 20.130661>,  <22.518934, 41.622498, 20.048817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.744545, 41.621292, 20.130661>,  <23.120562, 41.619282, 20.267069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.744545, 41.621292, 20.130661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228596, 0.751338, -0.619060,
		0.253109, -0.659899, -0.707439,
		-0.940042, 0.005028, -0.341020,
		22.462532, 41.622799, 20.028355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.179871, 41.734451, 19.628208>,  <23.120562, 41.619282, 20.267069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.179871, 41.734451, 19.628208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.796013, 41.825523, 19.694225>,  <22.565697, 41.880169, 19.733835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.796013, 41.825523, 19.694225>,  <23.179871, 41.734451, 19.628208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.796013, 41.825523, 19.694225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101511, 0.827805, -0.551755,
		-0.262247, -0.512737, -0.817513,
		-0.959647, 0.227683, 0.165041,
		22.508120, 41.893829, 19.743738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.091909, 42.112705, 19.077353>,  <23.179871, 41.734451, 19.628208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.091909, 42.112705, 19.077353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.767422, 42.214973, 19.287708>,  <22.572729, 42.276333, 19.413921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.767422, 42.214973, 19.287708>,  <23.091909, 42.112705, 19.077353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.767422, 42.214973, 19.287708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135104, 0.793062, -0.593970,
		-0.568922, -0.552889, -0.608804,
		-0.811218, 0.255671, 0.525887,
		22.524055, 42.291676, 19.445475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.618486, 42.230293, 18.577826>,  <23.091909, 42.112705, 19.077353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.618486, 42.230293, 18.577826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.526289, 42.418339, 18.918617>,  <22.470970, 42.531166, 19.123093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.526289, 42.418339, 18.918617>,  <22.618486, 42.230293, 18.577826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.526289, 42.418339, 18.918617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056365, 0.867633, -0.494001,
		-0.971440, -0.161885, -0.173485,
		-0.230492, 0.470114, 0.851978,
		22.457142, 42.559372, 19.174212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.074026, 42.556084, 18.434912>,  <22.618486, 42.230293, 18.577826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.074026, 42.556084, 18.434912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.192690, 42.769108, 18.751991>,  <22.263887, 42.896923, 18.942240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.192690, 42.769108, 18.751991>,  <22.074026, 42.556084, 18.434912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.192690, 42.769108, 18.751991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057236, 0.818658, -0.571422,
		-0.953267, 0.214887, 0.212380,
		0.296658, 0.532562, 0.792699,
		22.281687, 42.928875, 18.989801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.763721, 43.258163, 18.359682>,  <22.074026, 42.556084, 18.434912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.763721, 43.258163, 18.359682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.046120, 43.308208, 18.638512>,  <22.215559, 43.338234, 18.805809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.046120, 43.308208, 18.638512>,  <21.763721, 43.258163, 18.359682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.046120, 43.308208, 18.638512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177969, 0.921346, -0.345613,
		-0.685488, 0.368059, 0.628202,
		0.705998, 0.125113, 0.697075,
		22.257919, 43.345741, 18.847633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.732914, 43.939667, 18.641386>,  <21.763721, 43.258163, 18.359682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.732914, 43.939667, 18.641386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.108816, 43.830429, 18.723633>,  <22.334358, 43.764885, 18.772982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.108816, 43.830429, 18.723633>,  <21.732914, 43.939667, 18.641386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.108816, 43.830429, 18.723633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295945, 0.951006, -0.089473,
		-0.171109, 0.144934, 0.974534,
		0.939755, -0.273098, 0.205618,
		22.390743, 43.748501, 18.785318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968924, 44.531609, 19.012218>,  <21.732914, 43.939667, 18.641386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968924, 44.531609, 19.012218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.298904, 44.333057, 18.904099>,  <22.496893, 44.213928, 18.839226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.298904, 44.333057, 18.904099>,  <21.968924, 44.531609, 19.012218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.298904, 44.333057, 18.904099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404693, 0.852601, -0.330598,
		0.394560, 0.163339, 0.904236,
		0.824952, -0.496379, -0.270300,
		22.546391, 44.184143, 18.823008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.589483, 44.910221, 19.218449>,  <21.968924, 44.531609, 19.012218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.589483, 44.910221, 19.218449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.699745, 44.687443, 18.905060>,  <22.765903, 44.553776, 18.717028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.699745, 44.687443, 18.905060>,  <22.589483, 44.910221, 19.218449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.699745, 44.687443, 18.905060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502548, 0.778290, -0.376444,
		0.819426, -0.289962, 0.494432,
		0.275657, -0.556944, -0.783471,
		22.782442, 44.520359, 18.670019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.270908, 45.164032, 19.072729>,  <22.589483, 44.910221, 19.218449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.270908, 45.164032, 19.072729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.155249, 44.961288, 18.747894>,  <23.085854, 44.839642, 18.552994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.155249, 44.961288, 18.747894>,  <23.270908, 45.164032, 19.072729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.155249, 44.961288, 18.747894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585417, 0.577579, -0.568937,
		0.757416, -0.639916, 0.129720,
		-0.289148, -0.506863, -0.812086,
		23.068504, 44.809231, 18.504269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.954462, 45.298607, 18.561834>,  <23.270908, 45.164032, 19.072729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.954462, 45.298607, 18.561834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.651844, 45.168537, 18.334888>,  <23.470274, 45.090496, 18.198721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.651844, 45.168537, 18.334888>,  <23.954462, 45.298607, 18.561834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.651844, 45.168537, 18.334888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393419, 0.466716, -0.792084,
		0.522363, -0.822459, -0.225161,
		-0.756543, -0.325173, -0.567367,
		23.424881, 45.070984, 18.164679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.247561, 44.980011, 18.031866>,  <23.954462, 45.298607, 18.561834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.247561, 44.980011, 18.031866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.882610, 45.090870, 17.911362>,  <23.663641, 45.157387, 17.839060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.882610, 45.090870, 17.911362>,  <24.247561, 44.980011, 18.031866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.882610, 45.090870, 17.911362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403421, 0.483934, -0.776569,
		-0.069435, -0.830058, -0.553338,
		-0.912376, 0.277150, -0.301261,
		23.608898, 45.174015, 17.820984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.627436, 32.960117, 27.878817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994656, 33.108891, 27.933731>,  <28.214989, 33.198154, 27.966679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994656, 33.108891, 27.933731>,  <27.627436, 32.960117, 27.878817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994656, 33.108891, 27.933731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019219, 0.304115, -0.952441,
		-0.395997, 0.877028, 0.272045,
		0.918051, 0.371936, 0.137284,
		28.270071, 33.220470, 27.974916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583576, 33.695808, 27.568678>,  <27.627436, 32.960117, 27.878817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583576, 33.695808, 27.568678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961098, 33.565758, 27.592430>,  <28.187611, 33.487728, 27.606682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961098, 33.565758, 27.592430>,  <27.583576, 33.695808, 27.568678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961098, 33.565758, 27.592430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184596, 0.369522, -0.910702,
		0.274152, 0.870485, 0.408774,
		0.943804, -0.325129, 0.059382,
		28.244238, 33.468220, 27.610245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874973, 34.181419, 27.303303>,  <27.583576, 33.695808, 27.568678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874973, 34.181419, 27.303303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117155, 33.865528, 27.263794>,  <28.262465, 33.675995, 27.240089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117155, 33.865528, 27.263794>,  <27.874973, 34.181419, 27.303303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117155, 33.865528, 27.263794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265843, 0.317647, -0.910180,
		0.750169, 0.524814, 0.402264,
		0.605453, -0.789728, -0.098771,
		28.298792, 33.628609, 27.234163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279428, 34.468735, 26.840933>,  <27.874973, 34.181419, 27.303303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279428, 34.468735, 26.840933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398073, 34.088688, 26.802380>,  <28.469261, 33.860661, 26.779247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398073, 34.088688, 26.802380>,  <28.279428, 34.468735, 26.840933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398073, 34.088688, 26.802380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224971, 0.167600, -0.959843,
		0.928121, 0.263020, 0.263462,
		0.296614, -0.950122, -0.096381,
		28.487057, 33.803650, 26.773466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933466, 34.467442, 26.480804>,  <28.279428, 34.468735, 26.840933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933466, 34.467442, 26.480804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798100, 34.095539, 26.422794>,  <28.716879, 33.872398, 26.387987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798100, 34.095539, 26.422794>,  <28.933466, 34.467442, 26.480804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798100, 34.095539, 26.422794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251334, 0.059212, -0.966088,
		0.906810, -0.363391, 0.213641,
		-0.338417, -0.929754, -0.145027,
		28.696575, 33.816612, 26.379286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421114, 34.225056, 25.978445>,  <28.933466, 34.467442, 26.480804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421114, 34.225056, 25.978445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144196, 33.937141, 25.957905>,  <28.978045, 33.764393, 25.945581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144196, 33.937141, 25.957905>,  <29.421114, 34.225056, 25.978445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144196, 33.937141, 25.957905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173373, -0.096830, -0.980084,
		0.700478, -0.687410, 0.191827,
		-0.692295, -0.719786, -0.051351,
		28.936506, 33.721207, 25.942499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774660, 33.544987, 25.798096>,  <29.421114, 34.225056, 25.978445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774660, 33.544987, 25.798096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396090, 33.542767, 25.668949>,  <29.168947, 33.541435, 25.591461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396090, 33.542767, 25.668949>,  <29.774660, 33.544987, 25.798096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396090, 33.542767, 25.668949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320643, -0.134487, -0.937604,
		-0.038217, -0.990900, 0.129062,
		-0.946429, -0.005550, -0.322865,
		29.112162, 33.541103, 25.572090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800522, 33.032894, 25.324814>,  <29.774660, 33.544987, 25.798096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800522, 33.032894, 25.324814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450495, 33.209293, 25.245045>,  <29.240479, 33.315132, 25.197184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450495, 33.209293, 25.245045>,  <29.800522, 33.032894, 25.324814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450495, 33.209293, 25.245045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172107, -0.101571, -0.979828,
		-0.452362, -0.891740, 0.012982,
		-0.875070, 0.441003, -0.199422,
		29.187973, 33.341595, 25.185219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476231, 32.665333, 24.841145>,  <29.800522, 33.032894, 25.324814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476231, 32.665333, 24.841145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303123, 33.024754, 24.811981>,  <29.199259, 33.240406, 24.794483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303123, 33.024754, 24.811981>,  <29.476231, 32.665333, 24.841145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303123, 33.024754, 24.811981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066913, -0.048637, -0.996573,
		-0.899018, -0.436164, -0.039076,
		-0.432769, 0.898552, -0.072911,
		29.173292, 33.294319, 24.790108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978550, 32.565403, 24.413342>,  <29.476231, 32.665333, 24.841145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978550, 32.565403, 24.413342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036549, 32.960865, 24.397648>,  <29.071348, 33.198143, 24.388231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036549, 32.960865, 24.397648>,  <28.978550, 32.565403, 24.413342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036549, 32.960865, 24.397648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163758, -0.063087, -0.984481,
		-0.975786, 0.136321, -0.171048,
		0.144997, 0.988654, -0.039236,
		29.080048, 33.257462, 24.385878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566017, 32.817768, 23.768236>,  <28.978550, 32.565403, 24.413342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566017, 32.817768, 23.768236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861397, 33.071186, 23.860600>,  <29.038624, 33.223236, 23.916018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861397, 33.071186, 23.860600>,  <28.566017, 32.817768, 23.768236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861397, 33.071186, 23.860600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257153, 0.051972, -0.964972,
		-0.623353, 0.771959, -0.124539,
		0.738447, 0.633544, 0.230908,
		29.082932, 33.261250, 23.929873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407463, 33.394039, 23.359043>,  <28.566017, 32.817768, 23.768236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407463, 33.394039, 23.359043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796480, 33.403709, 23.451633>,  <29.029890, 33.409512, 23.507187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796480, 33.403709, 23.451633>,  <28.407463, 33.394039, 23.359043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796480, 33.403709, 23.451633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229479, 0.066114, -0.971065,
		-0.038781, 0.997519, 0.058751,
		0.972541, 0.024176, 0.231474,
		29.088242, 33.410961, 23.521076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716679, 34.051380, 23.053577>,  <28.407463, 33.394039, 23.359043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716679, 34.051380, 23.053577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951368, 33.731140, 23.102234>,  <29.092182, 33.538998, 23.131428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951368, 33.731140, 23.102234>,  <28.716679, 34.051380, 23.053577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951368, 33.731140, 23.102234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052792, -0.112081, -0.992296,
		0.808063, 0.588627, -0.023495,
		0.586726, -0.800597, 0.121643,
		29.127386, 33.490959, 23.138727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448328, 34.729679, 23.122328>,  <28.716679, 34.051380, 23.053577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448328, 34.729679, 23.122328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477003, 34.822456, 23.510361>,  <28.494209, 34.878124, 23.743181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477003, 34.822456, 23.510361>,  <28.448328, 34.729679, 23.122328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477003, 34.822456, 23.510361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588051, 0.775747, -0.228937,
		-0.805641, 0.586871, -0.080784,
		0.071689, 0.231946, 0.970084,
		28.498510, 34.892040, 23.801386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126507, 34.503269, 22.461903>,  <28.448328, 34.729679, 23.122328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126507, 34.503269, 22.461903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792240, 34.695179, 22.354961>,  <27.591681, 34.810326, 22.290796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792240, 34.695179, 22.354961>,  <28.126507, 34.503269, 22.461903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792240, 34.695179, 22.354961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192840, 0.712078, 0.675099,
		0.514274, 0.512600, -0.687579,
		-0.835665, 0.479778, -0.267353,
		27.541540, 34.839111, 22.274755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307884, 35.205032, 22.614103>,  <28.126507, 34.503269, 22.461903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307884, 35.205032, 22.614103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907898, 35.202858, 22.616451>,  <27.667906, 35.201553, 22.617861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907898, 35.202858, 22.616451>,  <28.307884, 35.205032, 22.614103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907898, 35.202858, 22.616451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002369, 0.499937, 0.866059,
		-0.007641, 0.866045, -0.499908,
		-0.999968, -0.005433, 0.005872,
		27.607908, 35.201229, 22.618214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100409, 35.868931, 22.824503>,  <28.307884, 35.205032, 22.614103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100409, 35.868931, 22.824503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783291, 35.633797, 22.888912>,  <27.593019, 35.492718, 22.927559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783291, 35.633797, 22.888912>,  <28.100409, 35.868931, 22.824503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783291, 35.633797, 22.888912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117048, 0.406120, 0.906293,
		-0.598144, 0.699657, -0.390774,
		-0.792795, -0.587832, 0.161025,
		27.545452, 35.457447, 22.937220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669870, 36.274403, 23.197996>,  <28.100409, 35.868931, 22.824503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669870, 36.274403, 23.197996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511997, 35.916401, 23.281132>,  <27.417273, 35.701599, 23.331013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511997, 35.916401, 23.281132>,  <27.669870, 36.274403, 23.197996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511997, 35.916401, 23.281132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241485, 0.319291, 0.916372,
		-0.886516, 0.311486, -0.342149,
		-0.394682, -0.895002, 0.207838,
		27.393593, 35.647900, 23.343483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083427, 36.445839, 23.646990>,  <27.669870, 36.274403, 23.197996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083427, 36.445839, 23.646990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167282, 36.059299, 23.706608>,  <27.217594, 35.827374, 23.742378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167282, 36.059299, 23.706608>,  <27.083427, 36.445839, 23.646990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167282, 36.059299, 23.706608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120350, 0.125772, 0.984732,
		-0.970344, -0.224373, -0.089934,
		0.209636, -0.966353, 0.149046,
		27.230173, 35.769394, 23.751322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580921, 36.293114, 24.098101>,  <27.083427, 36.445839, 23.646990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580921, 36.293114, 24.098101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836367, 35.987133, 24.131626>,  <26.989634, 35.803543, 24.151741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836367, 35.987133, 24.131626>,  <26.580921, 36.293114, 24.098101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836367, 35.987133, 24.131626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098257, 0.189079, 0.977034,
		-0.763229, -0.615711, 0.195910,
		0.638613, -0.764950, 0.083813,
		27.027950, 35.757648, 24.156771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347157, 35.862946, 24.666950>,  <26.580921, 36.293114, 24.098101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347157, 35.862946, 24.666950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737209, 35.777138, 24.644695>,  <26.971241, 35.725655, 24.631342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737209, 35.777138, 24.644695>,  <26.347157, 35.862946, 24.666950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737209, 35.777138, 24.644695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086508, 0.137321, 0.986742,
		-0.204035, -0.967018, 0.152464,
		0.975134, -0.214520, -0.055636,
		27.029749, 35.712784, 24.628004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460081, 35.306976, 25.032896>,  <26.347157, 35.862946, 24.666950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460081, 35.306976, 25.032896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821938, 35.477440, 25.034561>,  <27.039051, 35.579720, 25.035561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821938, 35.477440, 25.034561>,  <26.460081, 35.306976, 25.032896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821938, 35.477440, 25.034561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016286, -0.044327, 0.998884,
		0.425868, -0.903562, -0.047040,
		0.904639, 0.426159, 0.004162,
		27.093328, 35.605286, 25.035810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859486, 34.946476, 25.467596>,  <26.460081, 35.306976, 25.032896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859486, 34.946476, 25.467596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092606, 35.270260, 25.438965>,  <27.232477, 35.464531, 25.421787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092606, 35.270260, 25.438965>,  <26.859486, 34.946476, 25.467596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092606, 35.270260, 25.438965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363156, -0.180645, 0.914049,
		0.726952, -0.558703, -0.399239,
		0.582802, 0.809456, -0.071576,
		27.267447, 35.513096, 25.417492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509159, 34.739162, 25.597748>,  <26.859486, 34.946476, 25.467596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509159, 34.739162, 25.597748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489603, 35.131256, 25.674435>,  <27.477869, 35.366512, 25.720446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489603, 35.131256, 25.674435>,  <27.509159, 34.739162, 25.597748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489603, 35.131256, 25.674435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303552, -0.168283, 0.937836,
		0.951560, 0.104048, -0.289324,
		-0.048892, 0.980232, 0.191715,
		27.474936, 35.425327, 25.731949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121861, 34.909866, 26.131479>,  <27.509159, 34.739162, 25.597748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121861, 34.909866, 26.131479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882423, 35.225986, 26.183800>,  <27.738762, 35.415661, 26.215193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882423, 35.225986, 26.183800>,  <28.121861, 34.909866, 26.131479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882423, 35.225986, 26.183800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298256, 0.068335, 0.952036,
		0.743459, 0.608894, -0.276618,
		-0.598592, 0.790303, 0.130802,
		27.702847, 35.463078, 26.223040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463976, 35.270912, 26.601839>,  <28.121861, 34.909866, 26.131479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463976, 35.270912, 26.601839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104692, 35.445423, 26.623299>,  <27.889122, 35.550129, 26.636173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104692, 35.445423, 26.623299>,  <28.463976, 35.270912, 26.601839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104692, 35.445423, 26.623299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062327, 0.005593, 0.998040,
		0.435125, 0.899794, -0.032216,
		-0.898210, 0.436280, 0.053647,
		27.835230, 35.576305, 26.639393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652451, 35.768299, 27.096117>,  <28.463976, 35.270912, 26.601839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652451, 35.768299, 27.096117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252541, 35.771252, 27.088150>,  <28.012594, 35.773022, 27.083370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252541, 35.771252, 27.088150>,  <28.652451, 35.768299, 27.096117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252541, 35.771252, 27.088150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018865, 0.122301, 0.992314,
		0.009757, 0.992466, -0.122134,
		-0.999774, 0.007378, -0.019916,
		27.952608, 35.773464, 27.082176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399878, 36.176842, 27.636404>,  <28.652451, 35.768299, 27.096117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399878, 36.176842, 27.636404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068264, 35.960224, 27.580643>,  <27.869295, 35.830254, 27.547186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068264, 35.960224, 27.580643>,  <28.399878, 36.176842, 27.636404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068264, 35.960224, 27.580643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183729, 0.028330, 0.982569,
		-0.528152, 0.840197, -0.122984,
		-0.829035, -0.541541, -0.139406,
		27.819553, 35.797760, 27.538820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244080, 36.917683, 27.582762>,  <28.399878, 36.176842, 27.636404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244080, 36.917683, 27.582762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586721, 37.114079, 27.646210>,  <28.792307, 37.231915, 27.684278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586721, 37.114079, 27.646210>,  <28.244080, 36.917683, 27.582762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586721, 37.114079, 27.646210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236782, -0.100929, -0.966306,
		-0.458438, 0.865299, -0.202714,
		0.856603, 0.490990, 0.158618,
		28.843702, 37.261375, 27.693794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304356, 37.415802, 27.048553>,  <28.244080, 36.917683, 27.582762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304356, 37.415802, 27.048553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674662, 37.368355, 27.192158>,  <28.896845, 37.339886, 27.278320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674662, 37.368355, 27.192158>,  <28.304356, 37.415802, 27.048553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674662, 37.368355, 27.192158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356115, -0.045503, -0.933333,
		0.127048, 0.991897, 0.000117,
		0.925765, -0.118620, 0.359011,
		28.952391, 37.332767, 27.299862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754747, 37.788544, 26.485720>,  <28.304356, 37.415802, 27.048553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754747, 37.788544, 26.485720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009226, 37.564819, 26.698296>,  <29.161913, 37.430584, 26.825842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009226, 37.564819, 26.698296>,  <28.754747, 37.788544, 26.485720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009226, 37.564819, 26.698296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444804, -0.296925, -0.844976,
		0.630399, 0.773959, 0.059878,
		0.636197, -0.559306, 0.531441,
		29.200085, 37.397026, 26.857727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485514, 38.093723, 26.463907>,  <28.754747, 37.788544, 26.485720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485514, 38.093723, 26.463907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477655, 37.700565, 26.537163>,  <29.472940, 37.464672, 26.581116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477655, 37.700565, 26.537163>,  <29.485514, 38.093723, 26.463907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477655, 37.700565, 26.537163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561479, -0.162406, -0.811397,
		0.827257, 0.086887, 0.555064,
		-0.019645, -0.982891, 0.183137,
		29.471762, 37.405697, 26.592104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053465, 37.906677, 26.153919>,  <29.485514, 38.093723, 26.463907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053465, 37.906677, 26.153919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861094, 37.560802, 26.211914>,  <29.745670, 37.353279, 26.246712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861094, 37.560802, 26.211914>,  <30.053465, 37.906677, 26.153919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861094, 37.560802, 26.211914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382550, -0.355747, -0.852702,
		0.788900, -0.354625, 0.501875,
		-0.480929, -0.864688, 0.144987,
		29.716814, 37.301395, 26.255409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519806, 37.362225, 26.121000>,  <30.053465, 37.906677, 26.153919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519806, 37.362225, 26.121000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175652, 37.171482, 26.049061>,  <29.969158, 37.057037, 26.005898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175652, 37.171482, 26.049061>,  <30.519806, 37.362225, 26.121000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175652, 37.171482, 26.049061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406551, -0.429387, -0.806439,
		0.307327, -0.766968, 0.563303,
		-0.860387, -0.476852, -0.179850,
		29.917536, 37.028427, 25.995106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710741, 36.757195, 26.086943>,  <30.519806, 37.362225, 26.121000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710741, 36.757195, 26.086943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363338, 36.754341, 25.888691>,  <30.154898, 36.752628, 25.769739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363338, 36.754341, 25.888691>,  <30.710741, 36.757195, 26.086943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363338, 36.754341, 25.888691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442196, -0.462946, -0.768208,
		-0.223972, -0.886358, 0.405224,
		-0.868504, -0.007131, -0.495631,
		30.102787, 36.752201, 25.740002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720648, 36.082783, 25.702227>,  <30.710741, 36.757195, 26.086943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720648, 36.082783, 25.702227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430698, 36.284988, 25.515030>,  <30.256729, 36.406311, 25.402712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430698, 36.284988, 25.515030>,  <30.720648, 36.082783, 25.702227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430698, 36.284988, 25.515030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380592, -0.272379, -0.883719,
		-0.574200, -0.818699, 0.005048,
		-0.724875, 0.505511, -0.467990,
		30.213236, 36.436642, 25.374632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278313, 35.569611, 25.401400>,  <30.720648, 36.082783, 25.702227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278313, 35.569611, 25.401400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277950, 35.917065, 25.203220>,  <30.277733, 36.125538, 25.084312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277950, 35.917065, 25.203220>,  <30.278313, 35.569611, 25.401400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277950, 35.917065, 25.203220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444778, -0.443396, -0.778185,
		-0.895640, -0.221069, -0.385950,
		-0.000904, 0.868636, -0.495450,
		30.277679, 36.177654, 25.054585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896162, 35.475224, 24.764336>,  <30.278313, 35.569611, 25.401400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896162, 35.475224, 24.764336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099638, 35.808754, 24.678570>,  <30.221724, 36.008873, 24.627110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099638, 35.808754, 24.678570>,  <29.896162, 35.475224, 24.764336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099638, 35.808754, 24.678570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356664, -0.430762, -0.828996,
		-0.783598, 0.345227, -0.516519,
		0.508688, 0.833824, -0.214414,
		30.252245, 36.058903, 24.614246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834030, 35.688000, 23.981798>,  <29.896162, 35.475224, 24.764336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834030, 35.688000, 23.981798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181057, 35.852581, 24.093540>,  <30.389273, 35.951328, 24.160585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181057, 35.852581, 24.093540>,  <29.834030, 35.688000, 23.981798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181057, 35.852581, 24.093540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380503, -0.187468, -0.905579,
		-0.320232, 0.891944, -0.319199,
		0.867565, 0.411452, 0.279354,
		30.441326, 35.976017, 24.177347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089676, 35.951817, 23.420799>,  <29.834030, 35.688000, 23.981798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089676, 35.951817, 23.420799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429764, 36.031364, 23.615765>,  <30.633818, 36.079094, 23.732744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429764, 36.031364, 23.615765>,  <30.089676, 35.951817, 23.420799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429764, 36.031364, 23.615765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484460, 0.066667, -0.872269,
		-0.205962, 0.977756, -0.039663,
		0.850222, 0.198869, 0.487415,
		30.684830, 36.091026, 23.761990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.870579, 38.347031, 31.253183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.257515, 38.245998, 31.261700>,  <28.489677, 38.185379, 31.266809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.257515, 38.245998, 31.261700>,  <27.870579, 38.347031, 31.253183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257515, 38.245998, 31.261700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071239, 0.190297, -0.979138,
		0.243260, 0.948678, 0.202076,
		0.967341, -0.252581, 0.021291,
		28.547718, 38.170223, 31.268087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171879, 38.896854, 30.808716>,  <27.870579, 38.347031, 31.253183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171879, 38.896854, 30.808716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.422987, 38.585911, 30.824837>,  <28.573652, 38.399345, 30.834509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.422987, 38.585911, 30.824837>,  <28.171879, 38.896854, 30.808716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422987, 38.585911, 30.824837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149769, 0.069818, -0.986253,
		0.763856, 0.625174, 0.160253,
		0.627769, -0.777356, 0.040301,
		28.611317, 38.352703, 30.836927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804502, 39.024357, 30.321606>,  <28.171879, 38.896854, 30.808716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804502, 39.024357, 30.321606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.809216, 38.627209, 30.369049>,  <28.812044, 38.388920, 30.397514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.809216, 38.627209, 30.369049>,  <28.804502, 39.024357, 30.321606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809216, 38.627209, 30.369049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075296, -0.117399, -0.990226,
		0.997091, 0.020600, 0.073376,
		0.011784, -0.992871, 0.118609,
		28.812750, 38.329346, 30.404633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465933, 38.811348, 29.899973>,  <28.804502, 39.024357, 30.321606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465933, 38.811348, 29.899973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.222723, 38.501137, 29.967922>,  <29.076797, 38.315010, 30.008692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.222723, 38.501137, 29.967922>,  <29.465933, 38.811348, 29.899973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222723, 38.501137, 29.967922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165325, -0.332960, -0.928335,
		0.776515, -0.536365, 0.330662,
		-0.608023, -0.775532, 0.169875,
		29.040316, 38.268478, 30.018885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804167, 38.180046, 29.567427>,  <29.465933, 38.811348, 29.899973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804167, 38.180046, 29.567427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.427015, 38.065544, 29.635586>,  <29.200724, 37.996841, 29.676481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.427015, 38.065544, 29.635586>,  <29.804167, 38.180046, 29.567427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427015, 38.065544, 29.635586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021488, -0.458180, -0.888600,
		0.332439, -0.841505, 0.425858,
		-0.942880, -0.286254, 0.170399,
		29.144152, 37.979668, 29.686705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884798, 37.571724, 29.175758>,  <29.804167, 38.180046, 29.567427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884798, 37.571724, 29.175758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.500725, 37.666267, 29.235336>,  <29.270281, 37.722992, 29.271084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.500725, 37.666267, 29.235336>,  <29.884798, 37.571724, 29.175758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500725, 37.666267, 29.235336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259362, -0.555998, -0.789682,
		-0.103835, -0.796869, 0.595162,
		-0.960182, 0.236359, 0.148945,
		29.212669, 37.737175, 29.280020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390867, 36.930492, 29.124880>,  <29.884798, 37.571724, 29.175758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390867, 36.930492, 29.124880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.202168, 37.263657, 29.009144>,  <29.088947, 37.463554, 28.939703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.202168, 37.263657, 29.009144>,  <29.390867, 36.930492, 29.124880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202168, 37.263657, 29.009144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120624, -0.386027, -0.914567,
		-0.873442, -0.396547, 0.282577,
		-0.471751, 0.832907, -0.289339,
		29.060642, 37.513527, 28.922342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069166, 36.646469, 28.630243>,  <29.390867, 36.930492, 29.124880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069166, 36.646469, 28.630243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.018831, 37.040714, 28.585110>,  <28.988630, 37.277260, 28.558029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.018831, 37.040714, 28.585110>,  <29.069166, 36.646469, 28.630243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018831, 37.040714, 28.585110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311296, -0.147224, -0.938840,
		-0.941945, -0.083015, 0.325343,
		-0.125836, 0.985613, -0.112835,
		28.981081, 37.336399, 28.551260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430687, 36.688828, 28.253639>,  <29.069166, 36.646469, 28.630243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430687, 36.688828, 28.253639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.641773, 37.021286, 28.183544>,  <28.768425, 37.220760, 28.141487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.641773, 37.021286, 28.183544>,  <28.430687, 36.688828, 28.253639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641773, 37.021286, 28.183544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076634, -0.158875, -0.984320,
		-0.845957, 0.532870, -0.020147,
		0.527716, 0.831149, -0.175238,
		28.800087, 37.270630, 28.130974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752531, 36.527229, 28.095285>,  <28.430687, 36.688828, 28.253639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752531, 36.527229, 28.095285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.655197, 36.146854, 28.018856>,  <27.596796, 35.918629, 27.972998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.655197, 36.146854, 28.018856>,  <27.752531, 36.527229, 28.095285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655197, 36.146854, 28.018856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015360, -0.193193, 0.981041,
		-0.969821, 0.241657, 0.032404,
		-0.243335, -0.950936, -0.191074,
		27.582197, 35.861572, 27.961535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105003, 36.382675, 28.419430>,  <27.752531, 36.527229, 28.095285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105003, 36.382675, 28.419430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.286825, 36.027447, 28.391998>,  <27.395918, 35.814308, 28.375540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.286825, 36.027447, 28.391998>,  <27.105003, 36.382675, 28.419430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286825, 36.027447, 28.391998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173423, -0.163759, 0.971137,
		-0.873673, -0.429542, -0.228450,
		0.454555, -0.888075, -0.068579,
		27.423191, 35.761024, 28.371424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690332, 36.010048, 28.753721>,  <27.105003, 36.382675, 28.419430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690332, 36.010048, 28.753721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.011740, 35.772133, 28.743977>,  <27.204584, 35.629383, 28.738129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.011740, 35.772133, 28.743977>,  <26.690332, 36.010048, 28.753721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011740, 35.772133, 28.743977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101243, -0.176876, 0.979012,
		-0.586609, -0.784186, -0.202341,
		0.803517, -0.594783, -0.024364,
		27.252794, 35.593697, 28.736668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556618, 35.293842, 29.064896>,  <26.690332, 36.010048, 28.753721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556618, 35.293842, 29.064896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.947313, 35.373295, 29.097202>,  <27.181730, 35.420967, 29.116587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.947313, 35.373295, 29.097202>,  <26.556618, 35.293842, 29.064896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947313, 35.373295, 29.097202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024576, -0.270488, 0.962409,
		0.213011, -0.942010, -0.259316,
		0.976741, 0.198631, 0.080768,
		27.240335, 35.432884, 29.121433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784058, 34.867950, 29.587067>,  <26.556618, 35.293842, 29.064896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784058, 34.867950, 29.587067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.131403, 35.064430, 29.559734>,  <27.339809, 35.182320, 29.543335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.131403, 35.064430, 29.559734>,  <26.784058, 34.867950, 29.587067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131403, 35.064430, 29.559734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211041, -0.241319, 0.947221,
		0.448784, -0.836952, -0.313215,
		0.868363, 0.491199, -0.068331,
		27.391912, 35.211788, 29.539234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280424, 34.395245, 29.914799>,  <26.784058, 34.867950, 29.587067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280424, 34.395245, 29.914799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.415855, 34.771618, 29.916119>,  <27.497114, 34.997440, 29.916910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.415855, 34.771618, 29.916119>,  <27.280424, 34.395245, 29.914799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415855, 34.771618, 29.916119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201395, -0.075893, 0.976566,
		0.919132, -0.329981, -0.215195,
		0.338579, 0.940932, 0.003299,
		27.517429, 35.053898, 29.917109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991102, 34.475132, 30.243073>,  <27.280424, 34.395245, 29.914799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991102, 34.475132, 30.243073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.861866, 34.853664, 30.246620>,  <27.784325, 35.080784, 30.248749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.861866, 34.853664, 30.246620>,  <27.991102, 34.475132, 30.243073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861866, 34.853664, 30.246620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230593, 0.069629, 0.970556,
		0.917846, 0.315621, -0.240713,
		-0.323088, 0.946327, 0.008871,
		27.764940, 35.137562, 30.249281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557625, 34.873138, 30.564064>,  <27.991102, 34.475132, 30.243073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557625, 34.873138, 30.564064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.237198, 35.111492, 30.586716>,  <28.044941, 35.254505, 30.600306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.237198, 35.111492, 30.586716>,  <28.557625, 34.873138, 30.564064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237198, 35.111492, 30.586716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171941, 0.138458, 0.975329,
		0.573346, 0.791042, -0.213371,
		-0.801069, 0.595888, 0.056628,
		27.996878, 35.290257, 30.603704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723505, 35.349979, 30.967321>,  <28.557625, 34.873138, 30.564064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723505, 35.349979, 30.967321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.323874, 35.357971, 30.982529>,  <28.084095, 35.362766, 30.991653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.323874, 35.357971, 30.982529>,  <28.723505, 35.349979, 30.967321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323874, 35.357971, 30.982529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038140, 0.005717, 0.999256,
		0.019745, 0.999784, -0.006474,
		-0.999077, 0.019977, 0.038019,
		28.024151, 35.363964, 30.993935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579542, 35.849697, 31.502678>,  <28.723505, 35.349979, 30.967321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579542, 35.849697, 31.502678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.258982, 35.612221, 31.473602>,  <28.066645, 35.469734, 31.456156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.258982, 35.612221, 31.473602>,  <28.579542, 35.849697, 31.502678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258982, 35.612221, 31.473602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091681, 0.001833, 0.995787,
		-0.591057, 0.804691, -0.055899,
		-0.801403, -0.593691, -0.072691,
		28.018560, 35.434113, 31.451796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168819, 36.153778, 32.002617>,  <28.579542, 35.849697, 31.502678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168819, 36.153778, 32.002617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.025007, 35.788071, 31.927944>,  <27.938721, 35.568645, 31.883139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.025007, 35.788071, 31.927944>,  <28.168819, 36.153778, 32.002617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025007, 35.788071, 31.927944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171539, -0.131898, 0.976308,
		-0.917231, 0.383036, -0.109411,
		-0.359530, -0.914268, -0.186686,
		27.917149, 35.513790, 31.871939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529593, 36.092201, 32.299786>,  <28.168819, 36.153778, 32.002617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529593, 36.092201, 32.299786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.645832, 35.712086, 32.255062>,  <27.715576, 35.484016, 32.228230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.645832, 35.712086, 32.255062>,  <27.529593, 36.092201, 32.299786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645832, 35.712086, 32.255062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222408, -0.180730, 0.958056,
		-0.930638, -0.253543, -0.263872,
		0.290598, -0.950291, -0.111804,
		27.733011, 35.426998, 32.221519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962021, 35.778534, 32.616230>,  <27.529593, 36.092201, 32.299786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962021, 35.778534, 32.616230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.271555, 35.526421, 32.591190>,  <27.457275, 35.375153, 32.576168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.271555, 35.526421, 32.591190>,  <26.962021, 35.778534, 32.616230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271555, 35.526421, 32.591190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120596, -0.243637, 0.962340,
		-0.621799, -0.737144, -0.264545,
		0.773836, -0.630285, -0.062597,
		27.503706, 35.337334, 32.572411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753969, 35.132458, 32.811077>,  <26.962021, 35.778534, 32.616230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753969, 35.132458, 32.811077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.149605, 35.129349, 32.869915>,  <27.386986, 35.127483, 32.905220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.149605, 35.129349, 32.869915>,  <26.753969, 35.132458, 32.811077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149605, 35.129349, 32.869915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147026, -0.113347, 0.982617,
		0.009038, -0.993525, -0.113253,
		0.989091, -0.007770, 0.147099,
		27.446333, 35.127018, 32.914043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.163399, 32.272469, 34.444374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023651, 32.643303, 34.390030>,  <32.939804, 32.865803, 34.357426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023651, 32.643303, 34.390030>,  <33.163399, 32.272469, 34.444374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023651, 32.643303, 34.390030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065421, -0.168777, -0.983481,
		-0.934698, -0.334711, 0.119617,
		-0.349370, 0.927083, -0.135859,
		32.918839, 32.921429, 34.349274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598366, 32.216629, 33.914562>,  <33.163399, 32.272469, 34.444374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598366, 32.216629, 33.914562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.701084, 32.603210, 33.912506>,  <32.762714, 32.835159, 33.911274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.701084, 32.603210, 33.912506>,  <32.598366, 32.216629, 33.914562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701084, 32.603210, 33.912506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126252, 0.028274, -0.991595,
		-0.958183, 0.255291, 0.129277,
		0.256800, 0.966451, -0.005139,
		32.778126, 32.893147, 33.910965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153477, 32.619526, 33.353683>,  <32.598366, 32.216629, 33.914562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153477, 32.619526, 33.353683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.485828, 32.822758, 33.444458>,  <32.685238, 32.944695, 33.498924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.485828, 32.822758, 33.444458>,  <32.153477, 32.619526, 33.353683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485828, 32.822758, 33.444458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093287, 0.274870, -0.956945,
		-0.548580, 0.816274, 0.180986,
		0.830877, 0.508078, 0.226936,
		32.735092, 32.975182, 33.512539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062321, 32.994717, 32.750069>,  <32.153477, 32.619526, 33.353683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062321, 32.994717, 32.750069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.422695, 33.076118, 32.903374>,  <32.638920, 33.124962, 32.995358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.422695, 33.076118, 32.903374>,  <32.062321, 32.994717, 32.750069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422695, 33.076118, 32.903374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327021, 0.262149, -0.907929,
		-0.285242, 0.943325, 0.169630,
		0.900941, 0.203508, 0.383263,
		32.692978, 33.137169, 33.018353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230911, 33.730312, 32.524635>,  <32.062321, 32.994717, 32.750069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230911, 33.730312, 32.524635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.562649, 33.524940, 32.612789>,  <32.761692, 33.401718, 32.665680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.562649, 33.524940, 32.612789>,  <32.230911, 33.730312, 32.524635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562649, 33.524940, 32.612789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361728, 0.192775, -0.912135,
		0.425836, 0.836196, 0.345600,
		0.829347, -0.513433, 0.220385,
		32.811455, 33.370911, 32.678905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801834, 34.116768, 32.394825>,  <32.230911, 33.730312, 32.524635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801834, 34.116768, 32.394825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927956, 33.737278, 32.385906>,  <33.003628, 33.509583, 32.380554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927956, 33.737278, 32.385906>,  <32.801834, 34.116768, 32.394825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927956, 33.737278, 32.385906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472126, 0.177202, -0.863537,
		0.823214, 0.261749, 0.503792,
		0.315303, -0.948729, -0.022296,
		33.022545, 33.452660, 32.379219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449364, 34.151939, 32.090210>,  <32.801834, 34.116768, 32.394825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449364, 34.151939, 32.090210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371056, 33.761173, 32.056019>,  <33.324070, 33.526714, 32.035503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371056, 33.761173, 32.056019>,  <33.449364, 34.151939, 32.090210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371056, 33.761173, 32.056019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361770, 0.009074, -0.932223,
		0.911481, -0.213423, 0.351643,
		-0.195767, -0.976918, -0.085481,
		33.312325, 33.468098, 32.030373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061020, 33.972908, 31.855711>,  <33.449364, 34.151939, 32.090210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061020, 33.972908, 31.855711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.816055, 33.676662, 31.745117>,  <33.669079, 33.498913, 31.678761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.816055, 33.676662, 31.745117>,  <34.061020, 33.972908, 31.855711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816055, 33.676662, 31.745117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574900, -0.177169, -0.798813,
		0.542630, -0.648149, 0.534280,
		-0.612407, -0.740617, -0.276483,
		33.632332, 33.454475, 31.662172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598965, 33.524746, 31.451458>,  <34.061020, 33.972908, 31.855711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598965, 33.524746, 31.451458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.226524, 33.412811, 31.357868>,  <34.003059, 33.345650, 31.301714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.226524, 33.412811, 31.357868>,  <34.598965, 33.524746, 31.451458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226524, 33.412811, 31.357868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328362, -0.363702, -0.871722,
		0.158839, -0.888490, 0.430530,
		-0.931101, -0.279833, -0.233977,
		33.947193, 33.328861, 31.287676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612675, 32.881893, 31.174322>,  <34.598965, 33.524746, 31.451458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612675, 32.881893, 31.174322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273254, 33.033005, 31.026134>,  <34.069603, 33.123672, 30.937222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273254, 33.033005, 31.026134>,  <34.612675, 32.881893, 31.174322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273254, 33.033005, 31.026134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307618, -0.217454, -0.926329,
		-0.430505, -0.899999, 0.068310,
		-0.848550, 0.377776, -0.370471,
		34.018688, 33.146336, 30.914993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494743, 32.424126, 30.728119>,  <34.612675, 32.881893, 31.174322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494743, 32.424126, 30.728119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281857, 32.751812, 30.642673>,  <34.154125, 32.948425, 30.591406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281857, 32.751812, 30.642673>,  <34.494743, 32.424126, 30.728119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281857, 32.751812, 30.642673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323327, -0.036512, -0.945583,
		-0.782436, -0.572321, -0.245443,
		-0.532215, 0.819217, -0.213615,
		34.122192, 32.997578, 30.578588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954529, 32.178177, 30.302450>,  <34.494743, 32.424126, 30.728119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954529, 32.178177, 30.302450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.956181, 32.570297, 30.223454>,  <33.957172, 32.805569, 30.176056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.956181, 32.570297, 30.223454>,  <33.954529, 32.178177, 30.302450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956181, 32.570297, 30.223454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030177, -0.197523, -0.979834,
		-0.999536, -0.001914, -0.030398,
		0.004129, 0.980296, -0.197489,
		33.957420, 32.864388, 30.164207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548084, 32.139950, 29.720524>,  <33.954529, 32.178177, 30.302450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548084, 32.139950, 29.720524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.758224, 32.480175, 29.711159>,  <33.884308, 32.684311, 29.705540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.758224, 32.480175, 29.711159>,  <33.548084, 32.139950, 29.720524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758224, 32.480175, 29.711159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020135, -0.015082, -0.999684,
		-0.850650, 0.525652, 0.009203,
		0.525347, 0.850566, -0.023414,
		33.915829, 32.735344, 29.704134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273144, 32.588158, 29.237825>,  <33.548084, 32.139950, 29.720524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273144, 32.588158, 29.237825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.635380, 32.757229, 29.251949>,  <33.852722, 32.858673, 29.260424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.635380, 32.757229, 29.251949>,  <33.273144, 32.588158, 29.237825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635380, 32.757229, 29.251949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004765, 0.093380, -0.995619,
		-0.424125, 0.901456, 0.086579,
		0.905591, 0.422679, 0.035309,
		33.907059, 32.884033, 29.262543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592373, 32.894020, 29.218140>,  <33.273144, 32.588158, 29.237825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592373, 32.894020, 29.218140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.263870, 32.682716, 29.131901>,  <32.066769, 32.555935, 29.080156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.263870, 32.682716, 29.131901>,  <32.592373, 32.894020, 29.218140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263870, 32.682716, 29.131901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179405, -0.119619, 0.976476,
		-0.541625, 0.840613, 0.003464,
		-0.821252, -0.528263, -0.215599,
		32.017494, 32.524239, 29.067221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006123, 33.145344, 29.646315>,  <32.592373, 32.894020, 29.218140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006123, 33.145344, 29.646315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898607, 32.771343, 29.553780>,  <31.834099, 32.546944, 29.498259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898607, 32.771343, 29.553780>,  <32.006123, 33.145344, 29.646315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898607, 32.771343, 29.553780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382531, -0.116801, 0.916530,
		-0.883981, 0.334846, -0.326274,
		-0.268788, -0.935005, -0.231339,
		31.817970, 32.490841, 29.484377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372730, 33.081161, 29.962360>,  <32.006123, 33.145344, 29.646315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372730, 33.081161, 29.962360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.479843, 32.700569, 29.901737>,  <31.544111, 32.472214, 29.865362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.479843, 32.700569, 29.901737>,  <31.372730, 33.081161, 29.962360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479843, 32.700569, 29.901737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449598, -0.262529, 0.853780,
		-0.852148, -0.160484, -0.498085,
		0.267780, -0.951485, -0.151560,
		31.560177, 32.415123, 29.856270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793091, 32.596916, 30.114155>,  <31.372730, 33.081161, 29.962360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793091, 32.596916, 30.114155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.049919, 32.292488, 30.151058>,  <31.204016, 32.109829, 30.173201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.049919, 32.292488, 30.151058>,  <30.793091, 32.596916, 30.114155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049919, 32.292488, 30.151058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488016, -0.312936, 0.814807,
		-0.591257, -0.568188, -0.572344,
		0.642071, -0.761074, 0.092259,
		31.242540, 32.064167, 30.178736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378986, 31.992371, 30.358677>,  <30.793091, 32.596916, 30.114155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378986, 31.992371, 30.358677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.757145, 31.892933, 30.442986>,  <30.984041, 31.833271, 30.493570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.757145, 31.892933, 30.442986>,  <30.378986, 31.992371, 30.358677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757145, 31.892933, 30.442986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299211, -0.405621, 0.863681,
		-0.129211, -0.879587, -0.457855,
		0.945398, -0.248593, 0.210771,
		31.040764, 31.818356, 30.506216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288898, 31.433363, 30.721621>,  <30.378986, 31.992371, 30.358677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288898, 31.433363, 30.721621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.656769, 31.550995, 30.825710>,  <30.877491, 31.621574, 30.888165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.656769, 31.550995, 30.825710>,  <30.288898, 31.433363, 30.721621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656769, 31.550995, 30.825710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188209, -0.251498, 0.949382,
		0.344638, -0.922099, -0.175948,
		0.919675, 0.294078, 0.260223,
		30.932671, 31.639217, 30.903776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594692, 30.891344, 31.132370>,  <30.288898, 31.433363, 30.721621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594692, 30.891344, 31.132370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.780109, 31.230385, 31.235672>,  <30.891359, 31.433809, 31.297653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.780109, 31.230385, 31.235672>,  <30.594692, 30.891344, 31.132370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780109, 31.230385, 31.235672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233267, -0.164447, 0.958407,
		0.854818, -0.504506, 0.121490,
		0.463543, 0.847603, 0.258257,
		30.919172, 31.484665, 31.313148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904619, 30.737604, 31.766436>,  <30.594692, 30.891344, 31.132370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904619, 30.737604, 31.766436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.924164, 31.137009, 31.776138>,  <30.935890, 31.376652, 31.781960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.924164, 31.137009, 31.776138>,  <30.904619, 30.737604, 31.766436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924164, 31.137009, 31.776138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023719, -0.025440, 0.999395,
		0.998524, -0.048257, -0.024927,
		0.048862, 0.998511, 0.024258,
		30.938822, 31.436562, 31.783415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447258, 30.969866, 32.232044>,  <30.904619, 30.737604, 31.766436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447258, 30.969866, 32.232044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.179705, 31.265415, 32.199402>,  <31.019173, 31.442745, 32.179817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.179705, 31.265415, 32.199402>,  <31.447258, 30.969866, 32.232044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179705, 31.265415, 32.199402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040450, 0.073445, 0.996479,
		0.742266, 0.669829, -0.019238,
		-0.668883, 0.738874, -0.081610,
		30.979040, 31.487078, 32.174919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701311, 31.467329, 32.727119>,  <31.447258, 30.969866, 32.232044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701311, 31.467329, 32.727119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312834, 31.539783, 32.665188>,  <31.079748, 31.583256, 32.628029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312834, 31.539783, 32.665188>,  <31.701311, 31.467329, 32.727119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312834, 31.539783, 32.665188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109976, 0.235694, 0.965585,
		0.211397, 0.954797, -0.208983,
		-0.971193, 0.181138, -0.154830,
		31.021477, 31.594126, 32.618740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510469, 32.174988, 32.874218>,  <31.701311, 31.467329, 32.727119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510469, 32.174988, 32.874218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.167074, 31.970612, 32.891815>,  <30.961037, 31.847986, 32.902374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.167074, 31.970612, 32.891815>,  <31.510469, 32.174988, 32.874218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167074, 31.970612, 32.891815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176873, 0.375515, 0.909783,
		-0.481364, 0.773258, -0.412747,
		-0.858490, -0.510941, 0.043991,
		30.909527, 31.817329, 32.905014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095623, 32.621368, 33.185772>,  <31.510469, 32.174988, 32.874218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095623, 32.621368, 33.185772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.919056, 32.266151, 33.237190>,  <30.813116, 32.053020, 33.268044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.919056, 32.266151, 33.237190>,  <31.095623, 32.621368, 33.185772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919056, 32.266151, 33.237190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240658, 0.255180, 0.936465,
		-0.864427, 0.382436, -0.326356,
		-0.441417, -0.888046, 0.128548,
		30.786631, 31.999737, 33.275753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369398, 32.736618, 33.355995>,  <31.095623, 32.621368, 33.185772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369398, 32.736618, 33.355995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463564, 32.379894, 33.510536>,  <30.520063, 32.165859, 33.603260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463564, 32.379894, 33.510536>,  <30.369398, 32.736618, 33.355995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463564, 32.379894, 33.510536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378885, 0.281859, 0.881477,
		-0.895001, -0.353892, -0.271539,
		0.235412, -0.891805, 0.386348,
		30.534187, 32.112354, 33.626442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737654, 32.444965, 33.779736>,  <30.369398, 32.736618, 33.355995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737654, 32.444965, 33.779736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.036627, 32.208233, 33.900448>,  <30.216011, 32.066193, 33.972878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.036627, 32.208233, 33.900448>,  <29.737654, 32.444965, 33.779736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036627, 32.208233, 33.900448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319636, 0.077859, 0.944336,
		-0.582388, -0.802290, -0.130977,
		0.747434, -0.591835, 0.301785,
		30.260857, 32.030682, 33.990982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290415, 31.822573, 33.562862>,  <29.737654, 32.444965, 33.779736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290415, 31.822573, 33.562862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.902262, 31.911953, 33.526146>,  <28.669369, 31.965580, 33.504116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.902262, 31.911953, 33.526146>,  <29.290415, 31.822573, 33.562862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902262, 31.911953, 33.526146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154119, 0.280061, -0.947530,
		-0.186018, -0.933614, -0.306204,
		-0.970384, 0.223450, -0.091791,
		28.611147, 31.978989, 33.498608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052803, 31.575499, 32.971001>,  <29.290415, 31.822573, 33.562862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052803, 31.575499, 32.971001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.787107, 31.865002, 33.045795>,  <28.627691, 32.038704, 33.090672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.787107, 31.865002, 33.045795>,  <29.052803, 31.575499, 32.971001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787107, 31.865002, 33.045795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020718, 0.267871, -0.963232,
		-0.747235, -0.635940, -0.192925,
		-0.664236, 0.723758, 0.186987,
		28.587837, 32.082130, 33.101891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659153, 31.421045, 32.389225>,  <29.052803, 31.575499, 32.971001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659153, 31.421045, 32.389225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.519909, 31.761719, 32.545918>,  <28.436363, 31.966124, 32.639935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.519909, 31.761719, 32.545918>,  <28.659153, 31.421045, 32.389225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519909, 31.761719, 32.545918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309544, 0.290000, -0.905584,
		-0.884874, -0.436501, 0.162682,
		-0.348111, 0.851685, 0.391730,
		28.415476, 32.017223, 32.663437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985493, 31.439936, 32.142097>,  <28.659153, 31.421045, 32.389225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985493, 31.439936, 32.142097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.119390, 31.806011, 32.231880>,  <28.199730, 32.025658, 32.285748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.119390, 31.806011, 32.231880>,  <27.985493, 31.439936, 32.142097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119390, 31.806011, 32.231880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305870, 0.330827, -0.892747,
		-0.891286, 0.230188, 0.390670,
		0.334744, 0.915187, 0.224454,
		28.219814, 32.080566, 32.299217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510414, 31.879015, 31.945026>,  <27.985493, 31.439936, 32.142097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510414, 31.879015, 31.945026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.843462, 32.100540, 31.947395>,  <28.043291, 32.233456, 31.948816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.843462, 32.100540, 31.947395>,  <27.510414, 31.879015, 31.945026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843462, 32.100540, 31.947395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247908, 0.382235, -0.890190,
		-0.495262, 0.739722, 0.455551,
		0.832621, 0.553812, 0.005923,
		28.093248, 32.266685, 31.949173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358276, 32.575901, 31.654032>,  <27.510414, 31.879015, 31.945026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358276, 32.575901, 31.654032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.753990, 32.546730, 31.603439>,  <27.991419, 32.529228, 31.573084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.753990, 32.546730, 31.603439>,  <27.358276, 32.575901, 31.654032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753990, 32.546730, 31.603439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097828, 0.311945, -0.945050,
		0.108376, 0.947297, 0.301468,
		0.989285, -0.072928, -0.126479,
		28.050776, 32.524853, 31.565496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531645, 33.186768, 31.317207>,  <27.358276, 32.575901, 31.654032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531645, 33.186768, 31.317207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.844149, 32.952801, 31.230030>,  <28.031651, 32.812420, 31.177723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.844149, 32.952801, 31.230030>,  <27.531645, 33.186768, 31.317207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844149, 32.952801, 31.230030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001796, 0.351259, -0.936277,
		0.624201, 0.731086, 0.275476,
		0.781262, -0.584920, -0.217943,
		28.078527, 32.777325, 31.164648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016169, 33.588226, 30.997423>,  <27.531645, 33.186768, 31.317207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016169, 33.588226, 30.997423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.097269, 33.207764, 30.904301>,  <28.145929, 32.979488, 30.848427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.097269, 33.207764, 30.904301>,  <28.016169, 33.588226, 30.997423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097269, 33.207764, 30.904301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224238, 0.276523, -0.934480,
		0.953211, 0.137261, 0.269349,
		0.202749, -0.951154, -0.232806,
		28.158094, 32.922417, 30.834459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653889, 33.675186, 30.669180>,  <28.016169, 33.588226, 30.997423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653889, 33.675186, 30.669180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.518858, 33.312222, 30.569069>,  <28.437840, 33.094440, 30.509003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.518858, 33.312222, 30.569069>,  <28.653889, 33.675186, 30.669180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518858, 33.312222, 30.569069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319544, 0.139622, -0.937229,
		0.885400, -0.396362, 0.242826,
		-0.337578, -0.907416, -0.250276,
		28.417585, 33.039997, 30.493986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156189, 33.380825, 30.252535>,  <28.653889, 33.675186, 30.669180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156189, 33.380825, 30.252535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.820066, 33.194698, 30.141277>,  <28.618393, 33.083023, 30.074522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.820066, 33.194698, 30.141277>,  <29.156189, 33.380825, 30.252535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820066, 33.194698, 30.141277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235934, 0.148030, -0.960428,
		0.488076, -0.872679, -0.014608,
		-0.840308, -0.465315, -0.278145,
		28.567974, 33.055103, 30.057835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380363, 33.001755, 29.668156>,  <29.156189, 33.380825, 30.252535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380363, 33.001755, 29.668156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.981886, 33.030441, 29.648346>,  <28.742800, 33.047653, 29.636459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.981886, 33.030441, 29.648346>,  <29.380363, 33.001755, 29.668156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981886, 33.030441, 29.648346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058934, 0.135640, -0.989004,
		-0.064216, -0.988159, -0.139351,
		-0.996194, 0.071722, -0.049525,
		28.683027, 33.051956, 29.633488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192087, 32.442333, 29.093859>,  <29.380363, 33.001755, 29.668156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192087, 32.442333, 29.093859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897633, 32.709061, 29.140266>,  <28.720961, 32.869095, 29.168112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897633, 32.709061, 29.140266>,  <29.192087, 32.442333, 29.093859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897633, 32.709061, 29.140266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021218, 0.194067, -0.980759,
		-0.676501, -0.719510, -0.157008,
		-0.736135, 0.666816, 0.116020,
		28.676792, 32.909107, 29.175072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725933, 32.222759, 28.542376>,  <29.192087, 32.442333, 29.093859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725933, 32.222759, 28.542376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.625875, 32.597088, 28.641705>,  <28.565842, 32.821686, 28.701302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.625875, 32.597088, 28.641705>,  <28.725933, 32.222759, 28.542376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625875, 32.597088, 28.641705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022053, 0.261918, -0.964838,
		-0.967958, -0.235872, -0.086154,
		-0.250143, 0.935823, 0.248324,
		28.550833, 32.877834, 28.716202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090012, 32.332207, 28.129761>,  <28.725933, 32.222759, 28.542376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090012, 32.332207, 28.129761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.287313, 32.662178, 28.240177>,  <28.405695, 32.860161, 28.306427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.287313, 32.662178, 28.240177>,  <28.090012, 32.332207, 28.129761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287313, 32.662178, 28.240177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101494, 0.260589, -0.960100,
		-0.863943, 0.501592, 0.044812,
		0.493256, 0.824924, 0.276043,
		28.435289, 32.909657, 28.322990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.377350, 33.428104, 13.990825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689476, 33.660095, 13.897248>,  <38.876751, 33.799290, 13.841103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689476, 33.660095, 13.897248>,  <38.377350, 33.428104, 13.990825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689476, 33.660095, 13.897248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358580, -0.108455, 0.927177,
		0.512374, -0.807378, -0.292599,
		0.780316, 0.579981, -0.233940,
		38.923573, 33.834091, 13.827066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979858, 33.074402, 14.329341>,  <38.377350, 33.428104, 13.990825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979858, 33.074402, 14.329341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.119102, 33.440014, 14.246043>,  <39.202648, 33.659382, 14.196065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.119102, 33.440014, 14.246043>,  <38.979858, 33.074402, 14.329341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119102, 33.440014, 14.246043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634636, -0.066282, 0.769963,
		0.689968, -0.400192, -0.603151,
		0.348111, 0.914031, -0.208244,
		39.223537, 33.714222, 14.183570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699802, 33.058945, 14.508653>,  <38.979858, 33.074402, 14.329341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699802, 33.058945, 14.508653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.607536, 33.446629, 14.543128>,  <39.552177, 33.679237, 14.563813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.607536, 33.446629, 14.543128>,  <39.699802, 33.058945, 14.508653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607536, 33.446629, 14.543128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470029, 0.033428, 0.882018,
		0.851978, 0.243961, -0.463267,
		-0.230665, 0.969209, 0.086189,
		39.538338, 33.737392, 14.568985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287117, 33.250725, 14.778302>,  <39.699802, 33.058945, 14.508653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287117, 33.250725, 14.778302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.046570, 33.552799, 14.882648>,  <39.902241, 33.734043, 14.945254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.046570, 33.552799, 14.882648>,  <40.287117, 33.250725, 14.778302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046570, 33.552799, 14.882648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475839, 0.076247, 0.876221,
		0.641819, 0.651062, -0.405199,
		-0.601370, 0.755185, 0.260863,
		39.866158, 33.779354, 14.960907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639580, 33.737057, 15.172835>,  <40.287117, 33.250725, 14.778302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639580, 33.737057, 15.172835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.257511, 33.782524, 15.282180>,  <40.028271, 33.809803, 15.347786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.257511, 33.782524, 15.282180>,  <40.639580, 33.737057, 15.172835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257511, 33.782524, 15.282180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255684, -0.148735, 0.955251,
		0.149237, 0.982323, 0.113006,
		-0.955172, 0.113665, 0.273361,
		39.970959, 33.816624, 15.364188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717747, 34.105816, 15.869706>,  <40.639580, 33.737057, 15.172835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717747, 34.105816, 15.869706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.350998, 33.951141, 15.830064>,  <40.130951, 33.858337, 15.806278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.350998, 33.951141, 15.830064>,  <40.717747, 34.105816, 15.869706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350998, 33.951141, 15.830064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018319, -0.207252, 0.978116,
		-0.398766, 0.898621, 0.182939,
		-0.916870, -0.386688, -0.099107,
		40.075935, 33.835136, 15.800332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217480, 34.502495, 16.397713>,  <40.717747, 34.105816, 15.869706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217480, 34.502495, 16.397713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.059441, 34.144249, 16.315964>,  <39.964615, 33.929302, 16.266914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.059441, 34.144249, 16.315964>,  <40.217480, 34.502495, 16.397713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059441, 34.144249, 16.315964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130486, -0.165500, 0.977539,
		-0.909323, 0.412895, -0.051476,
		-0.395102, -0.895616, -0.204370,
		39.940910, 33.875565, 16.254652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602169, 34.425369, 16.979942>,  <40.217480, 34.502495, 16.397713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602169, 34.425369, 16.979942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669579, 34.062386, 16.825996>,  <39.710022, 33.844597, 16.733629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669579, 34.062386, 16.825996>,  <39.602169, 34.425369, 16.979942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669579, 34.062386, 16.825996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076653, -0.401329, 0.912721,
		-0.982713, -0.124310, -0.137191,
		0.168519, -0.907459, -0.384863,
		39.720135, 33.790150, 16.710537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058636, 33.945675, 17.245247>,  <39.602169, 34.425369, 16.979942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058636, 33.945675, 17.245247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389606, 33.746704, 17.140991>,  <39.588188, 33.627323, 17.078438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389606, 33.746704, 17.140991>,  <39.058636, 33.945675, 17.245247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389606, 33.746704, 17.140991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001574, -0.466173, 0.884692,
		-0.561574, -0.731606, -0.386506,
		0.827425, -0.497429, -0.260639,
		39.637833, 33.597477, 17.062799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943214, 33.312634, 17.428032>,  <39.058636, 33.945675, 17.245247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943214, 33.312634, 17.428032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341557, 33.325508, 17.393986>,  <39.580563, 33.333233, 17.373558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341557, 33.325508, 17.393986>,  <38.943214, 33.312634, 17.428032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341557, 33.325508, 17.393986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090980, -0.371412, 0.924000,
		-0.001870, -0.927910, -0.372800,
		0.995851, 0.032189, -0.085116,
		39.640312, 33.335163, 17.368450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026329, 32.749069, 17.819628>,  <38.943214, 33.312634, 17.428032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026329, 32.749069, 17.819628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.398018, 32.884510, 17.760429>,  <39.621029, 32.965775, 17.724911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.398018, 32.884510, 17.760429>,  <39.026329, 32.749069, 17.819628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398018, 32.884510, 17.760429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297767, -0.448909, 0.842506,
		0.218836, -0.826940, -0.517958,
		0.929218, 0.338601, -0.147997,
		39.676785, 32.986092, 17.716030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495743, 32.153156, 17.926134>,  <39.026329, 32.749069, 17.819628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495743, 32.153156, 17.926134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.665859, 32.510609, 17.983475>,  <39.767929, 32.725082, 18.017879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.665859, 32.510609, 17.983475>,  <39.495743, 32.153156, 17.926134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665859, 32.510609, 17.983475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390067, -0.323901, 0.861937,
		0.816688, -0.310655, -0.486328,
		0.425288, 0.893634, 0.143350,
		39.793446, 32.778698, 18.026480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146545, 32.007774, 18.267368>,  <39.495743, 32.153156, 17.926134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146545, 32.007774, 18.267368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.088573, 32.397324, 18.337307>,  <40.053791, 32.631054, 18.379271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.088573, 32.397324, 18.337307>,  <40.146545, 32.007774, 18.267368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088573, 32.397324, 18.337307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421584, -0.099091, 0.901359,
		0.895133, 0.204343, -0.396208,
		-0.144926, 0.973871, 0.174848,
		40.045097, 32.689484, 18.389761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608097, 32.069054, 18.688263>,  <40.146545, 32.007774, 18.267368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608097, 32.069054, 18.688263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.388191, 32.399506, 18.737679>,  <40.256248, 32.597778, 18.767328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.388191, 32.399506, 18.737679>,  <40.608097, 32.069054, 18.688263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388191, 32.399506, 18.737679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289168, 0.049472, 0.955999,
		0.783672, 0.561298, -0.266090,
		-0.549764, 0.826134, 0.123539,
		40.223263, 32.647346, 18.774740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064732, 32.525303, 18.972645>,  <40.608097, 32.069054, 18.688263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064732, 32.525303, 18.972645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.688679, 32.615757, 19.074638>,  <40.463047, 32.670029, 19.135836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.688679, 32.615757, 19.074638>,  <41.064732, 32.525303, 18.972645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688679, 32.615757, 19.074638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291147, 0.143959, 0.945785,
		0.177168, 0.963400, -0.201178,
		-0.940130, 0.226135, 0.254986,
		40.406639, 32.683598, 19.151134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132996, 33.112713, 19.380697>,  <41.064732, 32.525303, 18.972645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132996, 33.112713, 19.380697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.759552, 32.995697, 19.463448>,  <40.535488, 32.925488, 19.513098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.759552, 32.995697, 19.463448>,  <41.132996, 33.112713, 19.380697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759552, 32.995697, 19.463448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180486, 0.114801, 0.976855,
		-0.309520, 0.949337, -0.054380,
		-0.933607, -0.292542, 0.206875,
		40.479469, 32.907936, 19.525511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899143, 33.485577, 19.947905>,  <41.132996, 33.112713, 19.380697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899143, 33.485577, 19.947905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.674164, 33.156307, 19.979000>,  <40.539177, 32.958744, 19.997658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.674164, 33.156307, 19.979000>,  <40.899143, 33.485577, 19.947905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674164, 33.156307, 19.979000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158476, -0.015050, 0.987248,
		-0.811505, 0.567593, 0.138918,
		-0.562446, -0.823172, 0.077736,
		40.505428, 32.909355, 20.002321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386410, 33.607445, 20.432144>,  <40.899143, 33.485577, 19.947905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386410, 33.607445, 20.432144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.410492, 33.208725, 20.411114>,  <40.424942, 32.969494, 20.398495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.410492, 33.208725, 20.411114>,  <40.386410, 33.607445, 20.432144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410492, 33.208725, 20.411114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201105, -0.063703, 0.977496,
		-0.977718, -0.048275, -0.204297,
		0.060203, -0.996800, -0.052576,
		40.428555, 32.909683, 20.395342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821983, 33.415295, 20.788183>,  <40.386410, 33.607445, 20.432144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821983, 33.415295, 20.788183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.041462, 33.080948, 20.781734>,  <40.173149, 32.880341, 20.777864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.041462, 33.080948, 20.781734>,  <39.821983, 33.415295, 20.788183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041462, 33.080948, 20.781734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261439, -0.189873, 0.946361,
		-0.794094, -0.515047, -0.322710,
		0.548694, -0.835868, -0.016123,
		40.206070, 32.830189, 20.776897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415386, 32.943062, 21.019341>,  <39.821983, 33.415295, 20.788183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415386, 32.943062, 21.019341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.780445, 32.809216, 21.113235>,  <39.999481, 32.728909, 21.169573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.780445, 32.809216, 21.113235>,  <39.415386, 32.943062, 21.019341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780445, 32.809216, 21.113235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215731, 0.093454, 0.971971,
		-0.347178, -0.937708, 0.013103,
		0.912649, -0.334620, 0.234737,
		40.054241, 32.708828, 21.183657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354286, 32.422298, 21.613218>,  <39.415386, 32.943062, 21.019341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354286, 32.422298, 21.613218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.712025, 32.600147, 21.633038>,  <39.926670, 32.706856, 21.644930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.712025, 32.600147, 21.633038>,  <39.354286, 32.422298, 21.613218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712025, 32.600147, 21.633038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164099, 0.223002, 0.960907,
		0.416190, -0.867515, 0.272403,
		0.894348, 0.444620, 0.049547,
		39.980328, 32.733532, 21.647902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545959, 32.430862, 21.657749>,  <39.354286, 32.422298, 21.613218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545959, 32.430862, 21.657749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.197460, 32.262943, 21.759487>,  <37.988361, 32.162193, 21.820530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.197460, 32.262943, 21.759487>,  <38.545959, 32.430862, 21.657749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197460, 32.262943, 21.759487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069462, -0.618421, -0.782771,
		0.485895, -0.664324, 0.567961,
		-0.871253, -0.419796, 0.254343,
		37.936085, 32.137005, 21.835791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657970, 31.652248, 21.774763>,  <38.545959, 32.430862, 21.657749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657970, 31.652248, 21.774763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.284801, 31.734657, 21.656639>,  <38.060902, 31.784103, 21.585764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.284801, 31.734657, 21.656639>,  <38.657970, 31.652248, 21.774763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284801, 31.734657, 21.656639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125806, -0.581950, -0.803435,
		-0.337383, -0.786695, 0.516995,
		-0.932923, 0.206024, -0.295311,
		38.004925, 31.796465, 21.568047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348595, 30.966427, 21.500296>,  <38.657970, 31.652248, 21.774763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348595, 30.966427, 21.500296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085136, 31.237099, 21.368668>,  <37.927059, 31.399502, 21.289692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085136, 31.237099, 21.368668>,  <38.348595, 30.966427, 21.500296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085136, 31.237099, 21.368668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100456, -0.512491, -0.852796,
		-0.745715, -0.528636, 0.405528,
		-0.658648, 0.676681, -0.329068,
		37.887543, 31.440104, 21.269947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935165, 30.565865, 21.156977>,  <38.348595, 30.966427, 21.500296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935165, 30.565865, 21.156977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888641, 30.934166, 21.008015>,  <37.860729, 31.155146, 20.918636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888641, 30.934166, 21.008015>,  <37.935165, 30.565865, 21.156977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888641, 30.934166, 21.008015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155785, -0.387223, -0.908729,
		-0.980920, -0.047677, 0.188477,
		-0.116308, 0.920753, -0.372407,
		37.853748, 31.210392, 20.896292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234978, 30.526260, 20.856232>,  <37.935165, 30.565865, 21.156977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234978, 30.526260, 20.856232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457291, 30.809471, 20.681965>,  <37.590679, 30.979399, 20.577404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457291, 30.809471, 20.681965>,  <37.234978, 30.526260, 20.856232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457291, 30.809471, 20.681965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299453, -0.318378, -0.899424,
		-0.775524, 0.630343, 0.035074,
		0.555778, 0.708028, -0.435668,
		37.624023, 31.021879, 20.551264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852962, 30.787487, 20.200970>,  <37.234978, 30.526260, 20.856232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852962, 30.787487, 20.200970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.228764, 30.920586, 20.168419>,  <37.454243, 31.000444, 20.148890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.228764, 30.920586, 20.168419>,  <36.852962, 30.787487, 20.200970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228764, 30.920586, 20.168419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023347, -0.174802, -0.984327,
		-0.341753, 0.926675, -0.156458,
		0.939500, 0.332744, -0.081375,
		37.510612, 31.020409, 20.144007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826035, 31.250448, 19.706806>,  <36.852962, 30.787487, 20.200970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826035, 31.250448, 19.706806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.216358, 31.162998, 19.707901>,  <37.450550, 31.110529, 19.708557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.216358, 31.162998, 19.707901>,  <36.826035, 31.250448, 19.706806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216358, 31.162998, 19.707901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034254, 0.140507, -0.989487,
		0.215943, 0.965640, 0.144596,
		0.975805, -0.218626, 0.002736,
		37.509098, 31.097410, 19.708721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095608, 31.886536, 19.464779>,  <36.826035, 31.250448, 19.706806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095608, 31.886536, 19.464779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.341290, 31.577515, 19.400379>,  <37.488697, 31.392101, 19.361738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.341290, 31.577515, 19.400379>,  <37.095608, 31.886536, 19.464779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341290, 31.577515, 19.400379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231051, 0.371123, -0.899379,
		0.754568, 0.515199, 0.406443,
		0.614200, -0.772552, -0.161000,
		37.525551, 31.345749, 19.352079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567688, 32.121468, 19.090105>,  <37.095608, 31.886536, 19.464779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567688, 32.121468, 19.090105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.605766, 31.728413, 19.026402>,  <37.628613, 31.492580, 18.988180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.605766, 31.728413, 19.026402>,  <37.567688, 32.121468, 19.090105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605766, 31.728413, 19.026402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339673, 0.182446, -0.922679,
		0.935714, 0.033738, 0.351143,
		0.095194, -0.982637, -0.159257,
		37.634323, 31.433622, 18.978624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163906, 32.077518, 18.733377>,  <37.567688, 32.121468, 19.090105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163906, 32.077518, 18.733377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.005524, 31.718456, 18.655994>,  <37.910492, 31.503017, 18.609566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.005524, 31.718456, 18.655994>,  <38.163906, 32.077518, 18.733377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005524, 31.718456, 18.655994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087616, 0.172781, -0.981056,
		0.914079, -0.405408, 0.010236,
		-0.395959, -0.897659, -0.193456,
		37.886738, 31.449158, 18.597958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638966, 31.666983, 18.369349>,  <38.163906, 32.077518, 18.733377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638966, 31.666983, 18.369349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.274933, 31.524460, 18.284687>,  <38.056515, 31.438946, 18.233891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.274933, 31.524460, 18.284687>,  <38.638966, 31.666983, 18.369349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274933, 31.524460, 18.284687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145182, 0.204239, -0.968095,
		0.388169, -0.911773, -0.134144,
		-0.910081, -0.356309, -0.211653,
		38.001907, 31.417568, 18.221191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695713, 31.439619, 17.723364>,  <38.638966, 31.666983, 18.369349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695713, 31.439619, 17.723364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.297737, 31.428181, 17.761894>,  <38.058952, 31.421318, 17.785013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.297737, 31.428181, 17.761894>,  <38.695713, 31.439619, 17.723364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297737, 31.428181, 17.761894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100164, 0.206021, -0.973408,
		0.007990, -0.978129, -0.207843,
		-0.994939, -0.028596, 0.096327,
		37.999256, 31.419601, 17.790792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345806, 30.954941, 17.098127>,  <38.695713, 31.439619, 17.723364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345806, 30.954941, 17.098127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.077110, 31.229790, 17.208855>,  <37.915894, 31.394699, 17.275291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.077110, 31.229790, 17.208855>,  <38.345806, 30.954941, 17.098127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077110, 31.229790, 17.208855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123552, 0.264527, -0.956431,
		-0.730410, -0.676676, -0.092799,
		-0.671741, 0.687121, 0.276818,
		37.875587, 31.435926, 17.291901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836449, 30.949703, 16.537210>,  <38.345806, 30.954941, 17.098127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836449, 30.949703, 16.537210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.753098, 31.290604, 16.729145>,  <37.703087, 31.495144, 16.844305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.753098, 31.290604, 16.729145>,  <37.836449, 30.949703, 16.537210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753098, 31.290604, 16.729145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203667, 0.442041, -0.873567,
		-0.956608, -0.279759, 0.081464,
		-0.208377, 0.852253, 0.479837,
		37.690586, 31.546280, 16.873096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227798, 31.281414, 16.189203>,  <37.836449, 30.949703, 16.537210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227798, 31.281414, 16.189203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.406975, 31.572010, 16.397648>,  <37.514481, 31.746368, 16.522715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.406975, 31.572010, 16.397648>,  <37.227798, 31.281414, 16.189203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406975, 31.572010, 16.397648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182396, 0.644859, -0.742219,
		-0.875259, 0.237423, 0.421369,
		0.447944, 0.726490, 0.521113,
		37.541359, 31.789957, 16.553982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796013, 31.889194, 16.215292>,  <37.227798, 31.281414, 16.189203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796013, 31.889194, 16.215292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.152309, 32.051926, 16.296364>,  <37.366085, 32.149563, 16.345007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.152309, 32.051926, 16.296364>,  <36.796013, 31.889194, 16.215292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152309, 32.051926, 16.296364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197953, 0.748638, -0.632736,
		-0.409146, 0.523481, 0.747373,
		0.890738, 0.406827, 0.202678,
		37.419529, 32.173973, 16.357166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636662, 32.614605, 16.234426>,  <36.796013, 31.889194, 16.215292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636662, 32.614605, 16.234426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.035152, 32.616474, 16.199783>,  <37.274246, 32.617596, 16.178997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.035152, 32.616474, 16.199783>,  <36.636662, 32.614605, 16.234426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035152, 32.616474, 16.199783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064576, 0.706551, -0.704710,
		0.057899, 0.707647, 0.704190,
		0.996232, 0.004672, -0.086606,
		37.334023, 32.617874, 16.173801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931515, 33.383881, 16.299578>,  <36.636662, 32.614605, 16.234426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931515, 33.383881, 16.299578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.159954, 33.143776, 16.075603>,  <37.297016, 32.999714, 15.941218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.159954, 33.143776, 16.075603>,  <36.931515, 33.383881, 16.299578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159954, 33.143776, 16.075603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073783, 0.716893, -0.693268,
		0.817558, 0.354612, 0.453706,
		0.571099, -0.600263, -0.559938,
		37.331284, 32.963696, 15.907622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330387, 33.909119, 15.987996>,  <36.931515, 33.383881, 16.299578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330387, 33.909119, 15.987996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.361603, 33.569798, 15.778502>,  <37.380333, 33.366207, 15.652806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.361603, 33.569798, 15.778502>,  <37.330387, 33.909119, 15.987996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361603, 33.569798, 15.778502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051026, 0.528046, -0.847681,
		0.995644, 0.039429, 0.084494,
		0.078040, -0.848300, -0.523734,
		37.385014, 33.315308, 15.621383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790268, 33.986549, 15.393902>,  <37.330387, 33.909119, 15.987996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790268, 33.986549, 15.393902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.581108, 33.662365, 15.288278>,  <37.455612, 33.467854, 15.224903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.581108, 33.662365, 15.288278>,  <37.790268, 33.986549, 15.393902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581108, 33.662365, 15.288278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031713, 0.328071, -0.944121,
		0.851806, -0.485304, -0.197250,
		-0.522897, -0.810463, -0.264062,
		37.424240, 33.419228, 15.209059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193989, 33.728325, 14.846327>,  <37.790268, 33.986549, 15.393902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193989, 33.728325, 14.846327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.812523, 33.608116, 14.852149>,  <37.583645, 33.535992, 14.855642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.812523, 33.608116, 14.852149>,  <38.193989, 33.728325, 14.846327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812523, 33.608116, 14.852149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165267, 0.482803, -0.859993,
		0.251414, -0.822551, -0.510098,
		-0.953665, -0.300517, 0.014557,
		37.526424, 33.517960, 14.856516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.859968, 34.554665, 33.260933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.205441, 34.754105, 33.290485>,  <27.412724, 34.873768, 33.308216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.205441, 34.754105, 33.290485>,  <26.859968, 34.554665, 33.260933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205441, 34.754105, 33.290485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013406, -0.123795, 0.992217,
		0.503864, -0.857947, -0.100235,
		0.863679, 0.498599, 0.073877,
		27.464544, 34.903683, 33.312649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139151, 34.204098, 33.771416>,  <26.859968, 34.554665, 33.260933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139151, 34.204098, 33.771416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.372623, 34.528820, 33.778118>,  <27.512707, 34.723656, 33.782139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.372623, 34.528820, 33.778118>,  <27.139151, 34.204098, 33.771416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372623, 34.528820, 33.778118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063222, -0.066007, 0.995814,
		0.809516, -0.580182, -0.089851,
		0.583684, 0.811808, 0.016753,
		27.547729, 34.772362, 33.783146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706167, 34.019104, 34.194302>,  <27.139151, 34.204098, 33.771416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706167, 34.019104, 34.194302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.644289, 34.413860, 34.212692>,  <27.607162, 34.650715, 34.223724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.644289, 34.413860, 34.212692>,  <27.706167, 34.019104, 34.194302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644289, 34.413860, 34.212692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066268, -0.036065, 0.997150,
		0.985737, 0.157300, -0.059820,
		-0.154695, 0.986892, 0.045974,
		27.597881, 34.709927, 34.226486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927498, 34.189480, 34.760544>,  <27.706167, 34.019104, 34.194302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927498, 34.189480, 34.760544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.699419, 34.515236, 34.717396>,  <27.562571, 34.710690, 34.691505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.699419, 34.515236, 34.717396>,  <27.927498, 34.189480, 34.760544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699419, 34.515236, 34.717396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218214, -0.023559, 0.975617,
		0.791994, 0.579835, 0.191145,
		-0.570200, 0.814393, -0.107870,
		27.528358, 34.759556, 34.685036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250885, 34.707462, 35.194313>,  <27.927498, 34.189480, 34.760544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250885, 34.707462, 35.194313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.877840, 34.843807, 35.146900>,  <27.654013, 34.925613, 35.118454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.877840, 34.843807, 35.146900>,  <28.250885, 34.707462, 35.194313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877840, 34.843807, 35.146900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072711, 0.144231, 0.986869,
		0.353481, 0.928984, -0.109727,
		-0.932611, 0.340861, -0.118530,
		27.598057, 34.946064, 35.111340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153265, 35.272259, 35.721962>,  <28.250885, 34.707462, 35.194313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153265, 35.272259, 35.721962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.790342, 35.127346, 35.636597>,  <27.572588, 35.040398, 35.585377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.790342, 35.127346, 35.636597>,  <28.153265, 35.272259, 35.721962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790342, 35.127346, 35.636597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249744, 0.056005, 0.966691,
		-0.338265, 0.930383, -0.141292,
		-0.907306, -0.362285, -0.213413,
		27.518150, 35.018661, 35.572575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675634, 35.762207, 36.010509>,  <28.153265, 35.272259, 35.721962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675634, 35.762207, 36.010509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.458422, 35.433464, 35.941616>,  <27.328094, 35.236217, 35.900280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.458422, 35.433464, 35.941616>,  <27.675634, 35.762207, 36.010509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458422, 35.433464, 35.941616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371413, 0.051130, 0.927059,
		-0.753107, 0.567390, -0.333015,
		-0.543031, -0.821860, -0.172230,
		27.295513, 35.186905, 35.889946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081690, 35.944675, 36.342484>,  <27.675634, 35.762207, 36.010509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081690, 35.944675, 36.342484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.096289, 35.547184, 36.300198>,  <27.105047, 35.308689, 36.274826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.096289, 35.547184, 36.300198>,  <27.081690, 35.944675, 36.342484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096289, 35.547184, 36.300198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314358, -0.111830, 0.942695,
		-0.948603, -0.001173, -0.316467,
		0.036497, -0.993727, -0.105713,
		27.107237, 35.249065, 36.268482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509459, 35.758381, 36.583393>,  <27.081690, 35.944675, 36.342484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509459, 35.758381, 36.583393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.735973, 35.428715, 36.580036>,  <26.871883, 35.230915, 36.578022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.735973, 35.428715, 36.580036>,  <26.509459, 35.758381, 36.583393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735973, 35.428715, 36.580036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215398, -0.157810, 0.963691,
		-0.795563, -0.543920, -0.266889,
		0.566288, -0.824164, -0.008388,
		26.905859, 35.181465, 36.577518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120432, 35.343189, 36.880371>,  <26.509459, 35.758381, 36.583393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120432, 35.343189, 36.880371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.480183, 35.172340, 36.917648>,  <26.696033, 35.069832, 36.940014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.480183, 35.172340, 36.917648>,  <26.120432, 35.343189, 36.880371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480183, 35.172340, 36.917648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134132, -0.066708, 0.988716,
		-0.416088, -0.901729, -0.117286,
		0.899377, -0.427125, 0.093194,
		26.749996, 35.044205, 36.945606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002045, 34.850849, 37.488506>,  <26.120432, 35.343189, 36.880371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002045, 34.850849, 37.488506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.392633, 34.923473, 37.441971>,  <26.626987, 34.967049, 37.414051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.392633, 34.923473, 37.441971>,  <26.002045, 34.850849, 37.488506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392633, 34.923473, 37.441971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131017, -0.071028, 0.988832,
		0.171268, -0.980812, -0.093144,
		0.976474, 0.181559, -0.116338,
		26.685575, 34.977940, 37.407070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420973, 34.311893, 37.720551>,  <26.002045, 34.850849, 37.488506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420973, 34.311893, 37.720551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.631170, 34.650711, 37.752480>,  <26.757290, 34.854000, 37.771637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.631170, 34.650711, 37.752480>,  <26.420973, 34.311893, 37.720551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631170, 34.650711, 37.752480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155561, -0.187900, 0.969791,
		0.836454, -0.497203, -0.230507,
		0.525496, 0.847044, 0.079824,
		26.788818, 34.904823, 37.776428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075476, 34.092705, 37.866352>,  <26.420973, 34.311893, 37.720551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075476, 34.092705, 37.866352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.994530, 34.459248, 38.004528>,  <26.945963, 34.679173, 38.087433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.994530, 34.459248, 38.004528>,  <27.075476, 34.092705, 37.866352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994530, 34.459248, 38.004528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111152, -0.328971, 0.937776,
		0.972982, 0.228169, -0.035284,
		-0.202364, 0.916361, 0.345445,
		26.933821, 34.734158, 38.108162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761724, 33.685989, 38.413746>,  <27.075476, 34.092705, 37.866352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761724, 33.685989, 38.413746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.782490, 33.292133, 38.480423>,  <26.794949, 33.055820, 38.520428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.782490, 33.292133, 38.480423>,  <26.761724, 33.685989, 38.413746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782490, 33.292133, 38.480423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077874, -0.162416, -0.983644,
		0.995611, 0.064046, 0.068246,
		0.051914, -0.984642, 0.166691,
		26.798063, 32.996742, 38.530430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120590, 33.411160, 39.023926>,  <26.761724, 33.685989, 38.413746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120590, 33.411160, 39.023926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.259132, 33.037674, 38.987648>,  <27.342257, 32.813583, 38.965881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.259132, 33.037674, 38.987648>,  <27.120590, 33.411160, 39.023926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259132, 33.037674, 38.987648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146975, 0.149493, -0.977778,
		0.926519, 0.325328, 0.189010,
		0.346354, -0.933710, -0.090693,
		27.363039, 32.757561, 38.960442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708591, 33.421642, 38.585388>,  <27.120590, 33.411160, 39.023926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708591, 33.421642, 38.585388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.632015, 33.029564, 38.565102>,  <27.586069, 32.794319, 38.552929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.632015, 33.029564, 38.565102>,  <27.708591, 33.421642, 38.585388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632015, 33.029564, 38.565102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205024, 0.010601, -0.978700,
		0.959852, -0.197761, 0.198934,
		-0.191440, -0.980193, -0.050721,
		27.574583, 32.735504, 38.549885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342472, 33.178028, 38.318775>,  <27.708591, 33.421642, 38.585388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342472, 33.178028, 38.318775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.045616, 32.917118, 38.257107>,  <27.867502, 32.760574, 38.220104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.045616, 32.917118, 38.257107>,  <28.342472, 33.178028, 38.318775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045616, 32.917118, 38.257107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303450, -0.121886, -0.945019,
		0.597619, -0.748120, 0.288389,
		-0.742139, -0.652273, -0.154175,
		27.822975, 32.721436, 38.210854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614056, 32.502747, 37.954884>,  <28.342472, 33.178028, 38.318775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614056, 32.502747, 37.954884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.218149, 32.496872, 37.898113>,  <27.980604, 32.493347, 37.864052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.218149, 32.496872, 37.898113>,  <28.614056, 32.502747, 37.954884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218149, 32.496872, 37.898113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140075, -0.289461, -0.946885,
		-0.027178, -0.957077, 0.288556,
		-0.989768, -0.014686, -0.141930,
		27.921219, 32.492466, 37.855534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427557, 31.781925, 37.586315>,  <28.614056, 32.502747, 37.954884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427557, 31.781925, 37.586315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.131660, 32.042778, 37.519974>,  <27.954123, 32.199291, 37.480167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.131660, 32.042778, 37.519974>,  <28.427557, 31.781925, 37.586315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131660, 32.042778, 37.519974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024094, -0.220650, -0.975055,
		-0.672460, -0.725284, 0.147512,
		-0.739741, 0.652132, -0.165853,
		27.909739, 32.238419, 37.470219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193314, 31.557362, 37.024982>,  <28.427557, 31.781925, 37.586315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193314, 31.557362, 37.024982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.999245, 31.906940, 37.036461>,  <27.882803, 32.116688, 37.043346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.999245, 31.906940, 37.036461>,  <28.193314, 31.557362, 37.024982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999245, 31.906940, 37.036461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126048, -0.037424, -0.991318,
		-0.865287, -0.484576, 0.128316,
		-0.485171, 0.873948, 0.028697,
		27.853693, 32.169125, 37.045071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564350, 31.453615, 36.702278>,  <28.193314, 31.557362, 37.024982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564350, 31.453615, 36.702278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.662018, 31.838463, 36.653770>,  <27.720619, 32.069370, 36.624664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.662018, 31.838463, 36.653770>,  <27.564350, 31.453615, 36.702278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662018, 31.838463, 36.653770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210014, -0.069622, -0.975216,
		-0.946718, 0.263586, 0.185059,
		0.244169, 0.962120, -0.121269,
		27.735268, 32.127098, 36.617390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112429, 31.669035, 36.243099>,  <27.564350, 31.453615, 36.702278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112429, 31.669035, 36.243099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.406384, 31.940208, 36.235680>,  <27.582756, 32.102913, 36.231228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.406384, 31.940208, 36.235680>,  <27.112429, 31.669035, 36.243099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406384, 31.940208, 36.235680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101155, 0.082527, -0.991442,
		-0.670601, 0.730476, 0.129224,
		0.734889, 0.677934, -0.018549,
		27.626850, 32.143589, 36.230114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947247, 32.016171, 35.732368>,  <27.112429, 31.669035, 36.243099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947247, 32.016171, 35.732368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.315100, 32.160378, 35.794724>,  <27.535812, 32.246902, 35.832138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.315100, 32.160378, 35.794724>,  <26.947247, 32.016171, 35.732368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315100, 32.160378, 35.794724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061700, 0.259366, -0.963806,
		-0.387902, 0.895966, 0.216278,
		0.919633, 0.360518, 0.155890,
		27.590990, 32.268532, 35.841492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032185, 32.610519, 35.264484>,  <26.947247, 32.016171, 35.732368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032185, 32.610519, 35.264484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.406042, 32.495773, 35.348534>,  <27.630356, 32.426926, 35.398964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.406042, 32.495773, 35.348534>,  <27.032185, 32.610519, 35.264484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406042, 32.495773, 35.348534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248525, 0.104365, -0.962987,
		0.254315, 0.952270, 0.168837,
		0.934644, -0.286862, 0.210121,
		27.686436, 32.409714, 35.411572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395254, 33.008762, 34.903126>,  <27.032185, 32.610519, 35.264484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395254, 33.008762, 34.903126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.662703, 32.724155, 34.989559>,  <27.823172, 32.553391, 35.041420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.662703, 32.724155, 34.989559>,  <27.395254, 33.008762, 34.903126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662703, 32.724155, 34.989559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391679, 0.089971, -0.915693,
		0.632088, 0.696886, 0.338842,
		0.668619, -0.711516, 0.216086,
		27.863289, 32.510700, 35.054386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947603, 33.228867, 34.553013>,  <27.395254, 33.008762, 34.903126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947603, 33.228867, 34.553013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.037346, 32.845398, 34.623005>,  <28.091192, 32.615318, 34.665001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.037346, 32.845398, 34.623005>,  <27.947603, 33.228867, 34.553013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037346, 32.845398, 34.623005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433892, -0.062512, -0.898794,
		0.872583, 0.277576, 0.401933,
		0.224358, -0.958668, 0.174985,
		28.104654, 32.557796, 34.675499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645653, 33.117664, 34.479740>,  <27.947603, 33.228867, 34.553013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645653, 33.117664, 34.479740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.493534, 32.756050, 34.401665>,  <28.402264, 32.539082, 34.354820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.493534, 32.756050, 34.401665>,  <28.645653, 33.117664, 34.479740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493534, 32.756050, 34.401665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208942, 0.121610, -0.970337,
		0.900954, -0.409797, 0.142643,
		-0.380295, -0.904034, -0.195188,
		28.379446, 32.484840, 34.343109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077784, 32.764442, 34.053848>,  <28.645653, 33.117664, 34.479740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077784, 32.764442, 34.053848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.718777, 32.594028, 34.008308>,  <28.503372, 32.491779, 33.980984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.718777, 32.594028, 34.008308>,  <29.077784, 32.764442, 34.053848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718777, 32.594028, 34.008308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049847, 0.158499, -0.986100,
		0.438156, -0.890715, -0.121018,
		-0.897516, -0.426033, -0.113847,
		28.449522, 32.466217, 33.974155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469620, 32.258888, 34.525948>,  <29.077784, 32.764442, 34.053848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469620, 32.258888, 34.525948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.844547, 32.121391, 34.503052>,  <30.069504, 32.038895, 34.489315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.844547, 32.121391, 34.503052>,  <29.469620, 32.258888, 34.525948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844547, 32.121391, 34.503052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061903, 0.002586, 0.998079,
		-0.342936, -0.939060, 0.023703,
		0.937317, -0.343744, -0.057243,
		30.125742, 32.018269, 34.485878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551048, 31.617506, 34.931942>,  <29.469620, 32.258888, 34.525948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551048, 31.617506, 34.931942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.912893, 31.784599, 34.898060>,  <30.130001, 31.884855, 34.877731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.912893, 31.784599, 34.898060>,  <29.551048, 31.617506, 34.931942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912893, 31.784599, 34.898060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051903, 0.089302, 0.994651,
		0.423063, -0.904171, 0.059102,
		0.904612, 0.417732, -0.084709,
		30.184277, 31.909920, 34.872646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955404, 31.300400, 35.586662>,  <29.551048, 31.617506, 34.931942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955404, 31.300400, 35.586662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.157185, 31.628075, 35.477512>,  <30.278254, 31.824680, 35.412022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.157185, 31.628075, 35.477512>,  <29.955404, 31.300400, 35.586662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157185, 31.628075, 35.477512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020997, 0.304297, 0.952346,
		0.863185, -0.486142, 0.136303,
		0.504452, 0.819188, -0.272872,
		30.308519, 31.873831, 35.395649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429323, 31.287409, 36.042721>,  <29.955404, 31.300400, 35.586662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429323, 31.287409, 36.042721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.452085, 31.661083, 35.901833>,  <30.465744, 31.885288, 35.817299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.452085, 31.661083, 35.901833>,  <30.429323, 31.287409, 36.042721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452085, 31.661083, 35.901833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037937, 0.350517, 0.935788,
		0.997658, -0.066616, -0.015493,
		0.056908, 0.934184, -0.352223,
		30.469158, 31.941338, 35.796165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987186, 31.500458, 36.219151>,  <30.429323, 31.287409, 36.042721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987186, 31.500458, 36.219151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.754465, 31.822582, 36.173584>,  <30.614832, 32.015858, 36.146244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.754465, 31.822582, 36.173584>,  <30.987186, 31.500458, 36.219151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754465, 31.822582, 36.173584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190621, 0.271172, 0.943466,
		0.790676, 0.527198, -0.311279,
		-0.581803, 0.805313, -0.113914,
		30.579924, 32.064175, 36.139408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344187, 32.137871, 36.507229>,  <30.987186, 31.500458, 36.219151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344187, 32.137871, 36.507229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.956503, 32.235432, 36.493725>,  <30.723892, 32.293968, 36.485622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.956503, 32.235432, 36.493725>,  <31.344187, 32.137871, 36.507229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956503, 32.235432, 36.493725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005482, 0.115717, 0.993267,
		0.246167, 0.962871, -0.110817,
		-0.969212, 0.243902, -0.033764,
		30.665739, 32.308601, 36.483597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244448, 32.758545, 36.764362>,  <31.344187, 32.137871, 36.507229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244448, 32.758545, 36.764362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.894341, 32.572857, 36.818623>,  <30.684277, 32.461445, 36.851181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.894341, 32.572857, 36.818623>,  <31.244448, 32.758545, 36.764362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894341, 32.572857, 36.818623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049487, 0.193048, 0.979940,
		-0.481097, 0.864425, -0.145996,
		-0.875269, -0.464221, 0.135653,
		30.631760, 32.433590, 36.859318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453337, 33.433804, 36.696407>,  <31.244448, 32.758545, 36.764362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453337, 33.433804, 36.696407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813078, 33.575935, 36.798317>,  <32.028923, 33.661213, 36.859463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813078, 33.575935, 36.798317>,  <31.453337, 33.433804, 36.696407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813078, 33.575935, 36.798317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230269, 0.110419, -0.966842,
		-0.371676, 0.928198, 0.017485,
		0.899351, 0.355326, 0.254775,
		32.082882, 33.682533, 36.874748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589460, 34.011894, 36.203281>,  <31.453337, 33.433804, 36.696407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589460, 34.011894, 36.203281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909559, 33.844742, 36.375317>,  <32.101620, 33.744450, 36.478539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909559, 33.844742, 36.375317>,  <31.589460, 34.011894, 36.203281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909559, 33.844742, 36.375317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431041, -0.097777, -0.897019,
		0.416900, 0.903225, 0.101877,
		0.800249, -0.417880, 0.430090,
		32.149635, 33.719379, 36.504345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195255, 34.404232, 35.832535>,  <31.589460, 34.011894, 36.203281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195255, 34.404232, 35.832535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336102, 34.062809, 35.986134>,  <32.420609, 33.857956, 36.078293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336102, 34.062809, 35.986134>,  <32.195255, 34.404232, 35.832535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336102, 34.062809, 35.986134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519881, -0.162798, -0.838583,
		0.778294, 0.494908, 0.386426,
		0.352112, -0.853559, 0.383998,
		32.441734, 33.806740, 36.101334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915638, 34.363148, 35.553944>,  <32.195255, 34.404232, 35.832535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915638, 34.363148, 35.553944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834877, 33.999245, 35.699039>,  <32.786423, 33.780903, 35.786098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834877, 33.999245, 35.699039>,  <32.915638, 34.363148, 35.553944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834877, 33.999245, 35.699039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459967, -0.415061, -0.784955,
		0.864677, 0.008368, 0.502258,
		-0.201899, -0.909755, 0.362743,
		32.774307, 33.726318, 35.807861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440392, 33.972607, 35.286926>,  <32.915638, 34.363148, 35.553944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440392, 33.972607, 35.286926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174938, 33.690300, 35.386105>,  <33.015667, 33.520916, 35.445614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174938, 33.690300, 35.386105>,  <33.440392, 33.972607, 35.286926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174938, 33.690300, 35.386105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238316, -0.513657, -0.824234,
		0.709077, -0.487903, 0.509078,
		-0.663638, -0.705767, 0.247947,
		32.975845, 33.478569, 35.460487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791454, 33.385727, 35.104919>,  <33.440392, 33.972607, 35.286926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791454, 33.385727, 35.104919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394424, 33.341129, 35.124413>,  <33.156208, 33.314373, 35.136108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394424, 33.341129, 35.124413>,  <33.791454, 33.385727, 35.104919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394424, 33.341129, 35.124413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010659, -0.319292, -0.947597,
		0.121208, -0.941075, 0.315731,
		-0.992570, -0.111491, 0.048732,
		33.096653, 33.307682, 35.139030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656315, 32.768726, 34.873856>,  <33.791454, 33.385727, 35.104919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656315, 32.768726, 34.873856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314911, 32.972870, 34.831776>,  <33.110069, 33.095356, 34.806526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314911, 32.972870, 34.831776>,  <33.656315, 32.768726, 34.873856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314911, 32.972870, 34.831776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008210, -0.188695, -0.982001,
		-0.521020, -0.839007, 0.156862,
		-0.853505, 0.510355, -0.105202,
		33.058861, 33.125977, 34.800217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.445484, 37.920174, 38.191643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.219677, 37.611328, 38.074917>,  <28.084192, 37.426022, 38.004883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.219677, 37.611328, 38.074917>,  <28.445484, 37.920174, 38.191643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219677, 37.611328, 38.074917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569774, -0.108717, -0.814578,
		0.597225, -0.626111, 0.501305,
		-0.564517, -0.772117, -0.291814,
		28.050322, 37.379692, 37.987373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922602, 37.344883, 37.901985>,  <28.445484, 37.920174, 38.191643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922602, 37.344883, 37.901985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.559174, 37.273197, 37.751053>,  <28.341116, 37.230186, 37.660492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.559174, 37.273197, 37.751053>,  <28.922602, 37.344883, 37.901985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559174, 37.273197, 37.751053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415956, -0.305031, -0.856701,
		0.038437, -0.935328, 0.351688,
		-0.908572, -0.179216, -0.377330,
		28.286602, 37.219433, 37.637856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955864, 36.604771, 37.570049>,  <28.922602, 37.344883, 37.901985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955864, 36.604771, 37.570049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.671501, 36.836128, 37.410011>,  <28.500883, 36.974941, 37.313988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.671501, 36.836128, 37.410011>,  <28.955864, 36.604771, 37.570049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671501, 36.836128, 37.410011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301322, -0.263542, -0.916379,
		-0.635467, -0.772017, 0.013071,
		-0.710905, 0.578390, -0.400098,
		28.458229, 37.009644, 37.289982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796455, 36.312874, 36.963524>,  <28.955864, 36.604771, 37.570049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796455, 36.312874, 36.963524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.631409, 36.674366, 36.917896>,  <28.532381, 36.891262, 36.890518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.631409, 36.674366, 36.917896>,  <28.796455, 36.312874, 36.963524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631409, 36.674366, 36.917896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322671, 0.027906, -0.946100,
		-0.851840, -0.427183, -0.303123,
		-0.412617, 0.903734, -0.114068,
		28.507624, 36.945488, 36.883675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419416, 36.282310, 36.236549>,  <28.796455, 36.312874, 36.963524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419416, 36.282310, 36.236549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.439169, 36.675293, 36.308475>,  <28.451021, 36.911083, 36.351631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.439169, 36.675293, 36.308475>,  <28.419416, 36.282310, 36.236549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439169, 36.675293, 36.308475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321585, 0.154812, -0.934139,
		-0.945592, 0.103956, -0.308300,
		0.049381, 0.982459, 0.179820,
		28.453983, 36.970032, 36.362423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996237, 36.606030, 35.817768>,  <28.419416, 36.282310, 36.236549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996237, 36.606030, 35.817768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.226606, 36.926140, 35.884541>,  <28.364828, 37.118206, 35.924606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.226606, 36.926140, 35.884541>,  <27.996237, 36.606030, 35.817768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226606, 36.926140, 35.884541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136362, 0.107299, -0.984831,
		-0.806051, 0.589951, -0.047331,
		0.575923, 0.800278, 0.166936,
		28.399384, 37.166222, 35.934620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739239, 37.064568, 35.400162>,  <27.996237, 36.606030, 35.817768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739239, 37.064568, 35.400162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.108557, 37.177868, 35.503929>,  <28.330147, 37.245850, 35.566189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.108557, 37.177868, 35.503929>,  <27.739239, 37.064568, 35.400162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108557, 37.177868, 35.503929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223875, 0.151945, -0.962701,
		-0.312105, 0.946932, 0.076876,
		0.923293, 0.283253, 0.259417,
		28.385544, 37.262844, 35.581753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906631, 37.786617, 35.181702>,  <27.739239, 37.064568, 35.400162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906631, 37.786617, 35.181702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.275734, 37.644562, 35.241566>,  <28.497196, 37.559330, 35.277485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.275734, 37.644562, 35.241566>,  <27.906631, 37.786617, 35.181702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275734, 37.644562, 35.241566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233402, 0.205986, -0.950312,
		0.306665, 0.911837, 0.272965,
		0.922757, -0.355138, 0.149656,
		28.552561, 37.538021, 35.286461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270052, 38.157856, 34.881935>,  <27.906631, 37.786617, 35.181702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270052, 38.157856, 34.881935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.553087, 37.875946, 34.902393>,  <28.722908, 37.706799, 34.914669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.553087, 37.875946, 34.902393>,  <28.270052, 38.157856, 34.881935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553087, 37.875946, 34.902393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423259, 0.364762, -0.829337,
		0.565839, 0.608476, 0.556403,
		0.707586, -0.704774, 0.051147,
		28.765364, 37.664513, 34.917736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837582, 38.464527, 34.614788>,  <28.270052, 38.157856, 34.881935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837582, 38.464527, 34.614788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.890905, 38.070099, 34.574986>,  <28.922899, 37.833443, 34.551105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.890905, 38.070099, 34.574986>,  <28.837582, 38.464527, 34.614788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890905, 38.070099, 34.574986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275199, 0.133281, -0.952104,
		0.952100, 0.099541, 0.289132,
		0.133309, -0.986067, -0.099503,
		28.930899, 37.774281, 34.545135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476137, 38.432598, 34.259769>,  <28.837582, 38.464527, 34.614788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476137, 38.432598, 34.259769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.311275, 38.076107, 34.184048>,  <29.212358, 37.862213, 34.138615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.311275, 38.076107, 34.184048>,  <29.476137, 38.432598, 34.259769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311275, 38.076107, 34.184048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383503, 0.018774, -0.923349,
		0.826470, -0.453163, 0.334052,
		-0.412156, -0.891230, -0.189306,
		29.187628, 37.808739, 34.127254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992880, 38.088943, 33.780121>,  <29.476137, 38.432598, 34.259769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992880, 38.088943, 33.780121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.631535, 37.917900, 33.766945>,  <29.414728, 37.815273, 33.759037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.631535, 37.917900, 33.766945>,  <29.992880, 38.088943, 33.780121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631535, 37.917900, 33.766945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029439, 0.014807, -0.999457,
		0.427866, -0.903842, -0.000788,
		-0.903363, -0.427610, -0.032944,
		29.360525, 37.789616, 33.757061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443453, 37.459770, 33.991577>,  <29.992880, 38.088943, 33.780121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443453, 37.459770, 33.991577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.840303, 37.499893, 34.021568>,  <31.078415, 37.523968, 34.039562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.840303, 37.499893, 34.021568>,  <30.443453, 37.459770, 33.991577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840303, 37.499893, 34.021568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092892, 0.187961, 0.977774,
		0.083982, -0.977041, 0.195799,
		0.992129, 0.100304, 0.074974,
		31.137941, 37.529984, 34.044060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598406, 37.166489, 34.561714>,  <30.443453, 37.459770, 33.991577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598406, 37.166489, 34.561714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.928221, 37.389618, 34.523834>,  <31.126110, 37.523495, 34.501106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.928221, 37.389618, 34.523834>,  <30.598406, 37.166489, 34.561714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928221, 37.389618, 34.523834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031294, 0.122154, 0.992018,
		0.564943, -0.820918, 0.083264,
		0.824537, 0.557828, -0.094700,
		31.175581, 37.556965, 34.495426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011538, 36.975883, 35.139565>,  <30.598406, 37.166489, 34.561714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011538, 36.975883, 35.139565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153006, 37.327591, 35.011944>,  <31.237886, 37.538616, 34.935371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153006, 37.327591, 35.011944>,  <31.011538, 36.975883, 35.139565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153006, 37.327591, 35.011944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057973, 0.361051, 0.930742,
		0.933572, -0.310679, 0.178667,
		0.353671, 0.879273, -0.319056,
		31.259108, 37.591373, 34.916225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772617, 37.063927, 35.162510>,  <31.011538, 36.975883, 35.139565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772617, 37.063927, 35.162510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.614576, 37.430374, 35.189686>,  <31.519751, 37.650242, 35.205994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.614576, 37.430374, 35.189686>,  <31.772617, 37.063927, 35.162510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614576, 37.430374, 35.189686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277667, 0.048594, 0.959448,
		0.875668, 0.397947, -0.273576,
		-0.395104, 0.916121, 0.067944,
		31.496046, 37.705212, 35.210068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294674, 37.510815, 35.480438>,  <31.772617, 37.063927, 35.162510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294674, 37.510815, 35.480438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.960493, 37.720226, 35.547291>,  <31.759985, 37.845875, 35.587402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.960493, 37.720226, 35.547291>,  <32.294674, 37.510815, 35.480438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960493, 37.720226, 35.547291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260553, 0.109565, 0.959222,
		0.483871, 0.844932, -0.227944,
		-0.835453, 0.523531, 0.167134,
		31.709858, 37.877285, 35.597431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430248, 37.839920, 36.115181>,  <32.294674, 37.510815, 35.480438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430248, 37.839920, 36.115181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042549, 37.936020, 36.093864>,  <31.809931, 37.993679, 36.081074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042549, 37.936020, 36.093864>,  <32.430248, 37.839920, 36.115181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042549, 37.936020, 36.093864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021380, 0.133507, 0.990817,
		0.245161, 0.961486, -0.124264,
		-0.969247, 0.240253, -0.053287,
		31.751776, 38.008095, 36.077877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394058, 38.409763, 36.434544>,  <32.430248, 37.839920, 36.115181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394058, 38.409763, 36.434544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.016186, 38.279430, 36.449623>,  <31.789463, 38.201233, 36.458672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.016186, 38.279430, 36.449623>,  <32.394058, 38.409763, 36.434544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016186, 38.279430, 36.449623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006610, 0.133823, 0.990983,
		-0.327936, 0.935910, -0.128573,
		-0.944677, -0.325829, 0.037699,
		31.732782, 38.181683, 36.460934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072273, 38.964848, 36.786114>,  <32.394058, 38.409763, 36.434544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072273, 38.964848, 36.786114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.892519, 38.608524, 36.813007>,  <31.784666, 38.394730, 36.829144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.892519, 38.608524, 36.813007>,  <32.072273, 38.964848, 36.786114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892519, 38.608524, 36.813007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089308, 0.030084, 0.995550,
		-0.888863, 0.453389, 0.066036,
		-0.449384, -0.890805, 0.067231,
		31.757704, 38.341282, 36.833176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809042, 38.935455, 37.501167>,  <32.072273, 38.964848, 36.786114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809042, 38.935455, 37.501167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.787066, 38.548733, 37.401352>,  <31.773880, 38.316700, 37.341465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.787066, 38.548733, 37.401352>,  <31.809042, 38.935455, 37.501167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787066, 38.548733, 37.401352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143706, -0.254966, 0.956212,
		-0.988094, 0.016674, 0.152944,
		-0.054939, -0.966806, -0.249535,
		31.770584, 38.258690, 37.326492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342930, 38.628479, 37.999290>,  <31.809042, 38.935455, 37.501167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342930, 38.628479, 37.999290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557699, 38.334755, 37.833157>,  <31.686562, 38.158520, 37.733475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557699, 38.334755, 37.833157>,  <31.342930, 38.628479, 37.999290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557699, 38.334755, 37.833157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134563, -0.411474, 0.901433,
		-0.832830, -0.539890, -0.122120,
		0.536924, -0.734308, -0.415337,
		31.718777, 38.114464, 37.708557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122749, 38.056087, 38.272343>,  <31.342930, 38.628479, 37.999290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122749, 38.056087, 38.272343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.471899, 37.909657, 38.143295>,  <31.681389, 37.821800, 38.065868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.471899, 37.909657, 38.143295>,  <31.122749, 38.056087, 38.272343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471899, 37.909657, 38.143295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118599, -0.482178, 0.868009,
		-0.473308, -0.795926, -0.377466,
		0.872877, -0.366069, -0.322615,
		31.733761, 37.799835, 38.046509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099228, 37.415077, 38.481239>,  <31.122749, 38.056087, 38.272343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099228, 37.415077, 38.481239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490547, 37.461124, 38.412323>,  <31.725338, 37.488754, 38.370975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490547, 37.461124, 38.412323>,  <31.099228, 37.415077, 38.481239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490547, 37.461124, 38.412323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207104, -0.569614, 0.795392,
		-0.006573, -0.813811, -0.581093,
		0.978297, 0.115118, -0.172287,
		31.784037, 37.495659, 38.360638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435656, 36.715961, 38.393970>,  <31.099228, 37.415077, 38.481239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435656, 36.715961, 38.393970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.729368, 36.967991, 38.495041>,  <31.905596, 37.119209, 38.555683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.729368, 36.967991, 38.495041>,  <31.435656, 36.715961, 38.393970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729368, 36.967991, 38.495041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368617, -0.682629, 0.630983,
		0.570048, -0.370177, -0.733495,
		0.734280, 0.630069, 0.252677,
		31.949652, 37.157013, 38.570843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134201, 36.390762, 38.502312>,  <31.435656, 36.715961, 38.393970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134201, 36.390762, 38.502312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.122528, 36.724213, 38.722935>,  <32.115524, 36.924282, 38.855309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.122528, 36.724213, 38.722935>,  <32.134201, 36.390762, 38.502312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122528, 36.724213, 38.722935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166792, -0.540000, 0.824973,
		0.985560, 0.116071, -0.123282,
		-0.029183, 0.833623, 0.551562,
		32.113773, 36.974300, 38.888405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784376, 35.803410, 38.909626>,  <32.134201, 36.390762, 38.502312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784376, 35.803410, 38.909626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.560865, 35.520779, 39.083298>,  <31.426758, 35.351200, 39.187500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.560865, 35.520779, 39.083298>,  <31.784376, 35.803410, 38.909626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560865, 35.520779, 39.083298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423561, -0.693258, -0.583086,
		0.712996, -0.141914, 0.686656,
		-0.558778, -0.706579, 0.434181,
		31.393232, 35.308804, 39.213551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314495, 35.222111, 39.016861>,  <31.784376, 35.803410, 38.909626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314495, 35.222111, 39.016861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.949583, 35.058907, 39.031132>,  <31.730637, 34.960983, 39.039696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.949583, 35.058907, 39.031132>,  <32.314495, 35.222111, 39.016861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949583, 35.058907, 39.031132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323178, -0.770635, -0.549252,
		0.251597, -0.489541, 0.834895,
		-0.912280, -0.408010, 0.035680,
		31.675900, 34.936504, 39.041836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445343, 34.638462, 39.304558>,  <32.314495, 35.222111, 39.016861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445343, 34.638462, 39.304558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.115021, 34.636944, 39.078979>,  <31.916828, 34.636032, 38.943630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.115021, 34.636944, 39.078979>,  <32.445343, 34.638462, 39.304558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115021, 34.636944, 39.078979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406729, -0.696715, -0.590897,
		-0.390670, -0.717338, 0.576891,
		-0.825802, -0.003792, -0.563948,
		31.867281, 34.635807, 38.909794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395557, 33.957661, 39.043755>,  <32.445343, 34.638462, 39.304558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395557, 33.957661, 39.043755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134899, 34.123058, 38.789391>,  <31.978504, 34.222298, 38.636772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134899, 34.123058, 38.789391>,  <32.395557, 33.957661, 39.043755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134899, 34.123058, 38.789391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316031, -0.614113, -0.723180,
		-0.689550, -0.672225, 0.269509,
		-0.651648, 0.413495, -0.635906,
		31.939404, 34.247105, 38.598618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171875, 33.354771, 38.662491>,  <32.395557, 33.957661, 39.043755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171875, 33.354771, 38.662491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.049320, 33.659168, 38.433754>,  <31.975786, 33.841808, 38.296513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.049320, 33.659168, 38.433754>,  <32.171875, 33.354771, 38.662491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049320, 33.659168, 38.433754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301834, -0.492071, -0.816555,
		-0.902785, -0.422787, -0.078929,
		-0.306391, 0.760998, -0.571846,
		31.957403, 33.887466, 38.262199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908689, 33.054482, 38.058964>,  <32.171875, 33.354771, 38.662491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908689, 33.054482, 38.058964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.948160, 33.426025, 37.916149>,  <31.971844, 33.648952, 37.830460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.948160, 33.426025, 37.916149>,  <31.908689, 33.054482, 38.058964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948160, 33.426025, 37.916149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405695, -0.365167, -0.837893,
		-0.908666, -0.062165, -0.412869,
		0.098678, 0.928864, -0.357035,
		31.977764, 33.704685, 37.809040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513893, 33.097469, 37.336868>,  <31.908689, 33.054482, 38.058964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513893, 33.097469, 37.336868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.792501, 33.383827, 37.356258>,  <31.959665, 33.555641, 37.367893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.792501, 33.383827, 37.356258>,  <31.513893, 33.097469, 37.336868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792501, 33.383827, 37.356258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376677, -0.307308, -0.873886,
		-0.610716, 0.626939, -0.483708,
		0.696520, 0.715898, 0.048476,
		32.001457, 33.598598, 37.370800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824989, 33.132679, 37.323460>,  <31.513893, 33.097469, 37.336868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824989, 33.132679, 37.323460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.647367, 32.775162, 37.298325>,  <30.540794, 32.560650, 37.283241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.647367, 32.775162, 37.298325>,  <30.824989, 33.132679, 37.323460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647367, 32.775162, 37.298325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091997, -0.024284, 0.995463,
		-0.891264, 0.447822, -0.071443,
		-0.444055, -0.893793, -0.062842,
		30.514151, 32.507023, 37.279472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204769, 33.209236, 37.682999>,  <30.824989, 33.132679, 37.323460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204769, 33.209236, 37.682999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.272600, 32.815216, 37.670856>,  <30.313299, 32.578804, 37.663570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.272600, 32.815216, 37.670856>,  <30.204769, 33.209236, 37.682999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272600, 32.815216, 37.670856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164568, -0.058675, 0.984619,
		-0.971679, -0.161975, -0.172058,
		0.169579, -0.985049, -0.030357,
		30.323473, 32.519703, 37.661751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600979, 32.952148, 37.986519>,  <30.204769, 33.209236, 37.682999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600979, 32.952148, 37.986519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.881424, 32.669235, 38.022724>,  <30.049692, 32.499489, 38.044449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.881424, 32.669235, 38.022724>,  <29.600979, 32.952148, 37.986519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881424, 32.669235, 38.022724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237889, -0.112350, 0.964773,
		-0.672196, -0.697948, -0.247025,
		0.701114, -0.707281, 0.090513,
		30.091759, 32.457050, 38.049877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253450, 32.349190, 38.427750>,  <29.600979, 32.952148, 37.986519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253450, 32.349190, 38.427750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.638659, 32.242847, 38.445240>,  <29.869783, 32.179043, 38.455734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.638659, 32.242847, 38.445240>,  <29.253450, 32.349190, 38.427750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638659, 32.242847, 38.445240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085720, -0.148481, 0.985193,
		-0.255430, -0.952509, -0.165779,
		0.963020, -0.265859, 0.043723,
		29.927565, 32.163090, 38.458355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253954, 31.750427, 38.689247>,  <29.253450, 32.349190, 38.427750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253954, 31.750427, 38.689247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.624619, 31.886631, 38.752934>,  <29.847017, 31.968353, 38.791145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.624619, 31.886631, 38.752934>,  <29.253954, 31.750427, 38.689247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624619, 31.886631, 38.752934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102207, -0.179364, 0.978459,
		0.361732, -0.922975, -0.131408,
		0.926663, 0.340509, 0.159217,
		29.902617, 31.988783, 38.800697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618423, 31.307182, 39.228638>,  <29.253954, 31.750427, 38.689247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618423, 31.307182, 39.228638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.850716, 31.632736, 39.236038>,  <29.990091, 31.828070, 39.240479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.850716, 31.632736, 39.236038>,  <29.618423, 31.307182, 39.228638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850716, 31.632736, 39.236038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020541, -0.037365, 0.999091,
		0.813838, -0.579821, -0.038417,
		0.580729, 0.813886, 0.018499,
		30.024935, 31.876902, 39.241589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113108, 31.230307, 39.675915>,  <29.618423, 31.307182, 39.228638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113108, 31.230307, 39.675915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141077, 31.629322, 39.673840>,  <30.157858, 31.868731, 39.672592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141077, 31.629322, 39.673840>,  <30.113108, 31.230307, 39.675915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141077, 31.629322, 39.673840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016125, 0.006332, 0.999850,
		0.997422, -0.069827, 0.016528,
		0.069921, 0.997539, -0.005190,
		30.162054, 31.928583, 39.672283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657894, 31.409418, 40.180275>,  <30.113108, 31.230307, 39.675915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657894, 31.409418, 40.180275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.408567, 31.719318, 40.137863>,  <30.258972, 31.905258, 40.112415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.408567, 31.719318, 40.137863>,  <30.657894, 31.409418, 40.180275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408567, 31.719318, 40.137863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094555, 0.059925, 0.993714,
		0.776233, 0.629423, 0.035904,
		-0.623315, 0.774749, -0.106031,
		30.221573, 31.951742, 40.106052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909039, 31.991224, 40.584702>,  <30.657894, 31.409418, 40.180275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909039, 31.991224, 40.584702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519053, 32.058247, 40.526237>,  <30.285061, 32.098461, 40.491158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519053, 32.058247, 40.526237>,  <30.909039, 31.991224, 40.584702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519053, 32.058247, 40.526237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134928, 0.076631, 0.987888,
		0.176728, 0.982879, -0.052105,
		-0.974967, 0.167557, -0.146161,
		30.226562, 32.108513, 40.482388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.915375, 33.407005, 24.094810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516682, 33.434906, 24.111118>,  <32.277466, 33.451645, 24.120903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516682, 33.434906, 24.111118>,  <32.915375, 33.407005, 24.094810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516682, 33.434906, 24.111118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026861, -0.189801, 0.981455,
		0.076193, 0.979342, 0.187307,
		-0.996731, 0.069749, 0.040768,
		32.217663, 33.455830, 24.123348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855587, 33.820053, 24.658531>,  <32.915375, 33.407005, 24.094810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855587, 33.820053, 24.658531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513763, 33.618744, 24.607239>,  <32.308670, 33.497959, 24.576464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513763, 33.618744, 24.607239>,  <32.855587, 33.820053, 24.658531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513763, 33.618744, 24.607239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044758, -0.174616, 0.983619,
		-0.517422, 0.846300, 0.126694,
		-0.854559, -0.503275, -0.128229,
		32.257397, 33.467762, 24.568769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535061, 33.983406, 25.235466>,  <32.855587, 33.820053, 24.658531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535061, 33.983406, 25.235466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263622, 33.710880, 25.125690>,  <32.100758, 33.547367, 25.059826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263622, 33.710880, 25.125690>,  <32.535061, 33.983406, 25.235466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263622, 33.710880, 25.125690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292493, -0.092075, 0.951825,
		-0.673758, 0.726180, -0.136796,
		-0.678600, -0.681311, -0.274439,
		32.060043, 33.506485, 25.043360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923420, 34.108265, 25.604830>,  <32.535061, 33.983406, 25.235466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923420, 34.108265, 25.604830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919264, 33.714867, 25.532578>,  <31.916769, 33.478828, 25.489225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919264, 33.714867, 25.532578>,  <31.923420, 34.108265, 25.604830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919264, 33.714867, 25.532578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239102, -0.172956, 0.955466,
		-0.970939, 0.053118, -0.233359,
		-0.010392, -0.983496, -0.180630,
		31.916145, 33.419819, 25.478388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273066, 33.934605, 25.893091>,  <31.923420, 34.108265, 25.604830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273066, 33.934605, 25.893091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517996, 33.618977, 25.873375>,  <31.664955, 33.429600, 25.861546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517996, 33.618977, 25.873375>,  <31.273066, 33.934605, 25.893091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517996, 33.618977, 25.873375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302202, -0.291211, 0.907673,
		-0.730568, -0.540897, -0.416774,
		0.612327, -0.789067, -0.049289,
		31.701694, 33.382256, 25.858589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905294, 33.359573, 26.338030>,  <31.273066, 33.934605, 25.893091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905294, 33.359573, 26.338030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279842, 33.228828, 26.286842>,  <31.504572, 33.150383, 26.256130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279842, 33.228828, 26.286842>,  <30.905294, 33.359573, 26.338030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279842, 33.228828, 26.286842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008636, -0.385915, 0.922494,
		-0.350906, -0.862692, -0.364182,
		0.936371, -0.326854, -0.127969,
		31.560753, 33.130772, 26.248451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858227, 32.706707, 26.544897>,  <30.905294, 33.359573, 26.338030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858227, 32.706707, 26.544897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249142, 32.790199, 26.559555>,  <31.483690, 32.840294, 26.568350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249142, 32.790199, 26.559555>,  <30.858227, 32.706707, 26.544897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249142, 32.790199, 26.559555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036263, -0.335079, 0.941492,
		0.208800, -0.918778, -0.335037,
		0.977286, 0.208733, 0.036647,
		31.542328, 32.852818, 26.570549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232523, 32.088966, 26.684187>,  <30.858227, 32.706707, 26.544897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232523, 32.088966, 26.684187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463770, 32.387638, 26.815792>,  <31.602518, 32.566841, 26.894756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463770, 32.387638, 26.815792>,  <31.232523, 32.088966, 26.684187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463770, 32.387638, 26.815792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101197, -0.465726, 0.879124,
		0.809655, -0.474940, -0.344806,
		0.578116, 0.746680, 0.329015,
		31.637205, 32.611641, 26.914497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627331, 31.762800, 27.094488>,  <31.232523, 32.088966, 26.684187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627331, 31.762800, 27.094488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719658, 32.130337, 27.222519>,  <31.775055, 32.350861, 27.299337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719658, 32.130337, 27.222519>,  <31.627331, 31.762800, 27.094488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719658, 32.130337, 27.222519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069789, -0.343748, 0.936465,
		0.970491, -0.193814, -0.143468,
		0.230817, 0.918843, 0.320079,
		31.788902, 32.405991, 27.318542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175381, 31.604837, 27.563801>,  <31.627331, 31.762800, 27.094488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175381, 31.604837, 27.563801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034878, 31.972729, 27.633900>,  <31.950575, 32.193462, 27.675959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034878, 31.972729, 27.633900>,  <32.175381, 31.604837, 27.563801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034878, 31.972729, 27.633900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111696, -0.144675, 0.983155,
		0.929591, 0.364918, -0.051912,
		-0.351260, 0.919731, 0.175249,
		31.929501, 32.248650, 27.686474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600670, 31.804962, 28.169209>,  <32.175381, 31.604837, 27.563801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600670, 31.804962, 28.169209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275272, 32.036942, 28.186584>,  <32.080032, 32.176128, 28.197010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275272, 32.036942, 28.186584>,  <32.600670, 31.804962, 28.169209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275272, 32.036942, 28.186584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120832, -0.241613, 0.962820,
		0.568882, 0.778000, 0.266627,
		-0.813494, 0.579948, 0.043442,
		32.031223, 32.210926, 28.199617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812294, 32.269558, 28.723957>,  <32.600670, 31.804962, 28.169209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812294, 32.269558, 28.723957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414467, 32.295609, 28.691460>,  <32.175770, 32.311237, 28.671961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414467, 32.295609, 28.691460>,  <32.812294, 32.269558, 28.723957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414467, 32.295609, 28.691460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098455, -0.334266, 0.937322,
		0.033885, 0.940226, 0.338861,
		-0.994565, 0.065123, -0.081243,
		32.116096, 32.315144, 28.667088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238186, 33.051102, 28.664173>,  <32.812294, 32.269558, 28.723957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238186, 33.051102, 28.664173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632408, 33.010685, 28.718525>,  <33.868942, 32.986435, 28.751137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632408, 33.010685, 28.718525>,  <33.238186, 33.051102, 28.664173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632408, 33.010685, 28.718525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146833, 0.110264, -0.982996,
		0.084340, 0.988753, 0.123508,
		0.985559, -0.101041, 0.135882,
		33.928078, 32.980373, 28.759289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456146, 33.399319, 28.153179>,  <33.238186, 33.051102, 28.664173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456146, 33.399319, 28.153179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784908, 33.212555, 28.283699>,  <33.982166, 33.100494, 28.362011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784908, 33.212555, 28.283699>,  <33.456146, 33.399319, 28.153179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784908, 33.212555, 28.283699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303704, -0.125431, -0.944474,
		0.481915, 0.875362, 0.038711,
		0.821901, -0.466913, 0.326298,
		34.031479, 33.072479, 28.381588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974312, 33.789783, 27.896427>,  <33.456146, 33.399319, 28.153179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974312, 33.789783, 27.896427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103130, 33.416573, 27.960602>,  <34.180420, 33.192646, 27.999107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103130, 33.416573, 27.960602>,  <33.974312, 33.789783, 27.896427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103130, 33.416573, 27.960602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265619, -0.073612, -0.961264,
		0.908698, 0.352187, 0.224124,
		0.322046, -0.933030, 0.160439,
		34.199745, 33.136665, 28.008734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671223, 33.779728, 27.544159>,  <33.974312, 33.789783, 27.896427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671223, 33.779728, 27.544159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563686, 33.394711, 27.558208>,  <34.499165, 33.163700, 27.566639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563686, 33.394711, 27.558208>,  <34.671223, 33.779728, 27.544159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563686, 33.394711, 27.558208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325185, -0.125030, -0.937348,
		0.906632, -0.240571, 0.346618,
		-0.268836, -0.962545, 0.035126,
		34.483036, 33.105946, 27.568747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031448, 33.626678, 27.079945>,  <34.671223, 33.779728, 27.544159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031448, 33.626678, 27.079945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833351, 33.286842, 27.152527>,  <34.714493, 33.082939, 27.196075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833351, 33.286842, 27.152527>,  <35.031448, 33.626678, 27.079945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833351, 33.286842, 27.152527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173636, -0.301456, -0.937537,
		0.851224, -0.432804, 0.296814,
		-0.495246, -0.849591, 0.181456,
		34.684776, 33.031963, 27.206964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457344, 33.083080, 26.976149>,  <35.031448, 33.626678, 27.079945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457344, 33.083080, 26.976149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079014, 32.966885, 26.918148>,  <34.852016, 32.897167, 26.883348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079014, 32.966885, 26.918148>,  <35.457344, 33.083080, 26.976149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079014, 32.966885, 26.918148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200092, -0.169841, -0.964944,
		0.255677, -0.941685, 0.218764,
		-0.945829, -0.290487, -0.145000,
		34.795265, 32.879738, 26.874649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372845, 32.484161, 26.572315>,  <35.457344, 33.083080, 26.976149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372845, 32.484161, 26.572315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007332, 32.622509, 26.487103>,  <34.788025, 32.705517, 26.435976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007332, 32.622509, 26.487103>,  <35.372845, 32.484161, 26.572315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007332, 32.622509, 26.487103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179295, -0.127169, -0.975542,
		-0.364504, -0.929624, 0.054191,
		-0.913778, 0.345872, -0.213030,
		34.733200, 32.726269, 26.423193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061218, 32.004066, 26.104746>,  <35.372845, 32.484161, 26.572315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061218, 32.004066, 26.104746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830997, 32.327190, 26.053864>,  <34.692863, 32.521065, 26.023335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830997, 32.327190, 26.053864>,  <35.061218, 32.004066, 26.104746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830997, 32.327190, 26.053864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086074, -0.094844, -0.991764,
		-0.813221, -0.581764, -0.014944,
		-0.575555, 0.807809, -0.127204,
		34.658329, 32.569534, 26.015703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597954, 31.895071, 25.568676>,  <35.061218, 32.004066, 26.104746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597954, 31.895071, 25.568676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562302, 32.293053, 25.587101>,  <34.540913, 32.531841, 25.598156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562302, 32.293053, 25.587101>,  <34.597954, 31.895071, 25.568676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562302, 32.293053, 25.587101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105087, 0.055382, -0.992920,
		-0.990461, -0.083656, -0.109493,
		-0.089127, 0.994954, 0.046062,
		34.535564, 32.591537, 25.600920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140877, 32.117649, 24.936535>,  <34.597954, 31.895071, 25.568676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140877, 32.117649, 24.936535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346844, 32.441360, 25.049618>,  <34.470425, 32.635590, 25.117468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346844, 32.441360, 25.049618>,  <34.140877, 32.117649, 24.936535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346844, 32.441360, 25.049618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072237, 0.287653, -0.955007,
		-0.854192, 0.512170, 0.089656,
		0.514915, 0.809283, 0.282708,
		34.501320, 32.684147, 25.134430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788425, 32.835018, 24.731686>,  <34.140877, 32.117649, 24.936535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788425, 32.835018, 24.731686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176319, 32.905960, 24.798813>,  <34.409054, 32.948524, 24.839088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176319, 32.905960, 24.798813>,  <33.788425, 32.835018, 24.731686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176319, 32.905960, 24.798813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106237, 0.312355, -0.944006,
		-0.219847, 0.933262, 0.284058,
		0.969732, 0.177359, 0.167817,
		34.467239, 32.959167, 24.849157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980522, 33.471588, 24.434978>,  <33.788425, 32.835018, 24.731686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980522, 33.471588, 24.434978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348522, 33.321445, 24.480080>,  <34.569321, 33.231361, 24.507141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348522, 33.321445, 24.480080>,  <33.980522, 33.471588, 24.434978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348522, 33.321445, 24.480080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257677, 0.362522, -0.895646,
		0.295310, 0.853045, 0.430239,
		0.919997, -0.375356, 0.112754,
		34.624523, 33.208839, 24.513906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581604, 33.956909, 24.446081>,  <33.980522, 33.471588, 24.434978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581604, 33.956909, 24.446081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683289, 33.598175, 24.301270>,  <34.744297, 33.382935, 24.214382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683289, 33.598175, 24.301270>,  <34.581604, 33.956909, 24.446081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683289, 33.598175, 24.301270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301617, 0.429171, -0.851375,
		0.918915, 0.107233, 0.379600,
		0.254209, -0.896835, -0.362028,
		34.759552, 33.329124, 24.192661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972977, 34.225792, 23.949911>,  <34.581604, 33.956909, 24.446081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972977, 34.225792, 23.949911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016514, 33.831707, 23.896969>,  <35.042637, 33.595257, 23.865204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016514, 33.831707, 23.896969>,  <34.972977, 34.225792, 23.949911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016514, 33.831707, 23.896969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220302, 0.153742, -0.963240,
		0.969340, 0.075685, 0.233777,
		0.108844, -0.985208, -0.132355,
		35.049168, 33.536144, 23.857262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297810, 34.895699, 24.139664>,  <34.972977, 34.225792, 23.949911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297810, 34.895699, 24.139664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361343, 35.161823, 23.847874>,  <35.399464, 35.321499, 23.672800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361343, 35.161823, 23.847874>,  <35.297810, 34.895699, 24.139664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361343, 35.161823, 23.847874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981243, 0.024614, -0.191200,
		-0.109252, 0.746161, 0.656740,
		0.158831, 0.665311, -0.729476,
		35.408993, 35.361416, 23.629030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778633, 35.420139, 24.228006>,  <35.297810, 34.895699, 24.139664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778633, 35.420139, 24.228006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918411, 35.397804, 23.853889>,  <35.002277, 35.384403, 23.629419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918411, 35.397804, 23.853889>,  <34.778633, 35.420139, 24.228006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918411, 35.397804, 23.853889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936954, -0.023416, -0.348667,
		-0.002433, 0.998165, -0.060499,
		0.349444, -0.055836, -0.935292,
		35.023243, 35.381054, 23.573301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107479, 35.668888, 24.006594>,  <34.778633, 35.420139, 24.228006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107479, 35.668888, 24.006594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720200, 35.768738, 23.999821>,  <33.487831, 35.828648, 23.995756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720200, 35.768738, 23.999821>,  <34.107479, 35.668888, 24.006594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720200, 35.768738, 23.999821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000260, 0.066680, 0.997774,
		0.250196, 0.966045, -0.064495,
		-0.968195, 0.249622, -0.016934,
		33.429741, 35.843624, 23.994741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946793, 36.393631, 24.325785>,  <34.107479, 35.668888, 24.006594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946793, 36.393631, 24.325785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663296, 36.114483, 24.367073>,  <33.493198, 35.946995, 24.391846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663296, 36.114483, 24.367073>,  <33.946793, 36.393631, 24.325785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663296, 36.114483, 24.367073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056780, 0.202272, 0.977682,
		-0.703178, 0.687065, -0.182985,
		-0.708743, -0.697874, 0.103222,
		33.450672, 35.905121, 24.398039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491508, 36.688492, 24.633291>,  <33.946793, 36.393631, 24.325785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491508, 36.688492, 24.633291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410522, 36.302761, 24.701515>,  <33.361931, 36.071323, 24.742449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410522, 36.302761, 24.701515>,  <33.491508, 36.688492, 24.633291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410522, 36.302761, 24.701515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182507, 0.208269, 0.960893,
		-0.962133, 0.163417, -0.218162,
		-0.202462, -0.964323, 0.170558,
		33.349785, 36.013466, 24.752682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936066, 36.689075, 25.164717>,  <33.491508, 36.688492, 24.633291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936066, 36.689075, 25.164717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056290, 36.307571, 25.165775>,  <33.128426, 36.078671, 25.166410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056290, 36.307571, 25.165775>,  <32.936066, 36.689075, 25.164717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056290, 36.307571, 25.165775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267155, -0.081526, 0.960199,
		-0.915582, -0.289307, -0.279305,
		0.300562, -0.953759, 0.002646,
		33.146458, 36.021442, 25.166569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436314, 36.290390, 25.442944>,  <32.936066, 36.689075, 25.164717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436314, 36.290390, 25.442944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771179, 36.081142, 25.506824>,  <32.972099, 35.955593, 25.545153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771179, 36.081142, 25.506824>,  <32.436314, 36.290390, 25.442944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771179, 36.081142, 25.506824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286068, -0.169909, 0.943025,
		-0.466178, -0.835152, -0.291889,
		0.837164, -0.523117, 0.159703,
		33.022327, 35.924206, 25.554735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286228, 35.816448, 26.025707>,  <32.436314, 36.290390, 25.442944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286228, 35.816448, 26.025707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682571, 35.765488, 26.007984>,  <32.920380, 35.734913, 25.997351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682571, 35.765488, 26.007984>,  <32.286228, 35.816448, 26.025707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682571, 35.765488, 26.007984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048785, 0.032235, 0.998289,
		-0.125758, -0.991327, 0.038156,
		0.990861, -0.127405, -0.044308,
		32.979828, 35.727268, 25.994692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453514, 35.253887, 26.512133>,  <32.286228, 35.816448, 26.025707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453514, 35.253887, 26.512133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785118, 35.472141, 26.463108>,  <32.984081, 35.603096, 26.433693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785118, 35.472141, 26.463108>,  <32.453514, 35.253887, 26.512133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785118, 35.472141, 26.463108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026901, 0.179999, 0.983299,
		0.558586, -0.818462, 0.134543,
		0.829010, 0.545638, -0.122563,
		33.033821, 35.635834, 26.426340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078255, 34.938663, 26.885796>,  <32.453514, 35.253887, 26.512133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078255, 34.938663, 26.885796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137367, 35.332222, 26.845589>,  <33.172836, 35.568359, 26.821465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137367, 35.332222, 26.845589>,  <33.078255, 34.938663, 26.885796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137367, 35.332222, 26.845589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117588, 0.083435, 0.989551,
		0.982005, -0.158056, -0.103364,
		0.147780, 0.983899, -0.100519,
		33.181702, 35.627392, 26.815434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531010, 34.997902, 27.379288>,  <33.078255, 34.938663, 26.885796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531010, 34.997902, 27.379288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369202, 35.358887, 27.320053>,  <33.272118, 35.575478, 27.284512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369202, 35.358887, 27.320053>,  <33.531010, 34.997902, 27.379288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369202, 35.358887, 27.320053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013992, 0.168016, 0.985685,
		0.914422, 0.396657, -0.080593,
		-0.404520, 0.902460, -0.148087,
		33.247845, 35.629623, 27.275627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854900, 35.390514, 27.823055>,  <33.531010, 34.997902, 27.379288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854900, 35.390514, 27.823055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548649, 35.632786, 27.736374>,  <33.364899, 35.778149, 27.684364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548649, 35.632786, 27.736374>,  <33.854900, 35.390514, 27.823055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548649, 35.632786, 27.736374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102535, 0.217663, 0.970623,
		0.635058, 0.765357, -0.104545,
		-0.765629, 0.605682, -0.216705,
		33.318958, 35.814491, 27.671362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055733, 35.936203, 28.175457>,  <33.854900, 35.390514, 27.823055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055733, 35.936203, 28.175457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661983, 35.974552, 28.116379>,  <33.425732, 35.997562, 28.080933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661983, 35.974552, 28.116379>,  <34.055733, 35.936203, 28.175457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661983, 35.974552, 28.116379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125941, 0.202860, 0.971075,
		0.123058, 0.974503, -0.187617,
		-0.984376, 0.095870, -0.147694,
		33.366673, 36.003315, 28.072071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843143, 36.461098, 28.607069>,  <34.055733, 35.936203, 28.175457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843143, 36.461098, 28.607069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490700, 36.284374, 28.539597>,  <33.279232, 36.178341, 28.499113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490700, 36.284374, 28.539597>,  <33.843143, 36.461098, 28.607069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490700, 36.284374, 28.539597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327247, 0.312110, 0.891906,
		-0.341404, 0.841067, -0.419583,
		-0.881109, -0.441807, -0.168681,
		33.226368, 36.151833, 28.488993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451729, 36.902828, 28.861610>,  <33.843143, 36.461098, 28.607069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451729, 36.902828, 28.861610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197468, 36.595337, 28.833313>,  <33.044910, 36.410843, 28.816334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197468, 36.595337, 28.833313>,  <33.451729, 36.902828, 28.861610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197468, 36.595337, 28.833313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415092, 0.263090, 0.870909,
		-0.650878, 0.582963, -0.486326,
		-0.635655, -0.768725, -0.070743,
		33.006771, 36.364719, 28.812090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679413, 37.103600, 28.912010>,  <33.451729, 36.902828, 28.861610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679413, 37.103600, 28.912010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642818, 36.717461, 29.009773>,  <32.620861, 36.485779, 29.068432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642818, 36.717461, 29.009773>,  <32.679413, 37.103600, 28.912010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642818, 36.717461, 29.009773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661548, 0.242368, 0.709656,
		-0.744301, -0.096763, -0.660797,
		-0.091488, -0.965347, 0.244408,
		32.615372, 36.427856, 29.083096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037365, 36.976620, 29.036310>,  <32.679413, 37.103600, 28.912010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037365, 36.976620, 29.036310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238285, 36.690933, 29.231281>,  <32.358837, 36.519520, 29.348265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238285, 36.690933, 29.231281>,  <32.037365, 36.976620, 29.036310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238285, 36.690933, 29.231281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530904, 0.190211, 0.825809,
		-0.682524, -0.673579, -0.283640,
		0.502297, -0.714220, 0.487430,
		32.388973, 36.476665, 29.377510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488520, 36.570744, 29.420656>,  <32.037365, 36.976620, 29.036310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488520, 36.570744, 29.420656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833536, 36.537754, 29.620346>,  <32.040546, 36.517960, 29.740160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833536, 36.537754, 29.620346>,  <31.488520, 36.570744, 29.420656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833536, 36.537754, 29.620346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486435, 0.136477, 0.862992,
		-0.139304, -0.987204, 0.077600,
		0.862540, -0.082471, 0.499223,
		32.092297, 36.513012, 29.770113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268183, 36.280960, 30.118927>,  <31.488520, 36.570744, 29.420656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268183, 36.280960, 30.118927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645123, 36.410480, 30.152699>,  <31.871286, 36.488194, 30.172962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645123, 36.410480, 30.152699>,  <31.268183, 36.280960, 30.118927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645123, 36.410480, 30.152699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175857, 0.264557, 0.948200,
		0.284700, -0.908382, 0.306249,
		0.942348, 0.323808, 0.084426,
		31.927828, 36.507622, 30.178026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525097, 35.955780, 30.779135>,  <31.268183, 36.280960, 30.118927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525097, 35.955780, 30.779135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765230, 36.270672, 30.722759>,  <31.909309, 36.459606, 30.688934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765230, 36.270672, 30.722759>,  <31.525097, 35.955780, 30.779135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765230, 36.270672, 30.722759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024700, 0.194393, 0.980613,
		0.799368, -0.585213, 0.136146,
		0.600333, 0.787233, -0.140936,
		31.945330, 36.506844, 30.680479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100800, 35.943073, 31.301796>,  <31.525097, 35.955780, 30.779135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100800, 35.943073, 31.301796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104374, 36.321514, 31.172295>,  <32.106518, 36.548576, 31.094593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104374, 36.321514, 31.172295>,  <32.100800, 35.943073, 31.301796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104374, 36.321514, 31.172295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026751, 0.323876, 0.945721,
		0.999602, 0.000205, 0.028205,
		0.008941, 0.946099, -0.323753,
		32.107056, 36.605343, 31.075169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525925, 36.223827, 31.752340>,  <32.100800, 35.943073, 31.301796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525925, 36.223827, 31.752340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323448, 36.530830, 31.595013>,  <32.201962, 36.715034, 31.500616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323448, 36.530830, 31.595013>,  <32.525925, 36.223827, 31.752340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323448, 36.530830, 31.595013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028503, 0.440923, 0.897092,
		0.861951, 0.465309, -0.201314,
		-0.506189, 0.767512, -0.393317,
		32.171593, 36.761086, 31.477018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877621, 36.811035, 32.026436>,  <32.525925, 36.223827, 31.752340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877621, 36.811035, 32.026436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515934, 36.943977, 31.919159>,  <32.298923, 37.023743, 31.854792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515934, 36.943977, 31.919159>,  <32.877621, 36.811035, 32.026436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515934, 36.943977, 31.919159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121875, 0.401056, 0.907910,
		0.409313, 0.853634, -0.322136,
		-0.904217, 0.332359, -0.268194,
		32.244667, 37.043686, 31.838701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828522, 37.466782, 32.377495>,  <32.877621, 36.811035, 32.026436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828522, 37.466782, 32.377495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446396, 37.389038, 32.288406>,  <32.217121, 37.342392, 32.234951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446396, 37.389038, 32.288406>,  <32.828522, 37.466782, 32.377495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446396, 37.389038, 32.288406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288031, 0.442558, 0.849224,
		-0.066487, 0.875424, -0.478762,
		-0.955310, -0.194360, -0.222725,
		32.159801, 37.330730, 32.221588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458740, 37.987537, 32.663982>,  <32.828522, 37.466782, 32.377495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458740, 37.987537, 32.663982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175526, 37.710163, 32.610573>,  <32.005596, 37.543739, 32.578526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175526, 37.710163, 32.610573>,  <32.458740, 37.987537, 32.663982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175526, 37.710163, 32.610573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464273, 0.314633, 0.827923,
		-0.532098, 0.648196, -0.544715,
		-0.708041, -0.693433, -0.133524,
		31.963114, 37.502132, 32.570515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807486, 38.293755, 32.847828>,  <32.458740, 37.987537, 32.663982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807486, 38.293755, 32.847828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761148, 37.898552, 32.888653>,  <31.733347, 37.661430, 32.913147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761148, 37.898552, 32.888653>,  <31.807486, 38.293755, 32.847828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761148, 37.898552, 32.888653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442766, 0.143341, 0.885105,
		-0.889122, 0.057345, -0.454063,
		-0.115842, -0.988011, 0.102058,
		31.726397, 37.602150, 32.919270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192387, 38.233994, 33.131405>,  <31.807486, 38.293755, 32.847828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192387, 38.233994, 33.131405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333927, 37.862183, 33.172924>,  <31.418852, 37.639095, 33.197834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333927, 37.862183, 33.172924>,  <31.192387, 38.233994, 33.131405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333927, 37.862183, 33.172924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221192, 0.024662, 0.974918,
		-0.908771, -0.367934, -0.196877,
		0.353850, -0.929525, 0.103796,
		31.440083, 37.583324, 33.204063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681255, 37.890633, 33.476608>,  <31.192387, 38.233994, 33.131405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681255, 37.890633, 33.476608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018166, 37.691875, 33.560196>,  <31.220312, 37.572620, 33.610348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018166, 37.691875, 33.560196>,  <30.681255, 37.890633, 33.476608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018166, 37.691875, 33.560196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153210, 0.150997, 0.976589,
		-0.516813, -0.854575, 0.051052,
		0.842277, -0.496893, 0.208967,
		31.270849, 37.542809, 33.622887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016674, 37.643555, 33.088253>,  <30.681255, 37.890633, 33.476608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016674, 37.643555, 33.088253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628685, 37.678333, 33.179108>,  <29.395891, 37.699200, 33.233620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628685, 37.678333, 33.179108>,  <30.016674, 37.643555, 33.088253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628685, 37.678333, 33.179108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231816, -0.047989, -0.971575,
		-0.073579, -0.995056, 0.066705,
		-0.969973, 0.086951, 0.227139,
		29.337692, 37.704414, 33.247250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634974, 37.103386, 32.754742>,  <30.016674, 37.643555, 33.088253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634974, 37.103386, 32.754742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380983, 37.408417, 32.804192>,  <29.228590, 37.591434, 32.833862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380983, 37.408417, 32.804192>,  <29.634974, 37.103386, 32.754742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380983, 37.408417, 32.804192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228202, -0.032261, -0.973079,
		-0.738060, -0.646091, 0.194507,
		-0.634973, 0.762578, 0.123629,
		29.190491, 37.637192, 32.841282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963146, 36.947311, 32.390667>,  <29.634974, 37.103386, 32.754742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963146, 36.947311, 32.390667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999077, 37.344650, 32.419498>,  <29.020636, 37.583054, 32.436798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999077, 37.344650, 32.419498>,  <28.963146, 36.947311, 32.390667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999077, 37.344650, 32.419498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272019, 0.094092, -0.957680,
		-0.958090, 0.066416, 0.278661,
		0.089825, 0.993345, 0.072083,
		29.026024, 37.642654, 32.441124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327738, 37.210976, 32.002953>,  <28.963146, 36.947311, 32.390667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327738, 37.210976, 32.002953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582294, 37.519196, 32.017185>,  <28.735027, 37.704128, 32.025726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582294, 37.519196, 32.017185>,  <28.327738, 37.210976, 32.002953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582294, 37.519196, 32.017185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220473, 0.225908, -0.948872,
		-0.739188, 0.596007, 0.313650,
		0.636390, 0.770546, 0.035585,
		28.773212, 37.750359, 32.027863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924286, 37.717918, 31.721579>,  <28.327738, 37.210976, 32.002953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924286, 37.717918, 31.721579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298723, 37.852646, 31.681023>,  <28.523386, 37.933483, 31.656689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298723, 37.852646, 31.681023>,  <27.924286, 37.717918, 31.721579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298723, 37.852646, 31.681023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235491, 0.385987, -0.891940,
		-0.261286, 0.858818, 0.440638,
		0.936095, 0.336818, -0.101390,
		28.579552, 37.953690, 31.650606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
