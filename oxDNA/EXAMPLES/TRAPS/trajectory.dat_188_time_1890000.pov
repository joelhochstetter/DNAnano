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
	<36.386395, 53.548603, 50.551243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613819, 53.335587, 50.300438>,  <36.750275, 53.207779, 50.149956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613819, 53.335587, 50.300438>,  <36.386395, 53.548603, 50.551243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613819, 53.335587, 50.300438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778740, 0.102744, 0.618876,
		-0.265154, -0.840146, 0.473125,
		0.568557, -0.532539, -0.627013,
		36.784386, 53.175823, 50.112335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781979, 53.062958, 50.926258>,  <36.386395, 53.548603, 50.551243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781979, 53.062958, 50.926258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982845, 53.144714, 50.590149>,  <37.103367, 53.193768, 50.388485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982845, 53.144714, 50.590149>,  <36.781979, 53.062958, 50.926258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982845, 53.144714, 50.590149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807263, 0.237621, 0.540243,
		0.310089, -0.949610, -0.045675,
		0.502166, 0.204395, -0.840268,
		37.133495, 53.206032, 50.338070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460171, 52.904842, 51.148659>,  <36.781979, 53.062958, 50.926258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460171, 52.904842, 51.148659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486900, 53.124443, 50.815399>,  <37.502937, 53.256203, 50.615444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486900, 53.124443, 50.815399>,  <37.460171, 52.904842, 51.148659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486900, 53.124443, 50.815399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812928, 0.454194, 0.364493,
		0.578517, -0.701646, -0.415946,
		0.066824, 0.549000, -0.833147,
		37.506947, 53.289143, 50.565456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713978, 52.345184, 50.684704>,  <37.460171, 52.904842, 51.148659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713978, 52.345184, 50.684704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476173, 52.252407, 50.992668>,  <37.333492, 52.196739, 51.177444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476173, 52.252407, 50.992668>,  <37.713978, 52.345184, 50.684704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476173, 52.252407, 50.992668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688757, -0.640990, 0.338740,
		0.414935, 0.731665, 0.540829,
		-0.594510, -0.231944, 0.769909,
		37.297821, 52.182823, 51.223640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165260, 52.133587, 51.318378>,  <37.713978, 52.345184, 50.684704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165260, 52.133587, 51.318378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797668, 51.990791, 51.385361>,  <37.577114, 51.905113, 51.425549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797668, 51.990791, 51.385361>,  <38.165260, 52.133587, 51.318378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797668, 51.990791, 51.385361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380577, -0.691937, 0.613501,
		-0.103144, 0.627523, 0.771736,
		-0.918979, -0.356984, 0.167451,
		37.521976, 51.883698, 51.435596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804695, 52.485107, 51.264141>,  <38.165260, 52.133587, 51.318378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804695, 52.485107, 51.264141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664875, 52.242905, 51.550125>,  <38.580982, 52.097584, 51.721718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664875, 52.242905, 51.550125>,  <38.804695, 52.485107, 51.264141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664875, 52.242905, 51.550125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815736, -0.572048, -0.085646,
		0.460853, 0.553284, 0.693895,
		-0.349555, -0.605506, 0.714964,
		38.560009, 52.061253, 51.764614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454327, 52.250580, 51.797993>,  <38.804695, 52.485107, 51.264141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454327, 52.250580, 51.797993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187309, 51.965332, 51.712341>,  <39.027100, 51.794182, 51.660950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187309, 51.965332, 51.712341>,  <39.454327, 52.250580, 51.797993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187309, 51.965332, 51.712341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736981, -0.673786, -0.053583,
		-0.106066, -0.193578, 0.975335,
		-0.667540, -0.713120, -0.214129,
		38.987049, 51.751396, 51.648102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722290, 51.707085, 52.250755>,  <39.454327, 52.250580, 51.797993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722290, 51.707085, 52.250755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492718, 51.577393, 51.949963>,  <39.354973, 51.499577, 51.769485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492718, 51.577393, 51.949963>,  <39.722290, 51.707085, 52.250755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492718, 51.577393, 51.949963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600325, -0.791142, -0.117063,
		-0.556967, -0.518618, 0.648708,
		-0.573932, -0.324235, -0.751980,
		39.320538, 51.480122, 51.724369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219933, 50.979080, 52.297100>,  <39.722290, 51.707085, 52.250755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219933, 50.979080, 52.297100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409634, 51.079823, 51.959663>,  <39.523453, 51.140270, 51.757202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409634, 51.079823, 51.959663>,  <39.219933, 50.979080, 52.297100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409634, 51.079823, 51.959663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598083, -0.795323, 0.098781,
		-0.646053, -0.551388, -0.527814,
		0.474249, 0.251859, -0.843597,
		39.551907, 51.155380, 51.706585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527363, 50.711575, 52.827496>,  <39.219933, 50.979080, 52.297100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527363, 50.711575, 52.827496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393219, 51.065006, 52.958233>,  <39.312733, 51.277065, 53.036674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393219, 51.065006, 52.958233>,  <39.527363, 50.711575, 52.827496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393219, 51.065006, 52.958233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877984, 0.167334, 0.448491,
		0.341585, 0.437365, -0.831884,
		-0.335357, 0.883578, 0.326841,
		39.292610, 51.330078, 53.056286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123138, 51.189205, 52.809036>,  <39.527363, 50.711575, 52.827496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123138, 51.189205, 52.809036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862247, 51.363983, 53.056805>,  <39.705711, 51.468849, 53.205463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862247, 51.363983, 53.056805>,  <40.123138, 51.189205, 52.809036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862247, 51.363983, 53.056805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747375, 0.234186, 0.621762,
		0.126619, 0.868466, -0.479306,
		-0.652226, 0.436948, 0.619417,
		39.666580, 51.495068, 53.242630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576717, 51.667747, 53.165146>,  <40.123138, 51.189205, 52.809036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576717, 51.667747, 53.165146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220707, 51.657738, 53.347237>,  <40.007099, 51.651733, 53.456490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220707, 51.657738, 53.347237>,  <40.576717, 51.667747, 53.165146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220707, 51.657738, 53.347237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408479, 0.399692, 0.820604,
		-0.202480, 0.916308, -0.345516,
		-0.890026, -0.025020, 0.455222,
		39.953697, 51.650230, 53.483803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305290, 51.651279, 53.341587>,  <40.576717, 51.667747, 53.165146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305290, 51.651279, 53.341587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555382, 51.716434, 53.036285>,  <41.705437, 51.755527, 52.853104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555382, 51.716434, 53.036285>,  <41.305290, 51.651279, 53.341587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555382, 51.716434, 53.036285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179079, 0.981826, 0.062843,
		0.759618, 0.097391, 0.643037,
		0.625229, 0.162891, -0.763252,
		41.742950, 51.765301, 52.807308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473217, 52.394066, 53.319775>,  <41.305290, 51.651279, 53.341587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473217, 52.394066, 53.319775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413017, 52.583675, 52.972752>,  <41.376896, 52.697441, 52.764538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413017, 52.583675, 52.972752>,  <41.473217, 52.394066, 53.319775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413017, 52.583675, 52.972752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750079, 0.626400, 0.212140,
		0.643995, -0.618806, -0.449832,
		-0.150501, 0.474027, -0.867553,
		41.367867, 52.725883, 52.712486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012646, 52.773193, 53.321507>,  <41.473217, 52.394066, 53.319775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012646, 52.773193, 53.321507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841488, 52.880981, 52.976418>,  <41.738792, 52.945656, 52.769363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841488, 52.880981, 52.976418>,  <42.012646, 52.773193, 53.321507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841488, 52.880981, 52.976418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752657, 0.634715, -0.175055,
		0.500410, -0.724239, -0.474414,
		-0.427899, 0.269472, -0.862721,
		41.713120, 52.961823, 52.717602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669533, 52.795410, 52.898048>,  <42.012646, 52.773193, 53.321507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669533, 52.795410, 52.898048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347584, 52.998425, 52.775024>,  <42.154415, 53.120232, 52.701210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347584, 52.998425, 52.775024>,  <42.669533, 52.795410, 52.898048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347584, 52.998425, 52.775024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587584, 0.754230, -0.293056,
		0.083233, -0.416588, -0.905277,
		-0.804871, 0.507535, -0.307557,
		42.106121, 53.150684, 52.682758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626091, 52.737232, 52.177101>,  <42.669533, 52.795410, 52.898048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626091, 52.737232, 52.177101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467690, 53.065216, 52.342434>,  <42.372650, 53.262009, 52.441635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467690, 53.065216, 52.342434>,  <42.626091, 52.737232, 52.177101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467690, 53.065216, 52.342434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653307, 0.567899, -0.500680,
		-0.645270, 0.071763, -0.760576,
		-0.396000, 0.819964, 0.413332,
		42.348888, 53.311207, 52.466434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236870, 53.333828, 51.739815>,  <42.626091, 52.737232, 52.177101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236870, 53.333828, 51.739815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430344, 53.455898, 52.067940>,  <42.546429, 53.529140, 52.264816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430344, 53.455898, 52.067940>,  <42.236870, 53.333828, 51.739815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430344, 53.455898, 52.067940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739936, 0.358028, -0.569482,
		-0.467486, 0.882432, -0.052635,
		0.483685, 0.305171, 0.820317,
		42.575451, 53.547451, 52.314034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419247, 54.050114, 51.696194>,  <42.236870, 53.333828, 51.739815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419247, 54.050114, 51.696194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641476, 53.782314, 51.893417>,  <42.774815, 53.621635, 52.011753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641476, 53.782314, 51.893417>,  <42.419247, 54.050114, 51.696194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641476, 53.782314, 51.893417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785684, 0.228657, -0.574819,
		0.272096, 0.706747, 0.653049,
		0.555576, -0.669496, 0.493063,
		42.808147, 53.581467, 52.041336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056786, 54.320492, 52.067886>,  <42.419247, 54.050114, 51.696194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056786, 54.320492, 52.067886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104752, 53.940922, 51.951164>,  <43.133533, 53.713181, 51.881130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104752, 53.940922, 51.951164>,  <43.056786, 54.320492, 52.067886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104752, 53.940922, 51.951164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832664, 0.256200, -0.490951,
		0.540639, -0.184106, 0.820862,
		0.119918, -0.948929, -0.291810,
		43.140728, 53.656242, 51.863621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720730, 54.139278, 52.165161>,  <43.056786, 54.320492, 52.067886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720730, 54.139278, 52.165161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603001, 53.873646, 51.890244>,  <43.532364, 53.714268, 51.725292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603001, 53.873646, 51.890244>,  <43.720730, 54.139278, 52.165161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603001, 53.873646, 51.890244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891441, 0.068493, -0.447931,
		0.344537, -0.744518, 0.571828,
		-0.294327, -0.664079, -0.687292,
		43.514702, 53.674423, 51.684055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258736, 53.675983, 52.144505>,  <43.720730, 54.139278, 52.165161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258736, 53.675983, 52.144505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075199, 53.717068, 51.791481>,  <43.965076, 53.741718, 51.579666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075199, 53.717068, 51.791481>,  <44.258736, 53.675983, 52.144505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075199, 53.717068, 51.791481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882052, 0.172287, -0.438522,
		0.107011, -0.979677, -0.169653,
		-0.458838, 0.102716, -0.882562,
		43.937546, 53.747883, 51.526711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642086, 53.274330, 51.669617>,  <44.258736, 53.675983, 52.144505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642086, 53.274330, 51.669617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449444, 53.576904, 51.492592>,  <44.333858, 53.758450, 51.386375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449444, 53.576904, 51.492592>,  <44.642086, 53.274330, 51.669617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449444, 53.576904, 51.492592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857456, 0.302312, -0.416386,
		-0.181177, -0.580011, -0.794205,
		-0.481606, 0.756435, -0.442562,
		44.304962, 53.803833, 51.359821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560837, 53.388927, 50.943516>,  <44.642086, 53.274330, 51.669617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560837, 53.388927, 50.943516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569786, 53.734100, 51.145447>,  <44.575153, 53.941204, 51.266605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569786, 53.734100, 51.145447>,  <44.560837, 53.388927, 50.943516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569786, 53.734100, 51.145447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810922, 0.279670, -0.513994,
		-0.584726, 0.420873, -0.693514,
		0.022372, 0.862932, 0.504825,
		44.576496, 53.992981, 51.296894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771091, 53.948273, 50.488304>,  <44.560837, 53.388927, 50.943516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771091, 53.948273, 50.488304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860825, 54.074173, 50.857216>,  <44.914665, 54.149715, 51.078564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860825, 54.074173, 50.857216>,  <44.771091, 53.948273, 50.488304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860825, 54.074173, 50.857216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861396, 0.378517, -0.338706,
		-0.455708, 0.870434, -0.186212,
		0.224337, 0.314753, 0.922282,
		44.928127, 54.168598, 51.133900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973125, 54.656326, 50.489330>,  <44.771091, 53.948273, 50.488304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973125, 54.656326, 50.489330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138100, 54.453102, 50.791794>,  <45.237083, 54.331165, 50.973270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138100, 54.453102, 50.791794>,  <44.973125, 54.656326, 50.489330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138100, 54.453102, 50.791794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910911, 0.219324, -0.349482,
		0.011716, 0.832929, 0.553257,
		0.412436, -0.508062, 0.756154,
		45.261829, 54.300682, 51.018639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502945, 54.961567, 50.894619>,  <44.973125, 54.656326, 50.489330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502945, 54.961567, 50.894619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593464, 54.572239, 50.909767>,  <45.647778, 54.338642, 50.918858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593464, 54.572239, 50.909767>,  <45.502945, 54.961567, 50.894619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593464, 54.572239, 50.909767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848271, 0.177816, -0.498818,
		0.478775, 0.145008, 0.865879,
		0.226300, -0.973321, 0.037872,
		45.661354, 54.280243, 50.921127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.056236, 54.948742, 51.249115>,  <45.502945, 54.961567, 50.894619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.056236, 54.948742, 51.249115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023563, 54.666218, 50.967846>,  <46.003960, 54.496704, 50.799084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023563, 54.666218, 50.967846>,  <46.056236, 54.948742, 51.249115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023563, 54.666218, 50.967846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835653, 0.335958, -0.434529,
		0.543149, -0.623107, 0.562785,
		-0.081686, -0.706308, -0.703176,
		45.999058, 54.454327, 50.756893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650120, 54.409382, 51.152523>,  <46.056236, 54.948742, 51.249115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650120, 54.409382, 51.152523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472729, 54.471119, 50.799366>,  <46.366295, 54.508163, 50.587471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472729, 54.471119, 50.799366>,  <46.650120, 54.409382, 51.152523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472729, 54.471119, 50.799366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884779, 0.232712, -0.403746,
		0.143144, -0.960220, -0.239765,
		-0.443481, 0.154345, -0.882894,
		46.339684, 54.517422, 50.534496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.099899, 54.187485, 50.757744>,  <46.650120, 54.409382, 51.152523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.099899, 54.187485, 50.757744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.897541, 54.448627, 50.532234>,  <46.776127, 54.605312, 50.396927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.897541, 54.448627, 50.532234>,  <47.099899, 54.187485, 50.757744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.897541, 54.448627, 50.532234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837113, 0.213894, -0.503479,
		-0.208114, -0.726651, -0.654726,
		-0.505896, 0.652861, -0.563775,
		46.745773, 54.644485, 50.363102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.844364, 53.909107, 50.573925>,  <47.099899, 54.187485, 50.757744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.844364, 53.909107, 50.573925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.090725, 53.845352, 50.265312>,  <48.238541, 53.807098, 50.080143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.090725, 53.845352, 50.265312>,  <47.844364, 53.909107, 50.573925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.090725, 53.845352, 50.265312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510200, -0.826912, -0.236457,
		-0.600305, 0.539271, -0.590610,
		0.615897, -0.159383, -0.771536,
		48.275494, 53.797539, 50.033852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.150043, 53.962883, 51.364845>,  <47.844364, 53.909107, 50.573925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.150043, 53.962883, 51.364845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.480946, 53.781193, 51.497101>,  <48.679485, 53.672176, 51.576454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.480946, 53.781193, 51.497101>,  <48.150043, 53.962883, 51.364845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.480946, 53.781193, 51.497101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561730, 0.679505, -0.471945,
		-0.010301, 0.576150, 0.817279,
		0.827256, -0.454229, 0.330641,
		48.729122, 53.644924, 51.596294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.624100, 54.477894, 51.489441>,  <48.150043, 53.962883, 51.364845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.624100, 54.477894, 51.489441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.871677, 54.164024, 51.475578>,  <49.020222, 53.975704, 51.467262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.871677, 54.164024, 51.475578>,  <48.624100, 54.477894, 51.489441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.871677, 54.164024, 51.475578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678427, 0.556326, -0.479832,
		0.395791, 0.273477, 0.876676,
		0.618940, -0.784673, -0.034654,
		49.057358, 53.928623, 51.465183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.968575, 54.485229, 52.166916>,  <48.624100, 54.477894, 51.489441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.968575, 54.485229, 52.166916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.175144, 54.826424, 52.197189>,  <49.299088, 55.031139, 52.215355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.175144, 54.826424, 52.197189>,  <48.968575, 54.485229, 52.166916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.175144, 54.826424, 52.197189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796101, 0.510784, -0.324535,
		-0.315480, 0.107348, 0.942841,
		0.516426, 0.852981, 0.075682,
		49.330070, 55.082317, 52.219894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.866215, 54.798454, 52.875771>,  <48.968575, 54.485229, 52.166916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.866215, 54.798454, 52.875771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.253826, 54.896194, 52.890030>,  <49.486393, 54.954838, 52.898586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.253826, 54.896194, 52.890030>,  <48.866215, 54.798454, 52.875771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.253826, 54.896194, 52.890030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145504, 0.448363, 0.881929,
		0.199517, -0.859804, 0.470032,
		0.969031, 0.244351, 0.035649,
		49.544537, 54.969501, 52.900726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.139801, 54.653160, 53.503017>,  <48.866215, 54.798454, 52.875771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.139801, 54.653160, 53.503017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.412243, 54.917469, 53.376858>,  <49.575710, 55.076054, 53.301163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.412243, 54.917469, 53.376858>,  <49.139801, 54.653160, 53.503017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.412243, 54.917469, 53.376858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062375, 0.481563, 0.874189,
		0.729521, -0.575744, 0.369213,
		0.681109, 0.660769, -0.315398,
		49.616577, 55.115700, 53.282238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.645638, 54.725132, 54.007397>,  <49.139801, 54.653160, 53.503017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.645638, 54.725132, 54.007397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.643372, 55.053886, 53.779549>,  <49.642014, 55.251141, 53.642838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.643372, 55.053886, 53.779549>,  <49.645638, 54.725132, 54.007397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.643372, 55.053886, 53.779549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057787, 0.568412, 0.820712,
		0.998313, 0.037566, 0.044275,
		-0.005664, 0.821886, -0.569624,
		49.641674, 55.300453, 53.608662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.138847, 55.180866, 54.368359>,  <49.645638, 54.725132, 54.007397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.138847, 55.180866, 54.368359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.873146, 55.371971, 54.138397>,  <49.713726, 55.486633, 54.000420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.873146, 55.371971, 54.138397>,  <50.138847, 55.180866, 54.368359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.873146, 55.371971, 54.138397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177117, 0.646594, 0.741988,
		0.726223, 0.594691, -0.344881,
		-0.664252, 0.477764, -0.574901,
		49.673870, 55.515301, 53.965927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.341557, 55.942310, 54.189083>,  <50.138847, 55.180866, 54.368359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.341557, 55.942310, 54.189083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.959190, 55.832279, 54.230194>,  <49.729771, 55.766258, 54.254860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.959190, 55.832279, 54.230194>,  <50.341557, 55.942310, 54.189083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.959190, 55.832279, 54.230194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095127, 0.621202, 0.777856,
		-0.277818, 0.733784, -0.619982,
		-0.955912, -0.275080, 0.102778,
		49.672417, 55.749756, 54.261028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.937252, 56.149601, 54.690891>,  <50.341557, 55.942310, 54.189083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.937252, 56.149601, 54.690891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.831367, 56.341469, 54.356266>,  <50.767838, 56.456589, 54.155491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.831367, 56.341469, 54.356266>,  <50.937252, 56.149601, 54.690891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.831367, 56.341469, 54.356266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328212, 0.770903, 0.545882,
		0.906754, 0.419073, -0.046635,
		-0.264715, 0.479674, -0.836564,
		50.751953, 56.485371, 54.105297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.371731, 56.791771, 54.463383>,  <50.937252, 56.149601, 54.690891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.371731, 56.791771, 54.463383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.981644, 56.809456, 54.376671>,  <50.747589, 56.820068, 54.324646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.981644, 56.809456, 54.376671>,  <51.371731, 56.791771, 54.463383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.981644, 56.809456, 54.376671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080150, 0.842656, 0.532454,
		0.206211, 0.536634, -0.818231,
		-0.975220, 0.044217, -0.216776,
		50.689079, 56.822720, 54.311638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.297050, 56.687454, 55.193687>,  <51.371731, 56.791771, 54.463383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.297050, 56.687454, 55.193687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.073387, 56.847870, 55.483932>,  <50.939190, 56.944118, 55.658077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.073387, 56.847870, 55.483932>,  <51.297050, 56.687454, 55.193687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.073387, 56.847870, 55.483932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536280, 0.842416, -0.052334,
		-0.632254, 0.359867, -0.686113,
		-0.559159, 0.401037, 0.725610,
		50.905640, 56.968182, 55.701614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.785114, 57.273563, 55.135895>,  <51.297050, 56.687454, 55.193687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.785114, 57.273563, 55.135895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.958336, 57.300045, 55.495468>,  <51.062267, 57.315933, 55.711212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.958336, 57.300045, 55.495468>,  <50.785114, 57.273563, 55.135895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.958336, 57.300045, 55.495468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311181, 0.925001, -0.218035,
		-0.845951, 0.374151, 0.379971,
		0.433052, 0.066207, 0.898934,
		51.088253, 57.319908, 55.765148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.522087, 57.883556, 55.613007>,  <50.785114, 57.273563, 55.135895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.522087, 57.883556, 55.613007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.895390, 57.753025, 55.673058>,  <51.119373, 57.674706, 55.709087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.895390, 57.753025, 55.673058>,  <50.522087, 57.883556, 55.613007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.895390, 57.753025, 55.673058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357655, 0.882985, -0.304009,
		-0.033353, 0.337413, 0.940766,
		0.933258, -0.326330, 0.150128,
		51.175365, 57.655125, 55.718098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.815353, 58.105366, 55.211460>,  <50.522087, 57.883556, 55.613007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.815353, 58.105366, 55.211460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.828968, 58.363358, 55.516838>,  <49.837135, 58.518150, 55.700066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.828968, 58.363358, 55.516838>,  <49.815353, 58.105366, 55.211460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.828968, 58.363358, 55.516838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980846, 0.125030, -0.149359,
		-0.191786, 0.753905, -0.628367,
		0.034038, 0.644976, 0.763444,
		49.839180, 58.556850, 55.745872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.332333, 58.583603, 55.015533>,  <49.815353, 58.105366, 55.211460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.332333, 58.583603, 55.015533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.261780, 58.629951, 55.406525>,  <50.219448, 58.657761, 55.641121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.261780, 58.629951, 55.406525>,  <50.332333, 58.583603, 55.015533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.261780, 58.629951, 55.406525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930698, 0.342924, 0.127295,
		-0.320451, 0.932189, -0.168327,
		-0.176386, 0.115870, 0.977477,
		50.208862, 58.664711, 55.699768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.844189, 58.761822, 54.705036>,  <50.332333, 58.583603, 55.015533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.844189, 58.761822, 54.705036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.199741, 58.769562, 54.888130>,  <51.413074, 58.774208, 54.997986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.199741, 58.769562, 54.888130>,  <50.844189, 58.761822, 54.705036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.199741, 58.769562, 54.888130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243664, 0.866050, 0.436562,
		-0.387969, -0.499583, 0.774530,
		0.888880, 0.019352, 0.457731,
		51.466404, 58.775368, 55.025448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.859108, 58.644730, 55.547604>,  <50.844189, 58.761822, 54.705036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.859108, 58.644730, 55.547604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.109547, 58.910408, 55.384216>,  <51.259808, 59.069817, 55.286182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.109547, 58.910408, 55.384216>,  <50.859108, 58.644730, 55.547604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.109547, 58.910408, 55.384216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274635, 0.678122, 0.681708,
		0.729781, -0.314633, 0.606980,
		0.626095, 0.664196, -0.408472,
		51.297375, 59.109669, 55.261673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.347599, 58.851166, 56.079391>,  <50.859108, 58.644730, 55.547604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.347599, 58.851166, 56.079391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.325539, 59.132278, 55.795685>,  <51.312302, 59.300945, 55.625462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.325539, 59.132278, 55.795685>,  <51.347599, 58.851166, 56.079391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.325539, 59.132278, 55.795685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402465, 0.634435, 0.659935,
		0.913772, 0.321849, 0.247857,
		-0.055150, 0.702784, -0.709263,
		51.308994, 59.343113, 55.582905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.915501, 59.072765, 56.564552>,  <51.347599, 58.851166, 56.079391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.915501, 59.072765, 56.564552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.950634, 58.818211, 56.258011>,  <51.971714, 58.665478, 56.074085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.950634, 58.818211, 56.258011>,  <51.915501, 59.072765, 56.564552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.950634, 58.818211, 56.258011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871055, 0.422302, -0.250849,
		0.483269, -0.645501, 0.591422,
		0.087836, -0.636388, -0.766352,
		51.976986, 58.627293, 56.028107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.630882, 58.712971, 56.608013>,  <51.915501, 59.072765, 56.564552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.630882, 58.712971, 56.608013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.482330, 58.708565, 56.236649>,  <52.393200, 58.705921, 56.013828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.482330, 58.708565, 56.236649>,  <52.630882, 58.712971, 56.608013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.482330, 58.708565, 56.236649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850296, 0.397584, -0.344851,
		0.372921, -0.917499, -0.138292,
		-0.371384, -0.011013, -0.928414,
		52.370914, 58.705261, 55.958126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.103828, 58.274899, 56.231380>,  <52.630882, 58.712971, 56.608013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.103828, 58.274899, 56.231380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.920776, 58.548336, 56.003952>,  <52.810947, 58.712399, 55.867493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.920776, 58.548336, 56.003952>,  <53.103828, 58.274899, 56.231380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.920776, 58.548336, 56.003952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859101, 0.504769, -0.084578,
		0.229181, -0.527167, -0.818273,
		-0.457625, 0.683596, -0.568574,
		52.783489, 58.753414, 55.833382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.567944, 58.309422, 55.680851>,  <53.103828, 58.274899, 56.231380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.567944, 58.309422, 55.680851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.364815, 58.649437, 55.736778>,  <53.242935, 58.853447, 55.770336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.364815, 58.649437, 55.736778>,  <53.567944, 58.309422, 55.680851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.364815, 58.649437, 55.736778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840583, 0.524463, -0.135498,
		-0.188509, 0.048722, -0.980862,
		-0.507824, 0.850038, 0.139821,
		53.212467, 58.904449, 55.778725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.565998, 58.688683, 55.014153>,  <53.567944, 58.309422, 55.680851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.565998, 58.688683, 55.014153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.565311, 58.921600, 55.339340>,  <53.564899, 59.061352, 55.534454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.565311, 58.921600, 55.339340>,  <53.565998, 58.688683, 55.014153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.565311, 58.921600, 55.339340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811207, 0.476204, -0.339371,
		-0.584756, 0.658907, -0.473182,
		-0.001718, 0.582298, 0.812974,
		53.564796, 59.096291, 55.583233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.649540, 59.325939, 54.845043>,  <53.565998, 58.688683, 55.014153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.649540, 59.325939, 54.845043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.795834, 59.318661, 55.217262>,  <53.883610, 59.314293, 55.440594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.795834, 59.318661, 55.217262>,  <53.649540, 59.325939, 54.845043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.795834, 59.318661, 55.217262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902348, 0.251919, -0.349722,
		-0.228058, 0.967577, 0.108552,
		0.365730, -0.018194, 0.930543,
		53.905552, 59.313202, 55.496426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.136192, 59.725578, 54.828197>,  <53.649540, 59.325939, 54.845043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.136192, 59.725578, 54.828197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.244080, 59.497444, 55.138542>,  <54.308811, 59.360561, 55.324749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.244080, 59.497444, 55.138542>,  <54.136192, 59.725578, 54.828197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.244080, 59.497444, 55.138542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933725, 0.351864, -0.065943,
		-0.235389, 0.742231, 0.627443,
		0.269719, -0.570337, 0.775865,
		54.324997, 59.326344, 55.371304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.406528, 60.116901, 55.293045>,  <54.136192, 59.725578, 54.828197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.406528, 60.116901, 55.293045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.579910, 59.758049, 55.327164>,  <54.683941, 59.542740, 55.347633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.579910, 59.758049, 55.327164>,  <54.406528, 60.116901, 55.293045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.579910, 59.758049, 55.327164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887259, 0.408280, -0.214660,
		0.157754, 0.168723, 0.972957,
		0.433457, -0.897129, 0.085293,
		54.709946, 59.488911, 55.352753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.085110, 60.252781, 55.613441>,  <54.406528, 60.116901, 55.293045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.085110, 60.252781, 55.613441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.109604, 59.903160, 55.420654>,  <55.124302, 59.693390, 55.304981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.109604, 59.903160, 55.420654>,  <55.085110, 60.252781, 55.613441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.109604, 59.903160, 55.420654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904380, 0.252892, -0.343719,
		0.422312, -0.414832, 0.805957,
		0.061234, -0.874048, -0.481965,
		55.127975, 59.640945, 55.276066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.740044, 59.794529, 55.854568>,  <55.085110, 60.252781, 55.613441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.740044, 59.794529, 55.854568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.618271, 59.713440, 55.482285>,  <55.545208, 59.664787, 55.258915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.618271, 59.713440, 55.482285>,  <55.740044, 59.794529, 55.854568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.618271, 59.713440, 55.482285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949151, 0.017738, -0.314323,
		0.080230, -0.979075, 0.187017,
		-0.304428, -0.202725, -0.930713,
		55.526943, 59.652622, 55.203072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.947701, 59.391376, 55.331543>,  <55.740044, 59.794529, 55.854568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.947701, 59.391376, 55.331543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.010071, 59.539757, 54.965355>,  <56.047493, 59.628784, 54.745644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.010071, 59.539757, 54.965355>,  <55.947701, 59.391376, 55.331543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.010071, 59.539757, 54.965355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952413, -0.302208, 0.039759,
		-0.261913, -0.878102, -0.400422,
		0.155924, 0.370953, -0.915468,
		56.056847, 59.651043, 54.690716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.194572, 58.933620, 54.723076>,  <55.947701, 59.391376, 55.331543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.194572, 58.933620, 54.723076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.331078, 59.306007, 54.774994>,  <56.412979, 59.529438, 54.806145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.331078, 59.306007, 54.774994>,  <56.194572, 58.933620, 54.723076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.331078, 59.306007, 54.774994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917237, -0.360003, 0.170512,
		0.205466, 0.060863, -0.976770,
		0.341262, 0.930964, 0.129795,
		56.433456, 59.585297, 54.813931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.531799, 59.158733, 54.204079>,  <56.194572, 58.933620, 54.723076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.531799, 59.158733, 54.204079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.679405, 59.305241, 54.545765>,  <56.767967, 59.393147, 54.750774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.679405, 59.305241, 54.545765>,  <56.531799, 59.158733, 54.204079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.679405, 59.305241, 54.545765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815718, -0.568130, -0.108778,
		0.445461, 0.736936, -0.508419,
		0.369011, 0.366270, 0.854212,
		56.790108, 59.415123, 54.802029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.215153, 59.436604, 54.095898>,  <56.531799, 59.158733, 54.204079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.215153, 59.436604, 54.095898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.205856, 59.335693, 54.482849>,  <57.200279, 59.275146, 54.715019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.205856, 59.335693, 54.482849>,  <57.215153, 59.436604, 54.095898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.205856, 59.335693, 54.482849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809271, -0.572881, -0.129956,
		0.586976, 0.779849, 0.217474,
		-0.023241, -0.252276, 0.967376,
		57.198883, 59.260010, 54.773064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.871929, 59.506706, 54.470646>,  <57.215153, 59.436604, 54.095898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.871929, 59.506706, 54.470646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.698929, 59.174210, 54.610352>,  <57.595127, 58.974712, 54.694176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.698929, 59.174210, 54.610352>,  <57.871929, 59.506706, 54.470646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.698929, 59.174210, 54.610352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844940, -0.508856, -0.164746,
		0.314667, 0.223852, 0.922429,
		-0.432505, -0.831237, 0.349262,
		57.569176, 58.924839, 54.715130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.258907, 59.195198, 55.070496>,  <57.871929, 59.506706, 54.470646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.258907, 59.195198, 55.070496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.081978, 58.948822, 54.809738>,  <57.975822, 58.800995, 54.653282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.081978, 58.948822, 54.809738>,  <58.258907, 59.195198, 55.070496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.081978, 58.948822, 54.809738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872909, -0.462514, -0.155276,
		-0.205870, -0.637728, 0.742240,
		-0.442321, -0.615941, -0.651897,
		57.949280, 58.764038, 54.614170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.603851, 58.627357, 55.267746>,  <58.258907, 59.195198, 55.070496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.603851, 58.627357, 55.267746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.422050, 58.621956, 54.911491>,  <58.312969, 58.618713, 54.697739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.422050, 58.621956, 54.911491>,  <58.603851, 58.627357, 55.267746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.422050, 58.621956, 54.911491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844128, -0.325755, -0.425830,
		-0.284379, -0.945358, 0.159461,
		-0.454507, -0.013508, -0.890641,
		58.285698, 58.617905, 54.644299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.585987, 57.951427, 54.860466>,  <58.603851, 58.627357, 55.267746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.585987, 57.951427, 54.860466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.612579, 58.268867, 54.618549>,  <58.628536, 58.459332, 54.473400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.612579, 58.268867, 54.618549>,  <58.585987, 57.951427, 54.860466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.612579, 58.268867, 54.618549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825634, -0.384109, -0.413265,
		-0.560275, -0.471860, -0.680765,
		0.066485, 0.793605, -0.604790,
		58.632526, 58.506950, 54.437111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.229599, 57.737240, 54.546307>,  <58.585987, 57.951427, 54.860466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.229599, 57.737240, 54.546307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.377914, 57.966900, 54.254318>,  <59.466904, 58.104698, 54.079124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.377914, 57.966900, 54.254318>,  <59.229599, 57.737240, 54.546307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.377914, 57.966900, 54.254318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928709, -0.232353, 0.288983,
		-0.003692, -0.785087, -0.619374,
		0.370791, 0.574152, -0.729975,
		59.489151, 58.139145, 54.035324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.748260, 57.422066, 54.052876>,  <59.229599, 57.737240, 54.546307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.748260, 57.422066, 54.052876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.812721, 57.808453, 54.133816>,  <59.851398, 58.040283, 54.182381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.812721, 57.808453, 54.133816>,  <59.748260, 57.422066, 54.052876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.812721, 57.808453, 54.133816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901714, -0.227452, 0.367665,
		0.401176, 0.123211, -0.907677,
		0.161153, 0.965963, 0.202349,
		59.861069, 58.098240, 54.194519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.498161, 57.613358, 53.840500>,  <59.748260, 57.422066, 54.052876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.498161, 57.613358, 53.840500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.365372, 57.865181, 54.121483>,  <60.285698, 58.016277, 54.290073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.365372, 57.865181, 54.121483>,  <60.498161, 57.613358, 53.840500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.365372, 57.865181, 54.121483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884831, -0.050244, 0.463195,
		0.326904, 0.775325, -0.540375,
		-0.331976, 0.629561, 0.702456,
		60.265778, 58.054050, 54.332218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.041103, 57.977322, 54.068050>,  <60.498161, 57.613358, 53.840500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.041103, 57.977322, 54.068050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.793709, 58.104019, 54.355701>,  <60.645271, 58.180038, 54.528290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.793709, 58.104019, 54.355701>,  <61.041103, 57.977322, 54.068050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.793709, 58.104019, 54.355701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703941, -0.183342, 0.686187,
		0.349194, 0.930622, -0.109576,
		-0.618491, 0.316747, 0.719124,
		60.608162, 58.199043, 54.571438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.355709, 58.425011, 54.441872>,  <61.041103, 57.977322, 54.068050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.355709, 58.425011, 54.441872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.087692, 58.272125, 54.696415>,  <60.926880, 58.180393, 54.849140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.087692, 58.272125, 54.696415>,  <61.355709, 58.425011, 54.441872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.087692, 58.272125, 54.696415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675764, 0.040719, 0.735992,
		-0.307218, 0.923177, 0.231003,
		-0.670044, -0.382214, 0.636359,
		60.886681, 58.157459, 54.887321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.359245, 58.745266, 54.989594>,  <61.355709, 58.425011, 54.441872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.359245, 58.745266, 54.989594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.212372, 58.398521, 55.124489>,  <61.124249, 58.190475, 55.205425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.212372, 58.398521, 55.124489>,  <61.359245, 58.745266, 54.989594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.212372, 58.398521, 55.124489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635352, 0.031059, 0.771598,
		-0.679342, 0.497582, 0.539358,
		-0.367182, -0.866861, 0.337239,
		61.102219, 58.138462, 55.225662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.157402, 58.626690, 54.939884>,  <61.359245, 58.745266, 54.989594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.157402, 58.626690, 54.939884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.262321, 58.967281, 55.121513>,  <62.325275, 59.171635, 55.230492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.262321, 58.967281, 55.121513>,  <62.157402, 58.626690, 54.939884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.262321, 58.967281, 55.121513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382631, 0.340208, -0.858983,
		-0.885884, 0.399057, -0.236564,
		0.262303, 0.851476, 0.454076,
		62.341011, 59.222725, 55.257736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.915817, 58.753967, 54.854355>,  <62.157402, 58.626690, 54.939884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.915817, 58.753967, 54.854355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.221245, 58.496246, 54.871498>,  <63.404499, 58.341614, 54.881783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.221245, 58.496246, 54.871498>,  <62.915817, 58.753967, 54.854355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.221245, 58.496246, 54.871498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035819, -0.108526, -0.993448,
		0.644736, 0.757028, -0.105945,
		0.763566, -0.644306, 0.042854,
		63.450314, 58.302956, 54.884354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.438118, 58.641373, 55.388577>,  <62.915817, 58.753967, 54.854355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.438118, 58.641373, 55.388577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.821442, 58.537270, 55.435760>,  <64.051437, 58.474808, 55.464073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.821442, 58.537270, 55.435760>,  <63.438118, 58.641373, 55.388577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.821442, 58.537270, 55.435760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117898, 0.015912, 0.992898,
		-0.260287, -0.965408, -0.015435,
		0.958306, -0.260258, 0.117962,
		64.108932, 58.459194, 55.471149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.526611, 58.024395, 55.857826>,  <63.438118, 58.641373, 55.388577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.526611, 58.024395, 55.857826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.866005, 58.235447, 55.841362>,  <64.069641, 58.362076, 55.831486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.866005, 58.235447, 55.841362>,  <63.526611, 58.024395, 55.857826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.866005, 58.235447, 55.841362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158423, -0.179020, 0.971007,
		0.504961, -0.830399, -0.235483,
		0.848479, 0.527626, -0.041156,
		64.120552, 58.393734, 55.829014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.025307, 57.703564, 56.262363>,  <63.526611, 58.024395, 55.857826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.025307, 57.703564, 56.262363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.133629, 58.087234, 56.229774>,  <64.198624, 58.317436, 56.210220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.133629, 58.087234, 56.229774>,  <64.025307, 57.703564, 56.262363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.133629, 58.087234, 56.229774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361117, -0.022773, 0.932243,
		0.892331, -0.281885, -0.352542,
		0.270814, 0.959178, -0.081473,
		64.214874, 58.374989, 56.205334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.135910, 57.923370, 56.919380>,  <64.025307, 57.703564, 56.262363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.135910, 57.923370, 56.919380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.278847, 58.241463, 56.723457>,  <64.364609, 58.432320, 56.605904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.278847, 58.241463, 56.723457>,  <64.135910, 57.923370, 56.919380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.278847, 58.241463, 56.723457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333922, 0.380991, 0.862173,
		0.872243, -0.471643, -0.129405,
		0.357335, 0.795235, -0.489809,
		64.386047, 58.480034, 56.576515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.958618, 58.056358, 57.025795>,  <64.135910, 57.923370, 56.919380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.958618, 58.056358, 57.025795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.741043, 58.391510, 57.007515>,  <64.610497, 58.592602, 56.996548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.741043, 58.391510, 57.007515>,  <64.958618, 58.056358, 57.025795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.741043, 58.391510, 57.007515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170452, 0.163656, 0.971680,
		0.821625, 0.520752, -0.231837,
		-0.543946, 0.837875, -0.045700,
		64.577858, 58.642872, 56.993805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.321198, 58.763531, 57.201797>,  <64.958618, 58.056358, 57.025795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.321198, 58.763531, 57.201797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.945137, 58.769684, 57.337952>,  <64.719498, 58.773376, 57.419643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.945137, 58.769684, 57.337952>,  <65.321198, 58.763531, 57.201797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.945137, 58.769684, 57.337952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330350, 0.285930, 0.899507,
		-0.083491, 0.958127, -0.273901,
		-0.940159, 0.015382, 0.340389,
		64.663086, 58.774300, 57.440067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.215240, 59.399017, 57.513832>,  <65.321198, 58.763531, 57.201797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.215240, 59.399017, 57.513832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.981644, 59.124470, 57.687195>,  <64.841484, 58.959740, 57.791214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.981644, 59.124470, 57.687195>,  <65.215240, 59.399017, 57.513832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.981644, 59.124470, 57.687195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446994, 0.173766, 0.877497,
		-0.677599, 0.706188, 0.205324,
		-0.583999, -0.686371, 0.433406,
		64.806442, 58.918560, 57.817215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.866966, 59.707314, 58.140636>,  <65.215240, 59.399017, 57.513832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.866966, 59.707314, 58.140636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.948883, 59.315926, 58.150917>,  <64.998032, 59.081093, 58.157085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.948883, 59.315926, 58.150917>,  <64.866966, 59.707314, 58.140636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.948883, 59.315926, 58.150917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530673, 0.133049, 0.837069,
		-0.822466, -0.157780, 0.546494,
		0.204783, -0.978470, 0.025698,
		65.010315, 59.022385, 58.158627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.826065, 59.549194, 58.902885>,  <64.866966, 59.707314, 58.140636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.826065, 59.549194, 58.902885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.031822, 59.264442, 58.711624>,  <65.155273, 59.093590, 58.596867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.031822, 59.264442, 58.711624>,  <64.826065, 59.549194, 58.902885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.031822, 59.264442, 58.711624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611559, -0.086349, 0.786473,
		-0.601162, -0.696973, 0.390939,
		0.514393, -0.711880, -0.478150,
		65.186142, 59.050880, 58.568180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.756050, 58.852264, 59.177189>,  <64.826065, 59.549194, 58.902885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.756050, 58.852264, 59.177189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.099396, 58.935249, 58.989494>,  <65.305405, 58.985039, 58.876877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.099396, 58.935249, 58.989494>,  <64.756050, 58.852264, 59.177189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.099396, 58.935249, 58.989494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484775, -0.028527, 0.874173,
		0.167971, -0.977827, -0.125059,
		0.858358, 0.207461, -0.469235,
		65.356903, 58.997486, 58.848724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.390747, 58.555508, 59.468639>,  <64.756050, 58.852264, 59.177189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.390747, 58.555508, 59.468639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.722557, 58.457485, 59.669373>,  <65.921646, 58.398670, 59.789810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.722557, 58.457485, 59.669373>,  <65.390747, 58.555508, 59.468639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.722557, 58.457485, 59.669373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527701, 0.049804, -0.847969,
		0.182806, 0.968229, 0.170630,
		0.829526, -0.245055, 0.501830,
		65.971413, 58.383968, 59.819923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.886429, 58.866486, 59.210789>,  <65.390747, 58.555508, 59.468639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.886429, 58.866486, 59.210789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.087372, 58.572060, 59.392265>,  <66.207939, 58.395401, 59.501152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.087372, 58.572060, 59.392265>,  <65.886429, 58.866486, 59.210789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.087372, 58.572060, 59.392265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619861, -0.059247, -0.782472,
		0.602834, 0.674308, 0.426497,
		0.502358, -0.736070, 0.453693,
		66.238083, 58.351238, 59.528374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.627319, 59.084240, 59.225319>,  <65.886429, 58.866486, 59.210789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.627319, 59.084240, 59.225319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.555351, 58.690857, 59.216988>,  <66.512169, 58.454826, 59.211987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.555351, 58.690857, 59.216988>,  <66.627319, 59.084240, 59.225319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.555351, 58.690857, 59.216988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592619, -0.091471, -0.800272,
		0.785130, -0.156334, 0.599275,
		-0.179926, -0.983459, -0.020830,
		66.501373, 58.395821, 59.210739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.240837, 58.700855, 59.036652>,  <66.627319, 59.084240, 59.225319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.240837, 58.700855, 59.036652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.933281, 58.462822, 58.943115>,  <66.748749, 58.320004, 58.886993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.933281, 58.462822, 58.943115>,  <67.240837, 58.700855, 59.036652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.933281, 58.462822, 58.943115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516205, -0.361953, -0.776223,
		0.377275, -0.717544, 0.585486,
		-0.768893, -0.595080, -0.233844,
		66.702614, 58.284298, 58.872963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.571243, 58.003616, 58.865417>,  <67.240837, 58.700855, 59.036652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.571243, 58.003616, 58.865417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.219185, 58.052200, 58.681854>,  <67.007950, 58.081352, 58.571716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.219185, 58.052200, 58.681854>,  <67.571243, 58.003616, 58.865417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.219185, 58.052200, 58.681854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393636, -0.353586, -0.848544,
		-0.265332, -0.927482, 0.263393,
		-0.880142, 0.121465, -0.458908,
		66.955139, 58.088638, 58.544182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.182007, 58.066788, 58.561913>,  <67.571243, 58.003616, 58.865417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.182007, 58.066788, 58.561913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.885315, 58.051456, 58.294075>,  <67.707298, 58.042255, 58.133373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.885315, 58.051456, 58.294075>,  <68.182007, 58.066788, 58.561913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.885315, 58.051456, 58.294075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212320, -0.933600, 0.288638,
		-0.636196, 0.356262, 0.684347,
		-0.741737, -0.038330, -0.669594,
		67.662796, 58.039959, 58.093197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.742928, 58.291996, 58.971497>,  <68.182007, 58.066788, 58.561913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.742928, 58.291996, 58.971497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.119705, 58.422180, 58.938461>,  <69.345772, 58.500290, 58.918640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.119705, 58.422180, 58.938461>,  <68.742928, 58.291996, 58.971497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.119705, 58.422180, 58.938461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078537, 0.452699, 0.888198,
		0.326464, -0.830144, 0.451976,
		0.941941, 0.325461, -0.082593,
		69.402290, 58.519817, 58.913685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.064728, 58.153618, 59.648167>,  <68.742928, 58.291996, 58.971497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.064728, 58.153618, 59.648167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.230743, 58.488220, 59.505058>,  <69.330353, 58.688980, 59.419193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.230743, 58.488220, 59.505058>,  <69.064728, 58.153618, 59.648167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.230743, 58.488220, 59.505058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018415, 0.400887, 0.915942,
		0.909616, -0.373565, 0.181789,
		0.415041, 0.836504, -0.357774,
		69.355255, 58.739170, 59.397728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.730270, 58.239811, 59.852158>,  <69.064728, 58.153618, 59.648167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.730270, 58.239811, 59.852158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.544647, 58.590233, 59.799744>,  <69.433273, 58.800488, 59.768295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.544647, 58.590233, 59.799744>,  <69.730270, 58.239811, 59.852158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.544647, 58.590233, 59.799744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042291, 0.169668, 0.984594,
		0.884792, 0.451373, -0.115786,
		-0.464064, 0.876057, -0.131032,
		69.405426, 58.853050, 59.760433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.107468, 58.774448, 60.268143>,  <69.730270, 58.239811, 59.852158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.107468, 58.774448, 60.268143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.717033, 58.775902, 60.181190>,  <69.482773, 58.776775, 60.129021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.717033, 58.775902, 60.181190>,  <70.107468, 58.774448, 60.268143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.717033, 58.775902, 60.181190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217394, -0.027621, 0.975693,
		-0.002458, 0.999612, 0.027750,
		-0.976081, 0.003635, -0.217378,
		69.424210, 58.776993, 60.115978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.775642, 58.495228, 60.118759>,  <70.107468, 58.774448, 60.268143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.775642, 58.495228, 60.118759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.048645, 58.777733, 60.194000>,  <71.212448, 58.947235, 60.239143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.048645, 58.777733, 60.194000>,  <70.775642, 58.495228, 60.118759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.048645, 58.777733, 60.194000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720329, -0.693568, -0.009462,
		0.123779, 0.141953, -0.982104,
		0.682499, 0.706267, 0.188101,
		71.253395, 58.989613, 60.250431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.318649, 58.543026, 59.573624>,  <70.775642, 58.495228, 60.118759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.318649, 58.543026, 59.573624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.441589, 58.648067, 59.939484>,  <71.515350, 58.711094, 60.159000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.441589, 58.648067, 59.939484>,  <71.318649, 58.543026, 59.573624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.441589, 58.648067, 59.939484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687823, -0.725519, -0.022820,
		0.657600, 0.636128, -0.403612,
		0.307345, 0.262607, 0.914645,
		71.533791, 58.726849, 60.213879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.991882, 58.856766, 59.646969>,  <71.318649, 58.543026, 59.573624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.991882, 58.856766, 59.646969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.901672, 58.630203, 59.964035>,  <71.847542, 58.494267, 60.154274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.901672, 58.630203, 59.964035>,  <71.991882, 58.856766, 59.646969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.901672, 58.630203, 59.964035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763543, -0.608103, -0.217287,
		0.605095, 0.556228, 0.569623,
		-0.225529, -0.566410, 0.792664,
		71.834015, 58.460281, 60.201836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.670403, 58.750481, 59.827145>,  <71.991882, 58.856766, 59.646969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.670403, 58.750481, 59.827145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.435516, 58.451794, 59.952103>,  <72.294586, 58.272583, 60.027077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.435516, 58.451794, 59.952103>,  <72.670403, 58.750481, 59.827145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.435516, 58.451794, 59.952103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749170, -0.647519, -0.139512,
		0.306455, 0.152110, 0.939653,
		-0.587222, -0.746714, 0.312392,
		72.259346, 58.227779, 60.045818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.014687, 58.291325, 60.352951>,  <72.670403, 58.750481, 59.827145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.014687, 58.291325, 60.352951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.752243, 58.038239, 60.188416>,  <72.594780, 57.886387, 60.089695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.752243, 58.038239, 60.188416>,  <73.014687, 58.291325, 60.352951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.752243, 58.038239, 60.188416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694825, -0.719176, -0.002049,
		-0.294532, -0.287156, 0.911478,
		-0.656102, -0.632714, -0.411343,
		72.555412, 57.848423, 60.065014>
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
