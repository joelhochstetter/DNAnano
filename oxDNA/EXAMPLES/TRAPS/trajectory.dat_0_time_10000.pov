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
	<36.788017, 53.040073, 49.597553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722469, 52.785206, 49.898792>,  <36.683140, 52.632286, 50.079536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722469, 52.785206, 49.898792>,  <36.788017, 53.040073, 49.597553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722469, 52.785206, 49.898792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900381, 0.215319, 0.378088,
		-0.403064, 0.740033, 0.538414,
		-0.163867, -0.637172, 0.753100,
		36.673309, 52.594055, 50.124722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088352, 53.220207, 50.198784>,  <36.788017, 53.040073, 49.597553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088352, 53.220207, 50.198784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064941, 52.831562, 50.290474>,  <37.050896, 52.598377, 50.345490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064941, 52.831562, 50.290474>,  <37.088352, 53.220207, 50.198784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064941, 52.831562, 50.290474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863572, 0.065916, 0.499899,
		-0.500817, 0.227215, 0.835198,
		-0.058531, -0.971611, 0.229229,
		37.047382, 52.540077, 50.359241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221073, 53.162392, 50.875385>,  <37.088352, 53.220207, 50.198784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221073, 53.162392, 50.875385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280247, 52.785995, 50.753628>,  <37.315750, 52.560158, 50.680573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280247, 52.785995, 50.753628>,  <37.221073, 53.162392, 50.875385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280247, 52.785995, 50.753628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840352, -0.042680, 0.540358,
		-0.521462, -0.335733, 0.784449,
		0.147936, -0.940990, -0.304390,
		37.324627, 52.503700, 50.662312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322048, 52.764446, 51.421165>,  <37.221073, 53.162392, 50.875385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322048, 52.764446, 51.421165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509098, 52.623566, 51.096874>,  <37.621326, 52.539040, 50.902298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509098, 52.623566, 51.096874>,  <37.322048, 52.764446, 51.421165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509098, 52.623566, 51.096874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857285, -0.042785, 0.513062,
		-0.215386, -0.934947, 0.281927,
		0.467623, -0.352198, -0.810731,
		37.649384, 52.517906, 50.853653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688942, 52.067024, 51.409512>,  <37.322048, 52.764446, 51.421165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688942, 52.067024, 51.409512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845711, 52.386574, 51.226997>,  <37.939774, 52.578304, 51.117489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845711, 52.386574, 51.226997>,  <37.688942, 52.067024, 51.409512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845711, 52.386574, 51.226997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745434, 0.014926, 0.666413,
		0.539189, -0.601315, -0.589657,
		0.391923, 0.798873, -0.456288,
		37.963287, 52.626236, 51.090111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371368, 51.839397, 51.381424>,  <37.688942, 52.067024, 51.409512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371368, 51.839397, 51.381424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337990, 52.237869, 51.391655>,  <38.317963, 52.476952, 51.397793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337990, 52.237869, 51.391655>,  <38.371368, 51.839397, 51.381424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337990, 52.237869, 51.391655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747602, 0.045617, 0.662579,
		0.658884, 0.074412, -0.748555,
		-0.083451, 0.996184, 0.025575,
		38.312954, 52.536724, 51.399326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054169, 51.994572, 51.219051>,  <38.371368, 51.839397, 51.381424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054169, 51.994572, 51.219051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844826, 52.269299, 51.420795>,  <38.719219, 52.434135, 51.541843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844826, 52.269299, 51.420795>,  <39.054169, 51.994572, 51.219051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844826, 52.269299, 51.420795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775935, 0.139498, 0.615196,
		0.352167, 0.713322, -0.605929,
		-0.523358, 0.686813, 0.504365,
		38.687817, 52.475342, 51.572105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443298, 52.623642, 51.250237>,  <39.054169, 51.994572, 51.219051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443298, 52.623642, 51.250237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208759, 52.600163, 51.573410>,  <39.068035, 52.586075, 51.767315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208759, 52.600163, 51.573410>,  <39.443298, 52.623642, 51.250237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208759, 52.600163, 51.573410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782670, 0.216107, 0.583717,
		-0.208864, 0.974603, -0.080770,
		-0.586348, -0.058702, 0.807930,
		39.032856, 52.582554, 51.815788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480003, 53.308540, 51.621735>,  <39.443298, 52.623642, 51.250237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480003, 53.308540, 51.621735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382751, 53.030384, 51.892235>,  <39.324402, 52.863491, 52.054535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382751, 53.030384, 51.892235>,  <39.480003, 53.308540, 51.621735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382751, 53.030384, 51.892235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650850, 0.399983, 0.645296,
		-0.719223, 0.597031, 0.355348,
		-0.243128, -0.695391, 0.676255,
		39.309814, 52.821766, 52.095112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251171, 53.692268, 52.244343>,  <39.480003, 53.308540, 51.621735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251171, 53.692268, 52.244343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431168, 53.338306, 52.292446>,  <39.539165, 53.125931, 52.321308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431168, 53.338306, 52.292446>,  <39.251171, 53.692268, 52.244343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431168, 53.338306, 52.292446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625504, 0.408422, 0.664783,
		-0.637381, -0.223925, 0.737294,
		0.449988, -0.884901, 0.120254,
		39.566166, 53.072838, 52.328522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325462, 53.432354, 52.954166>,  <39.251171, 53.692268, 52.244343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325462, 53.432354, 52.954166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624729, 53.318836, 52.714268>,  <39.804291, 53.250725, 52.570328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624729, 53.318836, 52.714268>,  <39.325462, 53.432354, 52.954166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624729, 53.318836, 52.714268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663484, 0.312786, 0.679672,
		-0.005297, -0.906435, 0.422313,
		0.748172, -0.283798, -0.599748,
		39.849182, 53.233696, 52.534344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917236, 53.561184, 53.302425>,  <39.325462, 53.432354, 52.954166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917236, 53.561184, 53.302425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068962, 53.390453, 52.974052>,  <40.160000, 53.288013, 52.777027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068962, 53.390453, 52.974052>,  <39.917236, 53.561184, 53.302425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068962, 53.390453, 52.974052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923020, 0.112761, 0.367858,
		-0.064442, -0.897275, 0.436743,
		0.379317, -0.426828, -0.820936,
		40.182758, 53.262405, 52.727772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485092, 53.029930, 53.461975>,  <39.917236, 53.561184, 53.302425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485092, 53.029930, 53.461975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541355, 53.194145, 53.101601>,  <40.575111, 53.292675, 52.885376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541355, 53.194145, 53.101601>,  <40.485092, 53.029930, 53.461975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541355, 53.194145, 53.101601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950050, 0.200104, 0.239504,
		0.278605, -0.889618, -0.361884,
		0.140653, 0.410535, -0.900932,
		40.583549, 53.317307, 52.831322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957958, 52.681828, 53.125397>,  <40.485092, 53.029930, 53.461975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957958, 52.681828, 53.125397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961998, 53.063274, 53.005051>,  <40.964420, 53.292141, 52.932842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961998, 53.063274, 53.005051>,  <40.957958, 52.681828, 53.125397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961998, 53.063274, 53.005051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993638, 0.024183, 0.109998,
		0.112171, -0.300058, -0.947303,
		0.010097, 0.953614, -0.300861,
		40.965027, 53.349358, 52.914791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437431, 52.843273, 52.559593>,  <40.957958, 52.681828, 53.125397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437431, 52.843273, 52.559593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403820, 53.143295, 52.821999>,  <41.383652, 53.323307, 52.979443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403820, 53.143295, 52.821999>,  <41.437431, 52.843273, 52.559593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403820, 53.143295, 52.821999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973537, 0.202203, -0.106486,
		-0.212519, 0.629706, -0.747198,
		-0.084031, 0.750056, 0.656015,
		41.378613, 53.368313, 53.018803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839821, 53.453297, 52.234798>,  <41.437431, 52.843273, 52.559593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839821, 53.453297, 52.234798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794243, 53.451302, 52.632187>,  <41.766895, 53.450104, 52.870621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794243, 53.451302, 52.632187>,  <41.839821, 53.453297, 52.234798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794243, 53.451302, 52.632187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963241, 0.244314, 0.111702,
		-0.243277, 0.969683, -0.023031,
		-0.113942, -0.004990, 0.993475,
		41.760059, 53.449806, 52.930229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172646, 53.986008, 52.499092>,  <41.839821, 53.453297, 52.234798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172646, 53.986008, 52.499092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160172, 53.723450, 52.800602>,  <42.152687, 53.565914, 52.981506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160172, 53.723450, 52.800602>,  <42.172646, 53.986008, 52.499092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160172, 53.723450, 52.800602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953706, 0.206144, 0.218974,
		-0.299119, 0.725707, 0.619578,
		-0.031189, -0.656394, 0.753773,
		42.150814, 53.526531, 53.026733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336250, 54.207031, 53.248043>,  <42.172646, 53.986008, 52.499092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336250, 54.207031, 53.248043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440228, 53.820839, 53.254765>,  <42.502613, 53.589123, 53.258797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440228, 53.820839, 53.254765>,  <42.336250, 54.207031, 53.248043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440228, 53.820839, 53.254765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860290, 0.239461, 0.450067,
		-0.438553, -0.102536, 0.892837,
		0.259947, -0.965477, 0.016806,
		42.518211, 53.531197, 53.259808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383526, 53.983021, 53.966927>,  <42.336250, 54.207031, 53.248043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383526, 53.983021, 53.966927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589153, 53.733006, 53.731956>,  <42.712528, 53.582996, 53.590977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589153, 53.733006, 53.731956>,  <42.383526, 53.983021, 53.966927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589153, 53.733006, 53.731956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851046, 0.286220, 0.440226,
		-0.107025, -0.726229, 0.679071,
		0.514068, -0.625036, -0.587422,
		42.743374, 53.545494, 53.555729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731155, 53.634129, 54.529083>,  <42.383526, 53.983021, 53.966927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731155, 53.634129, 54.529083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897987, 53.646107, 54.165733>,  <42.998085, 53.653294, 53.947723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897987, 53.646107, 54.165733>,  <42.731155, 53.634129, 54.529083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897987, 53.646107, 54.165733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904024, 0.089401, 0.418029,
		0.093733, -0.995545, 0.010204,
		0.417079, 0.029959, -0.908376,
		43.023109, 53.655090, 53.893219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182751, 52.985455, 54.319530>,  <42.731155, 53.634129, 54.529083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182751, 52.985455, 54.319530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268959, 53.364239, 54.224182>,  <43.320686, 53.591507, 54.166973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268959, 53.364239, 54.224182>,  <43.182751, 52.985455, 54.319530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268959, 53.364239, 54.224182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727165, 0.007290, 0.686424,
		0.651752, -0.321278, -0.687023,
		0.215525, 0.946957, -0.238373,
		43.333618, 53.648327, 54.152672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933670, 52.878605, 54.318729>,  <43.182751, 52.985455, 54.319530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933670, 52.878605, 54.318729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838356, 53.263809, 54.369057>,  <43.781166, 53.494930, 54.399254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838356, 53.263809, 54.369057>,  <43.933670, 52.878605, 54.318729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838356, 53.263809, 54.369057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679977, 0.072935, 0.729597,
		0.693433, 0.259406, -0.672205,
		-0.238289, 0.963010, 0.125815,
		43.766869, 53.552711, 54.406799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555386, 53.319527, 54.386726>,  <43.933670, 52.878605, 54.318729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555386, 53.319527, 54.386726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270638, 53.494667, 54.606373>,  <44.099789, 53.599751, 54.738159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270638, 53.494667, 54.606373>,  <44.555386, 53.319527, 54.386726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270638, 53.494667, 54.606373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419389, -0.362129, 0.832451,
		0.563344, 0.822888, 0.074157,
		-0.711868, 0.437856, 0.549114,
		44.057076, 53.626022, 54.771107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772724, 53.952759, 54.850090>,  <44.555386, 53.319527, 54.386726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772724, 53.952759, 54.850090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485073, 53.700871, 54.967606>,  <44.312481, 53.549740, 55.038113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485073, 53.700871, 54.967606>,  <44.772724, 53.952759, 54.850090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485073, 53.700871, 54.967606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514099, -0.197708, 0.834634,
		-0.467499, 0.751245, 0.465914,
		-0.719130, -0.629716, 0.293786,
		44.269333, 53.511955, 55.055740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352081, 53.922260, 54.311405>,  <44.772724, 53.952759, 54.850090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352081, 53.922260, 54.311405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101536, 54.217140, 54.210049>,  <44.951210, 54.394070, 54.149235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101536, 54.217140, 54.210049>,  <45.352081, 53.922260, 54.311405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101536, 54.217140, 54.210049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766314, 0.522693, -0.373571,
		-0.142953, -0.428165, -0.892322,
		-0.626360, 0.737202, -0.253389,
		44.913628, 54.438301, 54.134033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488243, 54.055481, 53.602646>,  <45.352081, 53.922260, 54.311405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488243, 54.055481, 53.602646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361355, 54.363873, 53.823540>,  <45.285221, 54.548908, 53.956078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361355, 54.363873, 53.823540>,  <45.488243, 54.055481, 53.602646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361355, 54.363873, 53.823540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813825, 0.520266, -0.258866,
		-0.486889, 0.367305, -0.792481,
		-0.317218, 0.770980, 0.552234,
		45.266190, 54.595165, 53.989208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514648, 54.612247, 53.203850>,  <45.488243, 54.055481, 53.602646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514648, 54.612247, 53.203850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452595, 54.785084, 53.559204>,  <45.415363, 54.888786, 53.772415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452595, 54.785084, 53.559204>,  <45.514648, 54.612247, 53.203850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452595, 54.785084, 53.559204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754992, 0.631822, -0.175465,
		-0.637119, 0.643503, -0.424244,
		-0.155135, 0.432093, 0.888385,
		45.406055, 54.914711, 53.825718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055939, 54.728294, 52.607952>,  <45.514648, 54.612247, 53.203850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055939, 54.728294, 52.607952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062962, 54.851448, 52.988457>,  <46.067173, 54.925339, 53.216759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062962, 54.851448, 52.988457>,  <46.055939, 54.728294, 52.607952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062962, 54.851448, 52.988457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962147, -0.263992, 0.067688,
		0.271966, 0.914067, -0.300860,
		0.017554, 0.307880, 0.951263,
		46.068226, 54.943813, 53.273834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.614807, 55.252392, 52.652546>,  <46.055939, 54.728294, 52.607952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.614807, 55.252392, 52.652546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540398, 55.044533, 52.986099>,  <46.495750, 54.919815, 53.186230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540398, 55.044533, 52.986099>,  <46.614807, 55.252392, 52.652546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540398, 55.044533, 52.986099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976618, -0.190869, 0.098927,
		0.107755, 0.832786, 0.543006,
		-0.186028, -0.519650, 0.833881,
		46.484589, 54.888638, 53.236263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138485, 55.494442, 53.047470>,  <46.614807, 55.252392, 52.652546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138485, 55.494442, 53.047470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014973, 55.126129, 53.142815>,  <46.940865, 54.905140, 53.200024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014973, 55.126129, 53.142815>,  <47.138485, 55.494442, 53.047470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.014973, 55.126129, 53.142815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951077, -0.296151, 0.088019,
		-0.010454, 0.253881, 0.967179,
		-0.308777, -0.920782, 0.238365,
		46.922340, 54.849895, 53.214325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.481804, 55.269352, 53.628677>,  <47.138485, 55.494442, 53.047470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.481804, 55.269352, 53.628677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378014, 54.935497, 53.434334>,  <47.315739, 54.735184, 53.317730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378014, 54.935497, 53.434334>,  <47.481804, 55.269352, 53.628677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.378014, 54.935497, 53.434334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931522, -0.349047, 0.102138,
		-0.254835, -0.426085, 0.868050,
		-0.259471, -0.834636, -0.485857,
		47.300171, 54.685108, 53.288578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.605484, 54.671478, 54.087872>,  <47.481804, 55.269352, 53.628677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.605484, 54.671478, 54.087872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649136, 54.613628, 53.694492>,  <47.675327, 54.578918, 53.458466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649136, 54.613628, 53.694492>,  <47.605484, 54.671478, 54.087872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.649136, 54.613628, 53.694492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983540, -0.127630, 0.127908,
		-0.144016, -0.981221, 0.128312,
		0.109130, -0.144621, -0.983451,
		47.681873, 54.570244, 53.399456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.038921, 54.053276, 53.899841>,  <47.605484, 54.671478, 54.087872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.038921, 54.053276, 53.899841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.071217, 54.348953, 53.632385>,  <48.090595, 54.526360, 53.471912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.071217, 54.348953, 53.632385>,  <48.038921, 54.053276, 53.899841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.071217, 54.348953, 53.632385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985277, -0.160615, -0.058583,
		-0.150698, -0.654067, -0.741274,
		0.080743, 0.739189, -0.668641,
		48.095440, 54.570709, 53.431793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.639114, 53.784058, 53.467815>,  <48.038921, 54.053276, 53.899841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.639114, 53.784058, 53.467815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.573391, 54.166416, 53.370434>,  <48.533955, 54.395832, 53.312004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.573391, 54.166416, 53.370434>,  <48.639114, 53.784058, 53.467815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.573391, 54.166416, 53.370434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986203, 0.154165, -0.060301,
		-0.020109, -0.250002, -0.968036,
		-0.164312, 0.955893, -0.243453,
		48.524097, 54.453186, 53.297398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.087555, 53.955219, 52.897266>,  <48.639114, 53.784058, 53.467815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.087555, 53.955219, 52.897266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.978554, 54.299301, 53.069675>,  <48.913155, 54.505753, 53.173122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.978554, 54.299301, 53.069675>,  <49.087555, 53.955219, 52.897266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.978554, 54.299301, 53.069675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933343, 0.345141, -0.098734,
		-0.233697, 0.375390, -0.896921,
		-0.272501, 0.860209, 0.431026,
		48.896805, 54.557365, 53.198982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.393837, 54.501110, 52.506802>,  <49.087555, 53.955219, 52.897266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.393837, 54.501110, 52.506802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.352230, 54.654724, 52.873779>,  <49.327267, 54.746891, 53.093964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.352230, 54.654724, 52.873779>,  <49.393837, 54.501110, 52.506802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.352230, 54.654724, 52.873779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955841, 0.293527, -0.014495,
		-0.274861, 0.875421, -0.397606,
		-0.104019, 0.384032, 0.917442,
		49.321026, 54.769932, 53.149014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.432178, 55.261959, 52.580513>,  <49.393837, 54.501110, 52.506802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.432178, 55.261959, 52.580513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.584328, 55.044285, 52.879627>,  <49.675617, 54.913681, 53.059097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.584328, 55.044285, 52.879627>,  <49.432178, 55.261959, 52.580513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.584328, 55.044285, 52.879627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896304, 0.416196, -0.153038,
		-0.227944, 0.728453, 0.646063,
		0.380370, -0.544185, 0.747785,
		49.698437, 54.881031, 53.103962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.788113, 55.697060, 53.115501>,  <49.432178, 55.261959, 52.580513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.788113, 55.697060, 53.115501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.948990, 55.334412, 53.166542>,  <50.045517, 55.116821, 53.197166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.948990, 55.334412, 53.166542>,  <49.788113, 55.697060, 53.115501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.948990, 55.334412, 53.166542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906266, 0.374419, -0.196195,
		0.130099, 0.194547, 0.972227,
		0.402190, -0.906621, 0.127600,
		50.069649, 55.062424, 53.204823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.178028, 55.693550, 53.705193>,  <49.788113, 55.697060, 53.115501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.178028, 55.693550, 53.705193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.325542, 55.434761, 53.438232>,  <50.414051, 55.279488, 53.278057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.325542, 55.434761, 53.438232>,  <50.178028, 55.693550, 53.705193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.325542, 55.434761, 53.438232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892531, 0.446995, 0.059865,
		0.259593, -0.617751, 0.742290,
		0.368782, -0.646977, -0.667399,
		50.436176, 55.240669, 53.238014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.800465, 55.337124, 53.906296>,  <50.178028, 55.693550, 53.705193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.800465, 55.337124, 53.906296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.808834, 55.348995, 53.506561>,  <50.813854, 55.356117, 53.266720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.808834, 55.348995, 53.506561>,  <50.800465, 55.337124, 53.906296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.808834, 55.348995, 53.506561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908352, 0.417027, 0.031400,
		0.417683, -0.908410, -0.018232,
		0.020921, 0.029676, -0.999341,
		50.815109, 55.357899, 53.206760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.370800, 54.987469, 53.640228>,  <50.800465, 55.337124, 53.906296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.370800, 54.987469, 53.640228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.321377, 55.266609, 53.358025>,  <51.291721, 55.434093, 53.188702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.321377, 55.266609, 53.358025>,  <51.370800, 54.987469, 53.640228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.321377, 55.266609, 53.358025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986242, 0.165037, -0.009478,
		0.109820, -0.696971, -0.708641,
		-0.123558, 0.697850, -0.705506,
		51.284309, 55.475964, 53.146374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.948257, 54.846191, 53.168552>,  <51.370800, 54.987469, 53.640228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.948257, 54.846191, 53.168552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.834305, 55.211861, 53.053226>,  <51.765934, 55.431263, 52.984032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.834305, 55.211861, 53.053226>,  <51.948257, 54.846191, 53.168552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.834305, 55.211861, 53.053226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950758, 0.231171, -0.206442,
		-0.122075, -0.332926, -0.935018,
		-0.284879, 0.914177, -0.288312,
		51.748840, 55.486115, 52.966732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.090073, 55.033955, 52.412975>,  <51.948257, 54.846191, 53.168552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.090073, 55.033955, 52.412975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.126175, 55.288738, 52.719215>,  <52.147839, 55.441608, 52.902958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.126175, 55.288738, 52.719215>,  <52.090073, 55.033955, 52.412975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.126175, 55.288738, 52.719215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949770, 0.176245, -0.258601,
		-0.299651, 0.750484, -0.589053,
		0.090259, 0.636954, 0.765599,
		52.153252, 55.479824, 52.948895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.505795, 55.513775, 52.037914>,  <52.090073, 55.033955, 52.412975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.505795, 55.513775, 52.037914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.506180, 55.546997, 52.436531>,  <52.506409, 55.566929, 52.675701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.506180, 55.546997, 52.436531>,  <52.505795, 55.513775, 52.037914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.506180, 55.546997, 52.436531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998565, 0.053281, -0.005404,
		-0.053546, 0.995120, -0.082881,
		0.000962, 0.083052, 0.996545,
		52.506470, 55.571911, 52.735493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.940315, 56.171375, 52.266117>,  <52.505795, 55.513775, 52.037914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.940315, 56.171375, 52.266117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.899822, 55.872490, 52.528851>,  <52.875526, 55.693161, 52.686489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.899822, 55.872490, 52.528851>,  <52.940315, 56.171375, 52.266117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.899822, 55.872490, 52.528851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994802, -0.083342, 0.058514,
		0.011020, 0.659343, 0.751762,
		-0.101234, -0.747209, 0.656834,
		52.869453, 55.648327, 52.725899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.389221, 56.328106, 52.883808>,  <52.940315, 56.171375, 52.266117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.389221, 56.328106, 52.883808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.319733, 55.934380, 52.871479>,  <53.278038, 55.698143, 52.864082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.319733, 55.934380, 52.871479>,  <53.389221, 56.328106, 52.883808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.319733, 55.934380, 52.871479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945683, -0.175478, 0.273661,
		-0.274777, 0.018391, 0.961332,
		-0.173725, -0.984312, -0.030826,
		53.267616, 55.639088, 52.862232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.529697, 56.050037, 53.577560>,  <53.389221, 56.328106, 52.883808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.529697, 56.050037, 53.577560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.601921, 55.806541, 53.268539>,  <53.645256, 55.660446, 53.083126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.601921, 55.806541, 53.268539>,  <53.529697, 56.050037, 53.577560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.601921, 55.806541, 53.268539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981063, 0.055481, 0.185576,
		-0.070105, -0.791430, 0.607227,
		0.180560, -0.608737, -0.772552,
		53.656090, 55.623920, 53.036774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.196899, 55.726044, 53.846775>,  <53.529697, 56.050037, 53.577560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.196899, 55.726044, 53.846775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.164322, 55.677490, 53.451073>,  <54.144775, 55.648357, 53.213650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.164322, 55.677490, 53.451073>,  <54.196899, 55.726044, 53.846775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.164322, 55.677490, 53.451073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978856, -0.196606, -0.056462,
		-0.187640, -0.972940, 0.134828,
		-0.081442, -0.121383, -0.989259,
		54.139889, 55.641075, 53.154297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.278580, 54.967163, 53.658272>,  <54.196899, 55.726044, 53.846775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.278580, 54.967163, 53.658272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.439346, 55.255386, 53.432262>,  <54.535809, 55.428322, 53.296658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.439346, 55.255386, 53.432262>,  <54.278580, 54.967163, 53.658272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.439346, 55.255386, 53.432262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905569, -0.404211, 0.128679,
		-0.135668, -0.563386, -0.814979,
		0.401919, 0.720562, -0.565024,
		54.559921, 55.471554, 53.262756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.661469, 54.796207, 53.097805>,  <54.278580, 54.967163, 53.658272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.661469, 54.796207, 53.097805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.823357, 55.122597, 53.262917>,  <54.920490, 55.318432, 53.361984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.823357, 55.122597, 53.262917>,  <54.661469, 54.796207, 53.097805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.823357, 55.122597, 53.262917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787235, -0.540573, 0.296718,
		0.465252, 0.204867, -0.861145,
		0.404724, 0.815972, 0.412781,
		54.944775, 55.367390, 53.386749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.285378, 54.715797, 52.921177>,  <54.661469, 54.796207, 53.097805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.285378, 54.715797, 52.921177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.327171, 55.006710, 53.192513>,  <55.352249, 55.181259, 53.355312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.327171, 55.006710, 53.192513>,  <55.285378, 54.715797, 52.921177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.327171, 55.006710, 53.192513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901733, -0.356967, 0.243827,
		0.419476, 0.586205, -0.693112,
		0.104485, 0.727282, 0.678339,
		55.358517, 55.224895, 53.396015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.938194, 55.041954, 52.859928>,  <55.285378, 54.715797, 52.921177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.938194, 55.041954, 52.859928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.839905, 55.040501, 53.247662>,  <55.780930, 55.039631, 53.480301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.839905, 55.040501, 53.247662>,  <55.938194, 55.041954, 52.859928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.839905, 55.040501, 53.247662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957497, -0.156747, 0.242135,
		0.151061, 0.987632, 0.041992,
		-0.245723, -0.003630, 0.969333,
		55.766190, 55.039413, 53.538460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.433144, 55.465073, 53.190907>,  <55.938194, 55.041954, 52.859928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.433144, 55.465073, 53.190907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.282661, 55.212006, 53.461670>,  <56.192371, 55.060165, 53.624126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.282661, 55.212006, 53.461670>,  <56.433144, 55.465073, 53.190907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.282661, 55.212006, 53.461670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925429, -0.220831, 0.307922,
		-0.045331, 0.742270, 0.668566,
		-0.376201, -0.632668, 0.676907,
		56.169800, 55.022205, 53.664742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.700912, 55.662720, 53.842327>,  <56.433144, 55.465073, 53.190907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.700912, 55.662720, 53.842327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.584129, 55.280254, 53.851402>,  <56.514057, 55.050777, 53.856846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.584129, 55.280254, 53.851402>,  <56.700912, 55.662720, 53.842327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.584129, 55.280254, 53.851402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864740, -0.253766, 0.433391,
		-0.408635, 0.146150, 0.900921,
		-0.291963, -0.956161, 0.022684,
		56.496540, 54.993404, 53.858208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.863945, 55.339973, 54.442497>,  <56.700912, 55.662720, 53.842327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.863945, 55.339973, 54.442497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.887650, 55.069847, 54.148438>,  <56.901871, 54.907772, 53.972004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.887650, 55.069847, 54.148438>,  <56.863945, 55.339973, 54.442497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.887650, 55.069847, 54.148438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930550, -0.229202, 0.285558,
		-0.361338, -0.701011, 0.614832,
		0.059258, -0.675315, -0.735145,
		56.905426, 54.867252, 53.927895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.468060, 55.079609, 54.044029>,  <56.863945, 55.339973, 54.442497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.468060, 55.079609, 54.044029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.473305, 55.111927, 54.442688>,  <57.476452, 55.131317, 54.681881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.473305, 55.111927, 54.442688>,  <57.468060, 55.079609, 54.044029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.473305, 55.111927, 54.442688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910861, -0.412158, 0.021423,
		0.412506, 0.907523, -0.078997,
		0.013117, 0.080793, 0.996645,
		57.477242, 55.136166, 54.741680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.034786, 55.472397, 54.408592>,  <57.468060, 55.079609, 54.044029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.034786, 55.472397, 54.408592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.918159, 55.224342, 54.699913>,  <57.848183, 55.075508, 54.874706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.918159, 55.224342, 54.699913>,  <58.034786, 55.472397, 54.408592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.918159, 55.224342, 54.699913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928414, -0.366772, 0.059372,
		0.230301, 0.693474, 0.682682,
		-0.291562, -0.620139, 0.728299,
		57.830692, 55.038300, 54.918404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.445255, 55.562260, 54.925457>,  <58.034786, 55.472397, 54.408592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.445255, 55.562260, 54.925457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.328423, 55.183784, 54.981186>,  <58.258324, 54.956699, 55.014622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.328423, 55.183784, 54.981186>,  <58.445255, 55.562260, 54.925457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.328423, 55.183784, 54.981186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935093, -0.251963, 0.249232,
		-0.200717, 0.203072, 0.958371,
		-0.292086, -0.946190, 0.139318,
		58.240795, 54.899929, 55.022980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.503742, 55.212833, 55.671021>,  <58.445255, 55.562260, 54.925457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.503742, 55.212833, 55.671021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.573723, 55.001831, 55.338486>,  <58.615711, 54.875229, 55.138966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.573723, 55.001831, 55.338486>,  <58.503742, 55.212833, 55.671021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.573723, 55.001831, 55.338486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977091, -0.010906, 0.212545,
		-0.121186, -0.849480, 0.513515,
		0.174952, -0.527508, -0.831341,
		58.626209, 54.843578, 55.089085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.795967, 54.614868, 55.922127>,  <58.503742, 55.212833, 55.671021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.795967, 54.614868, 55.922127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.943192, 54.655949, 55.552483>,  <59.031525, 54.680599, 55.330696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.943192, 54.655949, 55.552483>,  <58.795967, 54.614868, 55.922127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.943192, 54.655949, 55.552483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928184, 0.018021, 0.371685,
		0.054827, -0.994549, -0.088697,
		0.368060, 0.102705, -0.924112,
		59.053608, 54.686760, 55.275249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.394611, 54.187790, 55.757748>,  <58.795967, 54.614868, 55.922127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.394611, 54.187790, 55.757748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.409447, 54.548103, 55.584679>,  <59.418346, 54.764294, 55.480839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.409447, 54.548103, 55.584679>,  <59.394611, 54.187790, 55.757748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.409447, 54.548103, 55.584679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805707, 0.229175, 0.546183,
		0.591153, -0.368864, -0.717271,
		0.037087, 0.900787, -0.432674,
		59.420574, 54.818340, 55.454876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.066422, 54.430450, 55.623966>,  <59.394611, 54.187790, 55.757748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.066422, 54.430450, 55.623966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.870735, 54.776604, 55.667374>,  <59.753323, 54.984295, 55.693420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.870735, 54.776604, 55.667374>,  <60.066422, 54.430450, 55.623966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.870735, 54.776604, 55.667374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784098, 0.381914, 0.489216,
		0.381913, 0.324425, -0.865385,
		-0.489216, 0.865385, 0.108523,
		59.723972, 55.036221, 55.699932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.313011, 55.040443, 55.186054>,  <60.066422, 54.430450, 55.623966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.313011, 55.040443, 55.186054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.155029, 55.117649, 55.545334>,  <60.060242, 55.163971, 55.760902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.155029, 55.117649, 55.545334>,  <60.313011, 55.040443, 55.186054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.155029, 55.117649, 55.545334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831498, 0.490851, 0.260146,
		-0.390669, 0.849594, -0.354355,
		-0.394954, 0.193015, 0.898196,
		60.036545, 55.175552, 55.814793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.346588, 55.810085, 55.351032>,  <60.313011, 55.040443, 55.186054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.346588, 55.810085, 55.351032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.367966, 55.541584, 55.646751>,  <60.380791, 55.380482, 55.824181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.367966, 55.541584, 55.646751>,  <60.346588, 55.810085, 55.351032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.367966, 55.541584, 55.646751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925421, 0.311436, 0.215877,
		-0.375152, 0.672623, 0.637840,
		0.053442, -0.671257, 0.739295,
		60.383999, 55.340206, 55.868542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.455273, 56.078640, 56.163681>,  <60.346588, 55.810085, 55.351032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.455273, 56.078640, 56.163681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.619858, 55.735725, 56.039902>,  <60.718609, 55.529976, 55.965633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.619858, 55.735725, 56.039902>,  <60.455273, 56.078640, 56.163681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.619858, 55.735725, 56.039902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911347, 0.391471, 0.127268,
		0.012035, -0.334381, 0.942361,
		0.411463, -0.857286, -0.309448,
		60.743298, 55.478539, 55.947067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.904972, 55.812366, 56.730476>,  <60.455273, 56.078640, 56.163681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.904972, 55.812366, 56.730476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.999084, 55.687881, 56.362175>,  <61.055553, 55.613190, 56.141193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.999084, 55.687881, 56.362175>,  <60.904972, 55.812366, 56.730476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.999084, 55.687881, 56.362175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928095, 0.353227, 0.117771,
		0.288584, -0.882258, 0.371941,
		0.235284, -0.311210, -0.920755,
		61.069668, 55.594521, 56.085949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.671402, 55.591084, 56.779259>,  <60.904972, 55.812366, 56.730476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.671402, 55.591084, 56.779259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.602432, 55.691269, 56.398201>,  <61.561050, 55.751381, 56.169567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.602432, 55.691269, 56.398201>,  <61.671402, 55.591084, 56.779259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.602432, 55.691269, 56.398201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954442, 0.281596, -0.098712,
		0.243539, -0.926268, -0.287604,
		-0.172422, 0.250461, -0.952649,
		61.550705, 55.766407, 56.112408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.997330, 55.076698, 56.248283>,  <61.671402, 55.591084, 56.779259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.997330, 55.076698, 56.248283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.981552, 55.457600, 56.127182>,  <61.972084, 55.686142, 56.054520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.981552, 55.457600, 56.127182>,  <61.997330, 55.076698, 56.248283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.981552, 55.457600, 56.127182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997394, 0.019200, -0.069550,
		-0.060416, -0.304707, -0.950528,
		-0.039443, 0.952252, -0.302753,
		61.969719, 55.743275, 56.036358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.434132, 55.074425, 55.766117>,  <61.997330, 55.076698, 56.248283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.434132, 55.074425, 55.766117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.415894, 55.457485, 55.879837>,  <62.404949, 55.687321, 55.948067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.415894, 55.457485, 55.879837>,  <62.434132, 55.074425, 55.766117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.415894, 55.457485, 55.879837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998734, 0.049759, -0.007444,
		-0.021275, 0.283596, -0.958708,
		-0.045594, 0.957652, 0.284296,
		62.402214, 55.744781, 55.965126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.822121, 55.426910, 55.322521>,  <62.434132, 55.074425, 55.766117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.822121, 55.426910, 55.322521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.796127, 55.633926, 55.663795>,  <62.780533, 55.758137, 55.868561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.796127, 55.633926, 55.663795>,  <62.822121, 55.426910, 55.322521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.796127, 55.633926, 55.663795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960814, -0.198430, 0.193550,
		0.269468, 0.832332, -0.484366,
		-0.064985, 0.517541, 0.853187,
		62.776630, 55.789188, 55.919750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.500389, 55.820293, 55.421299>,  <62.822121, 55.426910, 55.322521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.500389, 55.820293, 55.421299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.317139, 55.776566, 55.774155>,  <63.207188, 55.750328, 55.985867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.317139, 55.776566, 55.774155>,  <63.500389, 55.820293, 55.421299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.317139, 55.776566, 55.774155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863216, -0.291499, 0.412172,
		0.212082, 0.950303, 0.227913,
		-0.458125, -0.109324, 0.882139,
		63.179703, 55.743767, 56.038795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.642563, 56.374249, 55.944645>,  <63.500389, 55.820293, 55.421299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.642563, 56.374249, 55.944645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.600952, 55.985897, 56.030960>,  <63.575985, 55.752884, 56.082748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.600952, 55.985897, 56.030960>,  <63.642563, 56.374249, 55.944645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.600952, 55.985897, 56.030960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929134, -0.017469, 0.369331,
		-0.354808, 0.238918, 0.903897,
		-0.104030, -0.970883, 0.215788,
		63.569744, 55.694633, 56.095695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.732849, 56.231712, 56.727070>,  <63.642563, 56.374249, 55.944645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.732849, 56.231712, 56.727070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.866760, 55.957191, 56.468796>,  <63.947105, 55.792477, 56.313831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.866760, 55.957191, 56.468796>,  <63.732849, 56.231712, 56.727070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.866760, 55.957191, 56.468796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896017, 0.019751, 0.443580,
		-0.291679, -0.727044, 0.621555,
		0.334779, -0.686306, -0.645683,
		63.967194, 55.751301, 56.275089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.247864, 55.818607, 57.149509>,  <63.732849, 56.231712, 56.727070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.247864, 55.818607, 57.149509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.349510, 55.822449, 56.762657>,  <64.410500, 55.824753, 56.530548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.349510, 55.822449, 56.762657>,  <64.247864, 55.818607, 57.149509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.349510, 55.822449, 56.762657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946551, 0.202927, 0.250724,
		0.198662, -0.979147, 0.042485,
		0.254117, 0.009596, -0.967126,
		64.425743, 55.825329, 56.472519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.626717, 55.228302, 56.932056>,  <64.247864, 55.818607, 57.149509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.626717, 55.228302, 56.932056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.732391, 55.545368, 56.712280>,  <64.795799, 55.735607, 56.580414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.732391, 55.545368, 56.712280>,  <64.626717, 55.228302, 56.932056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.732391, 55.545368, 56.712280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918739, -0.033496, 0.393442,
		0.293465, -0.608732, -0.737105,
		0.264191, 0.792668, -0.549436,
		64.811646, 55.783169, 56.547451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.155319, 55.073879, 56.451313>,  <64.626717, 55.228302, 56.932056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.155319, 55.073879, 56.451313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.156219, 55.457176, 56.565689>,  <65.156761, 55.687157, 56.634315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.156219, 55.457176, 56.565689>,  <65.155319, 55.073879, 56.451313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.156219, 55.457176, 56.565689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937662, -0.101393, 0.332429,
		0.347541, 0.267369, -0.898737,
		0.002244, 0.958245, 0.285940,
		65.156891, 55.744648, 56.651470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.582245, 55.441284, 55.960541>,  <65.155319, 55.073879, 56.451313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.582245, 55.441284, 55.960541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.569183, 55.599758, 56.327576>,  <65.561348, 55.694843, 56.547798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.569183, 55.599758, 56.327576>,  <65.582245, 55.441284, 55.960541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.569183, 55.599758, 56.327576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951116, -0.269777, 0.150327,
		0.307102, 0.877643, -0.368009,
		-0.032653, 0.396185, 0.917590,
		65.559387, 55.718613, 56.602852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.203392, 55.951855, 56.153870>,  <65.582245, 55.441284, 55.960541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.203392, 55.951855, 56.153870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.063713, 55.760990, 56.476456>,  <65.979904, 55.646473, 56.670006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.063713, 55.760990, 56.476456>,  <66.203392, 55.951855, 56.153870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.063713, 55.760990, 56.476456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933986, -0.107678, 0.340699,
		-0.075729, 0.872195, 0.483261,
		-0.349192, -0.477160, 0.806463,
		65.958954, 55.617844, 56.718395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.407700, 56.384247, 56.605995>,  <66.203392, 55.951855, 56.153870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.407700, 56.384247, 56.605995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.381989, 56.000107, 56.714508>,  <66.366562, 55.769623, 56.779613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.381989, 56.000107, 56.714508>,  <66.407700, 56.384247, 56.605995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.381989, 56.000107, 56.714508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769157, 0.125525, 0.626610,
		-0.635819, 0.248932, 0.730594,
		-0.064276, -0.960352, 0.271279,
		66.362709, 55.712002, 56.795891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.590416, 56.249104, 57.309589>,  <66.407700, 56.384247, 56.605995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.590416, 56.249104, 57.309589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.677765, 55.904579, 57.126083>,  <66.730171, 55.697865, 57.015980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.677765, 55.904579, 57.126083>,  <66.590416, 56.249104, 57.309589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.677765, 55.904579, 57.126083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821260, -0.091726, 0.563133,
		-0.527111, -0.499737, 0.687326,
		0.218372, -0.861307, -0.458763,
		66.743279, 55.646187, 56.988453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.605461, 55.623734, 57.707630>,  <66.590416, 56.249104, 57.309589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.605461, 55.623734, 57.707630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.904427, 55.647846, 57.442986>,  <67.083809, 55.662315, 57.284199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.904427, 55.647846, 57.442986>,  <66.605461, 55.623734, 57.707630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.904427, 55.647846, 57.442986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663866, -0.029659, 0.747263,
		0.025427, -0.997740, -0.062189,
		0.747419, 0.060286, -0.661612,
		67.128654, 55.665932, 57.244503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.175926, 54.996819, 57.743732>,  <66.605461, 55.623734, 57.707630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.175926, 54.996819, 57.743732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.273201, 55.376350, 57.663155>,  <67.331566, 55.604069, 57.614807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.273201, 55.376350, 57.663155>,  <67.175926, 54.996819, 57.743732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.273201, 55.376350, 57.663155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607257, 0.013016, 0.794399,
		0.756373, -0.315515, -0.573019,
		0.243187, 0.948831, -0.201444,
		67.346161, 55.660999, 57.602722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.964874, 54.999172, 57.715820>,  <67.175926, 54.996819, 57.743732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.964874, 54.999172, 57.715820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.772751, 55.333405, 57.822495>,  <67.657478, 55.533943, 57.886497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.772751, 55.333405, 57.822495>,  <67.964874, 54.999172, 57.715820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.772751, 55.333405, 57.822495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480781, -0.003492, 0.876833,
		0.733593, 0.549362, -0.400053,
		-0.480302, 0.835577, 0.266685,
		67.628662, 55.584076, 57.902500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.419296, 55.535973, 57.715805>,  <67.964874, 54.999172, 57.715820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.419296, 55.535973, 57.715805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.123413, 55.562233, 57.983696>,  <67.945885, 55.577991, 58.144432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.123413, 55.562233, 57.983696>,  <68.419296, 55.535973, 57.715805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.123413, 55.562233, 57.983696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672480, 0.035435, 0.739267,
		0.024805, 0.997213, -0.070363,
		-0.739700, 0.065655, 0.669727,
		67.901505, 55.581928, 58.184612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.357452, 56.182049, 58.011364>,  <68.419296, 55.535973, 57.715805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.357452, 56.182049, 58.011364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.235802, 55.908398, 58.276535>,  <68.162811, 55.744205, 58.435638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.235802, 55.908398, 58.276535>,  <68.357452, 56.182049, 58.011364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.235802, 55.908398, 58.276535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694855, 0.316735, 0.645643,
		-0.651677, 0.656995, 0.379045,
		-0.304127, -0.684132, 0.662925,
		68.144562, 55.703159, 58.475414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.244431, 56.523800, 58.601818>,  <68.357452, 56.182049, 58.011364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.244431, 56.523800, 58.601818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.328369, 56.145668, 58.701675>,  <68.378731, 55.918789, 58.761589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.328369, 56.145668, 58.701675>,  <68.244431, 56.523800, 58.601818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.328369, 56.145668, 58.701675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716324, 0.322432, 0.618804,
		-0.665464, 0.048971, 0.744822,
		0.209851, -0.945325, 0.249646,
		68.391327, 55.862072, 58.776569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.231621, 56.443478, 59.282097>,  <68.244431, 56.523800, 58.601818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.231621, 56.443478, 59.282097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.540894, 56.217789, 59.166267>,  <68.726456, 56.082375, 59.096771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.540894, 56.217789, 59.166267>,  <68.231621, 56.443478, 59.282097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.540894, 56.217789, 59.166267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581948, 0.449726, 0.677556,
		-0.252062, -0.692388, 0.676065,
		0.773176, -0.564221, -0.289575,
		68.772850, 56.048523, 59.079395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.612190, 55.939640, 59.784130>,  <68.231621, 56.443478, 59.282097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.612190, 55.939640, 59.784130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.845848, 56.116997, 59.512192>,  <68.986038, 56.223412, 59.349030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.845848, 56.116997, 59.512192>,  <68.612190, 55.939640, 59.784130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.845848, 56.116997, 59.512192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499390, 0.463954, 0.731680,
		0.639836, -0.766910, 0.049588,
		0.584140, 0.443392, -0.679841,
		69.021088, 56.250015, 59.308239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.158493, 56.052937, 60.204609>,  <68.612190, 55.939640, 59.784130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.158493, 56.052937, 60.204609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.214195, 56.271103, 59.874001>,  <69.247620, 56.402004, 59.675636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.214195, 56.271103, 59.874001>,  <69.158493, 56.052937, 60.204609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.214195, 56.271103, 59.874001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559443, 0.645360, 0.520128,
		0.817087, -0.534819, -0.215259,
		0.139255, 0.545415, -0.826517,
		69.255974, 56.434727, 59.626045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.891151, 56.069931, 59.956341>,  <69.158493, 56.052937, 60.204609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.891151, 56.069931, 59.956341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.688454, 56.406982, 59.883461>,  <69.566833, 56.609211, 59.839733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.688454, 56.406982, 59.883461>,  <69.891151, 56.069931, 59.956341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.688454, 56.406982, 59.883461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747333, 0.534720, 0.394421,
		0.429774, 0.063705, -0.900686,
		-0.506742, 0.842624, -0.182200,
		69.536430, 56.659771, 59.828800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.180962, 56.246216, 59.408951>,  <69.891151, 56.069931, 59.956341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.180962, 56.246216, 59.408951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.027962, 56.540749, 59.632202>,  <69.936165, 56.717468, 59.766151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.027962, 56.540749, 59.632202>,  <70.180962, 56.246216, 59.408951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.027962, 56.540749, 59.632202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923121, 0.330222, 0.196981,
		-0.039262, 0.590564, -0.806035,
		-0.382501, 0.736333, 0.558128,
		69.913208, 56.761650, 59.799641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.459396, 56.846142, 59.138042>,  <70.180962, 56.246216, 59.408951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.459396, 56.846142, 59.138042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.354385, 56.887913, 59.521744>,  <70.291382, 56.912975, 59.751965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.354385, 56.887913, 59.521744>,  <70.459396, 56.846142, 59.138042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.354385, 56.887913, 59.521744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869605, 0.456431, 0.188301,
		-0.418172, 0.883609, -0.210634,
		-0.262525, 0.104426, 0.959258,
		70.275627, 56.919239, 59.809521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.632736, 57.552727, 59.407475>,  <70.459396, 56.846142, 59.138042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.632736, 57.552727, 59.407475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.620338, 57.342934, 59.747818>,  <70.612900, 57.217060, 59.952023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.620338, 57.342934, 59.747818>,  <70.632736, 57.552727, 59.407475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.620338, 57.342934, 59.747818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932149, 0.292071, 0.213990,
		-0.360745, 0.799760, 0.479841,
		-0.030993, -0.524479, 0.850859,
		70.611038, 57.185589, 60.003075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.832199, 57.868607, 60.032211>,  <70.632736, 57.552727, 59.407475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.832199, 57.868607, 60.032211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.904037, 57.484398, 60.117203>,  <70.947136, 57.253872, 60.168198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.904037, 57.484398, 60.117203>,  <70.832199, 57.868607, 60.032211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.904037, 57.484398, 60.117203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951484, 0.224457, 0.210470,
		-0.249853, 0.164371, 0.954230,
		0.179589, -0.960521, 0.212477,
		70.957916, 57.196243, 60.180946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.162254, 57.671329, 60.749363>,  <70.832199, 57.868607, 60.032211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.162254, 57.671329, 60.749363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.258270, 57.418350, 60.454773>,  <71.315880, 57.266563, 60.278019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.258270, 57.418350, 60.454773>,  <71.162254, 57.671329, 60.749363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.258270, 57.418350, 60.454773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966432, 0.084117, 0.242763,
		-0.091586, -0.770022, 0.631409,
		0.240045, -0.632448, -0.736470,
		71.330284, 57.228615, 60.233833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.723335, 57.296265, 61.044926>,  <71.162254, 57.671329, 60.749363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.723335, 57.296265, 61.044926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.720848, 57.334919, 60.646805>,  <71.719360, 57.358112, 60.407932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.720848, 57.334919, 60.646805>,  <71.723335, 57.296265, 61.044926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.720848, 57.334919, 60.646805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987365, 0.158197, 0.009201,
		0.158343, -0.982667, -0.096401,
		-0.006209, 0.096640, -0.995300,
		71.718987, 57.363911, 60.348213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.226158, 56.766804, 60.839256>,  <71.723335, 57.296265, 61.044926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.226158, 56.766804, 60.839256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.161697, 57.065746, 60.581421>,  <72.123024, 57.245110, 60.426720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.161697, 57.065746, 60.581421>,  <72.226158, 56.766804, 60.839256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.161697, 57.065746, 60.581421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972466, 0.231648, 0.025458,
		0.168344, -0.622739, -0.764105,
		-0.161150, 0.747352, -0.644589,
		72.113350, 57.289951, 60.388042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.601219, 56.651726, 60.226696>,  <72.226158, 56.766804, 60.839256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.601219, 56.651726, 60.226696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.530373, 57.036140, 60.311584>,  <72.487862, 57.266788, 60.362518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.530373, 57.036140, 60.311584>,  <72.601219, 56.651726, 60.226696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.530373, 57.036140, 60.311584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980537, 0.153744, 0.122110,
		0.084726, 0.229714, -0.969563,
		-0.177115, 0.961038, 0.212217,
		72.477242, 57.324451, 60.375248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.053673, 57.161350, 59.796055>,  <72.601219, 56.651726, 60.226696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.053673, 57.161350, 59.796055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.953262, 57.296631, 60.158844>,  <72.893013, 57.377800, 60.376518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.953262, 57.296631, 60.158844>,  <73.053673, 57.161350, 59.796055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.953262, 57.296631, 60.158844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960986, 0.199493, 0.191595,
		-0.116137, 0.919686, -0.375086,
		-0.251034, 0.338202, 0.906974,
		72.877953, 57.398090, 60.430935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.235115, 57.905037, 60.064846>,  <73.053673, 57.161350, 59.796055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.235115, 57.905037, 60.064846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.233994, 57.615379, 60.340706>,  <73.233322, 57.441586, 60.506222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.233994, 57.615379, 60.340706>,  <73.235115, 57.905037, 60.064846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.233994, 57.615379, 60.340706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969954, 0.165804, 0.178042,
		-0.243273, 0.669423, 0.701919,
		-0.002804, -0.724142, 0.689645,
		73.233154, 57.398136, 60.547600>
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
