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
	<4.003995, 2.742646, 2.397803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.844900, 2.943811, 2.704759>,  <3.749443, 3.064510, 2.888932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.844900, 2.943811, 2.704759>,  <4.003995, 2.742646, 2.397803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.844900, 2.943811, 2.704759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916479, 0.178346, 0.358133,
		0.043248, 0.845738, -0.531842,
		-0.397738, 0.502911, 0.767388,
		3.725579, 3.094684, 2.934975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.228832, 2.794118, 2.384422>,  <4.003995, 2.742646, 2.397803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.228832, 2.794118, 2.384422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.146818, 2.671307, 2.756162>,  <3.097610, 2.597620, 2.979207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.146818, 2.671307, 2.756162>,  <3.228832, 2.794118, 2.384422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.146818, 2.671307, 2.756162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943618, 0.314144, -0.104399,
		-0.259896, -0.898358, -0.354127,
		-0.205034, -0.307028, 0.929352,
		3.085308, 2.579199, 3.034968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.166575, 2.551296, 1.626439>,  <3.228832, 2.794118, 2.384422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.166575, 2.551296, 1.626439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.959013, 2.563506, 1.968154>,  <2.834476, 2.570831, 2.173183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.959013, 2.563506, 1.968154>,  <3.166575, 2.551296, 1.626439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.959013, 2.563506, 1.968154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854498, -0.046447, -0.517374,
		0.023888, -0.998454, 0.050183,
		-0.518905, 0.030522, 0.854287,
		2.803342, 2.572663, 2.224440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.745366, 1.937441, 1.704121>,  <3.166575, 2.551296, 1.626439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.745366, 1.937441, 1.704121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.603886, 2.293177, 1.820032>,  <2.518997, 2.506618, 1.889579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.603886, 2.293177, 1.820032>,  <2.745366, 1.937441, 1.704121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.603886, 2.293177, 1.820032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685544, -0.035717, -0.727155,
		-0.636337, -0.455850, 0.622314,
		-0.353701, 0.889339, 0.289777,
		2.497775, 2.559979, 1.906966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.937061, 2.027851, 1.720418>,  <2.745366, 1.937441, 1.704121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.937061, 2.027851, 1.720418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.125509, 2.363010, 1.610165>,  <2.238578, 2.564106, 1.544013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.125509, 2.363010, 1.610165>,  <1.937061, 2.027851, 1.720418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.125509, 2.363010, 1.610165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527308, 0.017037, -0.849503,
		-0.707101, 0.545561, 0.449857,
		0.471120, 0.837898, -0.275632,
		2.266845, 2.614379, 1.527475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.506706, 2.641260, 1.441943>,  <1.937061, 2.027851, 1.720418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.506706, 2.641260, 1.441943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.869509, 2.710193, 1.288248>,  <2.087191, 2.751553, 1.196031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.869509, 2.710193, 1.288248>,  <1.506706, 2.641260, 1.441943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.869509, 2.710193, 1.288248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414135, 0.199596, -0.888062,
		-0.076349, 0.964605, 0.252404,
		0.907008, 0.172332, -0.384238,
		2.141611, 2.761893, 1.172977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.521620, 3.376468, 1.145138>,  <1.506706, 2.641260, 1.441943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.521620, 3.376468, 1.145138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778824, 3.123695, 0.972071>,  <1.933146, 2.972032, 0.868230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778824, 3.123695, 0.972071>,  <1.521620, 3.376468, 1.145138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.778824, 3.123695, 0.972071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427861, 0.172152, -0.887298,
		0.635197, 0.755663, -0.159684,
		0.643009, -0.631931, -0.432669,
		1.971726, 2.934116, 0.842270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.895411, 3.684953, 0.650952>,  <1.521620, 3.376468, 1.145138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.895411, 3.684953, 0.650952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.926640, 3.297645, 0.555994>,  <1.945377, 3.065260, 0.499019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.926640, 3.297645, 0.555994>,  <1.895411, 3.684953, 0.650952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.926640, 3.297645, 0.555994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531256, 0.161090, -0.831756,
		0.843607, 0.191054, -0.501823,
		0.078072, -0.968271, -0.237395,
		1.950061, 3.007163, 0.484776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.842340, -0.171383, 2.585220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.601622, -0.487370, 2.632193>,  <1.457191, -0.676963, 2.660376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.601622, -0.487370, 2.632193>,  <1.842340, -0.171383, 2.585220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.601622, -0.487370, 2.632193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703860, 0.594085, 0.389415,
		-0.377391, 0.151692, -0.913545,
		-0.601795, -0.789970, 0.117433,
		1.421083, -0.724361, 2.667422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.136423, -0.074134, 2.169459>,  <1.842340, -0.171383, 2.585220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.136423, -0.074134, 2.169459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.216446, -0.257088, 2.516048>,  <1.264460, -0.366860, 2.724002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.216446, -0.257088, 2.516048>,  <1.136423, -0.074134, 2.169459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.216446, -0.257088, 2.516048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305043, 0.811322, 0.498703,
		-0.931088, -0.364081, 0.022789,
		0.200058, -0.457385, 0.866473,
		1.276464, -0.394303, 2.775990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.565379, -0.281749, 2.623382>,  <1.136423, -0.074134, 2.169459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.565379, -0.281749, 2.623382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.897336, -0.162149, 2.811798>,  <1.096510, -0.090390, 2.924848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.897336, -0.162149, 2.811798>,  <0.565379, -0.281749, 2.623382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.897336, -0.162149, 2.811798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438185, 0.871911, 0.218551,
		-0.345359, -0.387777, 0.854609,
		0.829892, 0.298998, 0.471040,
		1.146304, -0.072450, 2.953110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.721637, -0.222656, 3.379789>,  <0.565379, -0.281749, 2.623382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.721637, -0.222656, 3.379789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.862711, 0.053938, 3.127611>,  <0.947356, 0.219894, 2.976304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.862711, 0.053938, 3.127611>,  <0.721637, -0.222656, 3.379789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.862711, 0.053938, 3.127611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610783, 0.680537, 0.404739,
		0.708913, 0.242323, 0.662361,
		0.352683, 0.691483, -0.630448,
		0.968517, 0.261383, 2.938477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.069210, 0.473185, 3.665628>,  <0.721637, -0.222656, 3.379789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.069210, 0.473185, 3.665628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.916293, 0.551465, 3.304396>,  <0.824542, 0.598433, 3.087656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.916293, 0.551465, 3.304396>,  <1.069210, 0.473185, 3.665628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.916293, 0.551465, 3.304396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626818, 0.663156, 0.409052,
		0.678935, 0.722445, -0.130852,
		-0.382293, 0.195699, -0.903080,
		0.801605, 0.610175, 3.033472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.917964, 1.202375, 3.674929>,  <1.069210, 0.473185, 3.665628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.917964, 1.202375, 3.674929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.702461, 1.058832, 3.370046>,  <0.573158, 0.972706, 3.187116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.702461, 1.058832, 3.370046>,  <0.917964, 1.202375, 3.674929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.702461, 1.058832, 3.370046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723940, 0.659929, 0.201007,
		0.430870, 0.660087, -0.615334,
		-0.538759, -0.358857, -0.762208,
		0.540833, 0.951175, 3.141383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.678818, 1.814690, 3.347359>,  <0.917964, 1.202375, 3.674929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.678818, 1.814690, 3.347359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.439423, 1.514382, 3.235533>,  <0.295786, 1.334198, 3.168437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.439423, 1.514382, 3.235533>,  <0.678818, 1.814690, 3.347359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.439423, 1.514382, 3.235533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796970, 0.593474, 0.112371,
		0.081550, 0.290057, -0.953528,
		-0.598488, -0.750770, -0.279565,
		0.259877, 1.289151, 3.151663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.195960, 2.172974, 2.788078>,  <0.678818, 1.814690, 3.347359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.195960, 2.172974, 2.788078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.052287, 1.832788, 2.941804>,  <-0.033917, 1.628677, 3.034040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.052287, 1.832788, 2.941804>,  <0.195960, 2.172974, 2.788078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.052287, 1.832788, 2.941804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871341, 0.453100, 0.188322,
		-0.334295, -0.267230, -0.903789,
		-0.359182, -0.850464, 0.384317,
		-0.055468, 1.577649, 3.057100>
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
