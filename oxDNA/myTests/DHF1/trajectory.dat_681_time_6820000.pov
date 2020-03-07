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
	<-0.419448, 1.581734, 4.828919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.527340, 1.214136, 4.943945>,  <-0.592075, 0.993577, 5.012960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.527340, 1.214136, 4.943945>,  <-0.419448, 1.581734, 4.828919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.527340, 1.214136, 4.943945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687488, -0.392889, -0.610736,
		0.674245, 0.032963, 0.737772,
		-0.269730, -0.918995, 0.287565,
		-0.608259, 0.938438, 5.030214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.190944, 1.266414, 5.110363>,  <-0.419448, 1.581734, 4.828919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.190944, 1.266414, 5.110363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.069523, 1.015262, 4.939837>,  <-0.225803, 0.864570, 4.837520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.069523, 1.015262, 4.939837>,  <0.190944, 1.266414, 5.110363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.069523, 1.015262, 4.939837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709321, -0.303741, -0.636086,
		0.269895, -0.716595, 0.643155,
		-0.651168, -0.627880, -0.426318,
		-0.264873, 0.826898, 4.811941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.492107, 0.645309, 5.092288>,  <0.190944, 1.266414, 5.110363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.492107, 0.645309, 5.092288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.279795, 0.681549, 4.755226>,  <0.152408, 0.703293, 4.552989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.279795, 0.681549, 4.755226>,  <0.492107, 0.645309, 5.092288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.279795, 0.681549, 4.755226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780231, -0.335995, -0.527586,
		-0.330921, -0.937497, 0.107659,
		-0.530783, 0.090590, -0.842653,
		0.120561, 0.708729, 4.502430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.432708, -0.020839, 4.639649>,  <0.492107, 0.645309, 5.092288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.432708, -0.020839, 4.639649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.383951, 0.309295, 4.419117>,  <0.354697, 0.507375, 4.286798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.383951, 0.309295, 4.419117>,  <0.432708, -0.020839, 4.639649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.383951, 0.309295, 4.419117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441098, -0.452560, -0.774999,
		-0.889143, -0.337656, -0.308890,
		-0.121892, 0.825335, -0.551330,
		0.347384, 0.556895, 4.253718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.226331, -0.271244, 4.016533>,  <0.432708, -0.020839, 4.639649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.226331, -0.271244, 4.016533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.365237, 0.094203, 3.931953>,  <0.448581, 0.313471, 3.881206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.365237, 0.094203, 3.931953>,  <0.226331, -0.271244, 4.016533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.365237, 0.094203, 3.931953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503769, -0.371931, -0.779669,
		-0.790964, 0.164231, -0.589411,
		0.347266, 0.913617, -0.211450,
		0.469417, 0.368288, 3.868519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.144026, -0.202162, 3.188815>,  <0.226331, -0.271244, 4.016533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.144026, -0.202162, 3.188815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.395606, 0.089139, 3.297678>,  <0.546554, 0.263920, 3.362996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.395606, 0.089139, 3.297678>,  <0.144026, -0.202162, 3.188815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.395606, 0.089139, 3.297678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539796, -0.157131, -0.827001,
		-0.559501, 0.667052, -0.491936,
		0.628951, 0.728253, 0.272157,
		0.584291, 0.307615, 3.379325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.286525, 0.300112, 2.641756>,  <0.144026, -0.202162, 3.188815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.286525, 0.300112, 2.641756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.601242, 0.370452, 2.878410>,  <0.790072, 0.412656, 3.020403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.601242, 0.370452, 2.878410>,  <0.286525, 0.300112, 2.641756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.601242, 0.370452, 2.878410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602322, -0.009438, -0.798197,
		-0.134780, 0.984372, -0.113344,
		0.786793, 0.175850, 0.591637,
		0.837280, 0.423207, 3.055901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.692846, 0.903584, 2.250386>,  <0.286525, 0.300112, 2.641756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.692846, 0.903584, 2.250386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.942744, 0.710269, 2.495703>,  <1.092683, 0.594280, 2.642893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.942744, 0.710269, 2.495703>,  <0.692846, 0.903584, 2.250386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.942744, 0.710269, 2.495703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720927, 0.055321, -0.690799,
		0.299927, 0.873712, 0.382976,
		0.624746, -0.483287, 0.613291,
		1.130168, 0.565283, 2.679690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.503196, 0.301469, 1.596835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.781223, 0.075303, 1.774458>,  <1.948040, -0.060397, 1.881032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.781223, 0.075303, 1.774458>,  <1.503196, 0.301469, 1.596835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.781223, 0.075303, 1.774458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216401, 0.424471, 0.879201,
		-0.685604, -0.707198, 0.172680,
		0.695067, -0.565416, 0.444057,
		1.989743, -0.094322, 1.907676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.298648, -0.148910, 2.193035>,  <1.503196, 0.301469, 1.596835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.298648, -0.148910, 2.193035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.681786, -0.051843, 2.254548>,  <1.911668, 0.006398, 2.291456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.681786, -0.051843, 2.254548>,  <1.298648, -0.148910, 2.193035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.681786, -0.051843, 2.254548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228739, 0.320302, 0.919285,
		0.173825, -0.915707, 0.362307,
		0.957843, 0.242668, 0.153782,
		1.969139, 0.020958, 2.300683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.636129, -0.514761, 2.781760>,  <1.298648, -0.148910, 2.193035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.636129, -0.514761, 2.781760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.705574, -0.123313, 2.737643>,  <1.747241, 0.111556, 2.711174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.705574, -0.123313, 2.737643>,  <1.636129, -0.514761, 2.781760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.705574, -0.123313, 2.737643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639925, 0.197228, 0.742696,
		0.748569, -0.058363, 0.660483,
		0.173611, 0.978619, -0.110291,
		1.757658, 0.170273, 2.704556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.958448, -0.092113, 3.405051>,  <1.636129, -0.514761, 2.781760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.958448, -0.092113, 3.405051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.702827, 0.132475, 3.194770>,  <1.549455, 0.267227, 3.068601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.702827, 0.132475, 3.194770>,  <1.958448, -0.092113, 3.405051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.702827, 0.132475, 3.194770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524618, 0.181643, 0.831734,
		0.562483, 0.807315, 0.178477,
		-0.639053, 0.561469, -0.525704,
		1.511112, 0.300916, 3.037059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.897387, 0.538198, 3.774143>,  <1.958448, -0.092113, 3.405051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.897387, 0.538198, 3.774143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.566929, 0.492652, 3.553411>,  <1.368654, 0.465324, 3.420971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.566929, 0.492652, 3.553411>,  <1.897387, 0.538198, 3.774143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.566929, 0.492652, 3.553411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552866, 0.352801, 0.754898,
		0.108729, 0.928744, -0.354418,
		-0.826146, -0.113866, -0.551831,
		1.319085, 0.458492, 3.387861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.473061, 1.114685, 3.836536>,  <1.897387, 0.538198, 3.774143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.473061, 1.114685, 3.836536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.192593, 0.861523, 3.705210>,  <1.024312, 0.709626, 3.626414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.192593, 0.861523, 3.705210>,  <1.473061, 1.114685, 3.836536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.192593, 0.861523, 3.705210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656192, 0.392720, 0.644347,
		-0.278874, 0.667235, -0.690671,
		-0.701171, -0.632905, -0.328315,
		0.982241, 0.671651, 3.606715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.920485, 1.556780, 3.540562>,  <1.473061, 1.114685, 3.836536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.920485, 1.556780, 3.540562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.769287, 1.196691, 3.627021>,  <0.678568, 0.980637, 3.678896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.769287, 1.196691, 3.627021>,  <0.920485, 1.556780, 3.540562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.769287, 1.196691, 3.627021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595830, 0.415238, 0.687433,
		-0.708595, 0.131060, -0.693337,
		-0.377995, -0.900222, 0.216146,
		0.655888, 0.926624, 3.691865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.203095, 1.582096, 3.447609>,  <0.920485, 1.556780, 3.540562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.203095, 1.582096, 3.447609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.280323, 1.283590, 3.702423>,  <0.326660, 1.104487, 3.855311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.280323, 1.283590, 3.702423>,  <0.203095, 1.582096, 3.447609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.280323, 1.283590, 3.702423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606811, 0.419383, 0.675203,
		-0.771042, -0.516920, -0.371872,
		0.193069, -0.746265, 0.637034,
		0.338244, 1.059711, 3.893533>
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
