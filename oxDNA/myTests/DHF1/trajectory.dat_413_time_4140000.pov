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
	<4.882989, 2.517315, 0.450017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.629448, 2.711418, 0.690933>,  <4.477323, 2.827880, 0.835483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.629448, 2.711418, 0.690933>,  <4.882989, 2.517315, 0.450017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.629448, 2.711418, 0.690933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697523, -0.695106, -0.174036,
		0.334204, -0.530426, 0.779074,
		-0.633853, 0.485258, 0.602291,
		4.439292, 2.856996, 0.871621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.642448, 2.052218, 1.097339>,  <4.882989, 2.517315, 0.450017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.642448, 2.052218, 1.097339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.387093, 2.315926, 0.938431>,  <4.233879, 2.474150, 0.843086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.387093, 2.315926, 0.938431>,  <4.642448, 2.052218, 1.097339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.387093, 2.315926, 0.938431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643605, -0.740290, -0.194274,
		-0.422174, 0.131662, 0.896903,
		-0.638390, 0.659269, -0.397269,
		4.195576, 2.513706, 0.819250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.929453, 2.017927, 1.400969>,  <4.642448, 2.052218, 1.097339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.929453, 2.017927, 1.400969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.903275, 2.142090, 1.021629>,  <3.887567, 2.216587, 0.794026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.903275, 2.142090, 1.021629>,  <3.929453, 2.017927, 1.400969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.903275, 2.142090, 1.021629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690484, -0.700198, -0.181533,
		-0.720380, 0.642939, 0.260156,
		-0.065446, 0.310406, -0.948349,
		3.883641, 2.235212, 0.737125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.282609, 2.282982, 1.267908>,  <3.929453, 2.017927, 1.400969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.282609, 2.282982, 1.267908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.455009, 2.145786, 0.934059>,  <3.558450, 2.063469, 0.733750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.455009, 2.145786, 0.934059>,  <3.282609, 2.282982, 1.267908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.455009, 2.145786, 0.934059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802350, -0.568890, -0.180550,
		-0.412881, 0.747477, -0.520391,
		0.431002, -0.342990, -0.834623,
		3.584310, 2.042889, 0.683672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.713727, 2.220357, 0.659590>,  <3.282609, 2.282982, 1.267908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.713727, 2.220357, 0.659590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.959728, 1.912350, 0.591660>,  <3.107329, 1.727545, 0.550901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.959728, 1.912350, 0.591660>,  <2.713727, 2.220357, 0.659590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.959728, 1.912350, 0.591660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774349, -0.549120, -0.314406,
		0.148843, 0.324866, -0.933974,
		0.615003, -0.770019, -0.169827,
		3.144229, 1.681344, 0.540711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.649479, 1.910595, -0.036275>,  <2.713727, 2.220357, 0.659590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.649479, 1.910595, -0.036275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.772816, 1.645653, 0.236843>,  <2.846818, 1.486688, 0.400714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.772816, 1.645653, 0.236843>,  <2.649479, 1.910595, -0.036275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.772816, 1.645653, 0.236843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743297, -0.615692, -0.261596,
		0.593662, -0.426859, -0.682171,
		0.308343, -0.662355, 0.682796,
		2.865319, 1.446946, 0.441682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.421542, 1.351000, -0.378574>,  <2.649479, 1.910595, -0.036275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.421542, 1.351000, -0.378574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.502975, 1.197510, -0.018284>,  <2.551836, 1.105416, 0.197891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.502975, 1.197510, -0.018284>,  <2.421542, 1.351000, -0.378574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.502975, 1.197510, -0.018284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651885, -0.739539, -0.167717,
		0.730479, -0.553025, -0.400703,
		0.203584, -0.383726, 0.900726,
		2.564051, 1.082392, 0.251934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.546693, 0.604324, -0.449975>,  <2.421542, 1.351000, -0.378574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.546693, 0.604324, -0.449975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.443233, 0.664364, -0.068279>,  <2.381158, 0.700388, 0.160738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.443233, 0.664364, -0.068279>,  <2.546693, 0.604324, -0.449975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.443233, 0.664364, -0.068279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818153, -0.559218, -0.133797,
		0.513544, -0.815319, 0.267446,
		-0.258648, 0.150101, 0.954239,
		2.365639, 0.709394, 0.217992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.967264, 0.906959, -0.106636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.104120, 0.557671, 0.032173>,  <1.186234, 0.348097, 0.115459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.104120, 0.557671, 0.032173>,  <0.967264, 0.906959, -0.106636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.104120, 0.557671, 0.032173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614732, 0.487322, 0.620179,
		-0.710666, 0.001139, 0.703529,
		0.342139, -0.873221, 0.347023,
		1.206762, 0.295704, 0.136280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.900986, 0.841490, 0.617217>,  <0.967264, 0.906959, -0.106636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.900986, 0.841490, 0.617217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.213972, 0.611038, 0.522709>,  <1.401764, 0.472767, 0.466004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.213972, 0.611038, 0.522709>,  <0.900986, 0.841490, 0.617217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.213972, 0.611038, 0.522709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518334, 0.392355, 0.759860,
		-0.345076, -0.717031, 0.605631,
		0.782466, -0.576129, -0.236269,
		1.448712, 0.438200, 0.451828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.361391, 1.045200, 1.168123>,  <0.900986, 0.841490, 0.617217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.361391, 1.045200, 1.168123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.586201, 0.816666, 0.928890>,  <1.721087, 0.679545, 0.785350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.586201, 0.816666, 0.928890>,  <1.361391, 1.045200, 1.168123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.586201, 0.816666, 0.928890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823367, 0.317646, 0.470286,
		-0.078713, -0.756753, 0.648945,
		0.562025, -0.571337, -0.598082,
		1.754808, 0.645265, 0.749465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.046952, 0.694812, 1.494908>,  <1.361391, 1.045200, 1.168123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.046952, 0.694812, 1.494908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.151073, 0.710129, 1.109001>,  <2.213546, 0.719319, 0.877457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.151073, 0.710129, 1.109001>,  <2.046952, 0.694812, 1.494908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.151073, 0.710129, 1.109001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874152, 0.414959, 0.252325,
		0.410001, -0.909034, 0.074542,
		0.260304, 0.038292, -0.964767,
		2.229165, 0.721616, 0.819571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.747707, 0.482211, 1.442119>,  <2.046952, 0.694812, 1.494908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.747707, 0.482211, 1.442119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.709970, 0.685524, 1.099716>,  <2.687329, 0.807512, 0.894275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.709970, 0.685524, 1.099716>,  <2.747707, 0.482211, 1.442119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.709970, 0.685524, 1.099716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938190, 0.333017, 0.094342,
		0.333017, -0.794196, -0.508283,
		-0.094342, 0.508283, -0.856007,
		2.681668, 0.838009, 0.842914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.378306, 0.523033, 1.218273>,  <2.747707, 0.482211, 1.442119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.378306, 0.523033, 1.218273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.211157, 0.788338, 0.969929>,  <3.110867, 0.947520, 0.820922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.211157, 0.788338, 0.969929>,  <3.378306, 0.523033, 1.218273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.211157, 0.788338, 0.969929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847748, 0.530384, -0.003977,
		0.326657, -0.527995, -0.783911,
		-0.417874, 0.663260, -0.620860,
		3.085795, 0.987316, 0.783671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.755065, 0.534663, 0.677921>,  <3.378306, 0.523033, 1.218273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.755065, 0.534663, 0.677921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.582176, 0.894814, 0.657890>,  <3.478443, 1.110904, 0.645872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.582176, 0.894814, 0.657890>,  <3.755065, 0.534663, 0.677921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.582176, 0.894814, 0.657890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899402, 0.426405, -0.096204,
		-0.065267, -0.086622, -0.994101,
		-0.432223, 0.900375, -0.050078,
		3.452509, 1.164926, 0.642867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.945665, 0.959108, 0.113543>,  <3.755065, 0.534663, 0.677921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.945665, 0.959108, 0.113543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847940, 1.209030, 0.410172>,  <3.789306, 1.358984, 0.588149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847940, 1.209030, 0.410172>,  <3.945665, 0.959108, 0.113543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.847940, 1.209030, 0.410172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922704, 0.384971, -0.020369,
		-0.298210, 0.679275, -0.670564,
		-0.244312, 0.624806, 0.741572,
		3.774647, 1.396472, 0.632643>
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
