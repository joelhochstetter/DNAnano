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
	<0.446478, 2.071544, 0.969623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.158731, 2.195515, 1.218287>,  <-0.013916, 2.269897, 1.367484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.158731, 2.195515, 1.218287>,  <0.446478, 2.071544, 0.969623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.158731, 2.195515, 1.218287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625263, 0.100936, -0.773859,
		-0.302588, -0.945387, 0.121177,
		-0.719365, 0.309928, 0.621658,
		-0.057078, 2.288493, 1.404784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.143027, 1.614044, 1.180589>,  <0.446478, 2.071544, 0.969623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.143027, 1.614044, 1.180589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.334093, 1.398994, 0.902655>,  <-0.448733, 1.269965, 0.735894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.334093, 1.398994, 0.902655>,  <-0.143027, 1.614044, 1.180589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.334093, 1.398994, 0.902655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456994, -0.827523, 0.326130,
		-0.750328, -0.161755, 0.640970,
		-0.477664, -0.537625, -0.694836,
		-0.477392, 1.237707, 0.694204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.394474, 1.039243, 1.452011>,  <-0.143027, 1.614044, 1.180589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.394474, 1.039243, 1.452011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.339169, 0.953476, 1.065248>,  <-0.305985, 0.902016, 0.833191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.339169, 0.953476, 1.065248>,  <-0.394474, 1.039243, 1.452011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.339169, 0.953476, 1.065248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555634, -0.791375, 0.254944,
		-0.819850, -0.572496, 0.009719,
		0.138263, -0.214416, -0.966907,
		-0.297690, 0.889151, 0.775176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.606476, 0.333388, 1.274032>,  <-0.394474, 1.039243, 1.452011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.606476, 0.333388, 1.274032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.340029, 0.450863, 0.999796>,  <-0.180160, 0.521348, 0.835254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.340029, 0.450863, 0.999796>,  <-0.606476, 0.333388, 1.274032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.340029, 0.450863, 0.999796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537799, -0.826026, 0.168679,
		-0.516776, -0.481070, -0.708176,
		0.666119, 0.293687, -0.685590,
		-0.140193, 0.538969, 0.794119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.386991, -0.242540, 0.727095>,  <-0.606476, 0.333388, 1.274032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.386991, -0.242540, 0.727095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.079739, -0.004402, 0.821363>,  <0.104613, 0.138481, 0.877925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.079739, -0.004402, 0.821363>,  <-0.386991, -0.242540, 0.727095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.079739, -0.004402, 0.821363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534333, -0.798816, 0.276372,
		0.352795, -0.086362, -0.931706,
		0.768130, 0.595344, 0.235672,
		0.150700, 0.174201, 0.892065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.183592, -0.489305, 0.373977>,  <-0.386991, -0.242540, 0.727095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.183592, -0.489305, 0.373977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.354893, -0.249649, 0.644571>,  <0.457673, -0.105855, 0.806928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.354893, -0.249649, 0.644571>,  <0.183592, -0.489305, 0.373977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.354893, -0.249649, 0.644571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719574, -0.678940, 0.145787,
		0.546640, 0.424347, -0.721883,
		0.428251, 0.599140, 0.676485,
		0.483368, -0.069907, 0.847517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.822593, -0.497975, 0.170329>,  <0.183592, -0.489305, 0.373977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.822593, -0.497975, 0.170329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.801073, -0.429779, 0.563885>,  <0.788161, -0.388862, 0.800018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.801073, -0.429779, 0.563885>,  <0.822593, -0.497975, 0.170329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.801073, -0.429779, 0.563885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762147, -0.629603, 0.150774,
		0.645165, 0.757980, -0.096065,
		-0.053800, 0.170490, 0.983890,
		0.784933, -0.378632, 0.859052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.476042, -0.159420, 0.430766>,  <0.822593, -0.497975, 0.170329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.476042, -0.159420, 0.430766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.264845, -0.407757, 0.662552>,  <1.138127, -0.556759, 0.801624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.264845, -0.407757, 0.662552>,  <1.476042, -0.159420, 0.430766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.264845, -0.407757, 0.662552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793934, -0.603073, 0.077275,
		0.301485, 0.500858, 0.811325,
		-0.527992, -0.620841, 0.579466,
		1.106447, -0.594009, 0.836392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.983898, 0.133944, 1.214839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.823832, 0.443077, 1.411856>,  <2.727791, 0.628557, 1.530066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.823832, 0.443077, 1.411856>,  <2.983898, 0.133944, 1.214839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.823832, 0.443077, 1.411856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873770, -0.483836, 0.049275,
		0.276391, -0.410650, 0.868893,
		-0.400167, 0.772832, 0.492541,
		2.703781, 0.674927, 1.559618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.826842, -0.144754, 1.840445>,  <2.983898, 0.133944, 1.214839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.826842, -0.144754, 1.840445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.601522, 0.167503, 1.732158>,  <2.466331, 0.354858, 1.667186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.601522, 0.167503, 1.732158>,  <2.826842, -0.144754, 1.840445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.601522, 0.167503, 1.732158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825558, -0.518324, 0.223147,
		0.033880, 0.349191, 0.936439,
		-0.563300, 0.780645, -0.270717,
		2.432533, 0.401697, 1.650943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.336399, -0.094563, 2.301052>,  <2.826842, -0.144754, 1.840445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.336399, -0.094563, 2.301052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.191465, 0.110855, 1.989929>,  <2.104505, 0.234106, 1.803255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.191465, 0.110855, 1.989929>,  <2.336399, -0.094563, 2.301052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.191465, 0.110855, 1.989929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919455, -0.333660, 0.208022,
		-0.152695, 0.790533, 0.593078,
		-0.362335, 0.513545, -0.777808,
		2.082765, 0.264919, 1.756587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.910620, 0.513223, 2.430079>,  <2.336399, -0.094563, 2.301052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.910620, 0.513223, 2.430079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.806683, 0.319649, 2.095825>,  <1.744320, 0.203504, 1.895273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.806683, 0.319649, 2.095825>,  <1.910620, 0.513223, 2.430079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.806683, 0.319649, 2.095825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850774, -0.294626, 0.435176,
		-0.456798, 0.824015, -0.335164,
		-0.259844, -0.483936, -0.835636,
		1.728729, 0.174468, 1.845134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.134799, 0.698471, 2.427785>,  <1.910620, 0.513223, 2.430079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.134799, 0.698471, 2.427785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.215910, 0.386078, 2.191498>,  <1.264576, 0.198642, 2.049726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.215910, 0.386078, 2.191498>,  <1.134799, 0.698471, 2.427785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.215910, 0.386078, 2.191498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810623, -0.472298, 0.346157,
		-0.549337, 0.408657, -0.728854,
		0.202777, -0.780982, -0.590718,
		1.276743, 0.151783, 2.014282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.598956, 0.482859, 1.987886>,  <1.134799, 0.698471, 2.427785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.598956, 0.482859, 1.987886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.825674, 0.165207, 2.075611>,  <0.961705, -0.025385, 2.128247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.825674, 0.165207, 2.075611>,  <0.598956, 0.482859, 1.987886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.825674, 0.165207, 2.075611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791798, -0.451544, 0.411295,
		-0.227592, -0.406773, -0.884725,
		0.566796, -0.794131, 0.219314,
		0.995713, -0.073033, 2.141405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.132364, 1.007697, 1.739745>,  <0.598956, 0.482859, 1.987886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.132364, 1.007697, 1.739745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.196260, 0.620811, 1.660771>,  <1.234598, 0.388680, 1.613387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.196260, 0.620811, 1.660771>,  <1.132364, 1.007697, 1.739745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.196260, 0.620811, 1.660771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926793, -0.078075, -0.367369,
		0.339910, 0.241665, -0.908878,
		0.159741, -0.967214, -0.197435,
		1.244183, 0.330647, 1.601541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.052038, 0.849877, 0.958990>,  <1.132364, 1.007697, 1.739745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.052038, 0.849877, 0.958990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.966866, 0.569992, 1.231772>,  <0.915762, 0.402061, 1.395442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.966866, 0.569992, 1.231772>,  <1.052038, 0.849877, 0.958990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.966866, 0.569992, 1.231772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945554, -0.028265, -0.324236,
		0.246147, -0.713865, -0.655597,
		-0.212931, -0.699712, 0.681956,
		0.902986, 0.360078, 1.436359>
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
