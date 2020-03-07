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
	<3.823193, 3.680499, 2.807220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.497645, 3.911491, 2.781502>,  <3.302317, 4.050087, 2.766071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.497645, 3.911491, 2.781502>,  <3.823193, 3.680499, 2.807220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.497645, 3.911491, 2.781502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562881, -0.756122, 0.333833,
		0.144167, 0.307886, 0.940437,
		-0.813868, 0.577482, -0.064296,
		3.253485, 4.084736, 2.762213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.548074, 3.609836, 3.413775>,  <3.823193, 3.680499, 2.807220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.548074, 3.609836, 3.413775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.269598, 3.710876, 3.144997>,  <3.102512, 3.771501, 2.983730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.269598, 3.710876, 3.144997>,  <3.548074, 3.609836, 3.413775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.269598, 3.710876, 3.144997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598015, -0.721889, 0.348216,
		-0.397110, 0.644258, 0.653632,
		-0.696191, 0.252602, -0.671946,
		3.060741, 3.786657, 2.943413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.895285, 3.737509, 3.634572>,  <3.548074, 3.609836, 3.413775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.895285, 3.737509, 3.634572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.809988, 3.610065, 3.265137>,  <2.758810, 3.533599, 3.043475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.809988, 3.610065, 3.265137>,  <2.895285, 3.737509, 3.634572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.809988, 3.610065, 3.265137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516802, -0.765463, 0.383382,
		-0.829122, 0.559066, -0.001429,
		-0.213242, -0.318608, -0.923589,
		2.746015, 3.514483, 2.988060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.179414, 3.600099, 3.609444>,  <2.895285, 3.737509, 3.634572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.179414, 3.600099, 3.609444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.353311, 3.345276, 3.354836>,  <2.457648, 3.192382, 3.202070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.353311, 3.345276, 3.354836>,  <2.179414, 3.600099, 3.609444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.353311, 3.345276, 3.354836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593641, -0.734228, 0.329393,
		-0.677194, 0.234664, -0.697382,
		0.434740, -0.637057, -0.636521,
		2.483733, 3.154159, 3.163879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.670714, 3.161218, 3.462672>,  <2.179414, 3.600099, 3.609444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.670714, 3.161218, 3.462672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.987874, 2.947544, 3.345398>,  <2.178170, 2.819340, 3.275034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.987874, 2.947544, 3.345398>,  <1.670714, 3.161218, 3.462672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.987874, 2.947544, 3.345398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452118, -0.838308, 0.304679,
		-0.408533, -0.109026, -0.906209,
		0.792899, -0.534185, -0.293184,
		2.225744, 2.787289, 3.257443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.511389, 2.592032, 2.958165>,  <1.670714, 3.161218, 3.462672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.511389, 2.592032, 2.958165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.851335, 2.478333, 3.135674>,  <2.055302, 2.410113, 3.242178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.851335, 2.478333, 3.135674>,  <1.511389, 2.592032, 2.958165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.851335, 2.478333, 3.135674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443339, -0.840886, 0.310422,
		0.284923, -0.460557, -0.840658,
		0.849865, -0.284250, 0.443771,
		2.106294, 2.393058, 3.268805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.473607, 1.866495, 2.904044>,  <1.511389, 2.592032, 2.958165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.473607, 1.866495, 2.904044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.752249, 1.938557, 3.181831>,  <1.919434, 1.981794, 3.348504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.752249, 1.938557, 3.181831>,  <1.473607, 1.866495, 2.904044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.752249, 1.938557, 3.181831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253921, -0.843403, 0.473493,
		0.671019, -0.506177, -0.541773,
		0.696604, 0.180155, 0.694468,
		1.961230, 1.992603, 3.390172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.884049, 1.270676, 2.973992>,  <1.473607, 1.866495, 2.904044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.884049, 1.270676, 2.973992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.955193, 1.445839, 3.326492>,  <1.997879, 1.550937, 3.537992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.955193, 1.445839, 3.326492>,  <1.884049, 1.270676, 2.973992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.955193, 1.445839, 3.326492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109830, -0.881101, 0.459999,
		0.977908, -0.178603, -0.108617,
		0.177860, 0.437907, 0.881251,
		2.008550, 1.577211, 3.590868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.273816, 0.747104, 4.146463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.424458, 0.919594, 4.474419>,  <1.514842, 1.023088, 4.671192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.424458, 0.919594, 4.474419>,  <1.273816, 0.747104, 4.146463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.424458, 0.919594, 4.474419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274362, 0.793423, -0.543329,
		-0.884814, 0.429565, 0.180494,
		0.376603, 0.431225, 0.819888,
		1.537438, 1.048961, 4.720385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.130373, 1.507706, 4.159212>,  <1.273816, 0.747104, 4.146463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.130373, 1.507706, 4.159212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.480415, 1.420235, 4.331894>,  <1.690441, 1.367752, 4.435503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.480415, 1.420235, 4.331894>,  <1.130373, 1.507706, 4.159212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.480415, 1.420235, 4.331894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451397, 0.690426, -0.565290,
		-0.174444, 0.689559, 0.702906,
		0.875106, -0.218678, 0.431706,
		1.742947, 1.354631, 4.461406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.447023, 2.044119, 4.623837>,  <1.130373, 1.507706, 4.159212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.447023, 2.044119, 4.623837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.688942, 1.792839, 4.428047>,  <1.834093, 1.642071, 4.310574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.688942, 1.792839, 4.428047>,  <1.447023, 2.044119, 4.623837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.688942, 1.792839, 4.428047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296615, 0.748092, -0.593615,
		0.739080, 0.213832, 0.638778,
		0.604798, -0.628200, -0.489474,
		1.870381, 1.604379, 4.281205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.135790, 2.339972, 4.654460>,  <1.447023, 2.044119, 4.623837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.135790, 2.339972, 4.654460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.107674, 2.085304, 4.347290>,  <2.090804, 1.932503, 4.162988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.107674, 2.085304, 4.347290>,  <2.135790, 2.339972, 4.654460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.107674, 2.085304, 4.347290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540084, 0.622945, -0.565905,
		0.838670, -0.454523, 0.300068,
		-0.070291, -0.636670, -0.767926,
		2.086586, 1.894303, 4.116912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.809084, 2.167531, 4.346222>,  <2.135790, 2.339972, 4.654460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.809084, 2.167531, 4.346222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.561485, 2.107994, 4.037758>,  <2.412926, 2.072272, 3.852679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.561485, 2.107994, 4.037758>,  <2.809084, 2.167531, 4.346222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.561485, 2.107994, 4.037758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432279, 0.755207, -0.492744,
		0.655726, -0.638364, -0.403131,
		-0.618998, -0.148840, -0.771160,
		2.375786, 2.063342, 3.806410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.274414, 2.057268, 3.686366>,  <2.809084, 2.167531, 4.346222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.274414, 2.057268, 3.686366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.904114, 2.167763, 3.583076>,  <2.681934, 2.234060, 3.521102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.904114, 2.167763, 3.583076>,  <3.274414, 2.057268, 3.686366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.904114, 2.167763, 3.583076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377520, 0.636206, -0.672846,
		-0.021581, -0.720372, -0.693252,
		-0.925750, 0.276237, -0.258225,
		2.626389, 2.250634, 3.505609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.311957, 2.131256, 2.956931>,  <3.274414, 2.057268, 3.686366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.311957, 2.131256, 2.956931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.967270, 2.316154, 3.040619>,  <2.760458, 2.427094, 3.090832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.967270, 2.316154, 3.040619>,  <3.311957, 2.131256, 2.956931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.967270, 2.316154, 3.040619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220059, 0.712026, -0.666778,
		-0.457185, -0.528533, -0.715286,
		-0.861717, 0.462246, 0.209220,
		2.708755, 2.454828, 3.103385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.231131, 2.521440, 2.382051>,  <3.311957, 2.131256, 2.956931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.231131, 2.521440, 2.382051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.990013, 2.711105, 2.638741>,  <2.845343, 2.824905, 2.792754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.990013, 2.711105, 2.638741>,  <3.231131, 2.521440, 2.382051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.990013, 2.711105, 2.638741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172546, 0.862703, -0.475365,
		-0.779017, -0.175820, -0.601846,
		-0.602793, 0.474164, 0.641723,
		2.809175, 2.853355, 2.831257>
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
