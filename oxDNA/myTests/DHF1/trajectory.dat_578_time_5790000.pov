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
	<6.091464, 0.638437, 2.823950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.742859, 0.829770, 2.780751>,  <5.533696, 0.944570, 2.754831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.742859, 0.829770, 2.780751>,  <6.091464, 0.638437, 2.823950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.742859, 0.829770, 2.780751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210743, -0.166482, 0.963261,
		0.442780, 0.862253, 0.245897,
		-0.871512, 0.478334, -0.107999,
		5.481405, 0.973270, 2.748351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.000487, 1.185031, 3.304543>,  <6.091464, 0.638437, 2.823950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.000487, 1.185031, 3.304543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.641090, 1.042556, 3.201903>,  <5.425452, 0.957071, 3.140319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.641090, 1.042556, 3.201903>,  <6.000487, 1.185031, 3.304543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.641090, 1.042556, 3.201903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273673, -0.002557, 0.961819,
		-0.343244, 0.934411, -0.095181,
		-0.898491, -0.356187, -0.256600,
		5.371543, 0.935700, 3.124923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.477228, 1.604818, 3.549461>,  <6.000487, 1.185031, 3.304543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.477228, 1.604818, 3.549461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.315788, 1.239166, 3.564810>,  <5.218924, 1.019775, 3.574019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.315788, 1.239166, 3.564810>,  <5.477228, 1.604818, 3.549461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.315788, 1.239166, 3.564810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373135, 0.202748, 0.905353,
		-0.835390, 0.351083, -0.422923,
		-0.403600, -0.914130, 0.038372,
		5.194708, 0.964927, 3.576322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.680755, 1.499576, 3.609919>,  <5.477228, 1.604818, 3.549461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.680755, 1.499576, 3.609919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.880043, 1.208804, 3.798960>,  <4.999616, 1.034341, 3.912384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.880043, 1.208804, 3.798960>,  <4.680755, 1.499576, 3.609919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.880043, 1.208804, 3.798960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387302, 0.301083, 0.871405,
		-0.775741, -0.617190, -0.131536,
		0.498220, -0.726929, 0.472601,
		5.029509, 0.990726, 3.940740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.226154, 1.226067, 4.060397>,  <4.680755, 1.499576, 3.609919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.226154, 1.226067, 4.060397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.575592, 1.113040, 4.218883>,  <4.785255, 1.045224, 4.313974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.575592, 1.113040, 4.218883>,  <4.226154, 1.226067, 4.060397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.575592, 1.113040, 4.218883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315368, 0.291367, 0.903133,
		-0.370639, -0.913926, 0.165424,
		0.873596, -0.282567, 0.396215,
		4.837671, 1.028270, 4.337747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.106823, 0.781349, 4.588823>,  <4.226154, 1.226067, 4.060397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.106823, 0.781349, 4.588823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.460152, 0.951404, 4.667818>,  <4.672149, 1.053437, 4.715214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.460152, 0.951404, 4.667818>,  <4.106823, 0.781349, 4.588823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.460152, 0.951404, 4.667818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314759, 0.225721, 0.921942,
		0.347376, -0.876531, 0.333200,
		0.883321, 0.425138, 0.197486,
		4.725148, 1.078945, 4.727064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.189519, 0.609856, 5.276245>,  <4.106823, 0.781349, 4.588823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.189519, 0.609856, 5.276245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.454536, 0.901102, 5.205947>,  <4.613547, 1.075850, 5.163769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.454536, 0.901102, 5.205947>,  <4.189519, 0.609856, 5.276245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.454536, 0.901102, 5.205947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211604, 0.407019, 0.888572,
		0.718514, -0.551528, 0.423739,
		0.662542, 0.728116, -0.175743,
		4.653299, 1.119537, 5.153224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.554770, 0.596581, 5.824953>,  <4.189519, 0.609856, 5.276245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.554770, 0.596581, 5.824953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.608543, 0.966305, 5.682081>,  <4.640808, 1.188139, 5.596357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.608543, 0.966305, 5.682081>,  <4.554770, 0.596581, 5.824953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.608543, 0.966305, 5.682081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330650, 0.381637, 0.863147,
		0.934129, 0.002066, 0.356928,
		0.134434, 0.924310, -0.357181,
		4.648874, 1.243598, 5.574926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.694869, 1.745214, 1.445259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.883499, 2.076317, 1.323647>,  <3.996677, 2.274979, 1.250681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.883499, 2.076317, 1.323647>,  <3.694869, 1.745214, 1.445259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.883499, 2.076317, 1.323647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567728, -0.548805, -0.613595,
		-0.674760, 0.116751, -0.728744,
		0.471576, 0.827758, -0.304029,
		4.024972, 2.324644, 1.232439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.702979, 1.783566, 0.628005>,  <3.694869, 1.745214, 1.445259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.702979, 1.783566, 0.628005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.013252, 1.974886, 0.792708>,  <4.199416, 2.089678, 0.891531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.013252, 1.974886, 0.792708>,  <3.702979, 1.783566, 0.628005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.013252, 1.974886, 0.792708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614915, -0.425850, -0.663725,
		-0.142112, 0.768037, -0.624438,
		0.775682, 0.478300, 0.411759,
		4.245957, 2.118376, 0.916236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.107833, 2.283973, 0.133302>,  <3.702979, 1.783566, 0.628005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.107833, 2.283973, 0.133302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.335335, 2.087996, 0.397567>,  <4.471836, 1.970409, 0.556126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.335335, 2.087996, 0.397567>,  <4.107833, 2.283973, 0.133302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.335335, 2.087996, 0.397567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637228, -0.245395, -0.730563,
		0.520058, 0.836503, 0.172636,
		0.568754, -0.489943, 0.660662,
		4.505961, 1.941013, 0.595766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.805748, 2.414620, 0.053315>,  <4.107833, 2.283973, 0.133302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.805748, 2.414620, 0.053315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.781036, 2.057775, 0.232344>,  <4.766209, 1.843669, 0.339761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.781036, 2.057775, 0.232344>,  <4.805748, 2.414620, 0.053315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.781036, 2.057775, 0.232344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579469, -0.397172, -0.711668,
		0.812650, 0.215387, 0.541488,
		-0.061780, -0.892112, 0.447571,
		4.762502, 1.790142, 0.366615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.520304, 2.137289, -0.057407>,  <4.805748, 2.414620, 0.053315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.520304, 2.137289, -0.057407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.271622, 1.836359, 0.029763>,  <5.122413, 1.655801, 0.082065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.271622, 1.836359, 0.029763>,  <5.520304, 2.137289, -0.057407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.271622, 1.836359, 0.029763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447909, -0.569736, -0.689042,
		0.642543, -0.330770, 0.691180,
		-0.621704, -0.752325, 0.217925,
		5.085110, 1.610662, 0.095141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.899626, 1.553798, -0.086773>,  <5.520304, 2.137289, -0.057407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.899626, 1.553798, -0.086773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.531120, 1.404278, -0.129750>,  <5.310017, 1.314566, -0.155537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.531120, 1.404278, -0.129750>,  <5.899626, 1.553798, -0.086773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.531120, 1.404278, -0.129750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336740, -0.628357, -0.701266,
		0.194621, -0.682232, 0.704756,
		-0.921265, -0.373800, -0.107443,
		5.254741, 1.292138, -0.161983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.021648, 0.900208, -0.200117>,  <5.899626, 1.553798, -0.086773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.021648, 0.900208, -0.200117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.645737, 0.919786, -0.335423>,  <5.420190, 0.931534, -0.416606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.645737, 0.919786, -0.335423>,  <6.021648, 0.900208, -0.200117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.645737, 0.919786, -0.335423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262714, -0.529627, -0.806521,
		-0.218630, -0.846817, 0.484873,
		-0.939778, 0.048946, -0.338263,
		5.363803, 0.934470, -0.436902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.893221, 0.195228, -0.459895>,  <6.021648, 0.900208, -0.200117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.893221, 0.195228, -0.459895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.623764, 0.443649, -0.620144>,  <5.462090, 0.592702, -0.716293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.623764, 0.443649, -0.620144>,  <5.893221, 0.195228, -0.459895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.623764, 0.443649, -0.620144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005842, -0.537581, -0.843192,
		-0.739035, -0.570350, 0.358509,
		-0.673642, 0.621054, -0.400623,
		5.421671, 0.629965, -0.740331>
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
