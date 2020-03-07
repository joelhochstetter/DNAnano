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
	<3.544102, 2.622287, 4.626064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.626102, 2.446594, 4.276196>,  <3.675303, 2.341179, 4.066274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.626102, 2.446594, 4.276196>,  <3.544102, 2.622287, 4.626064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.626102, 2.446594, 4.276196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589720, -0.657800, 0.468539,
		-0.781156, -0.611862, 0.124175,
		0.205000, -0.439231, -0.874672,
		3.687603, 2.314825, 4.013794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.955245, 2.076187, 4.534867>,  <3.544102, 2.622287, 4.626064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.955245, 2.076187, 4.534867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.814774, 2.217972, 4.881516>,  <3.730491, 2.303043, 5.089505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.814774, 2.217972, 4.881516>,  <3.955245, 2.076187, 4.534867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.814774, 2.217972, 4.881516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792945, -0.604789, -0.073954,
		0.497909, -0.713154, 0.493456,
		-0.351177, 0.354461, 0.866621,
		3.709420, 2.324310, 5.141502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.759614, 1.466226, 4.965356>,  <3.955245, 2.076187, 4.534867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.759614, 1.466226, 4.965356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.543659, 1.801819, 4.992573>,  <3.414086, 2.003175, 5.008903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.543659, 1.801819, 4.992573>,  <3.759614, 1.466226, 4.965356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.543659, 1.801819, 4.992573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824370, -0.510682, -0.244170,
		-0.170106, -0.187916, 0.967342,
		-0.539887, 0.838982, 0.068042,
		3.381693, 2.053514, 5.012985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.277514, 1.536219, 5.483195>,  <3.759614, 1.466226, 4.965356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.277514, 1.536219, 5.483195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.133575, 1.733429, 5.166351>,  <3.047212, 1.851755, 4.976245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.133575, 1.733429, 5.166351>,  <3.277514, 1.536219, 5.483195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.133575, 1.733429, 5.166351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858870, -0.506704, 0.074792,
		-0.364490, 0.707231, 0.605781,
		-0.359847, 0.493026, -0.792108,
		3.025621, 1.881337, 4.928719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.679330, 2.003766, 5.609604>,  <3.277514, 1.536219, 5.483195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.679330, 2.003766, 5.609604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.639168, 1.895744, 5.226566>,  <2.615070, 1.830931, 4.996743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.639168, 1.895744, 5.226566>,  <2.679330, 2.003766, 5.609604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.639168, 1.895744, 5.226566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790445, -0.562867, 0.241616,
		-0.604248, 0.781186, -0.156948,
		-0.100406, -0.270055, -0.957595,
		2.609046, 1.814728, 4.939288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.027663, 1.887962, 5.495909>,  <2.679330, 2.003766, 5.609604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.027663, 1.887962, 5.495909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.180744, 1.693512, 5.181656>,  <2.272593, 1.576842, 4.993104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.180744, 1.693512, 5.181656>,  <2.027663, 1.887962, 5.495909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.180744, 1.693512, 5.181656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726039, -0.684118, 0.069637,
		-0.571318, 0.543750, -0.614762,
		0.382704, -0.486126, -0.785633,
		2.295555, 1.547674, 4.945966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.444957, 1.876343, 5.024175>,  <2.027663, 1.887962, 5.495909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.444957, 1.876343, 5.024175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.672394, 1.569305, 4.905853>,  <1.808856, 1.385083, 4.834860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.672394, 1.569305, 4.905853>,  <1.444957, 1.876343, 5.024175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.672394, 1.569305, 4.905853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760756, -0.627470, 0.165929,
		-0.312974, 0.130689, -0.940727,
		0.568593, -0.767595, -0.295804,
		1.842972, 1.339027, 4.817112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.002269, 1.509196, 4.523579>,  <1.444957, 1.876343, 5.024175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.002269, 1.509196, 4.523579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.284962, 1.275223, 4.682770>,  <1.454577, 1.134839, 4.778284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.284962, 1.275223, 4.682770>,  <1.002269, 1.509196, 4.523579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.284962, 1.275223, 4.682770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704011, -0.637104, 0.313795,
		0.070004, -0.501948, -0.862060,
		0.706731, -0.584933, 0.397976,
		1.496981, 1.099743, 4.802163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.268264, 0.086215, 5.241789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.578682, -0.078537, 5.432831>,  <0.764933, -0.177388, 5.547456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.578682, -0.078537, 5.432831>,  <0.268264, 0.086215, 5.241789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.578682, -0.078537, 5.432831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630638, 0.515111, -0.580479,
		-0.006931, 0.751675, 0.659497,
		0.776046, -0.411881, 0.477605,
		0.811496, -0.202101, 5.576112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.602111, 0.599697, 5.689143>,  <0.268264, 0.086215, 5.241789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.602111, 0.599697, 5.689143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.818511, 0.295670, 5.545135>,  <0.948351, 0.113253, 5.458731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.818511, 0.295670, 5.545135>,  <0.602111, 0.599697, 5.689143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.818511, 0.295670, 5.545135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641749, 0.649755, -0.407403,
		0.543579, -0.010637, 0.839291,
		0.540999, -0.760070, -0.360019,
		0.980811, 0.067649, 5.437129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.244059, 0.825875, 5.837485>,  <0.602111, 0.599697, 5.689143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.244059, 0.825875, 5.837485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.260232, 0.561295, 5.537926>,  <1.269936, 0.402546, 5.358190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.260232, 0.561295, 5.537926>,  <1.244059, 0.825875, 5.837485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.260232, 0.561295, 5.537926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635686, 0.595290, -0.491460,
		0.770888, -0.456193, 0.444544,
		0.040432, -0.661451, -0.748898,
		1.272362, 0.362859, 5.313256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.905172, 0.494577, 5.727674>,  <1.244059, 0.825875, 5.837485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.905172, 0.494577, 5.727674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.712260, 0.520554, 5.378231>,  <1.596513, 0.536140, 5.168565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.712260, 0.520554, 5.378231>,  <1.905172, 0.494577, 5.727674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.712260, 0.520554, 5.378231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800066, 0.438822, -0.409060,
		0.356792, -0.896224, -0.263593,
		-0.482280, 0.064942, -0.873607,
		1.567576, 0.540036, 5.116149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.392620, 0.270877, 5.252949>,  <1.905172, 0.494577, 5.727674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.392620, 0.270877, 5.252949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.132138, 0.533722, 5.101089>,  <1.975849, 0.691429, 5.009974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.132138, 0.533722, 5.101089>,  <2.392620, 0.270877, 5.252949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.132138, 0.533722, 5.101089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752040, 0.491642, -0.439005,
		-0.101825, -0.571393, -0.814335,
		-0.651205, 0.657114, -0.379649,
		1.936777, 0.730856, 4.987195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.703044, 0.427251, 4.599782>,  <2.392620, 0.270877, 5.252949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.703044, 0.427251, 4.599782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.422335, 0.705673, 4.660473>,  <2.253909, 0.872727, 4.696887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.422335, 0.705673, 4.660473>,  <2.703044, 0.427251, 4.599782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.422335, 0.705673, 4.660473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637413, 0.708612, -0.302611,
		-0.318150, -0.115651, -0.940960,
		-0.701773, 0.696056, 0.151728,
		2.211803, 0.914490, 4.705991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.676958, 0.827323, 3.951761>,  <2.703044, 0.427251, 4.599782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.676958, 0.827323, 3.951761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.573140, 1.064575, 4.256611>,  <2.510849, 1.206927, 4.439520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.573140, 1.064575, 4.256611>,  <2.676958, 0.827323, 3.951761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.573140, 1.064575, 4.256611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583654, 0.725075, -0.365532,
		-0.769405, 0.349945, -0.534373,
		-0.259544, 0.593131, 0.762123,
		2.495277, 1.242515, 4.485248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.521549, 1.463380, 3.682994>,  <2.676958, 0.827323, 3.951761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.521549, 1.463380, 3.682994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.552361, 1.553757, 4.071430>,  <2.570849, 1.607983, 4.304492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.552361, 1.553757, 4.071430>,  <2.521549, 1.463380, 3.682994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.552361, 1.553757, 4.071430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528161, 0.816850, -0.231952,
		-0.845643, 0.530760, -0.056410,
		0.077032, 0.225942, 0.971090,
		2.575471, 1.621539, 4.362757>
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
