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
	<2.538229, 1.210120, -0.197778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.935879, 1.253368, -0.195824>,  <3.174469, 1.279318, -0.194651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.935879, 1.253368, -0.195824>,  <2.538229, 1.210120, -0.197778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.935879, 1.253368, -0.195824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051072, -0.508427, 0.859590,
		0.095424, -0.854291, -0.510962,
		0.994126, 0.108122, 0.004886,
		3.234117, 1.285805, -0.194358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.943447, 0.526261, -0.092440>,  <2.538229, 1.210120, -0.197778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.943447, 0.526261, -0.092440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.145489, 0.842804, 0.045326>,  <3.266715, 1.032730, 0.127986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.145489, 0.842804, 0.045326>,  <2.943447, 0.526261, -0.092440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.145489, 0.842804, 0.045326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053257, -0.426882, 0.902738,
		0.861413, -0.437636, -0.257766,
		0.505106, 0.791358, 0.344414,
		3.297021, 1.080211, 0.148651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.598449, 0.327456, 0.222138>,  <2.943447, 0.526261, -0.092440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.598449, 0.327456, 0.222138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.419955, 0.645451, 0.386513>,  <3.312858, 0.836248, 0.485138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.419955, 0.645451, 0.386513>,  <3.598449, 0.327456, 0.222138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.419955, 0.645451, 0.386513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017152, -0.466705, 0.884247,
		0.894752, 0.387533, 0.221895,
		-0.446235, 0.794987, 0.410938,
		3.286084, 0.883947, 0.509794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.005955, 0.529221, 0.760734>,  <3.598449, 0.327456, 0.222138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.005955, 0.529221, 0.760734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.620228, 0.602432, 0.837250>,  <3.388792, 0.646359, 0.883159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.620228, 0.602432, 0.837250>,  <4.005955, 0.529221, 0.760734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.620228, 0.602432, 0.837250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052332, -0.576501, 0.815419,
		0.259524, 0.796333, 0.546352,
		-0.964318, 0.183029, 0.191289,
		3.330933, 0.657341, 0.894637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.932606, 0.565293, 1.525733>,  <4.005955, 0.529221, 0.760734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.932606, 0.565293, 1.525733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.559092, 0.507767, 1.394669>,  <3.334983, 0.473251, 1.316030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.559092, 0.507767, 1.394669>,  <3.932606, 0.565293, 1.525733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.559092, 0.507767, 1.394669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182808, -0.595440, 0.782325,
		-0.307613, 0.790423, 0.529722,
		-0.933786, -0.143816, -0.327661,
		3.278956, 0.464622, 1.296370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.509234, 0.664007, 2.027439>,  <3.932606, 0.565293, 1.525733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.509234, 0.664007, 2.027439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.292511, 0.435253, 1.781059>,  <3.162477, 0.298001, 1.633232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.292511, 0.435253, 1.781059>,  <3.509234, 0.664007, 2.027439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.292511, 0.435253, 1.781059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085266, -0.691655, 0.717177,
		-0.836166, 0.441092, 0.325983,
		-0.541809, -0.571884, -0.615948,
		3.129968, 0.263688, 1.596275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.804033, 0.544885, 2.396881>,  <3.509234, 0.664007, 2.027439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.804033, 0.544885, 2.396881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.887353, 0.251690, 2.137856>,  <2.937346, 0.075773, 1.982440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.887353, 0.251690, 2.137856>,  <2.804033, 0.544885, 2.396881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.887353, 0.251690, 2.137856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144052, -0.677858, 0.720942,
		-0.967399, -0.056890, -0.246786,
		0.208300, -0.732988, -0.647564,
		2.949844, 0.031793, 1.943586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.203877, 0.003807, 2.368031>,  <2.804033, 0.544885, 2.396881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.203877, 0.003807, 2.368031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.548756, -0.177773, 2.278099>,  <2.755682, -0.286721, 2.224140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.548756, -0.177773, 2.278099>,  <2.203877, 0.003807, 2.368031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.548756, -0.177773, 2.278099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181486, -0.691163, 0.699541,
		-0.472950, -0.562338, -0.678303,
		0.862195, -0.453949, -0.224829,
		2.807414, -0.313958, 2.210650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.802171, 4.499720, 3.156444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.824333, 4.132664, 2.999031>,  <2.837631, 3.912430, 2.904583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.824333, 4.132664, 2.999031>,  <2.802171, 4.499720, 3.156444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.824333, 4.132664, 2.999031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196151, 0.376454, -0.905432,
		0.979007, 0.127359, -0.159137,
		0.055407, -0.917639, -0.393533,
		2.840955, 3.857372, 2.880971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.343375, 4.422208, 2.562296>,  <2.802171, 4.499720, 3.156444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.343375, 4.422208, 2.562296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.074734, 4.129105, 2.518456>,  <2.913549, 3.953242, 2.492151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.074734, 4.129105, 2.518456>,  <3.343375, 4.422208, 2.562296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.074734, 4.129105, 2.518456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165780, 0.292797, -0.941693,
		0.722126, -0.614274, -0.318120,
		-0.671602, -0.732760, -0.109602,
		2.873253, 3.909277, 2.485575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.579701, 3.965337, 2.010361>,  <3.343375, 4.422208, 2.562296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.579701, 3.965337, 2.010361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.184708, 3.998585, 2.063980>,  <2.947712, 4.018534, 2.096151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.184708, 3.998585, 2.063980>,  <3.579701, 3.965337, 2.010361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.184708, 3.998585, 2.063980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059994, 0.588054, -0.806593,
		-0.145871, -0.804539, -0.575707,
		-0.987483, 0.083120, 0.134047,
		2.888463, 4.023520, 2.104194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.312787, 3.842624, 1.426975>,  <3.579701, 3.965337, 2.010361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.312787, 3.842624, 1.426975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.064587, 4.076412, 1.636116>,  <2.915666, 4.216685, 1.761600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.064587, 4.076412, 1.636116>,  <3.312787, 3.842624, 1.426975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.064587, 4.076412, 1.636116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062290, 0.627887, -0.775808,
		-0.781728, -0.513958, -0.353198,
		-0.620501, 0.584470, 0.522851,
		2.878436, 4.251753, 1.792971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.858941, 4.191628, 1.010409>,  <3.312787, 3.842624, 1.426975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.858941, 4.191628, 1.010409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.810280, 4.432365, 1.326126>,  <2.781083, 4.576808, 1.515557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.810280, 4.432365, 1.326126>,  <2.858941, 4.191628, 1.010409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.810280, 4.432365, 1.326126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050509, 0.790416, -0.610484,
		-0.991287, -0.114133, -0.065757,
		-0.121652, 0.601844, 0.789294,
		2.773784, 4.612918, 1.562914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.255635, 4.575263, 0.896372>,  <2.858941, 4.191628, 1.010409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.255635, 4.575263, 0.896372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.500469, 4.788563, 1.129951>,  <2.647370, 4.916543, 1.270099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.500469, 4.788563, 1.129951>,  <2.255635, 4.575263, 0.896372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.500469, 4.788563, 1.129951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113628, 0.790079, -0.602381,
		-0.782586, 0.302355, 0.544188,
		0.612085, 0.533250, 0.583949,
		2.684095, 4.948538, 1.305136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.077093, 5.234360, 0.847011>,  <2.255635, 4.575263, 0.896372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.077093, 5.234360, 0.847011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.441055, 5.300625, 0.999130>,  <2.659433, 5.340384, 1.090402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.441055, 5.300625, 0.999130>,  <2.077093, 5.234360, 0.847011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.441055, 5.300625, 0.999130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018016, 0.900145, -0.435218,
		-0.414422, 0.402859, 0.816063,
		0.909906, 0.165662, 0.380298,
		2.714027, 5.350324, 1.113220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.079223, 5.891319, 1.052126>,  <2.077093, 5.234360, 0.847011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.079223, 5.891319, 1.052126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.463543, 5.796234, 0.995056>,  <2.694135, 5.739183, 0.960814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.463543, 5.796234, 0.995056>,  <2.079223, 5.891319, 1.052126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.463543, 5.796234, 0.995056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106362, 0.791289, -0.602120,
		0.256028, 0.563342, 0.785554,
		0.960800, -0.237713, -0.142674,
		2.751783, 5.724920, 0.952254>
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
