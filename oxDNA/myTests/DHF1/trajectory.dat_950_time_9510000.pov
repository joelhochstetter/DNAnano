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
	<2.760345, 4.324461, -0.381593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.382553, 4.244610, -0.277206>,  <2.155878, 4.196699, -0.214574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.382553, 4.244610, -0.277206>,  <2.760345, 4.324461, -0.381593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.382553, 4.244610, -0.277206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328181, -0.611601, 0.719890,
		0.015897, 0.765567, 0.643159,
		-0.944481, -0.199628, 0.260968,
		2.099209, 4.184721, -0.198916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.711537, 4.518561, 0.353148>,  <2.760345, 4.324461, -0.381593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.711537, 4.518561, 0.353148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.469292, 4.235449, 0.207666>,  <2.323945, 4.065582, 0.120377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.469292, 4.235449, 0.207666>,  <2.711537, 4.518561, 0.353148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.469292, 4.235449, 0.207666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545521, -0.702020, 0.457793,
		-0.579345, 0.078836, 0.811261,
		-0.605612, -0.707780, -0.363705,
		2.287608, 4.023115, 0.098555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.421463, 4.126157, 0.926219>,  <2.711537, 4.518561, 0.353148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.421463, 4.126157, 0.926219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.381355, 3.878225, 0.614897>,  <2.357291, 3.729466, 0.428104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.381355, 3.878225, 0.614897>,  <2.421463, 4.126157, 0.926219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.381355, 3.878225, 0.614897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531922, -0.694467, 0.484535,
		-0.840836, -0.365413, 0.399334,
		-0.100269, -0.619829, -0.778305,
		2.351275, 3.692276, 0.381405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.276465, 3.577135, 1.188985>,  <2.421463, 4.126157, 0.926219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.276465, 3.577135, 1.188985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.405891, 3.466211, 0.827122>,  <2.483547, 3.399657, 0.610004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.405891, 3.466211, 0.827122>,  <2.276465, 3.577135, 1.188985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.405891, 3.466211, 0.827122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548729, -0.723904, 0.418163,
		-0.770845, -0.631715, -0.082064,
		0.323566, -0.277308, -0.904657,
		2.502961, 3.383019, 0.555725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.348500, 2.836743, 1.182698>,  <2.276465, 3.577135, 1.188985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.348500, 2.836743, 1.182698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.566185, 2.923767, 0.858599>,  <2.696796, 2.975981, 0.664139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.566185, 2.923767, 0.858599>,  <2.348500, 2.836743, 1.182698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.566185, 2.923767, 0.858599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632320, -0.741098, 0.225712,
		-0.551367, -0.635170, -0.540882,
		0.544212, 0.217560, -0.810248,
		2.729449, 2.989035, 0.615524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.385138, 2.264159, 0.845548>,  <2.348500, 2.836743, 1.182698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.385138, 2.264159, 0.845548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.714195, 2.473318, 0.756252>,  <2.911630, 2.598814, 0.702675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.714195, 2.473318, 0.756252>,  <2.385138, 2.264159, 0.845548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.714195, 2.473318, 0.756252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567016, -0.783426, 0.254433,
		-0.041849, -0.335888, -0.940972,
		0.822643, 0.522898, -0.223240,
		2.960988, 2.630188, 0.689280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.846335, 1.841574, 0.450946>,  <2.385138, 2.264159, 0.845548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.846335, 1.841574, 0.450946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.106972, 2.110659, 0.591166>,  <3.263354, 2.272110, 0.675297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.106972, 2.110659, 0.591166>,  <2.846335, 1.841574, 0.450946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.106972, 2.110659, 0.591166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610879, -0.739313, 0.283273,
		0.449727, 0.029565, -0.892677,
		0.651593, 0.672712, 0.350549,
		3.302449, 2.312472, 0.696330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.466381, 1.465438, 0.273553>,  <2.846335, 1.841574, 0.450946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.466381, 1.465438, 0.273553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.549141, 1.742346, 0.550091>,  <3.598797, 1.908490, 0.716013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.549141, 1.742346, 0.550091>,  <3.466381, 1.465438, 0.273553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.549141, 1.742346, 0.550091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709379, -0.592791, 0.381287,
		0.673776, 0.411536, -0.613730,
		0.206900, 0.692269, 0.691343,
		3.611211, 1.950027, 0.757494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.653687, 0.803794, 1.181200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.924591, 1.018173, 1.382824>,  <4.087134, 1.146801, 1.503799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.924591, 1.018173, 1.382824>,  <3.653687, 0.803794, 1.181200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.924591, 1.018173, 1.382824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397683, 0.843064, -0.362066,
		-0.619004, 0.044757, 0.784111,
		0.677261, 0.535948, 0.504061,
		4.127769, 1.178958, 1.534042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.321991, 1.434281, 1.385859>,  <3.653687, 0.803794, 1.181200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.321991, 1.434281, 1.385859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.718063, 1.490185, 1.384773>,  <3.955707, 1.523727, 1.384122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.718063, 1.490185, 1.384773>,  <3.321991, 1.434281, 1.385859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.718063, 1.490185, 1.384773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123045, 0.862207, -0.491385,
		-0.066335, 0.486895, 0.870938,
		0.990182, 0.139760, -0.002715,
		4.015118, 1.532113, 1.383959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.661330, 1.963976, 1.869190>,  <3.321991, 1.434281, 1.385859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.661330, 1.963976, 1.869190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.812256, 1.925762, 1.500732>,  <3.902811, 1.902834, 1.279658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.812256, 1.925762, 1.500732>,  <3.661330, 1.963976, 1.869190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.812256, 1.925762, 1.500732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348470, 0.906916, -0.236797,
		0.858023, 0.410338, 0.308902,
		0.377314, -0.095534, -0.921144,
		3.925450, 1.897102, 1.224389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.060983, 2.666996, 1.640520>,  <3.661330, 1.963976, 1.869190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.060983, 2.666996, 1.640520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.936035, 2.455128, 1.325085>,  <3.861067, 2.328007, 1.135823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.936035, 2.455128, 1.325085>,  <4.060983, 2.666996, 1.640520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.936035, 2.455128, 1.325085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521558, 0.789447, -0.323653,
		0.793983, 0.310202, -0.522844,
		-0.312360, -0.529668, -0.788595,
		3.842324, 2.296226, 1.088508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.178931, 3.187171, 1.052363>,  <4.060983, 2.666996, 1.640520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.178931, 3.187171, 1.052363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.887161, 2.928612, 0.962822>,  <3.712100, 2.773476, 0.909097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.887161, 2.928612, 0.962822>,  <4.178931, 3.187171, 1.052363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.887161, 2.928612, 0.962822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501479, 0.727859, -0.467696,
		0.465251, -0.228891, -0.855073,
		-0.729424, -0.646398, -0.223853,
		3.668334, 2.734692, 0.895666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.021888, 3.241596, 0.324507>,  <4.178931, 3.187171, 1.052363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.021888, 3.241596, 0.324507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.686111, 3.066864, 0.453823>,  <3.484645, 2.962025, 0.531413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.686111, 3.066864, 0.453823>,  <4.021888, 3.241596, 0.324507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.686111, 3.066864, 0.453823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541911, 0.717570, -0.437523,
		-0.040861, -0.542470, -0.839081,
		-0.839442, -0.436829, 0.323291,
		3.434279, 2.935815, 0.550810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.598880, 3.270589, -0.310357>,  <4.021888, 3.241596, 0.324507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.598880, 3.270589, -0.310357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.326546, 3.188408, -0.029144>,  <3.163145, 3.139099, 0.139583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.326546, 3.188408, -0.029144>,  <3.598880, 3.270589, -0.310357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.326546, 3.188408, -0.029144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676092, 0.545471, -0.495339,
		-0.281714, -0.812558, -0.510281,
		-0.680835, -0.205453, 0.703031,
		3.122295, 3.126772, 0.181765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.988303, 3.243439, -0.691166>,  <3.598880, 3.270589, -0.310357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.988303, 3.243439, -0.691166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.858299, 3.321007, -0.320919>,  <2.780297, 3.367547, -0.098771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.858299, 3.321007, -0.320919>,  <2.988303, 3.243439, -0.691166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.858299, 3.321007, -0.320919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665461, 0.648543, -0.369532,
		-0.671961, -0.736062, -0.081737,
		-0.325008, 0.193919, 0.925616,
		2.760797, 3.379182, -0.043234>
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
