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
	<1.644858, 3.362369, 0.062348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.981865, 3.574870, 0.097977>,  <2.184069, 3.702371, 0.119354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.981865, 3.574870, 0.097977>,  <1.644858, 3.362369, 0.062348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.981865, 3.574870, 0.097977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531042, -0.846882, 0.028015,
		0.090316, 0.023697, -0.995631,
		0.842518, 0.531253, 0.089072,
		2.234621, 3.734246, 0.124698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.128108, 2.954524, -0.246813>,  <1.644858, 3.362369, 0.062348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.128108, 2.954524, -0.246813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.357506, 3.217827, -0.051754>,  <2.495145, 3.375809, 0.065281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.357506, 3.217827, -0.051754>,  <2.128108, 2.954524, -0.246813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.357506, 3.217827, -0.051754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680125, -0.714404, 0.164490,
		0.456654, 0.237326, -0.857405,
		0.573496, 0.658258, 0.487647,
		2.529555, 3.415305, 0.094540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.909546, 2.932277, -0.484586>,  <2.128108, 2.954524, -0.246813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.909546, 2.932277, -0.484586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.838425, 3.034104, -0.104359>,  <2.795752, 3.095201, 0.123778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.838425, 3.034104, -0.104359>,  <2.909546, 2.932277, -0.484586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.838425, 3.034104, -0.104359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579519, -0.753607, 0.310219,
		0.795327, 0.606030, -0.013533,
		-0.177803, 0.254568, 0.950569,
		2.785084, 3.110475, 0.180812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.502416, 3.070176, -0.189294>,  <2.909546, 2.932277, -0.484586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.502416, 3.070176, -0.189294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.261406, 2.977468, 0.116188>,  <3.116800, 2.921844, 0.299478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.261406, 2.977468, 0.116188>,  <3.502416, 3.070176, -0.189294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.261406, 2.977468, 0.116188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700622, -0.611878, 0.367062,
		0.382221, 0.756233, 0.531054,
		-0.602524, -0.231769, 0.763706,
		3.080649, 2.907938, 0.345300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.930358, 3.162382, 0.461988>,  <3.502416, 3.070176, -0.189294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.930358, 3.162382, 0.461988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.632156, 2.901297, 0.515934>,  <3.453235, 2.744646, 0.548302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.632156, 2.901297, 0.515934>,  <3.930358, 3.162382, 0.461988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.632156, 2.901297, 0.515934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621654, -0.607988, 0.493859,
		-0.240351, 0.452015, 0.859019,
		-0.745505, -0.652713, 0.134866,
		3.408505, 2.705483, 0.556394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.946167, 2.951489, 1.146564>,  <3.930358, 3.162382, 0.461988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.946167, 2.951489, 1.146564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.741364, 2.660171, 0.964384>,  <3.618481, 2.485380, 0.855076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.741364, 2.660171, 0.964384>,  <3.946167, 2.951489, 1.146564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.741364, 2.660171, 0.964384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603543, -0.682301, 0.412554,
		-0.611215, -0.063652, 0.788901,
		-0.512008, -0.728295, -0.455449,
		3.587761, 2.441683, 0.827749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.573749, 2.535828, 1.636623>,  <3.946167, 2.951489, 1.146564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.573749, 2.535828, 1.636623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.621887, 2.306000, 1.312799>,  <3.650770, 2.168102, 1.118506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.621887, 2.306000, 1.312799>,  <3.573749, 2.535828, 1.636623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.621887, 2.306000, 1.312799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380648, -0.726448, 0.572172,
		-0.916856, -0.377014, 0.131285,
		0.120345, -0.574572, -0.809558,
		3.657991, 2.133628, 1.069932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.293214, 1.867064, 1.756923>,  <3.573749, 2.535828, 1.636623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.293214, 1.867064, 1.756923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.564735, 1.803886, 1.470070>,  <3.727648, 1.765979, 1.297958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.564735, 1.803886, 1.470070>,  <3.293214, 1.867064, 1.756923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.564735, 1.803886, 1.470070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354014, -0.785223, 0.508035,
		-0.643351, -0.598730, -0.477096,
		0.678803, -0.157946, -0.717133,
		3.768376, 1.756502, 1.254930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.097072, 1.597084, 1.737444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.139687, 1.381784, 1.403034>,  <5.165255, 1.252604, 1.202388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.139687, 1.381784, 1.403034>,  <5.097072, 1.597084, 1.737444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.139687, 1.381784, 1.403034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984955, 0.057928, -0.162810,
		0.136062, 0.840792, -0.523981,
		0.106536, -0.538250, -0.836024,
		5.171648, 1.220309, 1.152227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.900310, 1.970352, 1.106805>,  <5.097072, 1.597084, 1.737444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.900310, 1.970352, 1.106805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.790421, 1.594992, 1.022968>,  <4.724487, 1.369775, 0.972666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.790421, 1.594992, 1.022968>,  <4.900310, 1.970352, 1.106805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.790421, 1.594992, 1.022968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921968, 0.318966, -0.219625,
		0.272949, 0.132902, -0.952804,
		-0.274724, -0.938401, -0.209593,
		4.708004, 1.313471, 0.960091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.555998, 1.955364, 0.486201>,  <4.900310, 1.970352, 1.106805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.555998, 1.955364, 0.486201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.408974, 1.637274, 0.679081>,  <4.320759, 1.446420, 0.794809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.408974, 1.637274, 0.679081>,  <4.555998, 1.955364, 0.486201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.408974, 1.637274, 0.679081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929918, 0.307409, -0.201874,
		0.012302, -0.522608, -0.852485,
		-0.367562, -0.795224, 0.482200,
		4.298705, 1.398707, 0.823741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.283196, 1.423953, 0.022981>,  <4.555998, 1.955364, 0.486201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.283196, 1.423953, 0.022981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.136284, 1.511782, 0.384510>,  <4.048137, 1.564479, 0.601427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.136284, 1.511782, 0.384510>,  <4.283196, 1.423953, 0.022981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.136284, 1.511782, 0.384510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753199, 0.499918, -0.427521,
		-0.545708, -0.837777, -0.018227,
		-0.367280, 0.219573, 0.903822,
		4.026100, 1.577654, 0.655656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.629798, 1.374104, 0.003298>,  <4.283196, 1.423953, 0.022981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.629798, 1.374104, 0.003298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.649353, 1.597918, 0.334244>,  <3.661086, 1.732206, 0.532811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.649353, 1.597918, 0.334244>,  <3.629798, 1.374104, 0.003298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.649353, 1.597918, 0.334244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709563, 0.602440, -0.365494,
		-0.702944, -0.569200, 0.426475,
		0.048886, 0.559533, 0.827365,
		3.664019, 1.765777, 0.582453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.901733, 1.512003, 0.223669>,  <3.629798, 1.374104, 0.003298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.901733, 1.512003, 0.223669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.115753, 1.812349, 0.378548>,  <3.244165, 1.992557, 0.471475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.115753, 1.812349, 0.378548>,  <2.901733, 1.512003, 0.223669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.115753, 1.812349, 0.378548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723312, 0.643958, -0.249275,
		-0.436511, -0.146689, 0.887660,
		0.535050, 0.750866, 0.387197,
		3.276268, 2.037609, 0.494707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.425862, 1.834346, 0.742867>,  <2.901733, 1.512003, 0.223669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.425862, 1.834346, 0.742867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.715446, 2.101772, 0.674870>,  <2.889197, 2.262228, 0.634071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.715446, 2.101772, 0.674870>,  <2.425862, 1.834346, 0.742867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.715446, 2.101772, 0.674870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685299, 0.725246, -0.066213,
		0.079019, 0.164432, 0.983218,
		0.723962, 0.668566, -0.169994,
		2.932635, 2.302342, 0.623871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.459929, 2.413536, 1.280477>,  <2.425862, 1.834346, 0.742867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.459929, 2.413536, 1.280477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.617058, 2.571070, 0.948071>,  <2.711335, 2.665590, 0.748627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.617058, 2.571070, 0.948071>,  <2.459929, 2.413536, 1.280477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.617058, 2.571070, 0.948071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591866, 0.799895, 0.099310,
		0.703837, 0.452839, 0.547312,
		0.392821, 0.393833, -0.831015,
		2.734904, 2.689220, 0.698766>
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
