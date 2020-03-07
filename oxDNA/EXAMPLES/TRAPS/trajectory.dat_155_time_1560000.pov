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
	<35.538166, 52.608292, 49.558327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700191, 52.742725, 49.898438>,  <35.797405, 52.823387, 50.102505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700191, 52.742725, 49.898438>,  <35.538166, 52.608292, 49.558327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700191, 52.742725, 49.898438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552241, -0.831113, 0.065432,
		0.728666, 0.443054, -0.522253,
		0.405062, 0.336088, 0.850276,
		35.821709, 52.843552, 50.153519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297821, 52.610516, 49.431816>,  <35.538166, 52.608292, 49.558327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297821, 52.610516, 49.431816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151249, 52.547562, 49.798630>,  <36.063305, 52.509789, 50.018719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151249, 52.547562, 49.798630>,  <36.297821, 52.610516, 49.431816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151249, 52.547562, 49.798630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525410, -0.848414, 0.064334,
		0.767901, 0.505394, 0.393580,
		-0.366433, -0.157389, 0.917036,
		36.041321, 52.500343, 50.073742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844341, 52.562714, 49.913708>,  <36.297821, 52.610516, 49.431816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844341, 52.562714, 49.913708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534504, 52.343914, 50.040707>,  <36.348602, 52.212635, 50.116905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534504, 52.343914, 50.040707>,  <36.844341, 52.562714, 49.913708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534504, 52.343914, 50.040707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585697, -0.809828, 0.033715,
		0.238676, 0.212073, 0.947660,
		-0.774592, -0.546995, 0.317497,
		36.302128, 52.179817, 50.135956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640636, 52.283501, 50.613808>,  <36.844341, 52.562714, 49.913708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640636, 52.283501, 50.613808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019379, 52.174492, 50.545464>,  <37.246624, 52.109085, 50.504456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019379, 52.174492, 50.545464>,  <36.640636, 52.283501, 50.613808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019379, 52.174492, 50.545464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309739, 0.629247, 0.712819,
		-0.086743, -0.727860, 0.680217,
		0.946857, -0.272522, -0.170864,
		37.303436, 52.092735, 50.494205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221722, 52.361923, 51.096371>,  <36.640636, 52.283501, 50.613808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221722, 52.361923, 51.096371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528423, 52.115208, 51.167538>,  <37.712444, 51.967178, 51.210239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528423, 52.115208, 51.167538>,  <37.221722, 52.361923, 51.096371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528423, 52.115208, 51.167538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098270, -0.386671, -0.916967,
		0.634373, 0.685605, -0.357095,
		0.766756, -0.616790, 0.177919,
		37.758450, 51.930172, 51.220913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947350, 52.461853, 51.199661>,  <37.221722, 52.361923, 51.096371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947350, 52.461853, 51.199661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334553, 52.517735, 51.283028>,  <38.566875, 52.551266, 51.333046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334553, 52.517735, 51.283028>,  <37.947350, 52.461853, 51.199661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334553, 52.517735, 51.283028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071100, 0.949327, -0.306143,
		-0.240621, 0.281532, 0.928893,
		0.968012, 0.139709, 0.208411,
		38.624958, 52.559647, 51.345551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021080, 52.898888, 51.776108>,  <37.947350, 52.461853, 51.199661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021080, 52.898888, 51.776108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372570, 52.944218, 51.590633>,  <38.583462, 52.971416, 51.479347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372570, 52.944218, 51.590633>,  <38.021080, 52.898888, 51.776108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372570, 52.944218, 51.590633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152814, 0.987071, -0.048356,
		0.452210, 0.113349, 0.884679,
		0.878723, 0.113325, -0.463685,
		38.636189, 52.978214, 51.451527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346149, 53.482956, 52.129368>,  <38.021080, 52.898888, 51.776108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346149, 53.482956, 52.129368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445309, 53.435524, 51.744766>,  <38.504803, 53.407063, 51.514008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445309, 53.435524, 51.744766>,  <38.346149, 53.482956, 52.129368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445309, 53.435524, 51.744766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445359, 0.867443, -0.221806,
		0.860350, 0.483198, 0.162227,
		0.247899, -0.118582, -0.961501,
		38.519680, 53.399948, 51.456314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031063, 53.574989, 52.099800>,  <38.346149, 53.482956, 52.129368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031063, 53.574989, 52.099800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414623, 53.662849, 52.027946>,  <39.644760, 53.715565, 51.984833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414623, 53.662849, 52.027946>,  <39.031063, 53.574989, 52.099800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414623, 53.662849, 52.027946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156016, 0.120676, 0.980355,
		0.237014, -0.968086, 0.081447,
		0.958897, 0.219651, -0.179639,
		39.702293, 53.728745, 51.974056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591057, 53.115597, 52.430496>,  <39.031063, 53.574989, 52.099800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591057, 53.115597, 52.430496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697468, 53.498268, 52.383183>,  <39.761314, 53.727871, 52.354794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697468, 53.498268, 52.383183>,  <39.591057, 53.115597, 52.430496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697468, 53.498268, 52.383183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144574, 0.081719, 0.986114,
		0.953062, -0.279435, -0.116572,
		0.266029, 0.956680, -0.118283,
		39.777275, 53.785271, 52.347698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486221, 52.462334, 52.138771>,  <39.591057, 53.115597, 52.430496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486221, 52.462334, 52.138771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675827, 52.393833, 52.484253>,  <39.789589, 52.352734, 52.691544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675827, 52.393833, 52.484253>,  <39.486221, 52.462334, 52.138771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675827, 52.393833, 52.484253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682292, -0.548607, -0.483227,
		0.556590, 0.818353, -0.143199,
		0.474010, -0.171256, 0.863705,
		39.818031, 52.342457, 52.743366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709957, 51.721100, 51.942070>,  <39.486221, 52.462334, 52.138771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709957, 51.721100, 51.942070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499519, 52.015282, 51.771267>,  <39.373257, 52.191792, 51.668785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499519, 52.015282, 51.771267>,  <39.709957, 51.721100, 51.942070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499519, 52.015282, 51.771267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761727, 0.184251, -0.621148,
		-0.378150, -0.652042, -0.657149,
		-0.526094, 0.735454, -0.427003,
		39.341690, 52.235916, 51.643166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810955, 51.676933, 51.219551>,  <39.709957, 51.721100, 51.942070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810955, 51.676933, 51.219551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720360, 52.049168, 51.334595>,  <39.666004, 52.272507, 51.403622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720360, 52.049168, 51.334595>,  <39.810955, 51.676933, 51.219551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720360, 52.049168, 51.334595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828980, 0.339193, -0.444679,
		-0.511367, 0.137713, -0.848256,
		-0.226485, 0.930582, 0.287613,
		39.652416, 52.328342, 51.420879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453320, 52.102295, 51.503357>,  <39.810955, 51.676933, 51.219551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453320, 52.102295, 51.503357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632149, 51.764843, 51.384422>,  <40.739445, 51.562370, 51.313061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632149, 51.764843, 51.384422>,  <40.453320, 52.102295, 51.503357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632149, 51.764843, 51.384422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893143, 0.439303, 0.096482,
		0.049226, -0.308700, 0.949885,
		0.447071, -0.843633, -0.297339,
		40.766270, 51.511753, 51.295219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867340, 52.757099, 51.548710>,  <40.453320, 52.102295, 51.503357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867340, 52.757099, 51.548710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263805, 52.785072, 51.593788>,  <41.501686, 52.801857, 51.620834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263805, 52.785072, 51.593788>,  <40.867340, 52.757099, 51.548710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263805, 52.785072, 51.593788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116748, -0.056883, -0.991531,
		-0.062933, 0.995929, -0.064545,
		0.991166, 0.069935, 0.112693,
		41.561153, 52.806053, 51.627598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074505, 53.293926, 51.121613>,  <40.867340, 52.757099, 51.548710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074505, 53.293926, 51.121613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364056, 53.021126, 51.163326>,  <41.537785, 52.857445, 51.188354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364056, 53.021126, 51.163326>,  <41.074505, 53.293926, 51.121613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364056, 53.021126, 51.163326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027276, -0.122746, -0.992063,
		0.689391, 0.720975, -0.070250,
		0.723876, -0.682003, 0.104285,
		41.581219, 52.816525, 51.194611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524513, 53.457104, 50.612915>,  <41.074505, 53.293926, 51.121613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524513, 53.457104, 50.612915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626400, 53.082546, 50.709488>,  <41.687531, 52.857811, 50.767433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626400, 53.082546, 50.709488>,  <41.524513, 53.457104, 50.612915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626400, 53.082546, 50.709488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161133, -0.205078, -0.965391,
		0.953497, 0.284802, 0.098647,
		0.254715, -0.936393, 0.241432,
		41.702816, 52.801628, 50.781918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227856, 53.259300, 50.967445>,  <41.524513, 53.457104, 50.612915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227856, 53.259300, 50.967445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613220, 53.313553, 51.059914>,  <42.844440, 53.346104, 51.115395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613220, 53.313553, 51.059914>,  <42.227856, 53.259300, 50.967445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613220, 53.313553, 51.059914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244981, 0.795502, 0.554221,
		-0.108726, -0.590576, 0.799624,
		0.963412, 0.135634, 0.231172,
		42.902245, 53.354244, 51.129265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322216, 53.376900, 51.766312>,  <42.227856, 53.259300, 50.967445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322216, 53.376900, 51.766312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.686218, 53.375298, 51.932144>,  <42.904617, 53.374336, 52.031643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.686218, 53.375298, 51.932144>,  <42.322216, 53.376900, 51.766312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686218, 53.375298, 51.932144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414349, 0.026215, 0.909740,
		-0.014514, -0.999648, 0.022196,
		0.910002, -0.004007, 0.414584,
		42.959221, 53.374096, 52.056519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404732, 52.910679, 52.366436>,  <42.322216, 53.376900, 51.766312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404732, 52.910679, 52.366436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673714, 53.192760, 52.456310>,  <42.835102, 53.362011, 52.510235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673714, 53.192760, 52.456310>,  <42.404732, 52.910679, 52.366436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673714, 53.192760, 52.456310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465641, 0.167129, 0.869049,
		0.575307, -0.689023, 0.440760,
		0.672459, 0.705206, 0.224687,
		42.875450, 53.404324, 52.523716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473877, 52.910835, 53.098190>,  <42.404732, 52.910679, 52.366436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473877, 52.910835, 53.098190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556614, 53.275761, 52.956825>,  <42.606255, 53.494717, 52.872005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556614, 53.275761, 52.956825>,  <42.473877, 52.910835, 53.098190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556614, 53.275761, 52.956825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483313, 0.409352, 0.773847,
		0.850662, 0.010746, 0.525604,
		0.206841, 0.912313, -0.353414,
		42.618668, 53.549454, 52.850800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792419, 53.332985, 53.650234>,  <42.473877, 52.910835, 53.098190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792419, 53.332985, 53.650234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560989, 53.546371, 53.403442>,  <42.422131, 53.674404, 53.255367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560989, 53.546371, 53.403442>,  <42.792419, 53.332985, 53.650234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560989, 53.546371, 53.403442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514906, 0.347760, 0.783540,
		0.632554, 0.771022, 0.073482,
		-0.578573, 0.533468, -0.616981,
		42.387417, 53.706413, 53.218349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333897, 53.166534, 54.118397>,  <42.792419, 53.332985, 53.650234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333897, 53.166534, 54.118397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559277, 52.894394, 54.305859>,  <43.694504, 52.731110, 54.418335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559277, 52.894394, 54.305859>,  <43.333897, 53.166534, 54.118397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559277, 52.894394, 54.305859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600998, -0.051675, -0.797578,
		0.566852, 0.731061, 0.379774,
		0.563454, -0.680352, 0.468659,
		43.728313, 52.690289, 54.446457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962917, 53.413204, 54.131264>,  <43.333897, 53.166534, 54.118397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962917, 53.413204, 54.131264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981216, 53.013885, 54.145763>,  <43.992195, 52.774296, 54.154465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981216, 53.013885, 54.145763>,  <43.962917, 53.413204, 54.131264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981216, 53.013885, 54.145763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484218, -0.009576, -0.874895,
		0.873750, 0.057581, 0.482954,
		0.045753, -0.998295, 0.036248,
		43.994942, 52.714397, 54.156639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607082, 53.150101, 53.993275>,  <43.962917, 53.413204, 54.131264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607082, 53.150101, 53.993275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422314, 52.811459, 53.887531>,  <44.311451, 52.608273, 53.824085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422314, 52.811459, 53.887531>,  <44.607082, 53.150101, 53.993275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422314, 52.811459, 53.887531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557224, -0.045131, -0.829135,
		0.690020, -0.530304, 0.492596,
		-0.461924, -0.846606, -0.264357,
		44.283737, 52.557476, 53.808224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274754, 53.328671, 54.338070>,  <44.607082, 53.150101, 53.993275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274754, 53.328671, 54.338070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443691, 53.306419, 53.976181>,  <45.545055, 53.293068, 53.759048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443691, 53.306419, 53.976181>,  <45.274754, 53.328671, 54.338070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443691, 53.306419, 53.976181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855271, -0.306137, 0.418082,
		-0.300222, -0.950361, -0.081731,
		0.422350, -0.055615, -0.904725,
		45.570396, 53.289734, 53.704762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566212, 52.619373, 54.208645>,  <45.274754, 53.328671, 54.338070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566212, 52.619373, 54.208645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743271, 52.877335, 53.959431>,  <45.849506, 53.032112, 53.809902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743271, 52.877335, 53.959431>,  <45.566212, 52.619373, 54.208645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743271, 52.877335, 53.959431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888814, -0.407479, 0.209694,
		-0.118642, -0.646581, -0.753563,
		0.442645, 0.644899, -0.623034,
		45.876064, 53.070805, 53.772522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097294, 52.286827, 53.637733>,  <45.566212, 52.619373, 54.208645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097294, 52.286827, 53.637733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177723, 52.656849, 53.766640>,  <46.225979, 52.878860, 53.843983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177723, 52.656849, 53.766640>,  <46.097294, 52.286827, 53.637733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177723, 52.656849, 53.766640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922017, -0.289831, 0.256676,
		0.330840, 0.245521, -0.911189,
		0.201071, 0.925050, 0.322262,
		46.238045, 52.934364, 53.863319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856892, 52.538322, 53.540562>,  <46.097294, 52.286827, 53.637733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856892, 52.538322, 53.540562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.721321, 52.767044, 53.839405>,  <46.639980, 52.904278, 54.018711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.721321, 52.767044, 53.839405>,  <46.856892, 52.538322, 53.540562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.721321, 52.767044, 53.839405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925425, 0.059578, 0.374218,
		0.169467, 0.818226, -0.549352,
		-0.338924, 0.571802, 0.747110,
		46.619644, 52.938583, 54.063538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.252903, 53.112579, 53.531612>,  <46.856892, 52.538322, 53.540562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.252903, 53.112579, 53.531612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166710, 53.008728, 53.908157>,  <47.114994, 52.946415, 54.134083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166710, 53.008728, 53.908157>,  <47.252903, 53.112579, 53.531612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.166710, 53.008728, 53.908157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974557, 0.003708, 0.224109,
		-0.061676, 0.965700, 0.252228,
		-0.215487, -0.259633, 0.941359,
		47.102062, 52.930840, 54.190563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.626850, 53.568165, 53.999939>,  <47.252903, 53.112579, 53.531612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.626850, 53.568165, 53.999939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.527645, 53.248352, 54.218750>,  <47.468121, 53.056465, 54.350037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.527645, 53.248352, 54.218750>,  <47.626850, 53.568165, 53.999939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.527645, 53.248352, 54.218750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905654, 0.009100, 0.423919,
		-0.343915, 0.600553, 0.721844,
		-0.248017, -0.799533, 0.547023,
		47.453239, 53.008492, 54.382858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.891022, 53.574951, 54.568417>,  <47.626850, 53.568165, 53.999939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.891022, 53.574951, 54.568417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829296, 53.186378, 54.496292>,  <47.792263, 52.953236, 54.453018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829296, 53.186378, 54.496292>,  <47.891022, 53.574951, 54.568417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.829296, 53.186378, 54.496292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961743, -0.189495, 0.197844,
		-0.226360, -0.142888, 0.963506,
		-0.154310, -0.971429, -0.180316,
		47.783005, 52.894951, 54.442196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.092140, 53.154835, 55.140121>,  <47.891022, 53.574951, 54.568417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.092140, 53.154835, 55.140121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.158237, 52.951447, 54.802094>,  <48.197895, 52.829414, 54.599277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.158237, 52.951447, 54.802094>,  <48.092140, 53.154835, 55.140121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.158237, 52.951447, 54.802094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933953, -0.194645, 0.299742,
		-0.316900, -0.838790, 0.442725,
		0.165246, -0.508472, -0.845074,
		48.207809, 52.798904, 54.548573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.386986, 52.372391, 55.133850>,  <48.092140, 53.154835, 55.140121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.386986, 52.372391, 55.133850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.535587, 52.556038, 54.811066>,  <48.624748, 52.666225, 54.617393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.535587, 52.556038, 54.811066>,  <48.386986, 52.372391, 55.133850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.535587, 52.556038, 54.811066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925638, -0.250523, 0.283604,
		-0.071955, -0.852319, -0.518049,
		0.371505, 0.459119, -0.806966,
		48.647038, 52.693775, 54.568977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.022884, 52.071419, 54.856724>,  <48.386986, 52.372391, 55.133850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.022884, 52.071419, 54.856724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.064465, 52.444565, 54.718765>,  <49.089413, 52.668453, 54.635990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.064465, 52.444565, 54.718765>,  <49.022884, 52.071419, 54.856724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.064465, 52.444565, 54.718765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936500, 0.024963, 0.349779,
		0.334906, -0.359360, -0.871033,
		0.103953, 0.932865, -0.344901,
		49.095650, 52.724426, 54.615295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.576435, 52.089725, 54.361469>,  <49.022884, 52.071419, 54.856724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.576435, 52.089725, 54.361469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.523026, 52.454510, 54.516647>,  <49.490982, 52.673378, 54.609756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.523026, 52.454510, 54.516647>,  <49.576435, 52.089725, 54.361469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.523026, 52.454510, 54.516647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990431, 0.109000, 0.084650,
		0.034911, 0.395540, -0.917785,
		-0.133521, 0.911958, 0.387950,
		49.482971, 52.728096, 54.633034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.176434, 52.281338, 54.639786>,  <49.576435, 52.089725, 54.361469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.176434, 52.281338, 54.639786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.045624, 52.658775, 54.660503>,  <49.967136, 52.885239, 54.672932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.045624, 52.658775, 54.660503>,  <50.176434, 52.281338, 54.639786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.045624, 52.658775, 54.660503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929882, 0.311537, 0.195610,
		0.168442, 0.112131, -0.979313,
		-0.327026, 0.943595, 0.051792,
		49.947517, 52.941853, 54.676041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.689087, 52.262253, 55.153000>,  <50.176434, 52.281338, 54.639786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.689087, 52.262253, 55.153000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.699619, 52.168789, 54.764214>,  <50.705936, 52.112713, 54.530941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.699619, 52.168789, 54.764214>,  <50.689087, 52.262253, 55.153000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.699619, 52.168789, 54.764214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049400, 0.971416, -0.232188,
		0.998432, -0.041902, 0.037117,
		0.026327, -0.233658, -0.971962,
		50.707516, 52.098690, 54.472626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.217529, 52.545132, 54.901508>,  <50.689087, 52.262253, 55.153000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.217529, 52.545132, 54.901508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.960545, 52.486546, 54.600632>,  <50.806355, 52.451393, 54.420105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.960545, 52.486546, 54.600632>,  <51.217529, 52.545132, 54.901508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.960545, 52.486546, 54.600632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025014, 0.977034, -0.211610,
		0.765908, -0.154767, -0.624045,
		-0.642463, -0.146464, -0.752189,
		50.767807, 52.442608, 54.374973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.063850, 52.454834, 54.839455>,  <51.217529, 52.545132, 54.901508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.063850, 52.454834, 54.839455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.158798, 52.119835, 55.036331>,  <52.215767, 51.918835, 55.154457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.158798, 52.119835, 55.036331>,  <52.063850, 52.454834, 54.839455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.158798, 52.119835, 55.036331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961217, 0.275737, 0.005625,
		-0.140426, 0.471764, 0.870471,
		0.237367, -0.837501, 0.492188,
		52.230007, 51.868584, 55.183987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.448486, 52.612602, 55.499172>,  <52.063850, 52.454834, 54.839455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.448486, 52.612602, 55.499172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.537621, 52.265732, 55.321022>,  <52.591099, 52.057610, 55.214134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.537621, 52.265732, 55.321022>,  <52.448486, 52.612602, 55.499172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.537621, 52.265732, 55.321022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955511, 0.284849, -0.076553,
		0.193248, -0.408499, 0.892067,
		0.222833, -0.867173, -0.445372,
		52.604469, 52.005581, 55.187412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.902622, 52.291847, 55.883106>,  <52.448486, 52.612602, 55.499172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.902622, 52.291847, 55.883106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.931149, 52.194725, 55.496124>,  <52.948265, 52.136452, 55.263935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.931149, 52.194725, 55.496124>,  <52.902622, 52.291847, 55.883106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.931149, 52.194725, 55.496124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917897, 0.395558, -0.031616,
		0.390360, -0.885765, 0.251078,
		0.071312, -0.242805, -0.967450,
		52.952541, 52.121883, 55.205891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.651733, 52.070179, 55.740459>,  <52.902622, 52.291847, 55.883106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.651733, 52.070179, 55.740459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.523441, 52.264061, 55.414955>,  <53.446468, 52.380390, 55.219654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.523441, 52.264061, 55.414955>,  <53.651733, 52.070179, 55.740459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.523441, 52.264061, 55.414955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839153, 0.543854, -0.006798,
		0.439270, -0.685047, -0.581166,
		-0.320726, 0.484701, -0.813757,
		53.427223, 52.409470, 55.170830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.093666, 51.945766, 55.113712>,  <53.651733, 52.070179, 55.740459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.093666, 51.945766, 55.113712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.929722, 52.310272, 55.129791>,  <53.831356, 52.528976, 55.139439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.929722, 52.310272, 55.129791>,  <54.093666, 51.945766, 55.113712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.929722, 52.310272, 55.129791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911607, 0.410738, -0.016317,
		-0.031381, 0.029960, -0.999058,
		-0.409863, 0.911261, 0.040201,
		53.806763, 52.583649, 55.141853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.476494, 52.438183, 54.577633>,  <54.093666, 51.945766, 55.113712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.476494, 52.438183, 54.577633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.309723, 52.662804, 54.863525>,  <54.209660, 52.797577, 55.035061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.309723, 52.662804, 54.863525>,  <54.476494, 52.438183, 54.577633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.309723, 52.662804, 54.863525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895106, 0.390328, 0.215475,
		-0.157978, 0.729594, -0.665384,
		-0.416927, 0.561548, 0.714727,
		54.184647, 52.831268, 55.077942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.642464, 53.179962, 54.524223>,  <54.476494, 52.438183, 54.577633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.642464, 53.179962, 54.524223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.581436, 53.076321, 54.905712>,  <54.544819, 53.014137, 55.134605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.581436, 53.076321, 54.905712>,  <54.642464, 53.179962, 54.524223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.581436, 53.076321, 54.905712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881835, 0.399997, 0.249740,
		-0.446194, 0.879130, 0.167455,
		-0.152572, -0.259100, 0.953724,
		54.535664, 52.998592, 55.191830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.895626, 53.761745, 54.889126>,  <54.642464, 53.179962, 54.524223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.895626, 53.761745, 54.889126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.873444, 53.471016, 55.162956>,  <54.860134, 53.296577, 55.327255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.873444, 53.471016, 55.162956>,  <54.895626, 53.761745, 54.889126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.873444, 53.471016, 55.162956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923189, 0.223836, 0.312441,
		-0.380324, 0.649323, 0.658584,
		-0.055460, -0.726826, 0.684579,
		54.856804, 53.252968, 55.368328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.352665, 54.063370, 55.337749>,  <54.895626, 53.761745, 54.889126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.352665, 54.063370, 55.337749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.325775, 53.672863, 55.420097>,  <55.309643, 53.438560, 55.469505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.325775, 53.672863, 55.420097>,  <55.352665, 54.063370, 55.337749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.325775, 53.672863, 55.420097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984575, -0.031502, 0.172102,
		-0.161532, 0.214261, 0.963327,
		-0.067222, -0.976268, 0.205867,
		55.305607, 53.379982, 55.481857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.706177, 53.956860, 56.061943>,  <55.352665, 54.063370, 55.337749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.706177, 53.956860, 56.061943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.976700, 54.045216, 55.780853>,  <56.139011, 54.098228, 55.612198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.976700, 54.045216, 55.780853>,  <55.706177, 53.956860, 56.061943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.976700, 54.045216, 55.780853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156255, 0.889254, 0.429897,
		0.719860, -0.400546, 0.566891,
		0.676303, 0.220886, -0.702726,
		56.179592, 54.111481, 55.570034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.528725, 53.953102, 56.217152>,  <55.706177, 53.956860, 56.061943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.528725, 53.953102, 56.217152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.437088, 54.236477, 55.950127>,  <56.382107, 54.406502, 55.789913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.437088, 54.236477, 55.950127>,  <56.528725, 53.953102, 56.217152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.437088, 54.236477, 55.950127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013785, 0.688095, 0.725490,
		0.973308, 0.156999, -0.167401,
		-0.229089, 0.708433, -0.667564,
		56.368362, 54.449005, 55.749859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.030521, 54.523270, 56.220245>,  <56.528725, 53.953102, 56.217152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.030521, 54.523270, 56.220245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.671799, 54.650658, 56.097397>,  <56.456566, 54.727089, 56.023689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.671799, 54.650658, 56.097397>,  <57.030521, 54.523270, 56.220245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.671799, 54.650658, 56.097397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062189, 0.778007, 0.625171,
		0.438038, 0.541556, -0.717524,
		-0.896803, 0.318470, -0.307117,
		56.402760, 54.746201, 56.005260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.745075, 54.344944, 56.045017>,  <57.030521, 54.523270, 56.220245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.745075, 54.344944, 56.045017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.111420, 54.485451, 55.967232>,  <58.331226, 54.569756, 55.920559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.111420, 54.485451, 55.967232>,  <57.745075, 54.344944, 56.045017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.111420, 54.485451, 55.967232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322646, -0.355628, 0.877171,
		0.238960, -0.866108, -0.439039,
		0.915859, 0.351262, -0.194465,
		58.386177, 54.590828, 55.908894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.226978, 53.785801, 56.232929>,  <57.745075, 54.344944, 56.045017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.226978, 53.785801, 56.232929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.448624, 54.117992, 56.210060>,  <58.581612, 54.317307, 56.196339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.448624, 54.117992, 56.210060>,  <58.226978, 53.785801, 56.232929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.448624, 54.117992, 56.210060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516040, -0.288796, 0.806412,
		0.653193, -0.476349, -0.588584,
		0.554114, 0.830475, -0.057176,
		58.614857, 54.367134, 56.192909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.006828, 53.745987, 56.193695>,  <58.226978, 53.785801, 56.232929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.006828, 53.745987, 56.193695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.926689, 54.084805, 56.390617>,  <58.878605, 54.288097, 56.508770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.926689, 54.084805, 56.390617>,  <59.006828, 53.745987, 56.193695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.926689, 54.084805, 56.390617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599167, -0.291640, 0.745617,
		0.775151, 0.444359, -0.449094,
		-0.200348, 0.847049, 0.492310,
		58.866585, 54.338921, 56.538311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.671028, 53.955376, 56.562485>,  <59.006828, 53.745987, 56.193695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.671028, 53.955376, 56.562485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.390831, 54.172989, 56.747238>,  <59.222713, 54.303558, 56.858089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.390831, 54.172989, 56.747238>,  <59.671028, 53.955376, 56.562485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.390831, 54.172989, 56.747238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653019, 0.227535, 0.722353,
		0.287889, 0.807623, -0.514651,
		-0.700490, 0.544034, 0.461888,
		59.180683, 54.336201, 56.885803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.674629, 54.803192, 56.637508>,  <59.671028, 53.955376, 56.562485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.674629, 54.803192, 56.637508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.551361, 54.609150, 56.964851>,  <59.477402, 54.492725, 57.161259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.551361, 54.609150, 56.964851>,  <59.674629, 54.803192, 56.637508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.551361, 54.609150, 56.964851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770406, 0.377418, 0.513839,
		-0.558126, 0.788817, 0.257416,
		-0.308171, -0.485102, 0.818356,
		59.458908, 54.463619, 57.210358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.518414, 55.165146, 57.208305>,  <59.674629, 54.803192, 56.637508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.518414, 55.165146, 57.208305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.697281, 54.840599, 57.358887>,  <59.804600, 54.645870, 57.449234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.697281, 54.840599, 57.358887>,  <59.518414, 55.165146, 57.208305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.697281, 54.840599, 57.358887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548785, 0.581225, 0.600843,
		-0.706310, -0.062087, 0.705174,
		0.447169, -0.811371, 0.376452,
		59.831432, 54.597187, 57.471821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.852917, 54.891647, 57.267521>,  <59.518414, 55.165146, 57.208305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.852917, 54.891647, 57.267521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.778168, 55.234478, 57.459564>,  <58.733318, 55.440174, 57.574791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.778168, 55.234478, 57.459564>,  <58.852917, 54.891647, 57.267521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.778168, 55.234478, 57.459564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621494, -0.481627, 0.617884,
		0.760805, -0.182919, 0.622668,
		-0.186871, 0.857074, 0.480107,
		58.722107, 55.491600, 57.603596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.540878, 55.469803, 56.986626>,  <58.852917, 54.891647, 57.267521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.540878, 55.469803, 56.986626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.422806, 55.836735, 57.093483>,  <58.351963, 56.056896, 57.157597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.422806, 55.836735, 57.093483>,  <58.540878, 55.469803, 56.986626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.422806, 55.836735, 57.093483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806848, 0.089580, 0.583928,
		0.511725, 0.387914, -0.766590,
		-0.295185, 0.917332, 0.267147,
		58.334251, 56.111935, 57.173626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.062214, 55.978867, 56.760284>,  <58.540878, 55.469803, 56.986626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.062214, 55.978867, 56.760284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.855011, 56.097816, 57.081093>,  <58.730690, 56.169186, 57.273579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.855011, 56.097816, 57.081093>,  <59.062214, 55.978867, 56.760284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.855011, 56.097816, 57.081093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830625, -0.049048, 0.554668,
		0.204283, 0.953499, -0.221603,
		-0.518006, 0.297378, 0.802020,
		58.699608, 56.187031, 57.321697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.440926, 56.479534, 57.035419>,  <59.062214, 55.978867, 56.760284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.440926, 56.479534, 57.035419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.211891, 56.308300, 57.315102>,  <59.074471, 56.205559, 57.482910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.211891, 56.308300, 57.315102>,  <59.440926, 56.479534, 57.035419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.211891, 56.308300, 57.315102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818079, -0.242378, 0.521536,
		-0.053791, 0.870629, 0.488990,
		-0.572585, -0.428086, 0.699206,
		59.040115, 56.179874, 57.524864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.697311, 56.677887, 57.759098>,  <59.440926, 56.479534, 57.035419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.697311, 56.677887, 57.759098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.499275, 56.330383, 57.754280>,  <59.380455, 56.121880, 57.751389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.499275, 56.330383, 57.754280>,  <59.697311, 56.677887, 57.759098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.499275, 56.330383, 57.754280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582841, -0.342368, 0.736940,
		-0.644348, 0.357829, 0.675851,
		-0.495088, -0.868759, -0.012047,
		59.350750, 56.069756, 57.750668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.625465, 57.187428, 57.129131>,  <59.697311, 56.677887, 57.759098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.625465, 57.187428, 57.129131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.517212, 57.522522, 56.939415>,  <59.452259, 57.723579, 56.825584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.517212, 57.522522, 56.939415>,  <59.625465, 57.187428, 57.129131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.517212, 57.522522, 56.939415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957093, 0.181121, -0.226202,
		-0.103593, -0.515161, -0.850810,
		-0.270630, 0.837738, -0.474294,
		59.436024, 57.773842, 56.797127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.417927, 57.407925, 56.989040>,  <59.625465, 57.187428, 57.129131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.417927, 57.407925, 56.989040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.622581, 57.070053, 57.051971>,  <60.745373, 56.867332, 57.089729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.622581, 57.070053, 57.051971>,  <60.417927, 57.407925, 56.989040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.622581, 57.070053, 57.051971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796532, 0.534947, 0.281726,
		-0.322128, -0.018827, 0.946509,
		0.511636, -0.844676, 0.157324,
		60.776073, 56.816650, 57.099167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.705360, 57.282848, 57.727409>,  <60.417927, 57.407925, 56.989040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.705360, 57.282848, 57.727409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.935669, 57.066143, 57.482468>,  <61.073853, 56.936119, 57.335503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.935669, 57.066143, 57.482468>,  <60.705360, 57.282848, 57.727409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.935669, 57.066143, 57.482468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811259, 0.471736, 0.345434,
		0.101726, -0.695669, 0.711123,
		0.575770, -0.541765, -0.612355,
		61.108398, 56.903614, 57.298759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.125107, 56.862904, 58.156036>,  <60.705360, 57.282848, 57.727409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.125107, 56.862904, 58.156036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.248032, 57.018974, 57.808861>,  <61.321785, 57.112617, 57.600555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.248032, 57.018974, 57.808861>,  <61.125107, 56.862904, 58.156036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.248032, 57.018974, 57.808861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610124, 0.619156, 0.494363,
		0.730279, -0.681476, -0.047782,
		0.307312, 0.390175, -0.867942,
		61.340225, 57.136028, 57.548477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.535000, 56.786659, 58.733528>,  <61.125107, 56.862904, 58.156036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.535000, 56.786659, 58.733528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.547241, 56.430050, 58.552750>,  <60.554585, 56.216084, 58.444283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.547241, 56.430050, 58.552750>,  <60.535000, 56.786659, 58.733528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.547241, 56.430050, 58.552750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993758, 0.075663, -0.081970,
		0.107274, -0.446616, 0.888271,
		0.030600, -0.891521, -0.451946,
		60.556423, 56.162594, 58.417168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.132893, 56.421474, 58.994755>,  <60.535000, 56.786659, 58.733528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.132893, 56.421474, 58.994755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.035454, 56.274841, 58.635582>,  <60.976990, 56.186859, 58.420078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.035454, 56.274841, 58.635582>,  <61.132893, 56.421474, 58.994755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.035454, 56.274841, 58.635582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960606, 0.036506, -0.275507,
		0.133777, -0.929667, 0.343252,
		-0.243599, -0.366587, -0.897927,
		60.962376, 56.164864, 58.366203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.586647, 55.756775, 58.824753>,  <61.132893, 56.421474, 58.994755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.586647, 55.756775, 58.824753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.503944, 55.997265, 58.516006>,  <61.454323, 56.141560, 58.330757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.503944, 55.997265, 58.516006>,  <61.586647, 55.756775, 58.824753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.503944, 55.997265, 58.516006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975501, 0.066064, -0.209839,
		-0.075168, -0.796344, -0.600154,
		-0.206753, 0.601225, -0.771869,
		61.441917, 56.177631, 58.284447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.902294, 55.401417, 58.260384>,  <61.586647, 55.756775, 58.824753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.902294, 55.401417, 58.260384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.951675, 55.793335, 58.197441>,  <61.981304, 56.028484, 58.159676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.951675, 55.793335, 58.197441>,  <61.902294, 55.401417, 58.260384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.951675, 55.793335, 58.197441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972876, -0.150762, -0.175454,
		-0.195632, -0.131424, -0.971831,
		0.123456, 0.979795, -0.157353,
		61.988712, 56.087273, 58.150234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.092358, 55.524021, 57.611485>,  <61.902294, 55.401417, 58.260384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.092358, 55.524021, 57.611485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.275154, 55.789684, 57.848145>,  <62.384830, 55.949081, 57.990143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.275154, 55.789684, 57.848145>,  <62.092358, 55.524021, 57.611485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.275154, 55.789684, 57.848145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881050, -0.246671, -0.403615,
		-0.122121, 0.705724, -0.697883,
		0.456988, 0.664159, 0.591654,
		62.412251, 55.988934, 58.025642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.559544, 55.974663, 57.240704>,  <62.092358, 55.524021, 57.611485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.559544, 55.974663, 57.240704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.721367, 55.949718, 57.605659>,  <62.818459, 55.934753, 57.824631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.721367, 55.949718, 57.605659>,  <62.559544, 55.974663, 57.240704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.721367, 55.949718, 57.605659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852874, -0.334352, -0.401017,
		0.330064, 0.940383, -0.082081,
		0.404554, -0.062357, 0.912386,
		62.842731, 55.931011, 57.879375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.236393, 56.153332, 57.104832>,  <62.559544, 55.974663, 57.240704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.236393, 56.153332, 57.104832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.256859, 55.979507, 57.464508>,  <63.269138, 55.875214, 57.680313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.256859, 55.979507, 57.464508>,  <63.236393, 56.153332, 57.104832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.256859, 55.979507, 57.464508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785232, -0.538828, -0.305084,
		0.617085, 0.721679, 0.313664,
		0.051161, -0.434562, 0.899188,
		63.272205, 55.849140, 57.734264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.856926, 56.012470, 57.046421>,  <63.236393, 56.153332, 57.104832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.856926, 56.012470, 57.046421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.721603, 55.790619, 57.350510>,  <63.640411, 55.657509, 57.532963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.721603, 55.790619, 57.350510>,  <63.856926, 56.012470, 57.046421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.721603, 55.790619, 57.350510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793963, -0.601883, -0.085793,
		0.505149, 0.574565, 0.643972,
		-0.338302, -0.554628, 0.760224,
		63.620113, 55.624229, 57.578575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.369766, 55.988174, 57.665092>,  <63.856926, 56.012470, 57.046421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.369766, 55.988174, 57.665092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.157486, 55.651691, 57.623642>,  <64.030121, 55.449802, 57.598770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.157486, 55.651691, 57.623642>,  <64.369766, 55.988174, 57.665092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.157486, 55.651691, 57.623642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837769, -0.502096, -0.214575,
		0.128470, -0.200689, 0.971195,
		-0.530696, -0.841204, -0.103627,
		63.998276, 55.399330, 57.592552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.453453, 55.346962, 58.199448>,  <64.369766, 55.988174, 57.665092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.453453, 55.346962, 58.199448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.367157, 55.243290, 57.822876>,  <64.315376, 55.181087, 57.596935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.367157, 55.243290, 57.822876>,  <64.453453, 55.346962, 58.199448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.367157, 55.243290, 57.822876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941010, -0.312577, -0.129598,
		-0.260679, -0.913851, 0.311324,
		-0.215746, -0.259175, -0.941426,
		64.302437, 55.165539, 57.540447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.638748, 54.673985, 58.201355>,  <64.453453, 55.346962, 58.199448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.638748, 54.673985, 58.201355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.658607, 54.865780, 57.850899>,  <64.670525, 54.980858, 57.640625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.658607, 54.865780, 57.850899>,  <64.638748, 54.673985, 58.201355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.658607, 54.865780, 57.850899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993981, -0.109490, -0.003588,
		-0.097649, -0.870690, -0.482041,
		0.049655, 0.479491, -0.876141,
		64.673508, 55.009628, 57.588055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.961815, 54.149830, 57.760632>,  <64.638748, 54.673985, 58.201355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.961815, 54.149830, 57.760632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.010391, 54.537880, 57.676628>,  <65.039536, 54.770710, 57.626228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.010391, 54.537880, 57.676628>,  <64.961815, 54.149830, 57.760632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.010391, 54.537880, 57.676628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992597, -0.118432, 0.026929,
		0.001253, -0.211722, -0.977329,
		0.121448, 0.970128, -0.210006,
		65.046829, 54.828918, 57.613625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.373055, 54.278744, 57.057758>,  <64.961815, 54.149830, 57.760632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.373055, 54.278744, 57.057758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.407555, 54.548214, 57.351349>,  <65.428253, 54.709896, 57.527504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.407555, 54.548214, 57.351349>,  <65.373055, 54.278744, 57.057758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.407555, 54.548214, 57.351349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987454, -0.155618, 0.026785,
		0.132265, 0.722461, -0.678643,
		0.086258, 0.673672, 0.733979,
		65.433434, 54.750317, 57.571541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.063934, 54.523197, 57.117535>,  <65.373055, 54.278744, 57.057758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.063934, 54.523197, 57.117535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.903999, 54.661461, 57.457100>,  <65.808037, 54.744419, 57.660839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.903999, 54.661461, 57.457100>,  <66.063934, 54.523197, 57.117535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.903999, 54.661461, 57.457100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904764, 0.000570, 0.425913,
		0.146736, 0.938360, -0.312967,
		-0.399839, 0.345658, 0.848911,
		65.784050, 54.765160, 57.711773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.860748, 54.627934, 57.193279>,  <66.063934, 54.523197, 57.117535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.860748, 54.627934, 57.193279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.761765, 54.793789, 57.543556>,  <66.702377, 54.893303, 57.753723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.761765, 54.793789, 57.543556>,  <66.860748, 54.627934, 57.193279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.761765, 54.793789, 57.543556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914000, -0.200011, 0.352987,
		0.321510, 0.887734, -0.329484,
		-0.247458, 0.414637, 0.875694,
		66.687531, 54.918179, 57.806263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.390747, 55.162025, 57.392738>,  <66.860748, 54.627934, 57.193279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.390747, 55.162025, 57.392738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.202057, 55.030914, 57.720161>,  <67.088844, 54.952248, 57.916615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.202057, 55.030914, 57.720161>,  <67.390747, 55.162025, 57.392738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.202057, 55.030914, 57.720161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834866, 0.132623, 0.534237,
		-0.283672, 0.935399, 0.211091,
		-0.471729, -0.327780, 0.818554,
		67.060539, 54.932579, 57.965729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.642036, 55.487534, 58.009426>,  <67.390747, 55.162025, 57.392738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.642036, 55.487534, 58.009426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.469635, 55.185951, 58.207733>,  <67.366196, 55.005001, 58.326717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.469635, 55.185951, 58.207733>,  <67.642036, 55.487534, 58.009426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.469635, 55.185951, 58.207733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747225, 0.009785, 0.664499,
		-0.505853, 0.656854, 0.559156,
		-0.431008, -0.753954, 0.495768,
		67.340332, 54.959766, 58.356464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.508095, 55.689804, 58.681488>,  <67.642036, 55.487534, 58.009426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.508095, 55.689804, 58.681488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.587357, 55.298706, 58.653915>,  <67.634911, 55.064049, 58.637371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.587357, 55.298706, 58.653915>,  <67.508095, 55.689804, 58.681488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.587357, 55.298706, 58.653915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730309, 0.100363, 0.675705,
		-0.653749, -0.184232, 0.733943,
		0.198147, -0.977745, -0.068934,
		67.646797, 55.005383, 58.633236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.720673, 55.681107, 59.295609>,  <67.508095, 55.689804, 58.681488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.720673, 55.681107, 59.295609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.837875, 55.355209, 59.095474>,  <67.908195, 55.159672, 58.975391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.837875, 55.355209, 59.095474>,  <67.720673, 55.681107, 59.295609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.837875, 55.355209, 59.095474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736045, -0.141780, 0.661919,
		-0.610231, -0.562224, 0.558143,
		0.293013, -0.814741, -0.500340,
		67.925781, 55.110786, 58.945374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.722237, 55.133728, 59.673920>,  <67.720673, 55.681107, 59.295609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.722237, 55.133728, 59.673920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.011147, 55.111458, 59.398170>,  <68.184494, 55.098095, 59.232723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.011147, 55.111458, 59.398170>,  <67.722237, 55.133728, 59.673920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.011147, 55.111458, 59.398170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689607, -0.017927, 0.723962,
		-0.052670, -0.998288, 0.025452,
		0.722266, -0.055683, -0.689370,
		68.227829, 55.094753, 59.191360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.180756, 54.685768, 59.953178>,  <67.722237, 55.133728, 59.673920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.180756, 54.685768, 59.953178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.425896, 54.855957, 59.686829>,  <68.572975, 54.958073, 59.527020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.425896, 54.855957, 59.686829>,  <68.180756, 54.685768, 59.953178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.425896, 54.855957, 59.686829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756114, -0.070907, 0.650587,
		0.229595, -0.902187, -0.365164,
		0.612844, 0.425477, -0.665876,
		68.609749, 54.983601, 59.487064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.625298, 54.247997, 59.545315>,  <68.180756, 54.685768, 59.953178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.625298, 54.247997, 59.545315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.800362, 54.600792, 59.615234>,  <68.905396, 54.812469, 59.657188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.800362, 54.600792, 59.615234>,  <68.625298, 54.247997, 59.545315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.800362, 54.600792, 59.615234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755803, -0.466172, 0.459832,
		0.487054, -0.069131, -0.870631,
		0.437653, 0.881989, 0.174802,
		68.931656, 54.865387, 59.667675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.316971, 54.316055, 59.213524>,  <68.625298, 54.247997, 59.545315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.316971, 54.316055, 59.213524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.299034, 54.573395, 59.519226>,  <69.288277, 54.727798, 59.702648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.299034, 54.573395, 59.519226>,  <69.316971, 54.316055, 59.213524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.299034, 54.573395, 59.519226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868695, -0.352670, 0.347840,
		0.493314, 0.679500, -0.543066,
		-0.044834, 0.643353, 0.764256,
		69.285583, 54.766399, 59.748505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.031296, 54.427826, 59.445450>,  <69.316971, 54.316055, 59.213524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.031296, 54.427826, 59.445450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797447, 54.496056, 59.762718>,  <69.657143, 54.536995, 59.953079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797447, 54.496056, 59.762718>,  <70.031296, 54.427826, 59.445450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.797447, 54.496056, 59.762718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720025, -0.341451, 0.604132,
		0.373882, 0.924291, 0.076797,
		-0.584617, 0.170578, 0.793175,
		69.622063, 54.547230, 60.000671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.210678, 54.935558, 60.059883>,  <70.031296, 54.427826, 59.445450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.210678, 54.935558, 60.059883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.025230, 54.596615, 60.163445>,  <69.913963, 54.393250, 60.225582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.025230, 54.596615, 60.163445>,  <70.210678, 54.935558, 60.059883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.025230, 54.596615, 60.163445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722084, -0.192016, 0.664623,
		-0.513461, 0.495087, 0.700889,
		-0.463629, -0.847360, 0.258902,
		69.886139, 54.342407, 60.241116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.077431, 54.931210, 60.777534>,  <70.210678, 54.935558, 60.059883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.077431, 54.931210, 60.777534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.092293, 54.556274, 60.638962>,  <70.101212, 54.331314, 60.555817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.092293, 54.556274, 60.638962>,  <70.077431, 54.931210, 60.777534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.092293, 54.556274, 60.638962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781285, -0.188906, 0.594903,
		-0.623069, -0.292765, 0.725310,
		0.037151, -0.937339, -0.346434,
		70.103439, 54.275074, 60.535030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.717857, 54.848831, 61.173660>,  <70.077431, 54.931210, 60.777534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.717857, 54.848831, 61.173660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.029541, 55.073364, 61.062134>,  <71.216553, 55.208084, 60.995216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.029541, 55.073364, 61.062134>,  <70.717857, 54.848831, 61.173660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.029541, 55.073364, 61.062134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248680, 0.685225, 0.684563,
		0.575321, -0.464080, 0.673525,
		0.779207, 0.561335, -0.278817,
		71.263306, 55.241764, 60.978489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.342819, 54.848103, 61.609123>,  <70.717857, 54.848831, 61.173660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.342819, 54.848103, 61.609123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.219261, 55.169777, 61.405998>,  <71.145126, 55.362782, 61.284122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.219261, 55.169777, 61.405998>,  <71.342819, 54.848103, 61.609123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.219261, 55.169777, 61.405998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191054, 0.470571, 0.861430,
		0.931706, 0.363118, 0.008281,
		-0.308904, 0.804182, -0.507809,
		71.126587, 55.411030, 61.253654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.475540, 55.573555, 61.677059>,  <71.342819, 54.848103, 61.609123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.475540, 55.573555, 61.677059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.153961, 55.722748, 61.491783>,  <70.961014, 55.812263, 61.380619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.153961, 55.722748, 61.491783>,  <71.475540, 55.573555, 61.677059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.153961, 55.722748, 61.491783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256719, 0.920230, 0.295418,
		0.536425, 0.118594, -0.835574,
		-0.803955, 0.372977, -0.463189,
		70.912773, 55.834641, 61.352825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.635811, 56.192326, 61.437916>,  <71.475540, 55.573555, 61.677059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.635811, 56.192326, 61.437916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.245232, 56.277447, 61.423630>,  <71.010887, 56.328518, 61.415058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.245232, 56.277447, 61.423630>,  <71.635811, 56.192326, 61.437916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.245232, 56.277447, 61.423630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185770, 0.913255, 0.362568,
		0.109773, 0.347391, -0.931273,
		-0.976442, 0.212803, -0.035716,
		70.952301, 56.341286, 61.412914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.391724, 56.378582, 61.187149>,  <71.635811, 56.192326, 61.437916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.391724, 56.378582, 61.187149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.197983, 56.584511, 61.470093>,  <72.081741, 56.708069, 61.639858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.197983, 56.584511, 61.470093>,  <72.391724, 56.378582, 61.187149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.197983, 56.584511, 61.470093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849030, -0.081544, -0.522014,
		-0.211066, -0.853407, 0.476599,
		-0.484354, 0.514827, 0.707358,
		72.052673, 56.738960, 61.682301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.085709, 56.768097, 61.103935>,  <72.391724, 56.378582, 61.187149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.085709, 56.768097, 61.103935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.355339, 56.686962, 61.388039>,  <73.517120, 56.638283, 61.558502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.355339, 56.686962, 61.388039>,  <73.085709, 56.768097, 61.103935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.355339, 56.686962, 61.388039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476381, 0.854242, -0.208163,
		-0.564509, 0.478674, 0.672459,
		0.674085, -0.202837, 0.710258,
		73.557564, 56.626110, 61.601116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.440910, 57.304600, 61.209698>,  <73.085709, 56.768097, 61.103935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.440910, 57.304600, 61.209698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.697311, 57.062592, 61.398613>,  <73.851151, 56.917385, 61.511963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.697311, 57.062592, 61.398613>,  <73.440910, 57.304600, 61.209698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.697311, 57.062592, 61.398613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670017, 0.741256, 0.040214,
		-0.374419, 0.290666, 0.880525,
		0.641005, -0.605023, 0.472292,
		73.889610, 56.881084, 61.540302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.052704, 57.396790, 60.504417>,  <73.440910, 57.304600, 61.209698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.052704, 57.396790, 60.504417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.011597, 57.718067, 60.269707>,  <72.986931, 57.910835, 60.128880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.011597, 57.718067, 60.269707>,  <73.052704, 57.396790, 60.504417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.011597, 57.718067, 60.269707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966192, 0.220828, 0.133068,
		0.236458, -0.553269, -0.798737,
		-0.102761, 0.803199, -0.586781,
		72.980766, 57.959026, 60.093674>
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
