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
	<2.803617, 4.249251, 4.057001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.759277, 4.529709, 3.775261>,  <2.732673, 4.697984, 3.606217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.759277, 4.529709, 3.775261>,  <2.803617, 4.249251, 4.057001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.759277, 4.529709, 3.775261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857014, -0.426296, -0.289481,
		-0.503229, 0.571548, 0.648146,
		-0.110849, 0.701145, -0.704349,
		2.726022, 4.740052, 3.563956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.156256, 4.878193, 3.980734>,  <2.803617, 4.249251, 4.057001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.156256, 4.878193, 3.980734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.417183, 4.581932, 4.045128>,  <3.573739, 4.404175, 4.083764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.417183, 4.581932, 4.045128>,  <3.156256, 4.878193, 3.980734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.417183, 4.581932, 4.045128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208356, -0.028986, -0.977623,
		0.728746, 0.671262, 0.135411,
		0.652317, -0.740653, 0.160985,
		3.612878, 4.359736, 4.093423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.708662, 4.928538, 3.523287>,  <3.156256, 4.878193, 3.980734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.708662, 4.928538, 3.523287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.756832, 4.542961, 3.618210>,  <3.785734, 4.311615, 3.675164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.756832, 4.542961, 3.618210>,  <3.708662, 4.928538, 3.523287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.756832, 4.542961, 3.618210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164166, -0.216418, -0.962399,
		0.979054, 0.154855, 0.132185,
		0.120425, -0.963941, 0.237307,
		3.792960, 4.253778, 3.689402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.303368, 4.717456, 3.256047>,  <3.708662, 4.928538, 3.523287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.303368, 4.717456, 3.256047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074970, 4.390213, 3.283371>,  <3.937932, 4.193867, 3.299765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074970, 4.390213, 3.283371>,  <4.303368, 4.717456, 3.256047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.074970, 4.390213, 3.283371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281464, -0.273250, -0.919844,
		0.771196, -0.505999, 0.386292,
		-0.570994, -0.818107, 0.068309,
		3.903672, 4.144781, 3.303864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.672124, 4.066533, 3.064247>,  <4.303368, 4.717456, 3.256047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.672124, 4.066533, 3.064247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.281975, 4.026947, 2.985405>,  <4.047885, 4.003195, 2.938099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.281975, 4.026947, 2.985405>,  <4.672124, 4.066533, 3.064247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.281975, 4.026947, 2.985405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216125, -0.250635, -0.943648,
		0.043988, -0.963010, 0.265852,
		-0.975374, -0.098966, -0.197106,
		3.989362, 3.997257, 2.926273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.566135, 3.380306, 2.893261>,  <4.672124, 4.066533, 3.064247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.566135, 3.380306, 2.893261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.277843, 3.611740, 2.740532>,  <4.104868, 3.750600, 2.648894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.277843, 3.611740, 2.740532>,  <4.566135, 3.380306, 2.893261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.277843, 3.611740, 2.740532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168997, -0.387533, -0.906233,
		-0.672302, -0.717675, 0.181527,
		-0.720728, 0.578586, -0.381824,
		4.061625, 3.785316, 2.625985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.165972, 2.894956, 2.451136>,  <4.566135, 3.380306, 2.893261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.165972, 2.894956, 2.451136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.099201, 3.269836, 2.328636>,  <4.059139, 3.494765, 2.255136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.099201, 3.269836, 2.328636>,  <4.165972, 2.894956, 2.451136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.099201, 3.269836, 2.328636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141556, -0.284610, -0.948135,
		-0.975755, -0.201620, -0.085158,
		-0.166926, 0.937201, -0.306250,
		4.049123, 3.550997, 2.236761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.744004, 2.873249, 1.932713>,  <4.165972, 2.894956, 2.451136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.744004, 2.873249, 1.932713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.967617, 3.203247, 1.899574>,  <4.101785, 3.401246, 1.879691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.967617, 3.203247, 1.899574>,  <3.744004, 2.873249, 1.932713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.967617, 3.203247, 1.899574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171837, -0.213026, -0.961817,
		-0.811144, 0.523451, -0.260854,
		0.559033, 0.824996, -0.082847,
		4.135327, 3.450746, 1.874720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.590258, 2.400187, 0.826503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.911680, 2.599899, 0.696877>,  <4.104533, 2.719727, 0.619101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.911680, 2.599899, 0.696877>,  <3.590258, 2.400187, 0.826503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.911680, 2.599899, 0.696877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071163, 0.621115, 0.780482,
		0.590957, -0.604101, 0.534632,
		0.803558, 0.499277, -0.324063,
		4.152747, 2.749683, 0.599657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.142295, 2.400883, 1.307135>,  <3.590258, 2.400187, 0.826503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.142295, 2.400883, 1.307135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099674, 2.715714, 1.064102>,  <4.074101, 2.904612, 0.918282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099674, 2.715714, 1.064102>,  <4.142295, 2.400883, 1.307135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.099674, 2.715714, 1.064102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198021, 0.582023, 0.788693,
		0.974389, 0.204352, 0.093841,
		-0.106553, 0.787076, -0.607583,
		4.067708, 2.951836, 0.881827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.624067, 3.034640, 1.445668>,  <4.142295, 2.400883, 1.307135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.624067, 3.034640, 1.445668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.270819, 3.132584, 1.285599>,  <4.058869, 3.191350, 1.189557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.270819, 3.132584, 1.285599>,  <4.624067, 3.034640, 1.445668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.270819, 3.132584, 1.285599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169127, 0.629466, 0.758399,
		0.437597, 0.737439, -0.514483,
		-0.883122, 0.244860, -0.400174,
		4.005882, 3.206042, 1.165547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.626324, 3.763967, 1.450444>,  <4.624067, 3.034640, 1.445668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.626324, 3.763967, 1.450444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.242229, 3.653030, 1.437607>,  <4.011773, 3.586468, 1.429905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.242229, 3.653030, 1.437607>,  <4.626324, 3.763967, 1.450444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.242229, 3.653030, 1.437607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228343, 0.713998, 0.661866,
		-0.160649, 0.642875, -0.748935,
		-0.960235, -0.277342, -0.032093,
		3.954159, 3.569828, 1.427979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.180082, 4.430093, 1.290370>,  <4.626324, 3.763967, 1.450444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.180082, 4.430093, 1.290370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.032215, 4.115845, 1.488823>,  <3.943495, 3.927296, 1.607895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.032215, 4.115845, 1.488823>,  <4.180082, 4.430093, 1.290370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.032215, 4.115845, 1.488823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061909, 0.553594, 0.830482,
		-0.927100, 0.276286, -0.253283,
		-0.369667, -0.785621, 0.496132,
		3.921315, 3.880158, 1.637663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.641438, 4.637903, 1.699861>,  <4.180082, 4.430093, 1.290370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.641438, 4.637903, 1.699861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.740395, 4.284286, 1.858490>,  <3.799769, 4.072117, 1.953667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.740395, 4.284286, 1.858490>,  <3.641438, 4.637903, 1.699861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.740395, 4.284286, 1.858490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276289, 0.327937, 0.903395,
		-0.928688, -0.333061, -0.163121,
		0.247392, -0.884040, 0.396573,
		3.814612, 4.019074, 1.977462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.113349, 4.508001, 2.111494>,  <3.641438, 4.637903, 1.699861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.113349, 4.508001, 2.111494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.393574, 4.262924, 2.257820>,  <3.561709, 4.115878, 2.345616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.393574, 4.262924, 2.257820>,  <3.113349, 4.508001, 2.111494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.393574, 4.262924, 2.257820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253182, 0.265874, 0.930167,
		-0.667167, -0.744257, 0.031138,
		0.700562, -0.612693, 0.365815,
		3.603742, 4.079116, 2.367564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.731256, 4.055796, 2.534085>,  <3.113349, 4.508001, 2.111494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.731256, 4.055796, 2.534085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.108721, 4.030853, 2.664078>,  <3.335200, 4.015888, 2.742073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.108721, 4.030853, 2.664078>,  <2.731256, 4.055796, 2.534085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.108721, 4.030853, 2.664078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322166, 0.051140, 0.945301,
		-0.075568, -0.996743, 0.028169,
		0.943662, -0.062360, 0.324981,
		3.391819, 4.012146, 2.761572>
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
