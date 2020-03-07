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
	<36.101746, 53.135910, 50.320839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156487, 52.988335, 49.953110>,  <36.189331, 52.899788, 49.732471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156487, 52.988335, 49.953110>,  <36.101746, 53.135910, 50.320839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156487, 52.988335, 49.953110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927432, 0.373800, -0.011957,
		0.348054, -0.850974, 0.393320,
		0.136848, -0.368940, -0.919324,
		36.197540, 52.877651, 49.677311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518257, 52.535805, 50.284805>,  <36.101746, 53.135910, 50.320839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518257, 52.535805, 50.284805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553173, 52.784775, 49.973686>,  <36.574123, 52.934158, 49.787014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553173, 52.784775, 49.973686>,  <36.518257, 52.535805, 50.284805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553173, 52.784775, 49.973686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990297, 0.030534, 0.135570,
		0.108132, -0.782081, -0.613724,
		0.087287, 0.622429, -0.777794,
		36.579361, 52.971504, 49.740349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167095, 52.337902, 50.021004>,  <36.518257, 52.535805, 50.284805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167095, 52.337902, 50.021004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068474, 52.706306, 49.900368>,  <37.009300, 52.927349, 49.827988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068474, 52.706306, 49.900368>,  <37.167095, 52.337902, 50.021004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068474, 52.706306, 49.900368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967700, 0.250855, -0.025044,
		0.052589, -0.298021, -0.953110,
		-0.246556, 0.921008, -0.301587,
		36.994507, 52.982609, 49.809891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422504, 52.536388, 49.240185>,  <37.167095, 52.337902, 50.021004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422504, 52.536388, 49.240185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432156, 52.850342, 49.487854>,  <37.437946, 53.038715, 49.636456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432156, 52.850342, 49.487854>,  <37.422504, 52.536388, 49.240185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432156, 52.850342, 49.487854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986793, 0.080541, -0.140545,
		-0.160180, 0.614386, -0.772575,
		0.024125, 0.784884, 0.619173,
		37.439392, 53.085808, 49.673607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924416, 53.039036, 48.938072>,  <37.422504, 52.536388, 49.240185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924416, 53.039036, 48.938072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888191, 53.092003, 49.332893>,  <37.866455, 53.123783, 49.569786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888191, 53.092003, 49.332893>,  <37.924416, 53.039036, 48.938072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888191, 53.092003, 49.332893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994745, 0.059551, 0.083279,
		-0.047752, 0.989404, -0.137111,
		-0.090562, 0.132413, 0.987049,
		37.861023, 53.131725, 49.629009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520622, 52.733799, 49.284306>,  <37.924416, 53.039036, 48.938072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520622, 52.733799, 49.284306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429848, 53.084213, 49.114098>,  <38.375385, 53.294460, 49.011974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429848, 53.084213, 49.114098>,  <38.520622, 52.733799, 49.284306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429848, 53.084213, 49.114098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968106, 0.155278, -0.196620,
		-0.106172, -0.456569, -0.883330,
		-0.226932, 0.876033, -0.425521,
		38.361767, 53.347023, 48.986443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016918, 52.863087, 48.838333>,  <38.520622, 52.733799, 49.284306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016918, 52.863087, 48.838333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850269, 53.225269, 48.870773>,  <38.750282, 53.442577, 48.890240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850269, 53.225269, 48.870773>,  <39.016918, 52.863087, 48.838333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850269, 53.225269, 48.870773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895551, 0.424116, -0.134587,
		-0.156261, 0.016562, -0.987577,
		-0.416618, 0.905456, 0.081105,
		38.725285, 53.496906, 48.895103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472908, 53.335117, 48.456993>,  <39.016918, 52.863087, 48.838333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472908, 53.335117, 48.456993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257507, 53.509342, 48.745522>,  <39.128265, 53.613876, 48.918636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257507, 53.509342, 48.745522>,  <39.472908, 53.335117, 48.456993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257507, 53.509342, 48.745522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802412, 0.526368, 0.281197,
		-0.257198, 0.730218, -0.632953,
		-0.538502, 0.435566, 0.721317,
		39.095955, 53.640011, 48.961918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464127, 54.139153, 48.564785>,  <39.472908, 53.335117, 48.456993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464127, 54.139153, 48.564785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407669, 53.958538, 48.917191>,  <39.373795, 53.850170, 49.128635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407669, 53.958538, 48.917191>,  <39.464127, 54.139153, 48.564785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407669, 53.958538, 48.917191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844790, 0.409042, 0.344985,
		-0.516147, 0.792967, 0.323720,
		-0.141147, -0.451539, 0.881017,
		39.365326, 53.823078, 49.181496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754288, 54.665672, 49.017067>,  <39.464127, 54.139153, 48.564785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754288, 54.665672, 49.017067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712757, 54.293541, 49.157761>,  <39.687840, 54.070263, 49.242176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712757, 54.293541, 49.157761>,  <39.754288, 54.665672, 49.017067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712757, 54.293541, 49.157761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957957, 0.001562, 0.286908,
		-0.267467, 0.366733, 0.891049,
		-0.103826, -0.930325, 0.351732,
		39.681610, 54.014442, 49.263279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073147, 54.619087, 49.755745>,  <39.754288, 54.665672, 49.017067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073147, 54.619087, 49.755745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056034, 54.260349, 49.579639>,  <40.045765, 54.045105, 49.473976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056034, 54.260349, 49.579639>,  <40.073147, 54.619087, 49.755745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056034, 54.260349, 49.579639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963464, -0.153655, 0.219377,
		-0.264397, -0.414797, 0.870654,
		-0.042783, -0.896847, -0.440268,
		40.043198, 53.991295, 49.447559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366631, 54.230679, 50.294147>,  <40.073147, 54.619087, 49.755745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366631, 54.230679, 50.294147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404884, 54.058159, 49.935299>,  <40.427837, 53.954647, 49.719990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404884, 54.058159, 49.935299>,  <40.366631, 54.230679, 50.294147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404884, 54.058159, 49.935299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987888, -0.069509, 0.138729,
		-0.122193, -0.899526, 0.419431,
		0.095636, -0.431303, -0.897124,
		40.433575, 53.928768, 49.666161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620037, 53.568466, 50.328220>,  <40.366631, 54.230679, 50.294147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620037, 53.568466, 50.328220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725376, 53.748432, 49.986874>,  <40.788578, 53.856411, 49.782066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725376, 53.748432, 49.986874>,  <40.620037, 53.568466, 50.328220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725376, 53.748432, 49.986874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961519, -0.050613, 0.270036,
		0.078301, -0.891638, -0.445927,
		0.263344, 0.449912, -0.853364,
		40.804379, 53.883404, 49.730865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181736, 53.207565, 50.000973>,  <40.620037, 53.568466, 50.328220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181736, 53.207565, 50.000973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202522, 53.576420, 49.847633>,  <41.214996, 53.797733, 49.755630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202522, 53.576420, 49.847633>,  <41.181736, 53.207565, 50.000973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202522, 53.576420, 49.847633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928755, 0.096456, 0.357926,
		0.367034, -0.374638, -0.851430,
		0.051968, 0.922140, -0.383350,
		41.218113, 53.853062, 49.732628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622490, 53.378555, 49.358524>,  <41.181736, 53.207565, 50.000973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622490, 53.378555, 49.358524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598221, 53.676239, 49.624596>,  <41.583660, 53.854851, 49.784241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598221, 53.676239, 49.624596>,  <41.622490, 53.378555, 49.358524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598221, 53.676239, 49.624596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994303, -0.013443, 0.105738,
		0.087633, 0.667809, -0.739156,
		-0.060676, 0.744212, 0.665182,
		41.580017, 53.899502, 49.824150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076187, 53.917908, 49.108669>,  <41.622490, 53.378555, 49.358524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076187, 53.917908, 49.108669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041790, 53.900543, 49.506809>,  <42.021152, 53.890125, 49.745693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041790, 53.900543, 49.506809>,  <42.076187, 53.917908, 49.108669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041790, 53.900543, 49.506809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996189, -0.018366, 0.085264,
		0.014579, 0.998888, 0.044828,
		-0.085993, -0.043414, 0.995349,
		42.015991, 53.887520, 49.805412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405209, 54.495972, 49.423538>,  <42.076187, 53.917908, 49.108669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405209, 54.495972, 49.423538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400951, 54.195328, 49.687347>,  <42.398399, 54.014942, 49.845634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400951, 54.195328, 49.687347>,  <42.405209, 54.495972, 49.423538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400951, 54.195328, 49.687347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981397, 0.118592, 0.150982,
		-0.191694, 0.648861, 0.736364,
		-0.010639, -0.751608, 0.659524,
		42.397758, 53.969845, 49.885204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666557, 54.690517, 50.122383>,  <42.405209, 54.495972, 49.423538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666557, 54.690517, 50.122383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708805, 54.300205, 50.045761>,  <42.734154, 54.066017, 49.999790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708805, 54.300205, 50.045761>,  <42.666557, 54.690517, 50.122383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708805, 54.300205, 50.045761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984971, 0.129132, -0.114706,
		0.136663, -0.176559, 0.974756,
		0.105620, -0.975783, -0.191553,
		42.740490, 54.007469, 49.988297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142723, 54.199905, 50.609787>,  <42.666557, 54.690517, 50.122383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142723, 54.199905, 50.609787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136497, 54.092876, 50.224422>,  <43.132763, 54.028660, 49.993202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136497, 54.092876, 50.224422>,  <43.142723, 54.199905, 50.609787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136497, 54.092876, 50.224422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910005, 0.395454, -0.124529,
		0.414306, -0.878647, 0.237340,
		-0.015560, -0.267573, -0.963412,
		43.131828, 54.012604, 49.935398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691193, 53.708309, 50.553734>,  <43.142723, 54.199905, 50.609787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691193, 53.708309, 50.553734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613647, 53.912468, 50.218613>,  <43.567120, 54.034962, 50.017540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613647, 53.912468, 50.218613>,  <43.691193, 53.708309, 50.553734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613647, 53.912468, 50.218613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945845, 0.323902, -0.021538,
		0.260373, -0.796609, -0.545546,
		-0.193861, 0.510394, -0.837804,
		43.555489, 54.065586, 49.967270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001038, 53.395702, 49.851685>,  <43.691193, 53.708309, 50.553734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001038, 53.395702, 49.851685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979496, 53.782978, 49.949429>,  <43.966572, 54.015343, 50.008076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979496, 53.782978, 49.949429>,  <44.001038, 53.395702, 49.851685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979496, 53.782978, 49.949429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979077, 0.099287, -0.177623,
		-0.196235, 0.229686, -0.953277,
		-0.053851, 0.968187, 0.244363,
		43.963341, 54.073433, 50.022739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346138, 53.651558, 49.343822>,  <44.001038, 53.395702, 49.851685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346138, 53.651558, 49.343822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354729, 53.872684, 49.677032>,  <44.359882, 54.005360, 49.876957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354729, 53.872684, 49.677032>,  <44.346138, 53.651558, 49.343822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354729, 53.872684, 49.677032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906213, 0.341163, -0.249772,
		-0.422275, 0.760262, -0.493645,
		0.021479, 0.552820, 0.833024,
		44.361172, 54.038532, 49.926941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893379, 54.138760, 49.485302>,  <44.346138, 53.651558, 49.343822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893379, 54.138760, 49.485302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225956, 54.013023, 49.668556>,  <45.425503, 53.937580, 49.778511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225956, 54.013023, 49.668556>,  <44.893379, 54.138760, 49.485302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225956, 54.013023, 49.668556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257235, 0.948658, 0.184058,
		-0.492474, -0.035185, 0.869616,
		0.831445, -0.314340, 0.458139,
		45.475388, 53.918720, 49.805996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839230, 54.949345, 49.200951>,  <44.893379, 54.138760, 49.485302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839230, 54.949345, 49.200951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211147, 55.000839, 49.063019>,  <45.434299, 55.031734, 48.980259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211147, 55.000839, 49.063019>,  <44.839230, 54.949345, 49.200951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211147, 55.000839, 49.063019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127689, 0.765849, 0.630214,
		0.345215, -0.630002, 0.695646,
		0.929796, 0.128733, -0.344827,
		45.490086, 55.039459, 48.959572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.297783, 55.225983, 49.691673>,  <44.839230, 54.949345, 49.200951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.297783, 55.225983, 49.691673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468197, 55.360878, 49.355873>,  <45.570446, 55.441814, 49.154392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468197, 55.360878, 49.355873>,  <45.297783, 55.225983, 49.691673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468197, 55.360878, 49.355873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306785, 0.819099, 0.484727,
		0.851104, -0.464058, 0.245504,
		0.426033, 0.337236, -0.839504,
		45.596008, 55.462048, 49.104023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047028, 55.389870, 49.630676>,  <45.297783, 55.225983, 49.691673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047028, 55.389870, 49.630676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803253, 55.635197, 49.429703>,  <45.656990, 55.782391, 49.309120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803253, 55.635197, 49.429703>,  <46.047028, 55.389870, 49.630676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803253, 55.635197, 49.429703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285512, 0.760968, 0.582590,
		0.739646, 0.211598, -0.638866,
		-0.609432, 0.613314, -0.502433,
		45.620422, 55.819191, 49.278973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.225861, 54.859749, 50.157684>,  <46.047028, 55.389870, 49.630676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.225861, 54.859749, 50.157684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009991, 54.526165, 50.203751>,  <45.880470, 54.326015, 50.231392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009991, 54.526165, 50.203751>,  <46.225861, 54.859749, 50.157684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009991, 54.526165, 50.203751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728191, -0.531061, -0.433258,
		0.422482, -0.149951, 0.893881,
		-0.539673, -0.833959, 0.115170,
		45.848087, 54.275978, 50.238300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.663425, 54.360668, 50.060658>,  <46.225861, 54.859749, 50.157684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.663425, 54.360668, 50.060658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320713, 54.157631, 50.024292>,  <46.115086, 54.035809, 50.002472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320713, 54.157631, 50.024292>,  <46.663425, 54.360668, 50.060658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320713, 54.157631, 50.024292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459733, -0.672014, -0.580554,
		0.233593, -0.539205, 0.809130,
		-0.856785, -0.507597, -0.090912,
		46.063679, 54.005352, 49.997017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.732410, 53.649113, 50.371281>,  <46.663425, 54.360668, 50.060658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.732410, 53.649113, 50.371281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465519, 53.686180, 50.075653>,  <46.305386, 53.708420, 49.898277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465519, 53.686180, 50.075653>,  <46.732410, 53.649113, 50.371281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465519, 53.686180, 50.075653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536716, -0.628185, -0.563311,
		-0.516475, -0.772525, 0.369403,
		-0.667225, 0.092672, -0.739069,
		46.265350, 53.713982, 49.853931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.303261, 53.376797, 50.850117>,  <46.732410, 53.649113, 50.371281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.303261, 53.376797, 50.850117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120659, 53.023426, 50.892357>,  <47.011097, 52.811401, 50.917702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120659, 53.023426, 50.892357>,  <47.303261, 53.376797, 50.850117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120659, 53.023426, 50.892357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543981, 0.371059, 0.752596,
		-0.704049, 0.286122, -0.649961,
		-0.456508, -0.883431, 0.105599,
		46.983707, 52.758396, 50.924038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.490009, 52.856075, 51.200264>,  <47.303261, 53.376797, 50.850117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.490009, 52.856075, 51.200264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812885, 52.777611, 50.977570>,  <48.006611, 52.730534, 50.843952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812885, 52.777611, 50.977570>,  <47.490009, 52.856075, 51.200264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.812885, 52.777611, 50.977570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550821, -0.088771, 0.829889,
		-0.212215, -0.976545, 0.036395,
		0.807193, -0.196162, -0.556740,
		48.055042, 52.718761, 50.810547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.689583, 52.188068, 51.382248>,  <47.490009, 52.856075, 51.200264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.689583, 52.188068, 51.382248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.997467, 52.425694, 51.288746>,  <48.182198, 52.568268, 51.232647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.997467, 52.425694, 51.288746>,  <47.689583, 52.188068, 51.382248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.997467, 52.425694, 51.288746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339362, -0.070618, 0.938002,
		0.540722, -0.801315, -0.255957,
		0.769710, 0.594060, -0.233751,
		48.228378, 52.603912, 51.218620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.469650, 51.828026, 51.392303>,  <47.689583, 52.188068, 51.382248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.469650, 51.828026, 51.392303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.477406, 52.220173, 51.470798>,  <48.482059, 52.455460, 51.517895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.477406, 52.220173, 51.470798>,  <48.469650, 51.828026, 51.392303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.477406, 52.220173, 51.470798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693677, -0.154538, 0.703512,
		0.720025, 0.122482, -0.683054,
		0.019390, 0.980365, 0.196234,
		48.483223, 52.514282, 51.529667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.106342, 52.085003, 51.419006>,  <48.469650, 51.828026, 51.392303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.106342, 52.085003, 51.419006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.853260, 52.278198, 51.661133>,  <48.701408, 52.394115, 51.806408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.853260, 52.278198, 51.661133>,  <49.106342, 52.085003, 51.419006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.853260, 52.278198, 51.661133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499377, -0.342949, 0.795618,
		0.591863, 0.805675, -0.024204,
		-0.632709, 0.482984, 0.605314,
		48.663448, 52.423092, 51.842728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.461197, 52.622898, 51.817486>,  <49.106342, 52.085003, 51.419006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.461197, 52.622898, 51.817486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.129360, 52.486458, 51.994316>,  <48.930260, 52.404594, 52.100414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.129360, 52.486458, 51.994316>,  <49.461197, 52.622898, 51.817486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.129360, 52.486458, 51.994316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513685, -0.155864, 0.843703,
		-0.218886, 0.927014, 0.304523,
		-0.829588, -0.341104, 0.442076,
		48.880486, 52.384125, 52.126938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.471355, 52.821480, 52.594749>,  <49.461197, 52.622898, 51.817486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.471355, 52.821480, 52.594749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.250252, 52.492573, 52.540588>,  <49.117588, 52.295231, 52.508091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.250252, 52.492573, 52.540588>,  <49.471355, 52.821480, 52.594749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.250252, 52.492573, 52.540588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321679, -0.360429, 0.875565,
		-0.768750, 0.440422, 0.463737,
		-0.552762, -0.822265, -0.135405,
		49.084423, 52.245892, 52.499966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.502045, 52.541306, 53.231976>,  <49.471355, 52.821480, 52.594749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.502045, 52.541306, 53.231976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.320404, 52.228172, 53.061813>,  <49.211418, 52.040291, 52.959717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.320404, 52.228172, 53.061813>,  <49.502045, 52.541306, 53.231976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.320404, 52.228172, 53.061813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378737, -0.601792, 0.703139,
		-0.806443, 0.158181, 0.569761,
		-0.454101, -0.782832, -0.425402,
		49.184174, 51.993324, 52.934193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.054569, 52.102711, 53.736904>,  <49.502045, 52.541306, 53.231976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.054569, 52.102711, 53.736904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.250458, 51.909821, 53.446350>,  <49.367992, 51.794086, 53.272018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.250458, 51.909821, 53.446350>,  <49.054569, 52.102711, 53.736904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.250458, 51.909821, 53.446350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472037, -0.553818, 0.685906,
		-0.733044, -0.678784, -0.043590,
		0.489722, -0.482223, -0.726383,
		49.397373, 51.765152, 53.228436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.184040, 51.567791, 54.163616>,  <49.054569, 52.102711, 53.736904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.184040, 51.567791, 54.163616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.473148, 51.546715, 53.887985>,  <49.646614, 51.534069, 53.722607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.473148, 51.546715, 53.887985>,  <49.184040, 51.567791, 54.163616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.473148, 51.546715, 53.887985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621513, -0.386455, 0.681449,
		-0.302202, -0.920802, -0.246572,
		0.722769, -0.052688, -0.689078,
		49.689980, 51.530907, 53.681263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.525448, 50.949200, 54.028187>,  <49.184040, 51.567791, 54.163616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.525448, 50.949200, 54.028187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.820595, 51.208637, 53.953484>,  <49.997684, 51.364300, 53.908661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.820595, 51.208637, 53.953484>,  <49.525448, 50.949200, 54.028187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.820595, 51.208637, 53.953484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605125, -0.513154, 0.608685,
		0.298954, -0.562140, -0.771119,
		0.737869, 0.648592, -0.186755,
		50.041954, 51.403214, 53.897457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.128407, 50.647060, 53.726269>,  <49.525448, 50.949200, 54.028187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.128407, 50.647060, 53.726269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.205158, 50.964161, 53.957695>,  <50.251209, 51.154419, 54.096550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.205158, 50.964161, 53.957695>,  <50.128407, 50.647060, 53.726269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.205158, 50.964161, 53.957695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621435, -0.554419, 0.553568,
		0.759606, 0.253320, -0.599022,
		0.191879, 0.792747, 0.578562,
		50.262722, 51.201984, 54.131264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.832767, 51.021805, 53.716881>,  <50.128407, 50.647060, 53.726269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.832767, 51.021805, 53.716881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.646950, 51.020966, 54.071098>,  <50.535458, 51.020462, 54.283630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.646950, 51.020966, 54.071098>,  <50.832767, 51.021805, 53.716881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.646950, 51.020966, 54.071098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793674, -0.444534, 0.415297,
		0.392786, 0.895760, 0.208167,
		-0.464543, -0.002094, 0.885548,
		50.507587, 51.020336, 54.336761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.346642, 51.440678, 54.085358>,  <50.832767, 51.021805, 53.716881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.346642, 51.440678, 54.085358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.144344, 51.163769, 54.291264>,  <51.022968, 50.997623, 54.414806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.144344, 51.163769, 54.291264>,  <51.346642, 51.440678, 54.085358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.144344, 51.163769, 54.291264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862250, -0.424617, 0.276090,
		0.027448, 0.583486, 0.811659,
		-0.505739, -0.692275, 0.514766,
		50.992622, 50.956085, 54.445694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.991634, 51.967766, 54.494495>,  <51.346642, 51.440678, 54.085358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.991634, 51.967766, 54.494495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.840206, 51.937180, 54.863461>,  <50.749352, 51.918827, 55.084839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.840206, 51.937180, 54.863461>,  <50.991634, 51.967766, 54.494495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.840206, 51.937180, 54.863461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403136, 0.910708, -0.089957,
		-0.833167, -0.405911, -0.375592,
		-0.378569, -0.076465, 0.922409,
		50.726635, 51.914242, 55.140182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.211189, 52.175285, 54.492443>,  <50.991634, 51.967766, 54.494495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.211189, 52.175285, 54.492443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.403191, 52.247116, 54.835918>,  <50.518391, 52.290215, 55.042004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.403191, 52.247116, 54.835918>,  <50.211189, 52.175285, 54.492443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.403191, 52.247116, 54.835918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074231, 0.983629, -0.164206,
		-0.874118, 0.015079, 0.485479,
		0.480007, 0.179573, 0.858689,
		50.547192, 52.300987, 55.093525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.771656, 52.613045, 54.920559>,  <50.211189, 52.175285, 54.492443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.771656, 52.613045, 54.920559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.159229, 52.668842, 55.002243>,  <50.391773, 52.702320, 55.051254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.159229, 52.668842, 55.002243>,  <49.771656, 52.613045, 54.920559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.159229, 52.668842, 55.002243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075220, 0.952846, -0.293985,
		-0.235591, 0.269492, 0.933740,
		0.968937, 0.139496, 0.204211,
		50.449909, 52.710690, 55.063507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.588058, 52.159760, 55.501522>,  <49.771656, 52.613045, 54.920559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.588058, 52.159760, 55.501522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.422176, 51.909096, 55.765434>,  <49.322647, 51.758698, 55.923782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.422176, 51.909096, 55.765434>,  <49.588058, 52.159760, 55.501522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.422176, 51.909096, 55.765434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195270, 0.646896, 0.737154,
		-0.888755, 0.434540, -0.145905,
		-0.414708, -0.626658, 0.659785,
		49.297764, 51.721100, 55.963371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.348545, 52.750351, 55.742989>,  <49.588058, 52.159760, 55.501522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.348545, 52.750351, 55.742989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.373634, 52.532444, 56.077484>,  <49.388687, 52.401699, 56.278179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.373634, 52.532444, 56.077484>,  <49.348545, 52.750351, 55.742989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.373634, 52.532444, 56.077484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636915, 0.666932, 0.386706,
		-0.768378, 0.508359, 0.388801,
		0.062718, -0.544769, 0.836237,
		49.392448, 52.369015, 56.328354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.206818, 53.166943, 56.344959>,  <49.348545, 52.750351, 55.742989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.206818, 53.166943, 56.344959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.415516, 52.853046, 56.478806>,  <49.540733, 52.664707, 56.559113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.415516, 52.853046, 56.478806>,  <49.206818, 53.166943, 56.344959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.415516, 52.853046, 56.478806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532610, 0.606033, 0.590805,
		-0.666415, -0.130031, 0.734154,
		0.521744, -0.784739, 0.334614,
		49.572041, 52.617626, 56.579189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.037193, 53.142776, 57.089458>,  <49.206818, 53.166943, 56.344959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.037193, 53.142776, 57.089458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.384686, 52.996731, 56.955597>,  <49.593182, 52.909103, 56.875278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.384686, 52.996731, 56.955597>,  <49.037193, 53.142776, 57.089458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.384686, 52.996731, 56.955597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478528, 0.793024, 0.376995,
		0.127743, -0.487649, 0.863643,
		0.868731, -0.365119, -0.334657,
		49.645306, 52.887196, 56.855202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.483273, 52.973751, 57.620228>,  <49.037193, 53.142776, 57.089458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.483273, 52.973751, 57.620228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.707294, 53.101971, 57.314659>,  <49.841709, 53.178902, 57.131317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.707294, 53.101971, 57.314659>,  <49.483273, 52.973751, 57.620228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.707294, 53.101971, 57.314659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472889, 0.633434, 0.612484,
		0.680231, -0.704278, 0.203173,
		0.560055, 0.320552, -0.763927,
		49.875313, 53.198135, 57.085480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.139912, 52.925011, 57.797546>,  <49.483273, 52.973751, 57.620228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.139912, 52.925011, 57.797546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.169083, 53.218918, 57.527794>,  <50.186584, 53.395264, 57.365940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.169083, 53.218918, 57.527794>,  <50.139912, 52.925011, 57.797546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.169083, 53.218918, 57.527794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692477, 0.449317, 0.564437,
		0.717744, -0.508158, -0.476044,
		0.072929, 0.734771, -0.674383,
		50.190960, 53.439350, 57.325478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.763805, 53.141560, 57.496803>,  <50.139912, 52.925011, 57.797546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.763805, 53.141560, 57.496803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.541046, 53.473793, 57.496964>,  <50.407391, 53.673134, 57.497059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.541046, 53.473793, 57.496964>,  <50.763805, 53.141560, 57.496803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.541046, 53.473793, 57.496964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654656, 0.438645, 0.615643,
		0.511164, 0.343116, -0.788025,
		-0.556900, 0.830580, 0.000403,
		50.373978, 53.722965, 57.497086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.153603, 52.501312, 57.781120>,  <50.763805, 53.141560, 57.496803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.153603, 52.501312, 57.781120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.265205, 52.880627, 57.720589>,  <51.332169, 53.108215, 57.684269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.265205, 52.880627, 57.720589>,  <51.153603, 52.501312, 57.781120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.265205, 52.880627, 57.720589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928057, -0.225792, 0.296190,
		0.246706, -0.223079, -0.943065,
		0.279011, 0.948290, -0.151326,
		51.348907, 53.165115, 57.675190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.879620, 52.477795, 57.702065>,  <51.153603, 52.501312, 57.781120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.879620, 52.477795, 57.702065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.854210, 52.869419, 57.779434>,  <51.838963, 53.104393, 57.825855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.854210, 52.869419, 57.779434>,  <51.879620, 52.477795, 57.702065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.854210, 52.869419, 57.779434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902435, -0.026399, 0.430016,
		0.426116, 0.201869, -0.881858,
		-0.063527, 0.979057, 0.193423,
		51.835152, 53.163136, 57.837460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.470535, 52.896568, 57.365685>,  <51.879620, 52.477795, 57.702065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.470535, 52.896568, 57.365685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.313686, 53.021484, 57.711800>,  <52.219578, 53.096436, 57.919468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.313686, 53.021484, 57.711800>,  <52.470535, 52.896568, 57.365685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.313686, 53.021484, 57.711800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909419, -0.010088, 0.415758,
		0.138566, 0.949934, -0.280046,
		-0.392118, 0.312289, 0.865286,
		52.196053, 53.115170, 57.971386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.733822, 53.672535, 57.560486>,  <52.470535, 52.896568, 57.365685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.733822, 53.672535, 57.560486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.676685, 53.399067, 57.846756>,  <52.642403, 53.234985, 58.018520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.676685, 53.399067, 57.846756>,  <52.733822, 53.672535, 57.560486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.676685, 53.399067, 57.846756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932890, 0.148549, 0.328100,
		-0.330625, 0.714516, 0.616567,
		-0.142843, -0.683667, 0.715678,
		52.633831, 53.193966, 58.061459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.204449, 54.305347, 57.744968>,  <52.733822, 53.672535, 57.560486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.204449, 54.305347, 57.744968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.585667, 54.392204, 57.660545>,  <53.814400, 54.444317, 57.609890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.585667, 54.392204, 57.660545>,  <53.204449, 54.305347, 57.744968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.585667, 54.392204, 57.660545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269459, -0.926141, 0.263921,
		-0.138161, -0.308401, -0.941170,
		0.953050, 0.217143, -0.211058,
		53.871582, 54.457348, 57.597229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.539989, 53.768402, 57.357182>,  <53.204449, 54.305347, 57.744968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.539989, 53.768402, 57.357182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.851730, 53.947128, 57.532890>,  <54.038776, 54.054363, 57.638317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.851730, 53.947128, 57.532890>,  <53.539989, 53.768402, 57.357182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.851730, 53.947128, 57.532890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331496, -0.888941, 0.316059,
		0.531710, -0.100704, -0.840918,
		0.779356, 0.446813, 0.439275,
		54.085537, 54.081173, 57.664673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.249660, 53.621536, 57.240551>,  <53.539989, 53.768402, 57.357182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.249660, 53.621536, 57.240551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.229912, 53.725143, 57.626396>,  <54.218063, 53.787308, 57.857903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.229912, 53.725143, 57.626396>,  <54.249660, 53.621536, 57.240551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.229912, 53.725143, 57.626396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368497, -0.892927, 0.258632,
		0.928317, 0.368226, -0.051360,
		-0.049374, 0.259019, 0.964610,
		54.215099, 53.802849, 57.915779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.909103, 53.485657, 57.471359>,  <54.249660, 53.621536, 57.240551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.909103, 53.485657, 57.471359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.654457, 53.503803, 57.779297>,  <54.501671, 53.514690, 57.964062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.654457, 53.503803, 57.779297>,  <54.909103, 53.485657, 57.471359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.654457, 53.503803, 57.779297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380409, -0.849890, 0.364659,
		0.670830, 0.525004, 0.523792,
		-0.636613, 0.045369, 0.769848,
		54.463474, 53.517414, 58.010250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.104313, 52.823536, 57.725456>,  <54.909103, 53.485657, 57.471359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.104313, 52.823536, 57.725456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.980415, 53.029453, 58.045219>,  <54.906075, 53.153004, 58.237076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.980415, 53.029453, 58.045219>,  <55.104313, 52.823536, 57.725456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.980415, 53.029453, 58.045219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304403, -0.742813, 0.596296,
		0.900775, 0.428042, 0.073382,
		-0.309749, 0.514791, 0.799404,
		54.887489, 53.183891, 58.285042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.740776, 53.209885, 58.057178>,  <55.104313, 52.823536, 57.725456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.740776, 53.209885, 58.057178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.495667, 53.149483, 58.367455>,  <55.348598, 53.113243, 58.553619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.495667, 53.149483, 58.367455>,  <55.740776, 53.209885, 58.057178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.495667, 53.149483, 58.367455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774652, -0.308871, 0.551828,
		0.156261, 0.939041, 0.306244,
		-0.612778, -0.151003, 0.775694,
		55.311832, 53.104183, 58.600163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.873341, 53.626724, 58.728657>,  <55.740776, 53.209885, 58.057178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.873341, 53.626724, 58.728657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.710442, 53.288879, 58.867668>,  <55.612701, 53.086174, 58.951077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.710442, 53.288879, 58.867668>,  <55.873341, 53.626724, 58.728657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.710442, 53.288879, 58.867668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744144, -0.086241, 0.662428,
		-0.529524, 0.528385, 0.663636,
		-0.407250, -0.844613, 0.347528,
		55.588268, 53.035496, 58.971928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.172150, 54.237972, 58.749680>,  <55.873341, 53.626724, 58.728657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.172150, 54.237972, 58.749680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.202194, 54.574097, 58.534927>,  <56.220222, 54.775772, 58.406078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.202194, 54.574097, 58.534927>,  <56.172150, 54.237972, 58.749680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.202194, 54.574097, 58.534927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572956, 0.404283, 0.712935,
		0.816137, -0.361157, -0.451094,
		0.075112, 0.840310, -0.536878,
		56.224728, 54.826191, 58.373863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.861580, 54.399796, 58.927235>,  <56.172150, 54.237972, 58.749680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.861580, 54.399796, 58.927235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.698944, 54.709538, 58.733307>,  <56.601360, 54.895382, 58.616951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.698944, 54.709538, 58.733307>,  <56.861580, 54.399796, 58.927235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.698944, 54.709538, 58.733307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487958, 0.632698, 0.601324,
		0.772385, 0.007922, -0.635106,
		-0.406594, 0.774358, -0.484820,
		56.576965, 54.941845, 58.587860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.523754, 54.411674, 59.363888>,  <56.861580, 54.399796, 58.927235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.523754, 54.411674, 59.363888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.854393, 54.553612, 59.538620>,  <58.052776, 54.638775, 59.643459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.854393, 54.553612, 59.538620>,  <57.523754, 54.411674, 59.363888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.854393, 54.553612, 59.538620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329363, 0.934392, -0.135767,
		-0.456344, -0.031650, 0.889241,
		0.826602, 0.354839, 0.436828,
		58.102375, 54.660065, 59.669670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.697720, 53.968807, 59.915878>,  <57.523754, 54.411674, 59.363888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.697720, 53.968807, 59.915878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.941307, 54.048878, 59.608871>,  <58.087460, 54.096920, 59.424667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.941307, 54.048878, 59.608871>,  <57.697720, 53.968807, 59.915878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.941307, 54.048878, 59.608871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733265, 0.226893, 0.640970,
		0.302450, -0.953126, -0.008609,
		0.608972, 0.200174, -0.767518,
		58.123997, 54.108929, 59.378616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.566433, 53.655006, 59.782925>,  <57.697720, 53.968807, 59.915878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.566433, 53.655006, 59.782925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.555351, 54.010269, 59.599442>,  <58.548702, 54.223427, 59.489349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.555351, 54.010269, 59.599442>,  <58.566433, 53.655006, 59.782925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.555351, 54.010269, 59.599442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864752, 0.251485, 0.434695,
		0.501435, -0.384627, -0.775000,
		-0.027705, 0.888154, -0.458710,
		58.547039, 54.276714, 59.461830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.191296, 53.814926, 59.380047>,  <58.566433, 53.655006, 59.782925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.191296, 53.814926, 59.380047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.036621, 54.161522, 59.506325>,  <58.943817, 54.369480, 59.582092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.036621, 54.161522, 59.506325>,  <59.191296, 53.814926, 59.380047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.036621, 54.161522, 59.506325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843887, 0.194408, 0.500061,
		0.371926, 0.459775, -0.806398,
		-0.386686, 0.866494, 0.315693,
		58.920616, 54.421471, 59.601032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.857277, 53.641197, 59.740280>,  <59.191296, 53.814926, 59.380047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.857277, 53.641197, 59.740280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.993370, 53.458542, 59.411469>,  <60.075027, 53.348949, 59.214184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.993370, 53.458542, 59.411469>,  <59.857277, 53.641197, 59.740280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.993370, 53.458542, 59.411469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434918, 0.698642, -0.568108,
		0.833720, 0.550802, 0.039101,
		0.340232, -0.456637, -0.822025,
		60.095440, 53.321552, 59.164860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.947083, 54.076550, 59.301872>,  <59.857277, 53.641197, 59.740280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.947083, 54.076550, 59.301872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.965775, 53.805779, 59.008049>,  <59.976990, 53.643314, 58.831753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.965775, 53.805779, 59.008049>,  <59.947083, 54.076550, 59.301872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.965775, 53.805779, 59.008049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176564, 0.718188, -0.673076,
		0.983179, 0.161150, -0.085960,
		0.046730, -0.676932, -0.734561,
		59.979794, 53.602699, 58.787682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.650845, 54.170055, 59.550598>,  <59.947083, 54.076550, 59.301872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.650845, 54.170055, 59.550598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.560837, 54.136993, 59.162262>,  <60.506832, 54.117157, 58.929260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.560837, 54.136993, 59.162262>,  <60.650845, 54.170055, 59.550598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.560837, 54.136993, 59.162262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467884, 0.864831, -0.182077,
		0.854663, -0.495212, -0.155934,
		-0.225024, -0.082655, -0.970841,
		60.493328, 54.112198, 58.871010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.257767, 54.237194, 59.131905>,  <60.650845, 54.170055, 59.550598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.257767, 54.237194, 59.131905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.920746, 54.369492, 58.961861>,  <60.718533, 54.448872, 58.859833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.920746, 54.369492, 58.961861>,  <61.257767, 54.237194, 59.131905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.920746, 54.369492, 58.961861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380125, 0.924300, -0.034271,
		0.381594, -0.190470, -0.904493,
		-0.842550, 0.330743, -0.425110,
		60.667980, 54.468716, 58.834328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.467373, 55.004467, 58.893921>,  <61.257767, 54.237194, 59.131905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.467373, 55.004467, 58.893921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.642166, 55.342819, 58.771584>,  <61.747040, 55.545830, 58.698181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.642166, 55.342819, 58.771584>,  <61.467373, 55.004467, 58.893921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.642166, 55.342819, 58.771584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454303, 0.085910, 0.886695,
		0.776310, -0.526413, -0.346744,
		0.436979, 0.845878, -0.305844,
		61.773258, 55.596584, 58.679829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.262280, 55.040154, 58.971733>,  <61.467373, 55.004467, 58.893921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.262280, 55.040154, 58.971733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.132896, 55.414715, 59.026161>,  <62.055267, 55.639454, 59.058819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.132896, 55.414715, 59.026161>,  <62.262280, 55.040154, 58.971733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.132896, 55.414715, 59.026161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734925, 0.158036, 0.659477,
		0.596035, 0.313317, -0.739307,
		-0.323462, 0.936407, 0.136069,
		62.035858, 55.695637, 59.066982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.800449, 55.565708, 58.894688>,  <62.262280, 55.040154, 58.971733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.800449, 55.565708, 58.894688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.519768, 55.726360, 59.130081>,  <62.351360, 55.822750, 59.271317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.519768, 55.726360, 59.130081>,  <62.800449, 55.565708, 58.894688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.519768, 55.726360, 59.130081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706581, 0.286291, 0.647133,
		0.091432, 0.869902, -0.484675,
		-0.701701, 0.401630, 0.588480,
		62.309258, 55.846851, 59.306625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.297539, 55.587715, 59.487049>,  <62.800449, 55.565708, 58.894688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.297539, 55.587715, 59.487049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.333855, 55.986053, 59.484062>,  <63.355644, 56.225056, 59.482269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.333855, 55.986053, 59.484062>,  <63.297539, 55.587715, 59.487049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.333855, 55.986053, 59.484062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001623, 0.007648, 0.999970,
		0.995868, -0.090779, 0.002311,
		0.090794, 0.995842, -0.007469,
		63.361092, 56.284805, 59.481823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.936302, 55.798874, 59.796951>,  <63.297539, 55.587715, 59.487049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.936302, 55.798874, 59.796951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.679428, 56.105148, 59.811531>,  <63.525303, 56.288914, 59.820278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.679428, 56.105148, 59.811531>,  <63.936302, 55.798874, 59.796951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.679428, 56.105148, 59.811531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190246, 0.113139, 0.975195,
		0.742570, 0.633186, -0.218325,
		-0.642181, 0.765686, 0.036448,
		63.486774, 56.334854, 59.822464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.355881, 56.340034, 60.031300>,  <63.936302, 55.798874, 59.796951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.355881, 56.340034, 60.031300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.972649, 56.331924, 60.145615>,  <63.742710, 56.327057, 60.214203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.972649, 56.331924, 60.145615>,  <64.355881, 56.340034, 60.031300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.972649, 56.331924, 60.145615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284283, 0.056689, 0.957063,
		-0.035608, 0.998186, -0.048547,
		-0.958079, -0.020278, 0.285786,
		63.685226, 56.325840, 60.231350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.870590, 55.907181, 60.283401>,  <64.355881, 56.340034, 60.031300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.870590, 55.907181, 60.283401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.721741, 56.155594, 60.559326>,  <64.632431, 56.304642, 60.724880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.721741, 56.155594, 60.559326>,  <64.870590, 55.907181, 60.283401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.721741, 56.155594, 60.559326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464174, -0.768094, 0.441105,
		0.803784, -0.156050, 0.574091,
		-0.372122, 0.621031, 0.689816,
		64.610107, 56.341904, 60.766270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.400291, 55.841320, 59.775887>,  <64.870590, 55.907181, 60.283401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.400291, 55.841320, 59.775887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.348907, 56.193138, 59.592628>,  <65.318077, 56.404228, 59.482674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.348907, 56.193138, 59.592628>,  <65.400291, 55.841320, 59.775887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.348907, 56.193138, 59.592628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766788, 0.381063, 0.516553,
		0.628915, -0.284946, -0.723376,
		-0.128462, 0.879544, -0.458149,
		65.310371, 56.457001, 59.455185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.084007, 56.121510, 59.611359>,  <65.400291, 55.841320, 59.775887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.084007, 56.121510, 59.611359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.820999, 56.421341, 59.641830>,  <65.663193, 56.601238, 59.660114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.820999, 56.421341, 59.641830>,  <66.084007, 56.121510, 59.611359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.820999, 56.421341, 59.641830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692094, 0.560925, 0.454279,
		0.297784, 0.351423, -0.887596,
		-0.657519, 0.749577, 0.076184,
		65.623741, 56.646214, 59.664684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.148712, 55.406364, 59.690086>,  <66.084007, 56.121510, 59.611359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.148712, 55.406364, 59.690086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.483505, 55.554283, 59.528732>,  <66.684380, 55.643036, 59.431919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.483505, 55.554283, 59.528732>,  <66.148712, 55.406364, 59.690086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.483505, 55.554283, 59.528732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443939, -0.889840, 0.105367,
		-0.319981, -0.267267, -0.908945,
		0.836977, 0.369801, -0.403382,
		66.734596, 55.665222, 59.407719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.283714, 55.041100, 59.155079>,  <66.148712, 55.406364, 59.690086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.283714, 55.041100, 59.155079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.627563, 55.192963, 59.291855>,  <66.833870, 55.284081, 59.373920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.627563, 55.192963, 59.291855>,  <66.283714, 55.041100, 59.155079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.627563, 55.192963, 59.291855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375899, -0.923197, 0.080048,
		0.346065, 0.059723, -0.936308,
		0.859616, 0.379659, 0.341935,
		66.885445, 55.306862, 59.394436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.871902, 54.821857, 58.798618>,  <66.283714, 55.041100, 59.155079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.871902, 54.821857, 58.798618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.981018, 54.882431, 59.178650>,  <67.046486, 54.918774, 59.406670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.981018, 54.882431, 59.178650>,  <66.871902, 54.821857, 58.798618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.981018, 54.882431, 59.178650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208376, -0.973393, 0.095318,
		0.939237, 0.171973, -0.297084,
		0.272788, 0.151431, 0.950082,
		67.062851, 54.927860, 59.463673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.589989, 54.596161, 58.906677>,  <66.871902, 54.821857, 58.798618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.589989, 54.596161, 58.906677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.368515, 54.569115, 59.238670>,  <67.235634, 54.552887, 59.437866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.368515, 54.569115, 59.238670>,  <67.589989, 54.596161, 58.906677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.368515, 54.569115, 59.238670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103101, -0.994596, -0.012244,
		0.826321, 0.078793, 0.557660,
		-0.553681, -0.067612, 0.829979,
		67.202408, 54.548832, 59.487663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.001884, 54.291588, 59.492870>,  <67.589989, 54.596161, 58.906677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.001884, 54.291588, 59.492870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.611099, 54.207375, 59.478920>,  <67.376625, 54.156845, 59.470551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.611099, 54.207375, 59.478920>,  <68.001884, 54.291588, 59.492870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.611099, 54.207375, 59.478920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208107, -0.976094, 0.062709,
		-0.047242, 0.054007, 0.997422,
		-0.976965, -0.210533, -0.034874,
		67.318008, 54.144215, 59.468456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.382065, 54.612526, 60.065384>,  <68.001884, 54.291588, 59.492870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.382065, 54.612526, 60.065384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.325676, 54.804329, 60.411842>,  <68.291847, 54.919411, 60.619717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.325676, 54.804329, 60.411842>,  <68.382065, 54.612526, 60.065384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.325676, 54.804329, 60.411842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990014, 0.067948, 0.123509,
		0.000371, 0.874903, -0.484297,
		-0.140966, 0.479507, 0.866142,
		68.283386, 54.948181, 60.671684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.898582, 55.093853, 60.199688>,  <68.382065, 54.612526, 60.065384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.898582, 55.093853, 60.199688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.777283, 55.065098, 60.579765>,  <68.704498, 55.047844, 60.807812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.777283, 55.065098, 60.579765>,  <68.898582, 55.093853, 60.199688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.777283, 55.065098, 60.579765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950333, 0.050448, 0.307118,
		-0.070013, 0.996136, 0.053018,
		-0.303257, -0.071887, 0.950193,
		68.686302, 55.043533, 60.864822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.751617, 55.692562, 60.591061>,  <68.898582, 55.093853, 60.199688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.751617, 55.692562, 60.591061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.890068, 55.368877, 60.780960>,  <68.973137, 55.174667, 60.894901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.890068, 55.368877, 60.780960>,  <68.751617, 55.692562, 60.591061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.890068, 55.368877, 60.780960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837467, 0.494583, 0.232456,
		-0.422908, 0.317129, 0.848869,
		0.346118, -0.809207, 0.474748,
		68.993904, 55.126114, 60.923386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.063644, 55.729259, 61.300789>,  <68.751617, 55.692562, 60.591061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.063644, 55.729259, 61.300789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.285034, 55.451603, 61.116684>,  <69.417870, 55.285011, 61.006222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.285034, 55.451603, 61.116684>,  <69.063644, 55.729259, 61.300789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.285034, 55.451603, 61.116684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830368, 0.417081, 0.369503,
		-0.064518, -0.586697, 0.807232,
		0.553468, -0.694139, -0.460265,
		69.451073, 55.243362, 60.978603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.627106, 55.325607, 61.649323>,  <69.063644, 55.729259, 61.300789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.627106, 55.325607, 61.649323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.769173, 55.341919, 61.275757>,  <69.854408, 55.351707, 61.051617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.769173, 55.341919, 61.275757>,  <69.627106, 55.325607, 61.649323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.769173, 55.341919, 61.275757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848859, 0.404371, 0.340473,
		0.391532, -0.913685, 0.109004,
		0.355164, 0.040777, -0.933915,
		69.875725, 55.354153, 60.995583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.386894, 55.071259, 61.603851>,  <69.627106, 55.325607, 61.649323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.386894, 55.071259, 61.603851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.281654, 55.347065, 61.333931>,  <70.218506, 55.512547, 61.171978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.281654, 55.347065, 61.333931>,  <70.386894, 55.071259, 61.603851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.281654, 55.347065, 61.333931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832332, 0.515910, 0.202632,
		0.487851, -0.508341, -0.709641,
		-0.263105, 0.689511, -0.674796,
		70.202721, 55.553917, 61.131493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.872032, 55.568176, 61.653721>,  <70.386894, 55.071259, 61.603851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.872032, 55.568176, 61.653721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.655640, 55.737350, 61.362938>,  <70.525803, 55.838856, 61.188469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.655640, 55.737350, 61.362938>,  <70.872032, 55.568176, 61.653721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.655640, 55.737350, 61.362938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732585, 0.661530, -0.160307,
		0.413102, -0.619279, -0.667713,
		-0.540987, 0.422933, -0.726953,
		70.493347, 55.864231, 61.144852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.289047, 55.695477, 61.039986>,  <70.872032, 55.568176, 61.653721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.289047, 55.695477, 61.039986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.999008, 55.970734, 61.050568>,  <70.824982, 56.135887, 61.056919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.999008, 55.970734, 61.050568>,  <71.289047, 55.695477, 61.039986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.999008, 55.970734, 61.050568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671763, 0.715249, -0.192753,
		-0.151565, -0.121990, -0.980891,
		-0.725095, 0.688141, 0.026459,
		70.781479, 56.177177, 61.058506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.178726, 56.162636, 60.380592>,  <71.289047, 55.695477, 61.039986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.178726, 56.162636, 60.380592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.119598, 56.335381, 60.736488>,  <71.084122, 56.439026, 60.950027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.119598, 56.335381, 60.736488>,  <71.178726, 56.162636, 60.380592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.119598, 56.335381, 60.736488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615929, 0.744071, -0.258823,
		-0.773808, 0.509758, -0.375990,
		-0.147826, 0.431862, 0.889743,
		71.075249, 56.464939, 61.003410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.748634, 56.687935, 60.480553>,  <71.178726, 56.162636, 60.380592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.748634, 56.687935, 60.480553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.475754, 56.792023, 60.753868>,  <71.312027, 56.854477, 60.917858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.475754, 56.792023, 60.753868>,  <71.748634, 56.687935, 60.480553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.475754, 56.792023, 60.753868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574853, 0.768381, 0.281309,
		-0.451825, 0.584701, -0.673780,
		-0.682201, 0.260222, 0.683291,
		71.271095, 56.870090, 60.958855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.679802, 57.438438, 60.492317>,  <71.748634, 56.687935, 60.480553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.679802, 57.438438, 60.492317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.503044, 57.316139, 60.829659>,  <71.396988, 57.242760, 61.032063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.503044, 57.316139, 60.829659>,  <71.679802, 57.438438, 60.492317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.503044, 57.316139, 60.829659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486429, 0.708240, 0.511648,
		-0.753731, 0.636328, -0.164246,
		-0.441902, -0.305750, 0.843350,
		71.370476, 57.224415, 61.082664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.406334, 57.400223, 60.486813>,  <71.679802, 57.438438, 60.492317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.406334, 57.400223, 60.486813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.660812, 57.704880, 60.536064>,  <72.813499, 57.887672, 60.565617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.660812, 57.704880, 60.536064>,  <72.406334, 57.400223, 60.486813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.660812, 57.704880, 60.536064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267978, -0.068487, -0.960988,
		-0.723492, 0.644373, -0.247674,
		0.636197, 0.761638, 0.123128,
		72.851669, 57.933372, 60.573002>
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
