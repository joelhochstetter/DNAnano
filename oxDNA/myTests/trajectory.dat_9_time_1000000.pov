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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<38.062283, 46.704899, 56.499729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435783, 46.705009, 56.642895>,  <38.659885, 46.705074, 56.728794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435783, 46.705009, 56.642895>,  <38.062283, 46.704899, 56.499729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435783, 46.705009, 56.642895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306747, -0.515874, -0.799863,
		0.184418, 0.856665, -0.481784,
		0.933754, 0.000277, 0.357916,
		38.715908, 46.705093, 56.750271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539322, 47.142349, 56.081005>,  <38.062283, 46.704899, 56.499729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539322, 47.142349, 56.081005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715149, 46.839012, 56.273544>,  <38.820644, 46.657009, 56.389069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715149, 46.839012, 56.273544>,  <38.539322, 47.142349, 56.081005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715149, 46.839012, 56.273544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159684, -0.461378, -0.872715,
		0.883901, 0.460480, -0.081712,
		0.439568, -0.758346, 0.481344,
		38.847019, 46.611507, 56.417946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199265, 47.099342, 55.816513>,  <38.539322, 47.142349, 56.081005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199265, 47.099342, 55.816513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137009, 46.738853, 55.978291>,  <39.099655, 46.522560, 56.075356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137009, 46.738853, 55.978291>,  <39.199265, 47.099342, 55.816513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137009, 46.738853, 55.978291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285575, -0.433002, -0.854960,
		0.945633, -0.017570, 0.324761,
		-0.155643, -0.901222, 0.404443,
		39.090317, 46.468487, 56.099625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735378, 46.746666, 55.577911>,  <39.199265, 47.099342, 55.816513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735378, 46.746666, 55.577911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502045, 46.439262, 55.683067>,  <39.362045, 46.254818, 55.746159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502045, 46.439262, 55.683067>,  <39.735378, 46.746666, 55.577911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502045, 46.439262, 55.683067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358582, -0.534079, -0.765623,
		0.728793, -0.352348, 0.587121,
		-0.583335, -0.768512, 0.262887,
		39.327045, 46.208710, 55.761932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196320, 46.022598, 55.545120>,  <39.735378, 46.746666, 55.577911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196320, 46.022598, 55.545120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803314, 45.967159, 55.495392>,  <39.567513, 45.933895, 55.465553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803314, 45.967159, 55.495392>,  <40.196320, 46.022598, 55.545120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803314, 45.967159, 55.495392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183786, -0.615127, -0.766708,
		0.029791, -0.776150, 0.629844,
		-0.982515, -0.138597, -0.124321,
		39.508560, 45.925579, 55.458096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176804, 45.365276, 55.284859>,  <40.196320, 46.022598, 55.545120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176804, 45.365276, 55.284859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812279, 45.482746, 55.169441>,  <39.593563, 45.553226, 55.100189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812279, 45.482746, 55.169441>,  <40.176804, 45.365276, 55.284859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812279, 45.482746, 55.169441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024503, -0.660924, -0.750052,
		-0.410979, -0.690605, 0.595115,
		-0.911315, 0.293674, -0.288548,
		39.538883, 45.570847, 55.082878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808308, 44.795212, 55.215500>,  <40.176804, 45.365276, 55.284859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808308, 44.795212, 55.215500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625267, 45.072815, 54.993164>,  <39.515442, 45.239376, 54.859764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625267, 45.072815, 54.993164>,  <39.808308, 44.795212, 55.215500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625267, 45.072815, 54.993164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228833, -0.512152, -0.827850,
		-0.859205, -0.506022, 0.075553,
		-0.457605, 0.694004, -0.555838,
		39.487984, 45.281017, 54.826412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471066, 44.362877, 54.774963>,  <39.808308, 44.795212, 55.215500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471066, 44.362877, 54.774963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421204, 44.708176, 54.579308>,  <39.391289, 44.915356, 54.461914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421204, 44.708176, 54.579308>,  <39.471066, 44.362877, 54.774963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421204, 44.708176, 54.579308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149864, -0.470952, -0.869336,
		-0.980817, -0.181670, -0.070665,
		-0.124652, 0.863249, -0.489144,
		39.383808, 44.967152, 54.432564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227604, 44.232334, 54.129745>,  <39.471066, 44.362877, 54.774963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227604, 44.232334, 54.129745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370842, 44.598614, 54.056789>,  <39.456787, 44.818382, 54.013016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370842, 44.598614, 54.056789>,  <39.227604, 44.232334, 54.129745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370842, 44.598614, 54.056789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095530, -0.230255, -0.968430,
		-0.928785, 0.329368, -0.169930,
		0.358097, 0.915696, -0.182393,
		39.478271, 44.873322, 54.002071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160988, 44.330215, 53.426708>,  <39.227604, 44.232334, 54.129745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160988, 44.330215, 53.426708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414444, 44.615044, 53.547676>,  <39.566517, 44.785942, 53.620255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414444, 44.615044, 53.547676>,  <39.160988, 44.330215, 53.426708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414444, 44.615044, 53.547676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356121, 0.078553, -0.931132,
		-0.686786, 0.697701, -0.203809,
		0.633642, 0.712069, 0.302415,
		39.604538, 44.828663, 53.638401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070751, 44.968292, 53.061398>,  <39.160988, 44.330215, 53.426708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070751, 44.968292, 53.061398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444016, 44.963554, 53.205105>,  <39.667973, 44.960712, 53.291328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444016, 44.963554, 53.205105>,  <39.070751, 44.968292, 53.061398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444016, 44.963554, 53.205105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357669, 0.130410, -0.924698,
		-0.035901, 0.991389, 0.125929,
		0.933158, -0.011843, 0.359271,
		39.723965, 44.960003, 53.312885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323524, 45.452709, 52.613216>,  <39.070751, 44.968292, 53.061398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323524, 45.452709, 52.613216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630890, 45.245602, 52.763657>,  <39.815308, 45.121338, 52.853920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630890, 45.245602, 52.763657>,  <39.323524, 45.452709, 52.613216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630890, 45.245602, 52.763657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478123, 0.073851, -0.875182,
		0.425366, 0.852327, 0.304305,
		0.768415, -0.517769, 0.376104,
		39.861416, 45.090271, 52.876488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876003, 45.755211, 52.386349>,  <39.323524, 45.452709, 52.613216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876003, 45.755211, 52.386349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044991, 45.415356, 52.512608>,  <40.146385, 45.211441, 52.588364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044991, 45.415356, 52.512608>,  <39.876003, 45.755211, 52.386349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044991, 45.415356, 52.512608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458767, -0.099901, -0.882923,
		0.781698, 0.517820, 0.347580,
		0.422471, -0.849637, 0.315651,
		40.171730, 45.160465, 52.607304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588051, 45.789196, 52.140572>,  <39.876003, 45.755211, 52.386349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588051, 45.789196, 52.140572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486084, 45.408348, 52.208096>,  <40.424904, 45.179840, 52.248608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486084, 45.408348, 52.208096>,  <40.588051, 45.789196, 52.140572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486084, 45.408348, 52.208096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326922, -0.249153, -0.911617,
		0.910023, -0.177197, 0.374780,
		-0.254913, -0.952116, 0.168806,
		40.409611, 45.122715, 52.258736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218044, 45.422424, 52.055363>,  <40.588051, 45.789196, 52.140572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218044, 45.422424, 52.055363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911858, 45.174252, 51.987099>,  <40.728146, 45.025349, 51.946140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911858, 45.174252, 51.987099>,  <41.218044, 45.422424, 52.055363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911858, 45.174252, 51.987099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363299, -0.197796, -0.910434,
		0.531108, -0.758906, 0.376809,
		-0.765465, -0.620434, -0.170659,
		40.682217, 44.988121, 51.935902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513695, 44.824631, 51.690674>,  <41.218044, 45.422424, 52.055363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513695, 44.824631, 51.690674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123489, 44.842525, 51.604538>,  <40.889366, 44.853264, 51.552856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123489, 44.842525, 51.604538>,  <41.513695, 44.824631, 51.690674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123489, 44.842525, 51.604538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208095, -0.129196, -0.969539,
		-0.071194, -0.990610, 0.116723,
		-0.975514, 0.044736, -0.215339,
		40.830833, 44.855949, 51.539936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450512, 44.292389, 51.277237>,  <41.513695, 44.824631, 51.690674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450512, 44.292389, 51.277237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122559, 44.500286, 51.181190>,  <40.925785, 44.625023, 51.123562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122559, 44.500286, 51.181190>,  <41.450512, 44.292389, 51.277237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122559, 44.500286, 51.181190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186120, -0.154650, -0.970280,
		-0.541431, -0.840208, 0.030061,
		-0.819886, 0.519744, -0.240112,
		40.876595, 44.656208, 51.109158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226776, 43.995155, 50.773315>,  <41.450512, 44.292389, 51.277237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226776, 43.995155, 50.773315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029549, 44.335327, 50.699936>,  <40.911213, 44.539429, 50.655910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029549, 44.335327, 50.699936>,  <41.226776, 43.995155, 50.773315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029549, 44.335327, 50.699936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026595, -0.196027, -0.980238,
		-0.869584, -0.488203, 0.074037,
		-0.493068, 0.850430, -0.183445,
		40.881630, 44.590458, 50.644901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676086, 43.818455, 50.322376>,  <41.226776, 43.995155, 50.773315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676086, 43.818455, 50.322376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774872, 44.204906, 50.292423>,  <40.834145, 44.436775, 50.274452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774872, 44.204906, 50.292423>,  <40.676086, 43.818455, 50.322376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774872, 44.204906, 50.292423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038233, -0.067499, -0.996987,
		-0.968270, 0.249083, 0.020268,
		0.246965, 0.966127, -0.074881,
		40.848961, 44.494743, 50.269958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282593, 43.956379, 49.771175>,  <40.676086, 43.818455, 50.322376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282593, 43.956379, 49.771175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526749, 44.270573, 49.812023>,  <40.673244, 44.459091, 49.836533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526749, 44.270573, 49.812023>,  <40.282593, 43.956379, 49.771175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526749, 44.270573, 49.812023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079399, 0.067600, -0.994548,
		-0.788109, 0.615174, -0.021105,
		0.610393, 0.785488, 0.102120,
		40.709866, 44.506218, 49.842659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004688, 44.381721, 49.323456>,  <40.282593, 43.956379, 49.771175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004688, 44.381721, 49.323456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343185, 44.578640, 49.404953>,  <40.546284, 44.696793, 49.453850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343185, 44.578640, 49.404953>,  <40.004688, 44.381721, 49.323456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343185, 44.578640, 49.404953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145846, 0.153757, -0.977286,
		-0.512441, 0.856740, 0.058317,
		0.846247, 0.492296, 0.203743,
		40.597061, 44.726330, 49.466076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914909, 45.034248, 49.002949>,  <40.004688, 44.381721, 49.323456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914909, 45.034248, 49.002949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303513, 44.960224, 49.062180>,  <40.536674, 44.915810, 49.097717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303513, 44.960224, 49.062180>,  <39.914909, 45.034248, 49.002949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303513, 44.960224, 49.062180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185110, 0.202260, -0.961678,
		0.148014, 0.961688, 0.230753,
		0.971507, -0.185057, 0.148081,
		40.594963, 44.904709, 49.106606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234516, 45.577599, 48.799427>,  <39.914909, 45.034248, 49.002949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234516, 45.577599, 48.799427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528511, 45.308331, 48.766846>,  <40.704906, 45.146770, 48.747299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528511, 45.308331, 48.766846>,  <40.234516, 45.577599, 48.799427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528511, 45.308331, 48.766846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026090, 0.148106, -0.988627,
		0.677578, 0.724504, 0.126419,
		0.734988, -0.673170, -0.081451,
		40.749008, 45.106380, 48.742409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843353, 45.819912, 48.501244>,  <40.234516, 45.577599, 48.799427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843353, 45.819912, 48.501244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910156, 45.431679, 48.431862>,  <40.950237, 45.198738, 48.390232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910156, 45.431679, 48.431862>,  <40.843353, 45.819912, 48.501244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910156, 45.431679, 48.431862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081735, 0.188945, -0.978580,
		0.982561, 0.149256, 0.110886,
		0.167010, -0.970578, -0.173451,
		40.960258, 45.140507, 48.379826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411648, 45.782906, 48.043037>,  <40.843353, 45.819912, 48.501244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411648, 45.782906, 48.043037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199165, 45.446056, 48.005814>,  <41.071678, 45.243946, 47.983479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199165, 45.446056, 48.005814>,  <41.411648, 45.782906, 48.043037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199165, 45.446056, 48.005814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161452, 0.007207, -0.986854,
		0.831719, -0.539245, 0.132134,
		-0.531203, -0.842119, -0.093057,
		41.039803, 45.193420, 47.977898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791367, 45.269306, 47.649910>,  <41.411648, 45.782906, 48.043037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791367, 45.269306, 47.649910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408844, 45.160595, 47.606804>,  <41.179329, 45.095367, 47.580940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408844, 45.160595, 47.606804>,  <41.791367, 45.269306, 47.649910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408844, 45.160595, 47.606804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097698, 0.050360, -0.993941,
		0.275561, -0.961041, -0.021607,
		-0.956306, -0.271780, -0.107769,
		41.121952, 45.079060, 47.574474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805752, 44.713760, 47.111721>,  <41.791367, 45.269306, 47.649910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805752, 44.713760, 47.111721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440483, 44.876286, 47.124561>,  <41.221321, 44.973801, 47.132267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440483, 44.876286, 47.124561>,  <41.805752, 44.713760, 47.111721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440483, 44.876286, 47.124561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023945, 0.025150, -0.999397,
		-0.406873, -0.913389, -0.013237,
		-0.913171, 0.406311, 0.032104,
		41.166531, 44.998180, 47.134193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476608, 44.494400, 46.474178>,  <41.805752, 44.713760, 47.111721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476608, 44.494400, 46.474178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213280, 44.771431, 46.592129>,  <41.055283, 44.937649, 46.662899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213280, 44.771431, 46.592129>,  <41.476608, 44.494400, 46.474178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213280, 44.771431, 46.592129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166579, 0.247986, -0.954335,
		-0.734075, -0.677378, -0.047885,
		-0.658320, 0.692577, 0.294877,
		41.015785, 44.979202, 46.680592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961323, 44.291199, 46.011314>,  <41.476608, 44.494400, 46.474178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961323, 44.291199, 46.011314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866356, 44.660484, 46.132187>,  <40.809376, 44.882053, 46.204708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866356, 44.660484, 46.132187>,  <40.961323, 44.291199, 46.011314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866356, 44.660484, 46.132187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249952, 0.242538, -0.937390,
		-0.938699, -0.298085, 0.173175,
		-0.237421, 0.923212, 0.302177,
		40.795128, 44.937447, 46.222839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334484, 44.459831, 45.600456>,  <40.961323, 44.291199, 46.011314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334484, 44.459831, 45.600456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502411, 44.799911, 45.727524>,  <40.603165, 45.003960, 45.803764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502411, 44.799911, 45.727524>,  <40.334484, 44.459831, 45.600456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502411, 44.799911, 45.727524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104826, 0.302243, -0.947450,
		-0.901536, 0.431053, 0.037762,
		0.419814, 0.850202, 0.317668,
		40.628357, 45.054974, 45.822823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017399, 44.836960, 45.143360>,  <40.334484, 44.459831, 45.600456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017399, 44.836960, 45.143360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329887, 45.027550, 45.304691>,  <40.517380, 45.141903, 45.401489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329887, 45.027550, 45.304691>,  <40.017399, 44.836960, 45.143360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329887, 45.027550, 45.304691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263587, 0.333899, -0.905005,
		-0.565878, 0.813319, 0.135257,
		0.781220, 0.476470, 0.403326,
		40.564255, 45.170490, 45.425690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059074, 45.474339, 44.769768>,  <40.017399, 44.836960, 45.143360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059074, 45.474339, 44.769768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424873, 45.426968, 44.924515>,  <40.644352, 45.398544, 45.017365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424873, 45.426968, 44.924515>,  <40.059074, 45.474339, 44.769768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424873, 45.426968, 44.924515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403094, 0.348780, -0.846090,
		-0.034735, 0.929693, 0.366695,
		0.914499, -0.118424, 0.386868,
		40.699223, 45.391441, 45.040577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394680, 46.175854, 44.675140>,  <40.059074, 45.474339, 44.769768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394680, 46.175854, 44.675140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653671, 45.871849, 44.697613>,  <40.809067, 45.689445, 44.711094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653671, 45.871849, 44.697613>,  <40.394680, 46.175854, 44.675140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653671, 45.871849, 44.697613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365329, 0.244851, -0.898099,
		0.668808, 0.602025, 0.436189,
		0.647480, -0.760009, 0.056179,
		40.847916, 45.643845, 44.714466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077103, 46.519848, 44.297173>,  <40.394680, 46.175854, 44.675140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077103, 46.519848, 44.297173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108879, 46.121231, 44.306942>,  <41.127945, 45.882061, 44.312801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108879, 46.121231, 44.306942>,  <41.077103, 46.519848, 44.297173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108879, 46.121231, 44.306942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227208, -0.005751, -0.973829,
		0.970601, 0.082907, 0.225966,
		0.079437, -0.996541, 0.024419,
		41.132710, 45.822269, 44.314266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467697, 46.337368, 43.638893>,  <41.077103, 46.519848, 44.297173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467697, 46.337368, 43.638893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360031, 45.973518, 43.765469>,  <41.295433, 45.755207, 43.841415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360031, 45.973518, 43.765469>,  <41.467697, 46.337368, 43.638893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360031, 45.973518, 43.765469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345346, -0.397872, -0.849961,
		0.899048, -0.119497, 0.421227,
		-0.269162, -0.909625, 0.316438,
		41.279282, 45.700630, 43.860401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942261, 45.840652, 43.431892>,  <41.467697, 46.337368, 43.638893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942261, 45.840652, 43.431892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613747, 45.612701, 43.442673>,  <41.416637, 45.475929, 43.449142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613747, 45.612701, 43.442673>,  <41.942261, 45.840652, 43.431892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613747, 45.612701, 43.442673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243337, -0.392637, -0.886918,
		0.516020, -0.721855, 0.461140,
		-0.821287, -0.569879, 0.026955,
		41.367359, 45.441738, 43.450760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137714, 45.315193, 43.026016>,  <41.942261, 45.840652, 43.431892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137714, 45.315193, 43.026016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739967, 45.274197, 43.036880>,  <41.501320, 45.249599, 43.043400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739967, 45.274197, 43.036880>,  <42.137714, 45.315193, 43.026016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739967, 45.274197, 43.036880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018609, -0.420871, -0.906930,
		0.104382, -0.901312, 0.420406,
		-0.994363, -0.102491, 0.027159,
		41.441658, 45.243450, 43.045029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902382, 44.577866, 42.878769>,  <42.137714, 45.315193, 43.026016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902382, 44.577866, 42.878769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588860, 44.807346, 42.783676>,  <41.400745, 44.945034, 42.726620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588860, 44.807346, 42.783676>,  <41.902382, 44.577866, 42.878769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588860, 44.807346, 42.783676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018855, -0.404622, -0.914290,
		-0.620718, -0.712144, 0.327963,
		-0.783807, 0.573700, -0.237729,
		41.353718, 44.979458, 42.712357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570442, 44.144341, 42.385590>,  <41.902382, 44.577866, 42.878769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570442, 44.144341, 42.385590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412125, 44.509216, 42.343155>,  <41.317135, 44.728142, 42.317696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412125, 44.509216, 42.343155>,  <41.570442, 44.144341, 42.385590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412125, 44.509216, 42.343155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108864, -0.161307, -0.980881,
		-0.911863, -0.376681, 0.163150,
		-0.395797, 0.912190, -0.106083,
		41.293385, 44.782875, 42.311329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030670, 44.057442, 42.008659>,  <41.570442, 44.144341, 42.385590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030670, 44.057442, 42.008659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098969, 44.447514, 41.952278>,  <41.139950, 44.681557, 41.918449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098969, 44.447514, 41.952278>,  <41.030670, 44.057442, 42.008659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098969, 44.447514, 41.952278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018514, -0.139855, -0.989999,
		-0.985141, 0.171650, -0.005825,
		0.170748, 0.975181, -0.140955,
		41.150192, 44.740067, 41.909992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604912, 44.331459, 41.441330>,  <41.030670, 44.057442, 42.008659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604912, 44.331459, 41.441330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915649, 44.581585, 41.471001>,  <41.102093, 44.731659, 41.488804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915649, 44.581585, 41.471001>,  <40.604912, 44.331459, 41.441330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915649, 44.581585, 41.471001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139926, -0.056563, -0.988545,
		-0.613953, 0.778322, -0.131438,
		0.776841, 0.625312, 0.074181,
		41.148701, 44.769180, 41.493256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452759, 44.803268, 40.839657>,  <40.604912, 44.331459, 41.441330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452759, 44.803268, 40.839657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837906, 44.826191, 40.945179>,  <41.068996, 44.839943, 41.008492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837906, 44.826191, 40.945179>,  <40.452759, 44.803268, 40.839657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837906, 44.826191, 40.945179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265193, -0.017967, -0.964028,
		-0.050507, 0.998195, -0.032497,
		0.962872, 0.057308, 0.263807,
		41.126766, 44.843384, 41.024323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685196, 45.400539, 40.490467>,  <40.452759, 44.803268, 40.839657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685196, 45.400539, 40.490467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012825, 45.186516, 40.573257>,  <41.209404, 45.058102, 40.622932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012825, 45.186516, 40.573257>,  <40.685196, 45.400539, 40.490467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012825, 45.186516, 40.573257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291223, 0.076949, -0.953555,
		0.494278, 0.841306, 0.218847,
		0.819072, -0.535055, 0.206974,
		41.258545, 45.026001, 40.635349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192837, 45.637299, 40.096764>,  <40.685196, 45.400539, 40.490467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192837, 45.637299, 40.096764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348946, 45.278160, 40.178314>,  <41.442612, 45.062679, 40.227245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348946, 45.278160, 40.178314>,  <41.192837, 45.637299, 40.096764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348946, 45.278160, 40.178314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358826, -0.055599, -0.931747,
		0.847898, 0.436790, 0.300471,
		0.390272, -0.897844, 0.203874,
		41.466026, 45.008808, 40.239475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903671, 45.633205, 39.765217>,  <41.192837, 45.637299, 40.096764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903671, 45.633205, 39.765217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808998, 45.251606, 39.838825>,  <41.752193, 45.022644, 39.882988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808998, 45.251606, 39.838825>,  <41.903671, 45.633205, 39.765217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808998, 45.251606, 39.838825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382420, -0.265585, -0.884997,
		0.893160, -0.139092, 0.427689,
		-0.236684, -0.954001, 0.184018,
		41.737991, 44.965405, 39.894032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512997, 45.198967, 39.620396>,  <41.903671, 45.633205, 39.765217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512997, 45.198967, 39.620396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202927, 44.946625, 39.606972>,  <42.016884, 44.795219, 39.598915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202927, 44.946625, 39.606972>,  <42.512997, 45.198967, 39.620396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202927, 44.946625, 39.606972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257095, -0.266493, -0.928916,
		0.577064, -0.728702, 0.368768,
		-0.775177, -0.630852, -0.033562,
		41.970375, 44.757370, 39.596905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738766, 44.548145, 39.248791>,  <42.512997, 45.198967, 39.620396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738766, 44.548145, 39.248791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339745, 44.520988, 39.242130>,  <42.100330, 44.504692, 39.238132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339745, 44.520988, 39.242130>,  <42.738766, 44.548145, 39.248791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339745, 44.520988, 39.242130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035589, -0.288209, -0.956906,
		0.060170, -0.955158, 0.289920,
		-0.997553, -0.067895, -0.016652,
		42.040478, 44.500622, 39.237133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697289, 43.948860, 38.854240>,  <42.738766, 44.548145, 39.248791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697289, 43.948860, 38.854240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354897, 44.154537, 38.832718>,  <42.149460, 44.277943, 38.819805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354897, 44.154537, 38.832718>,  <42.697289, 43.948860, 38.854240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354897, 44.154537, 38.832718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086378, -0.244839, -0.965708,
		-0.509735, -0.821984, 0.253993,
		-0.855984, 0.514195, -0.053802,
		42.098103, 44.308796, 38.816578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257587, 43.597992, 38.327530>,  <42.697289, 43.948860, 38.854240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257587, 43.597992, 38.327530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095612, 43.962475, 38.357803>,  <41.998425, 44.181164, 38.375969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095612, 43.962475, 38.357803>,  <42.257587, 43.597992, 38.327530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095612, 43.962475, 38.357803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013334, 0.088653, -0.995973,
		-0.914245, -0.402303, -0.048049,
		-0.404943, 0.911204, 0.075686,
		41.974129, 44.235836, 38.380508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720474, 43.636528, 37.886276>,  <42.257587, 43.597992, 38.327530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720474, 43.636528, 37.886276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802513, 44.022945, 37.949135>,  <41.851738, 44.254795, 37.986851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802513, 44.022945, 37.949135>,  <41.720474, 43.636528, 37.886276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802513, 44.022945, 37.949135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105839, 0.137724, -0.984799,
		-0.973002, 0.218613, -0.073998,
		0.205098, 0.966044, 0.157144,
		41.864044, 44.312759, 37.996277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404594, 43.956852, 37.346249>,  <41.720474, 43.636528, 37.886276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404594, 43.956852, 37.346249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685150, 44.205448, 37.485847>,  <41.853485, 44.354607, 37.569607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685150, 44.205448, 37.485847>,  <41.404594, 43.956852, 37.346249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685150, 44.205448, 37.485847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272974, 0.218091, -0.936974,
		-0.658433, 0.752454, -0.016683,
		0.701392, 0.621489, 0.348999,
		41.895569, 44.391895, 37.590546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344212, 44.628490, 37.006840>,  <41.404594, 43.956852, 37.346249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344212, 44.628490, 37.006840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716286, 44.615974, 37.153145>,  <41.939529, 44.608463, 37.240929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716286, 44.615974, 37.153145>,  <41.344212, 44.628490, 37.006840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716286, 44.615974, 37.153145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359325, 0.281615, -0.889707,
		-0.075163, 0.959017, 0.273197,
		0.930181, -0.031293, 0.365766,
		41.995338, 44.606586, 37.262875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733856, 45.200462, 36.718437>,  <41.344212, 44.628490, 37.006840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733856, 45.200462, 36.718437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013351, 44.940907, 36.838909>,  <42.181049, 44.785172, 36.911194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013351, 44.940907, 36.838909>,  <41.733856, 45.200462, 36.718437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013351, 44.940907, 36.838909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480337, 0.113566, -0.869701,
		0.530139, 0.752357, 0.391040,
		0.698734, -0.648893, 0.301179,
		42.222973, 44.746239, 36.929264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278839, 45.634289, 36.497044>,  <41.733856, 45.200462, 36.718437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278839, 45.634289, 36.497044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404739, 45.261326, 36.568089>,  <42.480278, 45.037548, 36.610714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404739, 45.261326, 36.568089>,  <42.278839, 45.634289, 36.497044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404739, 45.261326, 36.568089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555042, 0.029006, -0.831317,
		0.769976, 0.360236, 0.526656,
		0.314746, -0.932410, 0.177612,
		42.499165, 44.981602, 36.621372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968422, 45.706112, 36.416252>,  <42.278839, 45.634289, 36.497044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968422, 45.706112, 36.416252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880539, 45.319107, 36.366211>,  <42.827808, 45.086903, 36.336185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880539, 45.319107, 36.366211>,  <42.968422, 45.706112, 36.416252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880539, 45.319107, 36.366211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660987, -0.053317, -0.748501,
		0.717513, -0.247144, 0.651226,
		-0.219709, -0.967511, -0.125104,
		42.814625, 45.028854, 36.328678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587944, 45.467319, 36.153072>,  <42.968422, 45.706112, 36.416252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587944, 45.467319, 36.153072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319504, 45.178314, 36.086613>,  <43.158440, 45.004913, 36.046738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319504, 45.178314, 36.086613>,  <43.587944, 45.467319, 36.153072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319504, 45.178314, 36.086613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549807, -0.334697, -0.765304,
		0.497329, -0.604945, 0.621856,
		-0.671100, -0.722509, -0.166149,
		43.118176, 44.961563, 36.036770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999046, 44.932030, 35.929146>,  <43.587944, 45.467319, 36.153072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999046, 44.932030, 35.929146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628075, 44.844883, 35.807549>,  <43.405491, 44.792595, 35.734592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628075, 44.844883, 35.807549>,  <43.999046, 44.932030, 35.929146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628075, 44.844883, 35.807549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369189, -0.403377, -0.837249,
		0.059784, -0.888719, 0.454537,
		-0.927429, -0.217864, -0.303990,
		43.349846, 44.779526, 35.716351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997581, 44.169418, 35.728142>,  <43.999046, 44.932030, 35.929146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997581, 44.169418, 35.728142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712006, 44.373676, 35.536507>,  <43.540661, 44.496231, 35.421524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712006, 44.373676, 35.536507>,  <43.997581, 44.169418, 35.728142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712006, 44.373676, 35.536507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311788, -0.380798, -0.870506,
		-0.626959, -0.770865, 0.112653,
		-0.713940, 0.510648, -0.479091,
		43.497822, 44.526871, 35.392780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990845, 43.813274, 35.105076>,  <43.997581, 44.169418, 35.728142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990845, 43.813274, 35.105076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763283, 44.134457, 35.033962>,  <43.626743, 44.327164, 34.991295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763283, 44.134457, 35.033962>,  <43.990845, 43.813274, 35.105076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763283, 44.134457, 35.033962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209768, -0.067352, -0.975429,
		-0.795199, -0.592223, -0.130117,
		-0.568908, 0.802954, -0.177788,
		43.592609, 44.375343, 34.980625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620670, 43.688515, 34.553757>,  <43.990845, 43.813274, 35.105076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620670, 43.688515, 34.553757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620461, 44.087540, 34.581684>,  <43.620335, 44.326954, 34.598442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620461, 44.087540, 34.581684>,  <43.620670, 43.688515, 34.553757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620461, 44.087540, 34.581684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246463, 0.067798, -0.966778,
		-0.969152, 0.016701, -0.245897,
		-0.000525, 0.997559, 0.069822,
		43.620304, 44.386806, 34.602631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246166, 43.945827, 33.989502>,  <43.620670, 43.688515, 34.553757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246166, 43.945827, 33.989502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494179, 44.239334, 34.100601>,  <43.642986, 44.415440, 34.167259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494179, 44.239334, 34.100601>,  <43.246166, 43.945827, 33.989502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494179, 44.239334, 34.100601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151210, 0.235608, -0.960013,
		-0.769865, 0.637239, 0.035133,
		0.620035, 0.733768, 0.277743,
		43.680191, 44.459465, 34.183926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033424, 44.375904, 33.548706>,  <43.246166, 43.945827, 33.989502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033424, 44.375904, 33.548706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393341, 44.491135, 33.679787>,  <43.609291, 44.560272, 33.758434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393341, 44.491135, 33.679787>,  <43.033424, 44.375904, 33.548706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393341, 44.491135, 33.679787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227001, 0.332338, -0.915435,
		-0.372627, 0.898088, 0.233639,
		0.899788, 0.288080, 0.327705,
		43.663277, 44.577560, 33.778099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104061, 45.114052, 33.333782>,  <43.033424, 44.375904, 33.548706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104061, 45.114052, 33.333782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464920, 44.958759, 33.409050>,  <43.681435, 44.865585, 33.454212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464920, 44.958759, 33.409050>,  <43.104061, 45.114052, 33.333782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464920, 44.958759, 33.409050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309517, 0.278561, -0.909177,
		0.300553, 0.878453, 0.371467,
		0.902146, -0.388231, 0.188174,
		43.735565, 44.842289, 33.465504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510216, 45.600418, 33.231873>,  <43.104061, 45.114052, 33.333782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510216, 45.600418, 33.231873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729424, 45.267891, 33.194817>,  <43.860950, 45.068375, 33.172585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729424, 45.267891, 33.194817>,  <43.510216, 45.600418, 33.231873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729424, 45.267891, 33.194817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363252, 0.336291, -0.868882,
		0.753471, 0.442516, 0.486273,
		0.548024, -0.831317, -0.092640,
		43.893829, 45.018497, 33.167023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<47.128307, 42.750519, 33.386024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.781746, 42.905350, 33.259834>,  <46.573811, 42.998249, 33.184120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.781746, 42.905350, 33.259834>,  <47.128307, 42.750519, 33.386024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.781746, 42.905350, 33.259834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170553, 0.364398, 0.915492,
		0.469322, 0.846987, -0.249697,
		-0.866399, 0.387074, -0.315477,
		46.521828, 43.021473, 33.165192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110813, 43.521160, 33.448330>,  <47.128307, 42.750519, 33.386024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110813, 43.521160, 33.448330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.742760, 43.367435, 33.478409>,  <46.521927, 43.275200, 33.496456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.742760, 43.367435, 33.478409>,  <47.110813, 43.521160, 33.448330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742760, 43.367435, 33.478409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070422, 0.351294, 0.933613,
		-0.385211, 0.853756, -0.350302,
		-0.920137, -0.384307, 0.075199,
		46.466717, 43.252144, 33.500969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764114, 43.997215, 33.708443>,  <47.110813, 43.521160, 33.448330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764114, 43.997215, 33.708443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.510712, 43.693016, 33.765446>,  <46.358669, 43.510494, 33.799648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.510712, 43.693016, 33.765446>,  <46.764114, 43.997215, 33.708443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510712, 43.693016, 33.765446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317310, 0.423333, 0.848589,
		-0.705679, 0.492370, -0.509499,
		-0.633508, -0.760500, 0.142503,
		46.320660, 43.464867, 33.808197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101059, 44.323948, 33.978992>,  <46.764114, 43.997215, 33.708443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101059, 44.323948, 33.978992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.086784, 43.939739, 34.089355>,  <46.078220, 43.709213, 34.155571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.086784, 43.939739, 34.089355>,  <46.101059, 44.323948, 33.978992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086784, 43.939739, 34.089355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351492, 0.270503, 0.896260,
		-0.935511, -0.064997, -0.347269,
		-0.035683, -0.960522, 0.275904,
		46.076080, 43.651581, 34.172127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369057, 44.168167, 34.289238>,  <46.101059, 44.323948, 33.978992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369057, 44.168167, 34.289238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.607773, 43.889221, 34.447994>,  <45.751003, 43.721851, 34.543247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.607773, 43.889221, 34.447994>,  <45.369057, 44.168167, 34.289238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607773, 43.889221, 34.447994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413393, 0.156711, 0.896966,
		-0.687712, -0.699371, -0.194763,
		0.596791, -0.697368, 0.396887,
		45.786812, 43.680012, 34.567059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921223, 43.631268, 34.695080>,  <45.369057, 44.168167, 34.289238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921223, 43.631268, 34.695080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.288483, 43.593349, 34.848972>,  <45.508839, 43.570599, 34.941307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.288483, 43.593349, 34.848972>,  <44.921223, 43.631268, 34.695080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288483, 43.593349, 34.848972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395860, -0.176849, 0.901121,
		-0.017384, -0.979662, -0.199899,
		0.918146, -0.094798, 0.384735,
		45.563927, 43.564911, 34.964394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867462, 43.175869, 35.273495>,  <44.921223, 43.631268, 34.695080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867462, 43.175869, 35.273495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.217369, 43.349014, 35.360596>,  <45.427311, 43.452904, 35.412857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.217369, 43.349014, 35.360596>,  <44.867462, 43.175869, 35.273495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217369, 43.349014, 35.360596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287012, 0.100807, 0.952608,
		0.390404, -0.895802, 0.212421,
		0.874763, 0.432869, 0.217750,
		45.479797, 43.478874, 35.425922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984398, 42.999302, 35.962116>,  <44.867462, 43.175869, 35.273495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984398, 42.999302, 35.962116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.243614, 43.299610, 35.910908>,  <45.399143, 43.479797, 35.880184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.243614, 43.299610, 35.910908>,  <44.984398, 42.999302, 35.962116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243614, 43.299610, 35.910908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044270, 0.130674, 0.990437,
		0.760322, -0.647506, 0.051445,
		0.648036, 0.750773, -0.128019,
		45.438026, 43.524841, 35.872501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681992, 42.808624, 36.335220>,  <44.984398, 42.999302, 35.962116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681992, 42.808624, 36.335220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.592125, 43.198219, 36.323341>,  <45.538204, 43.431976, 36.316216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.592125, 43.198219, 36.323341>,  <45.681992, 42.808624, 36.335220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592125, 43.198219, 36.323341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080794, 0.011748, 0.996662,
		0.971080, 0.226317, 0.076053,
		-0.224668, 0.973983, -0.029693,
		45.524723, 43.490414, 36.314434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817802, 42.977005, 36.959209>,  <45.681992, 42.808624, 36.335220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817802, 42.977005, 36.959209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.650818, 43.328426, 36.866367>,  <45.550629, 43.539280, 36.810661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.650818, 43.328426, 36.866367>,  <45.817802, 42.977005, 36.959209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.650818, 43.328426, 36.866367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024525, 0.244441, 0.969354,
		0.908365, 0.410356, -0.080498,
		-0.417458, 0.878553, -0.232106,
		45.525581, 43.591991, 36.796734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291756, 43.455242, 37.286751>,  <45.817802, 42.977005, 36.959209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291756, 43.455242, 37.286751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.931381, 43.604656, 37.198391>,  <45.715157, 43.694305, 37.145374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.931381, 43.604656, 37.198391>,  <46.291756, 43.455242, 37.286751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.931381, 43.604656, 37.198391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137888, 0.236252, 0.961858,
		0.411472, 0.897028, -0.161342,
		-0.900931, 0.373531, -0.220901,
		45.661102, 43.716717, 37.132122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.242550, 43.979927, 37.793636>,  <46.291756, 43.455242, 37.286751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.242550, 43.979927, 37.793636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.874603, 43.956341, 37.638527>,  <45.653835, 43.942188, 37.545460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.874603, 43.956341, 37.638527>,  <46.242550, 43.979927, 37.793636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.874603, 43.956341, 37.638527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391980, 0.173576, 0.903451,
		0.014032, 0.983053, -0.182782,
		-0.919867, -0.058969, -0.387773,
		45.598644, 43.938648, 37.522194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935963, 44.576859, 37.951530>,  <46.242550, 43.979927, 37.793636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935963, 44.576859, 37.951530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.653435, 44.297146, 37.907490>,  <45.483917, 44.129318, 37.881065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.653435, 44.297146, 37.907490>,  <45.935963, 44.576859, 37.951530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653435, 44.297146, 37.907490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367830, 0.229655, 0.901088,
		-0.604824, 0.676956, -0.419426,
		-0.706320, -0.699277, -0.110104,
		45.441540, 44.087364, 37.874458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387035, 44.823044, 38.259747>,  <45.935963, 44.576859, 37.951530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387035, 44.823044, 38.259747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.275887, 44.440166, 38.227337>,  <45.209198, 44.210438, 38.207890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.275887, 44.440166, 38.227337>,  <45.387035, 44.823044, 38.259747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275887, 44.440166, 38.227337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388622, 0.034876, 0.920737,
		-0.878499, 0.287334, -0.381678,
		-0.277871, -0.957195, -0.081025,
		45.192524, 44.153008, 38.203030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606888, 44.913685, 38.305473>,  <45.387035, 44.823044, 38.259747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606888, 44.913685, 38.305473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.708496, 44.538467, 38.399742>,  <44.769463, 44.313335, 38.456303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.708496, 44.538467, 38.399742>,  <44.606888, 44.913685, 38.305473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708496, 44.538467, 38.399742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487043, 0.086454, 0.869088,
		-0.835621, -0.335546, -0.434909,
		0.254020, -0.938048, 0.235669,
		44.784702, 44.257053, 38.470444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970921, 44.604660, 38.629627>,  <44.606888, 44.913685, 38.305473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970921, 44.604660, 38.629627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.277260, 44.385853, 38.764828>,  <44.461063, 44.254570, 38.845947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.277260, 44.385853, 38.764828>,  <43.970921, 44.604660, 38.629627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277260, 44.385853, 38.764828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373668, 0.049180, 0.926258,
		-0.523302, -0.835675, -0.166739,
		0.765851, -0.547017, 0.338001,
		44.507015, 44.221748, 38.866226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629887, 44.069614, 38.923523>,  <43.970921, 44.604660, 38.629627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629887, 44.069614, 38.923523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.990013, 44.072498, 39.097595>,  <44.206089, 44.074226, 39.202038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.990013, 44.072498, 39.097595>,  <43.629887, 44.069614, 38.923523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990013, 44.072498, 39.097595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420837, -0.240663, 0.874630,
		0.111035, -0.970582, -0.213640,
		0.900315, 0.007207, 0.435178,
		44.260109, 44.074661, 39.228149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714676, 43.492096, 39.374290>,  <43.629887, 44.069614, 38.923523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714676, 43.492096, 39.374290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.992065, 43.736534, 39.526951>,  <44.158501, 43.883198, 39.618546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.992065, 43.736534, 39.526951>,  <43.714676, 43.492096, 39.374290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992065, 43.736534, 39.526951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210661, -0.334584, 0.918518,
		0.688995, -0.717368, -0.103292,
		0.693476, 0.611094, 0.381648,
		44.200108, 43.919861, 39.641445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948563, 43.113335, 40.033890>,  <43.714676, 43.492096, 39.374290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948563, 43.113335, 40.033890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.109550, 43.477688, 40.070339>,  <44.206142, 43.696301, 40.092209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.109550, 43.477688, 40.070339>,  <43.948563, 43.113335, 40.033890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109550, 43.477688, 40.070339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066429, -0.070217, 0.995317,
		0.913021, -0.406637, 0.032250,
		0.402468, 0.910887, 0.091122,
		44.230289, 43.750954, 40.097675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467873, 42.961494, 40.395092>,  <43.948563, 43.113335, 40.033890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467873, 42.961494, 40.395092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.414032, 43.356117, 40.432159>,  <44.381725, 43.592892, 40.454399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.414032, 43.356117, 40.432159>,  <44.467873, 42.961494, 40.395092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414032, 43.356117, 40.432159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102964, -0.106937, 0.988920,
		0.985536, 0.123571, 0.115974,
		-0.134604, 0.986557, 0.092667,
		44.373650, 43.652084, 40.459961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725807, 43.087440, 41.047039>,  <44.467873, 42.961494, 40.395092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725807, 43.087440, 41.047039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.533585, 43.427326, 40.960274>,  <44.418251, 43.631256, 40.908215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.533585, 43.427326, 40.960274>,  <44.725807, 43.087440, 41.047039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533585, 43.427326, 40.960274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044166, 0.223585, 0.973683,
		0.875851, 0.477490, -0.069917,
		-0.480557, 0.849713, -0.216916,
		44.389416, 43.682240, 40.895199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040840, 43.633408, 41.442089>,  <44.725807, 43.087440, 41.047039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040840, 43.633408, 41.442089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.665779, 43.741047, 41.354103>,  <44.440742, 43.805630, 41.301311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.665779, 43.741047, 41.354103>,  <45.040840, 43.633408, 41.442089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665779, 43.741047, 41.354103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146530, 0.267810, 0.952264,
		0.315165, 0.925128, -0.211682,
		-0.937657, 0.269102, -0.219964,
		44.384483, 43.821777, 41.288113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001980, 44.265469, 41.737091>,  <45.040840, 43.633408, 41.442089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001980, 44.265469, 41.737091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.626564, 44.131618, 41.703232>,  <44.401314, 44.051308, 41.682915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.626564, 44.131618, 41.703232>,  <45.001980, 44.265469, 41.737091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626564, 44.131618, 41.703232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188150, 0.290370, 0.938235,
		-0.289382, 0.896498, -0.335485,
		-0.938540, -0.334630, -0.084648,
		44.345001, 44.031231, 41.677837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533657, 44.763340, 42.079285>,  <45.001980, 44.265469, 41.737091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533657, 44.763340, 42.079285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.287964, 44.447693, 42.080177>,  <44.140549, 44.258305, 42.080715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.287964, 44.447693, 42.080177>,  <44.533657, 44.763340, 42.079285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287964, 44.447693, 42.080177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405360, 0.317954, 0.857081,
		-0.677049, 0.525545, -0.515176,
		-0.614237, -0.789118, 0.002235,
		44.103691, 44.210957, 42.080849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871471, 45.041031, 42.378044>,  <44.533657, 44.763340, 42.079285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871471, 45.041031, 42.378044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.876144, 44.643223, 42.419609>,  <43.878948, 44.404537, 42.444550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.876144, 44.643223, 42.419609>,  <43.871471, 45.041031, 42.378044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876144, 44.643223, 42.419609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297684, 0.095748, 0.949851,
		-0.954593, -0.042032, -0.294933,
		0.011685, -0.994518, 0.103913,
		43.879650, 44.344868, 42.450783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268253, 44.916710, 42.794907>,  <43.871471, 45.041031, 42.378044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268253, 44.916710, 42.794907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.496902, 44.589336, 42.818287>,  <43.634090, 44.392914, 42.832317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.496902, 44.589336, 42.818287>,  <43.268253, 44.916710, 42.794907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496902, 44.589336, 42.818287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261137, -0.113925, 0.958555,
		-0.777853, -0.563197, -0.278845,
		0.571623, -0.818432, 0.058455,
		43.668388, 44.343807, 42.835823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851974, 44.341743, 43.075203>,  <43.268253, 44.916710, 42.794907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851974, 44.341743, 43.075203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.238281, 44.294498, 43.167587>,  <43.470066, 44.266151, 43.223019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.238281, 44.294498, 43.167587>,  <42.851974, 44.341743, 43.075203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238281, 44.294498, 43.167587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233563, -0.008456, 0.972305,
		-0.112894, -0.992964, -0.035755,
		0.965765, -0.118118, 0.230965,
		43.528011, 44.259064, 43.236877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809322, 43.916306, 43.665546>,  <42.851974, 44.341743, 43.075203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809322, 43.916306, 43.665546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.179146, 44.067322, 43.686131>,  <43.401039, 44.157932, 43.698483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.179146, 44.067322, 43.686131>,  <42.809322, 43.916306, 43.665546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179146, 44.067322, 43.686131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139892, 0.210695, 0.967490,
		0.354429, -0.901702, 0.247616,
		0.924560, 0.377546, 0.051465,
		43.456512, 44.180584, 43.701569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038780, 43.564312, 44.173683>,  <42.809322, 43.916306, 43.665546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038780, 43.564312, 44.173683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.263718, 43.892281, 44.130791>,  <43.398682, 44.089062, 44.105057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.263718, 43.892281, 44.130791>,  <43.038780, 43.564312, 44.173683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263718, 43.892281, 44.130791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043703, 0.100028, 0.994024,
		0.825746, -0.563673, 0.020418,
		0.562347, 0.819919, -0.107232,
		43.432423, 44.138256, 44.098621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472153, 43.522587, 44.752010>,  <43.038780, 43.564312, 44.173683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472153, 43.522587, 44.752010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.522095, 43.903168, 44.639473>,  <43.552059, 44.131516, 44.571953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.522095, 43.903168, 44.639473>,  <43.472153, 43.522587, 44.752010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522095, 43.903168, 44.639473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011941, 0.284980, 0.958459,
		0.992103, -0.116313, 0.046943,
		0.124860, 0.951451, -0.281340,
		43.559551, 44.188602, 44.555069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971912, 43.800919, 45.249348>,  <43.472153, 43.522587, 44.752010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971912, 43.800919, 45.249348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.775497, 44.107555, 45.083836>,  <43.657650, 44.291538, 44.984528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.775497, 44.107555, 45.083836>,  <43.971912, 43.800919, 45.249348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775497, 44.107555, 45.083836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046320, 0.451342, 0.891148,
		0.869906, 0.456754, -0.186117,
		-0.491038, 0.766594, -0.413782,
		43.628185, 44.337532, 44.959702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294151, 44.352085, 45.495640>,  <43.971912, 43.800919, 45.249348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294151, 44.352085, 45.495640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.959648, 44.529751, 45.367023>,  <43.758945, 44.636349, 45.289852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.959648, 44.529751, 45.367023>,  <44.294151, 44.352085, 45.495640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959648, 44.529751, 45.367023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025925, 0.617766, 0.785935,
		0.547720, 0.648910, -0.528128,
		-0.836260, 0.444164, -0.321539,
		43.708771, 44.662998, 45.270561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408699, 45.159924, 45.486633>,  <44.294151, 44.352085, 45.495640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408699, 45.159924, 45.486633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.016785, 45.085270, 45.515469>,  <43.781635, 45.040478, 45.532768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.016785, 45.085270, 45.515469>,  <44.408699, 45.159924, 45.486633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016785, 45.085270, 45.515469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023867, 0.466763, 0.884060,
		-0.198643, 0.864465, -0.461780,
		-0.979781, -0.186634, 0.072087,
		43.722851, 45.029282, 45.537094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020527, 45.866562, 45.644211>,  <44.408699, 45.159924, 45.486633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020527, 45.866562, 45.644211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.784485, 45.566578, 45.763763>,  <43.642860, 45.386585, 45.835495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.784485, 45.566578, 45.763763>,  <44.020527, 45.866562, 45.644211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784485, 45.566578, 45.763763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074905, 0.419471, 0.904673,
		-0.803843, 0.511467, -0.303709,
		-0.590107, -0.749964, 0.298878,
		43.607452, 45.341587, 45.853428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389057, 46.228821, 45.888947>,  <44.020527, 45.866562, 45.644211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389057, 46.228821, 45.888947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.425011, 45.870934, 46.063942>,  <43.446583, 45.656200, 46.168938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.425011, 45.870934, 46.063942>,  <43.389057, 46.228821, 45.888947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425011, 45.870934, 46.063942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175067, 0.418233, 0.891310,
		-0.980445, -0.156706, -0.119042,
		0.089887, -0.894720, 0.437488,
		43.451977, 45.602516, 46.195187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977539, 46.279709, 46.491173>,  <43.389057, 46.228821, 45.888947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977539, 46.279709, 46.491173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.211121, 45.963741, 46.566036>,  <43.351269, 45.774162, 46.610954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.211121, 45.963741, 46.566036>,  <42.977539, 46.279709, 46.491173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211121, 45.963741, 46.566036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015696, 0.241491, 0.970276,
		-0.811635, -0.563660, 0.153418,
		0.583955, -0.789918, 0.187156,
		43.386307, 45.726765, 46.622185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848618, 46.161243, 47.209595>,  <42.977539, 46.279709, 46.491173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848618, 46.161243, 47.209595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.159081, 45.924107, 47.123703>,  <43.345360, 45.781826, 47.072166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.159081, 45.924107, 47.123703>,  <42.848618, 46.161243, 47.209595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159081, 45.924107, 47.123703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242168, -0.034157, 0.969633,
		-0.582175, -0.804593, 0.117056,
		0.776161, -0.592844, -0.214732,
		43.391930, 45.746254, 47.059284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756927, 45.664970, 47.653862>,  <42.848618, 46.161243, 47.209595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756927, 45.664970, 47.653862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.135773, 45.658394, 47.525665>,  <43.363079, 45.654446, 47.448746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.135773, 45.658394, 47.525665>,  <42.756927, 45.664970, 47.653862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135773, 45.658394, 47.525665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319699, -0.038459, 0.946738,
		-0.027875, -0.999125, -0.031175,
		0.947109, -0.016424, -0.320491,
		43.419907, 45.653461, 47.429520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133354, 45.088234, 48.025280>,  <42.756927, 45.664970, 47.653862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133354, 45.088234, 48.025280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.411903, 45.350086, 47.907616>,  <43.579033, 45.507198, 47.837017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.411903, 45.350086, 47.907616>,  <43.133354, 45.088234, 48.025280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411903, 45.350086, 47.907616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468069, -0.103559, 0.877603,
		0.544040, -0.748824, -0.378527,
		0.696370, 0.654628, -0.294162,
		43.620815, 45.546474, 47.819366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783176, 44.714108, 48.131966>,  <43.133354, 45.088234, 48.025280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783176, 44.714108, 48.131966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.820419, 45.112370, 48.131279>,  <43.842766, 45.351326, 48.130867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.820419, 45.112370, 48.131279>,  <43.783176, 44.714108, 48.131966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820419, 45.112370, 48.131279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624230, -0.057034, 0.779156,
		0.775672, -0.073616, -0.626828,
		0.093109, 0.995654, -0.001713,
		43.848351, 45.411064, 48.130764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392803, 44.858116, 48.363144>,  <43.783176, 44.714108, 48.131966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392803, 44.858116, 48.363144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.260094, 45.235321, 48.373352>,  <44.180470, 45.461643, 48.379475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.260094, 45.235321, 48.373352>,  <44.392803, 44.858116, 48.363144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260094, 45.235321, 48.373352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628109, 0.200637, 0.751813,
		0.703852, 0.265457, -0.658882,
		-0.331770, 0.943015, 0.025517,
		44.160564, 45.518227, 48.381008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021523, 45.281502, 48.409775>,  <44.392803, 44.858116, 48.363144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021523, 45.281502, 48.409775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.738144, 45.519691, 48.561310>,  <44.568115, 45.662605, 48.652229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.738144, 45.519691, 48.561310>,  <45.021523, 45.281502, 48.409775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738144, 45.519691, 48.561310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650869, 0.343695, 0.676936,
		0.272894, 0.726144, -0.631065,
		-0.708447, 0.595473, 0.378833,
		44.525608, 45.698334, 48.674961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312012, 45.934456, 48.592014>,  <45.021523, 45.281502, 48.409775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312012, 45.934456, 48.592014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.977615, 45.965252, 48.809341>,  <44.776978, 45.983730, 48.939739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.977615, 45.965252, 48.809341>,  <45.312012, 45.934456, 48.592014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977615, 45.965252, 48.809341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542089, 0.269619, 0.795893,
		-0.085215, 0.959884, -0.267133,
		-0.835990, 0.076988, 0.543318,
		44.726818, 45.988350, 48.972336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488380, 46.530640, 48.963375>,  <45.312012, 45.934456, 48.592014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488380, 46.530640, 48.963375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.202660, 46.316193, 49.143311>,  <45.031227, 46.187527, 49.251270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.202660, 46.316193, 49.143311>,  <45.488380, 46.530640, 48.963375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202660, 46.316193, 49.143311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556635, -0.045629, 0.829503,
		-0.424182, 0.842912, 0.331012,
		-0.714302, -0.536113, 0.449840,
		44.988369, 46.155357, 49.278263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520508, 46.842690, 49.580704>,  <45.488380, 46.530640, 48.963375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.520508, 46.842690, 49.580704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.285614, 46.532013, 49.671837>,  <45.144680, 46.345608, 49.726517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.285614, 46.532013, 49.671837>,  <45.520508, 46.842690, 49.580704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285614, 46.532013, 49.671837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362072, -0.000314, 0.932150,
		-0.723922, 0.629881, 0.281402,
		-0.587232, -0.776692, 0.227835,
		45.109444, 46.299004, 49.740189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025776, 46.991108, 50.149921>,  <45.520508, 46.842690, 49.580704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025776, 46.991108, 50.149921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.059280, 46.592522, 50.147453>,  <45.079384, 46.353371, 50.145973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.059280, 46.592522, 50.147453>,  <45.025776, 46.991108, 50.149921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059280, 46.592522, 50.147453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237602, 0.013956, 0.971263,
		-0.967745, -0.082817, 0.237931,
		0.083757, -0.996467, -0.006172,
		45.084408, 46.293583, 50.145603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631458, 46.718044, 50.738087>,  <45.025776, 46.991108, 50.149921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631458, 46.718044, 50.738087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.903831, 46.440544, 50.644249>,  <45.067257, 46.274044, 50.587948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.903831, 46.440544, 50.644249>,  <44.631458, 46.718044, 50.738087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.903831, 46.440544, 50.644249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305586, -0.021951, 0.951911,
		-0.665540, -0.719879, 0.197054,
		0.680935, -0.693753, -0.234594,
		45.108112, 46.232418, 50.573872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665287, 46.299129, 51.326870>,  <44.631458, 46.718044, 50.738087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665287, 46.299129, 51.326870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.002419, 46.256287, 51.115902>,  <45.204697, 46.230579, 50.989323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.002419, 46.256287, 51.115902>,  <44.665287, 46.299129, 51.326870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002419, 46.256287, 51.115902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526428, -0.039656, 0.849294,
		-0.111883, -0.993456, 0.022963,
		0.842826, -0.107109, -0.527420,
		45.255268, 46.224155, 50.957676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848888, 45.678684, 51.631618>,  <44.665287, 46.299129, 51.326870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848888, 45.678684, 51.631618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.161964, 45.877323, 51.481537>,  <45.349812, 45.996506, 51.391487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.161964, 45.877323, 51.481537>,  <44.848888, 45.678684, 51.631618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161964, 45.877323, 51.481537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419684, 0.024089, 0.907351,
		0.459630, -0.867645, -0.189561,
		0.782692, 0.496601, -0.375208,
		45.396770, 46.026302, 51.368973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423321, 45.552711, 52.058933>,  <44.848888, 45.678684, 51.631618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423321, 45.552711, 52.058933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.593437, 45.846622, 51.847565>,  <45.695507, 46.022968, 51.720745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.593437, 45.846622, 51.847565>,  <45.423321, 45.552711, 52.058933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593437, 45.846622, 51.847565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467961, 0.321225, 0.823303,
		0.774686, -0.597426, -0.207232,
		0.425294, 0.734777, -0.528420,
		45.721027, 46.067055, 51.689037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113213, 45.544743, 52.099907>,  <45.423321, 45.552711, 52.058933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113213, 45.544743, 52.099907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.045166, 45.934376, 52.040283>,  <46.004337, 46.168156, 52.004509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.045166, 45.934376, 52.040283>,  <46.113213, 45.544743, 52.099907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045166, 45.934376, 52.040283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489236, 0.214795, 0.845288,
		0.855399, 0.070872, -0.513098,
		-0.170118, 0.974084, -0.149063,
		45.994129, 46.226601, 51.995564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.715855, 45.990715, 52.479870>,  <46.113213, 45.544743, 52.099907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.715855, 45.990715, 52.479870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.418854, 46.248672, 52.407433>,  <46.240654, 46.403446, 52.363972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.418854, 46.248672, 52.407433>,  <46.715855, 45.990715, 52.479870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.418854, 46.248672, 52.407433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215916, 0.486350, 0.846666,
		0.634086, 0.589554, -0.500361,
		-0.742506, 0.644895, -0.181094,
		46.196102, 46.442142, 52.353104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.013897, 46.565075, 52.459282>,  <46.715855, 45.990715, 52.479870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.013897, 46.565075, 52.459282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.634720, 46.649223, 52.554905>,  <46.407215, 46.699711, 52.612278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.634720, 46.649223, 52.554905>,  <47.013897, 46.565075, 52.459282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634720, 46.649223, 52.554905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318355, 0.608816, 0.726632,
		0.007323, 0.764910, -0.644096,
		-0.947943, 0.210372, 0.239054,
		46.350338, 46.712334, 52.626621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084721, 47.263096, 52.766777>,  <47.013897, 46.565075, 52.459282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084721, 47.263096, 52.766777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.717728, 47.138672, 52.865952>,  <46.497532, 47.064018, 52.925457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.717728, 47.138672, 52.865952>,  <47.084721, 47.263096, 52.766777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717728, 47.138672, 52.865952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171037, 0.254245, 0.951896,
		-0.359136, 0.915751, -0.180061,
		-0.917479, -0.311063, 0.247936,
		46.442486, 47.045353, 52.940331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704662, 47.842556, 53.199554>,  <47.084721, 47.263096, 52.766777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704662, 47.842556, 53.199554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.498001, 47.509132, 53.277775>,  <46.374004, 47.309078, 53.324707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.498001, 47.509132, 53.277775>,  <46.704662, 47.842556, 53.199554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.498001, 47.509132, 53.277775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020816, 0.216101, 0.976149,
		-0.855941, 0.508402, -0.094298,
		-0.516654, -0.833563, 0.195553,
		46.343006, 47.259064, 53.336441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055634, 47.997353, 53.372471>,  <46.704662, 47.842556, 53.199554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055634, 47.997353, 53.372471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.171364, 47.659920, 53.553429>,  <46.240803, 47.457458, 53.662003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.171364, 47.659920, 53.553429>,  <46.055634, 47.997353, 53.372471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171364, 47.659920, 53.553429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043279, 0.483654, 0.874189,
		-0.956252, -0.233345, 0.176443,
		0.289325, -0.843581, 0.452396,
		46.258160, 47.406845, 53.689148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799355, 48.078609, 53.987988>,  <46.055634, 47.997353, 53.372471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799355, 48.078609, 53.987988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.034088, 47.765182, 54.069614>,  <46.174931, 47.577126, 54.118591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.034088, 47.765182, 54.069614>,  <45.799355, 48.078609, 53.987988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034088, 47.765182, 54.069614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000791, 0.251470, 0.967865,
		-0.809704, -0.568141, 0.146953,
		0.586838, -0.783567, 0.204066,
		46.210140, 47.530113, 54.130833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498894, 47.712166, 54.642990>,  <45.799355, 48.078609, 53.987988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498894, 47.712166, 54.642990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.876823, 47.593323, 54.587803>,  <46.103580, 47.522015, 54.554691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.876823, 47.593323, 54.587803>,  <45.498894, 47.712166, 54.642990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876823, 47.593323, 54.587803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126853, -0.056477, 0.990312,
		-0.302024, -0.953171, -0.015671,
		0.944823, -0.297110, -0.137970,
		46.160271, 47.504189, 54.546413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549759, 47.077301, 55.010315>,  <45.498894, 47.712166, 54.642990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549759, 47.077301, 55.010315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.922806, 47.220627, 54.993156>,  <46.146633, 47.306622, 54.982861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.922806, 47.220627, 54.993156>,  <45.549759, 47.077301, 55.010315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922806, 47.220627, 54.993156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119996, -0.195801, 0.973274,
		0.340336, -0.912839, -0.225603,
		0.932616, 0.358312, -0.042899,
		46.202591, 47.328121, 54.980286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922928, 46.713478, 55.552292>,  <45.549759, 47.077301, 55.010315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922928, 46.713478, 55.552292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.155617, 47.023697, 55.454208>,  <46.295231, 47.209827, 55.395359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.155617, 47.023697, 55.454208>,  <45.922928, 46.713478, 55.552292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155617, 47.023697, 55.454208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285034, 0.087982, 0.954471,
		0.761811, -0.625129, -0.169876,
		0.581722, 0.775547, -0.245209,
		46.330132, 47.256359, 55.380646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548950, 46.579857, 55.907990>,  <45.922928, 46.713478, 55.552292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548950, 46.579857, 55.907990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.549553, 46.972404, 55.831131>,  <46.549915, 47.207932, 55.785015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.549553, 46.972404, 55.831131>,  <46.548950, 46.579857, 55.907990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549553, 46.972404, 55.831131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326118, 0.181160, 0.927808,
		0.945328, -0.064060, -0.319768,
		0.001506, 0.981365, -0.192147,
		46.550003, 47.266815, 55.773487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.229664, 46.803501, 56.134853>,  <46.548950, 46.579857, 55.907990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.229664, 46.803501, 56.134853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.978798, 47.114807, 56.122398>,  <46.828278, 47.301590, 56.114925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.978798, 47.114807, 56.122398>,  <47.229664, 46.803501, 56.134853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.978798, 47.114807, 56.122398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314259, 0.289417, 0.904146,
		0.712676, 0.557263, -0.426088,
		-0.627164, 0.778265, -0.031136,
		46.790649, 47.348286, 56.113056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.576920, 47.360500, 56.398232>,  <47.229664, 46.803501, 56.134853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.576920, 47.360500, 56.398232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.198631, 47.478516, 56.452744>,  <46.971661, 47.549324, 56.485451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.198631, 47.478516, 56.452744>,  <47.576920, 47.360500, 56.398232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.198631, 47.478516, 56.452744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254135, 0.409980, 0.875975,
		0.202572, 0.863058, -0.462704,
		-0.945717, 0.295037, 0.136283,
		46.914917, 47.567028, 56.493629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.668873, 47.863171, 56.654510>,  <47.576920, 47.360500, 56.398232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.668873, 47.863171, 56.654510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.277275, 47.826508, 56.727352>,  <47.042316, 47.804512, 56.771057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.277275, 47.826508, 56.727352>,  <47.668873, 47.863171, 56.654510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.277275, 47.826508, 56.727352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121815, 0.453244, 0.883024,
		-0.163469, 0.886662, -0.432560,
		-0.978999, -0.091655, 0.182100,
		46.983574, 47.799011, 56.781982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<45.733929, 47.561371, 57.064373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.110580, 47.666389, 56.980087>,  <46.336571, 47.729401, 56.929516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.110580, 47.666389, 56.980087>,  <45.733929, 47.561371, 57.064373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.110580, 47.666389, 56.980087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253349, 0.140494, -0.957118,
		-0.221682, 0.954637, 0.198809,
		0.941632, 0.262544, -0.210712,
		46.393070, 47.745152, 56.916874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651821, 47.857952, 56.433582>,  <45.733929, 47.561371, 57.064373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651821, 47.857952, 56.433582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.037544, 47.763206, 56.480927>,  <46.268978, 47.706360, 56.509331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.037544, 47.763206, 56.480927>,  <45.651821, 47.857952, 56.433582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.037544, 47.763206, 56.480927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098448, -0.094223, -0.990671,
		0.245804, 0.966963, -0.067542,
		0.964307, -0.236862, 0.118356,
		46.326836, 47.692146, 56.516434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.049435, 48.377861, 56.103775>,  <45.651821, 47.857952, 56.433582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.049435, 48.377861, 56.103775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.298096, 48.064880, 56.118298>,  <46.447292, 47.877090, 56.127010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.298096, 48.064880, 56.118298>,  <46.049435, 48.377861, 56.103775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.298096, 48.064880, 56.118298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005675, -0.050844, -0.998690,
		0.783272, 0.620634, -0.036048,
		0.621654, -0.782450, 0.036303,
		46.484592, 47.830147, 56.129189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.682755, 48.552250, 55.646309>,  <46.049435, 48.377861, 56.103775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.682755, 48.552250, 55.646309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.632164, 48.156319, 55.672379>,  <46.601810, 47.918762, 55.688023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.632164, 48.156319, 55.672379>,  <46.682755, 48.552250, 55.646309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632164, 48.156319, 55.672379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101888, -0.078321, -0.991708,
		0.986723, -0.118790, 0.110757,
		-0.126480, -0.989826, 0.065178,
		46.594219, 47.859371, 55.691933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084133, 48.307064, 55.202492>,  <46.682755, 48.552250, 55.646309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084133, 48.307064, 55.202492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.835831, 47.996216, 55.243950>,  <46.686848, 47.809708, 55.268826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.835831, 47.996216, 55.243950>,  <47.084133, 48.307064, 55.202492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.835831, 47.996216, 55.243950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023614, -0.113604, -0.993246,
		0.783647, -0.619011, 0.052170,
		-0.620757, -0.777122, 0.103643,
		46.649605, 47.763081, 55.275043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.445953, 47.759193, 54.804901>,  <47.084133, 48.307064, 55.202492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.445953, 47.759193, 54.804901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.064537, 47.653191, 54.862206>,  <46.835686, 47.589588, 54.896587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.064537, 47.653191, 54.862206>,  <47.445953, 47.759193, 54.804901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.064537, 47.653191, 54.862206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042729, -0.351768, -0.935111,
		0.298211, -0.897791, 0.324102,
		-0.953543, -0.265012, 0.143263,
		46.778473, 47.573689, 54.905186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404514, 47.165997, 54.461880>,  <47.445953, 47.759193, 54.804901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404514, 47.165997, 54.461880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.014771, 47.246330, 54.502457>,  <46.780926, 47.294529, 54.526802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.014771, 47.246330, 54.502457>,  <47.404514, 47.165997, 54.461880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.014771, 47.246330, 54.502457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187402, -0.474847, -0.859884,
		-0.124521, -0.856847, 0.500307,
		-0.974359, 0.200833, 0.101447,
		46.722462, 47.306580, 54.532890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.064159, 46.558796, 54.336525>,  <47.404514, 47.165997, 54.461880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.064159, 46.558796, 54.336525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.785156, 46.836258, 54.264610>,  <46.617756, 47.002735, 54.221462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.785156, 46.836258, 54.264610>,  <47.064159, 46.558796, 54.336525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.785156, 46.836258, 54.264610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208282, -0.436317, -0.875355,
		-0.685641, -0.573119, 0.448810,
		-0.697506, 0.693659, -0.179787,
		46.575905, 47.044357, 54.210674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457867, 46.167385, 54.029465>,  <47.064159, 46.558796, 54.336525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457867, 46.167385, 54.029465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.384689, 46.548859, 53.933952>,  <46.340782, 46.777744, 53.876644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.384689, 46.548859, 53.933952>,  <46.457867, 46.167385, 54.029465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384689, 46.548859, 53.933952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144460, -0.266320, -0.952998,
		-0.972452, -0.139851, 0.186491,
		-0.182944, 0.953685, -0.238780,
		46.329807, 46.834965, 53.862320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798622, 46.157661, 53.653854>,  <46.457867, 46.167385, 54.029465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798622, 46.157661, 53.653854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.946571, 46.515289, 53.552795>,  <46.035339, 46.729866, 53.492161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.946571, 46.515289, 53.552795>,  <45.798622, 46.157661, 53.653854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.946571, 46.515289, 53.552795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318159, -0.133604, -0.938576,
		-0.872909, 0.427534, 0.235041,
		0.369871, 0.894072, -0.252648,
		46.057533, 46.783512, 53.477001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257195, 46.527939, 53.313774>,  <45.798622, 46.157661, 53.653854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257195, 46.527939, 53.313774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.614342, 46.656502, 53.187607>,  <45.828629, 46.733639, 53.111908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.614342, 46.656502, 53.187607>,  <45.257195, 46.527939, 53.313774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614342, 46.656502, 53.187607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312402, -0.062382, -0.947899,
		-0.324337, 0.944885, 0.044710,
		0.892866, 0.321407, -0.315417,
		45.882202, 46.752922, 53.092983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132519, 47.054699, 52.839279>,  <45.257195, 46.527939, 53.313774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132519, 47.054699, 52.839279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.514404, 46.961845, 52.764832>,  <45.743534, 46.906132, 52.720161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.514404, 46.961845, 52.764832>,  <45.132519, 47.054699, 52.839279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514404, 46.961845, 52.764832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192118, -0.003290, -0.981366,
		0.227195, 0.972678, -0.047738,
		0.954711, -0.232133, -0.186121,
		45.800819, 46.892204, 52.708996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368813, 47.384094, 52.215153>,  <45.132519, 47.054699, 52.839279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368813, 47.384094, 52.215153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.608047, 47.066216, 52.256638>,  <45.751587, 46.875488, 52.281528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.608047, 47.066216, 52.256638>,  <45.368813, 47.384094, 52.215153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608047, 47.066216, 52.256638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028260, -0.150239, -0.988245,
		0.800933, 0.588125, -0.112314,
		0.598086, -0.794693, 0.103711,
		45.787472, 46.827808, 52.287750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723553, 47.475304, 51.649090>,  <45.368813, 47.384094, 52.215153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723553, 47.475304, 51.649090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.805389, 47.092804, 51.732727>,  <45.854492, 46.863304, 51.782909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.805389, 47.092804, 51.732727>,  <45.723553, 47.475304, 51.649090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.805389, 47.092804, 51.732727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115470, -0.235696, -0.964943,
		0.972012, 0.173280, -0.158641,
		0.204596, -0.956254, 0.209090,
		45.866768, 46.805927, 51.795456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087395, 47.157532, 51.204559>,  <45.723553, 47.475304, 51.649090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087395, 47.157532, 51.204559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.942665, 46.818985, 51.360893>,  <45.855827, 46.615856, 51.454693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.942665, 46.818985, 51.360893>,  <46.087395, 47.157532, 51.204559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942665, 46.818985, 51.360893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084687, -0.387670, -0.917900,
		0.928393, -0.365216, 0.068592,
		-0.361822, -0.846363, 0.390839,
		45.834118, 46.565075, 51.478146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.309998, 46.649525, 50.699661>,  <46.087395, 47.157532, 51.204559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.309998, 46.649525, 50.699661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.050758, 46.442093, 50.922745>,  <45.895214, 46.317635, 51.056595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.050758, 46.442093, 50.922745>,  <46.309998, 46.649525, 50.699661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050758, 46.442093, 50.922745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364289, -0.432003, -0.825025,
		0.668773, -0.737867, 0.091069,
		-0.648102, -0.518580, 0.557709,
		45.856327, 46.286518, 51.090057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.330833, 45.938156, 50.396217>,  <46.309998, 46.649525, 50.699661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.330833, 45.938156, 50.396217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.977844, 45.986164, 50.578133>,  <45.766052, 46.014969, 50.687283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.977844, 45.986164, 50.578133>,  <46.330833, 45.938156, 50.396217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977844, 45.986164, 50.578133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469975, -0.185692, -0.862926,
		-0.019118, -0.975250, 0.220276,
		-0.882473, 0.120022, 0.454793,
		45.713104, 46.022171, 50.714569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.944695, 45.360016, 50.136883>,  <46.330833, 45.938156, 50.396217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.944695, 45.360016, 50.136883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.707352, 45.653690, 50.268879>,  <45.564945, 45.829895, 50.348076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.707352, 45.653690, 50.268879>,  <45.944695, 45.360016, 50.136883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707352, 45.653690, 50.268879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458585, 0.028590, -0.888191,
		-0.661533, -0.678345, 0.319723,
		-0.593359, 0.734187, 0.329992,
		45.529343, 45.873947, 50.367878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368172, 45.046600, 50.081367>,  <45.944695, 45.360016, 50.136883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368172, 45.046600, 50.081367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.263000, 45.430981, 50.115887>,  <45.199898, 45.661610, 50.136597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.263000, 45.430981, 50.115887>,  <45.368172, 45.046600, 50.081367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263000, 45.430981, 50.115887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634375, -0.104793, -0.765890,
		-0.726938, -0.256114, 0.637155,
		-0.262925, 0.960950, 0.086294,
		45.184124, 45.719265, 50.141773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657299, 45.051071, 49.938683>,  <45.368172, 45.046600, 50.081367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657299, 45.051071, 49.938683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.756836, 45.435352, 49.889481>,  <44.816559, 45.665920, 49.859959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.756836, 45.435352, 49.889481>,  <44.657299, 45.051071, 49.938683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756836, 45.435352, 49.889481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516768, 0.024289, -0.855780,
		-0.819162, 0.276520, 0.502504,
		0.248846, 0.960701, -0.123001,
		44.831490, 45.723564, 49.852581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103649, 45.475574, 49.957127>,  <44.657299, 45.051071, 49.938683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103649, 45.475574, 49.957127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.355728, 45.692070, 49.734447>,  <44.506973, 45.821968, 49.600838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.355728, 45.692070, 49.734447>,  <44.103649, 45.475574, 49.957127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355728, 45.692070, 49.734447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665461, 0.007113, -0.746399,
		-0.400019, 0.840840, 0.364655,
		0.630195, 0.541237, -0.556701,
		44.544788, 45.854443, 49.567436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721371, 46.033409, 49.691814>,  <44.103649, 45.475574, 49.957127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721371, 46.033409, 49.691814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.039864, 45.990650, 49.453629>,  <44.230961, 45.964993, 49.310715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.039864, 45.990650, 49.453629>,  <43.721371, 46.033409, 49.691814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039864, 45.990650, 49.453629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575056, 0.172023, -0.799824,
		0.187937, 0.979275, 0.075497,
		0.796235, -0.106901, -0.595467,
		44.278732, 45.958580, 49.274990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668274, 46.516701, 49.188522>,  <43.721371, 46.033409, 49.691814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668274, 46.516701, 49.188522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.924706, 46.258133, 49.023033>,  <44.078564, 46.102993, 48.923740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.924706, 46.258133, 49.023033>,  <43.668274, 46.516701, 49.188522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924706, 46.258133, 49.023033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419216, 0.156612, -0.894277,
		0.642869, 0.746739, -0.170588,
		0.641075, -0.646416, -0.413726,
		44.117027, 46.064209, 48.898914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791462, 46.758316, 48.560253>,  <43.668274, 46.516701, 49.188522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791462, 46.758316, 48.560253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.913696, 46.382484, 48.498524>,  <43.987038, 46.156986, 48.461487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.913696, 46.382484, 48.498524>,  <43.791462, 46.758316, 48.560253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913696, 46.382484, 48.498524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313417, 0.053782, -0.948091,
		0.899102, 0.338092, -0.278044,
		0.305589, -0.939575, -0.154319,
		44.005371, 46.100613, 48.452229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969334, 46.673691, 47.906906>,  <43.791462, 46.758316, 48.560253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969334, 46.673691, 47.906906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.961746, 46.282379, 47.989479>,  <43.957195, 46.047592, 48.039021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.961746, 46.282379, 47.989479>,  <43.969334, 46.673691, 47.906906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961746, 46.282379, 47.989479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165739, -0.200535, -0.965565,
		0.985987, -0.052525, -0.158336,
		-0.018964, -0.978278, 0.206430,
		43.956059, 45.988895, 48.051407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509193, 46.391453, 47.403893>,  <43.969334, 46.673691, 47.906906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509193, 46.391453, 47.403893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.236443, 46.126808, 47.528671>,  <44.072792, 45.968021, 47.603539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.236443, 46.126808, 47.528671>,  <44.509193, 46.391453, 47.403893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236443, 46.126808, 47.528671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281170, -0.156621, -0.946791,
		0.675265, -0.733308, -0.079228,
		-0.681881, -0.661611, 0.311945,
		44.031879, 45.928326, 47.622253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647667, 45.844223, 47.037735>,  <44.509193, 46.391453, 47.403893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647667, 45.844223, 47.037735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.272758, 45.785332, 47.164131>,  <44.047813, 45.749996, 47.239971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.272758, 45.785332, 47.164131>,  <44.647667, 45.844223, 47.037735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272758, 45.785332, 47.164131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276898, -0.236292, -0.931393,
		0.211793, -0.960464, 0.180702,
		-0.937268, -0.147226, 0.315995,
		43.991577, 45.741165, 47.258930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496181, 45.141647, 46.733841>,  <44.647667, 45.844223, 47.037735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496181, 45.141647, 46.733841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.153275, 45.305386, 46.858757>,  <43.947529, 45.403629, 46.933708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.153275, 45.305386, 46.858757>,  <44.496181, 45.141647, 46.733841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153275, 45.305386, 46.858757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458536, -0.331137, -0.824678,
		-0.234169, -0.850167, 0.471574,
		-0.857269, 0.409347, 0.312290,
		43.896095, 45.428188, 46.952442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992924, 44.585606, 46.782082>,  <44.496181, 45.141647, 46.733841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992924, 44.585606, 46.782082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.807648, 44.937275, 46.737347>,  <43.696484, 45.148277, 46.710506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.807648, 44.937275, 46.737347>,  <43.992924, 44.585606, 46.782082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807648, 44.937275, 46.737347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415620, -0.326932, -0.848749,
		-0.782763, -0.346647, 0.516834,
		-0.463186, 0.879176, -0.111837,
		43.668694, 45.201027, 46.703796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.542839, 42.496181, 34.162876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.789482, 42.787769, 34.043949>,  <45.937469, 42.962723, 33.972595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.789482, 42.787769, 34.043949>,  <45.542839, 42.496181, 34.162876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789482, 42.787769, 34.043949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208978, -0.212550, -0.954542,
		-0.759024, 0.650715, 0.021277,
		0.616612, 0.728967, -0.297315,
		45.974464, 43.006458, 33.954754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311039, 42.663754, 33.510521>,  <45.542839, 42.496181, 34.162876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311039, 42.663754, 33.510521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.649864, 42.876339, 33.508366>,  <45.853161, 43.003891, 33.507072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.649864, 42.876339, 33.508366>,  <45.311039, 42.663754, 33.510521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649864, 42.876339, 33.508366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007768, 0.002249, -0.999967,
		-0.531432, 0.847080, 0.006034,
		0.847065, 0.531461, -0.005385,
		45.903984, 43.035778, 33.506752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212097, 43.370335, 33.062141>,  <45.311039, 42.663754, 33.510521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212097, 43.370335, 33.062141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587662, 43.233532, 33.077549>,  <45.813000, 43.151451, 33.086792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587662, 43.233532, 33.077549>,  <45.212097, 43.370335, 33.062141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587662, 43.233532, 33.077549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040784, -0.221686, -0.974265,
		0.341747, 0.913173, -0.222091,
		0.938907, -0.342009, 0.038518,
		45.869335, 43.130928, 33.089104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675907, 43.939774, 33.125370>,  <45.212097, 43.370335, 33.062141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675907, 43.939774, 33.125370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.441879, 44.264084, 33.132698>,  <44.301464, 44.458672, 33.137093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.441879, 44.264084, 33.132698>,  <44.675907, 43.939774, 33.125370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441879, 44.264084, 33.132698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143391, -0.125648, 0.981658,
		0.798208, 0.571709, 0.189771,
		-0.585067, 0.810778, 0.018316,
		44.266357, 44.507317, 33.138191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973202, 44.378632, 33.634960>,  <44.675907, 43.939774, 33.125370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973202, 44.378632, 33.634960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595825, 44.503723, 33.590931>,  <44.369400, 44.578777, 33.564514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595825, 44.503723, 33.590931>,  <44.973202, 44.378632, 33.634960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595825, 44.503723, 33.590931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139550, -0.073412, 0.987490,
		0.300733, 0.947002, 0.112901,
		-0.943443, 0.312726, -0.110077,
		44.312794, 44.597542, 33.557907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880520, 44.912502, 34.205933>,  <44.973202, 44.378632, 33.634960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880520, 44.912502, 34.205933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.517166, 44.805809, 34.077129>,  <44.299152, 44.741795, 33.999847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.517166, 44.805809, 34.077129>,  <44.880520, 44.912502, 34.205933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517166, 44.805809, 34.077129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320212, -0.051446, 0.945948,
		-0.268883, 0.962396, -0.038678,
		-0.908387, -0.266734, -0.322004,
		44.244652, 44.725788, 33.980530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507790, 45.360577, 34.603577>,  <44.880520, 44.912502, 34.205933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507790, 45.360577, 34.603577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.245049, 45.090878, 34.468563>,  <44.087402, 44.929058, 34.387554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.245049, 45.090878, 34.468563>,  <44.507790, 45.360577, 34.603577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245049, 45.090878, 34.468563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567199, 0.146887, 0.810376,
		-0.496816, 0.723749, -0.478917,
		-0.656855, -0.674249, -0.337534,
		44.047993, 44.888603, 34.367302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812912, 45.648369, 34.596821>,  <44.507790, 45.360577, 34.603577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812912, 45.648369, 34.596821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.763222, 45.251472, 34.594513>,  <43.733410, 45.013336, 34.593128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.763222, 45.251472, 34.594513>,  <43.812912, 45.648369, 34.596821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763222, 45.251472, 34.594513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662019, 0.078544, 0.745360,
		-0.739121, 0.096414, -0.666637,
		-0.124224, -0.992238, -0.005774,
		43.725956, 44.953800, 34.592781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067993, 45.607422, 34.716568>,  <43.812912, 45.648369, 34.596821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067993, 45.607422, 34.716568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212135, 45.247402, 34.814594>,  <43.298622, 45.031391, 34.873409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212135, 45.247402, 34.814594>,  <43.067993, 45.607422, 34.716568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212135, 45.247402, 34.814594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703840, -0.089936, 0.704642,
		-0.612171, -0.426410, -0.665899,
		0.360354, -0.900048, 0.245068,
		43.320240, 44.977386, 34.888115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554661, 45.012814, 34.727333>,  <43.067993, 45.607422, 34.716568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554661, 45.012814, 34.727333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.849243, 44.902309, 34.974335>,  <43.025993, 44.836006, 35.122536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.849243, 44.902309, 34.974335>,  <42.554661, 45.012814, 34.727333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849243, 44.902309, 34.974335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673660, -0.216172, 0.706719,
		-0.061747, -0.936458, -0.345303,
		0.736457, -0.276255, 0.617506,
		43.070179, 44.819431, 35.159588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177155, 44.593910, 35.079330>,  <42.554661, 45.012814, 34.727333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177155, 44.593910, 35.079330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521126, 44.660397, 35.272369>,  <42.727509, 44.700291, 35.388195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521126, 44.660397, 35.272369>,  <42.177155, 44.593910, 35.079330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521126, 44.660397, 35.272369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473785, -0.091811, 0.875841,
		0.189891, -0.981805, -0.000198,
		0.859923, 0.166221, 0.482599,
		42.779102, 44.710262, 35.417149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215988, 44.096142, 35.594841>,  <42.177155, 44.593910, 35.079330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215988, 44.096142, 35.594841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491631, 44.347164, 35.739784>,  <42.657017, 44.497776, 35.826748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491631, 44.347164, 35.739784>,  <42.215988, 44.096142, 35.594841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491631, 44.347164, 35.739784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335633, -0.166765, 0.927114,
		0.642245, -0.760501, 0.095709,
		0.689110, 0.627557, 0.362353,
		42.698364, 44.535431, 35.848492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596043, 43.739819, 36.148666>,  <42.215988, 44.096142, 35.594841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596043, 43.739819, 36.148666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641716, 44.132725, 36.208149>,  <42.669121, 44.368469, 36.243839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641716, 44.132725, 36.208149>,  <42.596043, 43.739819, 36.148666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641716, 44.132725, 36.208149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273809, -0.112776, 0.955150,
		0.954982, -0.149783, 0.256076,
		0.114186, 0.982266, 0.148711,
		42.675972, 44.427406, 36.252762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884995, 43.759777, 36.859634>,  <42.596043, 43.739819, 36.148666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884995, 43.759777, 36.859634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769676, 44.135891, 36.787243>,  <42.700485, 44.361561, 36.743809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769676, 44.135891, 36.787243>,  <42.884995, 43.759777, 36.859634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769676, 44.135891, 36.787243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340951, 0.075817, 0.937019,
		0.894784, 0.331842, 0.298733,
		-0.288293, 0.940283, -0.180982,
		42.683189, 44.417976, 36.732948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196301, 44.061390, 37.362919>,  <42.884995, 43.759777, 36.859634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196301, 44.061390, 37.362919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.901428, 44.300060, 37.236084>,  <42.724503, 44.443260, 37.159985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.901428, 44.300060, 37.236084>,  <43.196301, 44.061390, 37.362919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901428, 44.300060, 37.236084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322789, 0.101290, 0.941035,
		0.593607, 0.796067, 0.117930,
		-0.737182, 0.596672, -0.317088,
		42.680275, 44.479061, 37.140957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197155, 44.702511, 37.828583>,  <43.196301, 44.061390, 37.362919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197155, 44.702511, 37.828583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.847336, 44.655979, 37.640270>,  <42.637444, 44.628059, 37.527283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.847336, 44.655979, 37.640270>,  <43.197155, 44.702511, 37.828583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847336, 44.655979, 37.640270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484647, 0.176080, 0.856804,
		-0.016781, 0.977477, -0.210371,
		-0.874549, -0.116333, -0.470777,
		42.584972, 44.621078, 37.499039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772217, 45.261505, 38.007183>,  <43.197155, 44.702511, 37.828583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772217, 45.261505, 38.007183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.507629, 44.985794, 37.888954>,  <42.348877, 44.820370, 37.818016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.507629, 44.985794, 37.888954>,  <42.772217, 45.261505, 38.007183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507629, 44.985794, 37.888954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528400, 0.148648, 0.835881,
		-0.532217, 0.709086, -0.462539,
		-0.661467, -0.689276, -0.295568,
		42.309189, 44.779011, 37.800285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110661, 45.511795, 38.252506>,  <42.772217, 45.261505, 38.007183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110661, 45.511795, 38.252506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.052467, 45.123600, 38.175575>,  <42.017551, 44.890682, 38.129417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.052467, 45.123600, 38.175575>,  <42.110661, 45.511795, 38.252506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052467, 45.123600, 38.175575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444345, -0.109597, 0.889127,
		-0.883964, 0.214814, -0.415286,
		-0.145482, -0.970486, -0.192331,
		42.008823, 44.832455, 38.117874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541485, 45.443974, 38.585007>,  <42.110661, 45.511795, 38.252506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541485, 45.443974, 38.585007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664536, 45.069775, 38.515472>,  <41.738365, 44.845257, 38.473751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664536, 45.069775, 38.515472>,  <41.541485, 45.443974, 38.585007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664536, 45.069775, 38.515472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290473, -0.266303, 0.919080,
		-0.906087, -0.232235, -0.353657,
		0.307622, -0.935494, -0.173835,
		41.756821, 44.789127, 38.463322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005543, 45.036694, 38.752323>,  <41.541485, 45.443974, 38.585007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005543, 45.036694, 38.752323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.338104, 44.815464, 38.773796>,  <41.537640, 44.682728, 38.786678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.338104, 44.815464, 38.773796>,  <41.005543, 45.036694, 38.752323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338104, 44.815464, 38.773796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073741, -0.014067, 0.997178,
		-0.550756, -0.833015, -0.052479,
		0.831403, -0.553071, 0.053680,
		41.587524, 44.649544, 38.789902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775200, 44.507248, 39.134487>,  <41.005543, 45.036694, 38.752323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775200, 44.507248, 39.134487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.174210, 44.524113, 39.156986>,  <41.413616, 44.534229, 39.170486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.174210, 44.524113, 39.156986>,  <40.775200, 44.507248, 39.134487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174210, 44.524113, 39.156986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059605, 0.083222, 0.994747,
		0.037250, -0.995639, 0.085529,
		0.997527, 0.042153, 0.056245,
		41.473469, 44.536762, 39.173859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924274, 44.002625, 39.643463>,  <40.775200, 44.507248, 39.134487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924274, 44.002625, 39.643463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250984, 44.231922, 39.617298>,  <41.447010, 44.369499, 39.601601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250984, 44.231922, 39.617298>,  <40.924274, 44.002625, 39.643463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250984, 44.231922, 39.617298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083136, -0.004746, 0.996527,
		0.570939, -0.819373, -0.051533,
		0.816772, 0.573241, -0.065409,
		41.496017, 44.403893, 39.597675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439384, 43.731560, 40.121342>,  <40.924274, 44.002625, 39.643463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439384, 43.731560, 40.121342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519562, 44.117474, 40.053200>,  <41.567669, 44.349022, 40.012314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519562, 44.117474, 40.053200>,  <41.439384, 43.731560, 40.121342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519562, 44.117474, 40.053200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020299, 0.169756, 0.985277,
		0.979495, -0.200950, 0.014442,
		0.200443, 0.964781, -0.170354,
		41.579693, 44.406906, 40.002094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957764, 43.881737, 40.640450>,  <41.439384, 43.731560, 40.121342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957764, 43.881737, 40.640450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.823647, 44.228546, 40.493019>,  <41.743176, 44.436634, 40.404560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.823647, 44.228546, 40.493019>,  <41.957764, 43.881737, 40.640450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823647, 44.228546, 40.493019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028140, 0.400260, 0.915969,
		0.941695, 0.296742, -0.158601,
		-0.335288, 0.867027, -0.368573,
		41.723061, 44.488655, 40.382446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308075, 44.371315, 40.974384>,  <41.957764, 43.881737, 40.640450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308075, 44.371315, 40.974384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991119, 44.582588, 40.852303>,  <41.800945, 44.709351, 40.779053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991119, 44.582588, 40.852303>,  <42.308075, 44.371315, 40.974384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991119, 44.582588, 40.852303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092037, 0.391073, 0.915746,
		0.603035, 0.753716, -0.261270,
		-0.792388, 0.528180, -0.305200,
		41.753403, 44.741043, 40.760742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372654, 45.115677, 41.281200>,  <42.308075, 44.371315, 40.974384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372654, 45.115677, 41.281200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.992134, 45.018482, 41.205330>,  <41.763821, 44.960163, 41.159809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.992134, 45.018482, 41.205330>,  <42.372654, 45.115677, 41.281200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992134, 45.018482, 41.205330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273905, 0.384064, 0.881743,
		-0.141408, 0.890758, -0.431918,
		-0.951304, -0.242990, -0.189673,
		41.706741, 44.945583, 41.148426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000103, 45.723633, 41.453457>,  <42.372654, 45.115677, 41.281200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000103, 45.723633, 41.453457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733498, 45.426243, 41.475368>,  <41.573536, 45.247807, 41.488514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733498, 45.426243, 41.475368>,  <42.000103, 45.723633, 41.453457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733498, 45.426243, 41.475368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342485, 0.370642, 0.863324,
		-0.662165, 0.556656, -0.501668,
		-0.666514, -0.743477, 0.054780,
		41.533543, 45.203201, 41.491802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557365, 45.960129, 41.874985>,  <42.000103, 45.723633, 41.453457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557365, 45.960129, 41.874985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.397636, 45.593407, 41.874050>,  <41.301800, 45.373375, 41.873489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.397636, 45.593407, 41.874050>,  <41.557365, 45.960129, 41.874985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397636, 45.593407, 41.874050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260244, 0.110904, 0.959152,
		-0.879097, 0.383623, -0.282881,
		-0.399325, -0.916806, -0.002340,
		41.277840, 45.318363, 41.873348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918514, 46.002045, 42.029953>,  <41.557365, 45.960129, 41.874985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918514, 46.002045, 42.029953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015633, 45.627293, 42.130596>,  <41.073902, 45.402443, 42.190983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015633, 45.627293, 42.130596>,  <40.918514, 46.002045, 42.029953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015633, 45.627293, 42.130596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107076, 0.231902, 0.966828,
		-0.964150, -0.261680, -0.044013,
		0.242793, -0.936880, 0.251608,
		41.088470, 45.346230, 42.206078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399715, 45.874348, 42.593861>,  <40.918514, 46.002045, 42.029953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399715, 45.874348, 42.593861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.688751, 45.598259, 42.609161>,  <40.862171, 45.432606, 42.618340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.688751, 45.598259, 42.609161>,  <40.399715, 45.874348, 42.593861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688751, 45.598259, 42.609161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109173, -0.059306, 0.992252,
		-0.682606, -0.721162, -0.118208,
		0.722585, -0.690223, 0.038249,
		40.905525, 45.391193, 42.620636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125477, 45.244637, 42.947773>,  <40.399715, 45.874348, 42.593861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125477, 45.244637, 42.947773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523155, 45.246193, 42.990788>,  <40.761761, 45.247128, 43.016598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523155, 45.246193, 42.990788>,  <40.125477, 45.244637, 42.947773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523155, 45.246193, 42.990788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106763, -0.089193, 0.990276,
		0.013449, -0.996007, -0.088260,
		0.994193, 0.003895, 0.107536,
		40.821415, 45.247360, 43.023048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353828, 44.731739, 43.321999>,  <40.125477, 45.244637, 42.947773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353828, 44.731739, 43.321999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.653442, 44.987080, 43.392948>,  <40.833210, 45.140285, 43.435516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.653442, 44.987080, 43.392948>,  <40.353828, 44.731739, 43.321999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653442, 44.987080, 43.392948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112439, -0.141357, 0.983553,
		0.652924, -0.756655, -0.034106,
		0.749031, 0.638350, 0.177373,
		40.878151, 45.178585, 43.446159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.778057, 44.530872, 43.930771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944511, 44.893665, 43.956738>,  <41.044384, 45.111340, 43.972317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944511, 44.893665, 43.956738>,  <40.778057, 44.530872, 43.930771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944511, 44.893665, 43.956738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082566, -0.033410, 0.996026,
		0.905546, -0.419843, 0.060982,
		0.416137, 0.906982, 0.064919,
		41.069351, 45.165760, 43.976212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376091, 44.520725, 44.489491>,  <40.778057, 44.530872, 43.930771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376091, 44.520725, 44.489491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272133, 44.904701, 44.447582>,  <41.209759, 45.135086, 44.422436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272133, 44.904701, 44.447582>,  <41.376091, 44.520725, 44.489491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272133, 44.904701, 44.447582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087448, 0.084655, 0.992566,
		0.961668, 0.267128, 0.061943,
		-0.259899, 0.959935, -0.104770,
		41.194164, 45.192680, 44.416153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852009, 44.833744, 44.881458>,  <41.376091, 44.520725, 44.489491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852009, 44.833744, 44.881458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552483, 45.094509, 44.833641>,  <41.372768, 45.250969, 44.804951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552483, 45.094509, 44.833641>,  <41.852009, 44.833744, 44.881458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552483, 45.094509, 44.833641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088809, 0.080055, 0.992826,
		0.656802, 0.754060, -0.002052,
		-0.748815, 0.651908, -0.119547,
		41.327839, 45.290081, 44.797775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558304, 45.013077, 44.908436>,  <41.852009, 44.833744, 44.881458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558304, 45.013077, 44.908436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924088, 44.908886, 45.032318>,  <43.143559, 44.846371, 45.106647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924088, 44.908886, 45.032318>,  <42.558304, 45.013077, 44.908436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924088, 44.908886, 45.032318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170744, -0.445515, -0.878842,
		0.366897, 0.856545, -0.362930,
		0.914458, -0.260476, 0.309708,
		43.198425, 44.830742, 45.125229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002789, 45.373581, 44.460102>,  <42.558304, 45.013077, 44.908436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002789, 45.373581, 44.460102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212021, 45.075790, 44.626060>,  <43.337563, 44.897118, 44.725636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212021, 45.075790, 44.626060>,  <43.002789, 45.373581, 44.460102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212021, 45.075790, 44.626060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305066, -0.291000, -0.906782,
		0.795812, 0.600894, 0.074897,
		0.523085, -0.744477, 0.414894,
		43.368946, 44.852448, 44.750530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665512, 45.435371, 44.209682>,  <43.002789, 45.373581, 44.460102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665512, 45.435371, 44.209682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629967, 45.049973, 44.310707>,  <43.608639, 44.818733, 44.371323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629967, 45.049973, 44.310707>,  <43.665512, 45.435371, 44.209682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629967, 45.049973, 44.310707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426407, -0.265949, -0.864551,
		0.900156, 0.030868, 0.434473,
		-0.088860, -0.963493, 0.252557,
		43.603310, 44.760925, 44.386475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239838, 45.183891, 43.930241>,  <43.665512, 45.435371, 44.209682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239838, 45.183891, 43.930241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013596, 44.860054, 43.993050>,  <43.877850, 44.665752, 44.030735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013596, 44.860054, 43.993050>,  <44.239838, 45.183891, 43.930241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013596, 44.860054, 43.993050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196828, -0.317423, -0.927632,
		0.800843, -0.493768, 0.338887,
		-0.565605, -0.809590, 0.157019,
		43.843914, 44.617176, 44.040154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703133, 44.566647, 43.792419>,  <44.239838, 45.183891, 43.930241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703133, 44.566647, 43.792419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320625, 44.456787, 43.752201>,  <44.091122, 44.390869, 43.728069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320625, 44.456787, 43.752201>,  <44.703133, 44.566647, 43.792419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320625, 44.456787, 43.752201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234326, -0.513739, -0.825326,
		0.175025, -0.812796, 0.555633,
		-0.956272, -0.274652, -0.100543,
		44.033745, 44.374390, 43.722038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748302, 43.924557, 43.505974>,  <44.703133, 44.566647, 43.792419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748302, 43.924557, 43.505974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363014, 44.000896, 43.430313>,  <44.131840, 44.046700, 43.384914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363014, 44.000896, 43.430313>,  <44.748302, 43.924557, 43.505974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363014, 44.000896, 43.430313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115253, -0.342470, -0.932433,
		-0.242731, -0.919941, 0.307879,
		-0.963223, 0.190847, -0.189154,
		44.074047, 44.058151, 43.373566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523861, 43.348621, 42.985168>,  <44.748302, 43.924557, 43.505974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523861, 43.348621, 42.985168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250771, 43.637917, 42.943569>,  <44.086918, 43.811493, 42.918610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250771, 43.637917, 42.943569>,  <44.523861, 43.348621, 42.985168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250771, 43.637917, 42.943569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067795, -0.204416, -0.976534,
		-0.727527, -0.659650, 0.188591,
		-0.682721, 0.723240, -0.103997,
		44.045956, 43.854889, 42.912369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978264, 43.083015, 42.625599>,  <44.523861, 43.348621, 42.985168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978264, 43.083015, 42.625599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943779, 43.475708, 42.557755>,  <43.923088, 43.711323, 42.517048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943779, 43.475708, 42.557755>,  <43.978264, 43.083015, 42.625599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943779, 43.475708, 42.557755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010264, -0.171107, -0.985199,
		-0.996224, -0.083199, 0.024829,
		-0.086216, 0.981733, -0.169607,
		43.917915, 43.770229, 42.506874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538879, 43.093887, 41.986752>,  <43.978264, 43.083015, 42.625599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538879, 43.093887, 41.986752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725922, 43.445065, 42.027863>,  <43.838146, 43.655769, 42.052528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725922, 43.445065, 42.027863>,  <43.538879, 43.093887, 41.986752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725922, 43.445065, 42.027863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282737, -0.038388, -0.958429,
		-0.837500, 0.477225, -0.266178,
		0.467604, 0.877942, 0.102779,
		43.866203, 43.708447, 42.058697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191616, 43.481903, 41.525349>,  <43.538879, 43.093887, 41.986752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191616, 43.481903, 41.525349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542839, 43.667347, 41.572807>,  <43.753574, 43.778614, 41.601284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542839, 43.667347, 41.572807>,  <43.191616, 43.481903, 41.525349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542839, 43.667347, 41.572807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126238, 0.014764, -0.991890,
		-0.461605, 0.885915, -0.045562,
		0.878057, 0.463613, 0.118651,
		43.806255, 43.806431, 41.608402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122478, 44.015377, 41.078762>,  <43.191616, 43.481903, 41.525349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122478, 44.015377, 41.078762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512878, 43.966755, 41.151039>,  <43.747120, 43.937584, 41.194405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512878, 43.966755, 41.151039>,  <43.122478, 44.015377, 41.078762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512878, 43.966755, 41.151039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202139, 0.196930, -0.959353,
		0.081026, 0.972854, 0.216774,
		0.975999, -0.121551, 0.180695,
		43.805679, 43.930290, 41.205246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507008, 44.610321, 40.794449>,  <43.122478, 44.015377, 41.078762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507008, 44.610321, 40.794449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769745, 44.309994, 40.822235>,  <43.927387, 44.129799, 40.838905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769745, 44.309994, 40.822235>,  <43.507008, 44.610321, 40.794449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769745, 44.309994, 40.822235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336490, 0.209431, -0.918103,
		0.674780, 0.626427, 0.390207,
		0.656846, -0.750818, 0.069467,
		43.966797, 44.084747, 40.843075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093254, 44.917355, 40.673912>,  <43.507008, 44.610321, 40.794449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093254, 44.917355, 40.673912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187408, 44.536293, 40.596924>,  <44.243900, 44.307655, 40.550732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187408, 44.536293, 40.596924>,  <44.093254, 44.917355, 40.673912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187408, 44.536293, 40.596924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288339, 0.257566, -0.922237,
		0.928145, 0.161586, 0.335315,
		0.235387, -0.952654, -0.192467,
		44.258026, 44.250496, 40.539185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780624, 44.894848, 40.338905>,  <44.093254, 44.917355, 40.673912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780624, 44.894848, 40.338905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593597, 44.549442, 40.263298>,  <44.481380, 44.342201, 40.217934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593597, 44.549442, 40.263298>,  <44.780624, 44.894848, 40.338905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593597, 44.549442, 40.263298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265936, 0.066514, -0.961693,
		0.843006, -0.499922, 0.198540,
		-0.467566, -0.863512, -0.189019,
		44.453327, 44.290390, 40.206593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313087, 44.369053, 40.105537>,  <44.780624, 44.894848, 40.338905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313087, 44.369053, 40.105537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948074, 44.277882, 39.969692>,  <44.729065, 44.223179, 39.888187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948074, 44.277882, 39.969692>,  <45.313087, 44.369053, 40.105537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948074, 44.277882, 39.969692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340142, 0.038192, -0.939598,
		0.227131, -0.972929, 0.042677,
		-0.912532, -0.227928, -0.339608,
		44.674316, 44.209503, 39.867809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509212, 44.209328, 39.502953>,  <45.313087, 44.369053, 40.105537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509212, 44.209328, 39.502953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123161, 44.129032, 39.435738>,  <44.891529, 44.080856, 39.395409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123161, 44.129032, 39.435738>,  <45.509212, 44.209328, 39.502953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123161, 44.129032, 39.435738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217383, -0.256900, -0.941672,
		0.145860, -0.945361, 0.291577,
		-0.965126, -0.200737, -0.168034,
		44.833622, 44.068810, 39.385326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586037, 43.600647, 39.232227>,  <45.509212, 44.209328, 39.502953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586037, 43.600647, 39.232227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245705, 43.778011, 39.119461>,  <45.041504, 43.884430, 39.051804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245705, 43.778011, 39.119461>,  <45.586037, 43.600647, 39.232227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245705, 43.778011, 39.119461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221559, -0.183738, -0.957680,
		-0.476444, -0.877284, 0.058088,
		-0.850830, 0.443411, -0.281911,
		44.990456, 43.911034, 39.034889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316334, 43.087971, 38.837734>,  <45.586037, 43.600647, 39.232227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316334, 43.087971, 38.837734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155144, 43.432793, 38.714783>,  <45.058430, 43.639687, 38.641014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155144, 43.432793, 38.714783>,  <45.316334, 43.087971, 38.837734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155144, 43.432793, 38.714783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182543, -0.253397, -0.949983,
		-0.896822, -0.438928, -0.055249,
		-0.402974, 0.862051, -0.307375,
		45.034252, 43.691406, 38.622570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770020, 42.934074, 38.241184>,  <45.316334, 43.087971, 38.837734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770020, 42.934074, 38.241184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881905, 43.317410, 38.218021>,  <44.949036, 43.547409, 38.204124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881905, 43.317410, 38.218021>,  <44.770020, 42.934074, 38.241184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881905, 43.317410, 38.218021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048153, -0.074242, -0.996077,
		-0.958875, 0.275827, -0.066914,
		0.279713, 0.958336, -0.057907,
		44.965816, 43.604912, 38.200649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500362, 43.186722, 37.701725>,  <44.770020, 42.934074, 38.241184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500362, 43.186722, 37.701725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782890, 43.466484, 37.745430>,  <44.952408, 43.634342, 37.771652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782890, 43.466484, 37.745430>,  <44.500362, 43.186722, 37.701725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782890, 43.466484, 37.745430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058885, 0.095765, -0.993661,
		-0.705438, 0.708277, 0.026456,
		0.706321, 0.699409, 0.109263,
		44.994785, 43.676308, 37.778210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340530, 43.656471, 37.167213>,  <44.500362, 43.186722, 37.701725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340530, 43.656471, 37.167213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715988, 43.741474, 37.275867>,  <44.941261, 43.792477, 37.341061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715988, 43.741474, 37.275867>,  <44.340530, 43.656471, 37.167213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715988, 43.741474, 37.275867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240755, 0.160221, -0.957270,
		-0.246953, 0.963934, 0.099227,
		0.938644, 0.212511, 0.271638,
		44.997581, 43.805229, 37.357361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529408, 44.244705, 36.802044>,  <44.340530, 43.656471, 37.167213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529408, 44.244705, 36.802044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884659, 44.100185, 36.915676>,  <45.097809, 44.013474, 36.983856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884659, 44.100185, 36.915676>,  <44.529408, 44.244705, 36.802044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.884659, 44.100185, 36.915676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373089, 0.205786, -0.904686,
		0.268401, 0.909460, 0.317560,
		0.888125, -0.361297, 0.284077,
		45.151096, 43.991795, 37.000900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921803, 44.621922, 36.304703>,  <44.529408, 44.244705, 36.802044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921803, 44.621922, 36.304703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121727, 44.318523, 36.471977>,  <45.241680, 44.136486, 36.572342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121727, 44.318523, 36.471977>,  <44.921803, 44.621922, 36.304703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121727, 44.318523, 36.471977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545586, -0.099281, -0.832154,
		0.672701, 0.644074, 0.364202,
		0.499810, -0.758493, 0.418184,
		45.271671, 44.090977, 36.597431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518116, 44.781841, 36.174137>,  <44.921803, 44.621922, 36.304703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518116, 44.781841, 36.174137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537094, 44.385086, 36.221294>,  <45.548481, 44.147034, 36.249588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537094, 44.385086, 36.221294>,  <45.518116, 44.781841, 36.174137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537094, 44.385086, 36.221294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300978, -0.098344, -0.948547,
		0.952450, 0.080483, 0.293873,
		0.047441, -0.991893, 0.117891,
		45.551327, 44.087517, 36.256660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234612, 44.512417, 35.829079>,  <45.518116, 44.781841, 36.174137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.234612, 44.512417, 35.829079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992447, 44.194809, 35.851055>,  <45.847149, 44.004246, 35.864239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992447, 44.194809, 35.851055>,  <46.234612, 44.512417, 35.829079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992447, 44.194809, 35.851055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315966, -0.303116, -0.899047,
		0.730511, -0.526932, 0.434392,
		-0.605408, -0.794017, 0.054937,
		45.810825, 43.956604, 35.867535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670807, 43.945801, 35.643646>,  <46.234612, 44.512417, 35.829079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670807, 43.945801, 35.643646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297951, 43.817760, 35.575935>,  <46.074238, 43.740936, 35.535309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297951, 43.817760, 35.575935>,  <46.670807, 43.945801, 35.643646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.297951, 43.817760, 35.575935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262154, -0.274080, -0.925287,
		0.249791, -0.906871, 0.339397,
		-0.932137, -0.320103, -0.169276,
		46.018311, 43.721729, 35.525154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749039, 43.254761, 35.450733>,  <46.670807, 43.945801, 35.643646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749039, 43.254761, 35.450733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385796, 43.349327, 35.312485>,  <46.167850, 43.406067, 35.229538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385796, 43.349327, 35.312485>,  <46.749039, 43.254761, 35.450733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.385796, 43.349327, 35.312485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268733, -0.303944, -0.914003,
		-0.321145, -0.922887, 0.212475,
		-0.908101, 0.236428, -0.345621,
		46.113365, 43.420250, 35.208801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.525124, 42.720688, 35.080868>,  <46.749039, 43.254761, 35.450733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.525124, 42.720688, 35.080868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.308174, 43.021667, 34.931389>,  <46.178005, 43.202255, 34.841702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.308174, 43.021667, 34.931389>,  <46.525124, 42.720688, 35.080868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308174, 43.021667, 34.931389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259436, -0.273062, -0.926353,
		-0.799079, -0.599378, -0.047112,
		-0.542371, 0.752452, -0.373698,
		46.145462, 43.247402, 34.819279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195393, 42.410526, 34.559105>,  <46.525124, 42.720688, 35.080868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195393, 42.410526, 34.559105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142067, 42.790367, 34.445625>,  <46.110073, 43.018272, 34.377537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142067, 42.790367, 34.445625>,  <46.195393, 42.410526, 34.559105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142067, 42.790367, 34.445625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084442, -0.274332, -0.957921,
		-0.987470, -0.151658, -0.043614,
		-0.133312, 0.949601, -0.283701,
		46.102074, 43.075249, 34.360516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.289776, 44.396191, 46.707214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.350868, 44.757629, 46.547123>,  <43.387524, 44.974495, 46.451069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.350868, 44.757629, 46.547123>,  <43.289776, 44.396191, 46.707214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350868, 44.757629, 46.547123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356229, -0.327417, -0.875157,
		-0.921833, 0.276232, 0.271884,
		0.152727, 0.903601, -0.400225,
		43.396687, 45.028709, 46.427055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653275, 44.562862, 46.325562>,  <43.289776, 44.396191, 46.707214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653275, 44.562862, 46.325562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.932999, 44.802784, 46.170025>,  <43.100834, 44.946735, 46.076702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.932999, 44.802784, 46.170025>,  <42.653275, 44.562862, 46.325562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932999, 44.802784, 46.170025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317070, -0.227250, -0.920773,
		-0.640649, 0.767197, 0.031262,
		0.699310, 0.599805, -0.388843,
		43.142792, 44.982727, 46.053371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428429, 44.826572, 45.610775>,  <42.653275, 44.562862, 46.325562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428429, 44.826572, 45.610775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.824760, 44.872517, 45.582333>,  <43.062561, 44.900082, 45.565266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.824760, 44.872517, 45.582333>,  <42.428429, 44.826572, 45.610775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824760, 44.872517, 45.582333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038732, -0.262746, -0.964087,
		-0.129420, 0.958004, -0.255889,
		0.990833, 0.114862, -0.071110,
		43.122009, 44.906975, 45.561001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966949, 45.306683, 45.486134>,  <42.428429, 44.826572, 45.610775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966949, 45.306683, 45.486134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.589027, 45.316246, 45.355431>,  <41.362274, 45.321983, 45.277008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.589027, 45.316246, 45.355431>,  <41.966949, 45.306683, 45.486134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589027, 45.316246, 45.355431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327634, -0.071131, 0.942123,
		-0.000715, 0.997180, 0.075039,
		-0.944804, 0.023911, -0.326761,
		41.305588, 45.323418, 45.257401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647888, 45.683487, 45.938438>,  <41.966949, 45.306683, 45.486134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647888, 45.683487, 45.938438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309349, 45.528442, 45.792313>,  <41.106228, 45.435417, 45.704636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309349, 45.528442, 45.792313>,  <41.647888, 45.683487, 45.938438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309349, 45.528442, 45.792313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413045, 0.044576, 0.909619,
		-0.336293, 0.920745, -0.197827,
		-0.846345, -0.387610, -0.365319,
		41.055447, 45.412159, 45.682716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123207, 46.176846, 46.149448>,  <41.647888, 45.683487, 45.938438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123207, 46.176846, 46.149448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.921143, 45.843967, 46.058002>,  <40.799904, 45.644241, 46.003136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.921143, 45.843967, 46.058002>,  <41.123207, 46.176846, 46.149448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921143, 45.843967, 46.058002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142769, -0.180667, 0.973127,
		-0.851133, 0.524227, -0.027545,
		-0.505163, -0.832193, -0.228615,
		40.769592, 45.594311, 45.989418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415070, 46.135532, 46.589722>,  <41.123207, 46.176846, 46.149448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415070, 46.135532, 46.589722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.534317, 45.765942, 46.493889>,  <40.605865, 45.544189, 46.436390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.534317, 45.765942, 46.493889>,  <40.415070, 46.135532, 46.589722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534317, 45.765942, 46.493889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179289, -0.300729, 0.936705,
		-0.937539, -0.236295, -0.255312,
		0.298119, -0.923973, -0.239580,
		40.623753, 45.488750, 46.422016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071697, 45.756847, 47.097099>,  <40.415070, 46.135532, 46.589722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071697, 45.756847, 47.097099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.353058, 45.508568, 46.958561>,  <40.521873, 45.359600, 46.875439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.353058, 45.508568, 46.958561>,  <40.071697, 45.756847, 47.097099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353058, 45.508568, 46.958561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006790, -0.481383, 0.876484,
		-0.710760, -0.618872, -0.334391,
		0.703402, -0.620699, -0.346350,
		40.564079, 45.322357, 46.854656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877018, 45.121494, 47.180176>,  <40.071697, 45.756847, 47.097099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877018, 45.121494, 47.180176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.276428, 45.099854, 47.178837>,  <40.516075, 45.086868, 47.178032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.276428, 45.099854, 47.178837>,  <39.877018, 45.121494, 47.180176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276428, 45.099854, 47.178837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028134, -0.570002, 0.821161,
		-0.046337, -0.819860, -0.570686,
		0.998530, -0.054106, -0.003347,
		40.575989, 45.083622, 47.177834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975887, 44.519291, 47.444881>,  <39.877018, 45.121494, 47.180176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975887, 44.519291, 47.444881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.335869, 44.689209, 47.484146>,  <40.551857, 44.791161, 47.507706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.335869, 44.689209, 47.484146>,  <39.975887, 44.519291, 47.444881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335869, 44.689209, 47.484146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086841, -0.395298, 0.914439,
		0.427251, -0.814427, -0.392639,
		0.899953, 0.424792, 0.098166,
		40.605854, 44.816647, 47.513596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376492, 44.071049, 47.884106>,  <39.975887, 44.519291, 47.444881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376492, 44.071049, 47.884106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.576202, 44.416710, 47.909302>,  <40.696030, 44.624107, 47.924419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.576202, 44.416710, 47.909302>,  <40.376492, 44.071049, 47.884106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576202, 44.416710, 47.909302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186546, -0.178203, 0.966149,
		0.846121, -0.470628, -0.250177,
		0.499279, 0.864148, 0.062987,
		40.725986, 44.675953, 47.928196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032028, 43.877773, 48.277828>,  <40.376492, 44.071049, 47.884106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032028, 43.877773, 48.277828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.997604, 44.275883, 48.295795>,  <40.976948, 44.514748, 48.306576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.997604, 44.275883, 48.295795>,  <41.032028, 43.877773, 48.277828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997604, 44.275883, 48.295795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114553, -0.034899, 0.992804,
		0.989682, 0.090587, -0.111009,
		-0.086061, 0.995277, 0.044916,
		40.971786, 44.574467, 48.309269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644688, 44.129841, 48.653435>,  <41.032028, 43.877773, 48.277828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644688, 44.129841, 48.653435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.362968, 44.411972, 48.685608>,  <41.193935, 44.581253, 48.704910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.362968, 44.411972, 48.685608>,  <41.644688, 44.129841, 48.653435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362968, 44.411972, 48.685608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215089, 0.104048, 0.971036,
		0.676533, 0.701200, -0.224990,
		-0.704301, 0.705331, 0.080429,
		41.151680, 44.623569, 48.709736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945103, 44.825649, 49.007332>,  <41.644688, 44.129841, 48.653435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945103, 44.825649, 49.007332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.548752, 44.792881, 49.050133>,  <41.310940, 44.773220, 49.075813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.548752, 44.792881, 49.050133>,  <41.945103, 44.825649, 49.007332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548752, 44.792881, 49.050133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090466, 0.184123, 0.978731,
		-0.099881, 0.979483, -0.175032,
		-0.990878, -0.081922, 0.107000,
		41.251488, 44.768303, 49.082233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839741, 45.106731, 49.637424>,  <41.945103, 44.825649, 49.007332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839741, 45.106731, 49.637424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.452271, 45.021503, 49.586411>,  <41.219788, 44.970367, 49.555801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.452271, 45.021503, 49.586411>,  <41.839741, 45.106731, 49.637424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452271, 45.021503, 49.586411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172419, 0.207484, 0.962924,
		-0.178708, 0.954752, -0.237722,
		-0.968677, -0.213070, -0.127539,
		41.161667, 44.957581, 49.548149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512478, 45.488762, 50.087776>,  <41.839741, 45.106731, 49.637424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512478, 45.488762, 50.087776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.239388, 45.206661, 50.011341>,  <41.075535, 45.037403, 49.965481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.239388, 45.206661, 50.011341>,  <41.512478, 45.488762, 50.087776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239388, 45.206661, 50.011341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429245, 0.175474, 0.885978,
		-0.591303, 0.686902, -0.422524,
		-0.682722, -0.705248, -0.191091,
		41.034573, 44.995087, 49.954014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818905, 45.816338, 50.312057>,  <41.512478, 45.488762, 50.087776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818905, 45.816338, 50.312057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.814392, 45.416481, 50.302361>,  <40.811684, 45.176567, 50.296543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.814392, 45.416481, 50.302361>,  <40.818905, 45.816338, 50.312057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814392, 45.416481, 50.302361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579014, -0.013238, 0.815210,
		-0.815240, 0.023233, -0.578658,
		-0.011279, -0.999642, -0.024244,
		40.811008, 45.116589, 50.295086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165680, 45.661369, 50.599480>,  <40.818905, 45.816338, 50.312057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165680, 45.661369, 50.599480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.375397, 45.322014, 50.628738>,  <40.501225, 45.118401, 50.646294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.375397, 45.322014, 50.628738>,  <40.165680, 45.661369, 50.599480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375397, 45.322014, 50.628738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469622, -0.216418, 0.855931,
		-0.710335, -0.483108, -0.511889,
		0.524289, -0.848392, 0.073149,
		40.532684, 45.067497, 50.650684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780697, 45.320801, 51.051510>,  <40.165680, 45.661369, 50.599480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780697, 45.320801, 51.051510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.111122, 45.096027, 51.034306>,  <40.309376, 44.961163, 51.023983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.111122, 45.096027, 51.034306>,  <39.780697, 45.320801, 51.051510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111122, 45.096027, 51.034306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134574, -0.270789, 0.953186,
		-0.547279, -0.781600, -0.299310,
		0.826060, -0.561938, -0.043014,
		40.358940, 44.927444, 51.021400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595463, 44.675991, 51.223522>,  <39.780697, 45.320801, 51.051510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595463, 44.675991, 51.223522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.976944, 44.734344, 51.328720>,  <40.205833, 44.769356, 51.391838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.976944, 44.734344, 51.328720>,  <39.595463, 44.675991, 51.223522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976944, 44.734344, 51.328720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250138, -0.100738, 0.962955,
		0.166975, -0.984159, -0.059583,
		0.953704, 0.145885, 0.262996,
		40.263054, 44.778111, 51.407619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819366, 44.103870, 51.715965>,  <39.595463, 44.675991, 51.223522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819366, 44.103870, 51.715965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068123, 44.408752, 51.787849>,  <40.217377, 44.591682, 51.830982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068123, 44.408752, 51.787849>,  <39.819366, 44.103870, 51.715965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068123, 44.408752, 51.787849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200956, -0.066476, 0.977342,
		0.756879, -0.643917, 0.111828,
		0.621893, 0.762202, 0.179713,
		40.254692, 44.637413, 51.841763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091045, 43.888462, 52.264179>,  <39.819366, 44.103870, 51.715965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091045, 43.888462, 52.264179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.198586, 44.273617, 52.254715>,  <40.263111, 44.504711, 52.249035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.198586, 44.273617, 52.254715>,  <40.091045, 43.888462, 52.264179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198586, 44.273617, 52.254715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152137, 0.066713, 0.986105,
		0.951091, -0.261515, 0.164427,
		0.268851, 0.962891, -0.023664,
		40.279240, 44.562485, 52.247616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568966, 43.960930, 52.793743>,  <40.091045, 43.888462, 52.264179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568966, 43.960930, 52.793743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.431442, 44.332066, 52.735909>,  <40.348927, 44.554749, 52.701210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.431442, 44.332066, 52.735909>,  <40.568966, 43.960930, 52.793743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431442, 44.332066, 52.735909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126209, 0.106913, 0.986226,
		0.930520, 0.357321, 0.080345,
		-0.343809, 0.927842, -0.144582,
		40.328300, 44.610416, 52.692535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876526, 44.402020, 53.329113>,  <40.568966, 43.960930, 52.793743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876526, 44.402020, 53.329113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.561562, 44.602348, 53.185356>,  <40.372581, 44.722546, 53.099102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.561562, 44.602348, 53.185356>,  <40.876526, 44.402020, 53.329113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561562, 44.602348, 53.185356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239716, 0.288350, 0.927033,
		0.567909, 0.816107, -0.106994,
		-0.787410, 0.500823, -0.359391,
		40.325340, 44.752594, 53.077538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803963, 44.922905, 53.859741>,  <40.876526, 44.402020, 53.329113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803963, 44.922905, 53.859741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467514, 44.994282, 53.655518>,  <40.265644, 45.037109, 53.532982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467514, 44.994282, 53.655518>,  <40.803963, 44.922905, 53.859741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467514, 44.994282, 53.655518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421915, 0.374122, 0.825845,
		0.338378, 0.910050, -0.239395,
		-0.841123, 0.178444, -0.510558,
		40.215176, 45.047813, 53.502350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586018, 45.610199, 53.946999>,  <40.803963, 44.922905, 53.859741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586018, 45.610199, 53.946999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.276413, 45.374165, 53.855171>,  <40.090649, 45.232544, 53.800076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.276413, 45.374165, 53.855171>,  <40.586018, 45.610199, 53.946999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276413, 45.374165, 53.855171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475163, 0.301702, 0.826557,
		-0.418478, 0.748849, -0.513908,
		-0.774013, -0.590086, -0.229570,
		40.044209, 45.197140, 53.786301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940361, 46.055477, 53.862343>,  <40.586018, 45.610199, 53.946999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940361, 46.055477, 53.862343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.841087, 45.673538, 53.927673>,  <39.781525, 45.444374, 53.966869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.841087, 45.673538, 53.927673>,  <39.940361, 46.055477, 53.862343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841087, 45.673538, 53.927673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511465, 0.272343, 0.815005,
		-0.822684, 0.118735, -0.555961,
		-0.248182, -0.954846, 0.163323,
		39.766632, 45.387085, 53.976669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265388, 46.159184, 53.994411>,  <39.940361, 46.055477, 53.862343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265388, 46.159184, 53.994411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266685, 45.777779, 54.114944>,  <39.267464, 45.548935, 54.187263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266685, 45.777779, 54.114944>,  <39.265388, 46.159184, 53.994411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266685, 45.777779, 54.114944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346943, 0.281546, 0.894630,
		-0.937881, -0.107448, -0.329901,
		0.003243, -0.953513, 0.301335,
		39.267658, 45.491726, 54.205345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597813, 46.107063, 54.251110>,  <39.265388, 46.159184, 53.994411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597813, 46.107063, 54.251110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875893, 45.868958, 54.412285>,  <39.042740, 45.726093, 54.508991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875893, 45.868958, 54.412285>,  <38.597813, 46.107063, 54.251110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875893, 45.868958, 54.412285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363268, 0.192766, 0.911525,
		-0.620269, -0.780067, -0.082228,
		0.695200, -0.595261, 0.402940,
		39.084454, 45.690380, 54.533169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364437, 46.044727, 54.857666>,  <38.597813, 46.107063, 54.251110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364437, 46.044727, 54.857666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.720955, 45.876640, 54.925797>,  <38.934864, 45.775787, 54.966675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.720955, 45.876640, 54.925797>,  <38.364437, 46.044727, 54.857666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720955, 45.876640, 54.925797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070106, 0.243413, 0.967386,
		-0.447971, -0.874167, 0.187494,
		0.891295, -0.420216, 0.170326,
		38.988342, 45.750576, 54.976894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282822, 45.477776, 55.394604>,  <38.364437, 46.044727, 54.857666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282822, 45.477776, 55.394604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.640755, 45.656273, 55.399216>,  <38.855515, 45.763371, 55.401985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.640755, 45.656273, 55.399216>,  <38.282822, 45.477776, 55.394604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640755, 45.656273, 55.399216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150561, 0.277386, 0.948888,
		0.420238, -0.850836, 0.315402,
		0.894836, 0.446246, 0.011534,
		38.909206, 45.790146, 55.402676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533932, 45.221386, 56.004074>,  <38.282822, 45.477776, 55.394604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533932, 45.221386, 56.004074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789474, 45.525673, 55.958183>,  <38.942799, 45.708244, 55.930649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789474, 45.525673, 55.958183>,  <38.533932, 45.221386, 56.004074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789474, 45.525673, 55.958183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026479, 0.170784, 0.984953,
		0.768869, -0.626207, 0.129250,
		0.638858, 0.760722, -0.114729,
		38.981133, 45.753891, 55.923763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911247, 45.312645, 56.656185>,  <38.533932, 45.221386, 56.004074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911247, 45.312645, 56.656185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980980, 45.661861, 56.474014>,  <39.022820, 45.871391, 56.364712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980980, 45.661861, 56.474014>,  <38.911247, 45.312645, 56.656185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980980, 45.661861, 56.474014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110546, 0.476939, 0.871957,
		0.978462, -0.101662, 0.179656,
		0.174330, 0.873037, -0.455429,
		39.033279, 45.923771, 56.337387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304924, 45.686241, 57.169258>,  <38.911247, 45.312645, 56.656185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304924, 45.686241, 57.169258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141998, 45.956215, 56.923149>,  <39.044243, 46.118198, 56.775482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141998, 45.956215, 56.923149>,  <39.304924, 45.686241, 57.169258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141998, 45.956215, 56.923149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139742, 0.619699, 0.772299,
		0.902533, 0.400549, -0.158097,
		-0.407316, 0.674932, -0.615273,
		39.019802, 46.158695, 56.738567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601208, 46.281815, 57.330765>,  <39.304924, 45.686241, 57.169258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601208, 46.281815, 57.330765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.231796, 46.322678, 57.182899>,  <39.010147, 46.347195, 57.094181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.231796, 46.322678, 57.182899>,  <39.601208, 46.281815, 57.330765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231796, 46.322678, 57.182899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191415, 0.712455, 0.675105,
		0.332341, 0.694241, -0.638419,
		-0.923531, 0.102162, -0.369667,
		38.954739, 46.353325, 57.071999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
