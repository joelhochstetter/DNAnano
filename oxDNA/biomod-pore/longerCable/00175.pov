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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.236000, 35.005127, 34.783367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297678, 34.865547, 35.153114>,  <24.334684, 34.781799, 35.374962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297678, 34.865547, 35.153114>,  <24.236000, 35.005127, 34.783367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297678, 34.865547, 35.153114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060236, -0.937137, -0.343725,
		0.986202, -0.002679, -0.165523,
		0.154197, -0.348952, 0.924368,
		24.343937, 34.760860, 35.430424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876688, 34.615929, 34.950092>,  <24.236000, 35.005127, 34.783367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876688, 34.615929, 34.950092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545109, 34.499973, 35.141426>,  <24.346161, 34.430401, 35.256226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545109, 34.499973, 35.141426>,  <24.876688, 34.615929, 34.950092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.545109, 34.499973, 35.141426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018448, -0.840571, -0.541387,
		0.559020, -0.457606, 0.691443,
		-0.828949, -0.289890, 0.478337,
		24.296425, 34.413006, 35.284927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.952234, 33.958107, 35.056400>,  <24.876688, 34.615929, 34.950092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.952234, 33.958107, 35.056400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.556736, 34.009632, 35.025978>,  <24.319437, 34.040546, 35.007725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.556736, 34.009632, 35.025978>,  <24.952234, 33.958107, 35.056400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.556736, 34.009632, 35.025978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069653, -0.846380, -0.528005,
		-0.132389, -0.516766, 0.845829,
		-0.988748, 0.128816, -0.076057,
		24.260111, 34.048279, 35.003162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064371, 33.932575, 35.785347>,  <24.952234, 33.958107, 35.056400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064371, 33.932575, 35.785347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.773136, 33.708260, 35.627663>,  <24.598394, 33.573669, 35.533054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.773136, 33.708260, 35.627663>,  <25.064371, 33.932575, 35.785347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.773136, 33.708260, 35.627663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562375, -0.817492, 0.124261,
		-0.391946, -0.131220, 0.910582,
		-0.728088, -0.560792, -0.394208,
		24.554710, 33.540024, 35.509399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.648375, 33.462563, 36.225071>,  <25.064371, 33.932575, 35.785347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.648375, 33.462563, 36.225071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754477, 33.340004, 35.859390>,  <24.818138, 33.266468, 35.639980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754477, 33.340004, 35.859390>,  <24.648375, 33.462563, 36.225071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754477, 33.340004, 35.859390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505955, -0.762899, 0.402487,
		-0.820761, -0.569307, -0.047343,
		0.265257, -0.306392, -0.914201,
		24.834053, 33.248085, 35.585129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424831, 34.165237, 36.495071>,  <24.648375, 33.462563, 36.225071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424831, 34.165237, 36.495071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668795, 34.123875, 36.809349>,  <24.815172, 34.099056, 36.997917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668795, 34.123875, 36.809349>,  <24.424831, 34.165237, 36.495071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.668795, 34.123875, 36.809349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466233, 0.848530, -0.250247,
		-0.640810, 0.518945, 0.565737,
		0.609909, -0.103404, 0.785696,
		24.851767, 34.092854, 37.045059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.359234, 34.721222, 36.878418>,  <24.424831, 34.165237, 36.495071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.359234, 34.721222, 36.878418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722662, 34.569992, 36.949482>,  <24.940718, 34.479256, 36.992123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722662, 34.569992, 36.949482>,  <24.359234, 34.721222, 36.878418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.722662, 34.569992, 36.949482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416307, 0.854630, -0.310316,
		-0.034516, 0.355907, 0.933884,
		0.908569, -0.378071, 0.177665,
		24.995234, 34.456570, 37.002781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791311, 35.298748, 37.079613>,  <24.359234, 34.721222, 36.878418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791311, 35.298748, 37.079613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051811, 35.021564, 36.955883>,  <25.208111, 34.855255, 36.881645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051811, 35.021564, 36.955883>,  <24.791311, 35.298748, 37.079613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051811, 35.021564, 36.955883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626645, 0.720976, -0.295821,
		0.428010, -0.001185, 0.903773,
		0.651248, -0.692959, -0.309328,
		25.247185, 34.813675, 36.863083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476496, 35.466919, 37.392673>,  <24.791311, 35.298748, 37.079613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476496, 35.466919, 37.392673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506544, 35.268250, 37.046803>,  <25.524572, 35.149048, 36.839279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506544, 35.268250, 37.046803>,  <25.476496, 35.466919, 37.392673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506544, 35.268250, 37.046803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469788, 0.782497, -0.408653,
		0.879577, -0.375519, 0.292113,
		0.075121, -0.496673, -0.864681,
		25.529079, 35.119247, 36.787399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176519, 35.615223, 37.190784>,  <25.476496, 35.466919, 37.392673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176519, 35.615223, 37.190784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005835, 35.472469, 36.858387>,  <25.903423, 35.386818, 36.658947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005835, 35.472469, 36.858387>,  <26.176519, 35.615223, 37.190784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005835, 35.472469, 36.858387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395369, 0.752781, -0.526312,
		0.813390, -0.553132, -0.180118,
		-0.426709, -0.356883, -0.830995,
		25.877821, 35.365406, 36.609089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660105, 35.759144, 36.588203>,  <26.176519, 35.615223, 37.190784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660105, 35.759144, 36.588203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301092, 35.709442, 36.418968>,  <26.085686, 35.679619, 36.317429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301092, 35.709442, 36.418968>,  <26.660105, 35.759144, 36.588203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301092, 35.709442, 36.418968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157710, 0.805552, -0.571151,
		0.411788, -0.579350, -0.703410,
		-0.897529, -0.124258, -0.423085,
		26.031834, 35.672165, 36.292042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708542, 35.954578, 35.863560>,  <26.660105, 35.759144, 36.588203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708542, 35.954578, 35.863560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317047, 35.947887, 35.945335>,  <26.082150, 35.943874, 35.994400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317047, 35.947887, 35.945335>,  <26.708542, 35.954578, 35.863560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317047, 35.947887, 35.945335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110121, 0.883712, -0.454891,
		-0.173055, -0.467731, -0.866764,
		-0.978736, -0.016728, 0.204438,
		26.023426, 35.942867, 36.006668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377884, 36.737164, 35.857964>,  <26.708542, 35.954578, 35.863560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377884, 36.737164, 35.857964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051611, 36.869930, 35.668442>,  <25.855846, 36.949593, 35.554729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051611, 36.869930, 35.668442>,  <26.377884, 36.737164, 35.857964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051611, 36.869930, 35.668442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444977, -0.883356, 0.147231,
		-0.369667, 0.330925, 0.868237,
		-0.815685, 0.331920, -0.473801,
		25.806906, 36.969505, 35.526302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673775, 36.787823, 36.276157>,  <26.377884, 36.737164, 35.857964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673775, 36.787823, 36.276157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652693, 36.699310, 35.886642>,  <25.640043, 36.646202, 35.652935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652693, 36.699310, 35.886642>,  <25.673775, 36.787823, 36.276157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652693, 36.699310, 35.886642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308946, -0.923687, 0.226615,
		-0.949618, 0.312791, -0.019680,
		-0.052705, -0.221278, -0.973786,
		25.636881, 36.632927, 35.594505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957430, 36.644634, 36.005138>,  <25.673775, 36.787823, 36.276157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957430, 36.644634, 36.005138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246799, 36.458557, 35.801079>,  <25.420422, 36.346909, 35.678642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246799, 36.458557, 35.801079>,  <24.957430, 36.644634, 36.005138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.246799, 36.458557, 35.801079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227671, -0.858322, 0.459836,
		-0.651786, -0.216510, -0.726841,
		0.723423, -0.465195, -0.510150,
		25.463827, 36.319000, 35.648033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872587, 36.087997, 35.845451>,  <24.957430, 36.644634, 36.005138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872587, 36.087997, 35.845451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260315, 35.994125, 35.816216>,  <25.492952, 35.937801, 35.798676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260315, 35.994125, 35.816216>,  <24.872587, 36.087997, 35.845451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260315, 35.994125, 35.816216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180831, -0.882260, 0.434647,
		-0.166487, -0.408095, -0.897630,
		0.969320, -0.234683, -0.073089,
		25.551111, 35.923721, 35.794289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.908155, 35.426304, 35.687450>,  <24.872587, 36.087997, 35.845451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.908155, 35.426304, 35.687450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254391, 35.508335, 35.870182>,  <25.462132, 35.557556, 35.979820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254391, 35.508335, 35.870182>,  <24.908155, 35.426304, 35.687450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254391, 35.508335, 35.870182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076047, -0.847873, 0.524717,
		0.494946, -0.488930, -0.718314,
		0.865589, 0.205081, 0.456833,
		25.514067, 35.569859, 36.007233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352957, 34.885597, 35.534367>,  <24.908155, 35.426304, 35.687450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352957, 34.885597, 35.534367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491524, 35.044365, 35.874355>,  <25.574665, 35.139626, 36.078350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491524, 35.044365, 35.874355>,  <25.352957, 34.885597, 35.534367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491524, 35.044365, 35.874355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239862, -0.838477, 0.489308,
		0.906896, -0.373382, -0.195260,
		0.346420, 0.396916, 0.849971,
		25.595449, 35.163441, 36.129345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765654, 34.277027, 35.827206>,  <25.352957, 34.885597, 35.534367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765654, 34.277027, 35.827206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698709, 34.542110, 36.119179>,  <25.658543, 34.701160, 36.294365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698709, 34.542110, 36.119179>,  <25.765654, 34.277027, 35.827206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698709, 34.542110, 36.119179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167845, -0.748722, 0.641282,
		0.971503, -0.015191, 0.236539,
		-0.167361, 0.662710, 0.729936,
		25.648500, 34.740925, 36.338158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013191, 33.912426, 36.409904>,  <25.765654, 34.277027, 35.827206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013191, 33.912426, 36.409904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776215, 34.204269, 36.546547>,  <25.634029, 34.379375, 36.628532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776215, 34.204269, 36.546547>,  <26.013191, 33.912426, 36.409904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776215, 34.204269, 36.546547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470378, -0.657518, 0.588570,
		0.654032, 0.188011, 0.732730,
		-0.592441, 0.729604, 0.341602,
		25.598482, 34.423149, 36.649029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149975, 34.021240, 37.104122>,  <26.013191, 33.912426, 36.409904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149975, 34.021240, 37.104122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774797, 34.093674, 36.985821>,  <25.549690, 34.137135, 36.914841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774797, 34.093674, 36.985821>,  <26.149975, 34.021240, 37.104122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774797, 34.093674, 36.985821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321924, -0.771763, 0.548405,
		-0.128942, 0.609582, 0.782166,
		-0.937944, 0.181086, -0.295751,
		25.493414, 34.147999, 36.897095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709932, 33.969959, 37.733089>,  <26.149975, 34.021240, 37.104122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709932, 33.969959, 37.733089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444693, 33.915520, 37.438667>,  <25.285549, 33.882854, 37.262012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444693, 33.915520, 37.438667>,  <25.709932, 33.969959, 37.733089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444693, 33.915520, 37.438667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510067, -0.637532, 0.577394,
		-0.547843, 0.758307, 0.353326,
		-0.663098, -0.136101, -0.736055,
		25.245764, 33.874691, 37.217850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661829, 34.808178, 37.770226>,  <25.709932, 33.969959, 37.733089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661829, 34.808178, 37.770226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347551, 34.616982, 37.613148>,  <25.158985, 34.502266, 37.518902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347551, 34.616982, 37.613148>,  <25.661829, 34.808178, 37.770226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347551, 34.616982, 37.613148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560484, -0.818694, -0.124889,
		-0.261804, -0.318225, 0.911148,
		-0.785695, -0.477988, -0.392697,
		25.111843, 34.473587, 37.495338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510900, 34.336189, 38.382004>,  <25.661829, 34.808178, 37.770226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510900, 34.336189, 38.382004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900532, 34.386444, 38.306755>,  <26.134310, 34.416595, 38.261608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900532, 34.386444, 38.306755>,  <25.510900, 34.336189, 38.382004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900532, 34.386444, 38.306755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226171, -0.557198, 0.798985,
		-0.004440, -0.820820, -0.571169,
		0.974077, 0.125634, -0.188120,
		26.192755, 34.424133, 38.250320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735046, 33.699368, 38.705845>,  <25.510900, 34.336189, 38.382004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735046, 33.699368, 38.705845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992199, 34.005718, 38.701199>,  <26.146490, 34.189529, 38.698410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992199, 34.005718, 38.701199>,  <25.735046, 33.699368, 38.705845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992199, 34.005718, 38.701199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309743, -0.246066, 0.918429,
		0.700543, -0.594041, -0.395416,
		0.642883, 0.765876, -0.011620,
		26.185064, 34.235481, 38.697712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411409, 33.459118, 38.640186>,  <25.735046, 33.699368, 38.705845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411409, 33.459118, 38.640186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428085, 33.822639, 38.806240>,  <26.438091, 34.040752, 38.905872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428085, 33.822639, 38.806240>,  <26.411409, 33.459118, 38.640186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428085, 33.822639, 38.806240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369128, -0.400114, 0.838840,
		0.928443, 0.118267, -0.352145,
		0.041691, 0.908802, 0.415139,
		26.440592, 34.095280, 38.930782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116558, 33.095913, 38.622204>,  <26.411409, 33.459118, 38.640186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116558, 33.095913, 38.622204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812944, 32.876766, 38.481514>,  <26.630775, 32.745277, 38.397099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812944, 32.876766, 38.481514>,  <27.116558, 33.095913, 38.622204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812944, 32.876766, 38.481514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546871, -0.243379, -0.801061,
		0.353269, -0.800382, 0.484344,
		-0.759034, -0.547864, -0.351728,
		26.585234, 32.712406, 38.375996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381447, 32.420521, 38.631069>,  <27.116558, 33.095913, 38.622204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381447, 32.420521, 38.631069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090620, 32.482586, 38.363548>,  <26.916124, 32.519825, 38.203037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090620, 32.482586, 38.363548>,  <27.381447, 32.420521, 38.631069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090620, 32.482586, 38.363548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625122, -0.253186, -0.738322,
		-0.283895, -0.954893, 0.087084,
		-0.727066, 0.155168, -0.668803,
		26.872499, 32.529133, 38.162907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170641, 31.787502, 38.237293>,  <27.381447, 32.420521, 38.631069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170641, 31.787502, 38.237293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152142, 32.126266, 38.025406>,  <27.141043, 32.329525, 37.898273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152142, 32.126266, 38.025406>,  <27.170641, 31.787502, 38.237293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152142, 32.126266, 38.025406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688336, -0.357278, -0.631304,
		-0.723916, -0.393822, -0.566436,
		-0.046246, 0.846910, -0.529722,
		27.138268, 32.380341, 37.866489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942690, 31.706600, 37.496243>,  <27.170641, 31.787502, 38.237293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942690, 31.706600, 37.496243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197086, 32.007015, 37.567188>,  <27.349724, 32.187263, 37.609756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197086, 32.007015, 37.567188>,  <26.942690, 31.706600, 37.496243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197086, 32.007015, 37.567188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666701, -0.419006, -0.616396,
		-0.388621, 0.510269, -0.767202,
		0.635990, 0.751039, 0.177362,
		27.387884, 32.232327, 37.620396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240685, 32.104412, 36.848373>,  <26.942690, 31.706600, 37.496243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240685, 32.104412, 36.848373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488298, 32.075768, 37.161209>,  <27.636868, 32.058582, 37.348911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488298, 32.075768, 37.161209>,  <27.240685, 32.104412, 36.848373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488298, 32.075768, 37.161209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689157, -0.428050, -0.584667,
		0.376641, 0.900914, -0.215630,
		0.619035, -0.071607, 0.782092,
		27.674009, 32.054287, 37.395836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890642, 32.412971, 36.682766>,  <27.240685, 32.104412, 36.848373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890642, 32.412971, 36.682766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970467, 32.139393, 36.963448>,  <28.018360, 31.975245, 37.131855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970467, 32.139393, 36.963448>,  <27.890642, 32.412971, 36.682766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970467, 32.139393, 36.963448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684069, -0.415486, -0.599517,
		0.701588, 0.599654, 0.384954,
		0.199559, -0.683949, 0.701705,
		28.030334, 31.934208, 37.173958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596418, 32.321796, 36.805325>,  <27.890642, 32.412971, 36.682766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596418, 32.321796, 36.805325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446968, 31.959044, 36.883263>,  <28.357298, 31.741392, 36.930027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446968, 31.959044, 36.883263>,  <28.596418, 32.321796, 36.805325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446968, 31.959044, 36.883263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757839, -0.419571, -0.499640,
		0.534867, -0.039018, 0.844035,
		-0.373628, -0.906883, 0.194846,
		28.334879, 31.686979, 36.941715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016872, 31.677536, 37.074589>,  <28.596418, 32.321796, 36.805325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016872, 31.677536, 37.074589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725391, 31.553366, 36.830418>,  <28.550503, 31.478863, 36.683914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725391, 31.553366, 36.830418>,  <29.016872, 31.677536, 37.074589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725391, 31.553366, 36.830418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657382, -0.067259, -0.750550,
		0.191934, -0.948215, 0.253081,
		-0.728704, -0.310427, -0.610430,
		28.506781, 31.460238, 36.647289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341330, 30.935385, 36.892223>,  <29.016872, 31.677536, 37.074589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341330, 30.935385, 36.892223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202568, 30.884657, 37.263939>,  <29.119310, 30.854219, 37.486969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202568, 30.884657, 37.263939>,  <29.341330, 30.935385, 36.892223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202568, 30.884657, 37.263939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618189, 0.776049, -0.124864,
		-0.705336, -0.617791, -0.347614,
		-0.346906, -0.126820, 0.929287,
		29.098495, 30.846611, 37.542725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508055, 30.713589, 37.134834>,  <29.341330, 30.935385, 36.892223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508055, 30.713589, 37.134834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703415, 30.958857, 37.383186>,  <28.820631, 31.106018, 37.532196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703415, 30.958857, 37.383186>,  <28.508055, 30.713589, 37.134834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703415, 30.958857, 37.383186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667242, 0.720951, -0.187130,
		-0.562366, -0.322882, 0.761244,
		0.488399, 0.613169, 0.620879,
		28.849934, 31.142807, 37.569450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027716, 30.805937, 37.597050>,  <28.508055, 30.713589, 37.134834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027716, 30.805937, 37.597050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215954, 31.129332, 37.455688>,  <28.328897, 31.323368, 37.370872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215954, 31.129332, 37.455688>,  <28.027716, 30.805937, 37.597050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215954, 31.129332, 37.455688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714569, 0.584170, 0.384886,
		0.517618, 0.071400, 0.852627,
		0.470598, 0.808485, -0.353397,
		28.357134, 31.371878, 37.349670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211479, 31.141684, 38.189941>,  <28.027716, 30.805937, 37.597050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211479, 31.141684, 38.189941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174078, 31.388624, 37.877499>,  <28.151636, 31.536789, 37.690033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174078, 31.388624, 37.877499>,  <28.211479, 31.141684, 38.189941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174078, 31.388624, 37.877499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605189, 0.587727, 0.536958,
		0.790572, 0.522927, 0.318659,
		-0.093505, 0.617353, -0.781110,
		28.146027, 31.573830, 37.643166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359207, 31.761417, 38.438251>,  <28.211479, 31.141684, 38.189941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359207, 31.761417, 38.438251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123343, 31.829096, 38.122360>,  <27.981823, 31.869703, 37.932827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123343, 31.829096, 38.122360>,  <28.359207, 31.761417, 38.438251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123343, 31.829096, 38.122360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478539, 0.714498, 0.510385,
		0.650615, 0.678871, -0.340345,
		-0.589661, 0.169196, -0.789729,
		27.946444, 31.879854, 37.885441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425116, 32.485714, 38.071045>,  <28.359207, 31.761417, 38.438251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425116, 32.485714, 38.071045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053562, 32.337929, 38.060692>,  <27.830629, 32.249256, 38.054482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053562, 32.337929, 38.060692>,  <28.425116, 32.485714, 38.071045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053562, 32.337929, 38.060692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354514, 0.866708, 0.350910,
		-0.107216, 0.335130, -0.936051,
		-0.928883, -0.369466, -0.025884,
		27.774897, 32.227089, 38.052925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068815, 32.738991, 38.127823>,  <28.425116, 32.485714, 38.071045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068815, 32.738991, 38.127823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448208, 32.614113, 38.149445>,  <29.675842, 32.539185, 38.162418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448208, 32.614113, 38.149445>,  <29.068815, 32.738991, 38.127823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448208, 32.614113, 38.149445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120710, -0.513789, -0.849382,
		0.292942, 0.799097, -0.525003,
		0.948480, -0.312193, 0.054051,
		29.732752, 32.520454, 38.165661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219137, 33.363823, 37.806175>,  <29.068815, 32.738991, 38.127823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219137, 33.363823, 37.806175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435673, 33.474487, 38.123768>,  <29.565594, 33.540886, 38.314323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435673, 33.474487, 38.123768>,  <29.219137, 33.363823, 37.806175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435673, 33.474487, 38.123768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740382, 0.290690, -0.606081,
		-0.398480, 0.915948, -0.047471,
		0.541339, 0.276658, 0.793985,
		29.598074, 33.557484, 38.361965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564610, 33.994091, 37.739502>,  <29.219137, 33.363823, 37.806175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564610, 33.994091, 37.739502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779453, 33.782223, 38.002090>,  <29.908360, 33.655102, 38.159645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779453, 33.782223, 38.002090>,  <29.564610, 33.994091, 37.739502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779453, 33.782223, 38.002090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827133, 0.178095, -0.533041,
		0.165422, 0.829294, 0.533767,
		0.537109, -0.529673, 0.656476,
		29.940586, 33.623322, 38.199032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200575, 34.301289, 37.763977>,  <29.564610, 33.994091, 37.739502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200575, 34.301289, 37.763977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281382, 33.925407, 37.874363>,  <30.329866, 33.699879, 37.940594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281382, 33.925407, 37.874363>,  <30.200575, 34.301289, 37.763977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281382, 33.925407, 37.874363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830497, 0.015019, -0.556820,
		0.519098, 0.341673, 0.783451,
		0.202017, -0.939699, 0.275962,
		30.341988, 33.643497, 37.957153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041080, 34.852066, 37.244720>,  <30.200575, 34.301289, 37.763977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041080, 34.852066, 37.244720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424088, 34.817749, 37.354847>,  <30.653893, 34.797157, 37.420921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424088, 34.817749, 37.354847>,  <30.041080, 34.852066, 37.244720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424088, 34.817749, 37.354847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265353, 0.635936, -0.724689,
		-0.112909, 0.766958, 0.631686,
		0.957517, -0.085796, 0.275317,
		30.711342, 34.792011, 37.437443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399399, 35.452843, 37.225796>,  <30.041080, 34.852066, 37.244720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399399, 35.452843, 37.225796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684347, 35.188637, 37.130932>,  <30.855316, 35.030113, 37.074013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684347, 35.188637, 37.130932>,  <30.399399, 35.452843, 37.225796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684347, 35.188637, 37.130932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318578, 0.605459, -0.729334,
		0.625326, 0.444003, 0.641738,
		0.712373, -0.660515, -0.237160,
		30.898060, 34.990482, 37.059784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085928, 35.707829, 37.382111>,  <30.399399, 35.452843, 37.225796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085928, 35.707829, 37.382111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047682, 35.467377, 37.064747>,  <31.024734, 35.323105, 36.874329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047682, 35.467377, 37.064747>,  <31.085928, 35.707829, 37.382111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047682, 35.467377, 37.064747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542560, 0.636781, -0.547849,
		0.834557, -0.482854, 0.265265,
		-0.095616, -0.601134, -0.793408,
		31.018997, 35.287037, 36.826725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654856, 35.349251, 37.285519>,  <31.085928, 35.707829, 37.382111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654856, 35.349251, 37.285519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453825, 35.415871, 36.946182>,  <31.333206, 35.455845, 36.742580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453825, 35.415871, 36.946182>,  <31.654856, 35.349251, 37.285519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453825, 35.415871, 36.946182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725637, 0.614688, -0.309208,
		0.469963, -0.770986, -0.429786,
		-0.502579, 0.166553, -0.848336,
		31.303051, 35.465836, 36.691681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387806, 35.493435, 37.089165>,  <31.654856, 35.349251, 37.285519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387806, 35.493435, 37.089165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632919, 35.556015, 36.779320>,  <32.779987, 35.593563, 36.593414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632919, 35.556015, 36.779320>,  <32.387806, 35.493435, 37.089165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632919, 35.556015, 36.779320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498547, -0.683996, -0.532542,
		-0.613146, 0.712512, -0.341144,
		0.612783, 0.156450, -0.774610,
		32.816753, 35.602951, 36.546936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036572, 35.594067, 36.456360>,  <32.387806, 35.493435, 37.089165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036572, 35.594067, 36.456360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398277, 35.483276, 36.326378>,  <32.615299, 35.416801, 36.248390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398277, 35.483276, 36.326378>,  <32.036572, 35.594067, 36.456360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398277, 35.483276, 36.326378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426722, -0.612452, -0.665440,
		-0.014706, 0.740396, -0.672009,
		0.904263, -0.276975, -0.324950,
		32.669556, 35.400185, 36.228893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862217, 35.293446, 35.871586>,  <32.036572, 35.594067, 36.456360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862217, 35.293446, 35.871586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235298, 35.154011, 35.908569>,  <32.459148, 35.070351, 35.930759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235298, 35.154011, 35.908569>,  <31.862217, 35.293446, 35.871586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235298, 35.154011, 35.908569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198942, -0.711156, -0.674299,
		0.300805, 0.610528, -0.732647,
		0.932705, -0.348587, 0.092459,
		32.515110, 35.049435, 35.936306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366516, 35.100628, 35.159016>,  <31.862217, 35.293446, 35.871586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366516, 35.100628, 35.159016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433571, 34.870476, 35.479225>,  <32.473804, 34.732384, 35.671349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433571, 34.870476, 35.479225>,  <32.366516, 35.100628, 35.159016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433571, 34.870476, 35.479225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242688, -0.811107, -0.532172,
		0.955511, -0.105065, -0.275610,
		0.167637, -0.575383, 0.800520,
		32.483860, 34.697861, 35.719379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911461, 34.596264, 35.002556>,  <32.366516, 35.100628, 35.159016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911461, 34.596264, 35.002556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627102, 34.500141, 35.266941>,  <32.456486, 34.442467, 35.425571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627102, 34.500141, 35.266941>,  <32.911461, 34.596264, 35.002556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627102, 34.500141, 35.266941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444592, -0.574656, -0.687101,
		0.544942, -0.782320, 0.301685,
		-0.710898, -0.240304, 0.660967,
		32.413834, 34.428051, 35.465233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300240, 33.896351, 34.958347>,  <32.911461, 34.596264, 35.002556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300240, 33.896351, 34.958347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291126, 33.564392, 35.181328>,  <33.285656, 33.365215, 35.315117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291126, 33.564392, 35.181328>,  <33.300240, 33.896351, 34.958347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291126, 33.564392, 35.181328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156051, 0.547805, 0.821923,
		-0.987486, 0.105719, 0.117024,
		-0.022786, -0.829899, 0.557448,
		33.284290, 33.315422, 35.348560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854630, 33.959538, 35.488476>,  <33.300240, 33.896351, 34.958347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854630, 33.959538, 35.488476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069271, 33.666782, 35.656475>,  <33.198055, 33.491131, 35.757275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069271, 33.666782, 35.656475>,  <32.854630, 33.959538, 35.488476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069271, 33.666782, 35.656475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337911, 0.269704, 0.901708,
		-0.773224, -0.625780, -0.102589,
		0.536602, -0.731887, 0.419999,
		33.230251, 33.447216, 35.782475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356911, 33.542747, 35.957317>,  <32.854630, 33.959538, 35.488476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356911, 33.542747, 35.957317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717548, 33.451611, 36.104408>,  <32.933929, 33.396927, 36.192661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717548, 33.451611, 36.104408>,  <32.356911, 33.542747, 35.957317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717548, 33.451611, 36.104408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313342, 0.242101, 0.918261,
		-0.298246, -0.943120, 0.146883,
		0.901591, -0.227843, 0.367725,
		32.988026, 33.383259, 36.214725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252193, 33.169437, 36.562351>,  <32.356911, 33.542747, 35.957317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252193, 33.169437, 36.562351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614983, 33.331539, 36.608253>,  <32.832657, 33.428802, 36.635796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614983, 33.331539, 36.608253>,  <32.252193, 33.169437, 36.562351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614983, 33.331539, 36.608253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282046, 0.382017, 0.880064,
		0.312815, -0.830559, 0.460780,
		0.906971, 0.405258, 0.114755,
		32.887074, 33.453117, 36.642681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361748, 33.105396, 37.231514>,  <32.252193, 33.169437, 36.562351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361748, 33.105396, 37.231514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620243, 33.393856, 37.131653>,  <32.775341, 33.566933, 37.071735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620243, 33.393856, 37.131653>,  <32.361748, 33.105396, 37.231514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620243, 33.393856, 37.131653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209216, 0.482020, 0.850815,
		0.733900, -0.497596, 0.462374,
		0.646235, 0.721149, -0.249649,
		32.814114, 33.610199, 37.056759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663467, 33.344429, 37.669235>,  <32.361748, 33.105396, 37.231514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663467, 33.344429, 37.669235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462347, 33.080196, 37.892239>,  <31.341675, 32.921658, 38.026043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462347, 33.080196, 37.892239>,  <31.663467, 33.344429, 37.669235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462347, 33.080196, 37.892239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544000, 0.259406, 0.797980,
		-0.671755, 0.704512, 0.228928,
		-0.502802, -0.660584, 0.557512,
		31.311506, 32.882023, 38.059494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101460, 33.908340, 37.752079>,  <31.663467, 33.344429, 37.669235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101460, 33.908340, 37.752079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412136, 34.086628, 37.930107>,  <32.598541, 34.193600, 38.036926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412136, 34.086628, 37.930107>,  <32.101460, 33.908340, 37.752079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412136, 34.086628, 37.930107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595640, -0.289913, -0.749109,
		-0.204856, 0.846929, -0.490658,
		0.776690, 0.445715, 0.445074,
		32.645142, 34.220341, 38.063629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357056, 34.527325, 37.406403>,  <32.101460, 33.908340, 37.752079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357056, 34.527325, 37.406403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628956, 34.302586, 37.594982>,  <32.792095, 34.167744, 37.708130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628956, 34.302586, 37.594982>,  <32.357056, 34.527325, 37.406403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628956, 34.302586, 37.594982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404968, -0.248410, -0.879939,
		0.611503, 0.789064, 0.058672,
		0.679753, -0.561846, 0.471449,
		32.832882, 34.134033, 37.736416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972870, 34.567497, 36.922478>,  <32.357056, 34.527325, 37.406403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972870, 34.567497, 36.922478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001835, 34.249454, 37.163334>,  <33.019215, 34.058628, 37.307846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001835, 34.249454, 37.163334>,  <32.972870, 34.567497, 36.922478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001835, 34.249454, 37.163334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424366, -0.521784, -0.740037,
		0.902590, 0.309117, 0.299628,
		0.072417, -0.795102, 0.602136,
		33.023560, 34.010925, 37.343975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698681, 34.400169, 36.852955>,  <32.972870, 34.567497, 36.922478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698681, 34.400169, 36.852955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466557, 34.089127, 36.949764>,  <33.327282, 33.902500, 37.007851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466557, 34.089127, 36.949764>,  <33.698681, 34.400169, 36.852955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466557, 34.089127, 36.949764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344693, -0.503766, -0.792090,
		0.737853, -0.376235, 0.560375,
		-0.580310, -0.777603, 0.242020,
		33.292465, 33.855846, 37.022369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141998, 33.775494, 36.837429>,  <33.698681, 34.400169, 36.852955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141998, 33.775494, 36.837429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758465, 33.672829, 36.788818>,  <33.528347, 33.611229, 36.759651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758465, 33.672829, 36.788818>,  <34.141998, 33.775494, 36.837429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758465, 33.672829, 36.788818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262510, -0.637849, -0.724042,
		0.108317, -0.726136, 0.678965,
		-0.958830, -0.256661, -0.121528,
		33.470814, 33.595829, 36.752361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141758, 33.142471, 36.733131>,  <34.141998, 33.775494, 36.837429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141758, 33.142471, 36.733131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803246, 33.247856, 36.547916>,  <33.600140, 33.311089, 36.436787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803246, 33.247856, 36.547916>,  <34.141758, 33.142471, 36.733131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803246, 33.247856, 36.547916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297040, -0.488158, -0.820652,
		-0.442241, -0.832040, 0.334861,
		-0.846280, 0.263459, -0.463033,
		33.549362, 33.326893, 36.409008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993488, 32.524506, 36.286621>,  <34.141758, 33.142471, 36.733131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993488, 32.524506, 36.286621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760246, 32.807491, 36.126877>,  <33.620300, 32.977283, 36.031033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760246, 32.807491, 36.126877>,  <33.993488, 32.524506, 36.286621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760246, 32.807491, 36.126877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128743, -0.404899, -0.905252,
		-0.802130, -0.579273, 0.145019,
		-0.583106, 0.707460, -0.399359,
		33.585316, 33.019730, 36.007069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342216, 32.391117, 35.827003>,  <33.993488, 32.524506, 36.286621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342216, 32.391117, 35.827003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537498, 32.720783, 35.712173>,  <33.654667, 32.918583, 35.643276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537498, 32.720783, 35.712173>,  <33.342216, 32.391117, 35.827003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537498, 32.720783, 35.712173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030938, -0.345073, -0.938066,
		-0.872179, 0.449090, -0.193965,
		0.488208, 0.824162, -0.287071,
		33.683960, 32.968033, 35.626053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078842, 32.601414, 35.081818>,  <33.342216, 32.391117, 35.827003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078842, 32.601414, 35.081818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442776, 32.756172, 35.141842>,  <33.661137, 32.849026, 35.177856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442776, 32.756172, 35.141842>,  <33.078842, 32.601414, 35.081818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442776, 32.756172, 35.141842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261672, -0.254224, -0.931073,
		-0.322078, 0.886387, -0.332540,
		0.909831, 0.386895, 0.150063,
		33.715725, 32.872242, 35.186859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276821, 33.158142, 34.577351>,  <33.078842, 32.601414, 35.081818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276821, 33.158142, 34.577351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623966, 33.026310, 34.726048>,  <33.832253, 32.947212, 34.815266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623966, 33.026310, 34.726048>,  <33.276821, 33.158142, 34.577351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623966, 33.026310, 34.726048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271772, -0.311432, -0.910577,
		0.415877, 0.891286, -0.180711,
		0.867863, -0.329576, 0.371744,
		33.884327, 32.927437, 34.837570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722328, 33.470467, 34.206852>,  <33.276821, 33.158142, 34.577351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722328, 33.470467, 34.206852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929817, 33.176670, 34.381874>,  <34.054310, 33.000393, 34.486889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929817, 33.176670, 34.381874>,  <33.722328, 33.470467, 34.206852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929817, 33.176670, 34.381874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468332, -0.184059, -0.864169,
		0.715258, 0.653184, 0.248509,
		0.518721, -0.734488, 0.437556,
		34.085434, 32.956326, 34.513142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386135, 33.634247, 34.107502>,  <33.722328, 33.470467, 34.206852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386135, 33.634247, 34.107502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407349, 33.237843, 34.156643>,  <34.420074, 33.000000, 34.186127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407349, 33.237843, 34.156643>,  <34.386135, 33.634247, 34.107502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407349, 33.237843, 34.156643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480412, -0.082532, -0.873151,
		0.875438, 0.105323, 0.471715,
		0.053031, -0.991007, 0.122850,
		34.423260, 32.940540, 34.193497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089195, 33.437862, 34.143028>,  <34.386135, 33.634247, 34.107502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089195, 33.437862, 34.143028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883484, 33.121563, 34.010227>,  <34.760056, 32.931782, 33.930546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883484, 33.121563, 34.010227>,  <35.089195, 33.437862, 34.143028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883484, 33.121563, 34.010227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541449, 0.000847, -0.840733,
		0.665093, -0.612135, 0.427717,
		-0.514279, -0.790753, -0.332003,
		34.729198, 32.884338, 33.910625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632835, 32.945637, 33.831177>,  <35.089195, 33.437862, 34.143028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632835, 32.945637, 33.831177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280857, 32.838188, 33.674442>,  <35.069672, 32.773720, 33.580402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280857, 32.838188, 33.674442>,  <35.632835, 32.945637, 33.831177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280857, 32.838188, 33.674442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415277, -0.034323, -0.909047,
		0.230746, -0.962633, 0.141756,
		-0.879944, -0.268627, -0.391839,
		35.016872, 32.757599, 33.556892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827026, 32.355644, 33.323765>,  <35.632835, 32.945637, 33.831177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827026, 32.355644, 33.323765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448349, 32.445038, 33.230965>,  <35.221142, 32.498672, 33.175285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448349, 32.445038, 33.230965>,  <35.827026, 32.355644, 33.323765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448349, 32.445038, 33.230965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217856, -0.086332, -0.972155,
		-0.237287, -0.970877, 0.033044,
		-0.946696, 0.223481, -0.231997,
		35.164341, 32.512081, 33.161366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723423, 31.962944, 32.749458>,  <35.827026, 32.355644, 33.323765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723423, 31.962944, 32.749458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422363, 32.226311, 32.749866>,  <35.241726, 32.384331, 32.750111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422363, 32.226311, 32.749866>,  <35.723423, 31.962944, 32.749458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422363, 32.226311, 32.749866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039502, 0.046699, -0.998128,
		-0.657232, -0.751203, -0.061157,
		-0.752653, 0.658417, 0.001018,
		35.196568, 32.423836, 32.750172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170597, 31.670507, 32.363972>,  <35.723423, 31.962944, 32.749458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170597, 31.670507, 32.363972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116047, 32.066460, 32.348274>,  <35.083317, 32.304031, 32.338856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116047, 32.066460, 32.348274>,  <35.170597, 31.670507, 32.363972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116047, 32.066460, 32.348274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048243, -0.032932, -0.998293,
		-0.989481, -0.138040, -0.043264,
		-0.136380, 0.989879, -0.039245,
		35.075134, 32.363422, 32.336502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584831, 31.820938, 31.862392>,  <35.170597, 31.670507, 32.363972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584831, 31.820938, 31.862392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807522, 32.152401, 31.885656>,  <34.941135, 32.351280, 31.899614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807522, 32.152401, 31.885656>,  <34.584831, 31.820938, 31.862392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807522, 32.152401, 31.885656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002837, 0.071910, -0.997407,
		-0.830690, 0.555120, 0.042385,
		0.556728, 0.828656, 0.058160,
		34.974541, 32.400997, 31.903105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342403, 32.327129, 31.343174>,  <34.584831, 31.820938, 31.862392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342403, 32.327129, 31.343174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698090, 32.497181, 31.410763>,  <34.911503, 32.599213, 31.451317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698090, 32.497181, 31.410763>,  <34.342403, 32.327129, 31.343174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698090, 32.497181, 31.410763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075952, 0.227038, -0.970920,
		-0.451133, 0.876194, 0.169597,
		0.889219, 0.425133, 0.168973,
		34.964855, 32.624722, 31.461454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352859, 32.775120, 30.875950>,  <34.342403, 32.327129, 31.343174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352859, 32.775120, 30.875950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731762, 32.815788, 30.997522>,  <34.959103, 32.840191, 31.070467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731762, 32.815788, 30.997522>,  <34.352859, 32.775120, 30.875950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731762, 32.815788, 30.997522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261393, 0.303613, -0.916238,
		-0.185432, 0.947355, 0.261022,
		0.947253, 0.101671, 0.303932,
		35.015938, 32.846291, 31.088701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605362, 33.405914, 30.735735>,  <34.352859, 32.775120, 30.875950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605362, 33.405914, 30.735735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915596, 33.153488, 30.729626>,  <35.101734, 33.002033, 30.725960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915596, 33.153488, 30.729626>,  <34.605362, 33.405914, 30.735735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915596, 33.153488, 30.729626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198453, 0.266731, -0.943118,
		0.599239, 0.728434, 0.332108,
		0.775583, -0.631061, -0.015275,
		35.148270, 32.964169, 30.725042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081245, 33.735634, 30.489330>,  <34.605362, 33.405914, 30.735735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081245, 33.735634, 30.489330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222343, 33.364868, 30.438108>,  <35.307003, 33.142406, 30.407375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222343, 33.364868, 30.438108>,  <35.081245, 33.735634, 30.489330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222343, 33.364868, 30.438108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335672, 0.253091, -0.907342,
		0.873440, 0.277073, 0.400416,
		0.352742, -0.926917, -0.128054,
		35.328167, 33.086792, 30.399693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732346, 33.797924, 30.172203>,  <35.081245, 33.735634, 30.489330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732346, 33.797924, 30.172203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677177, 33.405804, 30.115648>,  <35.644077, 33.170532, 30.081717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677177, 33.405804, 30.115648>,  <35.732346, 33.797924, 30.172203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677177, 33.405804, 30.115648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191985, 0.113581, -0.974803,
		0.971658, -0.161588, 0.172538,
		-0.137919, -0.980300, -0.141385,
		35.635803, 33.111713, 30.073233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344017, 33.633926, 29.794746>,  <35.732346, 33.797924, 30.172203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344017, 33.633926, 29.794746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067947, 33.363617, 29.691219>,  <35.902306, 33.201431, 29.629103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067947, 33.363617, 29.691219>,  <36.344017, 33.633926, 29.794746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067947, 33.363617, 29.691219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104646, 0.260693, -0.959733,
		0.716038, -0.689466, -0.109206,
		-0.690173, -0.675778, -0.258816,
		35.860897, 33.160885, 29.613575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625767, 33.155952, 29.242008>,  <36.344017, 33.633926, 29.794746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625767, 33.155952, 29.242008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225945, 33.158684, 29.230448>,  <35.986050, 33.160324, 29.223511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225945, 33.158684, 29.230448>,  <36.625767, 33.155952, 29.242008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225945, 33.158684, 29.230448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029524, 0.333856, -0.942162,
		0.003212, -0.942599, -0.333910,
		-0.999559, 0.006832, -0.028901,
		35.926075, 33.160732, 29.221777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537933, 33.002026, 28.594473>,  <36.625767, 33.155952, 29.242008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537933, 33.002026, 28.594473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166431, 33.113361, 28.692404>,  <35.943531, 33.180161, 28.751162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166431, 33.113361, 28.692404>,  <36.537933, 33.002026, 28.594473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166431, 33.113361, 28.692404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142899, 0.340587, -0.929290,
		-0.342040, -0.898070, -0.276549,
		-0.928756, 0.278336, 0.244827,
		35.887806, 33.196861, 28.765852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018505, 32.675911, 28.157848>,  <36.537933, 33.002026, 28.594473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018505, 32.675911, 28.157848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843105, 33.007763, 28.296089>,  <35.737865, 33.206875, 28.379034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843105, 33.007763, 28.296089>,  <36.018505, 32.675911, 28.157848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843105, 33.007763, 28.296089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031735, 0.398597, -0.916577,
		-0.898173, -0.390947, -0.201112,
		-0.438496, 0.829627, 0.345602,
		35.711555, 33.256653, 28.399769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488232, 32.692287, 27.706696>,  <36.018505, 32.675911, 28.157848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488232, 32.692287, 27.706696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543514, 33.053120, 27.870230>,  <35.576683, 33.269619, 27.968349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543514, 33.053120, 27.870230>,  <35.488232, 32.692287, 27.706696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543514, 33.053120, 27.870230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001488, 0.412983, -0.910737,
		-0.990403, 0.125260, 0.058419,
		0.138205, 0.902084, 0.408833,
		35.584976, 33.323746, 27.992880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984974, 33.164074, 27.331158>,  <35.488232, 32.692287, 27.706696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984974, 33.164074, 27.331158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282482, 33.377739, 27.491890>,  <35.460987, 33.505939, 27.588329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282482, 33.377739, 27.491890>,  <34.984974, 33.164074, 27.331158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282482, 33.377739, 27.491890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127265, 0.476993, -0.869644,
		-0.656206, 0.697957, 0.286794,
		0.743773, 0.534167, 0.401831,
		35.505615, 33.537991, 27.612440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792339, 33.841038, 27.219286>,  <34.984974, 33.164074, 27.331158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792339, 33.841038, 27.219286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187210, 33.845062, 27.283001>,  <35.424133, 33.847477, 27.321230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187210, 33.845062, 27.283001>,  <34.792339, 33.841038, 27.219286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187210, 33.845062, 27.283001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118487, 0.622454, -0.773635,
		-0.106930, 0.782591, 0.613284,
		0.987181, 0.010059, 0.159285,
		35.483364, 33.848080, 27.330786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937550, 34.572063, 27.017118>,  <34.792339, 33.841038, 27.219286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937550, 34.572063, 27.017118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284618, 34.374359, 27.038500>,  <35.492859, 34.255737, 27.051329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284618, 34.374359, 27.038500>,  <34.937550, 34.572063, 27.017118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284618, 34.374359, 27.038500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341746, 0.514903, -0.786183,
		0.361057, 0.700414, 0.615677,
		0.867668, -0.494262, 0.053455,
		35.544918, 34.226082, 27.054537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491909, 35.079807, 27.075045>,  <34.937550, 34.572063, 27.017118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491909, 35.079807, 27.075045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652695, 34.749969, 26.915813>,  <35.749165, 34.552067, 26.820274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652695, 34.749969, 26.915813>,  <35.491909, 35.079807, 27.075045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652695, 34.749969, 26.915813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440952, 0.555338, -0.705097,
		0.802488, 0.107890, 0.586833,
		0.401963, -0.824597, -0.398077,
		35.773285, 34.502590, 26.796391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175442, 35.106426, 27.061747>,  <35.491909, 35.079807, 27.075045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175442, 35.106426, 27.061747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093330, 34.837601, 26.777159>,  <36.044064, 34.676304, 26.606405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093330, 34.837601, 26.777159>,  <36.175442, 35.106426, 27.061747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093330, 34.837601, 26.777159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499339, 0.553297, -0.666725,
		0.841736, -0.492131, 0.222006,
		-0.205281, -0.672063, -0.711471,
		36.031746, 34.635983, 26.563717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564190, 35.432590, 26.532547>,  <36.175442, 35.106426, 27.061747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564190, 35.432590, 26.532547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391579, 35.123524, 26.346312>,  <36.288013, 34.938084, 26.234571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391579, 35.123524, 26.346312>,  <36.564190, 35.432590, 26.532547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391579, 35.123524, 26.346312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464353, 0.252231, -0.848973,
		0.773410, -0.582548, 0.249947,
		-0.431524, -0.772668, -0.465587,
		36.262123, 34.891724, 26.206636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119442, 35.163475, 26.106108>,  <36.564190, 35.432590, 26.532547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119442, 35.163475, 26.106108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783474, 35.040928, 25.926920>,  <36.581894, 34.967400, 25.819407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783474, 35.040928, 25.926920>,  <37.119442, 35.163475, 26.106108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783474, 35.040928, 25.926920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378171, 0.261647, -0.887991,
		0.389258, -0.915250, -0.103904,
		-0.839920, -0.306364, -0.447969,
		36.531498, 34.949020, 25.792530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320724, 34.781410, 25.587919>,  <37.119442, 35.163475, 26.106108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320724, 34.781410, 25.587919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953896, 34.906601, 25.489111>,  <36.733799, 34.981716, 25.429825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953896, 34.906601, 25.489111>,  <37.320724, 34.781410, 25.587919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953896, 34.906601, 25.489111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343706, 0.306538, -0.887637,
		-0.202087, -0.898933, -0.388690,
		-0.917075, 0.312975, -0.247022,
		36.678772, 35.000492, 25.415005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157875, 34.564205, 24.918100>,  <37.320724, 34.781410, 25.587919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157875, 34.564205, 24.918100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901375, 34.865234, 24.978022>,  <36.747475, 35.045853, 25.013975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901375, 34.865234, 24.978022>,  <37.157875, 34.564205, 24.918100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901375, 34.865234, 24.978022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230070, 0.374808, -0.898102,
		-0.732032, -0.541439, -0.413488,
		-0.641246, 0.752570, 0.149803,
		36.709000, 35.091007, 25.022963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897289, 34.568863, 24.322712>,  <37.157875, 34.564205, 24.918100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897289, 34.568863, 24.322712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823269, 34.927345, 24.483992>,  <36.778858, 35.142433, 24.580759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823269, 34.927345, 24.483992>,  <36.897289, 34.568863, 24.322712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823269, 34.927345, 24.483992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345980, 0.443431, -0.826841,
		-0.919812, -0.013506, -0.392126,
		-0.185048, 0.896207, 0.403201,
		36.767754, 35.196209, 24.604952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757160, 34.975929, 23.732014>,  <36.897289, 34.568863, 24.322712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757160, 34.975929, 23.732014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791687, 35.235542, 24.034353>,  <36.812405, 35.391312, 24.215757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791687, 35.235542, 24.034353>,  <36.757160, 34.975929, 23.732014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791687, 35.235542, 24.034353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149250, 0.741694, -0.653923,
		-0.985025, 0.169255, -0.032847,
		0.086317, 0.649033, 0.755848,
		36.817581, 35.430252, 24.261108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287712, 35.558319, 23.552055>,  <36.757160, 34.975929, 23.732014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287712, 35.558319, 23.552055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595501, 35.648785, 23.790972>,  <36.780174, 35.703064, 23.934322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595501, 35.648785, 23.790972>,  <36.287712, 35.558319, 23.552055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595501, 35.648785, 23.790972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245656, 0.758452, -0.603659,
		-0.589544, 0.611228, 0.528051,
		0.769475, 0.226165, 0.597293,
		36.826344, 35.716633, 23.970160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240982, 36.301613, 23.478399>,  <36.287712, 35.558319, 23.552055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240982, 36.301613, 23.478399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593357, 36.200550, 23.638454>,  <36.804783, 36.139912, 23.734488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593357, 36.200550, 23.638454>,  <36.240982, 36.301613, 23.478399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593357, 36.200550, 23.638454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457124, 0.673064, -0.581397,
		-0.122423, 0.695088, 0.708425,
		0.880937, -0.252661, 0.400140,
		36.857639, 36.124752, 23.758495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671860, 36.835407, 23.408974>,  <36.240982, 36.301613, 23.478399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671860, 36.835407, 23.408974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970322, 36.574345, 23.461584>,  <37.149399, 36.417709, 23.493151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970322, 36.574345, 23.461584>,  <36.671860, 36.835407, 23.408974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970322, 36.574345, 23.461584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593469, 0.562475, -0.575687,
		0.301744, 0.507608, 0.807022,
		0.746153, -0.652653, 0.131526,
		37.194168, 36.378548, 23.501041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181995, 37.250870, 23.633434>,  <36.671860, 36.835407, 23.408974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181995, 37.250870, 23.633434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320965, 36.908009, 23.481333>,  <37.404346, 36.702293, 23.390072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320965, 36.908009, 23.481333>,  <37.181995, 37.250870, 23.633434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320965, 36.908009, 23.481333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663529, 0.511258, -0.546210,
		0.662590, -0.062542, 0.746366,
		0.347424, -0.857149, -0.380253,
		37.425194, 36.650864, 23.367256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868118, 37.308483, 23.714846>,  <37.181995, 37.250870, 23.633434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868118, 37.308483, 23.714846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798405, 37.046368, 23.420847>,  <37.756577, 36.889099, 23.244448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798405, 37.046368, 23.420847>,  <37.868118, 37.308483, 23.714846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798405, 37.046368, 23.420847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629366, 0.499932, -0.594951,
		0.757314, -0.566270, 0.325290,
		-0.174280, -0.655291, -0.734997,
		37.746120, 36.849781, 23.200348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591297, 36.948643, 23.474791>,  <37.868118, 37.308483, 23.714846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591297, 36.948643, 23.474791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319702, 36.982533, 23.183092>,  <38.156746, 37.002865, 23.008072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319702, 36.982533, 23.183092>,  <38.591297, 36.948643, 23.474791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319702, 36.982533, 23.183092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631261, 0.574512, -0.521004,
		0.374819, -0.814099, -0.443569,
		-0.678984, 0.084726, -0.729247,
		38.116009, 37.007950, 22.964317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960842, 36.954872, 22.864809>,  <38.591297, 36.948643, 23.474791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960842, 36.954872, 22.864809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605900, 37.091591, 22.741016>,  <38.392937, 37.173622, 22.666740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605900, 37.091591, 22.741016>,  <38.960842, 36.954872, 22.864809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605900, 37.091591, 22.741016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457915, 0.731868, -0.504662,
		0.054008, -0.589530, -0.805939,
		-0.887354, 0.341796, -0.309481,
		38.339695, 37.194130, 22.648172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057304, 37.183601, 22.242598>,  <38.960842, 36.954872, 22.864809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057304, 37.183601, 22.242598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686600, 37.330318, 22.275030>,  <38.464176, 37.418346, 22.294489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686600, 37.330318, 22.275030>,  <39.057304, 37.183601, 22.242598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686600, 37.330318, 22.275030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222258, 0.709424, -0.668819,
		-0.302837, -0.601816, -0.738990,
		-0.926764, 0.366790, 0.081082,
		38.408569, 37.440357, 22.299355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761372, 37.165558, 21.620190>,  <39.057304, 37.183601, 22.242598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761372, 37.165558, 21.620190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568111, 37.456669, 21.814882>,  <38.452156, 37.631336, 21.931698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568111, 37.456669, 21.814882>,  <38.761372, 37.165558, 21.620190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568111, 37.456669, 21.814882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319537, 0.664151, -0.675870,
		-0.815143, -0.171021, -0.553437,
		-0.483154, 0.727775, 0.486731,
		38.423164, 37.675003, 21.960901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505219, 37.548302, 21.110220>,  <38.761372, 37.165558, 21.620190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505219, 37.548302, 21.110220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478886, 37.796776, 21.422579>,  <38.463085, 37.945858, 21.609995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478886, 37.796776, 21.422579>,  <38.505219, 37.548302, 21.110220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478886, 37.796776, 21.422579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184541, 0.776673, -0.602265,
		-0.980618, 0.104460, -0.165762,
		-0.065830, 0.621182, 0.780896,
		38.459137, 37.983131, 21.656847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980145, 38.040237, 20.976259>,  <38.505219, 37.548302, 21.110220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980145, 38.040237, 20.976259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211090, 38.213871, 21.252874>,  <38.349659, 38.318050, 21.418844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211090, 38.213871, 21.252874>,  <37.980145, 38.040237, 20.976259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211090, 38.213871, 21.252874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132586, 0.785881, -0.603997,
		-0.805650, 0.440414, 0.396186,
		0.577363, 0.434082, 0.691538,
		38.384300, 38.344097, 21.460337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868172, 38.803555, 21.024834>,  <37.980145, 38.040237, 20.976259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868172, 38.803555, 21.024834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236366, 38.760315, 21.175045>,  <38.457283, 38.734371, 21.265173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236366, 38.760315, 21.175045>,  <37.868172, 38.803555, 21.024834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236366, 38.760315, 21.175045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276042, 0.860071, -0.429044,
		-0.276603, 0.498591, 0.821522,
		0.920484, -0.108100, 0.375530,
		38.512512, 38.727886, 21.287704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235039, 39.485638, 21.260752>,  <37.868172, 38.803555, 21.024834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235039, 39.485638, 21.260752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501766, 39.211143, 21.144524>,  <38.661804, 39.046448, 21.074787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501766, 39.211143, 21.144524>,  <38.235039, 39.485638, 21.260752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501766, 39.211143, 21.144524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578152, 0.722402, -0.379309,
		0.470203, 0.084938, 0.878462,
		0.666820, -0.686237, -0.290569,
		38.701813, 39.005272, 21.057352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774467, 39.317757, 21.616245>,  <38.235039, 39.485638, 21.260752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774467, 39.317757, 21.616245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784557, 39.436115, 21.234289>,  <38.790611, 39.507130, 21.005116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784557, 39.436115, 21.234289>,  <38.774467, 39.317757, 21.616245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784557, 39.436115, 21.234289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992703, 0.105257, 0.058837,
		0.117917, -0.949404, -0.291080,
		0.025222, 0.295894, -0.954888,
		38.792126, 39.524883, 20.947823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234322, 39.706676, 21.220114>,  <38.774467, 39.317757, 21.616245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234322, 39.706676, 21.220114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624619, 39.781147, 21.266171>,  <39.858799, 39.825829, 21.293804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624619, 39.781147, 21.266171>,  <39.234322, 39.706676, 21.220114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624619, 39.781147, 21.266171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166920, -0.292496, -0.941586,
		-0.141622, 0.937968, -0.316478,
		0.975746, 0.186176, 0.115142,
		39.917343, 39.836998, 21.300713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437580, 40.061275, 20.531031>,  <39.234322, 39.706676, 21.220114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437580, 40.061275, 20.531031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770554, 39.917679, 20.699875>,  <39.970337, 39.831520, 20.801182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770554, 39.917679, 20.699875>,  <39.437580, 40.061275, 20.531031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770554, 39.917679, 20.699875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289161, -0.368392, -0.883557,
		0.472695, 0.857560, -0.202854,
		0.832434, -0.358996, 0.422110,
		40.020283, 39.809978, 20.826508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612797, 39.471664, 20.169102>,  <39.437580, 40.061275, 20.531031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612797, 39.471664, 20.169102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654339, 39.237759, 19.847290>,  <39.679264, 39.097416, 19.654203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654339, 39.237759, 19.847290>,  <39.612797, 39.471664, 20.169102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654339, 39.237759, 19.847290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981893, 0.189134, -0.010723,
		0.158434, -0.788847, 0.593817,
		0.103852, -0.584763, -0.804529,
		39.685493, 39.062328, 19.605932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099609, 38.920597, 19.869864>,  <39.612797, 39.471664, 20.169102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099609, 38.920597, 19.869864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457394, 39.083996, 19.942604>,  <40.672066, 39.182037, 19.986248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457394, 39.083996, 19.942604>,  <40.099609, 38.920597, 19.869864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457394, 39.083996, 19.942604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318000, 0.295226, 0.900954,
		0.314369, -0.863688, 0.393975,
		0.894454, 0.408516, 0.181843,
		40.725731, 39.206547, 19.997160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360390, 38.661255, 20.551674>,  <40.099609, 38.920597, 19.869864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360390, 38.661255, 20.551674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543705, 39.007263, 20.469975>,  <40.653694, 39.214867, 20.420956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543705, 39.007263, 20.469975>,  <40.360390, 38.661255, 20.551674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543705, 39.007263, 20.469975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289988, 0.362748, 0.885619,
		0.840167, -0.346638, 0.417088,
		0.458287, 0.865018, -0.204248,
		40.681190, 39.266769, 20.408701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899506, 38.875042, 21.089834>,  <40.360390, 38.661255, 20.551674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899506, 38.875042, 21.089834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749165, 39.191135, 20.896229>,  <40.658958, 39.380791, 20.780066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749165, 39.191135, 20.896229>,  <40.899506, 38.875042, 21.089834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749165, 39.191135, 20.896229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148307, 0.464283, 0.873181,
		0.914735, 0.399969, -0.057305,
		-0.375851, 0.790231, -0.484015,
		40.636410, 39.428204, 20.751024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184780, 39.463100, 21.388775>,  <40.899506, 38.875042, 21.089834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184780, 39.463100, 21.388775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845852, 39.577602, 21.209843>,  <40.642494, 39.646301, 21.102484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845852, 39.577602, 21.209843>,  <41.184780, 39.463100, 21.388775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845852, 39.577602, 21.209843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273513, 0.486799, 0.829589,
		0.455230, 0.825280, -0.334183,
		-0.847323, 0.286250, -0.447330,
		40.591656, 39.663479, 21.075644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156654, 40.158134, 21.460184>,  <41.184780, 39.463100, 21.388775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156654, 40.158134, 21.460184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772625, 40.064281, 21.399250>,  <40.542206, 40.007969, 21.362690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772625, 40.064281, 21.399250>,  <41.156654, 40.158134, 21.460184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772625, 40.064281, 21.399250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249981, 0.475140, 0.843654,
		-0.125567, 0.848051, -0.514823,
		-0.960074, -0.234631, -0.152335,
		40.484604, 39.993893, 21.353550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705570, 40.864372, 21.485928>,  <41.156654, 40.158134, 21.460184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705570, 40.864372, 21.485928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468822, 40.552307, 21.566965>,  <40.326775, 40.365070, 21.615587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468822, 40.552307, 21.566965>,  <40.705570, 40.864372, 21.485928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468822, 40.552307, 21.566965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477762, 0.541990, 0.691369,
		-0.649184, 0.312404, -0.693516,
		-0.591865, -0.780161, 0.202596,
		40.291264, 40.318260, 21.627745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129314, 41.165096, 21.716597>,  <40.705570, 40.864372, 21.485928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129314, 41.165096, 21.716597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097095, 40.794292, 21.863110>,  <40.077766, 40.571808, 21.951017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097095, 40.794292, 21.863110>,  <40.129314, 41.165096, 21.716597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097095, 40.794292, 21.863110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497287, 0.355846, 0.791251,
		-0.863839, -0.118415, -0.489653,
		-0.080546, -0.927012, 0.366280,
		40.072933, 40.516190, 21.972994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447826, 41.077656, 21.885675>,  <40.129314, 41.165096, 21.716597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447826, 41.077656, 21.885675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635593, 40.786461, 22.085548>,  <39.748253, 40.611744, 22.205471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635593, 40.786461, 22.085548>,  <39.447826, 41.077656, 21.885675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635593, 40.786461, 22.085548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400380, 0.328889, 0.855294,
		-0.786982, -0.601554, -0.137084,
		0.469419, -0.727987, 0.499680,
		39.776421, 40.568066, 22.235453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893578, 40.666225, 22.160372>,  <39.447826, 41.077656, 21.885675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893578, 40.666225, 22.160372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226749, 40.579418, 22.363991>,  <39.426651, 40.527332, 22.486162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226749, 40.579418, 22.363991>,  <38.893578, 40.666225, 22.160372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226749, 40.579418, 22.363991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534069, -0.074390, 0.842162,
		-0.144903, -0.973327, -0.177868,
		0.832931, -0.217025, 0.509045,
		39.476627, 40.514313, 22.516705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560581, 40.167637, 22.693480>,  <38.893578, 40.666225, 22.160372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560581, 40.167637, 22.693480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922749, 40.275341, 22.824760>,  <39.140049, 40.339966, 22.903528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922749, 40.275341, 22.824760>,  <38.560581, 40.167637, 22.693480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922749, 40.275341, 22.824760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300072, -0.140937, 0.943448,
		0.300291, -0.952698, -0.046808,
		0.905418, 0.269263, 0.328200,
		39.194374, 40.356121, 22.923220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780025, 39.556488, 23.094986>,  <38.560581, 40.167637, 22.693480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780025, 39.556488, 23.094986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986565, 39.869366, 23.234447>,  <39.110489, 40.057091, 23.318125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986565, 39.869366, 23.234447>,  <38.780025, 39.556488, 23.094986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986565, 39.869366, 23.234447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212644, -0.277268, 0.936966,
		0.829559, -0.557939, 0.023162,
		0.516347, 0.782193, 0.348653,
		39.141468, 40.104023, 23.339043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336384, 39.241272, 23.562662>,  <38.780025, 39.556488, 23.094986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336384, 39.241272, 23.562662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292202, 39.620110, 23.683197>,  <39.265694, 39.847412, 23.755518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292202, 39.620110, 23.683197>,  <39.336384, 39.241272, 23.562662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292202, 39.620110, 23.683197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156304, -0.315972, 0.935805,
		0.981513, 0.056266, 0.182936,
		-0.110456, 0.947099, 0.301336,
		39.259064, 39.904240, 23.773598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694931, 39.155483, 24.146685>,  <39.336384, 39.241272, 23.562662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694931, 39.155483, 24.146685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528481, 39.510723, 24.224787>,  <39.428612, 39.723866, 24.271648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528481, 39.510723, 24.224787>,  <39.694931, 39.155483, 24.146685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528481, 39.510723, 24.224787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067462, -0.244290, 0.967353,
		0.906801, 0.389370, 0.161569,
		-0.416127, 0.888096, 0.195255,
		39.403641, 39.777153, 24.283363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012844, 39.539555, 24.651985>,  <39.694931, 39.155483, 24.146685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012844, 39.539555, 24.651985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636784, 39.675213, 24.665228>,  <39.411148, 39.756607, 24.673174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636784, 39.675213, 24.665228>,  <40.012844, 39.539555, 24.651985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636784, 39.675213, 24.665228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097000, -0.359505, 0.928088,
		0.326657, 0.869333, 0.370886,
		-0.940152, 0.339142, 0.033109,
		39.354736, 39.776955, 24.675161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920506, 39.650921, 25.398560>,  <40.012844, 39.539555, 24.651985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920506, 39.650921, 25.398560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544434, 39.664318, 25.262953>,  <39.318790, 39.672356, 25.181589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544434, 39.664318, 25.262953>,  <39.920506, 39.650921, 25.398560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544434, 39.664318, 25.262953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326758, -0.370133, 0.869615,
		-0.096353, 0.928375, 0.358938,
		-0.940184, 0.033496, -0.339017,
		39.262379, 39.674366, 25.161247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519672, 39.789085, 26.041508>,  <39.920506, 39.650921, 25.398560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519672, 39.789085, 26.041508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232643, 39.660194, 25.794521>,  <39.060425, 39.582859, 25.646330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232643, 39.660194, 25.794521>,  <39.519672, 39.789085, 26.041508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232643, 39.660194, 25.794521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310111, -0.646005, 0.697502,
		-0.623638, 0.691990, 0.363629,
		-0.717570, -0.322223, -0.617467,
		39.017372, 39.563526, 25.609282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943825, 39.731865, 26.417946>,  <39.519672, 39.789085, 26.041508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943825, 39.731865, 26.417946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845650, 39.510483, 26.099588>,  <38.786747, 39.377651, 25.908573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845650, 39.510483, 26.099588>,  <38.943825, 39.731865, 26.417946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845650, 39.510483, 26.099588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585368, -0.569818, 0.576760,
		-0.772727, 0.607447, -0.184124,
		-0.245434, -0.553458, -0.795893,
		38.772018, 39.344444, 25.860821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213905, 39.697216, 26.336725>,  <38.943825, 39.731865, 26.417946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213905, 39.697216, 26.336725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389309, 39.379940, 26.167702>,  <38.494553, 39.189575, 26.066288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389309, 39.379940, 26.167702>,  <38.213905, 39.697216, 26.336725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389309, 39.379940, 26.167702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466611, -0.602776, 0.647252,
		-0.768104, -0.086654, -0.634434,
		0.438509, -0.793191, -0.422561,
		38.520863, 39.141983, 26.040934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675686, 39.230629, 26.166529>,  <38.213905, 39.697216, 26.336725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675686, 39.230629, 26.166529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001301, 38.998314, 26.168789>,  <38.196671, 38.858925, 26.170145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001301, 38.998314, 26.168789>,  <37.675686, 39.230629, 26.166529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001301, 38.998314, 26.168789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472307, -0.656267, 0.588421,
		-0.338037, -0.481666, -0.808535,
		0.814038, -0.580785, 0.005652,
		38.245514, 38.824078, 26.170485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425289, 38.553459, 25.998997>,  <37.675686, 39.230629, 26.166529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425289, 38.553459, 25.998997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788303, 38.473522, 26.146751>,  <38.006111, 38.425560, 26.235405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788303, 38.473522, 26.146751>,  <37.425289, 38.553459, 25.998997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788303, 38.473522, 26.146751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380214, -0.764523, 0.520521,
		0.178384, -0.612837, -0.769812,
		0.907533, -0.199840, 0.369387,
		38.060562, 38.413570, 26.257568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595764, 37.814533, 25.964867>,  <37.425289, 38.553459, 25.998997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595764, 37.814533, 25.964867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840099, 37.958054, 26.247183>,  <37.986702, 38.044167, 26.416573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840099, 37.958054, 26.247183>,  <37.595764, 37.814533, 25.964867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840099, 37.958054, 26.247183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309650, -0.712165, 0.630030,
		0.728693, -0.603394, -0.323915,
		0.610838, 0.358798, 0.705791,
		38.023350, 38.065693, 26.458920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883678, 37.178017, 26.269920>,  <37.595764, 37.814533, 25.964867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883678, 37.178017, 26.269920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930531, 37.477562, 26.530836>,  <37.958641, 37.657288, 26.687386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930531, 37.477562, 26.530836>,  <37.883678, 37.178017, 26.269920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930531, 37.477562, 26.530836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311036, -0.596106, 0.740212,
		0.943153, -0.289585, 0.163103,
		0.117128, 0.748864, 0.652291,
		37.965668, 37.702221, 26.726522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012619, 36.827347, 26.804783>,  <37.883678, 37.178017, 26.269920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012619, 36.827347, 26.804783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990341, 37.176315, 26.999014>,  <37.976974, 37.385696, 27.115553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990341, 37.176315, 26.999014>,  <38.012619, 36.827347, 26.804783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990341, 37.176315, 26.999014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440316, -0.457947, 0.772274,
		0.896114, -0.170796, 0.409644,
		-0.055694, 0.872418, 0.485577,
		37.973633, 37.438042, 27.144688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181355, 36.669216, 27.547640>,  <38.012619, 36.827347, 26.804783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181355, 36.669216, 27.547640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017498, 37.033970, 27.557951>,  <37.919186, 37.252823, 27.564137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017498, 37.033970, 27.557951>,  <38.181355, 36.669216, 27.547640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017498, 37.033970, 27.557951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316254, -0.168459, 0.933598,
		0.855673, 0.374289, 0.357395,
		-0.409642, 0.911882, 0.025775,
		37.894604, 37.307533, 27.565683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491955, 37.048450, 28.165392>,  <38.181355, 36.669216, 27.547640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491955, 37.048450, 28.165392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125507, 37.171131, 28.062120>,  <37.905640, 37.244740, 28.000156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125507, 37.171131, 28.062120>,  <38.491955, 37.048450, 28.165392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125507, 37.171131, 28.062120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318835, -0.166981, 0.932985,
		0.243034, 0.937045, 0.250761,
		-0.916121, 0.306698, -0.258181,
		37.850670, 37.263142, 27.984667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242550, 37.555008, 28.704954>,  <38.491955, 37.048450, 28.165392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242550, 37.555008, 28.704954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913021, 37.428841, 28.516560>,  <37.715305, 37.353142, 28.403522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913021, 37.428841, 28.516560>,  <38.242550, 37.555008, 28.704954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913021, 37.428841, 28.516560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462872, -0.105297, 0.880149,
		-0.327210, 0.943092, -0.059253,
		-0.823822, -0.315420, -0.470986,
		37.665874, 37.334213, 28.375263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700089, 37.821423, 29.149210>,  <38.242550, 37.555008, 28.704954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700089, 37.821423, 29.149210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530849, 37.567581, 28.890514>,  <37.429306, 37.415276, 28.735296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530849, 37.567581, 28.890514>,  <37.700089, 37.821423, 29.149210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530849, 37.567581, 28.890514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471607, -0.455234, 0.755214,
		-0.773678, 0.624534, -0.106676,
		-0.423094, -0.634602, -0.646739,
		37.403923, 37.377201, 28.696493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960201, 37.847290, 29.197876>,  <37.700089, 37.821423, 29.149210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960201, 37.847290, 29.197876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072647, 37.485851, 29.068577>,  <37.140114, 37.268990, 28.990997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072647, 37.485851, 29.068577>,  <36.960201, 37.847290, 29.197876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072647, 37.485851, 29.068577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479173, -0.424000, 0.768516,
		-0.831486, -0.061147, -0.552170,
		0.281112, -0.903596, -0.323250,
		37.156982, 37.214771, 28.971601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361336, 37.539467, 29.353224>,  <36.960201, 37.847290, 29.197876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361336, 37.539467, 29.353224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649784, 37.262524, 29.343216>,  <36.822853, 37.096359, 29.337212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649784, 37.262524, 29.343216>,  <36.361336, 37.539467, 29.353224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649784, 37.262524, 29.343216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572159, -0.615519, 0.542005,
		-0.390659, -0.376538, -0.840003,
		0.721124, -0.692354, -0.025018,
		36.866119, 37.054817, 29.335711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986256, 36.901073, 29.229467>,  <36.361336, 37.539467, 29.353224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986256, 36.901073, 29.229467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348576, 36.818974, 29.377735>,  <36.565968, 36.769714, 29.466696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348576, 36.818974, 29.377735>,  <35.986256, 36.901073, 29.229467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348576, 36.818974, 29.377735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419499, -0.557359, 0.716500,
		0.059531, -0.804501, -0.590960,
		0.905802, -0.205253, 0.370668,
		36.620316, 36.757397, 29.488935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904060, 36.263500, 29.472878>,  <35.986256, 36.901073, 29.229467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904060, 36.263500, 29.472878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233505, 36.380196, 29.667423>,  <36.431171, 36.450214, 29.784151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233505, 36.380196, 29.667423>,  <35.904060, 36.263500, 29.472878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233505, 36.380196, 29.667423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378273, -0.356379, 0.854344,
		0.422578, -0.887626, -0.183160,
		0.823612, 0.291743, 0.486363,
		36.480591, 36.467720, 29.813332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022045, 35.720940, 29.930487>,  <35.904060, 36.263500, 29.472878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022045, 35.720940, 29.930487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219673, 36.024918, 30.099424>,  <36.338249, 36.207306, 30.200787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219673, 36.024918, 30.099424>,  <36.022045, 35.720940, 29.930487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219673, 36.024918, 30.099424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241336, -0.346811, 0.906355,
		0.835256, -0.549729, 0.012055,
		0.494069, 0.759948, 0.422345,
		36.367893, 36.252903, 30.226128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449795, 35.394192, 30.386648>,  <36.022045, 35.720940, 29.930487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449795, 35.394192, 30.386648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452881, 35.770329, 30.522701>,  <36.454735, 35.996010, 30.604334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452881, 35.770329, 30.522701>,  <36.449795, 35.394192, 30.386648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452881, 35.770329, 30.522701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229466, -0.329401, 0.915883,
		0.973286, -0.085118, 0.213235,
		0.007718, 0.940346, 0.340133,
		36.455196, 36.052433, 30.624741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676991, 35.279545, 31.016142>,  <36.449795, 35.394192, 30.386648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676991, 35.279545, 31.016142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539215, 35.653870, 31.046148>,  <36.456551, 35.878464, 31.064152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539215, 35.653870, 31.046148>,  <36.676991, 35.279545, 31.016142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539215, 35.653870, 31.046148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478679, -0.243797, 0.843463,
		0.807608, 0.254612, 0.531924,
		-0.344437, 0.935808, 0.075015,
		36.435883, 35.934612, 31.068653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832928, 35.443275, 31.707767>,  <36.676991, 35.279545, 31.016142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832928, 35.443275, 31.707767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552982, 35.718311, 31.630398>,  <36.385014, 35.883331, 31.583975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552982, 35.718311, 31.630398>,  <36.832928, 35.443275, 31.707767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552982, 35.718311, 31.630398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402582, -0.156032, 0.901988,
		0.590016, 0.709138, 0.386012,
		-0.699864, 0.687588, -0.193425,
		36.343021, 35.924587, 31.572371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719540, 35.956791, 32.314026>,  <36.832928, 35.443275, 31.707767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719540, 35.956791, 32.314026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386349, 35.956078, 32.092701>,  <36.186436, 35.955650, 31.959906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386349, 35.956078, 32.092701>,  <36.719540, 35.956791, 32.314026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386349, 35.956078, 32.092701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542719, -0.192122, 0.817646,
		-0.107760, 0.981369, 0.159066,
		-0.832973, -0.001782, -0.553311,
		36.136456, 35.955544, 31.926708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254089, 36.425297, 32.670574>,  <36.719540, 35.956791, 32.314026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254089, 36.425297, 32.670574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057446, 36.164745, 32.439396>,  <35.939457, 36.008415, 32.300690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057446, 36.164745, 32.439396>,  <36.254089, 36.425297, 32.670574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057446, 36.164745, 32.439396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586053, -0.243410, 0.772847,
		-0.644095, 0.718649, -0.262079,
		-0.491613, -0.651379, -0.577946,
		35.909962, 35.969330, 32.266010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536900, 36.439808, 32.971554>,  <36.254089, 36.425297, 32.670574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536900, 36.439808, 32.971554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536694, 36.112919, 32.741024>,  <35.536572, 35.916786, 32.602707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536694, 36.112919, 32.741024>,  <35.536900, 36.439808, 32.971554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536694, 36.112919, 32.741024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543554, -0.483520, 0.686118,
		-0.839374, 0.313615, -0.443956,
		-0.000516, -0.817223, -0.576321,
		35.536537, 35.867752, 32.568127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836510, 36.196285, 32.747471>,  <35.536900, 36.439808, 32.971554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836510, 36.196285, 32.747471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074535, 35.875534, 32.725960>,  <35.217350, 35.683083, 32.713055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074535, 35.875534, 32.725960>,  <34.836510, 36.196285, 32.747471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074535, 35.875534, 32.725960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572723, -0.470052, 0.671595,
		-0.563811, -0.368847, -0.738965,
		0.595068, -0.801875, -0.053774,
		35.253056, 35.634972, 32.709827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364807, 35.668110, 33.018585>,  <34.836510, 36.196285, 32.747471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364807, 35.668110, 33.018585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730267, 35.506702, 33.038269>,  <34.949543, 35.409859, 33.050079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730267, 35.506702, 33.038269>,  <34.364807, 35.668110, 33.018585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730267, 35.506702, 33.038269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302972, -0.595230, 0.744250,
		-0.271028, -0.694891, -0.666086,
		0.913647, -0.403519, 0.049208,
		35.004360, 35.385647, 33.053032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247112, 34.982410, 33.129154>,  <34.364807, 35.668110, 33.018585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247112, 34.982410, 33.129154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617344, 35.055595, 33.261715>,  <34.839485, 35.099506, 33.341251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617344, 35.055595, 33.261715>,  <34.247112, 34.982410, 33.129154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617344, 35.055595, 33.261715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191733, -0.528266, 0.827147,
		0.326403, -0.829132, -0.453873,
		0.925580, 0.182961, 0.331400,
		34.895020, 35.110485, 33.361134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410133, 34.291901, 33.475796>,  <34.247112, 34.982410, 33.129154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410133, 34.291901, 33.475796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655159, 34.580639, 33.604610>,  <34.802174, 34.753883, 33.681900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655159, 34.580639, 33.604610>,  <34.410133, 34.291901, 33.475796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655159, 34.580639, 33.604610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101054, -0.475602, 0.873837,
		0.783938, -0.502733, -0.364280,
		0.612559, 0.721846, 0.322039,
		34.838928, 34.797192, 33.701221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966141, 33.990650, 33.680515>,  <34.410133, 34.291901, 33.475796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966141, 33.990650, 33.680515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940533, 34.324448, 33.899433>,  <34.925167, 34.524727, 34.030785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940533, 34.324448, 33.899433>,  <34.966141, 33.990650, 33.680515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940533, 34.324448, 33.899433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279324, -0.511513, 0.812608,
		0.958060, 0.204896, -0.200345,
		-0.064021, 0.834489, 0.547293,
		34.921326, 34.574795, 34.063622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721100, 34.052662, 34.025867>,  <34.966141, 33.990650, 33.680515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721100, 34.052662, 34.025867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445606, 34.264370, 34.224068>,  <35.280312, 34.391396, 34.342987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445606, 34.264370, 34.224068>,  <35.721100, 34.052662, 34.025867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445606, 34.264370, 34.224068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412060, -0.276561, 0.868171,
		0.596534, 0.802112, -0.027616,
		-0.688733, 0.529273, 0.495497,
		35.238987, 34.423153, 34.372715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318451, 33.788181, 33.576000>,  <35.721100, 34.052662, 34.025867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318451, 33.788181, 33.576000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680008, 33.622261, 33.617802>,  <36.896942, 33.522709, 33.642883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680008, 33.622261, 33.617802>,  <36.318451, 33.788181, 33.576000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680008, 33.622261, 33.617802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383337, 0.677068, -0.628197,
		0.189817, 0.607883, 0.771004,
		0.903893, -0.414797, 0.104506,
		36.951176, 33.497822, 33.649155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780785, 34.382935, 33.721466>,  <36.318451, 33.788181, 33.576000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780785, 34.382935, 33.721466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005543, 34.073219, 33.605019>,  <37.140400, 33.887390, 33.535152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005543, 34.073219, 33.605019>,  <36.780785, 34.382935, 33.721466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005543, 34.073219, 33.605019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582000, 0.620132, -0.526034,
		0.587833, 0.126147, 0.799086,
		0.561897, -0.774289, -0.291117,
		37.174110, 33.840931, 33.517685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411335, 34.467651, 34.043095>,  <36.780785, 34.382935, 33.721466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411335, 34.467651, 34.043095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471878, 34.241207, 33.718967>,  <37.508202, 34.105339, 33.524490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471878, 34.241207, 33.718967>,  <37.411335, 34.467651, 34.043095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471878, 34.241207, 33.718967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772035, 0.579632, -0.260745,
		0.617295, -0.586126, 0.524788,
		0.151355, -0.566112, -0.810314,
		37.517284, 34.071373, 33.475872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086666, 34.626892, 33.990444>,  <37.411335, 34.467651, 34.043095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086666, 34.626892, 33.990444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979763, 34.470100, 33.638325>,  <37.915623, 34.376026, 33.427052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979763, 34.470100, 33.638325>,  <38.086666, 34.626892, 33.990444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979763, 34.470100, 33.638325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731279, 0.512417, -0.450177,
		0.627540, -0.764058, 0.149699,
		-0.267253, -0.391975, -0.880302,
		37.899586, 34.352509, 33.374233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650154, 34.699673, 33.622047>,  <38.086666, 34.626892, 33.990444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650154, 34.699673, 33.622047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413071, 34.594715, 33.317459>,  <38.270821, 34.531738, 33.134705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413071, 34.594715, 33.317459>,  <38.650154, 34.699673, 33.622047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413071, 34.594715, 33.317459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679730, 0.344191, -0.647688,
		0.432045, -0.901487, -0.025644,
		-0.592709, -0.262399, -0.761474,
		38.235256, 34.515995, 33.089016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025723, 34.178780, 33.130817>,  <38.650154, 34.699673, 33.622047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025723, 34.178780, 33.130817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738689, 34.407192, 32.971325>,  <38.566467, 34.544239, 32.875629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738689, 34.407192, 32.971325>,  <39.025723, 34.178780, 33.130817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738689, 34.407192, 32.971325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637483, 0.307938, -0.706251,
		-0.280508, -0.760983, -0.584997,
		-0.717587, 0.571034, -0.398735,
		38.523415, 34.578503, 32.851704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102325, 33.937477, 32.445038>,  <39.025723, 34.178780, 33.130817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102325, 33.937477, 32.445038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899818, 34.282269, 32.434521>,  <38.778313, 34.489143, 32.428211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899818, 34.282269, 32.434521>,  <39.102325, 33.937477, 32.445038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899818, 34.282269, 32.434521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538612, 0.292236, -0.790250,
		-0.673492, -0.414241, -0.612220,
		-0.506267, 0.861976, -0.026296,
		38.747940, 34.540863, 32.426632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988201, 34.073124, 31.711981>,  <39.102325, 33.937477, 32.445038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988201, 34.073124, 31.711981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920113, 34.422718, 31.894045>,  <38.879257, 34.632473, 32.003284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920113, 34.422718, 31.894045>,  <38.988201, 34.073124, 31.711981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920113, 34.422718, 31.894045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616008, 0.454905, -0.643114,
		-0.769127, 0.170908, -0.615819,
		-0.170226, 0.873986, 0.455160,
		38.869045, 34.684914, 32.030594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681564, 34.560741, 31.178715>,  <38.988201, 34.073124, 31.711981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681564, 34.560741, 31.178715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820942, 34.820053, 31.449514>,  <38.904568, 34.975639, 31.611994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820942, 34.820053, 31.449514>,  <38.681564, 34.560741, 31.178715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820942, 34.820053, 31.449514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458882, 0.511809, -0.726278,
		-0.817323, 0.563726, -0.119148,
		0.348441, 0.648278, 0.676997,
		38.925476, 35.014538, 31.652613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559967, 35.259758, 30.870796>,  <38.681564, 34.560741, 31.178715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559967, 35.259758, 30.870796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832298, 35.303905, 31.160429>,  <38.995697, 35.330395, 31.334208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832298, 35.303905, 31.160429>,  <38.559967, 35.259758, 30.870796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832298, 35.303905, 31.160429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537173, 0.596797, -0.596052,
		-0.497916, 0.794765, 0.347028,
		0.680827, 0.110370, 0.724081,
		39.036545, 35.337017, 31.377653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655479, 35.969997, 30.862535>,  <38.559967, 35.259758, 30.870796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655479, 35.969997, 30.862535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962803, 35.806892, 31.059893>,  <39.147198, 35.709030, 31.178307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962803, 35.806892, 31.059893>,  <38.655479, 35.969997, 30.862535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962803, 35.806892, 31.059893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639837, 0.468062, -0.609530,
		0.017603, 0.783997, 0.620514,
		0.768309, -0.407758, 0.493391,
		39.193295, 35.684566, 31.207911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110798, 36.545933, 31.091791>,  <38.655479, 35.969997, 30.862535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110798, 36.545933, 31.091791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336483, 36.216644, 31.066568>,  <39.471893, 36.019073, 31.051435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336483, 36.216644, 31.066568>,  <39.110798, 36.545933, 31.091791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336483, 36.216644, 31.066568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555976, 0.435289, -0.708106,
		0.610374, 0.364463, 0.703285,
		0.564210, -0.823220, -0.063057,
		39.505745, 35.969677, 31.047651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804222, 36.799362, 30.967966>,  <39.110798, 36.545933, 31.091791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804222, 36.799362, 30.967966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801540, 36.417572, 30.848675>,  <39.799931, 36.188499, 30.777100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801540, 36.417572, 30.848675>,  <39.804222, 36.799362, 30.967966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801540, 36.417572, 30.848675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619210, 0.230217, -0.750719,
		0.785197, -0.189698, 0.589475,
		-0.006703, -0.954471, -0.298228,
		39.799530, 36.131229, 30.759207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469208, 36.695984, 30.648350>,  <39.804222, 36.799362, 30.967966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469208, 36.695984, 30.648350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226738, 36.403774, 30.522560>,  <40.081257, 36.228451, 30.447086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226738, 36.403774, 30.522560>,  <40.469208, 36.695984, 30.648350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226738, 36.403774, 30.522560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433473, 0.028056, -0.900730,
		0.666826, -0.682312, 0.299655,
		-0.606172, -0.730523, -0.314472,
		40.044888, 36.184616, 30.428219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915916, 36.102264, 30.475883>,  <40.469208, 36.695984, 30.648350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915916, 36.102264, 30.475883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567226, 36.097542, 30.279942>,  <40.358013, 36.094707, 30.162376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567226, 36.097542, 30.279942>,  <40.915916, 36.102264, 30.475883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567226, 36.097542, 30.279942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485886, -0.150078, -0.861041,
		-0.063348, -0.988604, 0.136565,
		-0.871723, -0.011810, -0.489855,
		40.305710, 36.093998, 30.132984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076187, 35.904842, 29.796041>,  <40.915916, 36.102264, 30.475883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076187, 35.904842, 29.796041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697788, 36.018879, 29.734320>,  <40.470749, 36.087303, 29.697287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697788, 36.018879, 29.734320>,  <41.076187, 35.904842, 29.796041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697788, 36.018879, 29.734320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202365, 0.147494, -0.968139,
		-0.253253, -0.947083, -0.197222,
		-0.945998, 0.285095, -0.154303,
		40.413990, 36.104408, 29.688028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013485, 35.823349, 29.110779>,  <41.076187, 35.904842, 29.796041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013485, 35.823349, 29.110779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675709, 36.030361, 29.166025>,  <40.473042, 36.154568, 29.199173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675709, 36.030361, 29.166025>,  <41.013485, 35.823349, 29.110779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675709, 36.030361, 29.166025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015024, 0.234860, -0.971913,
		-0.535432, -0.822802, -0.190551,
		-0.844445, 0.517530, 0.138114,
		40.422375, 36.185619, 29.207458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452450, 35.611328, 28.594255>,  <41.013485, 35.823349, 29.110779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452450, 35.611328, 28.594255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395870, 35.988564, 28.714638>,  <40.361923, 36.214905, 28.786867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395870, 35.988564, 28.714638>,  <40.452450, 35.611328, 28.594255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395870, 35.988564, 28.714638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042431, 0.309507, -0.949950,
		-0.989036, -0.121601, -0.083796,
		-0.141450, 0.943090, 0.300954,
		40.353436, 36.271492, 28.804924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061111, 35.878105, 28.015793>,  <40.452450, 35.611328, 28.594255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061111, 35.878105, 28.015793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167641, 36.213421, 28.206095>,  <40.231556, 36.414612, 28.320276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167641, 36.213421, 28.206095>,  <40.061111, 35.878105, 28.015793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167641, 36.213421, 28.206095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027455, 0.499979, -0.865602,
		-0.963494, 0.217465, 0.156170,
		0.266320, 0.838290, 0.475756,
		40.247536, 36.464909, 28.348822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676533, 36.336239, 27.628799>,  <40.061111, 35.878105, 28.015793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676533, 36.336239, 27.628799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943924, 36.554569, 27.830873>,  <40.104359, 36.685566, 27.952118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943924, 36.554569, 27.830873>,  <39.676533, 36.336239, 27.628799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943924, 36.554569, 27.830873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141415, 0.573582, -0.806849,
		-0.730165, 0.610801, 0.306238,
		0.668477, 0.545826, 0.505186,
		40.144466, 36.718315, 27.982430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381821, 36.983318, 27.520889>,  <39.676533, 36.336239, 27.628799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381821, 36.983318, 27.520889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771824, 37.016689, 27.603254>,  <40.005825, 37.036713, 27.652674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771824, 37.016689, 27.603254>,  <39.381821, 36.983318, 27.520889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771824, 37.016689, 27.603254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133656, 0.520101, -0.843582,
		-0.177471, 0.850021, 0.495952,
		0.975008, 0.083424, 0.205913,
		40.064327, 37.041718, 27.665028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587311, 37.704983, 27.290861>,  <39.381821, 36.983318, 27.520889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587311, 37.704983, 27.290861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900955, 37.456741, 27.293100>,  <40.089142, 37.307796, 27.294445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900955, 37.456741, 27.293100>,  <39.587311, 37.704983, 27.290861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900955, 37.456741, 27.293100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297365, 0.367760, -0.881094,
		0.544747, 0.692538, 0.472908,
		0.784107, -0.620600, 0.005600,
		40.136189, 37.270561, 27.294781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012192, 38.098049, 26.928324>,  <39.587311, 37.704983, 27.290861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012192, 38.098049, 26.928324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143002, 37.720085, 26.922600>,  <40.221485, 37.493309, 26.919165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143002, 37.720085, 26.922600>,  <40.012192, 38.098049, 26.928324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143002, 37.720085, 26.922600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206849, 0.086348, -0.974555,
		0.922101, 0.315742, 0.223691,
		0.327023, -0.944908, -0.014310,
		40.241108, 37.436611, 26.918306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687191, 38.095570, 26.618204>,  <40.012192, 38.098049, 26.928324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687191, 38.095570, 26.618204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516037, 37.737251, 26.570086>,  <40.413345, 37.522263, 26.541214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516037, 37.737251, 26.570086>,  <40.687191, 38.095570, 26.618204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516037, 37.737251, 26.570086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198045, 0.036939, -0.979497,
		0.881868, -0.442937, 0.161602,
		-0.427886, -0.895791, -0.120297,
		40.387672, 37.468513, 26.533997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091999, 37.829002, 26.101992>,  <40.687191, 38.095570, 26.618204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091999, 37.829002, 26.101992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779358, 37.579697, 26.112076>,  <40.591774, 37.430111, 26.118126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779358, 37.579697, 26.112076>,  <41.091999, 37.829002, 26.101992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779358, 37.579697, 26.112076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093970, -0.157605, -0.983021,
		0.616657, -0.765963, 0.181753,
		-0.781603, -0.623266, 0.025211,
		40.544876, 37.392715, 26.119638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332298, 37.145397, 25.831144>,  <41.091999, 37.829002, 26.101992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332298, 37.145397, 25.831144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937660, 37.166504, 25.769365>,  <40.700878, 37.179169, 25.732298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937660, 37.166504, 25.769365>,  <41.332298, 37.145397, 25.831144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937660, 37.166504, 25.769365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134859, -0.269440, -0.953528,
		-0.091928, -0.961570, 0.258711,
		-0.986591, 0.052766, -0.154446,
		40.641682, 37.182335, 25.723032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118694, 36.462242, 25.501753>,  <41.332298, 37.145397, 25.831144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118694, 36.462242, 25.501753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833515, 36.731060, 25.421700>,  <40.662407, 36.892349, 25.373667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833515, 36.731060, 25.421700>,  <41.118694, 36.462242, 25.501753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833515, 36.731060, 25.421700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085055, -0.200424, -0.976010,
		-0.696036, -0.712870, 0.085732,
		-0.712951, 0.672046, -0.200135,
		40.619629, 36.932674, 25.361658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766384, 36.138565, 25.033569>,  <41.118694, 36.462242, 25.501753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766384, 36.138565, 25.033569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638485, 36.514462, 24.985157>,  <40.561745, 36.739998, 24.956110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638485, 36.514462, 24.985157>,  <40.766384, 36.138565, 25.033569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638485, 36.514462, 24.985157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000685, -0.127508, -0.991837,
		-0.947502, -0.317221, 0.040126,
		-0.319748, 0.939740, -0.121031,
		40.542561, 36.796383, 24.948847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147717, 36.125790, 24.693363>,  <40.766384, 36.138565, 25.033569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147717, 36.125790, 24.693363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307735, 36.488983, 24.643526>,  <40.403748, 36.706902, 24.613625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307735, 36.488983, 24.643526>,  <40.147717, 36.125790, 24.693363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307735, 36.488983, 24.643526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138469, -0.074505, -0.987560,
		-0.905975, 0.412320, 0.095922,
		0.400045, 0.907987, -0.124593,
		40.427750, 36.761379, 24.606148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808491, 36.448612, 24.103325>,  <40.147717, 36.125790, 24.693363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808491, 36.448612, 24.103325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119595, 36.698109, 24.134401>,  <40.306255, 36.847809, 24.153048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119595, 36.698109, 24.134401>,  <39.808491, 36.448612, 24.103325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119595, 36.698109, 24.134401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064899, 0.043251, -0.996954,
		-0.625205, 0.780431, -0.006842,
		0.777758, 0.623744, 0.077690,
		40.352921, 36.885231, 24.157709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702511, 36.981281, 23.662954>,  <39.808491, 36.448612, 24.103325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702511, 36.981281, 23.662954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094639, 36.968807, 23.740931>,  <40.329914, 36.961323, 23.787716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094639, 36.968807, 23.740931>,  <39.702511, 36.981281, 23.662954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094639, 36.968807, 23.740931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196659, 0.067621, -0.978137,
		0.017324, 0.997223, 0.072424,
		0.980319, -0.031188, 0.194942,
		40.388733, 36.959450, 23.799414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040070, 37.522957, 23.166361>,  <39.702511, 36.981281, 23.662954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040070, 37.522957, 23.166361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338734, 37.287640, 23.290558>,  <40.517933, 37.146450, 23.365076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338734, 37.287640, 23.290558>,  <40.040070, 37.522957, 23.166361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338734, 37.287640, 23.290558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370458, -0.019937, -0.928635,
		0.552504, 0.808399, 0.203053,
		0.746660, -0.588297, 0.310493,
		40.562733, 37.111149, 23.383705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579720, 37.800140, 22.853086>,  <40.040070, 37.522957, 23.166361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579720, 37.800140, 22.853086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712910, 37.434734, 22.946575>,  <40.792824, 37.215492, 23.002668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712910, 37.434734, 22.946575>,  <40.579720, 37.800140, 22.853086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712910, 37.434734, 22.946575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317287, -0.124864, -0.940073,
		0.887951, 0.387178, 0.248268,
		0.332976, -0.913511, 0.233720,
		40.812801, 37.160683, 23.016691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191673, 37.792385, 22.447697>,  <40.579720, 37.800140, 22.853086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191673, 37.792385, 22.447697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095154, 37.412506, 22.527544>,  <41.037243, 37.184578, 22.575453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095154, 37.412506, 22.527544>,  <41.191673, 37.792385, 22.447697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095154, 37.412506, 22.527544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109077, -0.230934, -0.966836,
		0.964302, -0.211520, 0.159314,
		-0.241296, -0.949699, 0.199618,
		41.022766, 37.127598, 22.587429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756851, 37.442806, 22.154139>,  <41.191673, 37.792385, 22.447697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756851, 37.442806, 22.154139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434860, 37.205910, 22.168341>,  <41.241665, 37.063774, 22.176863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434860, 37.205910, 22.168341>,  <41.756851, 37.442806, 22.154139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434860, 37.205910, 22.168341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103504, -0.199106, -0.974497,
		0.584205, -0.780775, 0.221575,
		-0.804980, -0.592239, 0.035506,
		41.193367, 37.028236, 22.178993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005733, 36.829723, 21.760229>,  <41.756851, 37.442806, 22.154139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005733, 36.829723, 21.760229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606850, 36.803791, 21.775082>,  <41.367519, 36.788231, 21.783993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606850, 36.803791, 21.775082>,  <42.005733, 36.829723, 21.760229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606850, 36.803791, 21.775082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026690, -0.155092, -0.987539,
		0.069787, -0.985770, 0.152928,
		-0.997205, -0.064835, 0.037134,
		41.307690, 36.784340, 21.786222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836956, 36.239590, 21.313187>,  <42.005733, 36.829723, 21.760229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836956, 36.239590, 21.313187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479744, 36.418659, 21.331429>,  <41.265415, 36.526100, 21.342373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479744, 36.418659, 21.331429>,  <41.836956, 36.239590, 21.313187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479744, 36.418659, 21.331429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217637, -0.340988, -0.914528,
		-0.393861, -0.826628, 0.401944,
		-0.893033, 0.447675, 0.045603,
		41.211834, 36.552959, 21.345110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338848, 35.829929, 20.975357>,  <41.836956, 36.239590, 21.313187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338848, 35.829929, 20.975357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186535, 36.198395, 20.943199>,  <41.095146, 36.419472, 20.923904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186535, 36.198395, 20.943199>,  <41.338848, 35.829929, 20.975357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186535, 36.198395, 20.943199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294518, -0.203242, -0.933783,
		-0.876505, -0.331895, 0.348691,
		-0.380786, 0.921162, -0.080393,
		41.072300, 36.474743, 20.919081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588322, 35.059879, 20.892696>,  <41.338848, 35.829929, 20.975357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588322, 35.059879, 20.892696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934273, 34.865726, 20.841482>,  <42.141842, 34.749233, 20.810755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934273, 34.865726, 20.841482>,  <41.588322, 35.059879, 20.892696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934273, 34.865726, 20.841482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065132, -0.144395, 0.987374,
		-0.497741, -0.862296, -0.093270,
		0.864877, -0.485381, -0.128034,
		42.193737, 34.720112, 20.803072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490669, 34.584774, 21.397820>,  <41.588322, 35.059879, 20.892696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490669, 34.584774, 21.397820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878384, 34.583855, 21.299442>,  <42.111012, 34.583302, 21.240416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878384, 34.583855, 21.299442>,  <41.490669, 34.584774, 21.397820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878384, 34.583855, 21.299442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245812, -0.025011, 0.968995,
		-0.008376, -0.999685, -0.023679,
		0.969281, -0.002296, -0.245944,
		42.169167, 34.583164, 21.225658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641338, 33.942722, 21.634075>,  <41.490669, 34.584774, 21.397820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641338, 33.942722, 21.634075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953136, 34.193001, 21.622122>,  <42.140217, 34.343166, 21.614950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953136, 34.193001, 21.622122>,  <41.641338, 33.942722, 21.634075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953136, 34.193001, 21.622122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153859, -0.144998, 0.977396,
		0.607218, -0.766474, -0.209294,
		0.779496, 0.625694, -0.029883,
		42.186985, 34.380711, 21.613157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236778, 33.490002, 21.988398>,  <41.641338, 33.942722, 21.634075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236778, 33.490002, 21.988398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368492, 33.867599, 21.996796>,  <42.447521, 34.094158, 22.001835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368492, 33.867599, 21.996796>,  <42.236778, 33.490002, 21.988398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368492, 33.867599, 21.996796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410501, -0.163145, 0.897147,
		0.850330, -0.286797, -0.441233,
		0.329284, 0.943998, 0.020996,
		42.467278, 34.150799, 22.003094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915272, 33.535339, 22.169935>,  <42.236778, 33.490002, 21.988398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915272, 33.535339, 22.169935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787647, 33.903820, 22.259007>,  <42.711075, 34.124908, 22.312450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787647, 33.903820, 22.259007>,  <42.915272, 33.535339, 22.169935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787647, 33.903820, 22.259007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406369, -0.079289, 0.910262,
		0.856192, 0.380918, -0.349050,
		-0.319060, 0.921203, 0.222680,
		42.691929, 34.180180, 22.325809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396595, 33.789154, 22.513205>,  <42.915272, 33.535339, 22.169935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396595, 33.789154, 22.513205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092880, 34.020004, 22.633480>,  <42.910652, 34.158512, 22.705645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092880, 34.020004, 22.633480>,  <43.396595, 33.789154, 22.513205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092880, 34.020004, 22.633480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279262, -0.128385, 0.951593,
		0.587790, 0.806503, -0.063687,
		-0.759286, 0.577123, 0.300689,
		42.865093, 34.193142, 22.723686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720203, 34.041000, 23.084999>,  <43.396595, 33.789154, 22.513205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720203, 34.041000, 23.084999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333546, 34.133640, 23.128736>,  <43.101551, 34.189224, 23.154980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333546, 34.133640, 23.128736>,  <43.720203, 34.041000, 23.084999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333546, 34.133640, 23.128736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177929, 0.300193, 0.937137,
		0.184212, 0.925337, -0.331389,
		-0.966647, 0.231596, 0.109345,
		43.043552, 34.203117, 23.161539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655197, 34.725189, 23.352676>,  <43.720203, 34.041000, 23.084999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655197, 34.725189, 23.352676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317314, 34.537624, 23.455894>,  <43.114582, 34.425087, 23.517824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317314, 34.537624, 23.455894>,  <43.655197, 34.725189, 23.352676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317314, 34.537624, 23.455894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226158, 0.124258, 0.966133,
		-0.485094, 0.874461, 0.001086,
		-0.844711, -0.468911, 0.258043,
		43.063900, 34.396950, 23.533308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357876, 35.103970, 23.974779>,  <43.655197, 34.725189, 23.352676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357876, 35.103970, 23.974779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174049, 34.749058, 23.990423>,  <43.063755, 34.536110, 23.999809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174049, 34.749058, 23.990423>,  <43.357876, 35.103970, 23.974779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174049, 34.749058, 23.990423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095561, -0.005618, 0.995408,
		-0.882988, 0.461193, 0.087371,
		-0.459566, -0.887282, 0.039112,
		43.036179, 34.482872, 24.002157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833660, 35.186615, 24.434162>,  <43.357876, 35.103970, 23.974779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833660, 35.186615, 24.434162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890141, 34.790657, 24.429054>,  <42.924030, 34.553082, 24.425989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890141, 34.790657, 24.429054>,  <42.833660, 35.186615, 24.434162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890141, 34.790657, 24.429054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067632, -0.022515, 0.997456,
		-0.987668, -0.139982, -0.070128,
		0.141205, -0.989898, -0.012770,
		42.932503, 34.493687, 24.425222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281353, 34.888569, 24.904814>,  <42.833660, 35.186615, 24.434162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281353, 34.888569, 24.904814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550079, 34.592319, 24.900105>,  <42.711315, 34.414570, 24.897280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550079, 34.592319, 24.900105>,  <42.281353, 34.888569, 24.904814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550079, 34.592319, 24.900105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305752, -0.291756, 0.906308,
		-0.674667, -0.605274, -0.422454,
		0.671818, -0.740623, -0.011774,
		42.751625, 34.370132, 24.896572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936733, 34.217991, 25.053509>,  <42.281353, 34.888569, 24.904814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936733, 34.217991, 25.053509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324306, 34.177948, 25.143969>,  <42.556850, 34.153923, 25.198244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324306, 34.177948, 25.143969>,  <41.936733, 34.217991, 25.053509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324306, 34.177948, 25.143969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246254, -0.305965, 0.919644,
		-0.022869, -0.946765, -0.321112,
		0.968936, -0.100106, 0.226148,
		42.614986, 34.147915, 25.211813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968399, 33.520218, 25.367935>,  <41.936733, 34.217991, 25.053509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968399, 33.520218, 25.367935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262249, 33.771812, 25.469681>,  <42.438560, 33.922771, 25.530727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262249, 33.771812, 25.469681>,  <41.968399, 33.520218, 25.367935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262249, 33.771812, 25.469681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202349, -0.154729, 0.967013,
		0.647598, -0.761861, 0.013608,
		0.734624, 0.628989, 0.254363,
		42.482635, 33.960510, 25.545990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317337, 33.113892, 25.968033>,  <41.968399, 33.520218, 25.367935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317337, 33.113892, 25.968033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393658, 33.506199, 25.984493>,  <42.439449, 33.741581, 25.994370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393658, 33.506199, 25.984493>,  <42.317337, 33.113892, 25.968033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393658, 33.506199, 25.984493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255715, 0.009185, 0.966709,
		0.947737, -0.194969, 0.252549,
		0.190797, 0.980767, 0.041151,
		42.450897, 33.800430, 25.996840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795994, 33.218769, 26.433029>,  <42.317337, 33.113892, 25.968033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795994, 33.218769, 26.433029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617374, 33.576637, 26.428070>,  <42.510204, 33.791359, 26.425095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617374, 33.576637, 26.428070>,  <42.795994, 33.218769, 26.433029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617374, 33.576637, 26.428070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176920, -0.074704, 0.981386,
		0.877094, 0.440431, 0.191644,
		-0.446549, 0.894673, -0.012399,
		42.483410, 33.845039, 26.424351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067959, 33.681423, 27.033438>,  <42.795994, 33.218769, 26.433029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067959, 33.681423, 27.033438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715992, 33.839890, 26.928516>,  <42.504814, 33.934971, 26.865562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715992, 33.839890, 26.928516>,  <43.067959, 33.681423, 27.033438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715992, 33.839890, 26.928516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270405, 0.036396, 0.962058,
		0.390685, 0.917456, 0.075101,
		-0.879913, 0.396169, -0.262304,
		42.452019, 33.958740, 26.849825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871616, 34.248547, 27.439146>,  <43.067959, 33.681423, 27.033438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871616, 34.248547, 27.439146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497902, 34.211422, 27.301449>,  <42.273674, 34.189148, 27.218830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497902, 34.211422, 27.301449>,  <42.871616, 34.248547, 27.439146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497902, 34.211422, 27.301449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354258, 0.132708, 0.925683,
		-0.040230, 0.986800, -0.156865,
		-0.934282, -0.092811, -0.344243,
		42.217617, 34.183578, 27.198175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523144, 34.794395, 27.807377>,  <42.871616, 34.248547, 27.439146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523144, 34.794395, 27.807377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278301, 34.503338, 27.683531>,  <42.131397, 34.328705, 27.609224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278301, 34.503338, 27.683531>,  <42.523144, 34.794395, 27.807377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278301, 34.503338, 27.683531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459311, 0.008437, 0.888235,
		-0.643706, 0.685904, -0.339379,
		-0.612108, -0.727643, -0.309613,
		42.094669, 34.285046, 27.590647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827766, 34.987259, 27.912941>,  <42.523144, 34.794395, 27.807377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827766, 34.987259, 27.912941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839111, 34.587425, 27.910557>,  <41.845917, 34.347527, 27.909126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839111, 34.587425, 27.910557>,  <41.827766, 34.987259, 27.912941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839111, 34.587425, 27.910557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599042, -0.021767, 0.800422,
		-0.800216, -0.019128, -0.599407,
		0.028358, -0.999580, -0.005960,
		41.847618, 34.287552, 27.908770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183861, 34.764904, 28.003428>,  <41.827766, 34.987259, 27.912941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183861, 34.764904, 28.003428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390297, 34.443245, 28.121416>,  <41.514156, 34.250252, 28.192209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390297, 34.443245, 28.121416>,  <41.183861, 34.764904, 28.003428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390297, 34.443245, 28.121416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388506, 0.087146, 0.917316,
		-0.763360, -0.588012, -0.267440,
		0.516087, -0.804144, 0.294970,
		41.545124, 34.202003, 28.209908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808529, 34.537117, 28.547333>,  <41.183861, 34.764904, 28.003428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808529, 34.537117, 28.547333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145676, 34.331509, 28.611031>,  <41.347961, 34.208141, 28.649250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145676, 34.331509, 28.611031>,  <40.808529, 34.537117, 28.547333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145676, 34.331509, 28.611031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163770, 0.036863, 0.985810,
		-0.512599, -0.856984, -0.053111,
		0.842865, -0.514023, 0.159244,
		41.398537, 34.177303, 28.658804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637402, 34.073956, 29.015041>,  <40.808529, 34.537117, 28.547333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637402, 34.073956, 29.015041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036362, 34.068390, 29.043331>,  <41.275738, 34.065052, 29.060305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036362, 34.068390, 29.043331>,  <40.637402, 34.073956, 29.015041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036362, 34.068390, 29.043331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071922, -0.126698, 0.989331,
		-0.004803, -0.991844, -0.127369,
		0.997399, -0.013912, 0.070727,
		41.335583, 34.064217, 29.064548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827431, 33.502983, 29.400692>,  <40.637402, 34.073956, 29.015041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827431, 33.502983, 29.400692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113232, 33.780769, 29.434643>,  <41.284714, 33.947441, 29.455013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113232, 33.780769, 29.434643>,  <40.827431, 33.502983, 29.400692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113232, 33.780769, 29.434643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071867, -0.047825, 0.996267,
		0.695932, -0.717936, 0.015738,
		0.714503, 0.694465, 0.084879,
		41.327583, 33.989109, 29.460106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298256, 33.203148, 29.924910>,  <40.827431, 33.502983, 29.400692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298256, 33.203148, 29.924910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358345, 33.598270, 29.908537>,  <41.394398, 33.835342, 29.898712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358345, 33.598270, 29.908537>,  <41.298256, 33.203148, 29.924910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358345, 33.598270, 29.908537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197386, 0.070536, 0.977785,
		0.968748, -0.138805, 0.205575,
		0.150221, 0.987805, -0.040934,
		41.403412, 33.894611, 29.896257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701206, 33.292046, 30.494314>,  <41.298256, 33.203148, 29.924910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701206, 33.292046, 30.494314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563232, 33.659752, 30.418444>,  <41.480450, 33.880375, 30.372921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563232, 33.659752, 30.418444>,  <41.701206, 33.292046, 30.494314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563232, 33.659752, 30.418444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011213, 0.198027, 0.980133,
		0.938561, 0.340205, -0.057998,
		-0.344931, 0.919264, -0.189675,
		41.459755, 33.935532, 30.361542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005573, 33.726261, 30.952723>,  <41.701206, 33.292046, 30.494314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005573, 33.726261, 30.952723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686069, 33.941051, 30.844179>,  <41.494366, 34.069927, 30.779053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686069, 33.941051, 30.844179>,  <42.005573, 33.726261, 30.952723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686069, 33.941051, 30.844179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164561, 0.238840, 0.957014,
		0.578704, 0.809082, -0.102411,
		-0.798762, 0.536975, -0.271361,
		41.446442, 34.102142, 30.762772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096043, 34.433384, 31.278667>,  <42.005573, 33.726261, 30.952723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096043, 34.433384, 31.278667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710720, 34.355286, 31.204994>,  <41.479527, 34.308426, 31.160789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710720, 34.355286, 31.204994>,  <42.096043, 34.433384, 31.278667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710720, 34.355286, 31.204994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227653, 0.230787, 0.945998,
		-0.142193, 0.953214, -0.266766,
		-0.963305, -0.195244, -0.184185,
		41.421730, 34.296711, 31.149738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738220, 34.785690, 31.779951>,  <42.096043, 34.433384, 31.278667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738220, 34.785690, 31.779951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455154, 34.535099, 31.649269>,  <41.285316, 34.384743, 31.570860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455154, 34.535099, 31.649269>,  <41.738220, 34.785690, 31.779951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455154, 34.535099, 31.649269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399286, -0.026883, 0.916432,
		-0.582908, 0.778975, -0.231120,
		-0.707664, -0.626479, -0.326704,
		41.242855, 34.347157, 31.551258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051926, 35.014748, 32.009705>,  <41.738220, 34.785690, 31.779951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051926, 35.014748, 32.009705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997063, 34.628227, 31.922565>,  <40.964146, 34.396317, 31.870283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997063, 34.628227, 31.922565>,  <41.051926, 35.014748, 32.009705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997063, 34.628227, 31.922565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514427, -0.118455, 0.849314,
		-0.846495, 0.228556, -0.480842,
		-0.137157, -0.966297, -0.217847,
		40.955917, 34.338337, 31.857212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450016, 34.860226, 32.393734>,  <41.051926, 35.014748, 32.009705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450016, 34.860226, 32.393734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622757, 34.506107, 32.324738>,  <40.726402, 34.293636, 32.283340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622757, 34.506107, 32.324738>,  <40.450016, 34.860226, 32.393734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622757, 34.506107, 32.324738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262947, -0.306516, 0.914826,
		-0.862765, -0.349712, -0.365155,
		0.431852, -0.885296, -0.172496,
		40.752312, 34.240517, 32.272987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975674, 34.417267, 32.664356>,  <40.450016, 34.860226, 32.393734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975674, 34.417267, 32.664356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320797, 34.217159, 32.635258>,  <40.527870, 34.097095, 32.617798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320797, 34.217159, 32.635258>,  <39.975674, 34.417267, 32.664356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320797, 34.217159, 32.635258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189378, -0.453277, 0.871020,
		-0.468731, -0.737740, -0.485830,
		0.862802, -0.500280, -0.072753,
		40.579639, 34.067078, 32.613434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798450, 33.700939, 32.713871>,  <39.975674, 34.417267, 32.664356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798450, 33.700939, 32.713871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192066, 33.712601, 32.784084>,  <40.428238, 33.719597, 32.826214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192066, 33.712601, 32.784084>,  <39.798450, 33.700939, 32.713871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192066, 33.712601, 32.784084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121848, -0.608515, 0.784131,
		0.129675, -0.793006, -0.595252,
		0.984041, 0.029152, 0.175536,
		40.487278, 33.721348, 32.836746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965126, 32.993244, 32.817852>,  <39.798450, 33.700939, 32.713871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965126, 32.993244, 32.817852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252960, 33.214027, 32.986397>,  <40.425659, 33.346497, 33.087524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252960, 33.214027, 32.986397>,  <39.965126, 32.993244, 32.817852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252960, 33.214027, 32.986397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022125, -0.624705, 0.780547,
		0.694056, -0.552345, -0.461738,
		0.719581, 0.551959, 0.421360,
		40.468834, 33.379616, 33.112804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380974, 32.477016, 33.093990>,  <39.965126, 32.993244, 32.817852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380974, 32.477016, 33.093990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530144, 32.794010, 33.287029>,  <40.619644, 32.984207, 33.402851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530144, 32.794010, 33.287029>,  <40.380974, 32.477016, 33.093990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530144, 32.794010, 33.287029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094027, -0.485164, 0.869353,
		0.923086, -0.369578, -0.106413,
		0.372922, 0.792482, 0.482599,
		40.642021, 33.031754, 33.431808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977966, 32.216484, 33.556923>,  <40.380974, 32.477016, 33.093990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977966, 32.216484, 33.556923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848885, 32.560097, 33.715885>,  <40.771435, 32.766262, 33.811260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848885, 32.560097, 33.715885>,  <40.977966, 32.216484, 33.556923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848885, 32.560097, 33.715885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011877, -0.416158, 0.909215,
		0.946424, 0.298130, 0.124095,
		-0.322707, 0.859029, 0.397403,
		40.752071, 32.817806, 33.835106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525173, 32.408165, 34.019993>,  <40.977966, 32.216484, 33.556923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525173, 32.408165, 34.019993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168606, 32.570843, 34.099953>,  <40.954666, 32.668449, 34.147930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168606, 32.570843, 34.099953>,  <41.525173, 32.408165, 34.019993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168606, 32.570843, 34.099953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019248, -0.474701, 0.879936,
		0.452764, 0.780548, 0.430988,
		-0.891423, 0.406699, 0.199904,
		40.901180, 32.692852, 34.159924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585785, 32.753204, 34.716671>,  <41.525173, 32.408165, 34.019993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585785, 32.753204, 34.716671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197731, 32.675148, 34.659042>,  <40.964897, 32.628315, 34.624466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197731, 32.675148, 34.659042>,  <41.585785, 32.753204, 34.716671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197731, 32.675148, 34.659042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031246, -0.488461, 0.872026,
		-0.240540, 0.850486, 0.467776,
		-0.970136, -0.195141, -0.144068,
		40.906689, 32.616604, 34.615822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249546, 32.730503, 35.410412>,  <41.585785, 32.753204, 34.716671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249546, 32.730503, 35.410412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979649, 32.534527, 35.189621>,  <40.817711, 32.416943, 35.057148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979649, 32.534527, 35.189621>,  <41.249546, 32.730503, 35.410412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979649, 32.534527, 35.189621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205605, -0.593497, 0.778131,
		-0.708834, 0.638529, 0.299725,
		-0.674745, -0.489941, -0.551975,
		40.777225, 32.387543, 35.024029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762707, 32.666862, 35.814922>,  <41.249546, 32.730503, 35.410412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762707, 32.666862, 35.814922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733139, 32.377361, 35.540489>,  <40.715397, 32.203659, 35.375828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733139, 32.377361, 35.540489>,  <40.762707, 32.666862, 35.814922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733139, 32.377361, 35.540489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328093, -0.632021, 0.702072,
		-0.941748, 0.276999, -0.190738,
		-0.073923, -0.723755, -0.686086,
		40.710960, 32.160236, 35.334663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268318, 32.445267, 36.100231>,  <40.762707, 32.666862, 35.814922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268318, 32.445267, 36.100231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345367, 32.168056, 35.822350>,  <40.391598, 32.001732, 35.655621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345367, 32.168056, 35.822350>,  <40.268318, 32.445267, 36.100231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345367, 32.168056, 35.822350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361254, -0.708320, 0.606447,
		-0.912355, 0.134146, -0.386799,
		0.192625, -0.693027, -0.694700,
		40.403156, 31.960148, 35.613941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711048, 32.020649, 36.042591>,  <40.268318, 32.445267, 36.100231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711048, 32.020649, 36.042591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016106, 31.786514, 35.932495>,  <40.199139, 31.646034, 35.866440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016106, 31.786514, 35.932495>,  <39.711048, 32.020649, 36.042591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016106, 31.786514, 35.932495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264930, -0.670874, 0.692633,
		-0.590071, -0.455315, -0.666711,
		0.762645, -0.585335, -0.275237,
		40.244900, 31.610914, 35.849922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382713, 31.422453, 35.862614>,  <39.711048, 32.020649, 36.042591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382713, 31.422453, 35.862614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761879, 31.331957, 35.952301>,  <39.989380, 31.277658, 36.006115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761879, 31.331957, 35.952301>,  <39.382713, 31.422453, 35.862614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761879, 31.331957, 35.952301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312428, -0.797484, 0.516148,
		0.062038, -0.559316, -0.826630,
		0.947913, -0.226242, 0.224220,
		40.046253, 31.264084, 36.019566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407738, 30.724123, 35.852894>,  <39.382713, 31.422453, 35.862614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407738, 30.724123, 35.852894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714722, 30.852804, 36.074711>,  <39.898911, 30.930012, 36.207802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714722, 30.852804, 36.074711>,  <39.407738, 30.724123, 35.852894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714722, 30.852804, 36.074711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132619, -0.766610, 0.628268,
		0.627230, -0.555713, -0.545679,
		0.767461, 0.321701, 0.554539,
		39.944962, 30.949314, 36.241074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868500, 30.134968, 36.014893>,  <39.407738, 30.724123, 35.852894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868500, 30.134968, 36.014893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848335, 30.423672, 36.291016>,  <39.836235, 30.596895, 36.456688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848335, 30.423672, 36.291016>,  <39.868500, 30.134968, 36.014893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848335, 30.423672, 36.291016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285301, -0.672789, 0.682611,
		0.957111, -0.162531, 0.239838,
		-0.050415, 0.721761, 0.690304,
		39.833210, 30.640200, 36.498108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646416, 29.696182, 36.512642>,  <39.868500, 30.134968, 36.014893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646416, 29.696182, 36.512642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703384, 30.028337, 36.728115>,  <39.737564, 30.227631, 36.857399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703384, 30.028337, 36.728115>,  <39.646416, 29.696182, 36.512642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703384, 30.028337, 36.728115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360284, -0.463402, 0.809601,
		0.921907, -0.309381, 0.233177,
		0.142420, 0.830387, 0.538679,
		39.746109, 30.277454, 36.889717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961628, 29.485952, 37.198521>,  <39.646416, 29.696182, 36.512642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961628, 29.485952, 37.198521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778015, 29.838976, 37.239265>,  <39.667847, 30.050791, 37.263714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778015, 29.838976, 37.239265>,  <39.961628, 29.485952, 37.198521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778015, 29.838976, 37.239265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372073, -0.295095, 0.880046,
		0.806752, 0.366072, 0.463835,
		-0.459035, 0.882559, 0.101863,
		39.640305, 30.103745, 37.269825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746017, 29.425617, 37.824875>,  <39.961628, 29.485952, 37.198521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746017, 29.425617, 37.824875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562561, 29.760651, 37.706150>,  <39.452488, 29.961672, 37.634914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562561, 29.760651, 37.706150>,  <39.746017, 29.425617, 37.824875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562561, 29.760651, 37.706150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742220, -0.177421, 0.646244,
		0.488624, 0.516694, 0.703046,
		-0.458645, 0.837586, -0.296809,
		39.424969, 30.011927, 37.617107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605873, 29.797277, 38.513405>,  <39.746017, 29.425617, 37.824875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605873, 29.797277, 38.513405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350662, 29.959852, 38.251801>,  <39.197536, 30.057396, 38.094837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350662, 29.959852, 38.251801>,  <39.605873, 29.797277, 38.513405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350662, 29.959852, 38.251801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715350, 0.001438, 0.698765,
		0.284943, 0.913679, 0.289826,
		-0.638030, 0.406436, -0.654009,
		39.159252, 30.081783, 38.055599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302853, 30.412750, 38.796131>,  <39.605873, 29.797277, 38.513405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302853, 30.412750, 38.796131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050755, 30.318930, 38.500084>,  <38.899494, 30.262638, 38.322456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050755, 30.318930, 38.500084>,  <39.302853, 30.412750, 38.796131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050755, 30.318930, 38.500084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775105, 0.135113, 0.617216,
		-0.044767, 0.962669, -0.266955,
		-0.630244, -0.234549, -0.740121,
		38.861683, 30.248566, 38.278046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803509, 30.864420, 38.847546>,  <39.302853, 30.412750, 38.796131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803509, 30.864420, 38.847546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635208, 30.553484, 38.660480>,  <38.534225, 30.366922, 38.548241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635208, 30.553484, 38.660480>,  <38.803509, 30.864420, 38.847546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635208, 30.553484, 38.660480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758590, 0.018773, 0.651297,
		-0.497500, 0.628800, -0.597582,
		-0.420754, -0.777340, -0.467662,
		38.508984, 30.320282, 38.520184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166393, 30.972719, 38.870255>,  <38.803509, 30.864420, 38.847546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166393, 30.972719, 38.870255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115223, 30.586056, 38.781521>,  <38.084522, 30.354057, 38.728283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115223, 30.586056, 38.781521>,  <38.166393, 30.972719, 38.870255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115223, 30.586056, 38.781521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857663, -0.004500, 0.514193,
		-0.498047, 0.256033, -0.828490,
		-0.127922, -0.966657, -0.221831,
		38.076847, 30.296059, 38.714973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422871, 30.707058, 38.711521>,  <38.166393, 30.972719, 38.870255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422871, 30.707058, 38.711521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594021, 30.363173, 38.823097>,  <37.696712, 30.156841, 38.890045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594021, 30.363173, 38.823097>,  <37.422871, 30.707058, 38.711521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594021, 30.363173, 38.823097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719033, -0.136781, 0.681382,
		-0.547641, -0.492119, -0.676690,
		0.427879, -0.859715, 0.278943,
		37.722385, 30.105259, 38.906780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784840, 30.205498, 38.706329>,  <37.422871, 30.707058, 38.711521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784840, 30.205498, 38.706329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079708, 30.076870, 38.944042>,  <37.256630, 29.999693, 39.086670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079708, 30.076870, 38.944042>,  <36.784840, 30.205498, 38.706329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079708, 30.076870, 38.944042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675094, -0.388011, 0.627452,
		0.028820, -0.863736, -0.503119,
		0.737169, -0.321570, 0.594285,
		37.300858, 29.980398, 39.122326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523529, 29.774622, 39.183315>,  <36.784840, 30.205498, 38.706329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523529, 29.774622, 39.183315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889809, 29.732061, 39.338322>,  <37.109577, 29.706526, 39.431328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889809, 29.732061, 39.338322>,  <36.523529, 29.774622, 39.183315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889809, 29.732061, 39.338322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379635, -0.545290, 0.747352,
		0.131790, -0.831467, -0.539717,
		0.915701, -0.106402, 0.387518,
		37.164520, 29.700140, 39.454578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571545, 29.071568, 39.195904>,  <36.523529, 29.774622, 39.183315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571545, 29.071568, 39.195904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772221, 29.293974, 39.460979>,  <36.892628, 29.427418, 39.620026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772221, 29.293974, 39.460979>,  <36.571545, 29.071568, 39.195904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772221, 29.293974, 39.460979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492799, -0.445903, 0.747208,
		0.710953, -0.701438, 0.050299,
		0.501691, 0.556017, 0.662685,
		36.922729, 29.460779, 39.659786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568722, 28.640852, 39.843796>,  <36.571545, 29.071568, 39.195904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568722, 28.640852, 39.843796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649689, 29.022150, 39.933556>,  <36.698269, 29.250929, 39.987411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649689, 29.022150, 39.933556>,  <36.568722, 28.640852, 39.843796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649689, 29.022150, 39.933556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447451, -0.113795, 0.887039,
		0.871099, -0.279960, 0.403496,
		0.202419, 0.953244, 0.224395,
		36.710415, 29.308123, 40.000874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731716, 28.563833, 40.630936>,  <36.568722, 28.640852, 39.843796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731716, 28.563833, 40.630936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657284, 28.950138, 40.558632>,  <36.612625, 29.181921, 40.515247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657284, 28.950138, 40.558632>,  <36.731716, 28.563833, 40.630936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657284, 28.950138, 40.558632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511510, 0.061856, 0.857048,
		0.838886, 0.251946, 0.482486,
		-0.186085, 0.965762, -0.180763,
		36.601460, 29.239866, 40.504402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886360, 28.942877, 41.278450>,  <36.731716, 28.563833, 40.630936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886360, 28.942877, 41.278450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608738, 29.120810, 41.052032>,  <36.442165, 29.227570, 40.916180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608738, 29.120810, 41.052032>,  <36.886360, 28.942877, 41.278450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608738, 29.120810, 41.052032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601090, 0.074647, 0.795688,
		0.396202, 0.892497, 0.215576,
		-0.694057, 0.444834, -0.566046,
		36.400520, 29.254259, 40.882217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663429, 29.597679, 41.652096>,  <36.886360, 28.942877, 41.278450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663429, 29.597679, 41.652096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355858, 29.518465, 41.408943>,  <36.171314, 29.470936, 41.263050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355858, 29.518465, 41.408943>,  <36.663429, 29.597679, 41.652096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355858, 29.518465, 41.408943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624902, 0.031955, 0.780049,
		-0.135054, 0.979674, -0.148326,
		-0.768933, -0.198037, -0.607885,
		36.125179, 29.459053, 41.226578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087048, 30.084637, 41.717930>,  <36.663429, 29.597679, 41.652096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087048, 30.084637, 41.717930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936386, 29.730850, 41.607765>,  <35.845989, 29.518579, 41.541664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936386, 29.730850, 41.607765>,  <36.087048, 30.084637, 41.717930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936386, 29.730850, 41.607765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583751, -0.004229, 0.811922,
		-0.719280, 0.466590, -0.514714,
		-0.376658, -0.884464, -0.275414,
		35.823387, 29.465511, 41.525143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283669, 30.055500, 41.491722>,  <36.087048, 30.084637, 41.717930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283669, 30.055500, 41.491722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398922, 29.703625, 41.643051>,  <35.468075, 29.492500, 41.733849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398922, 29.703625, 41.643051>,  <35.283669, 30.055500, 41.491722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398922, 29.703625, 41.643051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687323, 0.085097, 0.721350,
		-0.666757, -0.467876, -0.580110,
		0.288137, -0.879688, 0.378321,
		35.485363, 29.439718, 41.756546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755619, 29.493353, 41.550823>,  <35.283669, 30.055500, 41.491722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755619, 29.493353, 41.550823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994839, 29.531191, 41.869167>,  <35.138371, 29.553894, 42.060173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994839, 29.531191, 41.869167>,  <34.755619, 29.493353, 41.550823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994839, 29.531191, 41.869167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793588, 0.208728, 0.571534,
		-0.112054, -0.973388, 0.199898,
		0.598048, 0.094594, 0.795858,
		35.174252, 29.559570, 42.107925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636936, 29.040047, 41.991184>,  <34.755619, 29.493353, 41.550823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636936, 29.040047, 41.991184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759682, 29.368902, 42.182983>,  <34.833328, 29.566216, 42.298065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759682, 29.368902, 42.182983>,  <34.636936, 29.040047, 41.991184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759682, 29.368902, 42.182983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842576, 0.000371, 0.538577,
		0.442608, -0.569285, 0.692830,
		0.306861, 0.822140, 0.479501,
		34.851742, 29.615543, 42.326836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827480, 28.397583, 42.229355>,  <34.636936, 29.040047, 41.991184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827480, 28.397583, 42.229355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166897, 28.191309, 42.276760>,  <35.370548, 28.067545, 42.305202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166897, 28.191309, 42.276760>,  <34.827480, 28.397583, 42.229355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166897, 28.191309, 42.276760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175474, 0.062957, -0.982469,
		0.499182, 0.854463, 0.143910,
		0.848544, -0.515683, 0.118509,
		35.421459, 28.036604, 42.312313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239082, 28.527397, 41.481609>,  <34.827480, 28.397583, 42.229355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239082, 28.527397, 41.481609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250824, 28.925861, 41.514603>,  <35.257870, 29.164940, 41.534397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250824, 28.925861, 41.514603>,  <35.239082, 28.527397, 41.481609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250824, 28.925861, 41.514603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458421, 0.059910, -0.886713,
		-0.888250, 0.063839, -0.454903,
		0.029353, 0.996160, 0.082480,
		35.259628, 29.224709, 41.539349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166206, 28.739248, 40.797691>,  <35.239082, 28.527397, 41.481609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166206, 28.739248, 40.797691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318504, 29.070982, 40.961269>,  <35.409882, 29.270023, 41.059414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318504, 29.070982, 40.961269>,  <35.166206, 28.739248, 40.797691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318504, 29.070982, 40.961269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513288, 0.178300, -0.839491,
		-0.769134, 0.529538, -0.357801,
		0.380746, 0.829336, 0.408942,
		35.432728, 29.319782, 41.083954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201332, 29.346260, 40.323009>,  <35.166206, 28.739248, 40.797691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201332, 29.346260, 40.323009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486103, 29.392071, 40.600151>,  <35.656963, 29.419558, 40.766438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486103, 29.392071, 40.600151>,  <35.201332, 29.346260, 40.323009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486103, 29.392071, 40.600151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656319, 0.242465, -0.714462,
		-0.249817, 0.963377, 0.097451,
		0.711925, 0.114526, 0.692854,
		35.699680, 29.426428, 40.808006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513412, 30.026909, 40.301086>,  <35.201332, 29.346260, 40.323009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513412, 30.026909, 40.301086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799545, 29.805035, 40.471085>,  <35.971226, 29.671911, 40.573086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799545, 29.805035, 40.471085>,  <35.513412, 30.026909, 40.301086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799545, 29.805035, 40.471085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644943, 0.289971, -0.707082,
		0.268970, 0.779900, 0.565165,
		0.715334, -0.554683, 0.424998,
		36.014145, 29.638630, 40.598583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141968, 30.412777, 40.260368>,  <35.513412, 30.026909, 40.301086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141968, 30.412777, 40.260368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308392, 30.062572, 40.358654>,  <36.408245, 29.852449, 40.417625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308392, 30.062572, 40.358654>,  <36.141968, 30.412777, 40.260368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308392, 30.062572, 40.358654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738390, 0.167568, -0.653224,
		0.530730, 0.453213, 0.716187,
		0.416060, -0.875510, 0.245715,
		36.433208, 29.799919, 40.432369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840256, 30.472496, 40.486610>,  <36.141968, 30.412777, 40.260368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840256, 30.472496, 40.486610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829597, 30.086563, 40.382004>,  <36.823204, 29.855003, 40.319241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829597, 30.086563, 40.382004>,  <36.840256, 30.472496, 40.486610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829597, 30.086563, 40.382004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825116, 0.126464, -0.550627,
		0.564335, -0.230453, 0.792728,
		-0.026642, -0.964831, -0.261519,
		36.821606, 29.797113, 40.303547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555752, 30.180552, 40.582245>,  <36.840256, 30.472496, 40.486610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555752, 30.180552, 40.582245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361618, 29.974138, 40.299923>,  <37.245136, 29.850290, 40.130531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361618, 29.974138, 40.299923>,  <37.555752, 30.180552, 40.582245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361618, 29.974138, 40.299923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712467, 0.234496, -0.661364,
		0.506795, -0.823845, 0.253848,
		-0.485335, -0.516034, -0.705804,
		37.216019, 29.819328, 40.088181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086491, 29.883379, 40.276905>,  <37.555752, 30.180552, 40.582245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086491, 29.883379, 40.276905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790852, 29.818853, 40.015308>,  <37.613468, 29.780138, 39.858349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790852, 29.818853, 40.015308>,  <38.086491, 29.883379, 40.276905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790852, 29.818853, 40.015308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644354, 0.113639, -0.756237,
		0.196312, -0.980338, 0.019954,
		-0.739101, -0.161316, -0.653994,
		37.569122, 29.770460, 39.819111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429726, 29.396381, 39.822575>,  <38.086491, 29.883379, 40.276905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429726, 29.396381, 39.822575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099861, 29.534021, 39.643009>,  <37.901943, 29.616606, 39.535271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099861, 29.534021, 39.643009>,  <38.429726, 29.396381, 39.822575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099861, 29.534021, 39.643009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454504, -0.069283, -0.888046,
		-0.336681, -0.936372, -0.099260,
		-0.824665, 0.344103, -0.448911,
		37.852463, 29.637251, 39.508335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328087, 29.028856, 39.241322>,  <38.429726, 29.396381, 39.822575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328087, 29.028856, 39.241322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126015, 29.360981, 39.147202>,  <38.004772, 29.560257, 39.090729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126015, 29.360981, 39.147202>,  <38.328087, 29.028856, 39.241322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126015, 29.360981, 39.147202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581023, 0.125627, -0.804133,
		-0.638123, -0.542951, -0.545896,
		-0.505185, 0.830314, -0.235301,
		37.974461, 29.610075, 39.076611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080631, 29.063101, 38.638069>,  <38.328087, 29.028856, 39.241322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080631, 29.063101, 38.638069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044498, 29.460905, 38.659176>,  <38.022820, 29.699589, 38.671841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044498, 29.460905, 38.659176>,  <38.080631, 29.063101, 38.638069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044498, 29.460905, 38.659176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439089, 0.087330, -0.894189,
		-0.893891, -0.057605, -0.444568,
		-0.090334, 0.994512, 0.052770,
		38.017399, 29.759258, 38.675007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934261, 29.281322, 37.921001>,  <38.080631, 29.063101, 38.638069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934261, 29.281322, 37.921001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120541, 29.579575, 38.111645>,  <38.232307, 29.758526, 38.226032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120541, 29.579575, 38.111645>,  <37.934261, 29.281322, 37.921001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120541, 29.579575, 38.111645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558258, 0.170352, -0.811990,
		-0.686637, 0.644215, -0.336922,
		0.465701, 0.745632, 0.476608,
		38.260250, 29.803265, 38.254627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070915, 29.740133, 37.390343>,  <37.934261, 29.281322, 37.921001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070915, 29.740133, 37.390343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311779, 29.882429, 37.676239>,  <38.456299, 29.967806, 37.847775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311779, 29.882429, 37.676239>,  <38.070915, 29.740133, 37.390343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311779, 29.882429, 37.676239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646042, 0.308870, -0.698018,
		-0.469073, 0.882071, -0.043832,
		0.602163, 0.355739, 0.714737,
		38.492428, 29.989151, 37.890659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920570, 30.360573, 37.720524>,  <38.070915, 29.740133, 37.390343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920570, 30.360573, 37.720524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133194, 30.685236, 37.817402>,  <38.260769, 30.880033, 37.875530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133194, 30.685236, 37.817402>,  <37.920570, 30.360573, 37.720524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133194, 30.685236, 37.817402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819207, 0.565313, -0.096541,
		-0.215274, -0.147091, 0.965412,
		0.531560, 0.811656, 0.242196,
		38.292664, 30.928732, 37.890060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294968, 30.568300, 37.190937>,  <37.920570, 30.360573, 37.720524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294968, 30.568300, 37.190937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553337, 30.406054, 37.449627>,  <38.708359, 30.308706, 37.604843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553337, 30.406054, 37.449627>,  <38.294968, 30.568300, 37.190937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553337, 30.406054, 37.449627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759744, 0.424389, -0.492628,
		-0.074647, 0.809548, 0.582288,
		0.645923, -0.405617, 0.646729,
		38.747112, 30.284369, 37.643646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760040, 31.091669, 37.249161>,  <38.294968, 30.568300, 37.190937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760040, 31.091669, 37.249161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965363, 30.772104, 37.374546>,  <39.088554, 30.580366, 37.449780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965363, 30.772104, 37.374546>,  <38.760040, 31.091669, 37.249161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965363, 30.772104, 37.374546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803019, 0.318243, -0.503866,
		0.302785, 0.510357, 0.804896,
		0.513304, -0.798910, 0.313467,
		39.119354, 30.532431, 37.468586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431355, 31.367178, 37.623653>,  <38.760040, 31.091669, 37.249161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431355, 31.367178, 37.623653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465061, 30.996887, 37.476181>,  <39.485287, 30.774714, 37.387695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465061, 30.996887, 37.476181>,  <39.431355, 31.367178, 37.623653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465061, 30.996887, 37.476181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802376, 0.282434, -0.525761,
		0.590840, -0.251517, 0.766582,
		0.084271, -0.925727, -0.368684,
		39.490341, 30.719170, 37.365578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147354, 31.326311, 37.446827>,  <39.431355, 31.367178, 37.623653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147354, 31.326311, 37.446827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996490, 30.998249, 37.274734>,  <39.905972, 30.801413, 37.171478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996490, 30.998249, 37.274734>,  <40.147354, 31.326311, 37.446827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996490, 30.998249, 37.274734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603618, 0.134635, -0.785823,
		0.702419, -0.556078, 0.444280,
		-0.377163, -0.820153, -0.430229,
		39.883343, 30.752203, 37.145664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670750, 30.829243, 37.351597>,  <40.147354, 31.326311, 37.446827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670750, 30.829243, 37.351597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376129, 30.815237, 37.081406>,  <40.199356, 30.806833, 36.919292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376129, 30.815237, 37.081406>,  <40.670750, 30.829243, 37.351597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376129, 30.815237, 37.081406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594503, 0.442770, -0.671209,
		0.322581, -0.895951, -0.305307,
		-0.736551, -0.035013, -0.675475,
		40.155163, 30.804733, 36.878765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979393, 31.216024, 36.925797>,  <40.670750, 30.829243, 37.351597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979393, 31.216024, 36.925797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669296, 31.106541, 36.698082>,  <40.483238, 31.040850, 36.561455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669296, 31.106541, 36.698082>,  <40.979393, 31.216024, 36.925797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669296, 31.106541, 36.698082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368080, 0.536672, -0.759276,
		0.513330, -0.798168, -0.315311,
		-0.775248, -0.273699, -0.569279,
		40.436726, 31.024427, 36.527298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277328, 31.047562, 36.322651>,  <40.979393, 31.216024, 36.925797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277328, 31.047562, 36.322651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899212, 31.127045, 36.219158>,  <40.672340, 31.174734, 36.157063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899212, 31.127045, 36.219158>,  <41.277328, 31.047562, 36.322651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899212, 31.127045, 36.219158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326200, 0.586788, -0.741130,
		0.004552, -0.784981, -0.619503,
		-0.945290, 0.198708, -0.258732,
		40.615623, 31.186657, 36.141537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231857, 30.880592, 35.538807>,  <41.277328, 31.047562, 36.322651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231857, 30.880592, 35.538807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937981, 31.129784, 35.646233>,  <40.761654, 31.279299, 35.710690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937981, 31.129784, 35.646233>,  <41.231857, 30.880592, 35.538807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937981, 31.129784, 35.646233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189809, 0.568834, -0.800250,
		-0.651307, -0.536960, -0.536164,
		-0.734691, 0.622977, 0.268566,
		40.717575, 31.316677, 35.726803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927616, 30.905497, 35.789909>,  <41.231857, 30.880592, 35.538807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927616, 30.905497, 35.789909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680588, 30.595373, 35.842823>,  <41.532372, 30.409298, 35.874573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680588, 30.595373, 35.842823>,  <41.927616, 30.905497, 35.789909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680588, 30.595373, 35.842823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750178, -0.631181, -0.197090,
		0.236301, -0.022480, 0.971420,
		-0.617572, -0.775310, 0.132285,
		41.495316, 30.362780, 35.882507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986446, 30.591904, 36.434246>,  <41.927616, 30.905497, 35.789909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986446, 30.591904, 36.434246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888569, 30.370754, 36.115635>,  <41.829842, 30.238064, 35.924469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888569, 30.370754, 36.115635>,  <41.986446, 30.591904, 36.434246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888569, 30.370754, 36.115635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951235, -0.296016, -0.086753,
		-0.187821, -0.778912, 0.598348,
		-0.244693, -0.552875, -0.796526,
		41.815163, 30.204891, 35.876678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586510, 30.176325, 36.669357>,  <41.986446, 30.591904, 36.434246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586510, 30.176325, 36.669357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788979, 30.308205, 36.350586>,  <42.910458, 30.387333, 36.159325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788979, 30.308205, 36.350586>,  <42.586510, 30.176325, 36.669357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788979, 30.308205, 36.350586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018981, 0.919559, 0.392493,
		0.862225, -0.213795, 0.459194,
		0.506169, 0.329702, -0.796925,
		42.940830, 30.407116, 36.111507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005276, 30.664942, 36.909077>,  <42.586510, 30.176325, 36.669357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005276, 30.664942, 36.909077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961334, 30.779989, 36.528507>,  <42.934967, 30.849018, 36.300167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961334, 30.779989, 36.528507>,  <43.005276, 30.664942, 36.909077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961334, 30.779989, 36.528507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039265, 0.955215, 0.293298,
		0.993172, 0.069578, -0.093644,
		-0.109857, 0.287618, -0.951424,
		42.928375, 30.866274, 36.243080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557972, 31.233164, 36.712589>,  <43.005276, 30.664942, 36.909077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557972, 31.233164, 36.712589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248337, 31.304070, 36.469490>,  <43.062553, 31.346613, 36.323631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248337, 31.304070, 36.469490>,  <43.557972, 31.233164, 36.712589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248337, 31.304070, 36.469490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058299, 0.975880, 0.210378,
		0.630383, 0.127421, -0.765755,
		-0.774092, 0.177262, -0.607750,
		43.016109, 31.357248, 36.287167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669159, 31.854790, 36.265118>,  <43.557972, 31.233164, 36.712589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669159, 31.854790, 36.265118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282921, 31.785051, 36.342300>,  <43.051178, 31.743208, 36.388611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282921, 31.785051, 36.342300>,  <43.669159, 31.854790, 36.265118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282921, 31.785051, 36.342300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098774, 0.932258, 0.348051,
		-0.240566, 0.317017, -0.917403,
		-0.965594, -0.174345, 0.192956,
		42.993244, 31.732748, 36.400188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247936, 32.359787, 35.756111>,  <43.669159, 31.854790, 36.265118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247936, 32.359787, 35.756111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605282, 32.539471, 35.751984>,  <43.819691, 32.647282, 35.749508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605282, 32.539471, 35.751984>,  <43.247936, 32.359787, 35.756111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605282, 32.539471, 35.751984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335760, -0.682648, -0.649044,
		-0.298598, 0.576371, -0.760681,
		0.893367, 0.449209, -0.010315,
		43.873291, 32.674232, 35.748890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388992, 32.788677, 35.203186>,  <43.247936, 32.359787, 35.756111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388992, 32.788677, 35.203186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716503, 32.606926, 35.343552>,  <43.913010, 32.497875, 35.427773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716503, 32.606926, 35.343552>,  <43.388992, 32.788677, 35.203186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716503, 32.606926, 35.343552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179960, -0.377297, -0.908439,
		0.545172, 0.806963, -0.227154,
		0.818781, -0.454377, 0.350913,
		43.962139, 32.470612, 35.448826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771160, 33.354904, 34.834671>,  <43.388992, 32.788677, 35.203186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771160, 33.354904, 34.834671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027939, 33.533695, 35.083862>,  <44.182007, 33.640972, 35.233379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027939, 33.533695, 35.083862>,  <43.771160, 33.354904, 34.834671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027939, 33.533695, 35.083862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762459, -0.286329, -0.580235,
		-0.080976, 0.847480, -0.524614,
		0.641950, 0.446982, 0.622983,
		44.220524, 33.667789, 35.270756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160336, 33.822285, 34.375771>,  <43.771160, 33.354904, 34.834671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160336, 33.822285, 34.375771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348579, 33.713585, 34.711552>,  <44.461525, 33.648365, 34.913021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348579, 33.713585, 34.711552>,  <44.160336, 33.822285, 34.375771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348579, 33.713585, 34.711552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811207, -0.240997, -0.532788,
		0.347089, 0.931705, 0.107027,
		0.470609, -0.271746, 0.839453,
		44.489761, 33.632061, 34.963387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885914, 33.922649, 34.193314>,  <44.160336, 33.822285, 34.375771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885914, 33.922649, 34.193314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898994, 33.683731, 34.513855>,  <44.906841, 33.540382, 34.706181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898994, 33.683731, 34.513855>,  <44.885914, 33.922649, 34.193314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898994, 33.683731, 34.513855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897149, -0.335847, -0.286932,
		0.440516, 0.728318, 0.524879,
		0.032699, -0.597293, 0.801356,
		44.908806, 33.504543, 34.754261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224247, 33.394821, 33.767666>,  <44.885914, 33.922649, 34.193314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224247, 33.394821, 33.767666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358521, 33.565670, 33.431839>,  <45.439083, 33.668179, 33.230343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358521, 33.565670, 33.431839>,  <45.224247, 33.394821, 33.767666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358521, 33.565670, 33.431839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139053, -0.859055, -0.492635,
		-0.931654, 0.282115, -0.228979,
		0.335685, 0.427126, -0.839571,
		45.459225, 33.693810, 33.179966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729824, 33.508347, 33.145523>,  <45.224247, 33.394821, 33.767666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.729824, 33.508347, 33.145523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108334, 33.409740, 33.061810>,  <45.335438, 33.350578, 33.011581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108334, 33.409740, 33.061810>,  <44.729824, 33.508347, 33.145523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108334, 33.409740, 33.061810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315606, -0.845035, -0.431634,
		-0.070452, 0.474496, -0.877434,
		0.946271, -0.246514, -0.209289,
		45.392216, 33.335785, 32.999023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065285, 34.088852, 32.839935>,  <44.729824, 33.508347, 33.145523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065285, 34.088852, 32.839935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267750, 33.944965, 33.153469>,  <45.389229, 33.858635, 33.341591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267750, 33.944965, 33.153469>,  <45.065285, 34.088852, 32.839935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.267750, 33.944965, 33.153469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840152, 0.410927, -0.353954,
		-0.194778, 0.837703, 0.510211,
		0.506167, -0.359712, 0.783838,
		45.419601, 33.837051, 33.388622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.395153, 34.662136, 33.237762>,  <45.065285, 34.088852, 32.839935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.395153, 34.662136, 33.237762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618481, 34.332108, 33.272495>,  <45.752480, 34.134090, 33.293335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618481, 34.332108, 33.272495>,  <45.395153, 34.662136, 33.237762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618481, 34.332108, 33.272495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793037, 0.500027, -0.347945,
		0.243660, 0.263126, 0.933485,
		0.558321, -0.825068, 0.086832,
		45.785976, 34.084587, 33.298546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996361, 34.780666, 33.585617>,  <45.395153, 34.662136, 33.237762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996361, 34.780666, 33.585617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072628, 34.462315, 33.355759>,  <46.118389, 34.271301, 33.217842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072628, 34.462315, 33.355759>,  <45.996361, 34.780666, 33.585617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.072628, 34.462315, 33.355759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806833, 0.460501, -0.370080,
		0.559164, -0.393079, 0.729948,
		0.190671, -0.795882, -0.574645,
		46.129829, 34.223549, 33.183365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.600830, 34.622589, 33.678867>,  <45.996361, 34.780666, 33.585617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.600830, 34.622589, 33.678867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489799, 34.538578, 33.303883>,  <46.423180, 34.488171, 33.078892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489799, 34.538578, 33.303883>,  <46.600830, 34.622589, 33.678867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489799, 34.538578, 33.303883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658835, 0.668586, -0.344862,
		0.699206, -0.713360, -0.047210,
		-0.277575, -0.210026, -0.937466,
		46.406528, 34.475571, 33.022644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.111214, 34.412170, 33.258549>,  <46.600830, 34.622589, 33.678867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.111214, 34.412170, 33.258549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827778, 34.609573, 33.056816>,  <46.657715, 34.728016, 32.935776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827778, 34.609573, 33.056816>,  <47.111214, 34.412170, 33.258549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.827778, 34.609573, 33.056816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699172, 0.587443, -0.407516,
		0.095155, -0.641377, -0.761302,
		-0.708593, 0.493504, -0.504331,
		46.615200, 34.757626, 32.905518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.354923, 34.513386, 33.943813>,  <47.111214, 34.412170, 33.258549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.354923, 34.513386, 33.943813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376774, 34.503235, 34.343086>,  <47.389885, 34.497147, 34.582649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376774, 34.503235, 34.343086>,  <47.354923, 34.513386, 33.943813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.376774, 34.503235, 34.343086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867753, 0.495770, -0.034883,
		-0.493985, 0.868083, 0.049097,
		0.054622, -0.025373, 0.998185,
		47.393162, 34.495625, 34.642540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.894764, 34.833832, 34.134880>,  <47.354923, 34.513386, 33.943813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.894764, 34.833832, 34.134880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834167, 34.655594, 34.487808>,  <47.797810, 34.548653, 34.699566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834167, 34.655594, 34.487808>,  <47.894764, 34.833832, 34.134880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.834167, 34.655594, 34.487808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767229, 0.509796, 0.389188,
		-0.623225, 0.735904, 0.264643,
		-0.151491, -0.445594, 0.882325,
		47.788719, 34.521915, 34.752506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.676147, 35.317081, 34.727238>,  <47.894764, 34.833832, 34.134880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.676147, 35.317081, 34.727238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.864342, 34.990177, 34.860344>,  <47.977261, 34.794037, 34.940208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.864342, 34.990177, 34.860344>,  <47.676147, 35.317081, 34.727238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.864342, 34.990177, 34.860344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741597, 0.570582, 0.352803,
		-0.478200, 0.080787, 0.874527,
		0.470488, -0.817257, 0.332764,
		48.005489, 34.744999, 34.960175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.477158, 32.196949, 26.699314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.160831, 32.309269, 26.481775>,  <37.971035, 32.376659, 26.351252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.160831, 32.309269, 26.481775>,  <38.477158, 32.196949, 26.699314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160831, 32.309269, 26.481775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612059, -0.362254, 0.702962,
		0.000380, 0.888777, 0.458340,
		-0.790812, 0.280798, -0.543846,
		37.923588, 32.393509, 26.318621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083633, 32.852901, 26.898867>,  <38.477158, 32.196949, 26.699314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083633, 32.852901, 26.898867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.850357, 32.572861, 26.734064>,  <37.710392, 32.404835, 26.635183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.850357, 32.572861, 26.734064>,  <38.083633, 32.852901, 26.898867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850357, 32.572861, 26.734064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422790, -0.171487, 0.889854,
		-0.693644, 0.693142, -0.195988,
		-0.583187, -0.700104, -0.412004,
		37.675400, 32.362831, 26.610462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411007, 32.946133, 27.173565>,  <38.083633, 32.852901, 26.898867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411007, 32.946133, 27.173565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400787, 32.572636, 27.030756>,  <37.394657, 32.348537, 26.945070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400787, 32.572636, 27.030756>,  <37.411007, 32.946133, 27.173565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400787, 32.572636, 27.030756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381654, -0.320977, 0.866784,
		-0.923952, 0.158406, -0.348167,
		-0.025550, -0.933746, -0.357024,
		37.393124, 32.292511, 26.923649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747223, 32.755798, 27.307182>,  <37.411007, 32.946133, 27.173565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747223, 32.755798, 27.307182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954449, 32.417469, 27.256275>,  <37.078785, 32.214474, 27.225731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954449, 32.417469, 27.256275>,  <36.747223, 32.755798, 27.307182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954449, 32.417469, 27.256275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404833, -0.373545, 0.834610,
		-0.753471, -0.380859, -0.535936,
		0.518065, -0.845819, -0.127271,
		37.109867, 32.163723, 27.218094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250282, 32.190792, 27.362165>,  <36.747223, 32.755798, 27.307182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250282, 32.190792, 27.362165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610939, 32.041382, 27.449362>,  <36.827332, 31.951735, 27.501678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610939, 32.041382, 27.449362>,  <36.250282, 32.190792, 27.362165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610939, 32.041382, 27.449362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334138, -0.281641, 0.899461,
		-0.274569, -0.883834, -0.378746,
		0.901645, -0.373518, 0.217993,
		36.881432, 31.929323, 27.514759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090469, 31.552149, 27.654547>,  <36.250282, 32.190792, 27.362165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090469, 31.552149, 27.654547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480591, 31.610733, 27.720678>,  <36.714664, 31.645884, 27.760357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480591, 31.610733, 27.720678>,  <36.090469, 31.552149, 27.654547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480591, 31.610733, 27.720678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092747, -0.407771, 0.908362,
		0.200454, -0.901262, -0.384117,
		0.975303, 0.146459, 0.165329,
		36.773182, 31.654671, 27.770277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350380, 30.934977, 27.847118>,  <36.090469, 31.552149, 27.654547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350380, 30.934977, 27.847118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631134, 31.183243, 27.986904>,  <36.799587, 31.332203, 28.070776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631134, 31.183243, 27.986904>,  <36.350380, 30.934977, 27.847118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631134, 31.183243, 27.986904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155921, -0.344845, 0.925619,
		0.695012, -0.704170, -0.145268,
		0.701888, 0.620666, 0.349466,
		36.841702, 31.369442, 28.091743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716251, 30.597429, 28.224300>,  <36.350380, 30.934977, 27.847118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716251, 30.597429, 28.224300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.817379, 30.953821, 28.375158>,  <36.878056, 31.167656, 28.465673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.817379, 30.953821, 28.375158>,  <36.716251, 30.597429, 28.224300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817379, 30.953821, 28.375158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130113, -0.417577, 0.899278,
		0.958724, -0.178286, -0.221501,
		0.252822, 0.890979, 0.377143,
		36.893227, 31.221115, 28.488302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206577, 30.455828, 28.662630>,  <36.716251, 30.597429, 28.224300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206577, 30.455828, 28.662630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086163, 30.810719, 28.802458>,  <37.013912, 31.023653, 28.886354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086163, 30.810719, 28.802458>,  <37.206577, 30.455828, 28.662630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086163, 30.810719, 28.802458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053517, -0.350280, 0.935115,
		0.952108, 0.300216, 0.057967,
		-0.301041, 0.887228, 0.349571,
		36.995850, 31.076887, 28.907330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681164, 30.635248, 29.183981>,  <37.206577, 30.455828, 28.662630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681164, 30.635248, 29.183981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370476, 30.879459, 29.245909>,  <37.184063, 31.025986, 29.283066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370476, 30.879459, 29.245909>,  <37.681164, 30.635248, 29.183981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370476, 30.879459, 29.245909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243825, 0.064815, 0.967651,
		0.580742, 0.789339, -0.199205,
		-0.776716, 0.610527, 0.154820,
		37.137463, 31.062618, 29.292355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935863, 31.155228, 29.542030>,  <37.681164, 30.635248, 29.183981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935863, 31.155228, 29.542030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544579, 31.160400, 29.624910>,  <37.309807, 31.163504, 29.674639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544579, 31.160400, 29.624910>,  <37.935863, 31.155228, 29.542030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544579, 31.160400, 29.624910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205239, 0.210415, 0.955826,
		-0.031238, 0.977527, -0.208485,
		-0.978213, 0.012931, 0.207200,
		37.251114, 31.164280, 29.687071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835361, 31.723066, 29.845613>,  <37.935863, 31.155228, 29.542030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835361, 31.723066, 29.845613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523289, 31.502613, 29.963984>,  <37.336044, 31.370340, 30.035006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523289, 31.502613, 29.963984>,  <37.835361, 31.723066, 29.845613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523289, 31.502613, 29.963984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282461, 0.111723, 0.952751,
		-0.558155, 0.826903, 0.068510,
		-0.780179, -0.551134, 0.295927,
		37.289234, 31.337273, 30.052761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613434, 32.070576, 30.351889>,  <37.835361, 31.723066, 29.845613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613434, 32.070576, 30.351889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459774, 31.707079, 30.417152>,  <37.367580, 31.488981, 30.456310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459774, 31.707079, 30.417152>,  <37.613434, 32.070576, 30.351889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459774, 31.707079, 30.417152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121302, 0.125511, 0.984649,
		-0.915269, 0.398040, 0.062018,
		-0.384146, -0.908741, 0.163159,
		37.344532, 31.434456, 30.466101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115231, 32.108166, 30.958622>,  <37.613434, 32.070576, 30.351889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115231, 32.108166, 30.958622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.166992, 31.712238, 30.934919>,  <37.198048, 31.474682, 30.920698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.166992, 31.712238, 30.934919>,  <37.115231, 32.108166, 30.958622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166992, 31.712238, 30.934919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064807, -0.051188, 0.996584,
		-0.989472, -0.132800, 0.057524,
		0.129402, -0.989820, -0.059256,
		37.205814, 31.415293, 30.917143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572258, 31.739519, 31.363533>,  <37.115231, 32.108166, 30.958622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572258, 31.739519, 31.363533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865387, 31.471355, 31.317003>,  <37.041264, 31.310457, 31.289085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865387, 31.471355, 31.317003>,  <36.572258, 31.739519, 31.363533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865387, 31.471355, 31.317003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097535, -0.272693, 0.957145,
		-0.673399, -0.690067, -0.265222,
		0.732817, -0.670408, -0.116325,
		37.085232, 31.270233, 31.282106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374279, 31.178696, 31.754890>,  <36.572258, 31.739519, 31.363533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374279, 31.178696, 31.754890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766422, 31.103039, 31.732561>,  <37.001709, 31.057644, 31.719164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766422, 31.103039, 31.732561>,  <36.374279, 31.178696, 31.754890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766422, 31.103039, 31.732561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006074, -0.311896, 0.950097,
		-0.197112, -0.931100, -0.306920,
		0.980362, -0.189140, -0.055822,
		37.060532, 31.046297, 31.715815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466835, 30.577374, 32.163017>,  <36.374279, 31.178696, 31.754890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466835, 30.577374, 32.163017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823891, 30.756493, 32.142338>,  <37.038124, 30.863964, 32.129929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823891, 30.756493, 32.142338>,  <36.466835, 30.577374, 32.163017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823891, 30.756493, 32.142338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159456, -0.206405, 0.965386,
		0.421628, -0.869985, -0.255649,
		0.892639, 0.447799, -0.051698,
		37.091682, 30.890833, 32.126827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798111, 30.196823, 32.615341>,  <36.466835, 30.577374, 32.163017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798111, 30.196823, 32.615341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023304, 30.527084, 32.600639>,  <37.158421, 30.725241, 32.591820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023304, 30.527084, 32.600639>,  <36.798111, 30.196823, 32.615341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023304, 30.527084, 32.600639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270308, -0.141923, 0.952256,
		0.781018, -0.546034, -0.303080,
		0.562979, 0.825654, -0.036753,
		37.192196, 30.774780, 32.589615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399117, 30.058311, 33.014736>,  <36.798111, 30.196823, 32.615341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399117, 30.058311, 33.014736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402481, 30.455805, 32.970154>,  <37.404499, 30.694302, 32.943405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402481, 30.455805, 32.970154>,  <37.399117, 30.058311, 33.014736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402481, 30.455805, 32.970154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281413, 0.104600, 0.953869,
		0.959550, -0.039387, -0.278770,
		0.008411, 0.993734, -0.111453,
		37.405003, 30.753925, 32.936718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101871, 30.250532, 33.144306>,  <37.399117, 30.058311, 33.014736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101871, 30.250532, 33.144306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871216, 30.571627, 33.205109>,  <37.732822, 30.764282, 33.241592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871216, 30.571627, 33.205109>,  <38.101871, 30.250532, 33.144306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871216, 30.571627, 33.205109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429454, 0.139535, 0.892244,
		0.695025, 0.579782, -0.425199,
		-0.576636, 0.802735, 0.152010,
		37.698223, 30.812447, 33.250713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543385, 30.827482, 33.497112>,  <38.101871, 30.250532, 33.144306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543385, 30.827482, 33.497112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157951, 30.909615, 33.565643>,  <37.926693, 30.958893, 33.606762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157951, 30.909615, 33.565643>,  <38.543385, 30.827482, 33.497112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157951, 30.909615, 33.565643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219075, 0.238682, 0.946064,
		0.153362, 0.949142, -0.274972,
		-0.963580, 0.205330, 0.171329,
		37.868877, 30.971214, 33.617043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163475, 30.792833, 33.840542>,  <38.543385, 30.827482, 33.497112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163475, 30.792833, 33.840542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467182, 30.538780, 33.897274>,  <39.649406, 30.386349, 33.931313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467182, 30.538780, 33.897274>,  <39.163475, 30.792833, 33.840542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467182, 30.538780, 33.897274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048629, -0.161960, -0.985598,
		0.648957, 0.755232, -0.092086,
		0.759269, -0.635133, 0.141832,
		39.694962, 30.348240, 33.939823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533463, 30.874670, 33.267803>,  <39.163475, 30.792833, 33.840542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533463, 30.874670, 33.267803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.670799, 30.522373, 33.398285>,  <39.753201, 30.310995, 33.476574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.670799, 30.522373, 33.398285>,  <39.533463, 30.874670, 33.267803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670799, 30.522373, 33.398285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095822, -0.378351, -0.920689,
		0.934309, 0.284855, -0.214299,
		0.343343, -0.880743, 0.326202,
		39.773804, 30.258150, 33.496147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798161, 30.717630, 32.636639>,  <39.533463, 30.874670, 33.267803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798161, 30.717630, 32.636639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823772, 30.379757, 32.849209>,  <39.839142, 30.177032, 32.976749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823772, 30.379757, 32.849209>,  <39.798161, 30.717630, 32.636639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823772, 30.379757, 32.849209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017008, -0.531517, -0.846877,
		0.997803, 0.063266, -0.019668,
		0.064032, -0.844681, 0.531426,
		39.842983, 30.126352, 33.008636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417381, 30.394646, 32.432957>,  <39.798161, 30.717630, 32.636639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417381, 30.394646, 32.432957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.169796, 30.108866, 32.563465>,  <40.021244, 29.937399, 32.641769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.169796, 30.108866, 32.563465>,  <40.417381, 30.394646, 32.432957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169796, 30.108866, 32.563465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126430, -0.500618, -0.856386,
		0.775179, -0.488820, 0.400191,
		-0.618961, -0.714449, 0.326267,
		39.984108, 29.894531, 32.661346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789146, 29.771278, 32.276794>,  <40.417381, 30.394646, 32.432957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789146, 29.771278, 32.276794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405258, 29.680256, 32.342716>,  <40.174927, 29.625643, 32.382271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405258, 29.680256, 32.342716>,  <40.789146, 29.771278, 32.276794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405258, 29.680256, 32.342716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028582, -0.504444, -0.862972,
		0.279511, -0.832919, 0.477619,
		-0.959717, -0.227559, 0.164805,
		40.117344, 29.611988, 32.392159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772743, 29.150232, 32.121868>,  <40.789146, 29.771278, 32.276794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772743, 29.150232, 32.121868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.396042, 29.274216, 32.069687>,  <40.170021, 29.348606, 32.038380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.396042, 29.274216, 32.069687>,  <40.772743, 29.150232, 32.121868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396042, 29.274216, 32.069687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053402, -0.245160, -0.968011,
		-0.332028, -0.918597, 0.214329,
		-0.941757, 0.309961, -0.130455,
		40.113514, 29.367203, 32.030552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545757, 28.616096, 31.725897>,  <40.772743, 29.150232, 32.121868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545757, 28.616096, 31.725897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.276890, 28.910700, 31.695559>,  <40.115570, 29.087461, 31.677355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.276890, 28.910700, 31.695559>,  <40.545757, 28.616096, 31.725897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276890, 28.910700, 31.695559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214639, -0.291874, -0.932062,
		-0.708607, -0.610220, 0.354271,
		-0.672165, 0.736506, -0.075847,
		40.075241, 29.131651, 31.672804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908611, 28.324074, 31.398813>,  <40.545757, 28.616096, 31.725897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908611, 28.324074, 31.398813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868576, 28.716120, 31.330276>,  <39.844555, 28.951347, 31.289154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868576, 28.716120, 31.330276>,  <39.908611, 28.324074, 31.398813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868576, 28.716120, 31.330276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064654, -0.178247, -0.981859,
		-0.992876, -0.087194, 0.081209,
		-0.100088, 0.980115, -0.171340,
		39.838551, 29.010155, 31.278875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434845, 28.315651, 30.863661>,  <39.908611, 28.324074, 31.398813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434845, 28.315651, 30.863661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573982, 28.690523, 30.853069>,  <39.657463, 28.915445, 30.846714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573982, 28.690523, 30.853069>,  <39.434845, 28.315651, 30.863661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573982, 28.690523, 30.853069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252427, 0.066415, -0.965334,
		-0.902932, 0.342470, 0.259671,
		0.347844, 0.937179, -0.026481,
		39.678337, 28.971676, 30.845125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882225, 28.680603, 30.478065>,  <39.434845, 28.315651, 30.863661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882225, 28.680603, 30.478065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220409, 28.891918, 30.446793>,  <39.423321, 29.018707, 30.428028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220409, 28.891918, 30.446793>,  <38.882225, 28.680603, 30.478065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220409, 28.891918, 30.446793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223528, 0.217105, -0.950211,
		-0.485012, 0.820839, 0.301640,
		0.845458, 0.528289, -0.078182,
		39.474049, 29.050406, 30.423338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632587, 29.339104, 30.135693>,  <38.882225, 28.680603, 30.478065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632587, 29.339104, 30.135693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021763, 29.276785, 30.067432>,  <39.255268, 29.239393, 30.026476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021763, 29.276785, 30.067432>,  <38.632587, 29.339104, 30.135693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021763, 29.276785, 30.067432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116243, 0.308259, -0.944174,
		0.199702, 0.938459, 0.281806,
		0.972937, -0.155795, -0.170649,
		39.313644, 29.230047, 30.016237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902424, 30.037844, 29.893591>,  <38.632587, 29.339104, 30.135693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902424, 30.037844, 29.893591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130676, 29.729877, 29.779327>,  <39.267628, 29.545097, 29.710770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130676, 29.729877, 29.779327>,  <38.902424, 30.037844, 29.893591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130676, 29.729877, 29.779327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015544, 0.357920, -0.933623,
		0.821056, 0.528318, 0.216210,
		0.570636, -0.769918, -0.285660,
		39.301868, 29.498901, 29.693630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117889, 30.342892, 29.312496>,  <38.902424, 30.037844, 29.893591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117889, 30.342892, 29.312496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.286209, 29.982634, 29.269106>,  <39.387199, 29.766479, 29.243073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.286209, 29.982634, 29.269106>,  <39.117889, 30.342892, 29.312496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286209, 29.982634, 29.269106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147254, 0.185807, -0.971489,
		0.895123, 0.392828, 0.210811,
		0.420799, -0.900645, -0.108475,
		39.412449, 29.712440, 29.236563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812107, 30.480015, 29.023119>,  <39.117889, 30.342892, 29.312496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812107, 30.480015, 29.023119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.649227, 30.125004, 28.936878>,  <39.551498, 29.911997, 28.885134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.649227, 30.125004, 28.936878>,  <39.812107, 30.480015, 29.023119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649227, 30.125004, 28.936878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082364, 0.199412, -0.976448,
		0.909617, -0.415370, -0.008101,
		-0.407203, -0.887526, -0.215600,
		39.527065, 29.858746, 28.872198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147900, 30.185888, 28.476597>,  <39.812107, 30.480015, 29.023119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147900, 30.185888, 28.476597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.802311, 29.988474, 28.436653>,  <39.594955, 29.870026, 28.412687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.802311, 29.988474, 28.436653>,  <40.147900, 30.185888, 28.476597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802311, 29.988474, 28.436653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073088, 0.073299, -0.994628,
		0.498204, -0.866632, -0.027257,
		-0.863974, -0.493535, -0.099859,
		39.543118, 29.840414, 28.406696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225574, 29.605947, 28.054945>,  <40.147900, 30.185888, 28.476597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225574, 29.605947, 28.054945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831661, 29.673447, 28.038311>,  <39.595314, 29.713947, 28.028330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831661, 29.673447, 28.038311>,  <40.225574, 29.605947, 28.054945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831661, 29.673447, 28.038311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069542, 0.163301, -0.984122,
		-0.159279, -0.972037, -0.172551,
		-0.984781, 0.168750, -0.041587,
		39.536228, 29.724072, 28.025835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034580, 29.224657, 27.494040>,  <40.225574, 29.605947, 28.054945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034580, 29.224657, 27.494040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753708, 29.501789, 27.559671>,  <39.585182, 29.668068, 27.599051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753708, 29.501789, 27.559671>,  <40.034580, 29.224657, 27.494040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753708, 29.501789, 27.559671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009638, 0.239678, -0.970805,
		-0.711931, -0.680102, -0.174975,
		-0.702183, 0.692832, 0.164079,
		39.543053, 29.709639, 27.608894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525864, 29.107220, 26.932749>,  <40.034580, 29.224657, 27.494040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525864, 29.107220, 26.932749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494629, 29.478836, 27.077406>,  <39.475887, 29.701805, 27.164200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494629, 29.478836, 27.077406>,  <39.525864, 29.107220, 26.932749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494629, 29.478836, 27.077406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011159, 0.363542, -0.931511,
		-0.996884, -0.068701, -0.038754,
		-0.078084, 0.929041, 0.361643,
		39.471203, 29.757549, 27.185898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030716, 29.350382, 26.518444>,  <39.525864, 29.107220, 26.932749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030716, 29.350382, 26.518444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202923, 29.669647, 26.687010>,  <39.306248, 29.861206, 26.788149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202923, 29.669647, 26.687010>,  <39.030716, 29.350382, 26.518444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202923, 29.669647, 26.687010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042797, 0.484426, -0.873784,
		-0.901567, 0.358145, 0.242713,
		0.430518, 0.798162, 0.421415,
		39.332077, 29.909096, 26.813435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.644848, 29.957272, 26.382620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980843, 30.150335, 26.481783>,  <39.182442, 30.266172, 26.541281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980843, 30.150335, 26.481783>,  <38.644848, 29.957272, 26.382620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980843, 30.150335, 26.481783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085797, 0.332989, -0.939019,
		-0.535775, 0.810037, 0.238298,
		0.839990, 0.482658, 0.247906,
		39.232841, 30.295134, 26.556154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616497, 30.712593, 26.154510>,  <38.644848, 29.957272, 26.382620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616497, 30.712593, 26.154510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005333, 30.622791, 26.181742>,  <39.238636, 30.568911, 26.198080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005333, 30.622791, 26.181742>,  <38.616497, 30.712593, 26.154510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005333, 30.622791, 26.181742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161842, 0.431683, -0.887388,
		0.169833, 0.873641, 0.455970,
		0.972093, -0.224503, 0.068077,
		39.296959, 30.555441, 26.202166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085629, 31.447803, 26.062551>,  <38.616497, 30.712593, 26.154510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085629, 31.447803, 26.062551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334221, 31.145052, 25.981657>,  <39.483376, 30.963402, 25.933121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334221, 31.145052, 25.981657>,  <39.085629, 31.447803, 26.062551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334221, 31.145052, 25.981657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291197, 0.462815, -0.837262,
		0.727303, 0.461450, 0.508030,
		0.621478, -0.756879, -0.202234,
		39.520664, 30.917988, 25.920986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859768, 31.742771, 25.876122>,  <39.085629, 31.447803, 26.062551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859768, 31.742771, 25.876122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.857651, 31.365952, 25.741949>,  <39.856380, 31.139860, 25.661446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.857651, 31.365952, 25.741949>,  <39.859768, 31.742771, 25.876122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857651, 31.365952, 25.741949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260036, 0.322602, -0.910115,
		0.965584, -0.092038, 0.243260,
		-0.005289, -0.942049, -0.335433,
		39.856064, 31.083336, 25.641319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463409, 31.720604, 25.435797>,  <39.859768, 31.742771, 25.876122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463409, 31.720604, 25.435797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.235878, 31.406918, 25.336653>,  <40.099358, 31.218706, 25.277166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.235878, 31.406918, 25.336653>,  <40.463409, 31.720604, 25.435797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235878, 31.406918, 25.336653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000669, 0.301807, -0.953369,
		0.822453, -0.542141, -0.172202,
		-0.568832, -0.784216, -0.247859,
		40.065228, 31.171652, 25.262295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780399, 31.571772, 24.811625>,  <40.463409, 31.720604, 25.435797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780399, 31.571772, 24.811625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421982, 31.394333, 24.818920>,  <40.206932, 31.287870, 24.823298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421982, 31.394333, 24.818920>,  <40.780399, 31.571772, 24.811625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421982, 31.394333, 24.818920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175331, 0.315825, -0.932477,
		0.407885, -0.838735, -0.360769,
		-0.896041, -0.443597, 0.018236,
		40.153168, 31.261255, 24.824390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696926, 31.266598, 24.132875>,  <40.780399, 31.571772, 24.811625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696926, 31.266598, 24.132875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328136, 31.285633, 24.286604>,  <40.106865, 31.297054, 24.378841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328136, 31.285633, 24.286604>,  <40.696926, 31.266598, 24.132875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328136, 31.285633, 24.286604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347203, 0.337965, -0.874774,
		-0.171516, -0.939955, -0.295072,
		-0.921972, 0.047588, 0.384322,
		40.051544, 31.299910, 24.401901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118023, 30.835064, 23.684666>,  <40.696926, 31.266598, 24.132875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118023, 30.835064, 23.684666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.917656, 31.119011, 23.882725>,  <39.797436, 31.289379, 24.001560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.917656, 31.119011, 23.882725>,  <40.118023, 30.835064, 23.684666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917656, 31.119011, 23.882725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480121, 0.248089, -0.841389,
		-0.720115, -0.659196, 0.216550,
		-0.500917, 0.709868, 0.495147,
		39.767380, 31.331970, 24.031269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507587, 30.913639, 23.300507>,  <40.118023, 30.835064, 23.684666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507587, 30.913639, 23.300507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471016, 31.261892, 23.493851>,  <39.449074, 31.470844, 23.609858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471016, 31.261892, 23.493851>,  <39.507587, 30.913639, 23.300507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471016, 31.261892, 23.493851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410417, 0.409306, -0.814878,
		-0.907303, -0.272882, 0.319901,
		-0.091428, 0.870634, 0.483360,
		39.443588, 31.523083, 23.638859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841846, 31.150822, 23.179974>,  <39.507587, 30.913639, 23.300507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841846, 31.150822, 23.179974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070866, 31.468372, 23.261896>,  <39.208279, 31.658903, 23.311050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070866, 31.468372, 23.261896>,  <38.841846, 31.150822, 23.179974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070866, 31.468372, 23.261896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333719, 0.453836, -0.826235,
		-0.748876, 0.404715, 0.524776,
		0.572552, 0.793876, 0.204806,
		39.242630, 31.706535, 23.323338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681137, 31.623808, 22.733866>,  <38.841846, 31.150822, 23.179974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681137, 31.623808, 22.733866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000359, 31.818186, 22.876394>,  <39.191891, 31.934813, 22.961912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000359, 31.818186, 22.876394>,  <38.681137, 31.623808, 22.733866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000359, 31.818186, 22.876394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045223, 0.541353, -0.839579,
		-0.600885, 0.686144, 0.410053,
		0.798055, 0.485946, 0.356321,
		39.239777, 31.963970, 22.983290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527618, 32.288971, 22.508142>,  <38.681137, 31.623808, 22.733866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527618, 32.288971, 22.508142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920288, 32.266354, 22.580935>,  <39.155891, 32.252781, 22.624611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920288, 32.266354, 22.580935>,  <38.527618, 32.288971, 22.508142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920288, 32.266354, 22.580935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188055, 0.441885, -0.877139,
		-0.030817, 0.895288, 0.444421,
		0.981675, -0.056545, 0.181981,
		39.214790, 32.249390, 22.635529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830429, 32.953297, 22.491154>,  <38.527618, 32.288971, 22.508142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830429, 32.953297, 22.491154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111244, 32.686432, 22.391518>,  <39.279732, 32.526314, 22.331736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111244, 32.686432, 22.391518>,  <38.830429, 32.953297, 22.491154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111244, 32.686432, 22.391518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236862, 0.548610, -0.801825,
		0.671598, 0.503910, 0.543168,
		0.702035, -0.667160, -0.249088,
		39.321854, 32.486282, 22.316792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312885, 33.431549, 22.405960>,  <38.830429, 32.953297, 22.491154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312885, 33.431549, 22.405960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473686, 33.101498, 22.247187>,  <39.570168, 32.903465, 22.151922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473686, 33.101498, 22.247187>,  <39.312885, 33.431549, 22.405960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473686, 33.101498, 22.247187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323314, 0.533495, -0.781570,
		0.856659, 0.185857, 0.481241,
		0.402000, -0.825131, -0.396933,
		39.594288, 32.853958, 22.128107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966564, 33.660629, 22.216194>,  <39.312885, 33.431549, 22.405960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966564, 33.660629, 22.216194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.908928, 33.317379, 22.019072>,  <39.874348, 33.111427, 21.900799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.908928, 33.317379, 22.019072>,  <39.966564, 33.660629, 22.216194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908928, 33.317379, 22.019072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223125, 0.457005, -0.861023,
		0.964081, -0.234024, 0.125619,
		-0.144092, -0.858125, -0.492807,
		39.865700, 33.059940, 21.871229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651333, 33.359138, 21.960203>,  <39.966564, 33.660629, 22.216194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651333, 33.359138, 21.960203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.356121, 33.221855, 21.727816>,  <40.178993, 33.139484, 21.588383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.356121, 33.221855, 21.727816>,  <40.651333, 33.359138, 21.960203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356121, 33.221855, 21.727816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385487, 0.492204, -0.780471,
		0.553824, -0.799962, -0.230954,
		-0.738024, -0.343213, -0.580970,
		40.134712, 33.118893, 21.553524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964306, 33.168461, 21.283976>,  <40.651333, 33.359138, 21.960203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964306, 33.168461, 21.283976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.574432, 33.200352, 21.200426>,  <40.340508, 33.219486, 21.150297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.574432, 33.200352, 21.200426>,  <40.964306, 33.168461, 21.283976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574432, 33.200352, 21.200426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223549, 0.334025, -0.915671,
		-0.003233, -0.939186, -0.343392,
		-0.974687, 0.079726, -0.208874,
		40.282024, 33.224270, 21.137764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876270, 32.820297, 20.620222>,  <40.964306, 33.168461, 21.283976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876270, 32.820297, 20.620222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.572060, 33.077732, 20.654615>,  <40.389534, 33.232193, 20.675251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.572060, 33.077732, 20.654615>,  <40.876270, 32.820297, 20.620222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572060, 33.077732, 20.654615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134042, 0.285191, -0.949052,
		-0.635315, -0.710258, -0.303164,
		-0.760531, 0.643584, 0.085981,
		40.343899, 33.270805, 20.680410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436935, 32.741024, 19.940798>,  <40.876270, 32.820297, 20.620222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436935, 32.741024, 19.940798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.329937, 33.078884, 20.126278>,  <40.265739, 33.281601, 20.237566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.329937, 33.078884, 20.126278>,  <40.436935, 32.741024, 19.940798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329937, 33.078884, 20.126278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029112, 0.488100, -0.872302,
		-0.963119, -0.219837, -0.155154,
		-0.267495, 0.844648, 0.463699,
		40.249687, 33.332279, 20.265387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048798, 33.104729, 19.410877>,  <40.436935, 32.741024, 19.940798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048798, 33.104729, 19.410877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158596, 33.380817, 19.678680>,  <40.224476, 33.546471, 19.839363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158596, 33.380817, 19.678680>,  <40.048798, 33.104729, 19.410877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158596, 33.380817, 19.678680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024561, 0.690992, -0.722445,
		-0.961274, 0.214754, 0.172725,
		0.274500, 0.690225, 0.669507,
		40.240948, 33.587883, 19.879532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621792, 33.761414, 19.288683>,  <40.048798, 33.104729, 19.410877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621792, 33.761414, 19.288683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.968513, 33.843143, 19.470631>,  <40.176544, 33.892181, 19.579800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.968513, 33.843143, 19.470631>,  <39.621792, 33.761414, 19.288683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968513, 33.843143, 19.470631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212312, 0.674163, -0.707409,
		-0.451198, 0.709757, 0.540985,
		0.866801, 0.204324, 0.454871,
		40.228554, 33.904442, 19.607092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562374, 34.486931, 19.415215>,  <39.621792, 33.761414, 19.288683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562374, 34.486931, 19.415215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.952114, 34.405273, 19.453100>,  <40.185959, 34.356281, 19.475832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.952114, 34.405273, 19.453100>,  <39.562374, 34.486931, 19.415215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952114, 34.405273, 19.453100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210112, 0.674467, -0.707776,
		0.080602, 0.709522, 0.700058,
		0.974349, -0.204139, 0.094715,
		40.244419, 34.344032, 19.481514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221825, 34.508625, 18.693514>,  <39.562374, 34.486931, 19.415215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221825, 34.508625, 18.693514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913044, 34.738834, 18.801483>,  <38.727776, 34.876961, 18.866264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913044, 34.738834, 18.801483>,  <39.221825, 34.508625, 18.693514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913044, 34.738834, 18.801483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634021, -0.666422, -0.392301,
		-0.045895, -0.473976, 0.879341,
		-0.771953, 0.575525, 0.269925,
		38.681458, 34.911491, 18.882462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328171, 35.179527, 18.483410>,  <39.221825, 34.508625, 18.693514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328171, 35.179527, 18.483410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146629, 34.937748, 18.221521>,  <39.037704, 34.792679, 18.064388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146629, 34.937748, 18.221521>,  <39.328171, 35.179527, 18.483410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146629, 34.937748, 18.221521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673208, 0.713964, -0.192475,
		0.583789, 0.353410, -0.730953,
		-0.453851, -0.604448, -0.654723,
		39.010475, 34.756413, 18.025105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499043, 35.308678, 18.527521>,  <39.328171, 35.179527, 18.483410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499043, 35.308678, 18.527521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131092, 35.262184, 18.677355>,  <37.910320, 35.234287, 18.767256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131092, 35.262184, 18.677355>,  <38.499043, 35.308678, 18.527521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131092, 35.262184, 18.677355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389055, -0.149643, 0.908979,
		-0.049602, 0.981884, 0.182875,
		-0.919878, -0.116235, 0.374584,
		37.855129, 35.227314, 18.789730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476395, 35.640282, 19.239756>,  <38.499043, 35.308678, 18.527521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476395, 35.640282, 19.239756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133766, 35.433880, 19.238281>,  <37.928188, 35.310040, 19.237396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133766, 35.433880, 19.238281>,  <38.476395, 35.640282, 19.239756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133766, 35.433880, 19.238281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104021, -0.179662, 0.978213,
		-0.505429, 0.837530, 0.207570,
		-0.856575, -0.516009, -0.003686,
		37.876793, 35.279076, 19.237175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074013, 35.957497, 19.751720>,  <38.476395, 35.640282, 19.239756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074013, 35.957497, 19.751720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899265, 35.599331, 19.717373>,  <37.794415, 35.384430, 19.696764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899265, 35.599331, 19.717373>,  <38.074013, 35.957497, 19.751720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899265, 35.599331, 19.717373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124240, -0.034484, 0.991653,
		-0.890903, 0.443893, -0.096181,
		-0.436872, -0.895416, -0.085871,
		37.768204, 35.330708, 19.691612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673832, 35.953442, 20.306780>,  <38.074013, 35.957497, 19.751720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673832, 35.953442, 20.306780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696583, 35.572624, 20.186525>,  <37.710232, 35.344135, 20.114372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696583, 35.572624, 20.186525>,  <37.673832, 35.953442, 20.306780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696583, 35.572624, 20.186525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144929, -0.305808, 0.940998,
		-0.987806, -0.009947, -0.155371,
		0.056873, -0.952041, -0.300638,
		37.713646, 35.287010, 20.096334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025650, 35.568886, 20.436869>,  <37.673832, 35.953442, 20.306780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025650, 35.568886, 20.436869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307373, 35.285183, 20.424824>,  <37.476406, 35.114960, 20.417597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307373, 35.285183, 20.424824>,  <37.025650, 35.568886, 20.436869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307373, 35.285183, 20.424824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136541, -0.176970, 0.974699,
		-0.696641, -0.682375, -0.221484,
		0.704307, -0.709257, -0.030112,
		37.518665, 35.072407, 20.415791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875290, 35.148476, 20.989046>,  <37.025650, 35.568886, 20.436869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875290, 35.148476, 20.989046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237789, 35.004200, 20.900848>,  <37.455288, 34.917637, 20.847931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237789, 35.004200, 20.900848>,  <36.875290, 35.148476, 20.989046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237789, 35.004200, 20.900848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055538, -0.415477, 0.907907,
		-0.419110, -0.835023, -0.356486,
		0.906235, -0.360714, -0.220506,
		37.509663, 34.895996, 20.834700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991306, 34.444286, 21.257607>,  <36.875290, 35.148476, 20.989046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991306, 34.444286, 21.257607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355335, 34.608818, 21.237307>,  <37.573753, 34.707539, 21.225126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355335, 34.608818, 21.237307>,  <36.991306, 34.444286, 21.257607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355335, 34.608818, 21.237307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210279, -0.352755, 0.911782,
		0.357141, -0.840460, -0.407527,
		0.910073, 0.411329, -0.050748,
		37.628357, 34.732216, 21.222082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309803, 33.976124, 21.659548>,  <36.991306, 34.444286, 21.257607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309803, 33.976124, 21.659548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543289, 34.299305, 21.627338>,  <37.683380, 34.493214, 21.608013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543289, 34.299305, 21.627338>,  <37.309803, 33.976124, 21.659548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543289, 34.299305, 21.627338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400280, -0.200061, 0.894288,
		0.706434, -0.554244, -0.440187,
		0.583718, 0.807954, -0.080523,
		37.718403, 34.541691, 21.603182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011868, 33.734192, 21.826904>,  <37.309803, 33.976124, 21.659548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011868, 33.734192, 21.826904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002247, 34.129200, 21.889166>,  <37.996475, 34.366203, 21.926523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002247, 34.129200, 21.889166>,  <38.011868, 33.734192, 21.826904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002247, 34.129200, 21.889166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238147, -0.145559, 0.960260,
		0.970931, 0.060160, -0.231674,
		-0.024047, 0.987519, 0.155655,
		37.995033, 34.425457, 21.935862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684998, 33.958904, 22.077192>,  <38.011868, 33.734192, 21.826904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684998, 33.958904, 22.077192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413029, 34.220432, 22.209991>,  <38.249847, 34.377350, 22.289671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413029, 34.220432, 22.209991>,  <38.684998, 33.958904, 22.077192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413029, 34.220432, 22.209991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196511, -0.273729, 0.941518,
		0.706459, 0.705403, 0.057633,
		-0.679925, 0.653818, 0.331998,
		38.209049, 34.416576, 22.309591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087269, 34.338596, 22.550505>,  <38.684998, 33.958904, 22.077192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087269, 34.338596, 22.550505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695862, 34.368893, 22.627195>,  <38.461018, 34.387070, 22.673210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695862, 34.368893, 22.627195>,  <39.087269, 34.338596, 22.550505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695862, 34.368893, 22.627195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151469, -0.366712, 0.917921,
		0.139834, 0.927246, 0.347363,
		-0.978521, 0.075741, 0.191727,
		38.402306, 34.391617, 22.684713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932953, 34.714828, 23.172161>,  <39.087269, 34.338596, 22.550505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932953, 34.714828, 23.172161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630291, 34.459408, 23.115969>,  <38.448696, 34.306156, 23.082254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630291, 34.459408, 23.115969>,  <38.932953, 34.714828, 23.172161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630291, 34.459408, 23.115969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200114, -0.430727, 0.880016,
		-0.622442, 0.637753, 0.453692,
		-0.756650, -0.638550, -0.140479,
		38.403297, 34.267841, 23.073826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784061, 34.418354, 23.911818>,  <38.932953, 34.714828, 23.172161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784061, 34.418354, 23.911818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.529465, 34.202232, 23.691652>,  <38.376709, 34.072559, 23.559553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.529465, 34.202232, 23.691652>,  <38.784061, 34.418354, 23.911818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529465, 34.202232, 23.691652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222084, -0.555025, 0.801640,
		-0.738620, 0.632474, 0.233276,
		-0.636490, -0.540300, -0.550414,
		38.338516, 34.040142, 23.526527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188179, 34.326550, 24.352224>,  <38.784061, 34.418354, 23.911818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188179, 34.326550, 24.352224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148727, 34.038960, 24.077024>,  <38.125057, 33.866405, 23.911905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148727, 34.038960, 24.077024>,  <38.188179, 34.326550, 24.352224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148727, 34.038960, 24.077024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188791, -0.665295, 0.722316,
		-0.977052, 0.201128, -0.070121,
		-0.098627, -0.718979, -0.687999,
		38.119141, 33.823265, 23.870625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605213, 34.077751, 24.459913>,  <38.188179, 34.326550, 24.352224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605213, 34.077751, 24.459913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.759747, 33.771034, 24.254868>,  <37.852467, 33.587002, 24.131840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.759747, 33.771034, 24.254868>,  <37.605213, 34.077751, 24.459913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759747, 33.771034, 24.254868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336799, -0.634665, 0.695534,
		-0.858670, -0.096058, -0.503447,
		0.386332, -0.766794, -0.512616,
		37.875645, 33.540997, 24.101084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042847, 33.519192, 24.409935>,  <37.605213, 34.077751, 24.459913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042847, 33.519192, 24.409935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399990, 33.347744, 24.354656>,  <37.614277, 33.244877, 24.321489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399990, 33.347744, 24.354656>,  <37.042847, 33.519192, 24.409935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399990, 33.347744, 24.354656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271405, -0.757007, 0.594373,
		-0.359371, -0.493182, -0.792227,
		0.892856, -0.428615, -0.138195,
		37.667847, 33.219158, 24.313198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841228, 32.882385, 24.259987>,  <37.042847, 33.519192, 24.409935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841228, 32.882385, 24.259987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225552, 32.882805, 24.370876>,  <37.456146, 32.883057, 24.437410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225552, 32.882805, 24.370876>,  <36.841228, 32.882385, 24.259987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225552, 32.882805, 24.370876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163185, -0.806241, 0.568636,
		0.224107, -0.591587, -0.774468,
		0.960805, 0.001053, 0.277223,
		37.513794, 32.883121, 24.454042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971176, 32.225777, 24.304132>,  <36.841228, 32.882385, 24.259987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971176, 32.225777, 24.304132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267887, 32.384388, 24.520477>,  <37.445915, 32.479553, 24.650284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267887, 32.384388, 24.520477>,  <36.971176, 32.225777, 24.304132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267887, 32.384388, 24.520477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089298, -0.740904, 0.665648,
		0.664674, -0.542061, -0.514178,
		0.741778, 0.396524, 0.540864,
		37.490421, 32.503345, 24.682737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507133, 31.682827, 24.554344>,  <36.971176, 32.225777, 24.304132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507133, 31.682827, 24.554344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574936, 31.983795, 24.808943>,  <37.615616, 32.164375, 24.961702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574936, 31.983795, 24.808943>,  <37.507133, 31.682827, 24.554344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574936, 31.983795, 24.808943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026769, -0.642091, 0.766161,
		0.985166, -0.146905, -0.088695,
		0.169503, 0.752422, 0.636498,
		37.625786, 32.209522, 24.999893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055855, 31.431036, 25.047949>,  <37.507133, 31.682827, 24.554344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055855, 31.431036, 25.047949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878536, 31.739384, 25.230925>,  <37.772144, 31.924393, 25.340710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878536, 31.739384, 25.230925>,  <38.055855, 31.431036, 25.047949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878536, 31.739384, 25.230925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108691, -0.552781, 0.826208,
		0.889762, 0.316534, 0.328831,
		-0.443294, 0.770869, 0.457439,
		37.745548, 31.970644, 25.368156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.519714, 28.507362, 28.912205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.529285, 28.890898, 29.025379>,  <39.535030, 29.121019, 29.093285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.529285, 28.890898, 29.025379>,  <39.519714, 28.507362, 28.912205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529285, 28.890898, 29.025379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264905, -0.278984, 0.923035,
		0.963978, 0.052864, -0.260677,
		0.023930, 0.958840, 0.282938,
		39.536465, 29.178549, 29.110260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230915, 28.700939, 29.283501>,  <39.519714, 28.507362, 28.912205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230915, 28.700939, 29.283501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.949467, 28.956474, 29.407955>,  <39.780598, 29.109795, 29.482628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.949467, 28.956474, 29.407955>,  <40.230915, 28.700939, 29.283501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949467, 28.956474, 29.407955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225005, -0.215026, 0.950335,
		0.674013, 0.738681, 0.007554,
		-0.703619, 0.638838, 0.311137,
		39.738380, 29.148127, 29.501297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566891, 29.078711, 29.721344>,  <40.230915, 28.700939, 29.283501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566891, 29.078711, 29.721344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186958, 29.148970, 29.824860>,  <39.959000, 29.191126, 29.886969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186958, 29.148970, 29.824860>,  <40.566891, 29.078711, 29.721344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186958, 29.148970, 29.824860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201119, -0.290676, 0.935446,
		0.239535, 0.940561, 0.240766,
		-0.949829, 0.175649, 0.258791,
		39.902008, 29.201664, 29.902496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596687, 29.573923, 30.347502>,  <40.566891, 29.078711, 29.721344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596687, 29.573923, 30.347502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226326, 29.423677, 30.363552>,  <40.004108, 29.333530, 30.373182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226326, 29.423677, 30.363552>,  <40.596687, 29.573923, 30.347502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226326, 29.423677, 30.363552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129607, -0.216106, 0.967729,
		-0.354821, 0.901228, 0.248776,
		-0.925907, -0.375614, 0.040127,
		39.948555, 29.310993, 30.375589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248505, 30.130005, 30.688692>,  <40.596687, 29.573923, 30.347502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248505, 30.130005, 30.688692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.053482, 29.785831, 30.747944>,  <39.936470, 29.579327, 30.783495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.053482, 29.785831, 30.747944>,  <40.248505, 30.130005, 30.688692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053482, 29.785831, 30.747944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006204, 0.173069, 0.984890,
		-0.873071, 0.479268, -0.089719,
		-0.487554, -0.860436, 0.148128,
		39.907215, 29.527700, 30.792383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829876, 30.319344, 31.202127>,  <40.248505, 30.130005, 30.688692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829876, 30.319344, 31.202127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820400, 29.919693, 31.215874>,  <39.814713, 29.679903, 31.224121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820400, 29.919693, 31.215874>,  <39.829876, 30.319344, 31.202127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820400, 29.919693, 31.215874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018859, 0.033922, 0.999246,
		-0.999541, 0.024322, 0.018039,
		-0.023692, -0.999128, 0.034366,
		39.813293, 29.619955, 31.226183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216919, 30.153961, 31.515982>,  <39.829876, 30.319344, 31.202127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216919, 30.153961, 31.515982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490959, 29.864468, 31.549061>,  <39.655384, 29.690771, 31.568909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490959, 29.864468, 31.549061>,  <39.216919, 30.153961, 31.515982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490959, 29.864468, 31.549061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021204, 0.133294, 0.990850,
		-0.728137, -0.677081, 0.106666,
		0.685104, -0.723736, 0.082700,
		39.696491, 29.647346, 31.573872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906246, 29.719322, 31.975338>,  <39.216919, 30.153961, 31.515982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906246, 29.719322, 31.975338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.295589, 29.632090, 32.003674>,  <39.529194, 29.579750, 32.020676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.295589, 29.632090, 32.003674>,  <38.906246, 29.719322, 31.975338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295589, 29.632090, 32.003674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051348, 0.093791, 0.994267,
		-0.223476, -0.971413, 0.080094,
		0.973356, -0.218082, 0.070841,
		39.587597, 29.566666, 32.024925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889557, 29.212181, 32.474838>,  <38.906246, 29.719322, 31.975338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889557, 29.212181, 32.474838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261238, 29.359438, 32.461838>,  <39.484245, 29.447792, 32.454037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261238, 29.359438, 32.461838>,  <38.889557, 29.212181, 32.474838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261238, 29.359438, 32.461838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066879, 0.253993, 0.964891,
		0.363477, -0.894402, 0.260632,
		0.929199, 0.368146, -0.032504,
		39.539997, 29.469881, 32.452087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132217, 28.975323, 33.122047>,  <38.889557, 29.212181, 32.474838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132217, 28.975323, 33.122047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368332, 29.261347, 32.972248>,  <39.510002, 29.432961, 32.882370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368332, 29.261347, 32.972248>,  <39.132217, 28.975323, 33.122047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368332, 29.261347, 32.972248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152906, 0.356497, 0.921699,
		0.792578, -0.601332, 0.101099,
		0.590288, 0.715059, -0.374498,
		39.545418, 29.475864, 32.859898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636227, 28.924133, 33.573872>,  <39.132217, 28.975323, 33.122047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636227, 28.924133, 33.573872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.711922, 29.293003, 33.438946>,  <39.757339, 29.514324, 33.357990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.711922, 29.293003, 33.438946>,  <39.636227, 28.924133, 33.573872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711922, 29.293003, 33.438946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363252, 0.253404, 0.896568,
		0.912270, -0.292198, -0.287027,
		0.189242, 0.922175, -0.337314,
		39.768696, 29.569656, 33.337753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329056, 29.070341, 33.779045>,  <39.636227, 28.924133, 33.573872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329056, 29.070341, 33.779045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.136662, 29.415638, 33.717770>,  <40.021225, 29.622816, 33.681004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.136662, 29.415638, 33.717770>,  <40.329056, 29.070341, 33.779045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136662, 29.415638, 33.717770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201226, 0.278760, 0.939043,
		0.853322, 0.420843, -0.307786,
		-0.480988, 0.863240, -0.153187,
		39.992367, 29.674610, 33.671814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662785, 29.542358, 34.231712>,  <40.329056, 29.070341, 33.779045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662785, 29.542358, 34.231712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366749, 29.795612, 34.141022>,  <40.189129, 29.947565, 34.086605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366749, 29.795612, 34.141022>,  <40.662785, 29.542358, 34.231712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366749, 29.795612, 34.141022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077049, 0.255093, 0.963842,
		0.668080, 0.730798, -0.140009,
		-0.740089, 0.633136, -0.226730,
		40.144722, 29.985554, 34.073002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837833, 30.231350, 34.496384>,  <40.662785, 29.542358, 34.231712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837833, 30.231350, 34.496384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.444553, 30.163963, 34.468285>,  <40.208584, 30.123531, 34.451424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.444553, 30.163963, 34.468285>,  <40.837833, 30.231350, 34.496384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444553, 30.163963, 34.468285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127449, 0.358107, 0.924941,
		-0.130665, 0.918356, -0.373562,
		-0.983200, -0.168468, -0.070252,
		40.149593, 30.113422, 34.447208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720333, 30.912010, 34.869484>,  <40.837833, 30.231350, 34.496384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720333, 30.912010, 34.869484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.641289, 31.228418, 35.101082>,  <40.593861, 31.418264, 35.240040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.641289, 31.228418, 35.101082>,  <40.720333, 30.912010, 34.869484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641289, 31.228418, 35.101082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039001, 0.583829, -0.810939,
		-0.979504, -0.182835, -0.084523,
		-0.197614, 0.791021, 0.578993,
		40.582005, 31.465725, 35.274780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332779, 31.347233, 34.380169>,  <40.720333, 30.912010, 34.869484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332779, 31.347233, 34.380169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440994, 31.581720, 34.685627>,  <40.505924, 31.722414, 34.868900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440994, 31.581720, 34.685627>,  <40.332779, 31.347233, 34.380169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440994, 31.581720, 34.685627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004803, 0.794038, -0.607849,
		-0.962698, 0.160777, 0.217632,
		0.270536, 0.586220, 0.763647,
		40.522156, 31.757587, 34.914722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893631, 31.868122, 34.275826>,  <40.332779, 31.347233, 34.380169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893631, 31.868122, 34.275826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.174568, 32.029274, 34.510567>,  <40.343132, 32.125965, 34.651413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.174568, 32.029274, 34.510567>,  <39.893631, 31.868122, 34.275826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174568, 32.029274, 34.510567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152634, 0.890482, -0.428654,
		-0.695278, 0.211491, 0.686921,
		0.702347, 0.402881, 0.586852,
		40.385273, 32.150139, 34.686623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636822, 32.584557, 34.388138>,  <39.893631, 31.868122, 34.275826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636822, 32.584557, 34.388138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.025978, 32.592476, 34.480301>,  <40.259472, 32.597229, 34.535599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.025978, 32.592476, 34.480301>,  <39.636822, 32.584557, 34.388138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025978, 32.592476, 34.480301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077098, 0.911558, -0.403880,
		-0.218025, 0.410696, 0.885322,
		0.972893, 0.019800, 0.230406,
		40.317844, 32.598415, 34.549423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874157, 33.314095, 34.654301>,  <39.636822, 32.584557, 34.388138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874157, 33.314095, 34.654301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190006, 33.132771, 34.488892>,  <40.379517, 33.023975, 34.389645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190006, 33.132771, 34.488892>,  <39.874157, 33.314095, 34.654301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190006, 33.132771, 34.488892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138494, 0.788219, -0.599608,
		0.597755, 0.416196, 0.685179,
		0.789625, -0.453312, -0.413521,
		40.426895, 32.996777, 34.364834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319458, 33.911766, 34.331112>,  <39.874157, 33.314095, 34.654301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319458, 33.911766, 34.331112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.478302, 33.571480, 34.193367>,  <40.573608, 33.367310, 34.110722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.478302, 33.571480, 34.193367>,  <40.319458, 33.911766, 34.331112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478302, 33.571480, 34.193367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264606, 0.465412, -0.844615,
		0.878798, 0.244285, 0.409925,
		0.397111, -0.850715, -0.344364,
		40.597435, 33.316265, 34.090057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928654, 34.141842, 34.108234>,  <40.319458, 33.911766, 34.331112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928654, 34.141842, 34.108234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840126, 33.813862, 33.897068>,  <40.787010, 33.617073, 33.770367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840126, 33.813862, 33.897068>,  <40.928654, 34.141842, 34.108234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840126, 33.813862, 33.897068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346571, 0.439872, -0.828493,
		0.911541, -0.366322, 0.186820,
		-0.221319, -0.819952, -0.527918,
		40.773731, 33.567875, 33.738693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471329, 33.922104, 33.753723>,  <40.928654, 34.141842, 34.108234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471329, 33.922104, 33.753723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.161091, 33.770592, 33.551739>,  <40.974949, 33.679684, 33.430550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.161091, 33.770592, 33.551739>,  <41.471329, 33.922104, 33.753723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161091, 33.770592, 33.551739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433552, 0.261764, -0.862272,
		0.458793, -0.887696, -0.038800,
		-0.775591, -0.378782, -0.504957,
		40.928413, 33.656956, 33.400253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782417, 33.685253, 33.076759>,  <41.471329, 33.922104, 33.753723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782417, 33.685253, 33.076759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.386211, 33.711388, 33.028404>,  <41.148487, 33.727070, 32.999390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.386211, 33.711388, 33.028404>,  <41.782417, 33.685253, 33.076759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386211, 33.711388, 33.028404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131736, 0.201216, -0.970648,
		-0.039097, -0.977365, -0.207914,
		-0.990514, 0.065339, -0.120887,
		41.089058, 33.730988, 32.992138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761261, 33.403896, 32.463520>,  <41.782417, 33.685253, 33.076759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761261, 33.403896, 32.463520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.408432, 33.583214, 32.521461>,  <41.196735, 33.690804, 32.556225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.408432, 33.583214, 32.521461>,  <41.761261, 33.403896, 32.463520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408432, 33.583214, 32.521461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035430, 0.243468, -0.969262,
		-0.469782, -0.860090, -0.198872,
		-0.882071, 0.448296, 0.144850,
		41.143810, 33.717701, 32.564915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327927, 33.041527, 32.061859>,  <41.761261, 33.403896, 32.463520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327927, 33.041527, 32.061859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.174934, 33.406235, 32.121712>,  <41.083138, 33.625057, 32.157623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.174934, 33.406235, 32.121712>,  <41.327927, 33.041527, 32.061859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174934, 33.406235, 32.121712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037262, 0.146588, -0.988496,
		-0.923211, -0.383658, -0.022093,
		-0.382483, 0.911767, 0.149628,
		41.060188, 33.679764, 32.166599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761272, 33.108284, 31.565369>,  <41.327927, 33.041527, 32.061859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761272, 33.108284, 31.565369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.828823, 33.492580, 31.653425>,  <40.869354, 33.723156, 31.706259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.828823, 33.492580, 31.653425>,  <40.761272, 33.108284, 31.565369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828823, 33.492580, 31.653425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034080, 0.217526, -0.975460,
		-0.985048, 0.172233, 0.003993,
		0.168875, 0.960739, 0.220143,
		40.879486, 33.780804, 31.719467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220688, 33.642441, 31.267076>,  <40.761272, 33.108284, 31.565369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220688, 33.642441, 31.267076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.571106, 33.828083, 31.319464>,  <40.781357, 33.939468, 31.350897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.571106, 33.828083, 31.319464>,  <40.220688, 33.642441, 31.267076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571106, 33.828083, 31.319464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013668, 0.247582, -0.968770,
		-0.482036, 0.850477, 0.210550,
		0.876045, 0.464104, 0.130968,
		40.833920, 33.967316, 31.358753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177322, 34.243980, 30.829746>,  <40.220688, 33.642441, 31.267076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177322, 34.243980, 30.829746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.562298, 34.236259, 30.938068>,  <40.793285, 34.231628, 31.003061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.562298, 34.236259, 30.938068>,  <40.177322, 34.243980, 30.829746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562298, 34.236259, 30.938068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267763, 0.232244, -0.935075,
		-0.044842, 0.972466, 0.228690,
		0.962441, -0.019304, 0.270805,
		40.851028, 34.230469, 31.019310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106892, 34.834564, 31.131647>,  <40.177322, 34.243980, 30.829746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106892, 34.834564, 31.131647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927032, 35.189854, 31.093977>,  <39.819115, 35.403027, 31.071375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927032, 35.189854, 31.093977>,  <40.106892, 34.834564, 31.131647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927032, 35.189854, 31.093977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485138, -0.154337, 0.860710,
		0.749971, 0.432705, 0.500310,
		-0.449650, 0.888227, -0.094173,
		39.792137, 35.456322, 31.065725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176170, 35.135807, 31.775234>,  <40.106892, 34.834564, 31.131647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176170, 35.135807, 31.775234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.869499, 35.316139, 31.592384>,  <39.685497, 35.424339, 31.482676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.869499, 35.316139, 31.592384>,  <40.176170, 35.135807, 31.775234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869499, 35.316139, 31.592384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571278, -0.154091, 0.806163,
		0.293003, 0.879209, 0.375687,
		-0.766675, 0.450830, -0.457123,
		39.639496, 35.451389, 31.455248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960011, 35.480347, 32.303974>,  <40.176170, 35.135807, 31.775234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960011, 35.480347, 32.303974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673805, 35.435654, 32.028133>,  <39.502083, 35.408836, 31.862629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673805, 35.435654, 32.028133>,  <39.960011, 35.480347, 32.303974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673805, 35.435654, 32.028133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634217, -0.310016, 0.708279,
		-0.292927, 0.944143, 0.150957,
		-0.715516, -0.111734, -0.689603,
		39.459152, 35.402134, 31.821253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331646, 35.794800, 32.615608>,  <39.960011, 35.480347, 32.303974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331646, 35.794800, 32.615608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.209583, 35.548985, 32.324619>,  <39.136345, 35.401497, 32.150024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.209583, 35.548985, 32.324619>,  <39.331646, 35.794800, 32.615608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209583, 35.548985, 32.324619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716103, -0.355486, 0.600688,
		-0.627753, 0.704254, -0.331591,
		-0.305161, -0.614537, -0.727476,
		39.118034, 35.364624, 32.106377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569782, 35.905090, 32.496471>,  <39.331646, 35.794800, 32.615608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569782, 35.905090, 32.496471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.689346, 35.542900, 32.375961>,  <38.761086, 35.325584, 32.303654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.689346, 35.542900, 32.375961>,  <38.569782, 35.905090, 32.496471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689346, 35.542900, 32.375961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703966, -0.422376, 0.570990,
		-0.644270, 0.041416, -0.763676,
		0.298910, -0.905474, -0.301280,
		38.779018, 35.271259, 32.285576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008923, 35.628525, 32.433502>,  <38.569782, 35.905090, 32.496471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008923, 35.628525, 32.433502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.230442, 35.295925, 32.415970>,  <38.363354, 35.096367, 32.405453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.230442, 35.295925, 32.415970>,  <38.008923, 35.628525, 32.433502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230442, 35.295925, 32.415970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752834, -0.522504, 0.400288,
		-0.355739, -0.188683, -0.915341,
		0.553797, -0.831497, -0.043829,
		38.396580, 35.046474, 32.402821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577564, 35.043900, 32.180973>,  <38.008923, 35.628525, 32.433502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577564, 35.043900, 32.180973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.889481, 34.905079, 32.389389>,  <38.076630, 34.821785, 32.514439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.889481, 34.905079, 32.389389>,  <37.577564, 35.043900, 32.180973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889481, 34.905079, 32.389389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588419, -0.690482, 0.420710,
		0.213759, -0.634655, -0.742644,
		0.779789, -0.347055, 0.521040,
		38.123417, 34.800961, 32.545700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393589, 34.397179, 32.179588>,  <37.577564, 35.043900, 32.180973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393589, 34.397179, 32.179588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.683384, 34.412434, 32.454884>,  <37.857262, 34.421585, 32.620060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.683384, 34.412434, 32.454884>,  <37.393589, 34.397179, 32.179588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683384, 34.412434, 32.454884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479419, -0.689523, 0.542877,
		0.495255, -0.723259, -0.481267,
		0.724485, 0.038134, 0.688234,
		37.900730, 34.423874, 32.661354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844460, 33.801590, 32.180649>,  <37.393589, 34.397179, 32.179588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844460, 33.801590, 32.180649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847527, 33.948635, 32.552628>,  <37.849365, 34.036861, 32.775814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847527, 33.948635, 32.552628>,  <37.844460, 33.801590, 32.180649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847527, 33.948635, 32.552628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547040, -0.776937, 0.311635,
		0.837071, -0.511107, 0.195146,
		0.007663, 0.367613, 0.929947,
		37.849827, 34.058918, 32.831612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756855, 33.180569, 32.589413>,  <37.844460, 33.801590, 32.180649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756855, 33.180569, 32.589413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.698265, 33.469158, 32.860123>,  <37.663109, 33.642311, 33.022549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.698265, 33.469158, 32.860123>,  <37.756855, 33.180569, 32.589413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698265, 33.469158, 32.860123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444227, -0.659261, 0.606661,
		0.883859, -0.211778, 0.417065,
		-0.146478, 0.721474, 0.676771,
		37.654324, 33.685600, 33.063152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047138, 32.884312, 33.225304>,  <37.756855, 33.180569, 32.589413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047138, 32.884312, 33.225304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793388, 33.182148, 33.308392>,  <37.641136, 33.360851, 33.358242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793388, 33.182148, 33.308392>,  <38.047138, 32.884312, 33.225304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793388, 33.182148, 33.308392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492974, -0.596655, 0.633230,
		0.595432, 0.299309, 0.745570,
		-0.634379, 0.744592, 0.207716,
		37.603073, 33.405525, 33.370705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128319, 32.937149, 33.944527>,  <38.047138, 32.884312, 33.225304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128319, 32.937149, 33.944527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.783127, 33.114883, 33.848335>,  <37.576012, 33.221523, 33.790619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.783127, 33.114883, 33.848335>,  <38.128319, 32.937149, 33.944527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783127, 33.114883, 33.848335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467107, -0.520279, 0.714927,
		0.192550, 0.729298, 0.656543,
		-0.862981, 0.444335, -0.240480,
		37.524231, 33.248184, 33.776192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.327061, 36.994621, 27.775923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927624, 36.986801, 27.756178>,  <40.687962, 36.982109, 27.744331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927624, 36.986801, 27.756178>,  <41.327061, 36.994621, 27.775923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927624, 36.986801, 27.756178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048022, -0.063830, 0.996805,
		-0.022643, 0.997769, 0.062801,
		-0.998590, -0.019555, -0.049361,
		40.628048, 36.980934, 27.741369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127945, 37.399635, 28.359241>,  <41.327061, 36.994621, 27.775923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127945, 37.399635, 28.359241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790070, 37.216469, 28.248377>,  <40.587345, 37.106567, 28.181858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790070, 37.216469, 28.248377>,  <41.127945, 37.399635, 28.359241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790070, 37.216469, 28.248377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236406, -0.145405, 0.960713,
		-0.480228, 0.877022, 0.014567,
		-0.844685, -0.457918, -0.277161,
		40.536663, 37.079094, 28.165228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665550, 37.553486, 28.846525>,  <41.127945, 37.399635, 28.359241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665550, 37.553486, 28.846525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528481, 37.207310, 28.700325>,  <40.446239, 36.999603, 28.612604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528481, 37.207310, 28.700325>,  <40.665550, 37.553486, 28.846525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528481, 37.207310, 28.700325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385796, -0.225103, 0.894701,
		-0.856584, 0.447600, -0.256746,
		-0.342674, -0.865438, -0.365503,
		40.425678, 36.947678, 28.590673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003143, 37.507309, 29.063593>,  <40.665550, 37.553486, 28.846525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003143, 37.507309, 29.063593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123756, 37.130367, 29.005573>,  <40.196125, 36.904202, 28.970762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123756, 37.130367, 29.005573>,  <40.003143, 37.507309, 29.063593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123756, 37.130367, 29.005573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564410, -0.299031, 0.769429,
		-0.768451, -0.150144, -0.622045,
		0.301536, -0.942357, -0.145048,
		40.214218, 36.847660, 28.962059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529087, 37.100361, 29.197697>,  <40.003143, 37.507309, 29.063593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529087, 37.100361, 29.197697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809471, 36.815971, 29.220257>,  <39.977699, 36.645340, 29.233793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809471, 36.815971, 29.220257>,  <39.529087, 37.100361, 29.197697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809471, 36.815971, 29.220257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501396, -0.435003, 0.747913,
		-0.507212, -0.552532, -0.661396,
		0.700956, -0.710972, 0.056398,
		40.019760, 36.602680, 29.237177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231651, 36.430458, 29.343782>,  <39.529087, 37.100361, 29.197697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231651, 36.430458, 29.343782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602230, 36.357105, 29.475279>,  <39.824577, 36.313095, 29.554176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602230, 36.357105, 29.475279>,  <39.231651, 36.430458, 29.343782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602230, 36.357105, 29.475279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375525, -0.389665, 0.840918,
		-0.026109, -0.902515, -0.429867,
		0.926445, -0.183381, 0.328743,
		39.880165, 36.302090, 29.573902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022144, 35.989273, 29.766258>,  <39.231651, 36.430458, 29.343782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022144, 35.989273, 29.766258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414055, 36.001762, 29.845308>,  <39.649200, 36.009258, 29.892738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414055, 36.001762, 29.845308>,  <39.022144, 35.989273, 29.766258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414055, 36.001762, 29.845308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176059, -0.334660, 0.925746,
		0.095045, -0.941821, -0.322395,
		0.979781, 0.031227, 0.197624,
		39.707989, 36.011131, 29.904594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266518, 35.311802, 30.067135>,  <39.022144, 35.989273, 29.766258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266518, 35.311802, 30.067135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555836, 35.563061, 30.181868>,  <39.729427, 35.713818, 30.250708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555836, 35.563061, 30.181868>,  <39.266518, 35.311802, 30.067135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555836, 35.563061, 30.181868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087345, -0.495257, 0.864345,
		0.684994, -0.600122, -0.413082,
		0.723294, 0.628151, 0.286830,
		39.772823, 35.751507, 30.267918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719376, 34.866840, 30.391331>,  <39.266518, 35.311802, 30.067135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719376, 34.866840, 30.391331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750118, 35.242424, 30.525459>,  <39.768562, 35.467773, 30.605936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750118, 35.242424, 30.525459>,  <39.719376, 34.866840, 30.391331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750118, 35.242424, 30.525459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184520, -0.317114, 0.930264,
		0.979820, -0.133367, 0.148886,
		0.076852, 0.938964, 0.335323,
		39.773174, 35.524113, 30.626057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446972, 34.785717, 30.313019>,  <39.719376, 34.866840, 30.391331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446972, 34.785717, 30.313019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747543, 34.561428, 30.452126>,  <40.927887, 34.426853, 30.535589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747543, 34.561428, 30.452126>,  <40.446972, 34.785717, 30.313019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747543, 34.561428, 30.452126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377221, -0.067351, -0.923671,
		0.541348, 0.825258, 0.160908,
		0.751430, -0.560725, 0.347765,
		40.972973, 34.393211, 30.556456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112610, 35.171700, 30.073900>,  <40.446972, 34.785717, 30.313019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112610, 35.171700, 30.073900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238934, 34.803032, 30.164053>,  <41.314728, 34.581833, 30.218143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238934, 34.803032, 30.164053>,  <41.112610, 35.171700, 30.073900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238934, 34.803032, 30.164053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415798, -0.079081, -0.906012,
		0.852865, 0.379837, 0.358254,
		0.315806, -0.921667, 0.225381,
		41.333675, 34.526531, 30.231667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900845, 35.093555, 29.883638>,  <41.112610, 35.171700, 30.073900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900845, 35.093555, 29.883638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774361, 34.714085, 29.885736>,  <41.698471, 34.486404, 29.886995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774361, 34.714085, 29.885736>,  <41.900845, 35.093555, 29.883638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774361, 34.714085, 29.885736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404884, -0.139952, -0.903594,
		0.857951, -0.283601, 0.428358,
		-0.316210, -0.948675, 0.005246,
		41.679497, 34.429482, 29.887310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449425, 34.700008, 29.578663>,  <41.900845, 35.093555, 29.883638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449425, 34.700008, 29.578663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111473, 34.488586, 29.545660>,  <41.908703, 34.361732, 29.525858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111473, 34.488586, 29.545660>,  <42.449425, 34.700008, 29.578663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111473, 34.488586, 29.545660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182249, -0.139381, -0.973323,
		0.502954, -0.837379, 0.214089,
		-0.844880, -0.528554, -0.082509,
		41.858009, 34.330021, 29.520906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594204, 34.026802, 29.207327>,  <42.449425, 34.700008, 29.578663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594204, 34.026802, 29.207327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198692, 34.058777, 29.156849>,  <41.961384, 34.077961, 29.126562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198692, 34.058777, 29.156849>,  <42.594204, 34.026802, 29.207327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198692, 34.058777, 29.156849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088342, -0.368323, -0.925491,
		-0.120465, -0.926255, 0.357128,
		-0.988779, 0.079940, -0.126197,
		41.902058, 34.082760, 29.118990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512814, 33.509029, 28.760576>,  <42.594204, 34.026802, 29.207327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512814, 33.509029, 28.760576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170208, 33.714058, 28.736395>,  <41.964645, 33.837074, 28.721886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170208, 33.714058, 28.736395>,  <42.512814, 33.509029, 28.760576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170208, 33.714058, 28.736395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010401, -0.134249, -0.990893,
		-0.516016, -0.848087, 0.120318,
		-0.856516, 0.512568, -0.060454,
		41.913254, 33.867828, 28.718258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102730, 33.058296, 28.438253>,  <42.512814, 33.509029, 28.760576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102730, 33.058296, 28.438253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967461, 33.426464, 28.359793>,  <41.886299, 33.647366, 28.312716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967461, 33.426464, 28.359793>,  <42.102730, 33.058296, 28.438253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967461, 33.426464, 28.359793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008937, -0.205282, -0.978662,
		-0.941043, -0.332706, 0.061194,
		-0.338169, 0.920416, -0.196153,
		41.866009, 33.702587, 28.300947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749981, 33.006851, 27.837080>,  <42.102730, 33.058296, 28.438253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749981, 33.006851, 27.837080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792824, 33.404488, 27.844196>,  <41.818527, 33.643070, 27.848465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792824, 33.404488, 27.844196>,  <41.749981, 33.006851, 27.837080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792824, 33.404488, 27.844196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039920, 0.022178, -0.998957,
		-0.993446, 0.106281, 0.042059,
		0.107103, 0.994089, 0.017789,
		41.824955, 33.702713, 27.849533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232014, 33.329422, 27.301090>,  <41.749981, 33.006851, 27.837080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232014, 33.329422, 27.301090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497219, 33.619072, 27.377048>,  <41.656342, 33.792862, 27.422623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497219, 33.619072, 27.377048>,  <41.232014, 33.329422, 27.301090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497219, 33.619072, 27.377048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085418, 0.178831, -0.980165,
		-0.743717, 0.666084, 0.056714,
		0.663015, 0.724121, 0.189895,
		41.696125, 33.836308, 27.434017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047894, 33.884598, 26.867510>,  <41.232014, 33.329422, 27.301090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047894, 33.884598, 26.867510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423790, 33.945087, 26.990164>,  <41.649326, 33.981380, 27.063757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423790, 33.945087, 26.990164>,  <41.047894, 33.884598, 26.867510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423790, 33.945087, 26.990164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297010, 0.083143, -0.951248,
		-0.169348, 0.984996, 0.033216,
		0.939737, 0.151227, 0.306634,
		41.705711, 33.990456, 27.082153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342747, 34.417740, 26.404467>,  <41.047894, 33.884598, 26.867510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342747, 34.417740, 26.404467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688469, 34.275085, 26.546333>,  <41.895901, 34.189495, 26.631453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688469, 34.275085, 26.546333>,  <41.342747, 34.417740, 26.404467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688469, 34.275085, 26.546333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419114, 0.120840, -0.899856,
		0.278060, 0.926397, 0.253913,
		0.864307, -0.356633, 0.354665,
		41.947762, 34.168095, 26.652733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890804, 35.005112, 26.263168>,  <41.342747, 34.417740, 26.404467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890804, 35.005112, 26.263168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067818, 34.648991, 26.306091>,  <42.174026, 34.435318, 26.331844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067818, 34.648991, 26.306091>,  <41.890804, 35.005112, 26.263168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067818, 34.648991, 26.306091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530841, 0.163637, -0.831524,
		0.722752, 0.424942, 0.545026,
		0.442536, -0.890307, 0.107307,
		42.200577, 34.381897, 26.338284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709621, 35.058487, 26.251919>,  <41.890804, 35.005112, 26.263168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709621, 35.058487, 26.251919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623737, 34.680962, 26.151421>,  <42.572208, 34.454449, 26.091122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623737, 34.680962, 26.151421>,  <42.709621, 35.058487, 26.251919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623737, 34.680962, 26.151421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576867, 0.085033, -0.812401,
		0.788115, -0.319363, 0.526195,
		-0.214707, -0.943810, -0.251245,
		42.559326, 34.397820, 26.076048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291847, 34.833664, 26.018518>,  <42.709621, 35.058487, 26.251919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291847, 34.833664, 26.018518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034473, 34.567982, 25.866299>,  <42.880047, 34.408573, 25.774967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034473, 34.567982, 25.866299>,  <43.291847, 34.833664, 26.018518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034473, 34.567982, 25.866299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430444, 0.097155, -0.897373,
		0.633012, -0.741210, 0.223391,
		-0.643438, -0.664206, -0.380550,
		42.841442, 34.368721, 25.752134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.511024, 35.471226, 25.122629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.867329, 35.326717, 25.232929>,  <36.081112, 35.240013, 25.299109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.867329, 35.326717, 25.232929>,  <35.511024, 35.471226, 25.122629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867329, 35.326717, 25.232929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432438, -0.487067, 0.758791,
		-0.139818, -0.795142, -0.590084,
		0.890757, -0.361268, 0.275749,
		36.134556, 35.218338, 25.315655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469334, 34.702122, 25.126841>,  <35.511024, 35.471226, 25.122629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469334, 34.702122, 25.126841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.791782, 34.767437, 25.354349>,  <35.985252, 34.806625, 25.490854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.791782, 34.767437, 25.354349>,  <35.469334, 34.702122, 25.126841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791782, 34.767437, 25.354349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330513, -0.673028, 0.661660,
		0.490839, -0.721367, -0.488576,
		0.806125, 0.163288, 0.568770,
		36.033619, 34.816422, 25.524981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624825, 34.044910, 25.432152>,  <35.469334, 34.702122, 25.126841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624825, 34.044910, 25.432152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.795036, 34.317646, 25.670149>,  <35.897163, 34.481289, 25.812946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.795036, 34.317646, 25.670149>,  <35.624825, 34.044910, 25.432152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795036, 34.317646, 25.670149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249734, -0.543477, 0.801415,
		0.869802, -0.489617, -0.060988,
		0.425532, 0.681841, 0.594992,
		35.922695, 34.522198, 25.848646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929142, 33.525124, 25.919827>,  <35.624825, 34.044910, 25.432152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929142, 33.525124, 25.919827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.992386, 33.880413, 26.092365>,  <36.030334, 34.093586, 26.195889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.992386, 33.880413, 26.092365>,  <35.929142, 33.525124, 25.919827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992386, 33.880413, 26.092365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165431, -0.406839, 0.898396,
		0.973464, -0.213407, 0.082613,
		0.158114, 0.888223, 0.431347,
		36.039822, 34.146881, 26.221769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240597, 33.335934, 26.501427>,  <35.929142, 33.525124, 25.919827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240597, 33.335934, 26.501427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113159, 33.707672, 26.576065>,  <36.036697, 33.930714, 26.620848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113159, 33.707672, 26.576065>,  <36.240597, 33.335934, 26.501427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113159, 33.707672, 26.576065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112011, -0.232387, 0.966152,
		0.941248, 0.286914, 0.178135,
		-0.318599, 0.929342, 0.186597,
		36.017578, 33.986473, 26.632044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715118, 33.613503, 27.038313>,  <36.240597, 33.335934, 26.501427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715118, 33.613503, 27.038313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361210, 33.799728, 27.046610>,  <36.148865, 33.911465, 27.051588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361210, 33.799728, 27.046610>,  <36.715118, 33.613503, 27.038313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361210, 33.799728, 27.046610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087669, -0.209993, 0.973764,
		0.457708, 0.859739, 0.226611,
		-0.884770, 0.465566, 0.020743,
		36.095779, 33.939400, 27.052834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678486, 34.018372, 27.665102>,  <36.715118, 33.613503, 27.038313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678486, 34.018372, 27.665102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.295891, 33.995171, 27.550724>,  <36.066334, 33.981251, 27.482098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.295891, 33.995171, 27.550724>,  <36.678486, 34.018372, 27.665102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295891, 33.995171, 27.550724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249479, -0.345590, 0.904615,
		-0.151293, 0.936591, 0.316081,
		-0.956489, -0.058006, -0.285945,
		36.008945, 33.977768, 27.464941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306232, 34.314789, 28.247345>,  <36.678486, 34.018372, 27.665102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306232, 34.314789, 28.247345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046803, 34.088467, 28.043692>,  <35.891144, 33.952675, 27.921499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046803, 34.088467, 28.043692>,  <36.306232, 34.314789, 28.247345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046803, 34.088467, 28.043692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348094, -0.374365, 0.859466,
		-0.676892, 0.734653, 0.045850,
		-0.648574, -0.565805, -0.509133,
		35.852230, 33.918724, 27.890951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740208, 34.507278, 28.532761>,  <36.306232, 34.314789, 28.247345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740208, 34.507278, 28.532761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.693359, 34.144329, 28.371292>,  <35.665249, 33.926559, 28.274412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.693359, 34.144329, 28.371292>,  <35.740208, 34.507278, 28.532761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693359, 34.144329, 28.371292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371763, -0.336855, 0.865056,
		-0.920910, 0.251387, -0.297875,
		-0.117123, -0.907377, -0.403669,
		35.658222, 33.872116, 28.250191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207043, 34.292057, 28.935322>,  <35.740208, 34.507278, 28.532761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207043, 34.292057, 28.935322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336025, 33.960609, 28.752277>,  <35.413414, 33.761742, 28.642450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336025, 33.960609, 28.752277>,  <35.207043, 34.292057, 28.935322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336025, 33.960609, 28.752277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349585, -0.553506, 0.755925,
		-0.879666, -0.083780, -0.468155,
		0.322458, -0.828621, -0.457612,
		35.432762, 33.712025, 28.614994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720131, 33.756580, 29.050650>,  <35.207043, 34.292057, 28.935322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720131, 33.756580, 29.050650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.060619, 33.566654, 28.961235>,  <35.264912, 33.452698, 28.907585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.060619, 33.566654, 28.961235>,  <34.720131, 33.756580, 29.050650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060619, 33.566654, 28.961235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135813, -0.610735, 0.780101,
		-0.506928, -0.633680, -0.584358,
		0.851222, -0.474818, -0.223536,
		35.315987, 33.424210, 28.894175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618607, 32.990524, 29.096687>,  <34.720131, 33.756580, 29.050650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618607, 32.990524, 29.096687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.010681, 33.056393, 29.140707>,  <35.245926, 33.095913, 29.167118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.010681, 33.056393, 29.140707>,  <34.618607, 32.990524, 29.096687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010681, 33.056393, 29.140707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015519, -0.490074, 0.871543,
		0.197451, -0.855985, -0.477810,
		0.980190, 0.164672, 0.110049,
		35.304737, 33.105793, 29.173721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934650, 32.320602, 29.279150>,  <34.618607, 32.990524, 29.096687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934650, 32.320602, 29.279150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197369, 32.594368, 29.405760>,  <35.355000, 32.758629, 29.481726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197369, 32.594368, 29.405760>,  <34.934650, 32.320602, 29.279150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197369, 32.594368, 29.405760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029027, -0.396499, 0.917576,
		0.753508, -0.611849, -0.240553,
		0.656797, 0.684419, 0.316525,
		35.394409, 32.799694, 29.500717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315048, 31.936455, 29.668240>,  <34.934650, 32.320602, 29.279150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315048, 31.936455, 29.668240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387356, 32.309082, 29.794416>,  <35.430740, 32.532658, 29.870123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387356, 32.309082, 29.794416>,  <35.315048, 31.936455, 29.668240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387356, 32.309082, 29.794416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005816, -0.319710, 0.947498,
		0.983509, -0.173109, -0.052374,
		0.180765, 0.931568, 0.315444,
		35.441586, 32.588551, 29.889050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057827, 31.830509, 29.455307>,  <35.315048, 31.936455, 29.668240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057827, 31.830509, 29.455307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.399994, 31.626059, 29.421824>,  <36.605293, 31.503387, 29.401733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.399994, 31.626059, 29.421824>,  <36.057827, 31.830509, 29.455307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399994, 31.626059, 29.421824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132052, 0.371504, -0.918992,
		0.500819, 0.775070, 0.385287,
		0.855420, -0.511127, -0.083707,
		36.656620, 31.472721, 29.396711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547543, 32.291443, 29.257578>,  <36.057827, 31.830509, 29.455307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547543, 32.291443, 29.257578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.686687, 31.929798, 29.158318>,  <36.770172, 31.712812, 29.098763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.686687, 31.929798, 29.158318>,  <36.547543, 32.291443, 29.257578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686687, 31.929798, 29.158318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227391, 0.338137, -0.913212,
		0.909553, 0.261243, 0.323211,
		0.347860, -0.904110, -0.248149,
		36.791046, 31.658566, 29.083872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130054, 32.444000, 28.818056>,  <36.547543, 32.291443, 29.257578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130054, 32.444000, 28.818056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.021744, 32.069920, 28.726768>,  <36.956757, 31.845472, 28.671995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.021744, 32.069920, 28.726768>,  <37.130054, 32.444000, 28.818056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021744, 32.069920, 28.726768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282742, 0.149356, -0.947496,
		0.920182, -0.321090, 0.223977,
		-0.270780, -0.935197, -0.228221,
		36.940510, 31.789360, 28.658302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697441, 32.301716, 28.490952>,  <37.130054, 32.444000, 28.818056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697441, 32.301716, 28.490952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.434837, 32.018463, 28.386997>,  <37.277275, 31.848511, 28.324625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.434837, 32.018463, 28.386997>,  <37.697441, 32.301716, 28.490952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434837, 32.018463, 28.386997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196230, 0.172339, -0.965294,
		0.728347, -0.684722, 0.025815,
		-0.656509, -0.708135, -0.259886,
		37.237885, 31.806023, 28.309032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034306, 31.901552, 28.022057>,  <37.697441, 32.301716, 28.490952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034306, 31.901552, 28.022057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.646267, 31.829729, 27.956739>,  <37.413445, 31.786634, 27.917549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.646267, 31.829729, 27.956739>,  <38.034306, 31.901552, 28.022057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646267, 31.829729, 27.956739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142027, 0.125601, -0.981862,
		0.196816, -0.975695, -0.096342,
		-0.970099, -0.179563, -0.163295,
		37.355236, 31.775862, 27.907751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981251, 31.264160, 27.641867>,  <38.034306, 31.901552, 28.022057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981251, 31.264160, 27.641867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654125, 31.488728, 27.591290>,  <37.457851, 31.623468, 27.560944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654125, 31.488728, 27.591290>,  <37.981251, 31.264160, 27.641867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654125, 31.488728, 27.591290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159652, 0.010241, -0.987120,
		-0.552893, -0.827468, -0.098007,
		-0.817815, 0.561419, -0.126445,
		37.408779, 31.657154, 27.553356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708420, 31.031700, 27.038723>,  <37.981251, 31.264160, 27.641867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708420, 31.031700, 27.038723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510677, 31.377426, 27.075766>,  <37.392033, 31.584862, 27.097992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510677, 31.377426, 27.075766>,  <37.708420, 31.031700, 27.038723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510677, 31.377426, 27.075766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003209, 0.108350, -0.994108,
		-0.869256, -0.491142, -0.056337,
		-0.494352, 0.864315, 0.092608,
		37.362373, 31.636721, 27.103548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340107, 31.076889, 26.387543>,  <37.708420, 31.031700, 27.038723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340107, 31.076889, 26.387543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333904, 31.437744, 26.560009>,  <37.330181, 31.654259, 26.663488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333904, 31.437744, 26.560009>,  <37.340107, 31.076889, 26.387543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333904, 31.437744, 26.560009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022796, 0.431423, -0.901862,
		-0.999620, -0.004155, -0.027255,
		-0.015506, 0.902140, 0.431164,
		37.329254, 31.708385, 26.689358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885509, 31.538708, 25.990021>,  <37.340107, 31.076889, 26.387543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885509, 31.538708, 25.990021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164593, 31.754135, 26.178974>,  <37.332043, 31.883390, 26.292347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164593, 31.754135, 26.178974>,  <36.885509, 31.538708, 25.990021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164593, 31.754135, 26.178974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211605, 0.475044, -0.854141,
		-0.684414, 0.695902, 0.217480,
		0.697711, 0.538566, 0.472383,
		37.373905, 31.915705, 26.320688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779644, 32.286583, 25.911276>,  <36.885509, 31.538708, 25.990021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779644, 32.286583, 25.911276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.168137, 32.200542, 25.952129>,  <37.401234, 32.148918, 25.976641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.168137, 32.200542, 25.952129>,  <36.779644, 32.286583, 25.911276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168137, 32.200542, 25.952129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189947, 0.441200, -0.877076,
		0.143601, 0.871248, 0.469367,
		0.971236, -0.215104, 0.102134,
		37.459507, 32.136013, 25.982769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193771, 32.954857, 26.008579>,  <36.779644, 32.286583, 25.911276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193771, 32.954857, 26.008579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385254, 32.660542, 25.816973>,  <37.500145, 32.483952, 25.702009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385254, 32.660542, 25.816973>,  <37.193771, 32.954857, 26.008579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385254, 32.660542, 25.816973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089206, 0.583529, -0.807178,
		0.873430, 0.343673, 0.344977,
		0.478710, -0.735787, -0.479014,
		37.528866, 32.439804, 25.673269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820950, 33.241539, 25.788036>,  <37.193771, 32.954857, 26.008579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820950, 33.241539, 25.788036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742390, 32.917610, 25.566908>,  <37.695251, 32.723251, 25.434231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742390, 32.917610, 25.566908>,  <37.820950, 33.241539, 25.788036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742390, 32.917610, 25.566908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300960, 0.486800, -0.820030,
		0.933193, -0.327433, 0.148116,
		-0.196402, -0.809823, -0.552822,
		37.683468, 32.674664, 25.401062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360523, 33.183052, 25.378284>,  <37.820950, 33.241539, 25.788036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360523, 33.183052, 25.378284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.101707, 32.956650, 25.173937>,  <37.946419, 32.820808, 25.051329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.101707, 32.956650, 25.173937>,  <38.360523, 33.183052, 25.378284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101707, 32.956650, 25.173937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274760, 0.451920, -0.848690,
		0.711232, -0.689499, -0.136893,
		-0.647036, -0.566003, -0.510867,
		37.907597, 32.786850, 25.020678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747822, 32.899483, 24.816353>,  <38.360523, 33.183052, 25.378284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747822, 32.899483, 24.816353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.361252, 32.912716, 24.714424>,  <38.129311, 32.920658, 24.653267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.361252, 32.912716, 24.714424>,  <38.747822, 32.899483, 24.816353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361252, 32.912716, 24.714424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236875, 0.499058, -0.833566,
		0.099589, -0.865937, -0.490138,
		-0.966422, 0.033088, -0.254819,
		38.071323, 32.922642, 24.637978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030132, 32.155334, 24.668577>,  <38.747822, 32.899483, 24.816353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030132, 32.155334, 24.668577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.262383, 31.896074, 24.471489>,  <39.401733, 31.740517, 24.353235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.262383, 31.896074, 24.471489>,  <39.030132, 32.155334, 24.668577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262383, 31.896074, 24.471489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205825, -0.468670, 0.859060,
		-0.787727, -0.600204, -0.138714,
		0.580623, -0.648154, -0.492721,
		39.436569, 31.701628, 24.323673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843315, 31.492525, 24.868214>,  <39.030132, 32.155334, 24.668577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843315, 31.492525, 24.868214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209900, 31.421606, 24.724735>,  <39.429852, 31.379055, 24.638649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209900, 31.421606, 24.724735>,  <38.843315, 31.492525, 24.868214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209900, 31.421606, 24.724735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244368, -0.461837, 0.852638,
		-0.316826, -0.869065, -0.379931,
		0.916464, -0.177295, -0.358694,
		39.484840, 31.368418, 24.617126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965870, 30.738749, 24.770023>,  <38.843315, 31.492525, 24.868214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965870, 30.738749, 24.770023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.331055, 30.896976, 24.810064>,  <39.550167, 30.991913, 24.834089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.331055, 30.896976, 24.810064>,  <38.965870, 30.738749, 24.770023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331055, 30.896976, 24.810064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173876, -0.599087, 0.781577,
		0.369140, -0.696146, -0.615725,
		0.912964, 0.395571, 0.100104,
		39.604942, 31.015648, 24.840096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267521, 30.222929, 24.950052>,  <38.965870, 30.738749, 24.770023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267521, 30.222929, 24.950052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535000, 30.505503, 25.042831>,  <39.695488, 30.675047, 25.098499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535000, 30.505503, 25.042831>,  <39.267521, 30.222929, 24.950052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535000, 30.505503, 25.042831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203897, -0.474214, 0.856473,
		0.715035, -0.525425, -0.461144,
		0.668693, 0.706434, 0.231948,
		39.735607, 30.717434, 25.112415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869457, 29.865511, 25.201462>,  <39.267521, 30.222929, 24.950052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869457, 29.865511, 25.201462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871273, 30.242935, 25.333929>,  <39.872364, 30.469389, 25.413410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871273, 30.242935, 25.333929>,  <39.869457, 29.865511, 25.201462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871273, 30.242935, 25.333929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165109, -0.327334, 0.930371,
		0.986265, 0.050452, -0.157278,
		0.004544, 0.943561, 0.331168,
		39.872635, 30.526003, 25.433279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439739, 30.033789, 25.728567>,  <39.869457, 29.865511, 25.201462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439739, 30.033789, 25.728567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127956, 30.279127, 25.779570>,  <39.940887, 30.426331, 25.810171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127956, 30.279127, 25.779570>,  <40.439739, 30.033789, 25.728567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127956, 30.279127, 25.779570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044721, -0.148535, 0.987895,
		0.624859, 0.775723, 0.088347,
		-0.779456, 0.613345, 0.127504,
		39.894119, 30.463131, 25.817822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603912, 30.419100, 26.275644>,  <40.439739, 30.033789, 25.728567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603912, 30.419100, 26.275644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.204437, 30.428036, 26.257221>,  <39.964752, 30.433397, 26.246168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.204437, 30.428036, 26.257221>,  <40.603912, 30.419100, 26.275644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204437, 30.428036, 26.257221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048659, -0.134911, 0.989662,
		0.015895, 0.990606, 0.135821,
		-0.998689, 0.022339, -0.046058,
		39.904831, 30.434738, 26.243404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428295, 30.599457, 26.916304>,  <40.603912, 30.419100, 26.275644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428295, 30.599457, 26.916304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.052929, 30.523331, 26.800957>,  <39.827709, 30.477655, 26.731749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.052929, 30.523331, 26.800957>,  <40.428295, 30.599457, 26.916304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052929, 30.523331, 26.800957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266445, -0.132733, 0.954667,
		-0.219964, 0.972709, 0.073850,
		-0.938415, -0.190316, -0.288370,
		39.771404, 30.466236, 26.714445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937378, 30.996496, 27.251348>,  <40.428295, 30.599457, 26.916304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937378, 30.996496, 27.251348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.768242, 30.652533, 27.136972>,  <39.666759, 30.446154, 27.068346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.768242, 30.652533, 27.136972>,  <39.937378, 30.996496, 27.251348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768242, 30.652533, 27.136972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182433, -0.228303, 0.956345,
		-0.887653, 0.456543, -0.060341,
		-0.422836, -0.859911, -0.285942,
		39.641392, 30.394560, 27.051189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296188, 30.916431, 27.708387>,  <39.937378, 30.996496, 27.251348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296188, 30.916431, 27.708387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.356812, 30.561399, 27.534384>,  <39.393185, 30.348381, 27.429981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.356812, 30.561399, 27.534384>,  <39.296188, 30.916431, 27.708387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356812, 30.561399, 27.534384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390119, -0.458081, 0.798730,
		-0.908205, 0.048649, -0.415688,
		0.151561, -0.887579, -0.435010,
		39.402279, 30.295126, 27.403881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629776, 30.587307, 27.720570>,  <39.296188, 30.916431, 27.708387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629776, 30.587307, 27.720570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927696, 30.320621, 27.709532>,  <39.106449, 30.160610, 27.702909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927696, 30.320621, 27.709532>,  <38.629776, 30.587307, 27.720570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927696, 30.320621, 27.709532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359761, -0.436036, 0.824890,
		-0.562000, -0.604452, -0.564619,
		0.744801, -0.666716, -0.027594,
		39.151138, 30.120607, 27.701254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271667, 29.918478, 27.984285>,  <38.629776, 30.587307, 27.720570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271667, 29.918478, 27.984285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.669876, 29.883139, 27.997709>,  <38.908802, 29.861935, 28.005764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.669876, 29.883139, 27.997709>,  <38.271667, 29.918478, 27.984285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669876, 29.883139, 27.997709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065860, -0.393878, 0.916800,
		-0.067777, -0.914907, -0.397934,
		0.995524, -0.088346, 0.033560,
		38.968533, 29.856634, 28.007776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382973, 29.327990, 28.290630>,  <38.271667, 29.918478, 27.984285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382973, 29.327990, 28.290630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749630, 29.481939, 28.333773>,  <38.969624, 29.574308, 28.359659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749630, 29.481939, 28.333773>,  <38.382973, 29.327990, 28.290630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749630, 29.481939, 28.333773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107480, -0.497252, 0.860923,
		0.384979, -0.777569, -0.497170,
		0.916646, 0.384873, 0.107858,
		39.024624, 29.597401, 28.366131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870136, 28.776785, 28.686077>,  <38.382973, 29.327990, 28.290630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870136, 28.776785, 28.686077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.100212, 29.100269, 28.735294>,  <39.238258, 29.294361, 28.764826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.100212, 29.100269, 28.735294>,  <38.870136, 28.776785, 28.686077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100212, 29.100269, 28.735294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253120, -0.318991, 0.913332,
		0.777873, -0.494194, -0.388182,
		0.575190, 0.808713, 0.123044,
		39.272770, 29.342884, 28.772207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.873245, 33.914841, 25.320051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.478416, 33.977161, 25.304995>,  <43.241520, 34.014553, 25.295961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.478416, 33.977161, 25.304995>,  <43.873245, 33.914841, 25.320051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478416, 33.977161, 25.304995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042752, 0.029581, -0.998648,
		-0.154474, -0.987346, -0.035859,
		-0.987071, 0.155798, -0.037642,
		43.182297, 34.023899, 25.293701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551952, 33.377262, 24.888594>,  <43.873245, 33.914841, 25.320051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551952, 33.377262, 24.888594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.295925, 33.684589, 24.888361>,  <43.142307, 33.868984, 24.888222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.295925, 33.684589, 24.888361>,  <43.551952, 33.377262, 24.888594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295925, 33.684589, 24.888361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088321, -0.074328, -0.993315,
		-0.763224, -0.635739, 0.115433,
		-0.640069, 0.768317, -0.000580,
		43.103905, 33.915085, 24.888187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965790, 33.210075, 24.430405>,  <43.551952, 33.377262, 24.888594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965790, 33.210075, 24.430405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.974892, 33.609482, 24.410624>,  <42.980354, 33.849125, 24.398754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.974892, 33.609482, 24.410624>,  <42.965790, 33.210075, 24.430405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974892, 33.609482, 24.410624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239682, -0.042575, -0.969918,
		-0.970585, 0.033926, 0.238358,
		0.022757, 0.998517, -0.049454,
		42.981720, 33.909039, 24.395788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647934, 33.264503, 23.886469>,  <42.965790, 33.210075, 24.430405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647934, 33.264503, 23.886469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.741108, 33.651405, 23.926777>,  <42.797012, 33.883549, 23.950962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.741108, 33.651405, 23.926777>,  <42.647934, 33.264503, 23.886469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741108, 33.651405, 23.926777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341284, 0.178334, -0.922888,
		-0.910641, 0.180583, 0.371649,
		0.232935, 0.967257, 0.100768,
		42.810989, 33.941582, 23.957006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001469, 33.642048, 23.770906>,  <42.647934, 33.264503, 23.886469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001469, 33.642048, 23.770906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.321148, 33.872326, 23.701777>,  <42.512955, 34.010490, 23.660299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.321148, 33.872326, 23.701777>,  <42.001469, 33.642048, 23.770906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321148, 33.872326, 23.701777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325349, 0.172558, -0.929716,
		-0.505407, 0.799252, 0.325208,
		0.799195, 0.575691, -0.172824,
		42.560905, 34.045033, 23.649929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741028, 34.336613, 23.351591>,  <42.001469, 33.642048, 23.770906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741028, 34.336613, 23.351591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.133381, 34.306873, 23.279652>,  <42.368793, 34.289028, 23.236488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.133381, 34.306873, 23.279652>,  <41.741028, 34.336613, 23.351591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133381, 34.306873, 23.279652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165518, 0.167340, -0.971906,
		0.102359, 0.983092, 0.151833,
		0.980880, -0.074352, -0.179848,
		42.427647, 34.284569, 23.225697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911598, 34.966320, 23.035395>,  <41.741028, 34.336613, 23.351591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911598, 34.966320, 23.035395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.213451, 34.721874, 22.939835>,  <42.394562, 34.575207, 22.882500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.213451, 34.721874, 22.939835>,  <41.911598, 34.966320, 23.035395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213451, 34.721874, 22.939835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048630, 0.310999, -0.949165,
		0.654347, 0.727885, 0.204970,
		0.754629, -0.611116, -0.238898,
		42.439838, 34.538540, 22.868166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357101, 35.358402, 22.614374>,  <41.911598, 34.966320, 23.035395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357101, 35.358402, 22.614374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.438797, 34.977154, 22.525064>,  <42.487816, 34.748405, 22.471478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.438797, 34.977154, 22.525064>,  <42.357101, 35.358402, 22.614374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438797, 34.977154, 22.525064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069056, 0.241544, -0.967930,
		0.976482, 0.182272, 0.115152,
		0.204241, -0.953118, -0.223276,
		42.500069, 34.691219, 22.458082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856739, 35.407959, 22.133993>,  <42.357101, 35.358402, 22.614374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856739, 35.407959, 22.133993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.724339, 35.034050, 22.082397>,  <42.644897, 34.809704, 22.051441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.724339, 35.034050, 22.082397>,  <42.856739, 35.407959, 22.133993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724339, 35.034050, 22.082397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063044, 0.158293, -0.985377,
		0.941524, -0.318025, -0.111327,
		-0.330997, -0.934775, -0.128987,
		42.625038, 34.753616, 22.043701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320686, 35.077553, 21.657619>,  <42.856739, 35.407959, 22.133993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320686, 35.077553, 21.657619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.973545, 34.880985, 21.628405>,  <42.765259, 34.763046, 21.610876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.973545, 34.880985, 21.628405>,  <43.320686, 35.077553, 21.657619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973545, 34.880985, 21.628405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044757, 0.069078, -0.996607,
		0.494795, -0.868180, -0.037955,
		-0.867856, -0.491418, -0.073037,
		42.713188, 34.733559, 21.606493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467911, 34.656494, 21.145386>,  <43.320686, 35.077553, 21.657619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467911, 34.656494, 21.145386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.069809, 34.617702, 21.142300>,  <42.830948, 34.594429, 21.140448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.069809, 34.617702, 21.142300>,  <43.467911, 34.656494, 21.145386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069809, 34.617702, 21.142300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011348, -0.036969, -0.999252,
		0.096620, -0.994600, 0.037894,
		-0.995256, -0.096977, -0.007715,
		42.771233, 34.588608, 21.139986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320465, 34.042580, 20.609394>,  <43.467911, 34.656494, 21.145386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320465, 34.042580, 20.609394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.988579, 34.255802, 20.675625>,  <42.789448, 34.383736, 20.715364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.988579, 34.255802, 20.675625>,  <43.320465, 34.042580, 20.609394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988579, 34.255802, 20.675625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128724, 0.105910, -0.986009,
		-0.543136, -0.839424, -0.019258,
		-0.829719, 0.533058, 0.165578,
		42.739662, 34.415718, 20.725298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718472, 33.716850, 20.227564>,  <43.320465, 34.042580, 20.609394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718472, 33.716850, 20.227564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.664093, 34.106617, 20.299145>,  <42.631466, 34.340477, 20.342093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.664093, 34.106617, 20.299145>,  <42.718472, 33.716850, 20.227564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664093, 34.106617, 20.299145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167964, 0.155344, -0.973476,
		-0.976375, -0.162394, 0.142550,
		-0.135943, 0.974421, 0.178950,
		42.623310, 34.398945, 20.352829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076397, 33.942188, 19.949583>,  <42.718472, 33.716850, 20.227564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076397, 33.942188, 19.949583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.349949, 34.233406, 19.968624>,  <42.514080, 34.408134, 19.980049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.349949, 34.233406, 19.968624>,  <42.076397, 33.942188, 19.949583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349949, 34.233406, 19.968624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052993, 0.114636, -0.991993,
		-0.727667, 0.675882, 0.116978,
		0.683880, 0.728040, 0.047600,
		42.555115, 34.451817, 19.982904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536560, 34.159798, 19.560669>,  <42.076397, 33.942188, 19.949583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536560, 34.159798, 19.560669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.139336, 34.184719, 19.520779>,  <40.901001, 34.199673, 19.496845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.139336, 34.184719, 19.520779>,  <41.536560, 34.159798, 19.560669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139336, 34.184719, 19.520779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116236, -0.648403, 0.752371,
		-0.017786, 0.758743, 0.651147,
		-0.993062, 0.062305, -0.099726,
		40.841415, 34.203411, 19.490862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317513, 34.156036, 20.215864>,  <41.536560, 34.159798, 19.560669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317513, 34.156036, 20.215864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.966743, 34.105198, 20.030455>,  <40.756283, 34.074696, 19.919209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.966743, 34.105198, 20.030455>,  <41.317513, 34.156036, 20.215864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966743, 34.105198, 20.030455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312280, -0.582447, 0.750491,
		-0.365360, 0.802872, 0.471073,
		-0.876923, -0.127092, -0.463524,
		40.703667, 34.067070, 19.891397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770271, 34.407566, 20.657787>,  <41.317513, 34.156036, 20.215864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770271, 34.407566, 20.657787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.582443, 34.149487, 20.416716>,  <40.469746, 33.994640, 20.272072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.582443, 34.149487, 20.416716>,  <40.770271, 34.407566, 20.657787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582443, 34.149487, 20.416716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495730, -0.372185, 0.784684,
		-0.730586, 0.667230, -0.145078,
		-0.469569, -0.645199, -0.602680,
		40.441574, 33.955925, 20.235912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028236, 34.487991, 20.738531>,  <40.770271, 34.407566, 20.657787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028236, 34.487991, 20.738531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.108036, 34.122433, 20.597115>,  <40.155914, 33.903099, 20.512264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.108036, 34.122433, 20.597115>,  <40.028236, 34.487991, 20.738531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108036, 34.122433, 20.597115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414578, -0.405631, 0.814610,
		-0.887877, -0.015942, -0.459804,
		0.199498, -0.913898, -0.353541,
		40.167885, 33.848263, 20.491053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343479, 34.129852, 20.758991>,  <40.028236, 34.487991, 20.738531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343479, 34.129852, 20.758991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641117, 33.862663, 20.754482>,  <39.819702, 33.702351, 20.751778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641117, 33.862663, 20.754482>,  <39.343479, 34.129852, 20.758991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641117, 33.862663, 20.754482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494005, -0.561504, 0.663832,
		-0.449752, -0.488388, -0.747797,
		0.744098, -0.667975, -0.011271,
		39.864346, 33.662270, 20.751101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030895, 33.412327, 20.742233>,  <39.343479, 34.129852, 20.758991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030895, 33.412327, 20.742233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.410843, 33.354588, 20.853167>,  <39.638813, 33.319942, 20.919727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.410843, 33.354588, 20.853167>,  <39.030895, 33.412327, 20.742233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410843, 33.354588, 20.853167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302896, -0.644724, 0.701844,
		0.077495, -0.750662, -0.656125,
		0.949868, -0.144348, 0.277335,
		39.695805, 33.311283, 20.936367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147125, 32.628094, 20.799185>,  <39.030895, 33.412327, 20.742233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147125, 32.628094, 20.799185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.431335, 32.795555, 21.025417>,  <39.601864, 32.896030, 21.161156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.431335, 32.795555, 21.025417>,  <39.147125, 32.628094, 20.799185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431335, 32.795555, 21.025417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176508, -0.672023, 0.719187,
		0.681170, -0.610832, -0.403597,
		0.710529, 0.418651, 0.565579,
		39.644493, 32.921150, 21.195091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458206, 32.033085, 21.179388>,  <39.147125, 32.628094, 20.799185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458206, 32.033085, 21.179388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.596348, 32.349117, 21.381973>,  <39.679234, 32.538734, 21.503525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.596348, 32.349117, 21.381973>,  <39.458206, 32.033085, 21.179388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596348, 32.349117, 21.381973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021506, -0.532862, 0.845929,
		0.938225, -0.303040, -0.167036,
		0.345357, 0.790079, 0.506462,
		39.699955, 32.586140, 21.533913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984333, 31.773518, 21.559614>,  <39.458206, 32.033085, 21.179388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984333, 31.773518, 21.559614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.876392, 32.110901, 21.745411>,  <39.811626, 32.313332, 21.856890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.876392, 32.110901, 21.745411>,  <39.984333, 31.773518, 21.559614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876392, 32.110901, 21.745411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004506, -0.481279, 0.876556,
		0.962890, 0.238636, 0.126076,
		-0.269856, 0.843459, 0.464494,
		39.795437, 32.363937, 21.884760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377453, 31.758324, 22.111174>,  <39.984333, 31.773518, 21.559614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377453, 31.758324, 22.111174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.067055, 31.998137, 22.189556>,  <39.880817, 32.142025, 22.236586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.067055, 31.998137, 22.189556>,  <40.377453, 31.758324, 22.111174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067055, 31.998137, 22.189556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075937, -0.397217, 0.914578,
		0.626155, 0.694824, 0.353764,
		-0.775992, 0.599531, 0.195956,
		39.834259, 32.177998, 22.248343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503887, 32.119488, 22.770166>,  <40.377453, 31.758324, 22.111174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503887, 32.119488, 22.770166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.106419, 32.149437, 22.736654>,  <39.867939, 32.167408, 22.716547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.106419, 32.149437, 22.736654>,  <40.503887, 32.119488, 22.770166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106419, 32.149437, 22.736654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103512, -0.319933, 0.941769,
		0.043714, 0.944477, 0.325657,
		-0.993667, 0.074877, -0.083779,
		39.808319, 32.171902, 22.711521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386879, 32.443840, 23.315048>,  <40.503887, 32.119488, 22.770166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386879, 32.443840, 23.315048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.024303, 32.311623, 23.209894>,  <39.806759, 32.232292, 23.146803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.024303, 32.311623, 23.209894>,  <40.386879, 32.443840, 23.315048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024303, 32.311623, 23.209894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224517, -0.150073, 0.962845,
		-0.357716, 0.931782, 0.061819,
		-0.906439, -0.330546, -0.262884,
		39.752373, 32.212460, 23.131029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935497, 32.758450, 23.734114>,  <40.386879, 32.443840, 23.315048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935497, 32.758450, 23.734114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.725849, 32.436680, 23.622255>,  <39.600060, 32.243618, 23.555140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.725849, 32.436680, 23.622255>,  <39.935497, 32.758450, 23.734114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725849, 32.436680, 23.622255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092624, -0.272573, 0.957667,
		-0.846592, 0.527836, 0.068353,
		-0.524122, -0.804421, -0.279648,
		39.568611, 32.195354, 23.538361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403740, 32.668491, 24.249928>,  <39.935497, 32.758450, 23.734114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403740, 32.668491, 24.249928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.426842, 32.315731, 24.062771>,  <39.440704, 32.104076, 23.950478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.426842, 32.315731, 24.062771>,  <39.403740, 32.668491, 24.249928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426842, 32.315731, 24.062771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154029, -0.455191, 0.876970,
		-0.986377, -0.122718, 0.109548,
		0.057754, -0.881897, -0.467892,
		39.444168, 32.051163, 23.922403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712929, 32.573193, 23.974356>,  <39.403740, 32.668491, 24.249928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712929, 32.573193, 23.974356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.379230, 32.768566, 24.076700>,  <38.179012, 32.885792, 24.138107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.379230, 32.768566, 24.076700>,  <38.712929, 32.573193, 23.974356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379230, 32.768566, 24.076700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025513, 0.497722, -0.866961,
		-0.550800, -0.716732, -0.427685,
		-0.834247, 0.488434, 0.255860,
		38.128956, 32.915096, 24.153458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486584, 32.722168, 23.289232>,  <38.712929, 32.573193, 23.974356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486584, 32.722168, 23.289232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.284187, 32.951656, 23.546858>,  <38.162750, 33.089348, 23.701433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.284187, 32.951656, 23.546858>,  <38.486584, 32.722168, 23.289232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284187, 32.951656, 23.546858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046071, 0.763616, -0.644025,
		-0.861308, -0.296198, -0.412814,
		-0.505990, 0.573723, 0.644063,
		38.132389, 33.123772, 23.740076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017876, 33.005527, 22.879017>,  <38.486584, 32.722168, 23.289232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017876, 33.005527, 22.879017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.047840, 33.252613, 23.192150>,  <38.065819, 33.400864, 23.380030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.047840, 33.252613, 23.192150>,  <38.017876, 33.005527, 22.879017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047840, 33.252613, 23.192150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048198, 0.786362, -0.615883,
		-0.996025, 0.008404, 0.088678,
		0.074909, 0.617709, 0.782831,
		38.070312, 33.437927, 23.427000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384819, 33.371014, 22.896708>,  <38.017876, 33.005527, 22.879017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384819, 33.371014, 22.896708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659946, 33.587116, 23.090626>,  <37.825024, 33.716778, 23.206978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659946, 33.587116, 23.090626>,  <37.384819, 33.371014, 22.896708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659946, 33.587116, 23.090626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128961, 0.748194, -0.650827,
		-0.714338, 0.385129, 0.584292,
		0.687815, 0.540261, 0.484797,
		37.866291, 33.749195, 23.236065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152241, 33.968498, 22.772957>,  <37.384819, 33.371014, 22.896708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152241, 33.968498, 22.772957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532516, 34.026833, 22.882446>,  <37.760681, 34.061832, 22.948141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532516, 34.026833, 22.882446>,  <37.152241, 33.968498, 22.772957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532516, 34.026833, 22.882446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083258, 0.730164, -0.678181,
		-0.298766, 0.667528, 0.682016,
		0.950688, 0.145834, 0.273725,
		37.817722, 34.070583, 22.964563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091694, 34.606953, 22.847538>,  <37.152241, 33.968498, 22.772957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091694, 34.606953, 22.847538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.481964, 34.529732, 22.805998>,  <37.716125, 34.483398, 22.781075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.481964, 34.529732, 22.805998>,  <37.091694, 34.606953, 22.847538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481964, 34.529732, 22.805998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049590, 0.655832, -0.753277,
		0.213532, 0.729805, 0.649453,
		0.975677, -0.193055, -0.103850,
		37.774666, 34.471817, 22.774843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338379, 35.291649, 22.662657>,  <37.091694, 34.606953, 22.847538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338379, 35.291649, 22.662657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.617531, 35.024364, 22.559542>,  <37.785023, 34.863995, 22.497673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.617531, 35.024364, 22.559542>,  <37.338379, 35.291649, 22.662657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617531, 35.024364, 22.559542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044642, 0.318647, -0.946822,
		0.714822, 0.672276, 0.192547,
		0.697880, -0.668213, -0.257787,
		37.826897, 34.823902, 22.482206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012440, 35.598534, 23.038141>,  <37.338379, 35.291649, 22.662657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012440, 35.598534, 23.038141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827404, 35.935268, 23.149372>,  <37.716381, 36.137310, 23.216110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827404, 35.935268, 23.149372>,  <38.012440, 35.598534, 23.038141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827404, 35.935268, 23.149372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198075, -0.403861, 0.893120,
		0.864161, 0.358071, 0.353569,
		-0.462593, 0.841833, 0.278076,
		37.688625, 36.187817, 23.232796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125347, 35.469658, 23.701260>,  <38.012440, 35.598534, 23.038141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125347, 35.469658, 23.701260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.833946, 35.737877, 23.645178>,  <37.659107, 35.898808, 23.611528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.833946, 35.737877, 23.645178>,  <38.125347, 35.469658, 23.701260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833946, 35.737877, 23.645178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412080, -0.265443, 0.871625,
		0.547248, 0.692754, 0.469693,
		-0.728498, 0.670546, -0.140207,
		37.615398, 35.939041, 23.603115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048992, 35.776543, 24.285110>,  <38.125347, 35.469658, 23.701260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048992, 35.776543, 24.285110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.706532, 35.889442, 24.111979>,  <37.501057, 35.957184, 24.008099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.706532, 35.889442, 24.111979>,  <38.048992, 35.776543, 24.285110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706532, 35.889442, 24.111979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484601, -0.147831, 0.862153,
		0.179358, 0.947882, 0.263345,
		-0.856150, 0.282252, -0.432830,
		37.449688, 35.974117, 23.982130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703381, 36.298805, 24.694334>,  <38.048992, 35.776543, 24.285110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703381, 36.298805, 24.694334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.447895, 36.074913, 24.483149>,  <37.294601, 35.940578, 24.356438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.447895, 36.074913, 24.483149>,  <37.703381, 36.298805, 24.694334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447895, 36.074913, 24.483149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570794, -0.115457, 0.812935,
		-0.515979, 0.820595, -0.245743,
		-0.638718, -0.559726, -0.527964,
		37.256279, 35.906994, 24.324759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096725, 36.461967, 25.019455>,  <37.703381, 36.298805, 24.694334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096725, 36.461967, 25.019455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.996880, 36.151104, 24.788383>,  <36.936974, 35.964584, 24.649740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.996880, 36.151104, 24.788383>,  <37.096725, 36.461967, 25.019455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996880, 36.151104, 24.788383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579090, -0.358330, 0.732294,
		-0.776110, 0.517319, -0.360602,
		-0.249616, -0.777162, -0.577678,
		36.921993, 35.917953, 24.615080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424023, 36.439259, 24.959253>,  <37.096725, 36.461967, 25.019455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424023, 36.439259, 24.959253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.495789, 36.056717, 24.867001>,  <36.538849, 35.827190, 24.811649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.495789, 36.056717, 24.867001>,  <36.424023, 36.439259, 24.959253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495789, 36.056717, 24.867001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669952, -0.290450, 0.683230,
		-0.720399, 0.031931, -0.692825,
		0.179415, -0.956357, -0.230632,
		36.549614, 35.769810, 24.797812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872902, 36.083782, 25.191315>,  <36.424023, 36.439259, 24.959253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872902, 36.083782, 25.191315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.135883, 35.787369, 25.136732>,  <36.293671, 35.609520, 25.103983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.135883, 35.787369, 25.136732>,  <35.872902, 36.083782, 25.191315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135883, 35.787369, 25.136732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407145, -0.501756, 0.763200,
		-0.634027, -0.446211, -0.631590,
		0.657452, -0.741037, -0.136455,
		36.333118, 35.565056, 25.095797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.534218, 37.637661, 20.890841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.685150, 37.267372, 20.901182>,  <40.775707, 37.045200, 20.907387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.685150, 37.267372, 20.901182>,  <40.534218, 37.637661, 20.890841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685150, 37.267372, 20.901182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051648, 0.006840, 0.998642,
		-0.924638, -0.378152, -0.045230,
		0.377329, -0.925718, 0.025855,
		40.798347, 36.989658, 20.908939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130444, 37.310089, 21.373243>,  <40.534218, 37.637661, 20.890841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130444, 37.310089, 21.373243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456589, 37.079155, 21.355947>,  <40.652275, 36.940594, 21.345570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456589, 37.079155, 21.355947>,  <40.130444, 37.310089, 21.373243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456589, 37.079155, 21.355947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037379, -0.022033, 0.999058,
		-0.577741, -0.816212, 0.003616,
		0.815364, -0.577332, -0.043239,
		40.701199, 36.905956, 21.342976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035870, 36.878239, 21.876457>,  <40.130444, 37.310089, 21.373243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035870, 36.878239, 21.876457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.430428, 36.830189, 21.831570>,  <40.667164, 36.801357, 21.804638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.430428, 36.830189, 21.831570>,  <40.035870, 36.878239, 21.876457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430428, 36.830189, 21.831570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093641, -0.150460, 0.984171,
		-0.135088, -0.981293, -0.137167,
		0.986399, -0.120105, -0.112215,
		40.726345, 36.794151, 21.797905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151451, 36.236393, 22.219872>,  <40.035870, 36.878239, 21.876457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151451, 36.236393, 22.219872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.464962, 36.484680, 22.211866>,  <40.653069, 36.633652, 22.207064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.464962, 36.484680, 22.211866>,  <40.151451, 36.236393, 22.219872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464962, 36.484680, 22.211866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079491, -0.068306, 0.994492,
		0.615937, -0.781049, -0.102878,
		0.783774, 0.620722, -0.020014,
		40.700096, 36.670898, 22.205862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599148, 35.925602, 22.724195>,  <40.151451, 36.236393, 22.219872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599148, 35.925602, 22.724195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.718510, 36.304382, 22.676455>,  <40.790127, 36.531651, 22.647810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.718510, 36.304382, 22.676455>,  <40.599148, 35.925602, 22.724195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718510, 36.304382, 22.676455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136835, 0.081310, 0.987251,
		0.944579, -0.310935, -0.105312,
		0.298408, 0.946947, -0.119350,
		40.808033, 36.588467, 22.640650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166462, 35.948769, 23.226963>,  <40.599148, 35.925602, 22.724195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166462, 35.948769, 23.226963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.051167, 36.326920, 23.166050>,  <40.981991, 36.553810, 23.129501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.051167, 36.326920, 23.166050>,  <41.166462, 35.948769, 23.226963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051167, 36.326920, 23.166050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047633, 0.144681, 0.988331,
		0.956374, 0.292126, 0.003329,
		-0.288235, 0.945373, -0.152284,
		40.964695, 36.610531, 23.120365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510242, 36.322941, 23.800234>,  <41.166462, 35.948769, 23.226963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510242, 36.322941, 23.800234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.219967, 36.557220, 23.655830>,  <41.045799, 36.697788, 23.569189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.219967, 36.557220, 23.655830>,  <41.510242, 36.322941, 23.800234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219967, 36.557220, 23.655830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209364, 0.311838, 0.926782,
		0.655393, 0.748139, -0.103673,
		-0.725691, 0.585700, -0.361009,
		41.002258, 36.732929, 23.547527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622662, 36.998005, 24.009832>,  <41.510242, 36.322941, 23.800234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622662, 36.998005, 24.009832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.229614, 36.955460, 23.948977>,  <40.993786, 36.929932, 23.912462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.229614, 36.955460, 23.948977>,  <41.622662, 36.998005, 24.009832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229614, 36.955460, 23.948977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171379, 0.204787, 0.963686,
		-0.071349, 0.973010, -0.219456,
		-0.982618, -0.106368, -0.152142,
		40.934830, 36.923550, 23.903334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415951, 37.625847, 24.188007>,  <41.622662, 36.998005, 24.009832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415951, 37.625847, 24.188007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.105770, 37.373322, 24.192411>,  <40.919662, 37.221806, 24.195053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.105770, 37.373322, 24.192411>,  <41.415951, 37.625847, 24.188007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105770, 37.373322, 24.192411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195598, 0.256758, 0.946476,
		-0.600352, 0.731790, -0.322587,
		-0.775448, -0.631316, 0.011008,
		40.873135, 37.183926, 24.195713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827236, 37.984768, 24.430977>,  <41.415951, 37.625847, 24.188007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827236, 37.984768, 24.430977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.709774, 37.605316, 24.478090>,  <40.639297, 37.377647, 24.506357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.709774, 37.605316, 24.478090>,  <40.827236, 37.984768, 24.430977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709774, 37.605316, 24.478090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363276, 0.224719, 0.904175,
		-0.884192, 0.222731, -0.410604,
		-0.293658, -0.948627, 0.117782,
		40.621677, 37.320728, 24.513424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107124, 37.977863, 24.702793>,  <40.827236, 37.984768, 24.430977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107124, 37.977863, 24.702793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.223637, 37.604317, 24.785784>,  <40.293545, 37.380188, 24.835577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.223637, 37.604317, 24.785784>,  <40.107124, 37.977863, 24.702793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223637, 37.604317, 24.785784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187389, 0.156979, 0.969661,
		-0.938105, -0.321323, -0.129272,
		0.291281, -0.933868, 0.207476,
		40.311020, 37.324158, 24.848026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618248, 37.806534, 25.191767>,  <40.107124, 37.977863, 24.702793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618248, 37.806534, 25.191767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.920197, 37.547626, 25.234137>,  <40.101364, 37.392284, 25.259558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.920197, 37.547626, 25.234137>,  <39.618248, 37.806534, 25.191767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920197, 37.547626, 25.234137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182150, -0.051745, 0.981908,
		-0.630073, -0.760508, -0.156960,
		0.754871, -0.647264, 0.105923,
		40.146656, 37.353447, 25.265913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973164, 38.144520, 25.347727>,  <39.618248, 37.806534, 25.191767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973164, 38.144520, 25.347727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.827351, 38.454151, 25.554770>,  <38.739861, 38.639931, 25.678995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.827351, 38.454151, 25.554770>,  <38.973164, 38.144520, 25.347727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827351, 38.454151, 25.554770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203777, 0.608698, -0.766786,
		-0.908619, -0.174044, -0.379631,
		-0.364535, 0.774077, 0.517608,
		38.717991, 38.686375, 25.710052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635204, 38.574627, 24.823105>,  <38.973164, 38.144520, 25.347727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635204, 38.574627, 24.823105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689804, 38.800808, 25.148468>,  <38.722565, 38.936516, 25.343687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689804, 38.800808, 25.148468>,  <38.635204, 38.574627, 24.823105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689804, 38.800808, 25.148468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072137, 0.813241, -0.577439,
		-0.988011, 0.137496, 0.070215,
		0.136497, 0.565451, 0.813409,
		38.730755, 38.970444, 25.392490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117039, 39.055805, 24.795708>,  <38.635204, 38.574627, 24.823105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117039, 39.055805, 24.795708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.400105, 39.204903, 25.035801>,  <38.569942, 39.294361, 25.179857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.400105, 39.204903, 25.035801>,  <38.117039, 39.055805, 24.795708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400105, 39.204903, 25.035801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063055, 0.812817, -0.579096,
		-0.703732, 0.447652, 0.551696,
		0.707662, 0.372742, 0.600232,
		38.612404, 39.316727, 25.215870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989441, 39.712692, 24.694729>,  <38.117039, 39.055805, 24.795708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989441, 39.712692, 24.694729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.364948, 39.695530, 24.831474>,  <38.590252, 39.685234, 24.913521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.364948, 39.695530, 24.831474>,  <37.989441, 39.712692, 24.694729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364948, 39.695530, 24.831474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273621, 0.695826, -0.664047,
		-0.209385, 0.716928, 0.664960,
		0.938770, -0.042906, 0.341862,
		38.646580, 39.682659, 24.934032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245644, 40.405251, 24.785320>,  <37.989441, 39.712692, 24.694729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245644, 40.405251, 24.785320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.587627, 40.202553, 24.741041>,  <38.792816, 40.080933, 24.714474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.587627, 40.202553, 24.741041>,  <38.245644, 40.405251, 24.785320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587627, 40.202553, 24.741041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303070, 0.661235, -0.686234,
		0.420941, 0.553154, 0.718908,
		0.854960, -0.506744, -0.110696,
		38.844116, 40.050529, 24.707832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741173, 40.838902, 24.642780>,  <38.245644, 40.405251, 24.785320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741173, 40.838902, 24.642780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936668, 40.514786, 24.513433>,  <39.053967, 40.320316, 24.435825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936668, 40.514786, 24.513433>,  <38.741173, 40.838902, 24.642780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936668, 40.514786, 24.513433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307547, 0.506874, -0.805290,
		0.816425, 0.294126, 0.496931,
		0.488738, -0.810289, -0.323367,
		39.083290, 40.271698, 24.416424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169868, 41.125378, 24.166706>,  <38.741173, 40.838902, 24.642780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169868, 41.125378, 24.166706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.211788, 40.738953, 24.072269>,  <39.236938, 40.507099, 24.015608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.211788, 40.738953, 24.072269>,  <39.169868, 41.125378, 24.166706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211788, 40.738953, 24.072269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408916, 0.258262, -0.875265,
		0.906535, -0.004818, 0.422103,
		0.104796, -0.966063, -0.236093,
		39.243229, 40.449135, 24.001442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785622, 41.067135, 23.924290>,  <39.169868, 41.125378, 24.166706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785622, 41.067135, 23.924290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.579430, 40.772331, 23.749435>,  <39.455715, 40.595448, 23.644524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.579430, 40.772331, 23.749435>,  <39.785622, 41.067135, 23.924290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579430, 40.772331, 23.749435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424772, 0.223269, -0.877337,
		0.744208, -0.637936, 0.197971,
		-0.515484, -0.737014, -0.437136,
		39.424786, 40.551228, 23.618294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353443, 40.791824, 23.444366>,  <39.785622, 41.067135, 23.924290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353443, 40.791824, 23.444366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016815, 40.649399, 23.281895>,  <39.814838, 40.563942, 23.184412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016815, 40.649399, 23.281895>,  <40.353443, 40.791824, 23.444366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016815, 40.649399, 23.281895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441907, -0.021425, -0.896805,
		0.310621, -0.934214, 0.175379,
		-0.841566, -0.356068, -0.406181,
		39.764347, 40.542580, 23.160040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535427, 40.215332, 23.185707>,  <40.353443, 40.791824, 23.444366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535427, 40.215332, 23.185707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.208420, 40.319496, 22.980240>,  <40.012215, 40.381996, 22.856960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.208420, 40.319496, 22.980240>,  <40.535427, 40.215332, 23.185707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208420, 40.319496, 22.980240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388591, -0.408861, -0.825730,
		-0.425037, -0.874657, 0.233063,
		-0.817521, 0.260400, -0.513665,
		39.963165, 40.397617, 22.826139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383320, 39.611099, 22.792683>,  <40.535427, 40.215332, 23.185707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383320, 39.611099, 22.792683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.188980, 39.913414, 22.617079>,  <40.072376, 40.094803, 22.511717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.188980, 39.913414, 22.617079>,  <40.383320, 39.611099, 22.792683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188980, 39.913414, 22.617079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280691, -0.340752, -0.897274,
		-0.827745, -0.559166, -0.046590,
		-0.485850, 0.755792, -0.439009,
		40.043224, 40.140152, 22.485376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947998, 39.265079, 22.408606>,  <40.383320, 39.611099, 22.792683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947998, 39.265079, 22.408606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.986847, 39.637634, 22.268269>,  <40.010155, 39.861168, 22.184067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.986847, 39.637634, 22.268269>,  <39.947998, 39.265079, 22.408606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986847, 39.637634, 22.268269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229047, -0.363964, -0.902811,
		-0.968558, 0.007323, -0.248680,
		0.097122, 0.931384, -0.350843,
		40.015984, 39.917049, 22.163015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501785, 39.315365, 21.787172>,  <39.947998, 39.265079, 22.408606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501785, 39.315365, 21.787172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.765564, 39.614296, 21.754604>,  <39.923832, 39.793655, 21.735064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.765564, 39.614296, 21.754604>,  <39.501785, 39.315365, 21.787172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765564, 39.614296, 21.754604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142881, -0.230932, -0.962422,
		-0.738048, 0.623033, -0.259066,
		0.659447, 0.747329, -0.081419,
		39.963398, 39.838493, 21.730179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637394, 38.616547, 21.859022>,  <39.501785, 39.315365, 21.787172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637394, 38.616547, 21.859022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.267921, 38.691097, 21.725115>,  <39.046238, 38.735828, 21.644770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.267921, 38.691097, 21.725115>,  <39.637394, 38.616547, 21.859022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267921, 38.691097, 21.725115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376738, -0.600993, 0.704895,
		-0.069821, 0.777221, 0.625342,
		-0.923685, 0.186373, -0.334770,
		38.990814, 38.747009, 21.624683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153412, 38.864002, 22.375692>,  <39.637394, 38.616547, 21.859022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153412, 38.864002, 22.375692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.899014, 38.718651, 22.103380>,  <38.746372, 38.631439, 21.939993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.899014, 38.718651, 22.103380>,  <39.153412, 38.864002, 22.375692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899014, 38.718651, 22.103380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340816, -0.659228, 0.670271,
		-0.692351, 0.658312, 0.295423,
		-0.635998, -0.363378, -0.680781,
		38.708214, 38.609638, 21.899145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413593, 38.809425, 22.667124>,  <39.153412, 38.864002, 22.375692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413593, 38.809425, 22.667124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.435616, 38.554443, 22.359716>,  <38.448830, 38.401455, 22.175272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.435616, 38.554443, 22.359716>,  <38.413593, 38.809425, 22.667124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435616, 38.554443, 22.359716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573237, -0.650381, 0.498402,
		-0.817538, 0.413102, -0.401221,
		0.055056, -0.637457, -0.768517,
		38.452133, 38.363205, 22.129162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713966, 38.533787, 22.619425>,  <38.413593, 38.809425, 22.667124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713966, 38.533787, 22.619425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.962727, 38.275414, 22.442337>,  <38.111984, 38.120388, 22.336084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.962727, 38.275414, 22.442337>,  <37.713966, 38.533787, 22.619425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962727, 38.275414, 22.442337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346620, -0.734008, 0.584026,
		-0.702200, -0.209756, -0.680380,
		0.621908, -0.645936, -0.442715,
		38.149300, 38.081631, 22.309521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252773, 38.016022, 22.451807>,  <37.713966, 38.533787, 22.619425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252773, 38.016022, 22.451807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616550, 37.853024, 22.418678>,  <37.834816, 37.755226, 22.398800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616550, 37.853024, 22.418678>,  <37.252773, 38.016022, 22.451807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616550, 37.853024, 22.418678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342464, -0.846960, 0.406667,
		-0.235863, -0.341476, -0.909815,
		0.909443, -0.407497, -0.082823,
		37.889385, 37.730774, 22.393831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143127, 37.357414, 22.163858>,  <37.252773, 38.016022, 22.451807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143127, 37.357414, 22.163858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.510220, 37.323689, 22.319117>,  <37.730476, 37.303455, 22.412271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.510220, 37.323689, 22.319117>,  <37.143127, 37.357414, 22.163858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510220, 37.323689, 22.319117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217651, -0.924183, 0.313868,
		0.332255, -0.372528, -0.866504,
		0.917733, -0.084312, 0.388146,
		37.785538, 37.298393, 22.435560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321808, 36.717266, 21.912745>,  <37.143127, 37.357414, 22.163858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321808, 36.717266, 21.912745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.546684, 36.819534, 22.227341>,  <37.681610, 36.880898, 22.416100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.546684, 36.819534, 22.227341>,  <37.321808, 36.717266, 21.912745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546684, 36.819534, 22.227341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182348, -0.889284, 0.419433,
		0.806651, -0.379218, -0.453329,
		0.562195, 0.255672, 0.786492,
		37.715343, 36.896236, 22.463287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489059, 36.040661, 22.219690>,  <37.321808, 36.717266, 21.912745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489059, 36.040661, 22.219690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.524723, 36.313293, 22.510206>,  <37.546120, 36.476871, 22.684517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.524723, 36.313293, 22.510206>,  <37.489059, 36.040661, 22.219690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524723, 36.313293, 22.510206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183191, -0.705535, 0.684589,
		0.979026, -0.194086, 0.061956,
		0.089157, 0.681580, 0.726292,
		37.551472, 36.517769, 22.728094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034637, 35.714199, 22.122482>,  <37.489059, 36.040661, 22.219690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034637, 35.714199, 22.122482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031094, 35.316021, 22.084503>,  <38.028965, 35.077114, 22.061716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031094, 35.316021, 22.084503>,  <38.034637, 35.714199, 22.122482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031094, 35.316021, 22.084503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130705, 0.092985, -0.987051,
		0.991382, -0.021159, 0.129285,
		-0.008863, -0.995443, -0.094950,
		38.028435, 35.017387, 22.056019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564049, 35.571400, 21.685902>,  <38.034637, 35.714199, 22.122482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564049, 35.571400, 21.685902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.327587, 35.251789, 21.641897>,  <38.185711, 35.060024, 21.615496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.327587, 35.251789, 21.641897>,  <38.564049, 35.571400, 21.685902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327587, 35.251789, 21.641897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251661, -0.053142, -0.966355,
		0.766294, -0.598947, 0.232498,
		-0.591151, -0.799023, -0.110009,
		38.150242, 35.012081, 21.608894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866508, 35.083153, 21.162363>,  <38.564049, 35.571400, 21.685902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866508, 35.083153, 21.162363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.476860, 34.993370, 21.173063>,  <38.243073, 34.939503, 21.179483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.476860, 34.993370, 21.173063>,  <38.866508, 35.083153, 21.162363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476860, 34.993370, 21.173063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039733, -0.286517, -0.957251,
		0.222523, -0.931412, 0.288019,
		-0.974118, -0.224454, 0.026749,
		38.184624, 34.926033, 21.181087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772591, 34.739098, 20.582163>,  <38.866508, 35.083153, 21.162363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772591, 34.739098, 20.582163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.379562, 34.766026, 20.651463>,  <38.143745, 34.782185, 20.693043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.379562, 34.766026, 20.651463>,  <38.772591, 34.739098, 20.582163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379562, 34.766026, 20.651463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185012, -0.264831, -0.946380,
		-0.017830, -0.961942, 0.272672,
		-0.982575, 0.067321, 0.173249,
		38.084789, 34.786221, 20.703438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454926, 34.196953, 20.214411>,  <38.772591, 34.739098, 20.582163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454926, 34.196953, 20.214411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.189491, 34.493923, 20.251198>,  <38.030231, 34.672108, 20.273270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.189491, 34.493923, 20.251198>,  <38.454926, 34.196953, 20.214411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189491, 34.493923, 20.251198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173332, -0.032993, -0.984311,
		-0.727746, -0.669113, 0.150580,
		-0.663583, 0.742428, 0.091969,
		37.990417, 34.716652, 20.278788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936230, 34.022942, 19.781303>,  <38.454926, 34.196953, 20.214411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936230, 34.022942, 19.781303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.853054, 34.401997, 19.878248>,  <37.803150, 34.629429, 19.936415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.853054, 34.401997, 19.878248>,  <37.936230, 34.022942, 19.781303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853054, 34.401997, 19.878248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316197, 0.169352, -0.933456,
		-0.925624, -0.270738, 0.264425,
		-0.207941, 0.947640, 0.242363,
		37.790672, 34.686287, 19.950956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252743, 34.137142, 19.565989>,  <37.936230, 34.022942, 19.781303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252743, 34.137142, 19.565989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.396526, 34.509193, 19.596066>,  <37.482796, 34.732426, 19.614111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.396526, 34.509193, 19.596066>,  <37.252743, 34.137142, 19.565989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396526, 34.509193, 19.596066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248243, 0.172988, -0.953127,
		-0.899536, 0.323944, 0.293079,
		0.359459, 0.930127, 0.075192,
		37.504364, 34.788231, 19.618624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765415, 34.594250, 19.219212>,  <37.252743, 34.137142, 19.565989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765415, 34.594250, 19.219212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.107304, 34.801796, 19.225380>,  <37.312435, 34.926323, 19.229082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.107304, 34.801796, 19.225380>,  <36.765415, 34.594250, 19.219212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107304, 34.801796, 19.225380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179760, 0.323726, -0.928918,
		-0.486975, 0.791189, 0.369966,
		0.854717, 0.518865, 0.015422,
		37.363720, 34.957455, 19.230007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602974, 35.294804, 19.062895>,  <36.765415, 34.594250, 19.219212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602974, 35.294804, 19.062895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.990219, 35.239834, 18.979120>,  <37.222569, 35.206852, 18.928856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.990219, 35.239834, 18.979120>,  <36.602974, 35.294804, 19.062895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990219, 35.239834, 18.979120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113525, 0.504576, -0.855871,
		0.223297, 0.852359, 0.472887,
		0.968117, -0.137429, -0.209435,
		37.280655, 35.198605, 18.916290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.829323, 30.734140, 34.144291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124722, 31.001947, 34.112358>,  <37.301960, 31.162632, 34.093197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124722, 31.001947, 34.112358>,  <36.829323, 30.734140, 34.144291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124722, 31.001947, 34.112358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261649, 0.175435, -0.949085,
		-0.621423, 0.721782, 0.304736,
		0.738494, 0.669517, -0.079834,
		37.346272, 31.202803, 34.088409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635319, 31.460617, 33.819534>,  <36.829323, 30.734140, 34.144291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635319, 31.460617, 33.819534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.010887, 31.343294, 33.747543>,  <37.236229, 31.272900, 33.704350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.010887, 31.343294, 33.747543>,  <36.635319, 31.460617, 33.819534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010887, 31.343294, 33.747543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184515, 0.012352, -0.982752,
		0.290472, 0.955938, -0.042522,
		0.938925, -0.293307, -0.179973,
		37.292564, 31.255302, 33.693550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021980, 31.933800, 33.388210>,  <36.635319, 31.460617, 33.819534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021980, 31.933800, 33.388210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223083, 31.590506, 33.346889>,  <37.343746, 31.384529, 33.322098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223083, 31.590506, 33.346889>,  <37.021980, 31.933800, 33.388210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223083, 31.590506, 33.346889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192365, 0.005428, -0.981308,
		0.842753, 0.513230, -0.162365,
		0.502755, -0.858234, -0.103301,
		37.373909, 31.333035, 33.315899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390106, 32.013309, 32.861988>,  <37.021980, 31.933800, 33.388210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390106, 32.013309, 32.861988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.409348, 31.614456, 32.885319>,  <37.420895, 31.375143, 32.899315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.409348, 31.614456, 32.885319>,  <37.390106, 32.013309, 32.861988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409348, 31.614456, 32.885319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048234, -0.060642, -0.996993,
		0.997677, 0.045150, -0.051013,
		0.048108, -0.997138, 0.058324,
		37.423779, 31.315315, 32.902817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015026, 31.869783, 32.509647>,  <37.390106, 32.013309, 32.861988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015026, 31.869783, 32.509647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.790222, 31.539135, 32.521275>,  <37.655342, 31.340746, 32.528252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.790222, 31.539135, 32.521275>,  <38.015026, 31.869783, 32.509647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790222, 31.539135, 32.521275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131694, -0.124122, -0.983489,
		0.816582, -0.548898, 0.178619,
		-0.562005, -0.826623, 0.029069,
		37.621620, 31.291149, 32.529995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306248, 31.411100, 32.126221>,  <38.015026, 31.869783, 32.509647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306248, 31.411100, 32.126221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953587, 31.222387, 32.130390>,  <37.741989, 31.109159, 32.132893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953587, 31.222387, 32.130390>,  <38.306248, 31.411100, 32.126221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953587, 31.222387, 32.130390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090479, -0.190672, -0.977475,
		0.463144, -0.860851, 0.210793,
		-0.881652, -0.471784, 0.010420,
		37.689091, 31.080853, 32.133514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307949, 31.053011, 31.533810>,  <38.306248, 31.411100, 32.126221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307949, 31.053011, 31.533810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.916912, 31.000830, 31.599884>,  <37.682289, 30.969521, 31.639528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.916912, 31.000830, 31.599884>,  <38.307949, 31.053011, 31.533810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916912, 31.000830, 31.599884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150086, -0.118189, -0.981583,
		0.147575, -0.984385, 0.095962,
		-0.977597, -0.130455, 0.165184,
		37.623634, 30.961693, 31.649439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023312, 30.427723, 31.155109>,  <38.307949, 31.053011, 31.533810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023312, 30.427723, 31.155109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712612, 30.674538, 31.205589>,  <37.526192, 30.822626, 31.235878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712612, 30.674538, 31.205589>,  <38.023312, 30.427723, 31.155109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712612, 30.674538, 31.205589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288889, -0.171011, -0.941965,
		-0.559645, -0.768129, 0.311087,
		-0.776750, 0.617036, 0.126199,
		37.479588, 30.859648, 31.243448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459888, 30.154352, 30.757011>,  <38.023312, 30.427723, 31.155109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459888, 30.154352, 30.757011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403118, 30.545715, 30.817104>,  <37.369057, 30.780533, 30.853161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403118, 30.545715, 30.817104>,  <37.459888, 30.154352, 30.757011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403118, 30.545715, 30.817104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380457, 0.086195, -0.920773,
		-0.913843, -0.187840, 0.360010,
		-0.141927, 0.978410, 0.150234,
		37.360538, 30.839239, 30.862175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814983, 30.256699, 30.661682>,  <37.459888, 30.154352, 30.757011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814983, 30.256699, 30.661682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950020, 30.628983, 30.605387>,  <37.031044, 30.852354, 30.571609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950020, 30.628983, 30.605387>,  <36.814983, 30.256699, 30.661682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950020, 30.628983, 30.605387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500175, 0.050713, -0.864438,
		-0.797405, 0.362223, 0.482639,
		0.337595, 0.930711, -0.140736,
		37.051300, 30.908195, 30.563166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217358, 30.731649, 30.450026>,  <36.814983, 30.256699, 30.661682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217358, 30.731649, 30.450026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559761, 30.893513, 30.321342>,  <36.765205, 30.990631, 30.244133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559761, 30.893513, 30.321342>,  <36.217358, 30.731649, 30.450026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559761, 30.893513, 30.321342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384591, 0.082637, -0.919381,
		-0.345451, 0.910726, 0.226367,
		0.856010, 0.404660, -0.321710,
		36.816563, 31.014910, 30.224829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970947, 31.254105, 29.984453>,  <36.217358, 30.731649, 30.450026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970947, 31.254105, 29.984453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357544, 31.235147, 29.883543>,  <36.589504, 31.223774, 29.822996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357544, 31.235147, 29.883543>,  <35.970947, 31.254105, 29.984453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357544, 31.235147, 29.883543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235155, 0.230564, -0.944215,
		0.102914, 0.971902, 0.211694,
		0.966494, -0.047392, -0.252276,
		36.647491, 31.220930, 29.807859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850563, 31.903982, 30.325727>,  <35.970947, 31.254105, 29.984453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850563, 31.903982, 30.325727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676857, 32.264290, 30.327879>,  <35.572636, 32.480476, 30.329170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676857, 32.264290, 30.327879>,  <35.850563, 31.903982, 30.325727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676857, 32.264290, 30.327879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069025, -0.039231, 0.996843,
		0.898138, 0.432521, 0.079213,
		-0.434263, 0.900770, 0.005380,
		35.546577, 32.534519, 30.329493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197300, 32.290524, 30.826359>,  <35.850563, 31.903982, 30.325727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197300, 32.290524, 30.826359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.853016, 32.488701, 30.779526>,  <35.646446, 32.607609, 30.751425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.853016, 32.488701, 30.779526>,  <36.197300, 32.290524, 30.826359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853016, 32.488701, 30.779526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086139, 0.084941, 0.992656,
		0.501748, 0.864478, -0.030433,
		-0.860714, 0.495442, -0.117084,
		35.594803, 32.637333, 30.744400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339298, 32.709610, 31.332573>,  <36.197300, 32.290524, 30.826359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339298, 32.709610, 31.332573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950363, 32.754204, 31.250467>,  <35.717003, 32.780960, 31.201204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950363, 32.754204, 31.250467>,  <36.339298, 32.709610, 31.332573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950363, 32.754204, 31.250467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176477, 0.225083, 0.958224,
		0.153024, 0.967941, -0.199183,
		-0.972337, 0.111480, -0.205263,
		35.658661, 32.787647, 31.188889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046749, 33.143501, 31.855923>,  <36.339298, 32.709610, 31.332573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046749, 33.143501, 31.855923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686214, 33.014118, 31.740702>,  <35.469894, 32.936489, 31.671570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686214, 33.014118, 31.740702>,  <36.046749, 33.143501, 31.855923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686214, 33.014118, 31.740702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312455, 0.025015, 0.949603,
		-0.299947, 0.945913, -0.123612,
		-0.901335, -0.323453, -0.288052,
		35.415813, 32.917084, 31.654285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494816, 33.542625, 32.066975>,  <36.046749, 33.143501, 31.855923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494816, 33.542625, 32.066975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324444, 33.186157, 32.004482>,  <35.222221, 32.972279, 31.966986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324444, 33.186157, 32.004482>,  <35.494816, 33.542625, 32.066975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324444, 33.186157, 32.004482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269270, -0.039997, 0.962234,
		-0.863760, 0.451909, -0.222929,
		-0.425926, -0.891167, -0.156233,
		35.196667, 32.918808, 31.957613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827236, 33.648430, 32.250191>,  <35.494816, 33.542625, 32.066975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827236, 33.648430, 32.250191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892300, 33.254360, 32.272038>,  <34.931339, 33.017918, 32.285145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892300, 33.254360, 32.272038>,  <34.827236, 33.648430, 32.250191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892300, 33.254360, 32.272038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389207, -0.013197, 0.921056,
		-0.906675, -0.171075, -0.385582,
		0.162658, -0.985170, 0.054618,
		34.941097, 32.958809, 32.288422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354130, 33.414783, 32.669155>,  <34.827236, 33.648430, 32.250191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354130, 33.414783, 32.669155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608589, 33.107475, 32.697659>,  <34.761265, 32.923092, 32.714760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608589, 33.107475, 32.697659>,  <34.354130, 33.414783, 32.669155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608589, 33.107475, 32.697659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332966, -0.190042, 0.923589,
		-0.696025, -0.611264, -0.376703,
		0.636146, -0.768270, 0.071257,
		34.799435, 32.876995, 32.719036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989300, 32.896023, 32.911583>,  <34.354130, 33.414783, 32.669155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989300, 32.896023, 32.911583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351097, 32.737747, 32.975227>,  <34.568176, 32.642780, 33.013412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351097, 32.737747, 32.975227>,  <33.989300, 32.896023, 32.911583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351097, 32.737747, 32.975227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288377, -0.292596, 0.911716,
		-0.314215, -0.870522, -0.378762,
		0.904493, -0.395701, 0.159101,
		34.622448, 32.619041, 33.022961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971603, 32.182262, 33.113461>,  <33.989300, 32.896023, 32.911583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971603, 32.182262, 33.113461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282486, 32.373737, 33.276833>,  <34.469013, 32.488621, 33.374855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282486, 32.373737, 33.276833>,  <33.971603, 32.182262, 33.113461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282486, 32.373737, 33.276833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310719, -0.272465, 0.910613,
		0.547182, -0.834638, -0.063023,
		0.777204, 0.478689, 0.408426,
		34.515648, 32.517345, 33.399361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177776, 31.753796, 33.680569>,  <33.971603, 32.182262, 33.113461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177776, 31.753796, 33.680569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358452, 32.106041, 33.737839>,  <34.466858, 32.317387, 33.772202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358452, 32.106041, 33.737839>,  <34.177776, 31.753796, 33.680569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358452, 32.106041, 33.737839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298083, -0.002300, 0.954537,
		0.840908, -0.473830, 0.261457,
		0.451687, 0.880614, 0.143175,
		34.493958, 32.370224, 33.780792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381805, 31.681934, 34.370255>,  <34.177776, 31.753796, 33.680569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381805, 31.681934, 34.370255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425816, 32.074135, 34.305122>,  <34.452221, 32.309456, 34.266045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425816, 32.074135, 34.305122>,  <34.381805, 31.681934, 34.370255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425816, 32.074135, 34.305122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201448, 0.182420, 0.962363,
		0.973300, -0.073085, 0.217591,
		0.110027, 0.980501, -0.162826,
		34.458824, 32.368286, 34.256275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762096, 31.925219, 34.957836>,  <34.381805, 31.681934, 34.370255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762096, 31.925219, 34.957836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558327, 32.242516, 34.824417>,  <34.436066, 32.432896, 34.744366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558327, 32.242516, 34.824417>,  <34.762096, 31.925219, 34.957836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558327, 32.242516, 34.824417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174997, 0.284017, 0.942714,
		0.842536, 0.538608, -0.005868,
		-0.509420, 0.793244, -0.333549,
		34.405502, 32.480488, 34.724354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021530, 32.616398, 35.336216>,  <34.762096, 31.925219, 34.957836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021530, 32.616398, 35.336216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.660809, 32.692909, 35.181217>,  <34.444374, 32.738815, 35.088219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.660809, 32.692909, 35.181217>,  <35.021530, 32.616398, 35.336216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660809, 32.692909, 35.181217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282315, 0.418121, 0.863407,
		0.327170, 0.888025, -0.323065,
		-0.901808, 0.191275, -0.387500,
		34.390266, 32.750290, 35.064968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927471, 33.270420, 35.470226>,  <35.021530, 32.616398, 35.336216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927471, 33.270420, 35.470226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558750, 33.131435, 35.401470>,  <34.337517, 33.048046, 35.360218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558750, 33.131435, 35.401470>,  <34.927471, 33.270420, 35.470226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558750, 33.131435, 35.401470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301101, 0.362483, 0.882011,
		-0.244154, 0.864800, -0.438759,
		-0.921806, -0.347457, -0.171891,
		34.282207, 33.027199, 35.349903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557911, 33.872993, 35.552322>,  <34.927471, 33.270420, 35.470226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557911, 33.872993, 35.552322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334389, 33.545227, 35.603367>,  <34.200275, 33.348568, 35.633995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334389, 33.545227, 35.603367>,  <34.557911, 33.872993, 35.552322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334389, 33.545227, 35.603367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389160, 0.394992, 0.832187,
		-0.732317, 0.415371, -0.539610,
		-0.558808, -0.819420, 0.127613,
		34.166748, 33.299400, 35.641651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416332, 34.637062, 35.320618>,  <34.557911, 33.872993, 35.552322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416332, 34.637062, 35.320618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167870, 34.653423, 35.007572>,  <34.018791, 34.663242, 34.819744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167870, 34.653423, 35.007572>,  <34.416332, 34.637062, 35.320618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167870, 34.653423, 35.007572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776514, -0.102659, -0.621680,
		-0.105778, -0.993875, 0.031998,
		-0.621157, 0.040913, -0.782617,
		33.981522, 34.665695, 34.772789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648708, 35.350487, 35.032822>,  <34.416332, 34.637062, 35.320618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648708, 35.350487, 35.032822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828358, 35.046482, 34.844917>,  <34.936146, 34.864079, 34.732174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828358, 35.046482, 34.844917>,  <34.648708, 35.350487, 35.032822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828358, 35.046482, 34.844917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120695, 0.572562, -0.810928,
		0.885282, 0.307506, 0.348878,
		0.449120, -0.760008, -0.469765,
		34.963093, 34.818481, 34.703987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121799, 35.686077, 34.706680>,  <34.648708, 35.350487, 35.032822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121799, 35.686077, 34.706680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056274, 35.346508, 34.505680>,  <35.016960, 35.142769, 34.385082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056274, 35.346508, 34.505680>,  <35.121799, 35.686077, 34.706680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056274, 35.346508, 34.505680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188884, 0.472962, -0.860598,
		0.968240, -0.235887, 0.082872,
		-0.163809, -0.848919, -0.502496,
		35.007133, 35.091831, 34.354931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635246, 35.698990, 34.167244>,  <35.121799, 35.686077, 34.706680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635246, 35.698990, 34.167244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404228, 35.408192, 34.018692>,  <35.265617, 35.233715, 33.929562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404228, 35.408192, 34.018692>,  <35.635246, 35.698990, 34.167244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404228, 35.408192, 34.018692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023833, 0.469746, -0.882480,
		0.816011, -0.500821, -0.288626,
		-0.577545, -0.726992, -0.371382,
		35.230965, 35.190094, 33.907276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097973, 35.384804, 33.669201>,  <35.635246, 35.698990, 34.167244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097973, 35.384804, 33.669201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722885, 35.278263, 33.579998>,  <35.497833, 35.214340, 33.526474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722885, 35.278263, 33.579998>,  <36.097973, 35.384804, 33.669201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722885, 35.278263, 33.579998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175836, 0.189730, -0.965963,
		0.299598, -0.945018, -0.131080,
		-0.937722, -0.266352, -0.223010,
		35.441566, 35.198357, 33.513096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085808, 34.788857, 33.238010>,  <36.097973, 35.384804, 33.669201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085808, 34.788857, 33.238010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.743279, 34.984032, 33.170326>,  <35.537762, 35.101135, 33.129715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.743279, 34.984032, 33.170326>,  <36.085808, 34.788857, 33.238010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743279, 34.984032, 33.170326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344364, 0.295310, -0.891182,
		-0.384870, -0.821408, -0.420907,
		-0.856323, 0.487935, -0.169208,
		35.486382, 35.130413, 33.119564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015274, 34.626003, 32.527050>,  <36.085808, 34.788857, 33.238010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015274, 34.626003, 32.527050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751957, 34.920307, 32.590687>,  <35.593967, 35.096889, 32.628868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751957, 34.920307, 32.590687>,  <36.015274, 34.626003, 32.527050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751957, 34.920307, 32.590687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267139, 0.425927, -0.864420,
		-0.703766, -0.526543, -0.476935,
		-0.658294, 0.735757, 0.159093,
		35.554470, 35.141033, 32.638416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606369, 34.723621, 31.939949>,  <36.015274, 34.626003, 32.527050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606369, 34.723621, 31.939949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579723, 35.077435, 32.124626>,  <35.563736, 35.289722, 32.235432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579723, 35.077435, 32.124626>,  <35.606369, 34.723621, 31.939949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579723, 35.077435, 32.124626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194548, 0.465353, -0.863480,
		-0.978628, 0.032304, -0.203083,
		-0.066612, 0.884535, 0.461693,
		35.559738, 35.342796, 32.263134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226097, 35.233967, 31.482712>,  <35.606369, 34.723621, 31.939949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226097, 35.233967, 31.482712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438297, 35.448200, 31.745533>,  <35.565617, 35.576740, 31.903225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438297, 35.448200, 31.745533>,  <35.226097, 35.233967, 31.482712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438297, 35.448200, 31.745533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344000, 0.572399, -0.744327,
		-0.774747, 0.620892, 0.119416,
		0.530500, 0.535586, 0.657052,
		35.597446, 35.608875, 31.942648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022240, 35.999569, 31.306391>,  <35.226097, 35.233967, 31.482712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022240, 35.999569, 31.306391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377666, 35.973110, 31.487970>,  <35.590923, 35.957237, 31.596918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377666, 35.973110, 31.487970>,  <35.022240, 35.999569, 31.306391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377666, 35.973110, 31.487970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440436, 0.399774, -0.803864,
		-0.128308, 0.914224, 0.384358,
		0.888568, -0.066143, 0.453951,
		35.644238, 35.953266, 31.624155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330616, 36.569687, 31.175661>,  <35.022240, 35.999569, 31.306391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330616, 36.569687, 31.175661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664772, 36.388256, 31.299849>,  <35.865265, 36.279400, 31.374361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664772, 36.388256, 31.299849>,  <35.330616, 36.569687, 31.175661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664772, 36.388256, 31.299849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521038, 0.473594, -0.710090,
		0.175043, 0.754969, 0.631966,
		0.835392, -0.453575, 0.310468,
		35.915390, 36.252182, 31.392988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882183, 37.144970, 31.229176>,  <35.330616, 36.569687, 31.175661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882183, 37.144970, 31.229176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055840, 36.790264, 31.165714>,  <36.160034, 36.577442, 31.127638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055840, 36.790264, 31.165714>,  <35.882183, 37.144970, 31.229176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055840, 36.790264, 31.165714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493187, 0.381340, -0.781887,
		0.753850, 0.261203, 0.602895,
		0.434139, -0.886766, -0.158651,
		36.186081, 36.524235, 31.118118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573528, 37.314735, 31.024855>,  <35.882183, 37.144970, 31.229176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573528, 37.314735, 31.024855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523624, 36.930981, 30.923649>,  <36.493683, 36.700729, 30.862926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523624, 36.930981, 30.923649>,  <36.573528, 37.314735, 31.024855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523624, 36.930981, 30.923649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575516, 0.137746, -0.806106,
		0.808217, -0.246185, 0.534956,
		-0.124763, -0.959385, -0.253012,
		36.486195, 36.643166, 30.847746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113312, 37.202908, 30.647749>,  <36.573528, 37.314735, 31.024855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113312, 37.202908, 30.647749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889252, 36.891842, 30.533571>,  <36.754814, 36.705204, 30.465065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889252, 36.891842, 30.533571>,  <37.113312, 37.202908, 30.647749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889252, 36.891842, 30.533571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479982, -0.023842, -0.876954,
		0.675167, -0.628233, 0.386618,
		-0.560150, -0.777660, -0.285443,
		36.721207, 36.658543, 30.447939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567307, 36.736134, 30.465916>,  <37.113312, 37.202908, 30.647749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567307, 36.736134, 30.465916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237106, 36.671738, 30.249535>,  <37.038986, 36.633099, 30.119705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237106, 36.671738, 30.249535>,  <37.567307, 36.736134, 30.465916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237106, 36.671738, 30.249535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534875, 0.082794, -0.840865,
		0.180163, -0.983476, 0.017766,
		-0.825500, -0.160995, -0.540953,
		36.989456, 36.623440, 30.087248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812138, 36.357964, 29.909843>,  <37.567307, 36.736134, 30.465916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812138, 36.357964, 29.909843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454220, 36.482830, 29.782164>,  <37.239468, 36.557751, 29.705555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454220, 36.482830, 29.782164>,  <37.812138, 36.357964, 29.909843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454220, 36.482830, 29.782164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403543, 0.259591, -0.877363,
		-0.191023, -0.913873, -0.358254,
		-0.894798, 0.312167, -0.319200,
		37.185780, 36.576481, 29.686403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712406, 36.037720, 29.198622>,  <37.812138, 36.357964, 29.909843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712406, 36.037720, 29.198622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.481789, 36.361713, 29.241568>,  <37.343418, 36.556110, 29.267336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.481789, 36.361713, 29.241568>,  <37.712406, 36.037720, 29.198622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481789, 36.361713, 29.241568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249330, 0.299545, -0.920928,
		-0.778094, -0.504188, -0.374653,
		-0.576546, 0.809980, 0.107365,
		37.308826, 36.604706, 29.273777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208027, 36.020706, 28.554508>,  <37.712406, 36.037720, 29.198622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208027, 36.020706, 28.554508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202629, 36.400906, 28.678682>,  <37.199390, 36.629025, 28.753187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202629, 36.400906, 28.678682>,  <37.208027, 36.020706, 28.554508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202629, 36.400906, 28.678682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046981, 0.310724, -0.949339,
		-0.998805, 0.001770, -0.048850,
		-0.013498, 0.950499, 0.310435,
		37.198578, 36.686054, 28.771812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707390, 36.392811, 28.116699>,  <37.208027, 36.020706, 28.554508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707390, 36.392811, 28.116699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927742, 36.688251, 28.272135>,  <37.059952, 36.865517, 28.365396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927742, 36.688251, 28.272135>,  <36.707390, 36.392811, 28.116699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927742, 36.688251, 28.272135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212260, 0.326303, -0.921126,
		-0.807141, 0.589911, 0.022978,
		0.550879, 0.738601, 0.388587,
		37.093006, 36.909832, 28.388710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605194, 36.902756, 27.653643>,  <36.707390, 36.392811, 28.116699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605194, 36.902756, 27.653643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907940, 37.035683, 27.878756>,  <37.089588, 37.115440, 28.013823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907940, 37.035683, 27.878756>,  <36.605194, 36.902756, 27.653643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907940, 37.035683, 27.878756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347220, 0.525064, -0.777011,
		-0.553710, 0.783501, 0.282014,
		0.756864, 0.332318, 0.562780,
		37.134998, 37.135380, 28.047590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606960, 37.646133, 27.690044>,  <36.605194, 36.902756, 27.653643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606960, 37.646133, 27.690044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.985867, 37.544888, 27.768650>,  <37.213211, 37.484138, 27.815813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.985867, 37.544888, 27.768650>,  <36.606960, 37.646133, 27.690044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985867, 37.544888, 27.768650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317699, 0.661698, -0.679134,
		0.041867, 0.705753, 0.707219,
		0.947267, -0.253117, 0.196514,
		37.270046, 37.468952, 27.827604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058418, 38.321541, 27.746613>,  <36.606960, 37.646133, 27.690044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058418, 38.321541, 27.746613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.298359, 38.009090, 27.677309>,  <37.442326, 37.821621, 27.635727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.298359, 38.009090, 27.677309>,  <37.058418, 38.321541, 27.746613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298359, 38.009090, 27.677309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530970, 0.550622, -0.644118,
		0.598537, 0.294381, 0.745046,
		0.599854, -0.781125, -0.173260,
		37.478313, 37.774754, 27.625332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640038, 38.600063, 27.621819>,  <37.058418, 38.321541, 27.746613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640038, 38.600063, 27.621819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769852, 38.245747, 27.489122>,  <37.847740, 38.033157, 27.409504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769852, 38.245747, 27.489122>,  <37.640038, 38.600063, 27.621819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769852, 38.245747, 27.489122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511996, 0.459411, -0.725811,
		0.795323, 0.065700, 0.602615,
		0.324534, -0.885791, -0.331742,
		37.867210, 37.980011, 27.389599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296787, 38.620052, 27.578594>,  <37.640038, 38.600063, 27.621819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296787, 38.620052, 27.578594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182072, 38.340305, 27.316713>,  <38.113243, 38.172459, 27.159584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182072, 38.340305, 27.316713>,  <38.296787, 38.620052, 27.578594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182072, 38.340305, 27.316713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409856, 0.528135, -0.743701,
		0.865893, -0.481619, 0.135178,
		-0.286788, -0.699369, -0.654703,
		38.096035, 38.130493, 27.120302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904396, 38.462555, 27.280581>,  <38.296787, 38.620052, 27.578594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904396, 38.462555, 27.280581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.631321, 38.312397, 27.029816>,  <38.467476, 38.222301, 26.879356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.631321, 38.312397, 27.029816>,  <38.904396, 38.462555, 27.280581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631321, 38.312397, 27.029816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429022, 0.488587, -0.759752,
		0.591509, -0.787630, -0.172498,
		-0.682684, -0.375395, -0.626914,
		38.426517, 38.199780, 26.841742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265709, 38.268864, 26.717739>,  <38.904396, 38.462555, 27.280581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265709, 38.268864, 26.717739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888851, 38.313805, 26.591415>,  <38.662735, 38.340771, 26.515621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888851, 38.313805, 26.591415>,  <39.265709, 38.268864, 26.717739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888851, 38.313805, 26.591415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328402, 0.498167, -0.802485,
		0.067159, -0.859771, -0.506245,
		-0.942148, 0.112357, -0.315807,
		38.606209, 38.347511, 26.496674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180447, 37.967213, 26.131426>,  <39.265709, 38.268864, 26.717739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180447, 37.967213, 26.131426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.898392, 38.250614, 26.142744>,  <38.729160, 38.420654, 26.149536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.898392, 38.250614, 26.142744>,  <39.180447, 37.967213, 26.131426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898392, 38.250614, 26.142744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450611, 0.478567, -0.753607,
		-0.547478, -0.518645, -0.656715,
		-0.705136, 0.708507, 0.028298,
		38.686852, 38.463165, 26.151234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358181, 37.303402, 25.643812>,  <39.180447, 37.967213, 26.131426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358181, 37.303402, 25.643812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.752613, 37.248184, 25.680880>,  <39.989273, 37.215054, 25.703119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.752613, 37.248184, 25.680880>,  <39.358181, 37.303402, 25.643812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752613, 37.248184, 25.680880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110109, -0.124579, 0.986081,
		-0.124579, -0.982560, -0.138045,
		-0.986081, 0.138045, -0.092669,
		40.048439, 37.206772, 25.708681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438702, 36.699211, 26.066099>,  <39.358181, 37.303402, 25.643812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438702, 36.699211, 26.066099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.773788, 36.915794, 26.094538>,  <39.974842, 37.045742, 26.111601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.773788, 36.915794, 26.094538>,  <39.438702, 36.699211, 26.066099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773788, 36.915794, 26.094538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007248, -0.119154, 0.992849,
		0.546055, -0.832243, -0.095893,
		0.837718, 0.541455, 0.071097,
		40.025105, 37.078232, 26.115868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794384, 36.318718, 26.623190>,  <39.438702, 36.699211, 26.066099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794384, 36.318718, 26.623190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.003345, 36.656662, 26.577055>,  <40.128723, 36.859428, 26.549374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.003345, 36.656662, 26.577055>,  <39.794384, 36.318718, 26.623190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003345, 36.656662, 26.577055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308901, -0.061435, 0.949108,
		0.794777, -0.531449, -0.293072,
		0.522408, 0.844859, -0.115338,
		40.160069, 36.910118, 26.542454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629814, 36.197685, 26.810953>,  <39.794384, 36.318718, 26.623190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629814, 36.197685, 26.810953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.497086, 36.572823, 26.851637>,  <40.417450, 36.797905, 26.876047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.497086, 36.572823, 26.851637>,  <40.629814, 36.197685, 26.810953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497086, 36.572823, 26.851637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225569, -0.025811, 0.973885,
		0.915977, 0.346097, -0.202984,
		-0.331819, 0.937844, 0.101711,
		40.397541, 36.854176, 26.882151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135040, 36.478088, 27.292519>,  <40.629814, 36.197685, 26.810953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135040, 36.478088, 27.292519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.811108, 36.712746, 27.294527>,  <40.616749, 36.853539, 27.295732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.811108, 36.712746, 27.294527>,  <41.135040, 36.478088, 27.292519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811108, 36.712746, 27.294527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092689, 0.119496, 0.988499,
		0.579292, 0.800984, -0.151147,
		-0.809833, 0.586639, 0.005019,
		40.568157, 36.888737, 27.296032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
