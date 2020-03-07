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
	<0.395334, 1.704310, 2.302613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.460075, 1.371006, 2.514076>,  <0.498920, 1.171023, 2.640954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.460075, 1.371006, 2.514076>,  <0.395334, 1.704310, 2.302613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.460075, 1.371006, 2.514076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553015, 0.367107, 0.747935,
		-0.817299, -0.413412, -0.401388,
		0.161853, -0.833261, 0.528659,
		0.508631, 1.121028, 2.672674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.088061, 1.680195, 2.793611>,  <0.395334, 1.704310, 2.302613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.088061, 1.680195, 2.793611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.160641, 1.429813, 2.981911>,  <0.309862, 1.279585, 3.094890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.160641, 1.429813, 2.981911>,  <-0.088061, 1.680195, 2.793611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.160641, 1.429813, 2.981911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375353, 0.289384, 0.880549,
		-0.687410, -0.724182, -0.055028,
		0.621753, -0.625954, 0.470749,
		0.347167, 1.242027, 3.123135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.449364, 1.427611, 3.267546>,  <-0.088061, 1.680195, 2.793611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.449364, 1.427611, 3.267546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.064911, 1.409698, 3.376518>,  <0.165761, 1.398951, 3.441902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.064911, 1.409698, 3.376518>,  <-0.449364, 1.427611, 3.267546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.064911, 1.409698, 3.376518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261434, 0.169572, 0.950209,
		-0.088750, -0.984500, 0.151273,
		0.961132, -0.044783, 0.272431,
		0.223429, 1.396264, 3.458248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.406792, 0.955285, 3.810310>,  <-0.449364, 1.427611, 3.267546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.406792, 0.955285, 3.810310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.113140, 1.226860, 3.814224>,  <0.063051, 1.389805, 3.816573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.113140, 1.226860, 3.814224>,  <-0.406792, 0.955285, 3.810310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.113140, 1.226860, 3.814224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175524, 0.175831, 0.968646,
		0.655930, -0.712830, 0.248252,
		0.734130, 0.678939, 0.009786,
		0.107099, 1.430542, 3.817160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.105400, 0.905106, 4.478766>,  <-0.406792, 0.955285, 3.810310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.105400, 0.905106, 4.478766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.002048, 1.258339, 4.324879>,  <0.066517, 1.470279, 4.232546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.002048, 1.258339, 4.324879>,  <-0.105400, 0.905106, 4.478766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.002048, 1.258339, 4.324879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034893, 0.408057, 0.912289,
		0.962614, -0.231636, 0.140426,
		0.268621, 0.883082, -0.384719,
		0.082635, 1.523264, 4.209463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.336731, 1.186185, 4.980407>,  <-0.105400, 0.905106, 4.478766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.336731, 1.186185, 4.980407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.214981, 1.499458, 4.763527>,  <0.141931, 1.687422, 4.633399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.214981, 1.499458, 4.763527>,  <0.336731, 1.186185, 4.980407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.214981, 1.499458, 4.763527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058068, 0.583405, 0.810103,
		0.950781, 0.215090, -0.223052,
		-0.304375, 0.783182, -0.542201,
		0.123669, 1.734413, 4.600867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.708376, 1.781850, 5.261689>,  <0.336731, 1.186185, 4.980407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.708376, 1.781850, 5.261689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.382198, 1.903069, 5.064423>,  <0.186491, 1.975800, 4.946063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.382198, 1.903069, 5.064423>,  <0.708376, 1.781850, 5.261689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.382198, 1.903069, 5.064423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262946, 0.565078, 0.782015,
		0.515663, 0.767366, -0.381105,
		-0.815445, 0.303046, -0.493165,
		0.137565, 1.993982, 4.916473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.633688, 2.599630, 5.192373>,  <0.708376, 1.781850, 5.261689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.633688, 2.599630, 5.192373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.265408, 2.444912, 5.171597>,  <0.044439, 2.352081, 5.159131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.265408, 2.444912, 5.171597>,  <0.633688, 2.599630, 5.192373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.265408, 2.444912, 5.171597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265679, 0.523712, 0.809407,
		-0.285872, 0.759023, -0.584946,
		-0.920702, -0.386795, -0.051942,
		-0.010803, 2.328873, 5.156014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.972983, 2.691471, 6.259997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.594109, 2.799980, 6.191589>,  <4.366784, 2.865086, 6.150545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.594109, 2.799980, 6.191589>,  <4.972983, 2.691471, 6.259997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.594109, 2.799980, 6.191589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021018, -0.584668, -0.811000,
		-0.319992, -0.764574, 0.559492,
		-0.947187, 0.271273, -0.171019,
		4.309952, 2.881362, 6.140284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.401581, 2.069391, 6.173286>,  <4.972983, 2.691471, 6.259997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.401581, 2.069391, 6.173286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.362322, 2.405647, 5.960236>,  <4.338766, 2.607401, 5.832406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.362322, 2.405647, 5.960236>,  <4.401581, 2.069391, 6.173286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.362322, 2.405647, 5.960236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085010, -0.526171, -0.846119,
		-0.991534, -0.128324, -0.019820,
		-0.098149, 0.840640, -0.532626,
		4.332877, 2.657840, 5.800448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.859608, 1.942804, 5.700982>,  <4.401581, 2.069391, 6.173286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.859608, 1.942804, 5.700982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.122362, 2.206238, 5.554138>,  <4.280015, 2.364298, 5.466032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.122362, 2.206238, 5.554138>,  <3.859608, 1.942804, 5.700982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.122362, 2.206238, 5.554138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065125, -0.534625, -0.842576,
		-0.751174, 0.529567, -0.394077,
		0.656884, 0.658585, -0.367108,
		4.319427, 2.403813, 5.444006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.762730, 2.079159, 4.954208>,  <3.859608, 1.942804, 5.700982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.762730, 2.079159, 4.954208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.143875, 2.190735, 5.001953>,  <4.372562, 2.257680, 5.030600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.143875, 2.190735, 5.001953>,  <3.762730, 2.079159, 4.954208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.143875, 2.190735, 5.001953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207507, -0.312131, -0.927100,
		-0.221349, 0.908167, -0.355300,
		0.952862, 0.278940, 0.119362,
		4.429734, 2.274417, 5.037762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.023371, 2.395226, 4.257318>,  <3.762730, 2.079159, 4.954208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.023371, 2.395226, 4.257318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.341949, 2.265549, 4.461502>,  <4.533097, 2.187742, 4.584013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.341949, 2.265549, 4.461502>,  <4.023371, 2.395226, 4.257318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.341949, 2.265549, 4.461502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442482, -0.262927, -0.857368,
		0.412168, 0.908718, -0.065957,
		0.796447, -0.324194, 0.510461,
		4.580884, 2.168290, 4.614640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.646608, 2.804041, 4.041690>,  <4.023371, 2.395226, 4.257318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.646608, 2.804041, 4.041690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.787737, 2.467300, 4.205055>,  <4.872414, 2.265256, 4.303074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.787737, 2.467300, 4.205055>,  <4.646608, 2.804041, 4.041690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.787737, 2.467300, 4.205055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469787, -0.218104, -0.855412,
		0.809208, 0.493675, 0.318540,
		0.352821, -0.841853, 0.408414,
		4.893583, 2.214745, 4.327579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.501818, 2.781199, 3.917485>,  <4.646608, 2.804041, 4.041690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.501818, 2.781199, 3.917485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.350906, 2.414276, 3.968407>,  <5.260360, 2.194122, 3.998960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.350906, 2.414276, 3.968407>,  <5.501818, 2.781199, 3.917485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.350906, 2.414276, 3.968407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516237, -0.322436, -0.793431,
		0.768869, -0.233624, 0.595197,
		-0.377278, -0.917308, 0.127306,
		5.237723, 2.139084, 4.006598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.104523, 2.244116, 3.864595>,  <5.501818, 2.781199, 3.917485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.104523, 2.244116, 3.864595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.749741, 2.098259, 3.751213>,  <5.536871, 2.010745, 3.683184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.749741, 2.098259, 3.751213>,  <6.104523, 2.244116, 3.864595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.749741, 2.098259, 3.751213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433673, -0.446434, -0.782703,
		0.158863, -0.817150, 0.554102,
		-0.886956, -0.364642, -0.283454,
		5.483654, 1.988867, 3.666177>
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
