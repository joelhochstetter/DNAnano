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
	<24.309017, 35.420033, 35.430092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386431, 35.200214, 35.104996>,  <24.432878, 35.068325, 34.909939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386431, 35.200214, 35.104996>,  <24.309017, 35.420033, 35.430092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386431, 35.200214, 35.104996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693050, 0.662928, -0.283212,
		0.694425, -0.508457, 0.509162,
		0.193536, -0.549544, -0.812739,
		24.444492, 35.035351, 34.861176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059799, 35.450916, 35.350945>,  <24.309017, 35.420033, 35.430092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.059799, 35.450916, 35.350945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916843, 35.347370, 34.992001>,  <24.831070, 35.285244, 34.776634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916843, 35.347370, 34.992001>,  <25.059799, 35.450916, 35.350945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.916843, 35.347370, 34.992001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512943, 0.748536, -0.420219,
		0.780489, -0.610478, -0.134736,
		-0.357390, -0.258864, -0.897363,
		24.809626, 35.269711, 34.722790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594210, 35.297268, 34.894516>,  <25.059799, 35.450916, 35.350945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594210, 35.297268, 34.894516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281166, 35.410564, 34.672779>,  <25.093340, 35.478542, 34.539738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281166, 35.410564, 34.672779>,  <25.594210, 35.297268, 34.894516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281166, 35.410564, 34.672779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558616, 0.712514, -0.424584,
		0.274719, -0.641949, -0.715843,
		-0.782610, 0.283240, -0.554344,
		25.046383, 35.495537, 34.506477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180006, 35.619347, 34.759644>,  <25.594210, 35.297268, 34.894516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180006, 35.619347, 34.759644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199898, 35.926834, 34.504585>,  <26.211832, 36.111328, 34.351551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199898, 35.926834, 34.504585>,  <26.180006, 35.619347, 34.759644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199898, 35.926834, 34.504585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510217, -0.568400, -0.645446,
		-0.858607, -0.293243, -0.420479,
		0.049728, 0.768720, -0.637649,
		26.214817, 36.157452, 34.313290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911013, 35.505836, 34.074825>,  <26.180006, 35.619347, 34.759644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911013, 35.505836, 34.074825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231834, 35.744076, 34.092590>,  <26.424328, 35.887020, 34.103249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231834, 35.744076, 34.092590>,  <25.911013, 35.505836, 34.074825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231834, 35.744076, 34.092590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547617, -0.703691, -0.452697,
		-0.238370, 0.387411, -0.890558,
		0.802057, 0.595594, 0.044415,
		26.472452, 35.922752, 34.105915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156500, 35.946495, 33.419521>,  <25.911013, 35.505836, 34.074825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156500, 35.946495, 33.419521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399910, 35.743847, 33.663826>,  <26.545956, 35.622257, 33.810410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399910, 35.743847, 33.663826>,  <26.156500, 35.946495, 33.419521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399910, 35.743847, 33.663826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125383, -0.698622, -0.704419,
		0.783568, 0.505235, -0.361606,
		0.608523, -0.506621, 0.610766,
		26.582466, 35.591862, 33.847057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757515, 35.766251, 33.151402>,  <26.156500, 35.946495, 33.419521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757515, 35.766251, 33.151402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742605, 35.471367, 33.421257>,  <26.733660, 35.294437, 33.583172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742605, 35.471367, 33.421257>,  <26.757515, 35.766251, 33.151402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742605, 35.471367, 33.421257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366011, -0.638266, -0.677239,
		0.929864, 0.221682, 0.293616,
		-0.037273, -0.737206, 0.674639,
		26.731422, 35.250206, 33.623650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411234, 35.600796, 33.303921>,  <26.757515, 35.766251, 33.151402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411234, 35.600796, 33.303921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160572, 35.289303, 33.315819>,  <27.010176, 35.102409, 33.322956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160572, 35.289303, 33.315819>,  <27.411234, 35.600796, 33.303921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160572, 35.289303, 33.315819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633956, -0.531609, -0.561687,
		0.453215, -0.333126, 0.826815,
		-0.626655, -0.778729, 0.029746,
		26.972576, 35.055683, 33.324741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920961, 35.105934, 33.398022>,  <27.411234, 35.600796, 33.303921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920961, 35.105934, 33.398022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592524, 34.906712, 33.286491>,  <27.395462, 34.787178, 33.219574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592524, 34.906712, 33.286491>,  <27.920961, 35.105934, 33.398022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592524, 34.906712, 33.286491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562111, -0.620672, -0.546623,
		0.099191, -0.605560, 0.789594,
		-0.821092, -0.498059, -0.278827,
		27.346195, 34.757294, 33.202843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085739, 34.395805, 33.514252>,  <27.920961, 35.105934, 33.398022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085739, 34.395805, 33.514252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800543, 34.431389, 33.236050>,  <27.629425, 34.452740, 33.069126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800543, 34.431389, 33.236050>,  <28.085739, 34.395805, 33.514252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800543, 34.431389, 33.236050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510530, -0.614065, -0.601899,
		-0.480629, -0.784226, 0.392408,
		-0.712990, 0.088954, -0.695509,
		27.586645, 34.458076, 33.027397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103233, 33.769569, 33.245304>,  <28.085739, 34.395805, 33.514252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103233, 33.769569, 33.245304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911264, 33.974220, 32.960232>,  <27.796083, 34.097012, 32.789188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911264, 33.974220, 32.960232>,  <28.103233, 33.769569, 33.245304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911264, 33.974220, 32.960232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411245, -0.586376, -0.697883,
		-0.774954, -0.628015, 0.071010,
		-0.479920, 0.511625, -0.712683,
		27.767288, 34.127708, 32.746426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956488, 33.252342, 32.590256>,  <28.103233, 33.769569, 33.245304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956488, 33.252342, 32.590256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955318, 33.637814, 32.483433>,  <27.954617, 33.869095, 32.419338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955318, 33.637814, 32.483433>,  <27.956488, 33.252342, 32.590256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955318, 33.637814, 32.483433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456724, -0.236292, -0.857654,
		-0.889604, -0.124478, -0.439443,
		-0.002922, 0.963676, -0.267058,
		27.954441, 33.926918, 32.403316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562407, 33.346249, 31.937635>,  <27.956488, 33.252342, 32.590256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562407, 33.346249, 31.937635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858210, 33.606495, 32.006721>,  <28.035690, 33.762642, 32.048172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858210, 33.606495, 32.006721>,  <27.562407, 33.346249, 31.937635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858210, 33.606495, 32.006721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455073, -0.294129, -0.840474,
		-0.496024, 0.700134, -0.513588,
		0.739506, 0.650615, 0.172717,
		28.080061, 33.801678, 32.058537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848448, 33.927383, 31.443205>,  <27.562407, 33.346249, 31.937635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848448, 33.927383, 31.443205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150972, 33.805634, 31.674843>,  <28.332487, 33.732582, 31.813826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150972, 33.805634, 31.674843>,  <27.848448, 33.927383, 31.443205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150972, 33.805634, 31.674843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505868, -0.289212, -0.812683,
		0.414841, 0.907586, -0.064760,
		0.756309, -0.304374, 0.579096,
		28.377865, 33.714321, 31.848572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883373, 34.564686, 31.141546>,  <27.848448, 33.927383, 31.443205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883373, 34.564686, 31.141546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228945, 34.584167, 31.342047>,  <28.436289, 34.595856, 31.462347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228945, 34.584167, 31.342047>,  <27.883373, 34.564686, 31.141546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228945, 34.584167, 31.342047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480375, 0.378537, 0.791170,
		-0.151211, -0.924304, 0.350425,
		0.863930, 0.048702, 0.501251,
		28.488125, 34.598778, 31.492422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936073, 35.014248, 31.705439>,  <27.883373, 34.564686, 31.141546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936073, 35.014248, 31.705439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862391, 34.669395, 31.894245>,  <27.818180, 34.462482, 32.007530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862391, 34.669395, 31.894245>,  <27.936073, 35.014248, 31.705439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862391, 34.669395, 31.894245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681347, 0.458129, 0.570863,
		-0.708402, -0.216448, -0.671801,
		-0.184209, -0.862130, 0.472016,
		27.807127, 34.410755, 32.035851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168690, 34.722183, 31.739435>,  <27.936073, 35.014248, 31.705439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168690, 34.722183, 31.739435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346460, 34.550823, 32.054131>,  <27.453123, 34.448006, 32.242947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346460, 34.550823, 32.054131>,  <27.168690, 34.722183, 31.739435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346460, 34.550823, 32.054131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696069, 0.387684, 0.604309,
		-0.563892, -0.816196, -0.125899,
		0.444425, -0.428399, 0.786740,
		27.479788, 34.422302, 32.290154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622883, 34.394341, 32.165558>,  <27.168690, 34.722183, 31.739435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622883, 34.394341, 32.165558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935564, 34.448994, 32.408958>,  <27.123173, 34.481785, 32.554996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935564, 34.448994, 32.408958>,  <26.622883, 34.394341, 32.165558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935564, 34.448994, 32.408958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617114, 0.310358, 0.723082,
		-0.090053, -0.940749, 0.326928,
		0.781704, 0.136636, 0.608498,
		27.170074, 34.489986, 32.591507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564058, 33.899521, 32.701481>,  <26.622883, 34.394341, 32.165558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564058, 33.899521, 32.701481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779911, 34.208282, 32.835922>,  <26.909424, 34.393539, 32.916588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779911, 34.208282, 32.835922>,  <26.564058, 33.899521, 32.701481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779911, 34.208282, 32.835922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682106, 0.166849, 0.711964,
		0.493486, -0.613459, 0.616555,
		0.539632, 0.771900, 0.336106,
		26.941801, 34.439854, 32.936752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210815, 34.015930, 33.405987>,  <26.564058, 33.899521, 32.701481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210815, 34.015930, 33.405987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460478, 34.326450, 33.370689>,  <26.610275, 34.512764, 33.349510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460478, 34.326450, 33.370689>,  <26.210815, 34.015930, 33.405987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460478, 34.326450, 33.370689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556049, 0.520708, 0.647821,
		0.548853, -0.355274, 0.756664,
		0.624155, 0.776302, -0.088243,
		26.647724, 34.559341, 33.344219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667816, 34.122581, 34.084641>,  <26.210815, 34.015930, 33.405987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667816, 34.122581, 34.084641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588770, 34.477970, 33.918961>,  <26.541342, 34.691204, 33.819553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588770, 34.477970, 33.918961>,  <26.667816, 34.122581, 34.084641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588770, 34.477970, 33.918961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603299, 0.222809, 0.765759,
		0.772644, 0.401215, 0.491984,
		-0.197615, 0.888472, -0.414204,
		26.529486, 34.744511, 33.794701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750786, 33.477970, 33.886898>,  <26.667816, 34.122581, 34.084641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750786, 33.477970, 33.886898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806049, 33.332405, 33.518444>,  <26.839207, 33.245068, 33.297371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806049, 33.332405, 33.518444>,  <26.750786, 33.477970, 33.886898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806049, 33.332405, 33.518444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549574, -0.745559, 0.376976,
		-0.823943, -0.558311, 0.096992,
		0.138157, -0.363911, -0.921131,
		26.847496, 33.223232, 33.242104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454308, 32.726360, 33.649284>,  <26.750786, 33.477970, 33.886898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454308, 32.726360, 33.649284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801912, 32.811749, 33.470734>,  <27.010475, 32.862980, 33.363605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801912, 32.811749, 33.470734>,  <26.454308, 32.726360, 33.649284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801912, 32.811749, 33.470734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368487, -0.881271, 0.295938,
		-0.330202, -0.421657, -0.844495,
		0.869013, 0.213466, -0.446373,
		27.062616, 32.875790, 33.336823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535076, 32.249516, 33.228230>,  <26.454308, 32.726360, 33.649284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535076, 32.249516, 33.228230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913980, 32.361889, 33.289902>,  <27.141323, 32.429314, 33.326904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913980, 32.361889, 33.289902>,  <26.535076, 32.249516, 33.228230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913980, 32.361889, 33.289902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253584, -0.951288, 0.175346,
		0.195935, -0.126999, -0.972358,
		0.947262, 0.280931, 0.154185,
		27.198158, 32.446167, 33.336159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967894, 31.830000, 32.761147>,  <26.535076, 32.249516, 33.228230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967894, 31.830000, 32.761147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165758, 31.936491, 33.092068>,  <27.284477, 32.000385, 33.290619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165758, 31.936491, 33.092068>,  <26.967894, 31.830000, 32.761147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165758, 31.936491, 33.092068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185882, -0.962306, 0.198530,
		0.848974, 0.055575, -0.525504,
		0.494663, 0.266229, 0.827303,
		27.314157, 32.016361, 33.340260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649765, 31.654432, 32.670517>,  <26.967894, 31.830000, 32.761147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649765, 31.654432, 32.670517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559137, 31.659327, 33.060085>,  <27.504761, 31.662264, 33.293827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559137, 31.659327, 33.060085>,  <27.649765, 31.654432, 32.670517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559137, 31.659327, 33.060085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154153, -0.986868, 0.048260,
		0.961719, 0.161067, 0.221705,
		-0.226566, 0.012236, 0.973919,
		27.491167, 31.662998, 33.352261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204565, 31.291185, 33.138199>,  <27.649765, 31.654432, 32.670517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204565, 31.291185, 33.138199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851877, 31.278952, 33.326511>,  <27.640265, 31.271612, 33.439499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851877, 31.278952, 33.326511>,  <28.204565, 31.291185, 33.138199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851877, 31.278952, 33.326511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125151, -0.977307, 0.170903,
		0.454874, 0.209607, 0.865537,
		-0.881718, -0.030584, 0.470784,
		27.587362, 31.269777, 33.467747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231373, 30.796087, 33.599205>,  <28.204565, 31.291185, 33.138199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231373, 30.796087, 33.599205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834181, 30.843060, 33.604813>,  <27.595865, 30.871243, 33.608177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834181, 30.843060, 33.604813>,  <28.231373, 30.796087, 33.599205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834181, 30.843060, 33.604813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110910, -0.965813, 0.234316,
		0.041055, 0.231117, 0.972060,
		-0.992982, 0.117431, 0.014018,
		27.536285, 30.878288, 33.609016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996035, 30.404659, 34.198711>,  <28.231373, 30.796087, 33.599205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996035, 30.404659, 34.198711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707087, 30.418573, 33.922459>,  <27.533718, 30.426922, 33.756706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707087, 30.418573, 33.922459>,  <27.996035, 30.404659, 34.198711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707087, 30.418573, 33.922459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332302, -0.893319, 0.302582,
		-0.606429, 0.448075, 0.656866,
		-0.722371, 0.034783, -0.690630,
		27.490376, 30.429008, 33.715271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471275, 30.160288, 34.491470>,  <27.996035, 30.404659, 34.198711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471275, 30.160288, 34.491470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359402, 30.086050, 34.114677>,  <27.292276, 30.041508, 33.888603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359402, 30.086050, 34.114677>,  <27.471275, 30.160288, 34.491470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359402, 30.086050, 34.114677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298988, -0.915513, 0.269150,
		-0.912350, 0.356919, 0.200566,
		-0.279686, -0.185592, -0.941983,
		27.275496, 30.030373, 33.832081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770735, 29.868364, 34.489044>,  <27.471275, 30.160288, 34.491470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770735, 29.868364, 34.489044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981684, 29.761272, 34.166504>,  <27.108253, 29.697018, 33.972980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981684, 29.761272, 34.166504>,  <26.770735, 29.868364, 34.489044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981684, 29.761272, 34.166504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237509, -0.957674, 0.162636,
		-0.815762, 0.105746, -0.568639,
		0.527372, -0.267730, -0.806350,
		27.139894, 29.680954, 33.924599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400494, 29.525137, 33.858295>,  <26.770735, 29.868364, 34.489044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400494, 29.525137, 33.858295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769394, 29.385801, 33.925362>,  <26.990734, 29.302200, 33.965603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769394, 29.385801, 33.925362>,  <26.400494, 29.525137, 33.858295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769394, 29.385801, 33.925362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383633, -0.878176, 0.285714,
		0.047717, -0.327823, -0.943533,
		0.922252, -0.348337, 0.167667,
		27.046070, 29.281300, 33.975662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470869, 28.850191, 33.502682>,  <26.400494, 29.525137, 33.858295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470869, 28.850191, 33.502682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767122, 28.849073, 33.771442>,  <26.944874, 28.848402, 33.932697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767122, 28.849073, 33.771442>,  <26.470869, 28.850191, 33.502682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767122, 28.849073, 33.771442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207186, -0.952213, 0.224421,
		0.639168, -0.305423, -0.705820,
		0.740634, -0.002793, 0.671903,
		26.989313, 28.848236, 33.973015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862865, 28.339058, 33.390282>,  <26.470869, 28.850191, 33.502682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862865, 28.339058, 33.390282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960600, 28.390371, 33.774750>,  <27.019241, 28.421160, 34.005428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960600, 28.390371, 33.774750>,  <26.862865, 28.339058, 33.390282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960600, 28.390371, 33.774750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068246, -0.991028, 0.114920,
		0.967286, 0.037517, -0.250898,
		0.244336, 0.128283, 0.961168,
		27.033901, 28.428856, 34.063099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449268, 27.956177, 33.518604>,  <26.862865, 28.339058, 33.390282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449268, 27.956177, 33.518604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255283, 27.964426, 33.868320>,  <27.138893, 27.969376, 34.078152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255283, 27.964426, 33.868320>,  <27.449268, 27.956177, 33.518604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255283, 27.964426, 33.868320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234995, -0.959881, 0.152991,
		0.842371, 0.279649, 0.460660,
		-0.484963, 0.020622, 0.874292,
		27.109795, 27.970613, 34.130608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090721, 27.387922, 33.921940>,  <27.449268, 27.956177, 33.518604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090721, 27.387922, 33.921940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941988, 27.184534, 34.232605>,  <26.852749, 27.062502, 34.419003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941988, 27.184534, 34.232605>,  <27.090721, 27.387922, 33.921940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941988, 27.184534, 34.232605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055390, 0.847309, 0.528204,
		-0.926646, 0.153384, -0.343220,
		-0.371831, -0.508469, 0.776660,
		26.830439, 27.031994, 34.465603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388918, 27.610033, 34.289532>,  <27.090721, 27.387922, 33.921940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388918, 27.610033, 34.289532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671223, 27.442596, 34.518154>,  <26.840607, 27.342134, 34.655327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671223, 27.442596, 34.518154>,  <26.388918, 27.610033, 34.289532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671223, 27.442596, 34.518154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119024, 0.865369, 0.486795,
		-0.698378, -0.275533, 0.660568,
		0.705763, -0.418590, 0.571560,
		26.882952, 27.317020, 34.689621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328131, 27.668528, 35.006187>,  <26.388918, 27.610033, 34.289532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328131, 27.668528, 35.006187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701420, 27.694994, 34.864925>,  <26.925392, 27.710873, 34.780167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701420, 27.694994, 34.864925>,  <26.328131, 27.668528, 35.006187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701420, 27.694994, 34.864925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101033, 0.991563, -0.081212,
		0.344806, 0.111469, 0.932032,
		0.933221, 0.066164, -0.353158,
		26.981386, 27.714844, 34.758976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754667, 28.388432, 35.276497>,  <26.328131, 27.668528, 35.006187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754667, 28.388432, 35.276497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925638, 28.251310, 34.941883>,  <27.028221, 28.169039, 34.741116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925638, 28.251310, 34.941883>,  <26.754667, 28.388432, 35.276497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925638, 28.251310, 34.941883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262102, 0.932568, -0.248233,
		0.865222, -0.113157, 0.488453,
		0.427426, -0.342801, -0.836537,
		27.053865, 28.148470, 34.690922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481451, 28.617313, 35.256157>,  <26.754667, 28.388432, 35.276497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481451, 28.617313, 35.256157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386190, 28.555662, 34.872589>,  <27.329035, 28.518671, 34.642448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386190, 28.555662, 34.872589>,  <27.481451, 28.617313, 35.256157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386190, 28.555662, 34.872589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267320, 0.938791, -0.217283,
		0.933715, -0.308085, -0.182371,
		-0.238149, -0.154129, -0.958921,
		27.314745, 28.509424, 34.584911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061361, 28.820597, 34.760567>,  <27.481451, 28.617313, 35.256157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061361, 28.820597, 34.760567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739304, 28.841450, 34.524254>,  <27.546068, 28.853962, 34.382465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739304, 28.841450, 34.524254>,  <28.061361, 28.820597, 34.760567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739304, 28.841450, 34.524254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276353, 0.914358, -0.295937,
		0.524758, -0.401537, -0.750597,
		-0.805144, 0.052134, -0.590783,
		27.497761, 28.857090, 34.347019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258337, 29.011913, 34.005234>,  <28.061361, 28.820597, 34.760567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258337, 29.011913, 34.005234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882471, 29.128042, 34.077614>,  <27.656952, 29.197720, 34.121040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882471, 29.128042, 34.077614>,  <28.258337, 29.011913, 34.005234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882471, 29.128042, 34.077614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225665, 0.923582, -0.309953,
		-0.257110, -0.250418, -0.933373,
		-0.939665, 0.290321, 0.180951,
		27.600571, 29.215139, 34.131901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058260, 29.463354, 33.401260>,  <28.258337, 29.011913, 34.005234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058260, 29.463354, 33.401260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683836, 29.415625, 33.268864>,  <27.459183, 29.386988, 33.189426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683836, 29.415625, 33.268864>,  <28.058260, 29.463354, 33.401260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683836, 29.415625, 33.268864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257523, 0.873353, 0.413444,
		0.239741, 0.472246, -0.848238,
		-0.936059, -0.119322, -0.330993,
		27.403019, 29.379827, 33.169567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863180, 30.054609, 33.081638>,  <28.058260, 29.463354, 33.401260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863180, 30.054609, 33.081638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521482, 29.875750, 33.187714>,  <27.316463, 29.768435, 33.251358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521482, 29.875750, 33.187714>,  <27.863180, 30.054609, 33.081638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521482, 29.875750, 33.187714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421321, 0.894298, 0.150731,
		-0.304555, 0.017033, -0.952342,
		-0.854245, -0.447148, 0.265187,
		27.265209, 29.741606, 33.267269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265356, 30.124727, 32.594158>,  <27.863180, 30.054609, 33.081638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265356, 30.124727, 32.594158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218782, 30.118330, 32.991386>,  <27.190838, 30.114492, 33.229725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218782, 30.118330, 32.991386>,  <27.265356, 30.124727, 32.594158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218782, 30.118330, 32.991386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168269, 0.985734, -0.003854,
		-0.978841, -0.167552, -0.117462,
		-0.116432, -0.015993, 0.993070,
		27.183853, 30.113533, 33.289307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623686, 30.515865, 32.793999>,  <27.265356, 30.124727, 32.594158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623686, 30.515865, 32.793999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849043, 30.498734, 33.124031>,  <26.984257, 30.488455, 33.322048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849043, 30.498734, 33.124031>,  <26.623686, 30.515865, 32.793999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849043, 30.498734, 33.124031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016596, 0.997867, 0.063131,
		-0.826023, -0.049261, 0.561480,
		0.563393, -0.042829, 0.825079,
		27.018061, 30.485886, 33.371555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303444, 30.968346, 33.260670>,  <26.623686, 30.515865, 32.793999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303444, 30.968346, 33.260670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689217, 30.928955, 33.358791>,  <26.920681, 30.905321, 33.417664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689217, 30.928955, 33.358791>,  <26.303444, 30.968346, 33.260670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689217, 30.928955, 33.358791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091822, 0.995033, 0.038455,
		-0.247870, -0.014564, 0.968684,
		0.964432, -0.098479, 0.245301,
		26.978546, 30.899412, 33.432381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447073, 31.319603, 33.890240>,  <26.303444, 30.968346, 33.260670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447073, 31.319603, 33.890240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762041, 31.308348, 33.643932>,  <26.951023, 31.301594, 33.496147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762041, 31.308348, 33.643932>,  <26.447073, 31.319603, 33.890240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762041, 31.308348, 33.643932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009681, 0.998270, -0.057995,
		0.616339, 0.051628, 0.785787,
		0.787421, -0.028138, -0.615773,
		26.998268, 31.299906, 33.459202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988285, 31.595123, 34.218681>,  <26.447073, 31.319603, 33.890240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988285, 31.595123, 34.218681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972773, 31.655212, 33.823524>,  <26.963465, 31.691265, 33.586430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972773, 31.655212, 33.823524>,  <26.988285, 31.595123, 34.218681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972773, 31.655212, 33.823524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116075, 0.982620, 0.144863,
		0.992483, -0.109052, -0.055543,
		-0.038780, 0.150221, -0.987891,
		26.961138, 31.700279, 33.527157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454050, 31.837608, 34.645390>,  <26.988285, 31.595123, 34.218681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454050, 31.837608, 34.645390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461361, 31.785976, 34.248802>,  <27.465748, 31.754997, 34.010849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461361, 31.785976, 34.248802>,  <27.454050, 31.837608, 34.645390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461361, 31.785976, 34.248802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034177, 0.991133, -0.128404,
		0.999249, -0.031539, 0.022528,
		0.018278, -0.129078, -0.991466,
		27.466845, 31.747253, 33.951363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868773, 32.323154, 34.411015>,  <27.454050, 31.837608, 34.645390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868773, 32.323154, 34.411015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718719, 32.242313, 34.049145>,  <27.628687, 32.193810, 33.832024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718719, 32.242313, 34.049145>,  <27.868773, 32.323154, 34.411015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718719, 32.242313, 34.049145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080283, 0.965192, -0.248917,
		0.923488, -0.166007, -0.345850,
		-0.375133, -0.202106, -0.904670,
		27.606180, 32.181683, 33.777744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346424, 32.416260, 33.899593>,  <27.868773, 32.323154, 34.411015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346424, 32.416260, 33.899593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974714, 32.506844, 33.782864>,  <27.751688, 32.561195, 33.712826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974714, 32.506844, 33.782864>,  <28.346424, 32.416260, 33.899593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974714, 32.506844, 33.782864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335458, 0.848126, -0.410062,
		0.154641, -0.478956, -0.864111,
		-0.929276, 0.226460, -0.291825,
		27.695930, 32.574783, 33.695316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925961, 32.116528, 33.759232>,  <28.346424, 32.416260, 33.899593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925961, 32.116528, 33.759232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205395, 32.204151, 34.031700>,  <29.373055, 32.256725, 34.195179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205395, 32.204151, 34.031700>,  <28.925961, 32.116528, 33.759232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205395, 32.204151, 34.031700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674012, 0.521017, 0.523688,
		-0.240180, -0.824957, 0.511625,
		0.698584, 0.219062, 0.681169,
		29.414970, 32.269871, 34.236050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496458, 31.696644, 34.094822>,  <28.925961, 32.116528, 33.759232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496458, 31.696644, 34.094822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747618, 31.449072, 34.283573>,  <29.898314, 31.300529, 34.396824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747618, 31.449072, 34.283573>,  <29.496458, 31.696644, 34.094822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747618, 31.449072, 34.283573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686247, 0.154257, -0.710824,
		0.367159, 0.770150, 0.521597,
		0.627901, -0.618930, 0.471876,
		29.935987, 31.263393, 34.425137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154495, 31.485619, 33.640427>,  <29.496458, 31.696644, 34.094822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154495, 31.485619, 33.640427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296091, 31.306711, 33.968971>,  <30.381048, 31.199368, 34.166100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296091, 31.306711, 33.968971>,  <30.154495, 31.485619, 33.640427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296091, 31.306711, 33.968971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840472, -0.233097, -0.489155,
		0.410242, 0.863491, 0.293402,
		0.353990, -0.447268, 0.821366,
		30.402288, 31.172531, 34.215382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701796, 31.763838, 33.939075>,  <30.154495, 31.485619, 33.640427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701796, 31.763838, 33.939075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731401, 31.370653, 34.006371>,  <30.749165, 31.134743, 34.046749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731401, 31.370653, 34.006371>,  <30.701796, 31.763838, 33.939075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731401, 31.370653, 34.006371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938972, 0.011861, -0.343790,
		0.335938, 0.183421, 0.923852,
		0.074016, -0.982963, 0.168242,
		30.753607, 31.075764, 34.056843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350113, 31.592390, 34.397305>,  <30.701796, 31.763838, 33.939075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350113, 31.592390, 34.397305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226328, 31.329552, 34.122360>,  <31.152058, 31.171848, 33.957394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226328, 31.329552, 34.122360>,  <31.350113, 31.592390, 34.397305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226328, 31.329552, 34.122360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886560, 0.062021, -0.458437,
		0.343867, -0.751252, 0.563361,
		-0.309462, -0.657095, -0.687357,
		31.133490, 31.132423, 33.916153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477619, 31.390810, 35.246891>,  <31.350113, 31.592390, 34.397305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477619, 31.390810, 35.246891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629339, 31.756157, 35.187714>,  <31.720371, 31.975365, 35.152206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629339, 31.756157, 35.187714>,  <31.477619, 31.390810, 35.246891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629339, 31.756157, 35.187714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843688, -0.275758, 0.460596,
		0.379896, -0.299526, -0.875193,
		0.379302, 0.913368, -0.147947,
		31.743130, 32.030167, 35.143330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028133, 31.378149, 34.864090>,  <31.477619, 31.390810, 35.246891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028133, 31.378149, 34.864090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110554, 31.703131, 35.082253>,  <32.160004, 31.898119, 35.213150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110554, 31.703131, 35.082253>,  <32.028133, 31.378149, 34.864090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110554, 31.703131, 35.082253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894979, -0.381834, 0.230684,
		0.395673, 0.440593, -0.805804,
		0.206046, 0.812453, 0.545403,
		32.172367, 31.946867, 35.245872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602032, 31.746943, 34.598457>,  <32.028133, 31.378149, 34.864090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602032, 31.746943, 34.598457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591011, 31.838942, 34.987579>,  <32.584400, 31.894142, 35.221050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591011, 31.838942, 34.987579>,  <32.602032, 31.746943, 34.598457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591011, 31.838942, 34.987579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999615, 0.003212, 0.027548,
		0.003212, 0.973185, -0.229999,
		-0.027548, 0.229999, 0.972801,
		32.582748, 31.907942, 35.279419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976513, 32.440346, 34.905842>,  <32.602032, 31.746943, 34.598457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976513, 32.440346, 34.905842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008675, 32.100887, 35.114971>,  <33.027973, 31.897213, 35.240448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008675, 32.100887, 35.114971>,  <32.976513, 32.440346, 34.905842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008675, 32.100887, 35.114971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988260, 0.136238, 0.069154,
		-0.129915, 0.511122, 0.849633,
		0.080406, -0.848642, 0.522820,
		33.032795, 31.846294, 35.271816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576672, 32.633739, 35.484383>,  <32.976513, 32.440346, 34.905842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576672, 32.633739, 35.484383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942459, 32.788761, 35.437832>,  <33.161930, 32.881775, 35.409901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942459, 32.788761, 35.437832>,  <32.576672, 32.633739, 35.484383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942459, 32.788761, 35.437832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272715, 0.377799, -0.884813,
		-0.298950, 0.840872, 0.451179,
		0.914470, 0.387558, -0.116375,
		33.216801, 32.905029, 35.402920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564320, 33.364349, 35.314617>,  <32.576672, 32.633739, 35.484383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564320, 33.364349, 35.314617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903553, 33.198086, 35.183174>,  <33.107094, 33.098328, 35.104309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903553, 33.198086, 35.183174>,  <32.564320, 33.364349, 35.314617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903553, 33.198086, 35.183174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111620, 0.466106, -0.877660,
		0.517972, 0.781007, 0.348900,
		0.848083, -0.415659, -0.328606,
		33.157978, 33.073387, 35.084591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909031, 33.959778, 35.001869>,  <32.564320, 33.364349, 35.314617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909031, 33.959778, 35.001869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048889, 33.623383, 34.836712>,  <33.132805, 33.421543, 34.737617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048889, 33.623383, 34.836712>,  <32.909031, 33.959778, 35.001869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048889, 33.623383, 34.836712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091502, 0.407949, -0.908408,
		0.932403, 0.355401, 0.065685,
		0.349646, -0.840992, -0.412892,
		33.153782, 33.371086, 34.712845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392479, 34.115520, 34.435101>,  <32.909031, 33.959778, 35.001869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392479, 34.115520, 34.435101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189991, 33.773548, 34.389786>,  <33.068497, 33.568363, 34.362598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189991, 33.773548, 34.389786>,  <33.392479, 34.115520, 34.435101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189991, 33.773548, 34.389786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111754, 0.195281, -0.974359,
		0.855131, -0.480583, -0.194398,
		-0.506223, -0.854930, -0.113284,
		33.038124, 33.517071, 34.355801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749905, 33.626648, 33.966846>,  <33.392479, 34.115520, 34.435101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749905, 33.626648, 33.966846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349979, 33.630283, 33.960094>,  <33.110023, 33.632465, 33.956043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349979, 33.630283, 33.960094>,  <33.749905, 33.626648, 33.966846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349979, 33.630283, 33.960094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018453, 0.217213, -0.975950,
		-0.005205, -0.976082, -0.217340,
		-0.999816, 0.009090, -0.016881,
		33.050034, 33.633011, 33.955029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472878, 33.214081, 33.402786>,  <33.749905, 33.626648, 33.966846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472878, 33.214081, 33.402786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218494, 33.511345, 33.485989>,  <33.065865, 33.689705, 33.535912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218494, 33.511345, 33.485989>,  <33.472878, 33.214081, 33.402786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218494, 33.511345, 33.485989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171792, 0.126443, -0.976985,
		-0.752362, -0.657053, 0.047257,
		-0.635955, 0.743165, 0.208007,
		33.027706, 33.734295, 33.548389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811966, 33.107555, 33.028301>,  <33.472878, 33.214081, 33.402786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811966, 33.107555, 33.028301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822559, 33.502682, 33.089653>,  <32.828915, 33.739758, 33.126465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822559, 33.502682, 33.089653>,  <32.811966, 33.107555, 33.028301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822559, 33.502682, 33.089653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174031, 0.155644, -0.972362,
		-0.984384, -0.000938, 0.176033,
		0.026486, 0.987813, 0.153377,
		32.830505, 33.799026, 33.135666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176918, 33.360802, 32.786137>,  <32.811966, 33.107555, 33.028301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176918, 33.360802, 32.786137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447086, 33.655651, 32.794579>,  <32.609188, 33.832561, 32.799644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447086, 33.655651, 32.794579>,  <32.176918, 33.360802, 32.786137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447086, 33.655651, 32.794579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150642, 0.165932, -0.974563,
		-0.721879, 0.655065, 0.223117,
		0.675424, 0.737127, 0.021103,
		32.649715, 33.876789, 32.800911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772039, 34.022263, 32.609303>,  <32.176918, 33.360802, 32.786137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772039, 34.022263, 32.609303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157436, 34.087990, 32.524750>,  <32.388676, 34.127426, 32.474018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157436, 34.087990, 32.524750>,  <31.772039, 34.022263, 32.609303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157436, 34.087990, 32.524750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265100, 0.475033, -0.839086,
		-0.037464, 0.864490, 0.501252,
		0.963493, 0.164317, -0.211379,
		32.446484, 34.137283, 32.461334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675186, 34.513493, 32.068981>,  <31.772039, 34.022263, 32.609303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675186, 34.513493, 32.068981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070404, 34.460106, 32.038105>,  <32.307533, 34.428074, 32.019581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070404, 34.460106, 32.038105>,  <31.675186, 34.513493, 32.068981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070404, 34.460106, 32.038105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020112, 0.384804, -0.922779,
		0.152862, 0.913298, 0.377518,
		0.988043, -0.133465, -0.077190,
		32.366817, 34.420067, 32.014950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977396, 35.100925, 31.834698>,  <31.675186, 34.513493, 32.068981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977396, 35.100925, 31.834698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270172, 34.845531, 31.739534>,  <32.445839, 34.692295, 31.682436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270172, 34.845531, 31.739534>,  <31.977396, 35.100925, 31.834698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270172, 34.845531, 31.739534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088752, 0.435529, -0.895789,
		0.675563, 0.634550, 0.375448,
		0.731941, -0.638484, -0.237910,
		32.489754, 34.653988, 31.668161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385780, 35.475628, 31.445522>,  <31.977396, 35.100925, 31.834698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385780, 35.475628, 31.445522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525856, 35.108353, 31.371449>,  <32.609901, 34.887989, 31.327003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525856, 35.108353, 31.371449>,  <32.385780, 35.475628, 31.445522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525856, 35.108353, 31.371449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265217, 0.286812, -0.920543,
		0.898345, 0.273254, 0.343959,
		0.350194, -0.918189, -0.185185,
		32.630913, 34.832897, 31.315893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067219, 35.528336, 31.212646>,  <32.385780, 35.475628, 31.445522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067219, 35.528336, 31.212646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902790, 35.198288, 31.057623>,  <32.804131, 35.000259, 30.964609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902790, 35.198288, 31.057623>,  <33.067219, 35.528336, 31.212646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902790, 35.198288, 31.057623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278675, 0.291045, -0.915223,
		0.867961, -0.484229, 0.110297,
		-0.411076, -0.825115, -0.387558,
		32.779469, 34.950752, 30.941355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560463, 35.298946, 30.743431>,  <33.067219, 35.528336, 31.212646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560463, 35.298946, 30.743431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224850, 35.113136, 30.630125>,  <33.023483, 35.001652, 30.562141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224850, 35.113136, 30.630125>,  <33.560463, 35.298946, 30.743431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224850, 35.113136, 30.630125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221550, 0.183816, -0.957667,
		0.496930, -0.866272, -0.051312,
		-0.839033, -0.464526, -0.283266,
		32.973141, 34.973778, 30.545145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721146, 34.877567, 30.091774>,  <33.560463, 35.298946, 30.743431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721146, 34.877567, 30.091774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325123, 34.923862, 30.059807>,  <33.087509, 34.951641, 30.040627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325123, 34.923862, 30.059807>,  <33.721146, 34.877567, 30.091774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325123, 34.923862, 30.059807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095081, 0.132039, -0.986674,
		-0.103646, -0.984464, -0.141732,
		-0.990059, 0.115741, -0.079919,
		33.028107, 34.958584, 30.035831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491909, 34.634602, 29.416471>,  <33.721146, 34.877567, 30.091774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491909, 34.634602, 29.416471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172680, 34.845287, 29.533543>,  <32.981144, 34.971699, 29.603785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172680, 34.845287, 29.533543>,  <33.491909, 34.634602, 29.416471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172680, 34.845287, 29.533543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205842, 0.218188, -0.953951,
		-0.566318, -0.821563, -0.065709,
		-0.798068, 0.526715, 0.292676,
		32.933258, 35.003300, 29.621346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915852, 34.344067, 29.105900>,  <33.491909, 34.634602, 29.416471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915852, 34.344067, 29.105900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835316, 34.729206, 29.177895>,  <32.786995, 34.960289, 29.221090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835316, 34.729206, 29.177895>,  <32.915852, 34.344067, 29.105900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835316, 34.729206, 29.177895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252552, 0.126509, -0.959277,
		-0.946404, -0.238592, 0.217698,
		-0.201335, 0.962844, 0.179986,
		32.774914, 35.018059, 29.231890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363968, 34.488438, 28.626108>,  <32.915852, 34.344067, 29.105900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363968, 34.488438, 28.626108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486710, 34.852016, 28.739004>,  <32.560356, 35.070164, 28.806742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486710, 34.852016, 28.739004>,  <32.363968, 34.488438, 28.626108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486710, 34.852016, 28.739004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258652, 0.365027, -0.894346,
		-0.915936, 0.201432, 0.347111,
		0.306854, 0.908945, 0.282240,
		32.578766, 35.124699, 28.823677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983667, 34.880795, 28.297968>,  <32.363968, 34.488438, 28.626108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983667, 34.880795, 28.297968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258785, 35.154133, 28.395933>,  <32.423855, 35.318134, 28.454712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258785, 35.154133, 28.395933>,  <31.983667, 34.880795, 28.297968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258785, 35.154133, 28.395933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102375, 0.425329, -0.899230,
		-0.718650, 0.593412, 0.362496,
		0.687794, 0.683343, 0.244912,
		32.465122, 35.359135, 28.469406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633917, 35.479748, 28.219543>,  <31.983667, 34.880795, 28.297968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633917, 35.479748, 28.219543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014465, 35.596981, 28.181608>,  <32.242794, 35.667320, 28.158846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014465, 35.596981, 28.181608>,  <31.633917, 35.479748, 28.219543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014465, 35.596981, 28.181608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236159, 0.496237, -0.835451,
		-0.197797, 0.817220, 0.541320,
		0.951370, 0.293088, -0.094840,
		32.299877, 35.684906, 28.153156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736080, 36.289425, 28.075628>,  <31.633917, 35.479748, 28.219543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736080, 36.289425, 28.075628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082130, 36.128883, 27.955313>,  <32.289761, 36.032558, 27.883123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082130, 36.128883, 27.955313>,  <31.736080, 36.289425, 28.075628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082130, 36.128883, 27.955313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154952, 0.356501, -0.921356,
		0.477020, 0.843696, 0.246228,
		0.865125, -0.401352, -0.300791,
		32.341667, 36.008476, 27.865076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990467, 36.824303, 27.667925>,  <31.736080, 36.289425, 28.075628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990467, 36.824303, 27.667925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208439, 36.509357, 27.552608>,  <32.339222, 36.320389, 27.483419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208439, 36.509357, 27.552608>,  <31.990467, 36.824303, 27.667925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208439, 36.509357, 27.552608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060252, 0.379706, -0.923143,
		0.836315, 0.485677, 0.254353,
		0.544928, -0.787364, -0.288291,
		32.371918, 36.273148, 27.466122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519127, 37.082657, 27.247372>,  <31.990467, 36.824303, 27.667925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519127, 37.082657, 27.247372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500004, 36.694458, 27.152836>,  <32.488529, 36.461540, 27.096115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500004, 36.694458, 27.152836>,  <32.519127, 37.082657, 27.247372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500004, 36.694458, 27.152836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086312, 0.239739, -0.966993,
		0.995120, -0.025833, -0.095228,
		-0.047810, -0.970494, -0.236339,
		32.485661, 36.403309, 27.081934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946533, 37.011559, 26.629816>,  <32.519127, 37.082657, 27.247372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946533, 37.011559, 26.629816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680183, 36.714188, 26.654881>,  <32.520374, 36.535763, 26.669920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680183, 36.714188, 26.654881>,  <32.946533, 37.011559, 26.629816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680183, 36.714188, 26.654881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211015, 0.107105, -0.971597,
		0.715605, -0.660180, -0.228194,
		-0.665870, -0.743432, 0.062663,
		32.480423, 36.491158, 26.673679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251823, 36.504799, 26.268423>,  <32.946533, 37.011559, 26.629816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251823, 36.504799, 26.268423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861752, 36.416283, 26.271166>,  <32.627708, 36.363174, 26.272812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861752, 36.416283, 26.271166>,  <33.251823, 36.504799, 26.268423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861752, 36.416283, 26.271166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039384, -0.203864, -0.978207,
		0.217865, -0.953662, 0.207520,
		-0.975184, -0.221290, 0.006856,
		32.569195, 36.349895, 26.273222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214153, 35.885811, 25.905222>,  <33.251823, 36.504799, 26.268423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214153, 35.885811, 25.905222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861179, 36.073971, 25.903257>,  <32.649395, 36.186867, 25.902079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861179, 36.073971, 25.903257>,  <33.214153, 35.885811, 25.905222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861179, 36.073971, 25.903257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035183, -0.076407, -0.996456,
		-0.469113, -0.879137, 0.083974,
		-0.882438, 0.470405, -0.004912,
		32.596447, 36.215092, 25.901783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894657, 35.515770, 25.486763>,  <33.214153, 35.885811, 25.905222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894657, 35.515770, 25.486763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686489, 35.856842, 25.468462>,  <32.561588, 36.061485, 25.457481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686489, 35.856842, 25.468462>,  <32.894657, 35.515770, 25.486763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686489, 35.856842, 25.468462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070188, -0.096116, -0.992892,
		-0.851018, -0.513514, 0.109869,
		-0.520424, 0.852681, -0.045754,
		32.530361, 36.112648, 25.454737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262165, 35.451157, 25.210670>,  <32.894657, 35.515770, 25.486763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262165, 35.451157, 25.210670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349274, 35.837852, 25.157022>,  <32.401539, 36.069870, 25.124834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349274, 35.837852, 25.157022>,  <32.262165, 35.451157, 25.210670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349274, 35.837852, 25.157022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128018, -0.107938, -0.985881,
		-0.967566, 0.231871, 0.100254,
		0.217776, 0.966739, -0.134121,
		32.414608, 36.127872, 25.116787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246811, 35.410690, 24.502962>,  <32.262165, 35.451157, 25.210670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246811, 35.410690, 24.502962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315243, 35.793697, 24.595827>,  <32.356300, 36.023502, 24.651546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315243, 35.793697, 24.595827>,  <32.246811, 35.410690, 24.502962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315243, 35.793697, 24.595827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076881, 0.247893, -0.965732,
		-0.982253, 0.147367, 0.116023,
		0.171078, 0.957514, 0.232164,
		32.366566, 36.080952, 24.665476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684696, 35.854126, 24.199293>,  <32.246811, 35.410690, 24.502962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684696, 35.854126, 24.199293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028133, 36.046749, 24.269627>,  <32.234196, 36.162323, 24.311827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028133, 36.046749, 24.269627>,  <31.684696, 35.854126, 24.199293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028133, 36.046749, 24.269627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015082, 0.366564, -0.930271,
		-0.512436, 0.796072, 0.321992,
		0.858593, 0.481561, 0.175834,
		32.285713, 36.191216, 24.322376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582535, 36.479851, 23.943682>,  <31.684696, 35.854126, 24.199293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582535, 36.479851, 23.943682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980713, 36.445232, 23.959690>,  <32.219620, 36.424461, 23.969296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980713, 36.445232, 23.959690>,  <31.582535, 36.479851, 23.943682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980713, 36.445232, 23.959690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069032, 0.364628, -0.928591,
		0.065771, 0.927123, 0.368941,
		0.995444, -0.086543, 0.040019,
		32.279346, 36.419270, 23.971695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840616, 37.099663, 23.706369>,  <31.582535, 36.479851, 23.943682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840616, 37.099663, 23.706369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149807, 36.847858, 23.674814>,  <32.335320, 36.696777, 23.655882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149807, 36.847858, 23.674814>,  <31.840616, 37.099663, 23.706369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149807, 36.847858, 23.674814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184370, 0.341864, -0.921486,
		0.607056, 0.697742, 0.380315,
		0.772975, -0.629512, -0.078888,
		32.381699, 36.659004, 23.651148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409496, 37.459480, 23.468262>,  <31.840616, 37.099663, 23.706369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409496, 37.459480, 23.468262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518032, 37.085941, 23.375055>,  <32.583153, 36.861816, 23.319132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518032, 37.085941, 23.375055>,  <32.409496, 37.459480, 23.468262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518032, 37.085941, 23.375055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130625, 0.275590, -0.952359,
		0.953579, 0.227974, 0.196762,
		0.271339, -0.933851, -0.233018,
		32.599434, 36.805786, 23.305149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064884, 37.545868, 23.100437>,  <32.409496, 37.459480, 23.468262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064884, 37.545868, 23.100437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939754, 37.184189, 22.984118>,  <32.864677, 36.967182, 22.914326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939754, 37.184189, 22.984118>,  <33.064884, 37.545868, 23.100437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939754, 37.184189, 22.984118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273835, 0.207306, -0.939169,
		0.909481, -0.373424, 0.182752,
		-0.312823, -0.904201, -0.290797,
		32.845909, 36.912930, 22.896879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429794, 37.429474, 22.558191>,  <33.064884, 37.545868, 23.100437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429794, 37.429474, 22.558191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096336, 37.208652, 22.551571>,  <32.896263, 37.076160, 22.547598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096336, 37.208652, 22.551571>,  <33.429794, 37.429474, 22.558191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096336, 37.208652, 22.551571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110455, 0.196012, -0.974361,
		0.541143, -0.810443, -0.224381,
		-0.833645, -0.552052, -0.016553,
		32.846241, 37.043037, 22.546604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396873, 37.108189, 21.955601>,  <33.429794, 37.429474, 22.558191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396873, 37.108189, 21.955601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010338, 37.070183, 22.051239>,  <32.778416, 37.047379, 22.108622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010338, 37.070183, 22.051239>,  <33.396873, 37.108189, 21.955601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010338, 37.070183, 22.051239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252361, 0.169142, -0.952735,
		0.050082, -0.981001, -0.187426,
		-0.966337, -0.095014, 0.239095,
		32.720436, 37.041679, 22.122967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192379, 36.919243, 21.395317>,  <33.396873, 37.108189, 21.955601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192379, 36.919243, 21.395317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843594, 37.009880, 21.568907>,  <32.634323, 37.064262, 21.673059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843594, 37.009880, 21.568907>,  <33.192379, 36.919243, 21.395317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843594, 37.009880, 21.568907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309348, 0.432037, -0.847141,
		-0.379445, -0.872927, -0.306627,
		-0.871966, 0.226589, 0.433973,
		32.582005, 37.077858, 21.699099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785679, 36.843788, 20.874063>,  <33.192379, 36.919243, 21.395317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785679, 36.843788, 20.874063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542690, 37.048630, 21.116959>,  <32.396896, 37.171535, 21.262695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542690, 37.048630, 21.116959>,  <32.785679, 36.843788, 20.874063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542690, 37.048630, 21.116959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426658, 0.434467, -0.793222,
		-0.670033, -0.740940, -0.045434,
		-0.607469, 0.512100, 0.607236,
		32.360451, 37.202259, 21.299129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085152, 36.726921, 20.633192>,  <32.785679, 36.843788, 20.874063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085152, 36.726921, 20.633192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044441, 37.052742, 20.861629>,  <32.020016, 37.248234, 20.998692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044441, 37.052742, 20.861629>,  <32.085152, 36.726921, 20.633192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044441, 37.052742, 20.861629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394732, 0.493880, -0.774770,
		-0.913142, -0.304280, 0.271265,
		-0.101775, 0.814552, 0.571092,
		32.013908, 37.297108, 21.032957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349159, 37.063343, 20.634706>,  <32.085152, 36.726921, 20.633192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349159, 37.063343, 20.634706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604376, 37.345566, 20.758055>,  <31.757505, 37.514900, 20.832064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604376, 37.345566, 20.758055>,  <31.349159, 37.063343, 20.634706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604376, 37.345566, 20.758055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297683, 0.595365, -0.746274,
		-0.710131, 0.384359, 0.589901,
		0.638043, 0.705556, 0.308370,
		31.795790, 37.557232, 20.850565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108891, 37.614941, 20.273090>,  <31.349159, 37.063343, 20.634706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108891, 37.614941, 20.273090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440004, 37.765900, 20.439146>,  <31.638674, 37.856476, 20.538780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440004, 37.765900, 20.439146>,  <31.108891, 37.614941, 20.273090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440004, 37.765900, 20.439146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119942, 0.841874, -0.526177,
		-0.548074, 0.385769, 0.742157,
		0.827786, 0.377400, 0.415139,
		31.688339, 37.879120, 20.563688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990412, 38.305668, 20.464062>,  <31.108891, 37.614941, 20.273090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990412, 38.305668, 20.464062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390022, 38.291523, 20.453497>,  <31.629789, 38.283035, 20.447157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390022, 38.291523, 20.453497>,  <30.990412, 38.305668, 20.464062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390022, 38.291523, 20.453497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016600, 0.855568, -0.517425,
		0.040894, 0.516482, 0.855321,
		0.999026, -0.035358, -0.026414,
		31.689730, 38.280914, 20.445572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361845, 38.913765, 20.879755>,  <30.990412, 38.305668, 20.464062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361845, 38.913765, 20.879755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599770, 38.781414, 20.586710>,  <31.742525, 38.702003, 20.410883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599770, 38.781414, 20.586710>,  <31.361845, 38.913765, 20.879755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599770, 38.781414, 20.586710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042787, 0.923099, -0.382176,
		0.802726, 0.195976, 0.563226,
		0.594811, -0.330881, -0.732610,
		31.778214, 38.682148, 20.366926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015984, 39.398373, 20.709347>,  <31.361845, 38.913765, 20.879755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015984, 39.398373, 20.709347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948517, 39.193653, 20.372395>,  <31.908037, 39.070820, 20.170223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948517, 39.193653, 20.372395>,  <32.015984, 39.398373, 20.709347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948517, 39.193653, 20.372395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017734, 0.852913, -0.521752,
		0.985513, -0.102941, -0.134783,
		-0.168668, -0.511803, -0.842383,
		31.897917, 39.040112, 20.119680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262051, 39.813221, 20.239508>,  <32.015984, 39.398373, 20.709347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262051, 39.813221, 20.239508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072311, 39.558842, 19.996010>,  <31.958467, 39.406216, 19.849911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072311, 39.558842, 19.996010>,  <32.262051, 39.813221, 20.239508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072311, 39.558842, 19.996010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185957, 0.748268, -0.636801,
		0.860473, -0.188865, -0.473198,
		-0.474349, -0.635944, -0.608743,
		31.930008, 39.368057, 19.813387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517853, 39.857075, 19.535591>,  <32.262051, 39.813221, 20.239508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517853, 39.857075, 19.535591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137299, 39.733913, 19.532644>,  <31.908966, 39.660015, 19.530876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137299, 39.733913, 19.532644>,  <32.517853, 39.857075, 19.535591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137299, 39.733913, 19.532644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214949, 0.680923, -0.700101,
		0.220582, -0.664484, -0.714006,
		-0.951389, -0.307904, -0.007369,
		31.851881, 39.641541, 19.530434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407291, 39.817200, 18.872671>,  <32.517853, 39.857075, 19.535591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407291, 39.817200, 18.872671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032906, 39.818306, 19.013504>,  <31.808273, 39.818970, 19.098003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032906, 39.818306, 19.013504>,  <32.407291, 39.817200, 18.872671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032906, 39.818306, 19.013504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255881, 0.681552, -0.685574,
		-0.241858, -0.731764, -0.637201,
		-0.935965, 0.002764, 0.352083,
		31.752115, 39.819134, 19.119129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001270, 39.842747, 18.344919>,  <32.407291, 39.817200, 18.872671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001270, 39.842747, 18.344919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736961, 39.951836, 18.624634>,  <31.578377, 40.017288, 18.792463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736961, 39.951836, 18.624634>,  <32.001270, 39.842747, 18.344919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736961, 39.951836, 18.624634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192617, 0.838842, -0.509160,
		-0.725451, -0.471133, -0.501752,
		-0.660772, 0.272724, 0.699286,
		31.538729, 40.033653, 18.834419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617704, 40.312027, 17.995152>,  <32.001270, 39.842747, 18.344919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617704, 40.312027, 17.995152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521032, 40.373062, 18.378466>,  <31.463030, 40.409683, 18.608454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521032, 40.373062, 18.378466>,  <31.617704, 40.312027, 17.995152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521032, 40.373062, 18.378466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187349, 0.961639, -0.200376,
		-0.952098, -0.227960, -0.203820,
		-0.241679, 0.152593, 0.958283,
		31.448528, 40.418839, 18.665951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930643, 40.362839, 18.141527>,  <31.617704, 40.312027, 17.995152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930643, 40.362839, 18.141527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118628, 40.581394, 18.418825>,  <31.231419, 40.712528, 18.585203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118628, 40.581394, 18.418825>,  <30.930643, 40.362839, 18.141527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118628, 40.581394, 18.418825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367110, 0.835225, -0.409426,
		-0.802723, -0.062082, 0.593111,
		0.469963, 0.546393, 0.693246,
		31.259617, 40.745312, 18.626799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487902, 40.541748, 18.619213>,  <30.930643, 40.362839, 18.141527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487902, 40.541748, 18.619213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797634, 40.766701, 18.503185>,  <30.983475, 40.901672, 18.433569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797634, 40.766701, 18.503185>,  <30.487902, 40.541748, 18.619213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797634, 40.766701, 18.503185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627989, 0.739268, -0.243132,
		0.077707, 0.370425, 0.925606,
		0.774333, 0.562377, -0.290070,
		31.029934, 40.935413, 18.416164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862665, 40.933365, 18.779366>,  <30.487902, 40.541748, 18.619213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862665, 40.933365, 18.779366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731220, 41.291115, 18.900764>,  <29.652353, 41.505764, 18.973604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731220, 41.291115, 18.900764>,  <29.862665, 40.933365, 18.779366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731220, 41.291115, 18.900764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501045, 0.107310, -0.858742,
		-0.800605, -0.434258, 0.412858,
		-0.328612, 0.894374, 0.303496,
		29.632637, 41.559425, 18.991814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108452, 40.958080, 18.643059>,  <29.862665, 40.933365, 18.779366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108452, 40.958080, 18.643059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214748, 41.342457, 18.673983>,  <29.278526, 41.573082, 18.692537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214748, 41.342457, 18.673983>,  <29.108452, 40.958080, 18.643059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214748, 41.342457, 18.673983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592169, 0.225988, -0.773476,
		-0.760735, 0.159765, 0.629093,
		0.265742, 0.960939, 0.077309,
		29.294472, 41.630737, 18.697176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552423, 41.269012, 18.212383>,  <29.108452, 40.958080, 18.643059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552423, 41.269012, 18.212383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834507, 41.544270, 18.280664>,  <29.003757, 41.709423, 18.321634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834507, 41.544270, 18.280664>,  <28.552423, 41.269012, 18.212383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834507, 41.544270, 18.280664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435268, 0.610259, -0.661911,
		-0.559663, 0.392484, 0.729886,
		0.705209, 0.688143, 0.170704,
		29.046070, 41.750713, 18.331875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261837, 41.970387, 18.453602>,  <28.552423, 41.269012, 18.212383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261837, 41.970387, 18.453602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599173, 41.989967, 18.239542>,  <28.801573, 42.001717, 18.111107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599173, 41.989967, 18.239542>,  <28.261837, 41.970387, 18.453602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599173, 41.989967, 18.239542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503689, 0.419091, -0.755421,
		0.187296, 0.906624, 0.378093,
		0.843337, 0.048954, -0.535150,
		28.852173, 42.004654, 18.078997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388186, 42.737381, 18.124338>,  <28.261837, 41.970387, 18.453602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388186, 42.737381, 18.124338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506809, 42.405846, 17.934566>,  <28.577984, 42.206924, 17.820704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506809, 42.405846, 17.934566>,  <28.388186, 42.737381, 18.124338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506809, 42.405846, 17.934566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568004, 0.246280, -0.785314,
		0.767739, 0.502370, -0.397745,
		0.296561, -0.828837, -0.474427,
		28.595778, 42.157196, 17.792238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921232, 42.765373, 18.545334>,  <28.388186, 42.737381, 18.124338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921232, 42.765373, 18.545334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643053, 43.051399, 18.573734>,  <28.476147, 43.223015, 18.590775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643053, 43.051399, 18.573734>,  <28.921232, 42.765373, 18.545334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643053, 43.051399, 18.573734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584748, -0.505726, -0.634281,
		-0.417641, -0.482628, 0.769835,
		-0.695447, 0.715061, 0.071004,
		28.434420, 43.265919, 18.595036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655067, 42.880135, 18.794313>,  <28.921232, 42.765373, 18.545334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655067, 42.880135, 18.794313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527777, 42.501064, 18.784151>,  <29.451403, 42.273624, 18.778053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527777, 42.501064, 18.784151>,  <29.655067, 42.880135, 18.794313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527777, 42.501064, 18.784151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198274, -0.092738, 0.975749,
		-0.927048, 0.305475, 0.217411,
		-0.318229, -0.947673, -0.025405,
		29.432308, 42.216763, 18.776529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212706, 42.733707, 19.390448>,  <29.655067, 42.880135, 18.794313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212706, 42.733707, 19.390448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377964, 42.390182, 19.269289>,  <29.477119, 42.184067, 19.196594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377964, 42.390182, 19.269289>,  <29.212706, 42.733707, 19.390448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377964, 42.390182, 19.269289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229749, -0.223553, 0.947227,
		-0.881206, -0.460935, 0.104951,
		0.413148, -0.858815, -0.302895,
		29.501909, 42.132538, 19.178421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912199, 42.307053, 19.768002>,  <29.212706, 42.733707, 19.390448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912199, 42.307053, 19.768002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247320, 42.119190, 19.656637>,  <29.448393, 42.006474, 19.589819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247320, 42.119190, 19.656637>,  <28.912199, 42.307053, 19.768002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247320, 42.119190, 19.656637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187866, -0.230807, 0.954691,
		-0.512631, -0.852147, -0.105140,
		0.837804, -0.469652, -0.278409,
		29.498661, 41.978294, 19.573114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787340, 41.624191, 19.953686>,  <28.912199, 42.307053, 19.768002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787340, 41.624191, 19.953686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183704, 41.663433, 19.916864>,  <29.421522, 41.686977, 19.894772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183704, 41.663433, 19.916864>,  <28.787340, 41.624191, 19.953686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183704, 41.663433, 19.916864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124512, -0.409685, 0.903690,
		0.050940, -0.906937, -0.418175,
		0.990910, 0.098102, -0.092055,
		29.480978, 41.692863, 19.889248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015074, 40.984821, 20.166866>,  <28.787340, 41.624191, 19.953686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015074, 40.984821, 20.166866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327099, 41.234657, 20.181786>,  <29.514315, 41.384560, 20.190737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327099, 41.234657, 20.181786>,  <29.015074, 40.984821, 20.166866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327099, 41.234657, 20.181786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264014, -0.382608, 0.885386,
		0.567274, -0.680808, -0.463358,
		0.780062, 0.624589, 0.037300,
		29.561117, 41.422035, 20.192976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567078, 40.478546, 20.279596>,  <29.015074, 40.984821, 20.166866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567078, 40.478546, 20.279596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697224, 40.840237, 20.390238>,  <29.775311, 41.057251, 20.456623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697224, 40.840237, 20.390238>,  <29.567078, 40.478546, 20.279596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697224, 40.840237, 20.390238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236342, -0.361000, 0.902120,
		0.915577, -0.228145, -0.331164,
		0.325364, 0.904228, 0.276604,
		29.794832, 41.111504, 20.473219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159416, 40.439621, 20.789429>,  <29.567078, 40.478546, 20.279596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159416, 40.439621, 20.789429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079977, 40.826656, 20.851824>,  <30.032314, 41.058876, 20.889261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079977, 40.826656, 20.851824>,  <30.159416, 40.439621, 20.789429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079977, 40.826656, 20.851824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326070, -0.084859, 0.941529,
		0.924250, 0.237848, -0.298649,
		-0.198598, 0.967588, 0.155986,
		30.020397, 41.116932, 20.898621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739756, 40.714695, 21.187336>,  <30.159416, 40.439621, 20.789429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739756, 40.714695, 21.187336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431574, 40.961666, 21.250807>,  <30.246664, 41.109848, 21.288889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431574, 40.961666, 21.250807>,  <30.739756, 40.714695, 21.187336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431574, 40.961666, 21.250807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118527, -0.105824, 0.987296,
		0.626379, 0.779474, 0.008351,
		-0.770455, 0.617431, 0.158675,
		30.200438, 41.146896, 21.298409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953035, 41.195641, 21.685450>,  <30.739756, 40.714695, 21.187336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953035, 41.195641, 21.685450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554144, 41.223328, 21.696354>,  <30.314810, 41.239941, 21.702896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554144, 41.223328, 21.696354>,  <30.953035, 41.195641, 21.685450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554144, 41.223328, 21.696354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021916, -0.076822, 0.996804,
		0.071094, 0.994639, 0.075092,
		-0.997229, 0.069221, 0.027260,
		30.254974, 41.244095, 21.704533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785789, 41.830437, 22.079914>,  <30.953035, 41.195641, 21.685450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785789, 41.830437, 22.079914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461050, 41.596928, 22.083998>,  <30.266207, 41.456821, 22.086447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461050, 41.596928, 22.083998>,  <30.785789, 41.830437, 22.079914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461050, 41.596928, 22.083998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005405, 0.024997, 0.999673,
		-0.583841, 0.811529, -0.023450,
		-0.811850, -0.583777, 0.010208,
		30.217495, 41.421795, 22.087061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357548, 42.092899, 22.680830>,  <30.785789, 41.830437, 22.079914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357548, 42.092899, 22.680830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222784, 41.721291, 22.619621>,  <30.141926, 41.498325, 22.582897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222784, 41.721291, 22.619621>,  <30.357548, 42.092899, 22.680830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222784, 41.721291, 22.619621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131896, -0.114351, 0.984646,
		-0.932253, 0.351919, -0.084008,
		-0.336909, -0.929019, -0.153021,
		30.121712, 41.442585, 22.573715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628431, 42.053627, 22.937025>,  <30.357548, 42.092899, 22.680830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628431, 42.053627, 22.937025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801060, 41.692856, 22.943514>,  <29.904636, 41.476391, 22.947407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801060, 41.692856, 22.943514>,  <29.628431, 42.053627, 22.937025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801060, 41.692856, 22.943514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250127, -0.102367, 0.962786,
		-0.866708, -0.419569, -0.269777,
		0.431572, -0.901933, 0.016223,
		29.930531, 41.422276, 22.948381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190723, 41.709293, 23.427670>,  <29.628431, 42.053627, 22.937025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190723, 41.709293, 23.427670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524567, 41.489895, 23.407366>,  <29.724873, 41.358253, 23.395184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524567, 41.489895, 23.407366>,  <29.190723, 41.709293, 23.427670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524567, 41.489895, 23.407366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049629, -0.166647, 0.984767,
		-0.548604, -0.819375, -0.166306,
		0.834608, -0.548501, -0.050759,
		29.774948, 41.325344, 23.392138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091808, 41.100513, 23.729439>,  <29.190723, 41.709293, 23.427670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091808, 41.100513, 23.729439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491749, 41.097866, 23.735760>,  <29.731714, 41.096275, 23.739553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491749, 41.097866, 23.735760>,  <29.091808, 41.100513, 23.729439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491749, 41.097866, 23.735760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017122, -0.423115, 0.905914,
		0.000689, -0.906052, -0.423166,
		0.999853, -0.006621, 0.015805,
		29.791704, 41.095879, 23.740501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221487, 40.552811, 24.156691>,  <29.091808, 41.100513, 23.729439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221487, 40.552811, 24.156691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585550, 40.716137, 24.128714>,  <29.803988, 40.814133, 24.111927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585550, 40.716137, 24.128714>,  <29.221487, 40.552811, 24.156691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585550, 40.716137, 24.128714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209350, -0.307657, 0.928181,
		0.357475, -0.859432, -0.365497,
		0.910156, 0.408318, -0.069943,
		29.858597, 40.838631, 24.107731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702053, 40.076397, 24.197865>,  <29.221487, 40.552811, 24.156691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702053, 40.076397, 24.197865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887320, 40.398598, 24.345724>,  <29.998480, 40.591919, 24.434441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887320, 40.398598, 24.345724>,  <29.702053, 40.076397, 24.197865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887320, 40.398598, 24.345724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229266, -0.511783, 0.827958,
		0.856105, -0.298732, -0.421715,
		0.463164, 0.805504, 0.369651,
		30.026268, 40.640247, 24.456619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314955, 39.778522, 24.486629>,  <29.702053, 40.076397, 24.197865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314955, 39.778522, 24.486629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260284, 40.130745, 24.668150>,  <30.227482, 40.342079, 24.777061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260284, 40.130745, 24.668150>,  <30.314955, 39.778522, 24.486629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260284, 40.130745, 24.668150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050509, -0.451308, 0.890937,
		0.989328, 0.144689, 0.017206,
		-0.136674, 0.880560, 0.453800,
		30.219282, 40.394913, 24.804291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797451, 39.802677, 24.953096>,  <30.314955, 39.778522, 24.486629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797451, 39.802677, 24.953096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522282, 40.058876, 25.089640>,  <30.357180, 40.212597, 25.171566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522282, 40.058876, 25.089640>,  <30.797451, 39.802677, 24.953096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522282, 40.058876, 25.089640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134967, -0.349231, 0.927265,
		0.713123, 0.683960, 0.153799,
		-0.687924, 0.640497, 0.341357,
		30.315905, 40.251026, 25.192047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063339, 40.091751, 25.542368>,  <30.797451, 39.802677, 24.953096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063339, 40.091751, 25.542368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668537, 40.147583, 25.574205>,  <30.431656, 40.181084, 25.593307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668537, 40.147583, 25.574205>,  <31.063339, 40.091751, 25.542368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668537, 40.147583, 25.574205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021590, -0.606071, 0.795118,
		0.159221, 0.783068, 0.601210,
		-0.987007, 0.139580, 0.079593,
		30.372435, 40.189457, 25.598083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990219, 40.089680, 26.250935>,  <31.063339, 40.091751, 25.542368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990219, 40.089680, 26.250935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605719, 40.066914, 26.143040>,  <30.375019, 40.053253, 26.078302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605719, 40.066914, 26.143040>,  <30.990219, 40.089680, 26.250935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605719, 40.066914, 26.143040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201069, -0.524646, 0.827235,
		-0.188598, 0.849416, 0.492872,
		-0.961250, -0.056914, -0.269738,
		30.317343, 40.049839, 26.062119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596926, 40.564022, 26.679188>,  <30.990219, 40.089680, 26.250935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596926, 40.564022, 26.679188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360771, 40.271420, 26.542757>,  <30.219078, 40.095856, 26.460897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360771, 40.271420, 26.542757>,  <30.596926, 40.564022, 26.679188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360771, 40.271420, 26.542757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265353, -0.223180, 0.937965,
		-0.762254, 0.644269, -0.062346,
		-0.590388, -0.731511, -0.341079,
		30.183655, 40.051968, 26.440434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000723, 40.578354, 27.136557>,  <30.596926, 40.564022, 26.679188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000723, 40.578354, 27.136557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970781, 40.220387, 26.960596>,  <29.952816, 40.005604, 26.855019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970781, 40.220387, 26.960596>,  <30.000723, 40.578354, 27.136557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970781, 40.220387, 26.960596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170012, -0.423229, 0.889928,
		-0.982595, 0.141403, -0.120467,
		-0.074853, -0.894920, -0.439903,
		29.948326, 39.951912, 26.828625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320721, 40.210388, 27.378706>,  <30.000723, 40.578354, 27.136557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320721, 40.210388, 27.378706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551590, 39.915600, 27.237999>,  <29.690111, 39.738728, 27.153574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551590, 39.915600, 27.237999>,  <29.320721, 40.210388, 27.378706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551590, 39.915600, 27.237999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250998, -0.570008, 0.782362,
		-0.777092, -0.363265, -0.513972,
		0.577173, -0.736973, -0.351769,
		29.724743, 39.694508, 27.132469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930960, 39.466724, 27.356129>,  <29.320721, 40.210388, 27.378706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930960, 39.466724, 27.356129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326124, 39.408794, 27.378246>,  <29.563223, 39.374035, 27.391518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326124, 39.408794, 27.378246>,  <28.930960, 39.466724, 27.356129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326124, 39.408794, 27.378246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142073, -0.703092, 0.696762,
		-0.062034, -0.696194, -0.715168,
		0.987911, -0.144829, 0.055294,
		29.622498, 39.365345, 27.394835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965860, 38.725708, 27.420168>,  <28.930960, 39.466724, 27.356129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965860, 38.725708, 27.420168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333767, 38.846012, 27.521025>,  <29.554510, 38.918194, 27.581539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333767, 38.846012, 27.521025>,  <28.965860, 38.725708, 27.420168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333767, 38.846012, 27.521025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079526, -0.771945, 0.630695,
		0.384326, -0.560040, -0.733927,
		0.919766, 0.300759, 0.252141,
		29.609697, 38.936241, 27.596666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377333, 38.101349, 27.636969>,  <28.965860, 38.725708, 27.420168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377333, 38.101349, 27.636969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600637, 38.409573, 27.759989>,  <29.734619, 38.594505, 27.833801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600637, 38.409573, 27.759989>,  <29.377333, 38.101349, 27.636969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600637, 38.409573, 27.759989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314461, -0.539553, 0.781023,
		0.767763, -0.339300, -0.543521,
		0.558259, 0.770557, 0.307553,
		29.768116, 38.640739, 27.852255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979359, 37.777863, 27.955379>,  <29.377333, 38.101349, 27.636969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979359, 37.777863, 27.955379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931740, 38.140514, 28.117296>,  <29.903168, 38.358105, 28.214445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931740, 38.140514, 28.117296>,  <29.979359, 37.777863, 27.955379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931740, 38.140514, 28.117296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300936, -0.355565, 0.884879,
		0.946184, 0.227159, -0.230508,
		-0.119048, 0.906627, 0.404790,
		29.896025, 38.412502, 28.238733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724617, 38.008060, 28.216444>,  <29.979359, 37.777863, 27.955379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724617, 38.008060, 28.216444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446157, 38.206833, 28.423689>,  <30.279081, 38.326096, 28.548037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446157, 38.206833, 28.423689>,  <30.724617, 38.008060, 28.216444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446157, 38.206833, 28.423689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442152, -0.271795, 0.854768,
		0.565579, 0.824130, -0.030509,
		-0.696148, 0.496929, 0.518112,
		30.237312, 38.355911, 28.579123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084822, 38.216839, 28.846619>,  <30.724617, 38.008060, 28.216444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084822, 38.216839, 28.846619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705294, 38.292694, 28.947638>,  <30.477577, 38.338207, 29.008249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705294, 38.292694, 28.947638>,  <31.084822, 38.216839, 28.846619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705294, 38.292694, 28.947638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254150, -0.016240, 0.967028,
		0.187486, 0.981720, -0.032788,
		-0.948819, 0.189637, 0.252548,
		30.420649, 38.349586, 29.023401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115993, 38.523819, 29.535490>,  <31.084822, 38.216839, 28.846619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115993, 38.523819, 29.535490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741222, 38.384010, 29.536173>,  <30.516359, 38.300125, 29.536583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741222, 38.384010, 29.536173>,  <31.115993, 38.523819, 29.535490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741222, 38.384010, 29.536173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118975, -0.314322, 0.941832,
		-0.328656, 0.882630, 0.336081,
		-0.936926, -0.349524, 0.001707,
		30.460144, 38.279152, 29.536686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882786, 38.691853, 30.232481>,  <31.115993, 38.523819, 29.535490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882786, 38.691853, 30.232481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660372, 38.399857, 30.073519>,  <30.526922, 38.224659, 29.978142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660372, 38.399857, 30.073519>,  <30.882786, 38.691853, 30.232481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660372, 38.399857, 30.073519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096918, -0.417928, 0.903296,
		-0.825488, 0.540781, 0.161634,
		-0.556037, -0.729994, -0.397406,
		30.493561, 38.180859, 29.954296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438318, 38.520157, 30.762558>,  <30.882786, 38.691853, 30.232481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438318, 38.520157, 30.762558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410194, 38.206223, 30.516275>,  <30.393320, 38.017864, 30.368505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410194, 38.206223, 30.516275>,  <30.438318, 38.520157, 30.762558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410194, 38.206223, 30.516275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005432, -0.617525, 0.786533,
		-0.997510, 0.051956, 0.047680,
		-0.070309, -0.784834, -0.615705,
		30.389101, 37.970772, 30.331564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931292, 38.009430, 31.110998>,  <30.438318, 38.520157, 30.762558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931292, 38.009430, 31.110998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167704, 37.823296, 30.847441>,  <30.309551, 37.711613, 30.689306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167704, 37.823296, 30.847441>,  <29.931292, 38.009430, 31.110998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167704, 37.823296, 30.847441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085190, -0.776255, 0.624637,
		-0.802141, -0.425308, -0.419145,
		0.591026, -0.465340, -0.658898,
		30.345013, 37.683693, 30.649773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617233, 37.387470, 30.986626>,  <29.931292, 38.009430, 31.110998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617233, 37.387470, 30.986626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001759, 37.320694, 30.898985>,  <30.232473, 37.280628, 30.846399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001759, 37.320694, 30.898985>,  <29.617233, 37.387470, 30.986626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001759, 37.320694, 30.898985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033722, -0.718109, 0.695114,
		-0.273385, -0.675611, -0.684698,
		0.961313, -0.166945, -0.219103,
		30.290154, 37.270611, 30.833254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621458, 36.698265, 31.113243>,  <29.617233, 37.387470, 30.986626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621458, 36.698265, 31.113243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002020, 36.820194, 31.095749>,  <30.230356, 36.893353, 31.085253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002020, 36.820194, 31.095749>,  <29.621458, 36.698265, 31.113243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002020, 36.820194, 31.095749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270590, -0.759712, 0.591286,
		0.147013, -0.574385, -0.805275,
		0.951403, 0.304826, -0.043735,
		30.287441, 36.911640, 31.082628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091196, 36.059902, 31.131296>,  <29.621458, 36.698265, 31.113243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091196, 36.059902, 31.131296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343725, 36.347004, 31.248777>,  <30.495243, 36.519264, 31.319265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343725, 36.347004, 31.248777>,  <30.091196, 36.059902, 31.131296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343725, 36.347004, 31.248777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512279, -0.670295, 0.536913,
		0.582239, -0.188507, -0.790862,
		0.631323, 0.717754, 0.293703,
		30.533123, 36.562328, 31.336887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836348, 35.890812, 31.051588>,  <30.091196, 36.059902, 31.131296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836348, 35.890812, 31.051588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841274, 36.182674, 31.325068>,  <30.844231, 36.357792, 31.489155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841274, 36.182674, 31.325068>,  <30.836348, 35.890812, 31.051588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841274, 36.182674, 31.325068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666711, -0.515573, 0.538220,
		0.745214, 0.449199, -0.492824,
		0.012319, 0.729661, 0.683699,
		30.844971, 36.401573, 31.530178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466928, 35.737873, 31.421946>,  <30.836348, 35.890812, 31.051588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466928, 35.737873, 31.421946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292936, 36.001507, 31.667351>,  <31.188541, 36.159687, 31.814594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292936, 36.001507, 31.667351>,  <31.466928, 35.737873, 31.421946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292936, 36.001507, 31.667351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505451, -0.385152, 0.772125,
		0.745191, 0.645962, -0.165600,
		-0.434982, 0.659084, 0.613514,
		31.162441, 36.199230, 31.851404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995275, 36.078094, 31.688862>,  <31.466928, 35.737873, 31.421946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995275, 36.078094, 31.688862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698835, 36.129036, 31.952543>,  <31.520971, 36.159603, 32.110752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698835, 36.129036, 31.952543>,  <31.995275, 36.078094, 31.688862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698835, 36.129036, 31.952543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620175, -0.246269, 0.744805,
		0.257198, 0.960797, 0.103527,
		-0.741102, 0.127358, 0.659202,
		31.476505, 36.167244, 32.150303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265633, 36.496620, 32.236141>,  <31.995275, 36.078094, 31.688862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265633, 36.496620, 32.236141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941507, 36.336197, 32.407040>,  <31.747032, 36.239944, 32.509579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941507, 36.336197, 32.407040>,  <32.265633, 36.496620, 32.236141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941507, 36.336197, 32.407040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528592, -0.185544, 0.828350,
		-0.252944, 0.897065, 0.362346,
		-0.810314, -0.401060, 0.427249,
		31.698414, 36.215878, 32.535213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181087, 36.903778, 32.891636>,  <32.265633, 36.496620, 32.236141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181087, 36.903778, 32.891636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016758, 36.539101, 32.889030>,  <31.918161, 36.320293, 32.887466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016758, 36.539101, 32.889030>,  <32.181087, 36.903778, 32.891636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016758, 36.539101, 32.889030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594472, -0.273282, 0.756254,
		-0.691251, 0.306813, 0.654246,
		-0.410822, -0.911692, -0.006515,
		31.893511, 36.265594, 32.887077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246124, 36.808842, 33.679478>,  <32.181087, 36.903778, 32.891636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246124, 36.808842, 33.679478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622551, 36.906002, 33.773628>,  <32.848408, 36.964298, 33.830116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622551, 36.906002, 33.773628>,  <32.246124, 36.808842, 33.679478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622551, 36.906002, 33.773628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057145, 0.800067, -0.597183,
		-0.333372, 0.548536, 0.766793,
		0.941062, 0.242902, 0.235374,
		32.904869, 36.978874, 33.844242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175144, 37.570801, 33.783806>,  <32.246124, 36.808842, 33.679478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175144, 37.570801, 33.783806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548904, 37.460152, 33.694027>,  <32.773159, 37.393764, 33.640160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548904, 37.460152, 33.694027>,  <32.175144, 37.570801, 33.783806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548904, 37.460152, 33.694027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128101, 0.848853, -0.512872,
		0.332393, 0.450476, 0.828605,
		0.934401, -0.276621, -0.224446,
		32.829224, 37.377167, 33.626694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613441, 38.111465, 33.821106>,  <32.175144, 37.570801, 33.783806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613441, 38.111465, 33.821106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815029, 37.867619, 33.576363>,  <32.935982, 37.721310, 33.429516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815029, 37.867619, 33.576363>,  <32.613441, 38.111465, 33.821106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815029, 37.867619, 33.576363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167640, 0.763971, -0.623093,
		0.847296, 0.211448, 0.487216,
		0.503970, -0.609622, -0.611862,
		32.966221, 37.684731, 33.392803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136402, 38.582512, 33.553364>,  <32.613441, 38.111465, 33.821106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136402, 38.582512, 33.553364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169434, 38.266872, 33.309891>,  <33.189251, 38.077488, 33.163807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169434, 38.266872, 33.309891>,  <33.136402, 38.582512, 33.553364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169434, 38.266872, 33.309891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316358, 0.599937, -0.734842,
		0.945039, -0.131884, 0.299178,
		0.082574, -0.789102, -0.608686,
		33.194206, 38.030140, 33.127285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738846, 38.647396, 33.193760>,  <33.136402, 38.582512, 33.553364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738846, 38.647396, 33.193760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485962, 38.433979, 32.969032>,  <33.334232, 38.305927, 32.834194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485962, 38.433979, 32.969032>,  <33.738846, 38.647396, 33.193760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485962, 38.433979, 32.969032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248910, 0.546820, -0.799394,
		0.733725, -0.645229, -0.212902,
		-0.632211, -0.533542, -0.561820,
		33.296299, 38.273918, 32.800488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102314, 38.446236, 32.607082>,  <33.738846, 38.647396, 33.193760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102314, 38.446236, 32.607082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719246, 38.413048, 32.496822>,  <33.489407, 38.393135, 32.430664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719246, 38.413048, 32.496822>,  <34.102314, 38.446236, 32.607082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719246, 38.413048, 32.496822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204407, 0.478249, -0.854105,
		0.202699, -0.874295, -0.441045,
		-0.957669, -0.082973, -0.275653,
		33.431946, 38.388157, 32.414127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191029, 38.479790, 31.956245>,  <34.102314, 38.446236, 32.607082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191029, 38.479790, 31.956245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794731, 38.525055, 31.986254>,  <33.556953, 38.552216, 32.004257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794731, 38.525055, 31.986254>,  <34.191029, 38.479790, 31.956245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794731, 38.525055, 31.986254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007069, 0.594779, -0.803858,
		-0.135588, -0.795884, -0.590072,
		-0.990740, 0.113164, 0.075019,
		33.497509, 38.559006, 32.008759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858715, 38.381691, 31.281784>,  <34.191029, 38.479790, 31.956245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858715, 38.381691, 31.281784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597733, 38.607262, 31.484282>,  <33.441143, 38.742603, 31.605780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597733, 38.607262, 31.484282>,  <33.858715, 38.381691, 31.281784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597733, 38.607262, 31.484282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141777, 0.565395, -0.812544,
		-0.744446, -0.601923, -0.288944,
		-0.652457, 0.563929, 0.506245,
		33.401997, 38.776440, 31.636154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121609, 38.356953, 30.833538>,  <33.858715, 38.381691, 31.281784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121609, 38.356953, 30.833538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054169, 38.670864, 31.072100>,  <33.013706, 38.859211, 31.215237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054169, 38.670864, 31.072100>,  <33.121609, 38.356953, 30.833538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054169, 38.670864, 31.072100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015090, 0.602939, -0.797644,
		-0.985569, -0.143482, -0.089813,
		-0.168599, 0.784778, 0.596404,
		33.003590, 38.906296, 31.251020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550331, 38.747597, 30.580652>,  <33.121609, 38.356953, 30.833538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550331, 38.747597, 30.580652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741390, 39.013618, 30.810278>,  <32.856026, 39.173233, 30.948053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741390, 39.013618, 30.810278>,  <32.550331, 38.747597, 30.580652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741390, 39.013618, 30.810278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101518, 0.690825, -0.715859,
		-0.872666, 0.283651, 0.397487,
		0.477648, 0.665058, 0.574064,
		32.884686, 39.213135, 30.982496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998898, 39.306118, 30.710779>,  <32.550331, 38.747597, 30.580652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998898, 39.306118, 30.710779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382717, 39.416965, 30.730677>,  <32.613010, 39.483475, 30.742615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382717, 39.416965, 30.730677>,  <31.998898, 39.306118, 30.710779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382717, 39.416965, 30.730677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135968, 0.610820, -0.780007,
		-0.246538, 0.741690, 0.623790,
		0.959548, 0.277117, 0.049744,
		32.670582, 39.500099, 30.745600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939764, 40.023769, 30.617527>,  <31.998898, 39.306118, 30.710779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939764, 40.023769, 30.617527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332352, 39.984791, 30.551533>,  <32.567905, 39.961403, 30.511936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332352, 39.984791, 30.551533>,  <31.939764, 40.023769, 30.617527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332352, 39.984791, 30.551533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072381, 0.608699, -0.790092,
		0.177416, 0.787394, 0.590367,
		0.981471, -0.097444, -0.164986,
		32.626793, 39.955559, 30.502037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208237, 40.707115, 30.598494>,  <31.939764, 40.023769, 30.617527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208237, 40.707115, 30.598494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461735, 40.479786, 30.388590>,  <32.613834, 40.343388, 30.262648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461735, 40.479786, 30.388590>,  <32.208237, 40.707115, 30.598494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461735, 40.479786, 30.388590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051703, 0.645748, -0.761798,
		0.771811, 0.509919, 0.379857,
		0.633747, -0.568324, -0.524760,
		32.651859, 40.309288, 30.231161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668262, 41.174339, 30.238218>,  <32.208237, 40.707115, 30.598494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668262, 41.174339, 30.238218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720795, 40.826866, 30.047165>,  <32.752316, 40.618382, 29.932533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720795, 40.826866, 30.047165>,  <32.668262, 41.174339, 30.238218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720795, 40.826866, 30.047165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059108, 0.487812, -0.870945,
		0.989575, 0.086152, 0.115412,
		0.131333, -0.868687, -0.477634,
		32.760193, 40.566261, 29.903875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058716, 41.392010, 29.689947>,  <32.668262, 41.174339, 30.238218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058716, 41.392010, 29.689947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924664, 41.049011, 29.533800>,  <32.844234, 40.843212, 29.440111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924664, 41.049011, 29.533800>,  <33.058716, 41.392010, 29.689947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924664, 41.049011, 29.533800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018641, 0.420281, -0.907202,
		0.941989, -0.296751, -0.156832,
		-0.335127, -0.857498, -0.390369,
		32.824127, 40.791763, 29.416689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401680, 41.299965, 29.071873>,  <33.058716, 41.392010, 29.689947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401680, 41.299965, 29.071873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074879, 41.069324, 29.069212>,  <32.878799, 40.930943, 29.067616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074879, 41.069324, 29.069212>,  <33.401680, 41.299965, 29.071873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074879, 41.069324, 29.069212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124724, 0.187964, -0.974225,
		0.562986, -0.795113, -0.225482,
		-0.817002, -0.576598, -0.006651,
		32.829777, 40.896347, 29.067217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496586, 40.967472, 28.459267>,  <33.401680, 41.299965, 29.071873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496586, 40.967472, 28.459267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109673, 40.922508, 28.550247>,  <32.877525, 40.895531, 28.604836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109673, 40.922508, 28.550247>,  <33.496586, 40.967472, 28.459267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109673, 40.922508, 28.550247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240419, 0.119743, -0.963255,
		0.081039, -0.986421, -0.142849,
		-0.967280, -0.112405, 0.227450,
		32.819489, 40.888786, 28.618483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270966, 40.677925, 27.887268>,  <33.496586, 40.967472, 28.459267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270966, 40.677925, 27.887268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916386, 40.784145, 28.038889>,  <32.703636, 40.847878, 28.129862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916386, 40.784145, 28.038889>,  <33.270966, 40.677925, 27.887268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916386, 40.784145, 28.038889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324123, 0.228423, -0.918024,
		-0.330370, -0.936645, -0.116413,
		-0.886453, 0.265556, 0.379052,
		32.650448, 40.863811, 28.152605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818558, 40.341091, 27.441227>,  <33.270966, 40.677925, 27.887268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818558, 40.341091, 27.441227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630615, 40.625763, 27.650126>,  <32.517849, 40.796566, 27.775465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630615, 40.625763, 27.650126>,  <32.818558, 40.341091, 27.441227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630615, 40.625763, 27.650126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468463, 0.300407, -0.830842,
		-0.748183, -0.635029, 0.192249,
		-0.469856, 0.711683, 0.522247,
		32.489658, 40.839268, 27.806799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149422, 40.309803, 27.193899>,  <32.818558, 40.341091, 27.441227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149422, 40.309803, 27.193899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177143, 40.688271, 27.320370>,  <32.193775, 40.915352, 27.396252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177143, 40.688271, 27.320370>,  <32.149422, 40.309803, 27.193899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177143, 40.688271, 27.320370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442899, 0.313171, -0.840098,
		-0.893889, -0.081813, 0.440760,
		0.069303, 0.946166, 0.316175,
		32.197933, 40.972122, 27.415222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601429, 40.647518, 26.798548>,  <32.149422, 40.309803, 27.193899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601429, 40.647518, 26.798548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827126, 40.950829, 26.929174>,  <31.962543, 41.132816, 27.007551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827126, 40.950829, 26.929174>,  <31.601429, 40.647518, 26.798548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827126, 40.950829, 26.929174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244395, 0.531224, -0.811216,
		-0.788606, 0.377912, 0.485059,
		0.564244, 0.758276, 0.326567,
		31.996399, 41.178310, 27.027145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101768, 41.225670, 26.725153>,  <31.601429, 40.647518, 26.798548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101768, 41.225670, 26.725153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486019, 41.335648, 26.709146>,  <31.716570, 41.401634, 26.699543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486019, 41.335648, 26.709146>,  <31.101768, 41.225670, 26.725153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486019, 41.335648, 26.709146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172949, 0.479003, -0.860607,
		-0.217452, 0.833643, 0.507695,
		0.960627, 0.274946, -0.040018,
		31.774208, 41.418133, 26.697142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060560, 41.921974, 26.569452>,  <31.101768, 41.225670, 26.725153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060560, 41.921974, 26.569452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423887, 41.788712, 26.468288>,  <31.641884, 41.708755, 26.407589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423887, 41.788712, 26.468288>,  <31.060560, 41.921974, 26.569452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423887, 41.788712, 26.468288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052613, 0.508844, -0.859250,
		0.414956, 0.793779, 0.444664,
		0.908319, -0.333155, -0.252911,
		31.696383, 41.688766, 26.392414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433176, 42.516041, 26.131271>,  <31.060560, 41.921974, 26.569452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433176, 42.516041, 26.131271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660213, 42.194927, 26.058186>,  <31.796436, 42.002258, 26.014334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660213, 42.194927, 26.058186>,  <31.433176, 42.516041, 26.131271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660213, 42.194927, 26.058186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161933, 0.326446, -0.931242,
		0.807229, 0.498977, 0.315284,
		0.567591, -0.802780, -0.182716,
		31.830490, 41.954094, 26.003370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092461, 42.705383, 25.934355>,  <31.433176, 42.516041, 26.131271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092461, 42.705383, 25.934355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070992, 42.328045, 25.803379>,  <32.058109, 42.101643, 25.724794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070992, 42.328045, 25.803379>,  <32.092461, 42.705383, 25.934355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070992, 42.328045, 25.803379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273528, 0.301479, -0.913397,
		0.960365, -0.138587, 0.241851,
		-0.053672, -0.943348, -0.327437,
		32.054890, 42.045040, 25.705149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671711, 42.564716, 25.575722>,  <32.092461, 42.705383, 25.934355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671711, 42.564716, 25.575722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403751, 42.305538, 25.430721>,  <32.242977, 42.150032, 25.343721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403751, 42.305538, 25.430721>,  <32.671711, 42.564716, 25.575722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403751, 42.305538, 25.430721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097738, 0.407035, -0.908168,
		0.735994, -0.643809, -0.209342,
		-0.669896, -0.647945, -0.362500,
		32.202782, 42.111156, 25.321972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005543, 42.310825, 25.072371>,  <32.671711, 42.564716, 25.575722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005543, 42.310825, 25.072371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610592, 42.279510, 25.017300>,  <32.373623, 42.260723, 24.984257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610592, 42.279510, 25.017300>,  <33.005543, 42.310825, 25.072371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610592, 42.279510, 25.017300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084995, 0.471575, -0.877720,
		0.133638, -0.878344, -0.458969,
		-0.987379, -0.078287, -0.137675,
		32.314377, 42.256023, 24.975996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891628, 41.884644, 24.475662>,  <33.005543, 42.310825, 25.072371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891628, 41.884644, 24.475662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548756, 42.088013, 24.508499>,  <32.343033, 42.210033, 24.528202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548756, 42.088013, 24.508499>,  <32.891628, 41.884644, 24.475662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548756, 42.088013, 24.508499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109094, 0.335039, -0.935867,
		-0.503322, -0.793255, -0.342656,
		-0.857185, 0.508425, 0.082093,
		32.291599, 42.240540, 24.533127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604195, 41.808517, 23.846550>,  <32.891628, 41.884644, 24.475662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604195, 41.808517, 23.846550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384129, 42.109821, 23.990726>,  <32.252090, 42.290604, 24.077232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384129, 42.109821, 23.990726>,  <32.604195, 41.808517, 23.846550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384129, 42.109821, 23.990726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049834, 0.401252, -0.914611,
		-0.833570, -0.521146, -0.183215,
		-0.550161, 0.753262, 0.360443,
		32.219082, 42.335800, 24.098860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968010, 41.909885, 23.508348>,  <32.604195, 41.808517, 23.846550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968010, 41.909885, 23.508348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067738, 42.266125, 23.660490>,  <32.127575, 42.479870, 23.751774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067738, 42.266125, 23.660490>,  <31.968010, 41.909885, 23.508348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067738, 42.266125, 23.660490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088613, 0.370127, -0.924745,
		-0.964359, 0.264259, 0.013360,
		0.249318, 0.890602, 0.380352,
		32.142532, 42.533306, 23.774595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757738, 42.339794, 23.036749>,  <31.968010, 41.909885, 23.508348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757738, 42.339794, 23.036749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005981, 42.572830, 23.246675>,  <32.154926, 42.712650, 23.372631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005981, 42.572830, 23.246675>,  <31.757738, 42.339794, 23.036749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005981, 42.572830, 23.246675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375788, 0.366453, -0.851173,
		-0.688205, 0.725467, 0.008494,
		0.620611, 0.582589, 0.524817,
		32.192165, 42.747608, 23.404121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850946, 42.913239, 22.601477>,  <31.757738, 42.339794, 23.036749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850946, 42.913239, 22.601477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137497, 42.987026, 22.870630>,  <32.309425, 43.031300, 23.032124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137497, 42.987026, 22.870630>,  <31.850946, 42.913239, 22.601477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137497, 42.987026, 22.870630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510137, 0.519450, -0.685516,
		-0.475990, 0.834351, 0.278015,
		0.716376, 0.184473, 0.672886,
		32.352409, 43.042370, 23.072496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934107, 43.626339, 22.525963>,  <31.850946, 42.913239, 22.601477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934107, 43.626339, 22.525963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269611, 43.472942, 22.680580>,  <32.470913, 43.380905, 22.773350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269611, 43.472942, 22.680580>,  <31.934107, 43.626339, 22.525963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269611, 43.472942, 22.680580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541805, 0.517252, -0.662493,
		0.054123, 0.765103, 0.641629,
		0.838760, -0.383494, 0.386542,
		32.521240, 43.357895, 22.796543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401691, 44.204159, 22.649693>,  <31.934107, 43.626339, 22.525963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401691, 44.204159, 22.649693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639263, 43.882969, 22.629787>,  <32.781807, 43.690254, 22.617844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639263, 43.882969, 22.629787>,  <32.401691, 44.204159, 22.649693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639263, 43.882969, 22.629787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514090, 0.426376, -0.744255,
		0.618839, 0.416450, 0.666039,
		0.593928, -0.802978, -0.049765,
		32.817440, 43.642075, 22.614859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157803, 44.469086, 22.548563>,  <32.401691, 44.204159, 22.649693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157803, 44.469086, 22.548563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161385, 44.082314, 22.446611>,  <33.163536, 43.850250, 22.385441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161385, 44.082314, 22.446611>,  <33.157803, 44.469086, 22.548563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161385, 44.082314, 22.446611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632449, 0.202910, -0.747554,
		0.774550, -0.154500, 0.613353,
		0.008958, -0.966932, -0.254877,
		33.164074, 43.792233, 22.370148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827801, 44.363804, 22.391716>,  <33.157803, 44.469086, 22.548563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827801, 44.363804, 22.391716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611794, 44.070000, 22.227339>,  <33.482189, 43.893719, 22.128712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611794, 44.070000, 22.227339>,  <33.827801, 44.363804, 22.391716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611794, 44.070000, 22.227339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603397, 0.002528, -0.797437,
		0.586763, -0.678595, 0.441835,
		-0.540020, -0.734508, -0.410945,
		33.449787, 43.849648, 22.104055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346111, 43.863911, 22.276894>,  <33.827801, 44.363804, 22.391716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346111, 43.863911, 22.276894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026268, 43.827419, 22.039474>,  <33.834362, 43.805523, 21.897024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026268, 43.827419, 22.039474>,  <34.346111, 43.863911, 22.276894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026268, 43.827419, 22.039474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553504, 0.271403, -0.787384,
		0.232915, -0.958133, -0.166526,
		-0.799615, -0.091221, -0.593545,
		33.786385, 43.800049, 21.861410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610672, 43.626553, 21.593588>,  <34.346111, 43.863911, 22.276894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610672, 43.626553, 21.593588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237507, 43.718956, 21.483084>,  <34.013607, 43.774399, 21.416782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237507, 43.718956, 21.483084>,  <34.610672, 43.626553, 21.593588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237507, 43.718956, 21.483084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329567, 0.238474, -0.913518,
		-0.145148, -0.943274, -0.298606,
		-0.932908, 0.231006, -0.276258,
		33.957634, 43.788258, 21.400206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365997, 43.120525, 21.186142>,  <34.610672, 43.626553, 21.593588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365997, 43.120525, 21.186142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203125, 43.477722, 21.109446>,  <34.105400, 43.692039, 21.063427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203125, 43.477722, 21.109446>,  <34.365997, 43.120525, 21.186142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203125, 43.477722, 21.109446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559457, 0.077913, -0.825189,
		-0.721951, -0.443272, -0.531317,
		-0.407180, 0.892995, -0.191742,
		34.080971, 43.745621, 21.051924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015064, 43.563831, 20.835485>,  <34.365997, 43.120525, 21.186142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015064, 43.563831, 20.835485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325970, 43.320374, 20.771727>,  <35.512512, 43.174297, 20.733471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325970, 43.320374, 20.771727>,  <35.015064, 43.563831, 20.835485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325970, 43.320374, 20.771727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384423, -0.659973, 0.645488,
		-0.498072, -0.440440, -0.746952,
		0.777267, -0.608645, -0.159398,
		35.559151, 43.137779, 20.723907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761257, 42.778980, 20.607334>,  <35.015064, 43.563831, 20.835485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761257, 42.778980, 20.607334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139698, 42.765556, 20.736183>,  <35.366764, 42.757504, 20.813494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139698, 42.765556, 20.736183>,  <34.761257, 42.778980, 20.607334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139698, 42.765556, 20.736183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245028, -0.724565, 0.644180,
		0.211781, -0.688389, -0.693735,
		0.946102, -0.033560, 0.322124,
		35.423531, 42.755489, 20.832821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852764, 42.012314, 20.776745>,  <34.761257, 42.778980, 20.607334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852764, 42.012314, 20.776745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138092, 42.202885, 20.982342>,  <35.309288, 42.317226, 21.105700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138092, 42.202885, 20.982342>,  <34.852764, 42.012314, 20.776745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138092, 42.202885, 20.982342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004063, -0.736199, 0.676753,
		0.700824, -0.480655, -0.527084,
		0.713323, 0.476426, 0.513993,
		35.352089, 42.345814, 21.136539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311520, 41.476875, 21.001997>,  <34.852764, 42.012314, 20.776745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311520, 41.476875, 21.001997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377682, 41.757721, 21.279034>,  <35.417377, 41.926228, 21.445255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377682, 41.757721, 21.279034>,  <35.311520, 41.476875, 21.001997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377682, 41.757721, 21.279034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105316, -0.685673, 0.720251,
		0.980587, -0.192071, -0.039467,
		0.165401, 0.702112, 0.692590,
		35.427303, 41.968353, 21.486811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763954, 41.249607, 21.535227>,  <35.311520, 41.476875, 21.001997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763954, 41.249607, 21.535227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611889, 41.568176, 21.723349>,  <35.520649, 41.759319, 21.836222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611889, 41.568176, 21.723349>,  <35.763954, 41.249607, 21.535227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611889, 41.568176, 21.723349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051270, -0.489553, 0.870465,
		0.923499, 0.355028, 0.145276,
		-0.380159, 0.796425, 0.470304,
		35.497841, 41.807102, 21.864439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170265, 41.372940, 22.229103>,  <35.763954, 41.249607, 21.535227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170265, 41.372940, 22.229103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820435, 41.558331, 22.286102>,  <35.610535, 41.669563, 22.320303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820435, 41.558331, 22.286102>,  <36.170265, 41.372940, 22.229103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820435, 41.558331, 22.286102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135109, -0.515178, 0.846367,
		0.465680, 0.720962, 0.513183,
		-0.874579, 0.463472, 0.142499,
		35.558060, 41.697372, 22.328852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201702, 41.465164, 22.906248>,  <36.170265, 41.372940, 22.229103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201702, 41.465164, 22.906248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817726, 41.517300, 22.807034>,  <35.587341, 41.548580, 22.747505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817726, 41.517300, 22.807034>,  <36.201702, 41.465164, 22.906248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817726, 41.517300, 22.807034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280136, -0.464771, 0.839947,
		-0.005799, 0.875785, 0.482667,
		-0.959943, 0.130342, -0.248034,
		35.529743, 41.556400, 22.732624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905552, 41.816067, 23.451982>,  <36.201702, 41.465164, 22.906248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905552, 41.816067, 23.451982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614407, 41.631187, 23.249367>,  <35.439720, 41.520260, 23.127798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614407, 41.631187, 23.249367>,  <35.905552, 41.816067, 23.451982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614407, 41.631187, 23.249367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360046, -0.371075, 0.855962,
		-0.583591, 0.805402, 0.103678,
		-0.727866, -0.462203, -0.506538,
		35.396046, 41.492527, 23.097404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347168, 41.926331, 23.810171>,  <35.905552, 41.816067, 23.451982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347168, 41.926331, 23.810171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258965, 41.595387, 23.603539>,  <35.206043, 41.396820, 23.479559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258965, 41.595387, 23.603539>,  <35.347168, 41.926331, 23.810171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258965, 41.595387, 23.603539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513985, -0.351552, 0.782452,
		-0.828971, 0.438055, -0.347727,
		-0.220513, -0.827357, -0.516580,
		35.192810, 41.347179, 23.448565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588196, 41.900597, 23.831179>,  <35.347168, 41.926331, 23.810171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588196, 41.900597, 23.831179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732567, 41.539619, 23.737091>,  <34.819187, 41.323032, 23.680639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732567, 41.539619, 23.737091>,  <34.588196, 41.900597, 23.831179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732567, 41.539619, 23.737091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563544, -0.412009, 0.716008,
		-0.743069, -0.125869, -0.657271,
		0.360924, -0.902444, -0.235219,
		34.840843, 41.268887, 23.666525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027302, 41.408783, 23.869116>,  <34.588196, 41.900597, 23.831179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027302, 41.408783, 23.869116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345367, 41.167889, 23.897459>,  <34.536209, 41.023354, 23.914465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345367, 41.167889, 23.897459>,  <34.027302, 41.408783, 23.869116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345367, 41.167889, 23.897459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434905, -0.484960, 0.758730,
		-0.422568, -0.634136, -0.647539,
		0.795169, -0.602233, 0.070861,
		34.583916, 40.987217, 23.918716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799053, 40.726212, 24.041222>,  <34.027302, 41.408783, 23.869116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799053, 40.726212, 24.041222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180450, 40.702297, 24.159386>,  <34.409290, 40.687950, 24.230284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180450, 40.702297, 24.159386>,  <33.799053, 40.726212, 24.041222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180450, 40.702297, 24.159386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276255, -0.565282, 0.777264,
		0.120523, -0.822728, -0.555511,
		0.953497, -0.059784, 0.295413,
		34.466499, 40.684361, 24.248009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963596, 39.967243, 24.087826>,  <33.799053, 40.726212, 24.041222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963596, 39.967243, 24.087826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216286, 40.185562, 24.308022>,  <34.367901, 40.316551, 24.440140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216286, 40.185562, 24.308022>,  <33.963596, 39.967243, 24.087826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216286, 40.185562, 24.308022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131317, -0.624522, 0.769889,
		0.763992, -0.558644, -0.322852,
		0.631722, 0.545793, 0.550489,
		34.405804, 40.349300, 24.473167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493664, 39.436504, 24.405666>,  <33.963596, 39.967243, 24.087826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493664, 39.436504, 24.405666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494778, 39.767078, 24.630877>,  <34.495445, 39.965424, 24.766003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494778, 39.767078, 24.630877>,  <34.493664, 39.436504, 24.405666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494778, 39.767078, 24.630877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245925, -0.546304, 0.800670,
		0.969285, 0.136230, -0.204764,
		0.002788, 0.826434, 0.563027,
		34.495613, 40.015007, 24.799784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067776, 39.329338, 24.859972>,  <34.493664, 39.436504, 24.405666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067776, 39.329338, 24.859972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865005, 39.615696, 25.052023>,  <34.743343, 39.787510, 25.167253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865005, 39.615696, 25.052023>,  <35.067776, 39.329338, 24.859972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865005, 39.615696, 25.052023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164121, -0.466651, 0.869081,
		0.846223, 0.519356, 0.119062,
		-0.506923, 0.715895, 0.480128,
		34.712929, 39.830463, 25.196062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478821, 39.466564, 25.409494>,  <35.067776, 39.329338, 24.859972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478821, 39.466564, 25.409494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108120, 39.589054, 25.496536>,  <34.885700, 39.662548, 25.548761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108120, 39.589054, 25.496536>,  <35.478821, 39.466564, 25.409494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108120, 39.589054, 25.496536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073041, -0.421310, 0.903971,
		0.368499, 0.853653, 0.368084,
		-0.926754, 0.306227, 0.217604,
		34.830093, 39.680923, 25.561817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468750, 39.927937, 26.004999>,  <35.478821, 39.466564, 25.409494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468750, 39.927937, 26.004999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098488, 39.776604, 26.002666>,  <34.876331, 39.685802, 26.001266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098488, 39.776604, 26.002666>,  <35.468750, 39.927937, 26.004999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098488, 39.776604, 26.002666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079885, -0.210474, 0.974330,
		-0.369847, 0.901425, 0.225048,
		-0.925652, -0.378331, -0.005833,
		34.820793, 39.663105, 26.000917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054039, 40.121841, 26.623350>,  <35.468750, 39.927937, 26.004999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054039, 40.121841, 26.623350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800938, 39.832283, 26.513371>,  <34.649078, 39.658546, 26.447382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800938, 39.832283, 26.513371>,  <35.054039, 40.121841, 26.623350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800938, 39.832283, 26.513371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093287, -0.281223, 0.955097,
		-0.768717, 0.629987, 0.110414,
		-0.632749, -0.723899, -0.274950,
		34.611115, 39.615112, 26.430885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451309, 40.181541, 27.051319>,  <35.054039, 40.121841, 26.623350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451309, 40.181541, 27.051319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469433, 39.797764, 26.940027>,  <34.480309, 39.567497, 26.873253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469433, 39.797764, 26.940027>,  <34.451309, 40.181541, 27.051319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469433, 39.797764, 26.940027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341481, -0.276614, 0.898262,
		-0.938796, 0.054311, -0.340165,
		0.045309, -0.959445, -0.278230,
		34.483025, 39.509930, 26.856558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694725, 39.931572, 27.291466>,  <34.451309, 40.181541, 27.051319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694725, 39.931572, 27.291466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929600, 39.614101, 27.227856>,  <34.070526, 39.423618, 27.189690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929600, 39.614101, 27.227856>,  <33.694725, 39.931572, 27.291466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929600, 39.614101, 27.227856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377735, -0.442430, 0.813371,
		-0.715911, -0.417531, -0.559588,
		0.587186, -0.793677, -0.159025,
		34.105755, 39.375999, 27.180149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378563, 39.446331, 27.683033>,  <33.694725, 39.931572, 27.291466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378563, 39.446331, 27.683033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730862, 39.261784, 27.640266>,  <33.942242, 39.151054, 27.614607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730862, 39.261784, 27.640266>,  <33.378563, 39.446331, 27.683033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730862, 39.261784, 27.640266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036047, -0.290411, 0.956223,
		-0.472221, -0.838333, -0.272408,
		0.880743, -0.461368, -0.106919,
		33.995083, 39.123375, 27.608191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338230, 38.853245, 28.123600>,  <33.378563, 39.446331, 27.683033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338230, 38.853245, 28.123600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732952, 38.892860, 28.072369>,  <33.969788, 38.916630, 28.041630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732952, 38.892860, 28.072369>,  <33.338230, 38.853245, 28.123600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732952, 38.892860, 28.072369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150470, -0.269024, 0.951307,
		0.059758, -0.958028, -0.280377,
		0.986807, 0.099036, -0.128078,
		34.028996, 38.922573, 28.033945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737263, 38.256744, 28.375031>,  <33.338230, 38.853245, 28.123600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737263, 38.256744, 28.375031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026264, 38.533291, 28.375982>,  <34.199665, 38.699219, 28.376554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026264, 38.533291, 28.375982>,  <33.737263, 38.256744, 28.375031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026264, 38.533291, 28.375982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235175, -0.249005, 0.939516,
		0.650138, -0.678245, -0.342499,
		0.722505, 0.691361, 0.002382,
		34.243015, 38.740700, 28.376698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271519, 37.923183, 28.762220>,  <33.737263, 38.256744, 28.375031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271519, 37.923183, 28.762220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378407, 38.308262, 28.745165>,  <34.442539, 38.539307, 28.734932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378407, 38.308262, 28.745165>,  <34.271519, 37.923183, 28.762220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378407, 38.308262, 28.745165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500940, -0.100976, 0.859571,
		0.823197, -0.251054, -0.509233,
		0.267219, 0.962692, -0.042640,
		34.458572, 38.597069, 28.732372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965584, 37.887062, 28.852690>,  <34.271519, 37.923183, 28.762220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965584, 37.887062, 28.852690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841064, 38.253258, 28.954655>,  <34.766354, 38.472973, 29.015833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841064, 38.253258, 28.954655>,  <34.965584, 37.887062, 28.852690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841064, 38.253258, 28.954655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539855, -0.050391, 0.840248,
		0.782080, 0.399183, -0.478543,
		-0.311298, 0.915486, 0.254911,
		34.747677, 38.527905, 29.031128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578739, 38.230183, 29.144299>,  <34.965584, 37.887062, 28.852690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578739, 38.230183, 29.144299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253036, 38.417885, 29.280996>,  <35.057617, 38.530506, 29.363014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253036, 38.417885, 29.280996>,  <35.578739, 38.230183, 29.144299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253036, 38.417885, 29.280996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422782, 0.075955, 0.903043,
		0.397803, 0.879788, -0.260240,
		-0.814253, 0.469258, 0.341743,
		35.008762, 38.558662, 29.383520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777454, 38.888710, 29.427181>,  <35.578739, 38.230183, 29.144299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777454, 38.888710, 29.427181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434738, 38.800415, 29.613592>,  <35.229107, 38.747440, 29.725439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434738, 38.800415, 29.613592>,  <35.777454, 38.888710, 29.427181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434738, 38.800415, 29.613592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451564, 0.115210, 0.884769,
		-0.248989, 0.968506, 0.000964,
		-0.856793, -0.220734, 0.466029,
		35.177700, 38.734196, 29.753401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572441, 39.393806, 29.836887>,  <35.777454, 38.888710, 29.427181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572441, 39.393806, 29.836887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398403, 39.066704, 29.987602>,  <35.293980, 38.870441, 30.078032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398403, 39.066704, 29.987602>,  <35.572441, 39.393806, 29.836887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398403, 39.066704, 29.987602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524666, 0.109817, 0.844195,
		-0.731723, 0.564993, 0.381267,
		-0.435095, -0.817755, 0.376788,
		35.267876, 38.821377, 30.100639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489117, 39.590897, 30.494318>,  <35.572441, 39.393806, 29.836887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489117, 39.590897, 30.494318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438614, 39.194099, 30.493465>,  <35.408314, 38.956020, 30.492954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438614, 39.194099, 30.493465>,  <35.489117, 39.590897, 30.494318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438614, 39.194099, 30.493465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475528, -0.062406, 0.877485,
		-0.870594, 0.109774, 0.479601,
		-0.126255, -0.991996, -0.002129,
		35.400738, 38.896500, 30.492826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244976, 39.460491, 31.156666>,  <35.489117, 39.590897, 30.494318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244976, 39.460491, 31.156666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405907, 39.128876, 31.001322>,  <35.502464, 38.929905, 30.908115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405907, 39.128876, 31.001322>,  <35.244976, 39.460491, 31.156666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405907, 39.128876, 31.001322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602654, -0.079498, 0.794033,
		-0.689160, -0.553508, 0.467640,
		0.402327, -0.829041, -0.388361,
		35.526604, 38.880165, 30.884813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199398, 38.909031, 31.794947>,  <35.244976, 39.460491, 31.156666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199398, 38.909031, 31.794947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452171, 38.793430, 31.507298>,  <35.603836, 38.724068, 31.334707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452171, 38.793430, 31.507298>,  <35.199398, 38.909031, 31.794947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452171, 38.793430, 31.507298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611092, -0.384891, 0.691683,
		-0.476684, -0.876547, -0.066616,
		0.631932, -0.289006, -0.719123,
		35.641750, 38.706730, 31.291561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550655, 38.387104, 32.152046>,  <35.199398, 38.909031, 31.794947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550655, 38.387104, 32.152046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784145, 38.441586, 31.831867>,  <35.924240, 38.474274, 31.639759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784145, 38.441586, 31.831867>,  <35.550655, 38.387104, 32.152046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784145, 38.441586, 31.831867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803279, -0.240585, 0.544850,
		-0.118363, -0.961024, -0.249846,
		0.583723, 0.136206, -0.800447,
		35.959263, 38.482449, 31.591734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970123, 37.869072, 32.247219>,  <35.550655, 38.387104, 32.152046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970123, 37.869072, 32.247219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131214, 38.148041, 32.010098>,  <36.227867, 38.315422, 31.867825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131214, 38.148041, 32.010098>,  <35.970123, 37.869072, 32.247219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131214, 38.148041, 32.010098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844156, -0.032625, 0.535105,
		0.353853, -0.715918, -0.601871,
		0.402727, 0.697422, -0.592802,
		36.252033, 38.357265, 31.832256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616474, 37.539974, 32.072071>,  <35.970123, 37.869072, 32.247219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616474, 37.539974, 32.072071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640511, 37.934326, 32.009548>,  <36.654934, 38.170937, 31.972034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640511, 37.934326, 32.009548>,  <36.616474, 37.539974, 32.072071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640511, 37.934326, 32.009548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854523, 0.030123, 0.518540,
		0.515926, -0.164728, -0.840646,
		0.060095, 0.985879, -0.156306,
		36.658539, 38.230091, 31.962656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212502, 37.521328, 31.878258>,  <36.616474, 37.539974, 32.072071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212502, 37.521328, 31.878258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121807, 37.899029, 31.973738>,  <37.067390, 38.125648, 32.031025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121807, 37.899029, 31.973738>,  <37.212502, 37.521328, 31.878258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121807, 37.899029, 31.973738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839699, 0.065345, 0.539106,
		0.493454, 0.322671, -0.807704,
		-0.226733, 0.944253, 0.238702,
		37.053787, 38.182304, 32.045349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853321, 37.818974, 31.746399>,  <37.212502, 37.521328, 31.878258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853321, 37.818974, 31.746399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641064, 38.074711, 31.968987>,  <37.513710, 38.228153, 32.102539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641064, 38.074711, 31.968987>,  <37.853321, 37.818974, 31.746399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641064, 38.074711, 31.968987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720721, -0.005161, 0.693206,
		0.446066, 0.768907, -0.458047,
		-0.530647, 0.639340, 0.556470,
		37.481869, 38.266514, 32.135929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303074, 38.404076, 31.922102>,  <37.853321, 37.818974, 31.746399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303074, 38.404076, 31.922102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015450, 38.371964, 32.198219>,  <37.842876, 38.352695, 32.363892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015450, 38.371964, 32.198219>,  <38.303074, 38.404076, 31.922102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015450, 38.371964, 32.198219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671353, 0.176376, 0.719844,
		-0.179538, 0.981044, -0.072931,
		-0.719062, -0.080277, 0.690293,
		37.799732, 38.347881, 32.405308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542301, 38.900208, 32.432182>,  <38.303074, 38.404076, 31.922102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542301, 38.900208, 32.432182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272903, 38.662613, 32.608173>,  <38.111263, 38.520058, 32.713768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272903, 38.662613, 32.608173>,  <38.542301, 38.900208, 32.432182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272903, 38.662613, 32.608173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388262, 0.222234, 0.894352,
		-0.629012, 0.773170, 0.080949,
		-0.673496, -0.593987, 0.439980,
		38.070854, 38.484417, 32.740166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067860, 39.321548, 32.930092>,  <38.542301, 38.900208, 32.432182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067860, 39.321548, 32.930092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132679, 38.940605, 33.033443>,  <38.171570, 38.712040, 33.095455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132679, 38.940605, 33.033443>,  <38.067860, 39.321548, 32.930092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132679, 38.940605, 33.033443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417498, 0.303421, 0.856522,
		-0.894112, -0.030922, 0.446775,
		0.162046, -0.952354, 0.258383,
		38.181293, 38.654900, 33.110958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788280, 39.235882, 33.630669>,  <38.067860, 39.321548, 32.930092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788280, 39.235882, 33.630669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075130, 38.965771, 33.561691>,  <38.247242, 38.803703, 33.520306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075130, 38.965771, 33.561691>,  <37.788280, 39.235882, 33.630669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075130, 38.965771, 33.561691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507446, 0.336301, 0.793347,
		-0.477736, -0.656433, 0.583836,
		0.717124, -0.675275, -0.172441,
		38.290268, 38.763187, 33.509960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930630, 38.811733, 34.278229>,  <37.788280, 39.235882, 33.630669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930630, 38.811733, 34.278229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261440, 38.777988, 34.055912>,  <38.459927, 38.757740, 33.922520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261440, 38.777988, 34.055912>,  <37.930630, 38.811733, 34.278229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261440, 38.777988, 34.055912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558958, 0.228799, 0.797005,
		0.059925, -0.969811, 0.236380,
		0.827028, -0.084366, -0.555794,
		38.509548, 38.752678, 33.889175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387154, 38.449547, 34.664825>,  <37.930630, 38.811733, 34.278229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387154, 38.449547, 34.664825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615185, 38.626846, 34.388119>,  <38.752003, 38.733227, 34.222095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615185, 38.626846, 34.388119>,  <38.387154, 38.449547, 34.664825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615185, 38.626846, 34.388119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632090, 0.301264, 0.713934,
		0.524858, -0.844255, -0.108433,
		0.570076, 0.443254, -0.691766,
		38.786209, 38.759823, 34.180588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050327, 38.264858, 34.830154>,  <38.387154, 38.449547, 34.664825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050327, 38.264858, 34.830154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113129, 38.582859, 34.595779>,  <39.150810, 38.773659, 34.455154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113129, 38.582859, 34.595779>,  <39.050327, 38.264858, 34.830154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113129, 38.582859, 34.595779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755131, 0.285735, 0.590028,
		0.636497, -0.535092, -0.555471,
		0.157001, 0.795004, -0.585934,
		39.160229, 38.821362, 34.419998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852554, 38.392128, 34.871033>,  <39.050327, 38.264858, 34.830154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852554, 38.392128, 34.871033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701653, 38.735966, 34.733173>,  <39.611111, 38.942268, 34.650459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701653, 38.735966, 34.733173>,  <39.852554, 38.392128, 34.871033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701653, 38.735966, 34.733173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489765, 0.501020, 0.713519,
		0.786010, 0.100381, -0.610009,
		-0.377251, 0.859594, -0.344644,
		39.588478, 38.993843, 34.629780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143105, 39.004845, 34.643169>,  <39.852554, 38.392128, 34.871033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143105, 39.004845, 34.643169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987953, 39.371613, 34.680691>,  <39.894863, 39.591675, 34.703205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987953, 39.371613, 34.680691>,  <40.143105, 39.004845, 34.643169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987953, 39.371613, 34.680691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507310, 0.127412, 0.852293,
		0.769536, 0.378176, -0.514585,
		-0.387881, 0.916924, 0.093804,
		39.871590, 39.646690, 34.708832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614182, 39.637367, 34.891483>,  <40.143105, 39.004845, 34.643169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614182, 39.637367, 34.891483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244381, 39.644653, 35.043785>,  <40.022503, 39.649025, 35.135166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244381, 39.644653, 35.043785>,  <40.614182, 39.637367, 34.891483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244381, 39.644653, 35.043785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378606, 0.159942, 0.911634,
		-0.044294, 0.986958, -0.154762,
		-0.924497, 0.018214, 0.380753,
		39.967033, 39.650116, 35.158012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504711, 40.338062, 35.278709>,  <40.614182, 39.637367, 34.891483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504711, 40.338062, 35.278709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237125, 40.080940, 35.427994>,  <40.076576, 39.926666, 35.517567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237125, 40.080940, 35.427994>,  <40.504711, 40.338062, 35.278709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237125, 40.080940, 35.427994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264140, 0.263749, 0.927721,
		-0.694780, 0.719192, -0.006648,
		-0.668963, -0.642806, 0.373215,
		40.036438, 39.888100, 35.539959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488056, 40.785122, 35.909645>,  <40.504711, 40.338062, 35.278709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488056, 40.785122, 35.909645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304752, 40.436180, 35.977760>,  <40.194771, 40.226814, 36.018631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304752, 40.436180, 35.977760>,  <40.488056, 40.785122, 35.909645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304752, 40.436180, 35.977760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348930, -0.000359, 0.937149,
		-0.817464, 0.488876, 0.304555,
		-0.458259, -0.872353, 0.170290,
		40.167274, 40.174473, 36.028847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066952, 40.693573, 36.525082>,  <40.488056, 40.785122, 35.909645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066952, 40.693573, 36.525082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219120, 40.340134, 36.415874>,  <40.310421, 40.128071, 36.350349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219120, 40.340134, 36.415874>,  <40.066952, 40.693573, 36.525082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219120, 40.340134, 36.415874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531611, -0.032636, 0.846359,
		-0.756748, -0.467115, 0.457313,
		0.380423, -0.883594, -0.273021,
		40.333248, 40.075054, 36.333969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793816, 40.166332, 37.041912>,  <40.066952, 40.693573, 36.525082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793816, 40.166332, 37.041912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150143, 40.139484, 36.862164>,  <40.363941, 40.123375, 36.754314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150143, 40.139484, 36.862164>,  <39.793816, 40.166332, 37.041912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150143, 40.139484, 36.862164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453415, 0.067806, 0.888717,
		-0.029182, -0.995438, 0.090836,
		0.890822, -0.067121, -0.449368,
		40.417389, 40.119347, 36.727352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269890, 39.715546, 37.444794>,  <39.793816, 40.166332, 37.041912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269890, 39.715546, 37.444794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493618, 39.982231, 37.247757>,  <40.627857, 40.142242, 37.129536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493618, 39.982231, 37.247757>,  <40.269890, 39.715546, 37.444794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493618, 39.982231, 37.247757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503804, 0.198488, 0.840705,
		0.658286, -0.718394, -0.224876,
		0.559322, 0.666718, -0.492591,
		40.661415, 40.182247, 37.099979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994568, 39.628292, 37.675987>,  <40.269890, 39.715546, 37.444794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994568, 39.628292, 37.675987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913620, 39.998383, 37.547611>,  <40.865051, 40.220436, 37.470585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913620, 39.998383, 37.547611>,  <40.994568, 39.628292, 37.675987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913620, 39.998383, 37.547611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516036, 0.379274, 0.768022,
		0.832319, -0.010192, -0.554204,
		-0.202367, 0.925228, -0.320937,
		40.852909, 40.275951, 37.451332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574490, 40.063404, 37.628872>,  <40.994568, 39.628292, 37.675987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574490, 40.063404, 37.628872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253078, 40.287708, 37.708763>,  <41.060234, 40.422291, 37.756699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253078, 40.287708, 37.708763>,  <41.574490, 40.063404, 37.628872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253078, 40.287708, 37.708763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416989, 0.290803, 0.861135,
		0.424814, 0.775227, -0.467500,
		-0.803526, 0.560765, 0.199724,
		41.012020, 40.455936, 37.768681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839329, 40.572773, 38.030476>,  <41.574490, 40.063404, 37.628872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839329, 40.572773, 38.030476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449566, 40.640533, 38.089573>,  <41.215706, 40.681190, 38.125031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449566, 40.640533, 38.089573>,  <41.839329, 40.572773, 38.030476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449566, 40.640533, 38.089573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206718, 0.417199, 0.884993,
		0.088282, 0.892887, -0.441541,
		-0.974410, 0.169403, 0.147745,
		41.157242, 40.691353, 38.133896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793003, 41.279686, 38.291527>,  <41.839329, 40.572773, 38.030476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793003, 41.279686, 38.291527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466755, 41.074631, 38.398838>,  <41.271008, 40.951595, 38.463223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466755, 41.074631, 38.398838>,  <41.793003, 41.279686, 38.291527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466755, 41.074631, 38.398838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100931, 0.330498, 0.938394,
		-0.569722, 0.792447, -0.217818,
		-0.815616, -0.512640, 0.268274,
		41.222069, 40.920837, 38.479321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609135, 41.684048, 38.826244>,  <41.793003, 41.279686, 38.291527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609135, 41.684048, 38.826244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398880, 41.347961, 38.879532>,  <41.272728, 41.146309, 38.911503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398880, 41.347961, 38.879532>,  <41.609135, 41.684048, 38.826244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398880, 41.347961, 38.879532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024826, 0.171679, 0.984840,
		-0.850348, 0.514359, -0.111099,
		-0.525635, -0.840215, 0.133217,
		41.241188, 41.095898, 38.919498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967758, 41.831490, 39.206005>,  <41.609135, 41.684048, 38.826244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967758, 41.831490, 39.206005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032787, 41.441509, 39.266724>,  <41.071804, 41.207520, 39.303154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032787, 41.441509, 39.266724>,  <40.967758, 41.831490, 39.206005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032787, 41.441509, 39.266724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009535, 0.152283, 0.988291,
		-0.986650, -0.162119, 0.015461,
		0.162575, -0.974950, 0.151796,
		41.081558, 41.149025, 39.312263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347927, 41.474583, 39.529655>,  <40.967758, 41.831490, 39.206005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347927, 41.474583, 39.529655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686619, 41.283566, 39.623466>,  <40.889832, 41.168953, 39.679752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686619, 41.283566, 39.623466>,  <40.347927, 41.474583, 39.529655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686619, 41.283566, 39.623466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240216, 0.050179, 0.969422,
		-0.474713, -0.877172, -0.072227,
		0.846726, -0.477547, 0.234531,
		40.940636, 41.140301, 39.693825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332062, 40.704292, 39.651836>,  <40.347927, 41.474583, 39.529655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332062, 40.704292, 39.651836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585655, 40.928459, 39.865002>,  <40.737812, 41.062958, 39.992901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585655, 40.928459, 39.865002>,  <40.332062, 40.704292, 39.651836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585655, 40.928459, 39.865002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614406, -0.053488, 0.787175,
		0.469648, -0.826484, 0.310410,
		0.633984, 0.560413, 0.532917,
		40.775852, 41.096584, 40.024876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724270, 40.339413, 40.281853>,  <40.332062, 40.704292, 39.651836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724270, 40.339413, 40.281853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668541, 40.729176, 40.352417>,  <40.635105, 40.963032, 40.394756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668541, 40.729176, 40.352417>,  <40.724270, 40.339413, 40.281853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668541, 40.729176, 40.352417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298649, -0.211195, 0.930702,
		0.944139, 0.076985, 0.320430,
		-0.139323, 0.974407, 0.176406,
		40.626743, 41.021500, 40.405338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143902, 40.561401, 40.851494>,  <40.724270, 40.339413, 40.281853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143902, 40.561401, 40.851494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813175, 40.778809, 40.793575>,  <40.614738, 40.909252, 40.758823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813175, 40.778809, 40.793575>,  <41.143902, 40.561401, 40.851494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813175, 40.778809, 40.793575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278822, -0.172469, 0.944729,
		0.488505, 0.821487, 0.294145,
		-0.826814, 0.543519, -0.144797,
		40.565132, 40.941864, 40.750137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033756, 41.289841, 41.290329>,  <41.143902, 40.561401, 40.851494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033756, 41.289841, 41.290329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714745, 41.055626, 41.232243>,  <40.523338, 40.915096, 41.197392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714745, 41.055626, 41.232243>,  <41.033756, 41.289841, 41.290329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714745, 41.055626, 41.232243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115502, -0.088049, 0.989397,
		-0.592116, 0.805848, 0.002591,
		-0.797532, -0.585539, -0.145212,
		40.475487, 40.879963, 41.188679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041534, 41.844578, 40.723255>,  <41.033756, 41.289841, 41.290329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041534, 41.844578, 40.723255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285160, 41.541084, 40.815662>,  <41.431335, 41.358990, 40.871109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285160, 41.541084, 40.815662>,  <41.041534, 41.844578, 40.723255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285160, 41.541084, 40.815662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258327, -0.465171, -0.846689,
		0.749872, 0.456009, -0.479319,
		0.609064, -0.758730, 0.231020,
		41.467880, 41.313465, 40.884968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619305, 41.685619, 40.244736>,  <41.041534, 41.844578, 40.723255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619305, 41.685619, 40.244736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530067, 41.340797, 40.426762>,  <41.476524, 41.133904, 40.535976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530067, 41.340797, 40.426762>,  <41.619305, 41.685619, 40.244736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530067, 41.340797, 40.426762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060832, -0.453608, -0.889123,
		0.972897, -0.226039, 0.048755,
		-0.223092, -0.862059, 0.455064,
		41.463139, 41.082180, 40.563282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001183, 41.102921, 39.866020>,  <41.619305, 41.685619, 40.244736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001183, 41.102921, 39.866020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692410, 40.925331, 40.048012>,  <41.507145, 40.818779, 40.157207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692410, 40.925331, 40.048012>,  <42.001183, 41.102921, 39.866020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692410, 40.925331, 40.048012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279618, -0.405618, -0.870222,
		0.570900, -0.798976, 0.188969,
		-0.771936, -0.443971, 0.454976,
		41.460827, 40.792141, 40.184505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996990, 40.377987, 39.821587>,  <42.001183, 41.102921, 39.866020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996990, 40.377987, 39.821587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644127, 40.566334, 39.818241>,  <41.432407, 40.679344, 39.816235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644127, 40.566334, 39.818241>,  <41.996990, 40.377987, 39.821587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644127, 40.566334, 39.818241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195131, -0.381611, -0.903491,
		-0.428621, -0.795393, 0.428524,
		-0.882161, 0.470874, -0.008361,
		41.379478, 40.707596, 39.815735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492065, 39.950768, 39.503292>,  <41.996990, 40.377987, 39.821587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492065, 39.950768, 39.503292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360104, 40.322788, 39.438591>,  <41.280926, 40.546001, 39.399769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360104, 40.322788, 39.438591>,  <41.492065, 39.950768, 39.503292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360104, 40.322788, 39.438591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250804, -0.251544, -0.934785,
		-0.910088, -0.267821, 0.316247,
		-0.329905, 0.930052, -0.161756,
		41.261131, 40.601803, 39.390064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817818, 39.914928, 39.141556>,  <41.492065, 39.950768, 39.503292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817818, 39.914928, 39.141556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946732, 40.283295, 39.053875>,  <41.024078, 40.504314, 39.001266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946732, 40.283295, 39.053875>,  <40.817818, 39.914928, 39.141556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946732, 40.283295, 39.053875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306185, -0.117701, -0.944668,
		-0.895760, 0.371564, 0.244038,
		0.322281, 0.920916, -0.219199,
		41.043415, 40.559570, 38.988113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258503, 40.241039, 38.982628>,  <40.817818, 39.914928, 39.141556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258503, 40.241039, 38.982628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538300, 40.460144, 38.799034>,  <40.706177, 40.591606, 38.688877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538300, 40.460144, 38.799034>,  <40.258503, 40.241039, 38.982628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538300, 40.460144, 38.799034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328412, -0.324039, -0.887211,
		-0.634711, 0.771333, -0.046770,
		0.699491, 0.547763, -0.458987,
		40.748146, 40.624474, 38.661339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898357, 40.676407, 38.441998>,  <40.258503, 40.241039, 38.982628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898357, 40.676407, 38.441998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285187, 40.674622, 38.340218>,  <40.517284, 40.673550, 38.279152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285187, 40.674622, 38.340218>,  <39.898357, 40.676407, 38.441998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285187, 40.674622, 38.340218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252994, -0.124970, -0.959363,
		-0.027518, 0.992150, -0.121984,
		0.967076, -0.004461, -0.254447,
		40.575310, 40.673283, 38.263882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995712, 41.235191, 37.953915>,  <39.898357, 40.676407, 38.441998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995712, 41.235191, 37.953915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311073, 40.995060, 37.900215>,  <40.500290, 40.850979, 37.867996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311073, 40.995060, 37.900215>,  <39.995712, 41.235191, 37.953915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311073, 40.995060, 37.900215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253572, -0.118322, -0.960053,
		0.560466, 0.790949, -0.245513,
		0.788403, -0.600332, -0.134247,
		40.547596, 40.814960, 37.859940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310608, 41.467579, 37.332954>,  <39.995712, 41.235191, 37.953915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310608, 41.467579, 37.332954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438896, 41.095810, 37.405972>,  <40.515869, 40.872749, 37.449783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438896, 41.095810, 37.405972>,  <40.310608, 41.467579, 37.332954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438896, 41.095810, 37.405972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242789, -0.266957, -0.932624,
		0.915530, 0.254787, -0.311270,
		0.320716, -0.929418, 0.182547,
		40.535110, 40.816986, 37.460735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778618, 41.165638, 36.837826>,  <40.310608, 41.467579, 37.332954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778618, 41.165638, 36.837826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580158, 40.866745, 37.014679>,  <40.461082, 40.687408, 37.120789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580158, 40.866745, 37.014679>,  <40.778618, 41.165638, 36.837826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580158, 40.866745, 37.014679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326373, -0.311370, -0.892485,
		0.804560, -0.587105, -0.089390,
		-0.496149, -0.747232, 0.442131,
		40.431313, 40.642574, 37.147320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009731, 40.438011, 36.520367>,  <40.778618, 41.165638, 36.837826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009731, 40.438011, 36.520367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674519, 40.375175, 36.729378>,  <40.473392, 40.337475, 36.854782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674519, 40.375175, 36.729378>,  <41.009731, 40.438011, 36.520367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674519, 40.375175, 36.729378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423102, -0.417591, -0.804116,
		0.344521, -0.894953, 0.283487,
		-0.838027, -0.157091, 0.522525,
		40.423111, 40.328049, 36.886135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792328, 39.731331, 36.468983>,  <41.009731, 40.438011, 36.520367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792328, 39.731331, 36.468983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467724, 39.949532, 36.552769>,  <40.272961, 40.080452, 36.603039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467724, 39.949532, 36.552769>,  <40.792328, 39.731331, 36.468983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467724, 39.949532, 36.552769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491518, -0.443390, -0.749544,
		-0.316001, -0.711221, 0.627940,
		-0.811513, 0.545500, 0.209466,
		40.224270, 40.113182, 36.615608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224834, 39.274376, 36.555065>,  <40.792328, 39.731331, 36.468983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224834, 39.274376, 36.555065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034122, 39.615788, 36.470997>,  <39.919697, 39.820633, 36.420555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034122, 39.615788, 36.470997>,  <40.224834, 39.274376, 36.555065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034122, 39.615788, 36.470997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387809, -0.418815, -0.821096,
		-0.788853, -0.309972, 0.530688,
		-0.476776, 0.853529, -0.210174,
		39.891090, 39.871845, 36.407944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567486, 39.121750, 36.422504>,  <40.224834, 39.274376, 36.555065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567486, 39.121750, 36.422504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637703, 39.465267, 36.229980>,  <39.679832, 39.671375, 36.114464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637703, 39.465267, 36.229980>,  <39.567486, 39.121750, 36.422504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637703, 39.465267, 36.229980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398553, -0.385055, -0.832399,
		-0.900189, 0.337952, 0.274679,
		0.175544, 0.858790, -0.481314,
		39.690365, 39.722904, 36.085587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078506, 39.101028, 35.957626>,  <39.567486, 39.121750, 36.422504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078506, 39.101028, 35.957626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345989, 39.369976, 35.830666>,  <39.506481, 39.531345, 35.754490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345989, 39.369976, 35.830666>,  <39.078506, 39.101028, 35.957626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345989, 39.369976, 35.830666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263806, -0.184552, -0.946756,
		-0.695149, 0.716837, 0.053964,
		0.668711, 0.672372, -0.317397,
		39.546604, 39.571690, 35.735447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769661, 39.679756, 35.625401>,  <39.078506, 39.101028, 35.957626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769661, 39.679756, 35.625401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141624, 39.641357, 35.483379>,  <39.364803, 39.618320, 35.398167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141624, 39.641357, 35.483379>,  <38.769661, 39.679756, 35.625401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141624, 39.641357, 35.483379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366318, -0.155212, -0.917453,
		0.032962, 0.983206, -0.179497,
		0.929906, -0.095994, -0.355050,
		39.420597, 39.612560, 35.376865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764305, 40.026077, 35.024612>,  <38.769661, 39.679756, 35.625401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764305, 40.026077, 35.024612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082226, 39.784210, 35.003944>,  <39.272976, 39.639091, 34.991543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082226, 39.784210, 35.003944>,  <38.764305, 40.026077, 35.024612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082226, 39.784210, 35.003944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224989, -0.214524, -0.950452,
		0.563625, 0.767043, -0.306548,
		0.794800, -0.604668, -0.051665,
		39.320667, 39.602810, 34.988445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964901, 40.084843, 34.338848>,  <38.764305, 40.026077, 35.024612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964901, 40.084843, 34.338848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167778, 39.748779, 34.415676>,  <39.289505, 39.547142, 34.461773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167778, 39.748779, 34.415676>,  <38.964901, 40.084843, 34.338848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167778, 39.748779, 34.415676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194114, -0.328496, -0.924343,
		0.839689, 0.431535, -0.329696,
		0.507190, -0.840160, 0.192068,
		39.319935, 39.496731, 34.473297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268570, 39.915367, 33.726437>,  <38.964901, 40.084843, 34.338848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268570, 39.915367, 33.726437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300507, 39.559616, 33.906498>,  <39.319668, 39.346165, 34.014534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300507, 39.559616, 33.906498>,  <39.268570, 39.915367, 33.726437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300507, 39.559616, 33.906498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348153, -0.448037, -0.823439,
		0.934031, -0.090978, -0.345410,
		0.079842, -0.889374, 0.450155,
		39.324459, 39.292805, 34.041546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541122, 39.438736, 33.330551>,  <39.268570, 39.915367, 33.726437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541122, 39.438736, 33.330551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319843, 39.218472, 33.580589>,  <39.187077, 39.086315, 33.730614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319843, 39.218472, 33.580589>,  <39.541122, 39.438736, 33.330551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319843, 39.218472, 33.580589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345972, -0.530735, -0.773708,
		0.757811, -0.644279, 0.103088,
		-0.553196, -0.550659, 0.625099,
		39.153885, 39.053272, 33.768120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639645, 38.638153, 33.266102>,  <39.541122, 39.438736, 33.330551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639645, 38.638153, 33.266102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277637, 38.685936, 33.429405>,  <39.060432, 38.714607, 33.527390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277637, 38.685936, 33.429405>,  <39.639645, 38.638153, 33.266102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277637, 38.685936, 33.429405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397619, -0.578602, -0.712123,
		0.151154, -0.806814, 0.571142,
		-0.905015, 0.119457, 0.408262,
		39.006134, 38.721771, 33.551884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352566, 37.983120, 33.174854>,  <39.639645, 38.638153, 33.266102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352566, 37.983120, 33.174854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041435, 38.221348, 33.255138>,  <38.854759, 38.364285, 33.303310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041435, 38.221348, 33.255138>,  <39.352566, 37.983120, 33.174854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041435, 38.221348, 33.255138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605289, -0.623934, -0.494299,
		-0.169160, -0.505966, 0.845804,
		-0.777824, 0.595571, 0.200711,
		38.808086, 38.400021, 33.315350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466007, 38.141476, 32.502506>,  <39.352566, 37.983120, 33.174854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466007, 38.141476, 32.502506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748344, 38.370556, 32.335751>,  <39.917747, 38.508003, 32.235695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748344, 38.370556, 32.335751>,  <39.466007, 38.141476, 32.502506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748344, 38.370556, 32.335751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447243, 0.096093, 0.889236,
		0.549324, -0.814115, -0.188308,
		0.705845, 0.572698, -0.416893,
		39.960098, 38.542366, 32.210682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235054, 37.983448, 32.699116>,  <39.466007, 38.141476, 32.502506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235054, 37.983448, 32.699116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182743, 38.368637, 32.604809>,  <40.151356, 38.599751, 32.548225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182743, 38.368637, 32.604809>,  <40.235054, 37.983448, 32.699116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182743, 38.368637, 32.604809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418920, 0.269212, 0.867197,
		0.898556, 0.014638, -0.438614,
		-0.130774, 0.962970, -0.235770,
		40.143513, 38.657528, 32.534077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898682, 38.299313, 32.715263>,  <40.235054, 37.983448, 32.699116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898682, 38.299313, 32.715263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582809, 38.522591, 32.817108>,  <40.393288, 38.656559, 32.878216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582809, 38.522591, 32.817108>,  <40.898682, 38.299313, 32.715263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582809, 38.522591, 32.817108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234543, -0.108819, 0.965996,
		0.566920, 0.822544, -0.044988,
		-0.789678, 0.558194, 0.254614,
		40.345905, 38.690048, 32.893494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971645, 37.606728, 32.981823>,  <40.898682, 38.299313, 32.715263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971645, 37.606728, 32.981823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073410, 37.549217, 32.599285>,  <41.134468, 37.514709, 32.369762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073410, 37.549217, 32.599285>,  <40.971645, 37.606728, 32.981823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073410, 37.549217, 32.599285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731332, 0.675654, 0.092976,
		0.632793, -0.723063, 0.277043,
		0.254413, -0.143776, -0.956349,
		41.149734, 37.506084, 32.312382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745670, 37.428699, 32.934784>,  <40.971645, 37.606728, 32.981823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745670, 37.428699, 32.934784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587524, 37.642006, 32.635635>,  <41.492638, 37.769989, 32.456146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587524, 37.642006, 32.635635>,  <41.745670, 37.428699, 32.934784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587524, 37.642006, 32.635635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573495, 0.779320, 0.252514,
		0.717487, -0.329063, -0.613946,
		-0.395368, 0.533270, -0.747869,
		41.468914, 37.801987, 32.411274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304909, 37.577839, 32.386887>,  <41.745670, 37.428699, 32.934784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304909, 37.577839, 32.386887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027901, 37.853165, 32.473263>,  <41.861694, 38.018360, 32.525089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027901, 37.853165, 32.473263>,  <42.304909, 37.577839, 32.386887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027901, 37.853165, 32.473263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720447, 0.644553, 0.255944,
		0.036983, 0.332824, -0.942264,
		-0.692523, 0.688317, 0.215944,
		41.820145, 38.059658, 32.538048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576767, 37.914066, 31.863441>,  <42.304909, 37.577839, 32.386887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576767, 37.914066, 31.863441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909546, 37.692291, 31.872080>,  <43.109211, 37.559227, 31.877262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909546, 37.692291, 31.872080>,  <42.576767, 37.914066, 31.863441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909546, 37.692291, 31.872080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270143, 0.438735, 0.857050,
		-0.484655, -0.707184, 0.514781,
		0.831945, -0.554438, 0.021595,
		43.159130, 37.525959, 31.878559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961452, 37.949512, 32.561600>,  <42.576767, 37.914066, 31.863441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961452, 37.949512, 32.561600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232727, 37.710751, 32.390129>,  <43.395493, 37.567493, 32.287247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232727, 37.710751, 32.390129>,  <42.961452, 37.949512, 32.561600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232727, 37.710751, 32.390129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693211, 0.325970, 0.642808,
		-0.243962, -0.733106, 0.634852,
		0.678190, -0.596907, -0.428673,
		43.436184, 37.531677, 32.261528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285866, 37.624477, 33.158508>,  <42.961452, 37.949512, 32.561600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285866, 37.624477, 33.158508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552162, 37.568249, 32.865379>,  <43.711941, 37.534512, 32.689503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552162, 37.568249, 32.865379>,  <43.285866, 37.624477, 33.158508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552162, 37.568249, 32.865379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744588, 0.189397, 0.640092,
		0.048815, -0.971786, 0.230758,
		0.665737, -0.140573, -0.732825,
		43.751884, 37.526077, 32.645531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796684, 37.148556, 33.379108>,  <43.285866, 37.624477, 33.158508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796684, 37.148556, 33.379108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985554, 37.342045, 33.084339>,  <44.098873, 37.458138, 32.907478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985554, 37.342045, 33.084339>,  <43.796684, 37.148556, 33.379108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985554, 37.342045, 33.084339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833712, 0.026476, 0.551564,
		0.286317, -0.874818, -0.390788,
		0.472172, 0.483727, -0.736927,
		44.127205, 37.487164, 32.863262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252907, 36.737015, 33.059021>,  <43.796684, 37.148556, 33.379108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252907, 36.737015, 33.059021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394135, 37.109142, 33.019329>,  <44.478870, 37.332420, 32.995514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394135, 37.109142, 33.019329>,  <44.252907, 36.737015, 33.059021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394135, 37.109142, 33.019329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868638, -0.286546, 0.404178,
		0.347581, -0.228897, -0.909282,
		0.353066, 0.930321, -0.099231,
		44.500053, 37.388237, 32.989559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964180, 36.686966, 32.835739>,  <44.252907, 36.737015, 33.059021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964180, 36.686966, 32.835739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907867, 37.037991, 33.019070>,  <44.874081, 37.248604, 33.129066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907867, 37.037991, 33.019070>,  <44.964180, 36.686966, 32.835739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907867, 37.037991, 33.019070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878089, -0.103161, 0.467244,
		0.457318, 0.468232, -0.756055,
		-0.140783, 0.877563, 0.458327,
		44.865631, 37.301258, 33.156567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473591, 37.057407, 32.465435>,  <44.964180, 36.686966, 32.835739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473591, 37.057407, 32.465435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424217, 37.070797, 32.862152>,  <45.394592, 37.078831, 33.100182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424217, 37.070797, 32.862152>,  <45.473591, 37.057407, 32.465435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424217, 37.070797, 32.862152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983571, 0.136800, 0.117792,
		-0.131733, 0.990033, -0.049809,
		-0.123432, 0.033473, 0.991788,
		45.387188, 37.080837, 33.159687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915218, 37.562553, 32.787178>,  <45.473591, 37.057407, 32.465435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915218, 37.562553, 32.787178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812996, 37.291012, 33.062527>,  <45.751663, 37.128086, 33.227737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812996, 37.291012, 33.062527>,  <45.915218, 37.562553, 32.787178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812996, 37.291012, 33.062527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944117, -0.021919, 0.328881,
		-0.208172, 0.733949, 0.646516,
		-0.255553, -0.678850, 0.688371,
		45.736332, 37.087357, 33.269039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061512, 37.847507, 33.475296>,  <45.915218, 37.562553, 32.787178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061512, 37.847507, 33.475296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073650, 37.447773, 33.483311>,  <46.080933, 37.207932, 33.488117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073650, 37.447773, 33.483311>,  <46.061512, 37.847507, 33.475296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.073650, 37.447773, 33.483311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838048, 0.036365, 0.544383,
		-0.544752, 0.000268, 0.838598,
		0.030349, -0.999339, 0.020035,
		46.082756, 37.147972, 33.489323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221893, 37.658932, 34.207863>,  <46.061512, 37.847507, 33.475296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.221893, 37.658932, 34.207863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302689, 37.340443, 33.979748>,  <46.351166, 37.149349, 33.842880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302689, 37.340443, 33.979748>,  <46.221893, 37.658932, 34.207863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.302689, 37.340443, 33.979748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867020, -0.125444, 0.482224,
		-0.455498, -0.591854, 0.665005,
		0.201985, -0.796224, -0.570288,
		46.363285, 37.101574, 33.808662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.578365, 37.250244, 34.683949>,  <46.221893, 37.658932, 34.207863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.578365, 37.250244, 34.683949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.667217, 37.136509, 34.310894>,  <46.720528, 37.068268, 34.087063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.667217, 37.136509, 34.310894>,  <46.578365, 37.250244, 34.683949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.667217, 37.136509, 34.310894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974177, 0.025037, 0.224393,
		-0.040454, -0.958396, 0.282559,
		0.222132, -0.284340, -0.932635,
		46.733856, 37.051208, 34.031105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.047298, 36.606453, 34.631851>,  <46.578365, 37.250244, 34.683949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.047298, 36.606453, 34.631851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.101273, 36.847645, 34.317345>,  <47.133656, 36.992359, 34.128639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.101273, 36.847645, 34.317345>,  <47.047298, 36.606453, 34.631851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.101273, 36.847645, 34.317345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960293, 0.115980, 0.253743,
		0.244192, -0.789284, -0.563383,
		0.134935, 0.602975, -0.786266,
		47.141754, 37.028538, 34.081467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.440674, 36.023663, 34.923134>,  <47.047298, 36.606453, 34.631851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.440674, 36.023663, 34.923134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.776031, 35.932159, 35.121029>,  <47.977245, 35.877258, 35.239765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.776031, 35.932159, 35.121029>,  <47.440674, 36.023663, 34.923134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.776031, 35.932159, 35.121029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467205, 0.165889, 0.868447,
		-0.280740, -0.959244, 0.032201,
		0.838395, -0.228763, 0.494735,
		48.027550, 35.863529, 35.269451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.343098, 35.457245, 35.440918>,  <47.440674, 36.023663, 34.923134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.343098, 35.457245, 35.440918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631802, 35.710514, 35.552746>,  <47.805023, 35.862473, 35.619843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631802, 35.710514, 35.552746>,  <47.343098, 35.457245, 35.440918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631802, 35.710514, 35.552746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413601, 0.070687, 0.907710,
		0.554972, -0.770780, 0.312898,
		0.721762, 0.633168, 0.279566,
		47.848331, 35.900463, 35.636616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.265400, 34.983707, 34.908566>,  <47.343098, 35.457245, 35.440918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.265400, 34.983707, 34.908566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.630535, 34.881180, 35.035702>,  <47.849617, 34.819664, 35.111984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.630535, 34.881180, 35.035702>,  <47.265400, 34.983707, 34.908566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.630535, 34.881180, 35.035702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404947, -0.668155, 0.624169,
		0.052381, -0.698475, -0.713714,
		0.912839, -0.256322, 0.317844,
		47.904388, 34.804283, 35.131054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.559143, 35.984299, 24.229307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.181320, 35.913532, 24.118664>,  <35.954628, 35.871071, 24.052277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.181320, 35.913532, 24.118664>,  <36.559143, 35.984299, 24.229307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181320, 35.913532, 24.118664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230852, -0.241258, 0.942604,
		-0.233495, 0.954199, 0.187041,
		-0.944557, -0.176915, -0.276611,
		35.897953, 35.860458, 24.035681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172756, 36.269527, 24.682995>,  <36.559143, 35.984299, 24.229307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172756, 36.269527, 24.682995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.907642, 36.023346, 24.512381>,  <35.748573, 35.875637, 24.410013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.907642, 36.023346, 24.512381>,  <36.172756, 36.269527, 24.682995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907642, 36.023346, 24.512381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393738, -0.198073, 0.897629,
		-0.636932, 0.762880, -0.111047,
		-0.662788, -0.615452, -0.426534,
		35.708805, 35.838711, 24.384420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709549, 36.452168, 25.048317>,  <36.172756, 36.269527, 24.682995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709549, 36.452168, 25.048317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623043, 36.099247, 24.881092>,  <35.571140, 35.887493, 24.780758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623043, 36.099247, 24.881092>,  <35.709549, 36.452168, 25.048317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623043, 36.099247, 24.881092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397857, -0.311387, 0.862988,
		-0.891593, 0.352964, -0.283686,
		-0.216268, -0.882300, -0.418060,
		35.558163, 35.834557, 24.755674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931740, 36.257824, 25.112024>,  <35.709549, 36.452168, 25.048317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931740, 36.257824, 25.112024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149769, 35.923141, 25.090790>,  <35.280586, 35.722332, 25.078049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149769, 35.923141, 25.090790>,  <34.931740, 36.257824, 25.112024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149769, 35.923141, 25.090790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349571, -0.284370, 0.892712,
		-0.762032, -0.468038, -0.447491,
		0.545076, -0.836704, -0.053086,
		35.313293, 35.672131, 25.074863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503826, 35.845547, 25.339882>,  <34.931740, 36.257824, 25.112024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503826, 35.845547, 25.339882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853615, 35.660389, 25.397879>,  <35.063488, 35.549294, 25.432676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853615, 35.660389, 25.397879>,  <34.503826, 35.845547, 25.339882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853615, 35.660389, 25.397879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332129, -0.353531, 0.874475,
		-0.353531, -0.812862, -0.462895,
		-0.874475, 0.462895, -0.144991,
		35.115955, 35.521519, 25.441376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405842, 35.168697, 25.620180>,  <34.503826, 35.845547, 25.339882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405842, 35.168697, 25.620180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.790138, 35.241940, 25.703552>,  <35.020718, 35.285885, 25.753576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.790138, 35.241940, 25.703552>,  <34.405842, 35.168697, 25.620180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790138, 35.241940, 25.703552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114433, -0.422864, 0.898939,
		0.252736, -0.887502, -0.385312,
		0.960744, 0.183102, 0.208432,
		35.078362, 35.296871, 25.766083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641083, 34.536125, 25.906860>,  <34.405842, 35.168697, 25.620180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641083, 34.536125, 25.906860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875595, 34.834015, 26.034403>,  <35.016300, 35.012749, 26.110929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875595, 34.834015, 26.034403>,  <34.641083, 34.536125, 25.906860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875595, 34.834015, 26.034403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078528, -0.339501, 0.937322,
		0.806296, -0.574569, -0.140560,
		0.586276, 0.744721, 0.318858,
		35.051479, 35.057430, 26.130060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072662, 34.216621, 26.402328>,  <34.641083, 34.536125, 25.906860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072662, 34.216621, 26.402328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127697, 34.602692, 26.491329>,  <35.160717, 34.834335, 26.544729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127697, 34.602692, 26.491329>,  <35.072662, 34.216621, 26.402328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127697, 34.602692, 26.491329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041649, -0.218800, 0.974880,
		0.989613, -0.143399, 0.010094,
		0.137588, 0.965175, 0.222500,
		35.168972, 34.892242, 26.558079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426655, 34.195427, 26.976339>,  <35.072662, 34.216621, 26.402328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426655, 34.195427, 26.976339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302212, 34.575569, 26.978523>,  <35.227547, 34.803654, 26.979834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302212, 34.575569, 26.978523>,  <35.426655, 34.195427, 26.976339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302212, 34.575569, 26.978523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030409, -0.015698, 0.999414,
		0.949888, 0.310759, 0.033783,
		-0.311107, 0.950359, 0.005462,
		35.208881, 34.860676, 26.980162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875175, 34.579723, 27.381939>,  <35.426655, 34.195427, 26.976339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875175, 34.579723, 27.381939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548168, 34.809227, 27.401827>,  <35.351963, 34.946930, 27.413759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548168, 34.809227, 27.401827>,  <35.875175, 34.579723, 27.381939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548168, 34.809227, 27.401827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137803, 0.111063, 0.984213,
		0.559178, 0.811460, -0.169862,
		-0.817515, 0.573757, 0.049718,
		35.302914, 34.981354, 27.416742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029728, 35.101509, 27.715803>,  <35.875175, 34.579723, 27.381939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029728, 35.101509, 27.715803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.635612, 35.126217, 27.779541>,  <35.399143, 35.141041, 27.817783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.635612, 35.126217, 27.779541>,  <36.029728, 35.101509, 27.715803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635612, 35.126217, 27.779541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162941, 0.058377, 0.984907,
		0.051537, 0.996382, -0.067583,
		-0.985289, 0.061771, 0.159343,
		35.340027, 35.144749, 27.827343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030407, 35.678440, 28.130924>,  <36.029728, 35.101509, 27.715803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030407, 35.678440, 28.130924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688740, 35.484501, 28.206091>,  <35.483738, 35.368137, 28.251190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688740, 35.484501, 28.206091>,  <36.030407, 35.678440, 28.130924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688740, 35.484501, 28.206091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192561, 0.040752, 0.980439,
		-0.483022, 0.873648, 0.058553,
		-0.854172, -0.484848, 0.187914,
		35.432487, 35.339046, 28.262465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842087, 35.869354, 28.647200>,  <36.030407, 35.678440, 28.130924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842087, 35.869354, 28.647200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589214, 35.560268, 28.670046>,  <35.437492, 35.374817, 28.683754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589214, 35.560268, 28.670046>,  <35.842087, 35.869354, 28.647200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589214, 35.560268, 28.670046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188405, -0.081802, 0.978679,
		-0.751565, 0.629463, 0.197297,
		-0.632181, -0.772713, 0.057115,
		35.399559, 35.328453, 28.687180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413380, 36.007454, 29.164173>,  <35.842087, 35.869354, 28.647200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413380, 36.007454, 29.164173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352325, 35.613663, 29.129526>,  <35.315693, 35.377388, 29.108738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352325, 35.613663, 29.129526>,  <35.413380, 36.007454, 29.164173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352325, 35.613663, 29.129526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023389, -0.091220, 0.995556,
		-0.988006, 0.149929, 0.036949,
		-0.152633, -0.984480, -0.086619,
		35.306534, 35.318317, 29.103540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834114, 35.856659, 29.591309>,  <35.413380, 36.007454, 29.164173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834114, 35.856659, 29.591309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054684, 35.528244, 29.532213>,  <35.187023, 35.331196, 29.496756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054684, 35.528244, 29.532213>,  <34.834114, 35.856659, 29.591309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054684, 35.528244, 29.532213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276870, 0.013057, 0.960818,
		-0.786942, -0.570721, 0.234522,
		0.551421, -0.821040, -0.147740,
		35.220112, 35.281933, 29.487890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617088, 35.503914, 30.262894>,  <34.834114, 35.856659, 29.591309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617088, 35.503914, 30.262894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940575, 35.346539, 30.087997>,  <35.134666, 35.252113, 29.983059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940575, 35.346539, 30.087997>,  <34.617088, 35.503914, 30.262894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940575, 35.346539, 30.087997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275232, -0.403835, 0.872448,
		-0.519829, -0.825907, -0.218301,
		0.808718, -0.393440, -0.437241,
		35.183189, 35.228508, 29.956825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691925, 34.797020, 30.620234>,  <34.617088, 35.503914, 30.262894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691925, 34.797020, 30.620234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039120, 34.878693, 30.439165>,  <35.247437, 34.927696, 30.330524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039120, 34.878693, 30.439165>,  <34.691925, 34.797020, 30.620234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039120, 34.878693, 30.439165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496320, -0.326679, 0.804331,
		0.016354, -0.922816, -0.384894,
		0.867986, 0.204184, -0.452669,
		35.299515, 34.939949, 30.303364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027451, 34.166130, 30.617887>,  <34.691925, 34.797020, 30.620234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027451, 34.166130, 30.617887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326260, 34.428967, 30.577503>,  <35.505543, 34.586670, 30.553272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326260, 34.428967, 30.577503>,  <35.027451, 34.166130, 30.617887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326260, 34.428967, 30.577503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473008, -0.418629, 0.775251,
		0.467146, -0.626882, -0.623533,
		0.747020, 0.657091, -0.100960,
		35.550365, 34.626095, 30.547215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666348, 33.784325, 30.670959>,  <35.027451, 34.166130, 30.617887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666348, 33.784325, 30.670959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.756241, 34.163860, 30.759680>,  <35.810177, 34.391582, 30.812912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.756241, 34.163860, 30.759680>,  <35.666348, 33.784325, 30.670959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756241, 34.163860, 30.759680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408374, -0.298381, 0.862670,
		0.884718, -0.103291, -0.454537,
		0.224731, 0.948841, 0.221802,
		35.823662, 34.448513, 30.826220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246815, 33.738018, 31.002171>,  <35.666348, 33.784325, 30.670959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246815, 33.738018, 31.002171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122154, 34.094345, 31.134428>,  <36.047359, 34.308140, 31.213783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122154, 34.094345, 31.134428>,  <36.246815, 33.738018, 31.002171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122154, 34.094345, 31.134428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267193, -0.251776, 0.930170,
		0.911857, 0.378234, -0.159552,
		-0.311650, 0.890813, 0.330645,
		36.028660, 34.361588, 31.233622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806976, 34.126663, 31.278423>,  <36.246815, 33.738018, 31.002171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806976, 34.126663, 31.278423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490547, 34.288811, 31.461676>,  <36.300690, 34.386097, 31.571627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490547, 34.288811, 31.461676>,  <36.806976, 34.126663, 31.278423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490547, 34.288811, 31.461676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381736, -0.258080, 0.887509,
		0.478002, 0.876968, 0.049417,
		-0.791070, 0.405367, 0.458133,
		36.253227, 34.410419, 31.599115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076206, 34.495823, 31.909374>,  <36.806976, 34.126663, 31.278423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076206, 34.495823, 31.909374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686222, 34.439785, 31.978449>,  <36.452232, 34.406162, 32.019894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686222, 34.439785, 31.978449>,  <37.076206, 34.495823, 31.909374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686222, 34.439785, 31.978449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206671, -0.284279, 0.936201,
		-0.082068, 0.948450, 0.306116,
		-0.974962, -0.140098, 0.172687,
		36.393734, 34.397755, 32.030254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616325, 35.046211, 32.089615>,  <37.076206, 34.495823, 31.909374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616325, 35.046211, 32.089615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944057, 35.267612, 32.149384>,  <38.140697, 35.400452, 32.185246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944057, 35.267612, 32.149384>,  <37.616325, 35.046211, 32.089615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944057, 35.267612, 32.149384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028161, 0.299165, -0.953786,
		-0.572624, 0.777261, 0.260703,
		0.819334, 0.553503, 0.149421,
		38.189857, 35.433662, 32.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414055, 35.797482, 32.106964>,  <37.616325, 35.046211, 32.089615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414055, 35.797482, 32.106964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799084, 35.766251, 32.003143>,  <38.030102, 35.747513, 31.940851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799084, 35.766251, 32.003143>,  <37.414055, 35.797482, 32.106964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799084, 35.766251, 32.003143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224279, 0.308241, -0.924492,
		0.152187, 0.948099, 0.279191,
		0.962568, -0.078079, -0.259549,
		38.087852, 35.742828, 31.925278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487221, 36.254662, 31.663015>,  <37.414055, 35.797482, 32.106964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487221, 36.254662, 31.663015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821640, 36.051842, 31.579187>,  <38.022293, 35.930149, 31.528891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821640, 36.051842, 31.579187>,  <37.487221, 36.254662, 31.663015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821640, 36.051842, 31.579187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135766, 0.178892, -0.974456,
		0.531587, 0.843148, 0.080723,
		0.836052, -0.507049, -0.209568,
		38.072456, 35.899727, 31.516317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003403, 36.706856, 31.173851>,  <37.487221, 36.254662, 31.663015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003403, 36.706856, 31.173851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060719, 36.313808, 31.126631>,  <38.095108, 36.077980, 31.098299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060719, 36.313808, 31.126631>,  <38.003403, 36.706856, 31.173851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060719, 36.313808, 31.126631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125534, 0.100271, -0.987009,
		0.981687, 0.156246, -0.108984,
		0.143288, -0.982616, -0.118048,
		38.103706, 36.019024, 31.091217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496014, 36.656769, 30.534925>,  <38.003403, 36.706856, 31.173851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496014, 36.656769, 30.534925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.329140, 36.298187, 30.594711>,  <38.229015, 36.083038, 30.630583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.329140, 36.298187, 30.594711>,  <38.496014, 36.656769, 30.534925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329140, 36.298187, 30.594711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035592, -0.148216, -0.988314,
		0.908126, -0.417625, 0.029926,
		-0.417180, -0.896449, 0.149463,
		38.203987, 36.029251, 30.639551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898296, 36.207634, 30.256119>,  <38.496014, 36.656769, 30.534925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898296, 36.207634, 30.256119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532921, 36.045815, 30.238375>,  <38.313694, 35.948723, 30.227728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532921, 36.045815, 30.238375>,  <38.898296, 36.207634, 30.256119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532921, 36.045815, 30.238375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106395, -0.132174, -0.985500,
		0.392815, -0.904917, 0.163775,
		-0.913442, -0.404544, -0.044359,
		38.258888, 35.924450, 30.225067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954021, 35.774170, 29.686626>,  <38.898296, 36.207634, 30.256119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954021, 35.774170, 29.686626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561214, 35.798985, 29.757950>,  <38.325531, 35.813873, 29.800745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561214, 35.798985, 29.757950>,  <38.954021, 35.774170, 29.686626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561214, 35.798985, 29.757950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170436, 0.114936, -0.978643,
		-0.081210, -0.991434, -0.102295,
		-0.982016, 0.062040, 0.178310,
		38.266609, 35.817596, 29.811443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697674, 35.546162, 29.066071>,  <38.954021, 35.774170, 29.686626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697674, 35.546162, 29.066071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377411, 35.700401, 29.249489>,  <38.185253, 35.792946, 29.359541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377411, 35.700401, 29.249489>,  <38.697674, 35.546162, 29.066071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377411, 35.700401, 29.249489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388046, 0.249378, -0.887260,
		-0.456474, -0.888328, -0.050038,
		-0.800657, 0.385595, 0.458547,
		38.137215, 35.816078, 29.387053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077904, 35.246517, 28.821381>,  <38.697674, 35.546162, 29.066071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077904, 35.246517, 28.821381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964413, 35.598701, 28.973324>,  <37.896317, 35.810013, 29.064489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964413, 35.598701, 28.973324>,  <38.077904, 35.246517, 28.821381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964413, 35.598701, 28.973324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450109, 0.227496, -0.863509,
		-0.846700, -0.415977, 0.331755,
		-0.283727, 0.880459, 0.379856,
		37.879295, 35.862839, 29.087280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490524, 35.264057, 28.598314>,  <38.077904, 35.246517, 28.821381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490524, 35.264057, 28.598314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608414, 35.639481, 28.670141>,  <37.679150, 35.864735, 28.713238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608414, 35.639481, 28.670141>,  <37.490524, 35.264057, 28.598314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608414, 35.639481, 28.670141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303684, 0.270169, -0.913666,
		-0.906042, 0.214749, 0.364651,
		0.294726, 0.938558, 0.179569,
		37.696831, 35.921047, 28.724012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002258, 35.676949, 28.262104>,  <37.490524, 35.264057, 28.598314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002258, 35.676949, 28.262104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295940, 35.941071, 28.325281>,  <37.472149, 36.099545, 28.363188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295940, 35.941071, 28.325281>,  <37.002258, 35.676949, 28.262104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295940, 35.941071, 28.325281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123708, 0.358850, -0.925161,
		-0.667564, 0.659717, 0.345154,
		0.734203, 0.660303, 0.157944,
		37.516201, 36.139160, 28.372663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629704, 36.222500, 28.057631>,  <37.002258, 35.676949, 28.262104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629704, 36.222500, 28.057631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.022686, 36.293621, 28.035135>,  <37.258476, 36.336292, 28.021639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.022686, 36.293621, 28.035135>,  <36.629704, 36.222500, 28.057631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022686, 36.293621, 28.035135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122652, 0.388931, -0.913066,
		-0.140472, 0.903946, 0.403917,
		0.982458, 0.177802, -0.056237,
		37.317425, 36.346962, 28.018265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646866, 36.849709, 27.819519>,  <36.629704, 36.222500, 28.057631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646866, 36.849709, 27.819519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026855, 36.744133, 27.752722>,  <37.254848, 36.680790, 27.712643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026855, 36.744133, 27.752722>,  <36.646866, 36.849709, 27.819519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026855, 36.744133, 27.752722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003499, 0.525649, -0.850694,
		0.312308, 0.808722, 0.498430,
		0.949975, -0.263934, -0.166994,
		37.311848, 36.664951, 27.702623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065712, 37.479786, 27.618162>,  <36.646866, 36.849709, 27.819519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065712, 37.479786, 27.618162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.233650, 37.141037, 27.487600>,  <37.334412, 36.937786, 27.409264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.233650, 37.141037, 27.487600>,  <37.065712, 37.479786, 27.618162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233650, 37.141037, 27.487600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085403, 0.394901, -0.914746,
		0.903570, 0.356172, 0.238122,
		0.419842, -0.846873, -0.326402,
		37.359604, 36.886974, 27.389679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717243, 37.728188, 27.308437>,  <37.065712, 37.479786, 27.618162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717243, 37.728188, 27.308437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621975, 37.371342, 27.154865>,  <37.564812, 37.157234, 27.062721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621975, 37.371342, 27.154865>,  <37.717243, 37.728188, 27.308437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621975, 37.371342, 27.154865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085317, 0.374560, -0.923269,
		0.967468, -0.252654, -0.013098,
		-0.238174, -0.892116, -0.383931,
		37.550522, 37.103706, 27.039686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845535, 37.934990, 26.689642>,  <37.717243, 37.728188, 27.308437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845535, 37.934990, 26.689642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664021, 37.579693, 26.661068>,  <37.555111, 37.366516, 26.643925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664021, 37.579693, 26.661068>,  <37.845535, 37.934990, 26.689642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664021, 37.579693, 26.661068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040322, 0.059614, -0.997407,
		0.890197, -0.455492, 0.008763,
		-0.453788, -0.888242, -0.071434,
		37.527885, 37.313221, 26.639637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249241, 37.568439, 26.253832>,  <37.845535, 37.934990, 26.689642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249241, 37.568439, 26.253832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878960, 37.418526, 26.233383>,  <37.656792, 37.328579, 26.221113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878960, 37.418526, 26.233383>,  <38.249241, 37.568439, 26.253832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878960, 37.418526, 26.233383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054082, 0.264906, -0.962756,
		0.374366, -0.888461, -0.265493,
		-0.925703, -0.374781, -0.051122,
		37.601250, 37.306091, 26.218046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239433, 37.197899, 25.605795>,  <38.249241, 37.568439, 26.253832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239433, 37.197899, 25.605795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864792, 37.298409, 25.703478>,  <37.640007, 37.358715, 25.762089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864792, 37.298409, 25.703478>,  <38.239433, 37.197899, 25.605795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864792, 37.298409, 25.703478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144410, 0.358202, -0.922408,
		-0.319252, -0.899196, -0.299206,
		-0.936602, 0.251273, 0.244210,
		37.583813, 37.373791, 25.776741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.730167, 36.871910, 25.069918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545521, 37.176441, 25.252033>,  <37.434734, 37.359161, 25.361303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545521, 37.176441, 25.252033>,  <37.730167, 36.871910, 25.069918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545521, 37.176441, 25.252033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136416, 0.446215, -0.884468,
		-0.876530, -0.470390, -0.102120,
		-0.461612, 0.761332, 0.455289,
		37.407036, 37.404842, 25.388620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196770, 36.887489, 24.690214>,  <37.730167, 36.871910, 25.069918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196770, 36.887489, 24.690214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227501, 37.231457, 24.892061>,  <37.245937, 37.437836, 25.013168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227501, 37.231457, 24.892061>,  <37.196770, 36.887489, 24.690214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227501, 37.231457, 24.892061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178407, 0.509800, -0.841591,
		-0.980953, -0.025372, 0.192581,
		0.076825, 0.859918, 0.504616,
		37.250549, 37.489433, 25.043446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619862, 37.212681, 24.626089>,  <37.196770, 36.887489, 24.690214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619862, 37.212681, 24.626089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869045, 37.513714, 24.711456>,  <37.018555, 37.694332, 24.762676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869045, 37.513714, 24.711456>,  <36.619862, 37.212681, 24.626089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869045, 37.513714, 24.711456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309825, 0.487884, -0.816074,
		-0.718286, 0.442255, 0.537099,
		0.622955, 0.752582, 0.213418,
		37.055931, 37.739487, 24.775482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246536, 37.914543, 24.609337>,  <36.619862, 37.212681, 24.626089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246536, 37.914543, 24.609337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635345, 37.986706, 24.549175>,  <36.868629, 38.030003, 24.513079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635345, 37.986706, 24.549175>,  <36.246536, 37.914543, 24.609337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635345, 37.986706, 24.549175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222735, 0.504738, -0.834044,
		-0.074556, 0.844210, 0.530801,
		0.972024, 0.180411, -0.150403,
		36.926952, 38.040829, 24.504055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241497, 38.649982, 24.454500>,  <36.246536, 37.914543, 24.609337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241497, 38.649982, 24.454500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.589069, 38.503723, 24.321074>,  <36.797611, 38.415970, 24.241018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.589069, 38.503723, 24.321074>,  <36.241497, 38.649982, 24.454500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589069, 38.503723, 24.321074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127676, 0.485548, -0.864836,
		0.478185, 0.794070, 0.375223,
		0.868929, -0.365645, -0.333566,
		36.849747, 38.394032, 24.221004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458759, 39.113037, 24.024307>,  <36.241497, 38.649982, 24.454500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458759, 39.113037, 24.024307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720261, 38.833000, 23.909424>,  <36.877159, 38.664978, 23.840494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720261, 38.833000, 23.909424>,  <36.458759, 39.113037, 24.024307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720261, 38.833000, 23.909424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128128, 0.271655, -0.953828,
		0.745785, 0.660363, 0.087893,
		0.653749, -0.700089, -0.287207,
		36.916386, 38.622974, 23.823261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763935, 39.438076, 23.571358>,  <36.458759, 39.113037, 24.024307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763935, 39.438076, 23.571358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906940, 39.073730, 23.488890>,  <36.992744, 38.855122, 23.439409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906940, 39.073730, 23.488890>,  <36.763935, 39.438076, 23.571358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906940, 39.073730, 23.488890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054748, 0.240823, -0.969024,
		0.932302, 0.335153, 0.135966,
		0.357515, -0.910866, -0.206170,
		37.014194, 38.800472, 23.427038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340076, 39.604797, 23.203526>,  <36.763935, 39.438076, 23.571358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340076, 39.604797, 23.203526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.288517, 39.214825, 23.130974>,  <37.257584, 38.980843, 23.087442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.288517, 39.214825, 23.130974>,  <37.340076, 39.604797, 23.203526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288517, 39.214825, 23.130974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111684, 0.167471, -0.979531,
		0.985349, -0.146513, 0.087298,
		-0.128894, -0.974929, -0.181380,
		37.249847, 38.922344, 23.076559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972538, 39.206467, 22.959366>,  <37.340076, 39.604797, 23.203526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972538, 39.206467, 22.959366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641064, 39.041061, 22.808483>,  <37.442181, 38.941818, 22.717953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641064, 39.041061, 22.808483>,  <37.972538, 39.206467, 22.959366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641064, 39.041061, 22.808483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232364, 0.358942, -0.903973,
		0.509205, -0.836758, -0.201362,
		-0.828684, -0.413518, -0.377208,
		37.392460, 38.917007, 22.695320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192429, 38.914108, 22.308781>,  <37.972538, 39.206467, 22.959366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192429, 38.914108, 22.308781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.794918, 38.958447, 22.304258>,  <37.556412, 38.985050, 22.301544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.794918, 38.958447, 22.304258>,  <38.192429, 38.914108, 22.308781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794918, 38.958447, 22.304258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041864, 0.277408, -0.959840,
		-0.103260, -0.954336, -0.280321,
		-0.993773, 0.110848, -0.011308,
		37.496788, 38.991699, 22.300865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087742, 38.915829, 21.637409>,  <38.192429, 38.914108, 22.308781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087742, 38.915829, 21.637409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747459, 39.062286, 21.788269>,  <37.543289, 39.150162, 21.878784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747459, 39.062286, 21.788269>,  <38.087742, 38.915829, 21.637409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747459, 39.062286, 21.788269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255876, 0.338296, -0.905585,
		-0.459158, -0.866889, -0.194104,
		-0.850706, 0.366140, 0.377147,
		37.492249, 39.172127, 21.901413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658966, 38.733749, 21.094694>,  <38.087742, 38.915829, 21.637409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658966, 38.733749, 21.094694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474949, 39.016834, 21.309172>,  <37.364540, 39.186687, 21.437859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474949, 39.016834, 21.309172>,  <37.658966, 38.733749, 21.094694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474949, 39.016834, 21.309172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221542, 0.493300, -0.841174,
		-0.859816, -0.505763, -0.070150,
		-0.460039, 0.707714, 0.536195,
		37.336937, 39.229149, 21.470030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033688, 38.855301, 20.732132>,  <37.658966, 38.733749, 21.094694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033688, 38.855301, 20.732132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050262, 39.156391, 20.994944>,  <37.060207, 39.337044, 21.152630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050262, 39.156391, 20.994944>,  <37.033688, 38.855301, 20.732132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050262, 39.156391, 20.994944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474240, 0.593615, -0.650168,
		-0.879420, -0.284651, 0.381568,
		0.041434, 0.752726, 0.657030,
		37.062691, 39.382210, 21.192053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437496, 39.170357, 20.677137>,  <37.033688, 38.855301, 20.732132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437496, 39.170357, 20.677137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676178, 39.447720, 20.838692>,  <36.819386, 39.614140, 20.935625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676178, 39.447720, 20.838692>,  <36.437496, 39.170357, 20.677137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676178, 39.447720, 20.838692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337871, 0.673619, -0.657328,
		-0.727864, 0.255770, 0.636235,
		0.596705, 0.693411, 0.403886,
		36.855190, 39.655743, 20.959858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045967, 39.822411, 20.987232>,  <36.437496, 39.170357, 20.677137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045967, 39.822411, 20.987232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.420670, 39.913128, 20.880610>,  <36.645493, 39.967560, 20.816635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.420670, 39.913128, 20.880610>,  <36.045967, 39.822411, 20.987232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420670, 39.913128, 20.880610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348764, 0.668409, -0.656958,
		0.029175, 0.708375, 0.705233,
		0.936757, 0.226793, -0.266556,
		36.701698, 39.981167, 20.800642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067623, 40.554279, 20.905407>,  <36.045967, 39.822411, 20.987232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067623, 40.554279, 20.905407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412552, 40.457336, 20.727568>,  <36.619511, 40.399170, 20.620865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412552, 40.457336, 20.727568>,  <36.067623, 40.554279, 20.905407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412552, 40.457336, 20.727568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080390, 0.801363, -0.592752,
		0.499941, 0.546883, 0.671549,
		0.862321, -0.242354, -0.444598,
		36.671249, 40.384628, 20.594189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406967, 41.205994, 20.803589>,  <36.067623, 40.554279, 20.905407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406967, 41.205994, 20.803589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546265, 40.952099, 20.527666>,  <36.629841, 40.799763, 20.362112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546265, 40.952099, 20.527666>,  <36.406967, 41.205994, 20.803589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546265, 40.952099, 20.527666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110319, 0.703006, -0.702576,
		0.930891, 0.320765, 0.174792,
		0.348241, -0.634739, -0.689808,
		36.650738, 40.761677, 20.320724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873020, 41.605240, 20.372517>,  <36.406967, 41.205994, 20.803589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873020, 41.605240, 20.372517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799305, 41.282291, 20.148306>,  <36.755077, 41.088524, 20.013781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799305, 41.282291, 20.148306>,  <36.873020, 41.605240, 20.372517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799305, 41.282291, 20.148306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064020, 0.578942, -0.812852,
		0.980786, -0.113912, -0.158378,
		-0.184285, -0.807372, -0.560525,
		36.744019, 41.040081, 19.980148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293648, 41.616402, 19.693556>,  <36.873020, 41.605240, 20.372517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293648, 41.616402, 19.693556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000034, 41.356720, 19.613827>,  <36.823868, 41.200912, 19.565990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000034, 41.356720, 19.613827>,  <37.293648, 41.616402, 19.693556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000034, 41.356720, 19.613827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095049, 0.388825, -0.916396,
		0.672428, -0.653720, -0.347117,
		-0.734034, -0.649203, -0.199322,
		36.779823, 41.161961, 19.554029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426605, 41.318668, 18.992426>,  <37.293648, 41.616402, 19.693556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426605, 41.318668, 18.992426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041523, 41.230232, 19.054808>,  <36.810474, 41.177170, 19.092237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041523, 41.230232, 19.054808>,  <37.426605, 41.318668, 18.992426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041523, 41.230232, 19.054808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226783, 0.345039, -0.910779,
		0.147552, -0.912178, -0.382309,
		-0.962703, -0.221088, 0.155955,
		36.752712, 41.163906, 19.101595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149349, 41.014225, 18.295780>,  <37.426605, 41.318668, 18.992426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149349, 41.014225, 18.295780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836563, 41.143795, 18.508795>,  <36.648891, 41.221539, 18.636604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836563, 41.143795, 18.508795>,  <37.149349, 41.014225, 18.295780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836563, 41.143795, 18.508795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507289, 0.165709, -0.845694,
		-0.362191, -0.931456, 0.034746,
		-0.781969, 0.323929, 0.532536,
		36.601971, 41.240974, 18.668556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552723, 40.665977, 18.045904>,  <37.149349, 41.014225, 18.295780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552723, 40.665977, 18.045904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394672, 40.993496, 18.212490>,  <36.299843, 41.190006, 18.312441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394672, 40.993496, 18.212490>,  <36.552723, 40.665977, 18.045904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394672, 40.993496, 18.212490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500474, 0.188292, -0.845028,
		-0.770325, -0.542324, 0.335388,
		-0.395128, 0.818799, 0.416464,
		36.276134, 41.239136, 18.337429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786041, 40.628296, 17.947983>,  <36.552723, 40.665977, 18.045904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786041, 40.628296, 17.947983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926746, 41.002106, 17.969601>,  <36.011169, 41.226391, 17.982573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926746, 41.002106, 17.969601>,  <35.786041, 40.628296, 17.947983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926746, 41.002106, 17.969601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231683, 0.142856, -0.962245,
		-0.906965, 0.325961, 0.266766,
		0.351763, 0.934527, 0.054046,
		36.032276, 41.282463, 17.985815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097370, 40.875572, 17.709425>,  <35.786041, 40.628296, 17.947983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097370, 40.875572, 17.709425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.698551, 40.906124, 17.706299>,  <34.459259, 40.924458, 17.704424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.698551, 40.906124, 17.706299>,  <35.097370, 40.875572, 17.709425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698551, 40.906124, 17.706299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064976, -0.785149, 0.615889,
		0.040908, 0.614579, 0.787794,
		-0.997048, 0.076382, -0.007814,
		34.399437, 40.929039, 17.703955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725559, 40.994701, 18.426905>,  <35.097370, 40.875572, 17.709425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725559, 40.994701, 18.426905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525246, 40.781151, 18.154377>,  <34.405056, 40.653023, 17.990860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525246, 40.781151, 18.154377>,  <34.725559, 40.994701, 18.426905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525246, 40.781151, 18.154377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058445, -0.764478, 0.641995,
		-0.863596, 0.361322, 0.351638,
		-0.500786, -0.533873, -0.681317,
		34.375011, 40.620991, 17.949982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226009, 40.740753, 18.860229>,  <34.725559, 40.994701, 18.426905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226009, 40.740753, 18.860229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235008, 40.518024, 18.528099>,  <34.240406, 40.384388, 18.328821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235008, 40.518024, 18.528099>,  <34.226009, 40.740753, 18.860229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235008, 40.518024, 18.528099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027132, -0.830570, 0.556253,
		-0.999379, 0.010016, -0.033791,
		0.022494, -0.556824, -0.830326,
		34.241756, 40.350979, 18.279001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630650, 40.368950, 18.965826>,  <34.226009, 40.740753, 18.860229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630650, 40.368950, 18.965826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.820835, 40.170254, 18.675396>,  <33.934944, 40.051037, 18.501137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.820835, 40.170254, 18.675396>,  <33.630650, 40.368950, 18.965826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820835, 40.170254, 18.675396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003788, -0.824171, 0.566329,
		-0.879728, -0.272018, -0.389980,
		0.475462, -0.496738, -0.726076,
		33.963474, 40.021233, 18.457573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283779, 39.756371, 18.910633>,  <33.630650, 40.368950, 18.965826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283779, 39.756371, 18.910633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651817, 39.697975, 18.765247>,  <33.872643, 39.662937, 18.678017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651817, 39.697975, 18.765247>,  <33.283779, 39.756371, 18.910633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651817, 39.697975, 18.765247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103962, -0.803635, 0.585971,
		-0.377638, -0.576938, -0.724246,
		0.920098, -0.145991, -0.363463,
		33.927845, 39.654179, 18.656208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386135, 38.969254, 18.815256>,  <33.283779, 39.756371, 18.910633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386135, 38.969254, 18.815256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764099, 39.100174, 18.816704>,  <33.990879, 39.178726, 18.817572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764099, 39.100174, 18.816704>,  <33.386135, 38.969254, 18.815256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764099, 39.100174, 18.816704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282813, -0.821954, 0.494377,
		0.164783, -0.466120, -0.869240,
		0.944915, 0.327297, 0.003620,
		34.047573, 39.198364, 18.817789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870823, 38.451862, 18.502584>,  <33.386135, 38.969254, 18.815256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870823, 38.451862, 18.502584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099121, 38.683865, 18.735079>,  <34.236099, 38.823067, 18.874575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099121, 38.683865, 18.735079>,  <33.870823, 38.451862, 18.502584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099121, 38.683865, 18.735079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249814, -0.796952, 0.549964,
		0.782201, -0.168690, -0.599754,
		0.570749, 0.580009, 0.581236,
		34.270348, 38.857868, 18.909449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207035, 37.993961, 18.883135>,  <33.870823, 38.451862, 18.502584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207035, 37.993961, 18.883135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346210, 38.313400, 19.079575>,  <34.429714, 38.505066, 19.197437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346210, 38.313400, 19.079575>,  <34.207035, 37.993961, 18.883135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346210, 38.313400, 19.079575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138376, -0.561835, 0.815594,
		0.927249, -0.215819, -0.305991,
		0.347937, 0.798601, 0.491097,
		34.450592, 38.552982, 19.226904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951637, 37.852192, 19.157578>,  <34.207035, 37.993961, 18.883135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951637, 37.852192, 19.157578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.755581, 38.128963, 19.369616>,  <34.637947, 38.295025, 19.496838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.755581, 38.128963, 19.369616>,  <34.951637, 37.852192, 19.157578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755581, 38.128963, 19.369616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161924, -0.525290, 0.835375,
		0.856472, 0.495285, 0.145425,
		-0.490138, 0.691928, 0.530095,
		34.608540, 38.336540, 19.528645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325676, 37.927238, 19.767874>,  <34.951637, 37.852192, 19.157578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325676, 37.927238, 19.767874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972134, 38.079189, 19.877048>,  <34.760010, 38.170361, 19.942554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972134, 38.079189, 19.877048>,  <35.325676, 37.927238, 19.767874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972134, 38.079189, 19.877048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142429, -0.337232, 0.930585,
		0.445551, 0.861376, 0.243958,
		-0.883854, 0.379877, 0.272939,
		34.706978, 38.193153, 19.958931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526783, 38.336147, 20.251591>,  <35.325676, 37.927238, 19.767874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526783, 38.336147, 20.251591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142281, 38.236328, 20.298437>,  <34.911579, 38.176437, 20.326546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142281, 38.236328, 20.298437>,  <35.526783, 38.336147, 20.251591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142281, 38.236328, 20.298437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213715, -0.406289, 0.888400,
		-0.174116, 0.879008, 0.443879,
		-0.961254, -0.249548, 0.117116,
		34.853905, 38.161465, 20.333572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367481, 38.599117, 20.906992>,  <35.526783, 38.336147, 20.251591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367481, 38.599117, 20.906992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077641, 38.328766, 20.853113>,  <34.903736, 38.166553, 20.820786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077641, 38.328766, 20.853113>,  <35.367481, 38.599117, 20.906992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077641, 38.328766, 20.853113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057763, -0.254322, 0.965393,
		-0.686747, 0.691741, 0.223322,
		-0.724598, -0.675881, -0.134697,
		34.860260, 38.126003, 20.812704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966274, 38.612862, 21.577143>,  <35.367481, 38.599117, 20.906992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966274, 38.612862, 21.577143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884235, 38.261623, 21.404222>,  <34.835014, 38.050880, 21.300470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884235, 38.261623, 21.404222>,  <34.966274, 38.612862, 21.577143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884235, 38.261623, 21.404222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021370, -0.445603, 0.894976,
		-0.978509, 0.174317, 0.110156,
		-0.205095, -0.878096, -0.432301,
		34.822708, 37.998196, 21.274532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510830, 38.266594, 22.055473>,  <34.966274, 38.612862, 21.577143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510830, 38.266594, 22.055473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.666054, 37.970135, 21.836344>,  <34.759190, 37.792259, 21.704866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.666054, 37.970135, 21.836344>,  <34.510830, 38.266594, 22.055473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666054, 37.970135, 21.836344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244216, -0.490466, 0.836542,
		-0.888689, -0.458416, -0.009330,
		0.388060, -0.741147, -0.547824,
		34.782471, 37.747791, 21.671997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454250, 37.747299, 22.407785>,  <34.510830, 38.266594, 22.055473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454250, 37.747299, 22.407785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699944, 37.558731, 22.154650>,  <34.847359, 37.445591, 22.002768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699944, 37.558731, 22.154650>,  <34.454250, 37.747299, 22.407785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699944, 37.558731, 22.154650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298664, -0.603419, 0.739382,
		-0.730427, -0.643156, -0.229841,
		0.614228, -0.471419, -0.632841,
		34.884212, 37.417305, 21.964798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287529, 37.030025, 22.438026>,  <34.454250, 37.747299, 22.407785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287529, 37.030025, 22.438026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664944, 37.059528, 22.308844>,  <34.891392, 37.077229, 22.231333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664944, 37.059528, 22.308844>,  <34.287529, 37.030025, 22.438026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664944, 37.059528, 22.308844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306196, -0.566258, 0.765243,
		-0.126435, -0.820922, -0.556868,
		0.943535, 0.073757, -0.322958,
		34.948006, 37.081654, 22.211956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603458, 36.375462, 22.334505>,  <34.287529, 37.030025, 22.438026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603458, 36.375462, 22.334505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.926113, 36.611816, 22.340029>,  <35.119705, 36.753628, 22.343342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.926113, 36.611816, 22.340029>,  <34.603458, 36.375462, 22.334505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926113, 36.611816, 22.340029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439478, -0.615237, 0.654479,
		0.395218, -0.521858, -0.755954,
		0.806636, 0.590887, 0.013808,
		35.168102, 36.789082, 22.344172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080818, 35.944901, 22.325159>,  <34.603458, 36.375462, 22.334505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080818, 35.944901, 22.325159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.305878, 36.255764, 22.437902>,  <35.440914, 36.442284, 22.505548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.305878, 36.255764, 22.437902>,  <35.080818, 35.944901, 22.325159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305878, 36.255764, 22.437902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476559, -0.583508, 0.657578,
		0.675510, -0.235667, -0.698676,
		0.562653, 0.777161, 0.281856,
		35.474674, 36.488911, 22.522459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713470, 35.581524, 22.448202>,  <35.080818, 35.944901, 22.325159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713470, 35.581524, 22.448202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768909, 35.929745, 22.637066>,  <35.802174, 36.138676, 22.750383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768909, 35.929745, 22.637066>,  <35.713470, 35.581524, 22.448202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768909, 35.929745, 22.637066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346383, -0.489261, 0.800402,
		0.927798, 0.052611, -0.369356,
		0.138601, 0.870549, 0.472158,
		35.810490, 36.190910, 22.778713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383453, 35.567596, 22.878067>,  <35.713470, 35.581524, 22.448202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383453, 35.567596, 22.878067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.145760, 35.835579, 23.056074>,  <36.003143, 35.996368, 23.162878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.145760, 35.835579, 23.056074>,  <36.383453, 35.567596, 22.878067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145760, 35.835579, 23.056074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322126, -0.308742, 0.894937,
		0.736963, 0.675159, -0.032343,
		-0.594239, 0.669954, 0.445018,
		35.967487, 36.036564, 23.189579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666061, 35.755680, 23.414406>,  <36.383453, 35.567596, 22.878067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666061, 35.755680, 23.414406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274883, 35.822922, 23.463980>,  <36.040176, 35.863266, 23.493725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274883, 35.822922, 23.463980>,  <36.666061, 35.755680, 23.414406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274883, 35.822922, 23.463980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041002, -0.427336, 0.903162,
		0.204786, 0.888327, 0.411020,
		-0.977948, 0.168102, 0.123936,
		35.981499, 35.873352, 23.501160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.635052, 36.475346, 28.022942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.235298, 36.462593, 28.017000>,  <37.995445, 36.454941, 28.013435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.235298, 36.462593, 28.017000>,  <38.635052, 36.475346, 28.022942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235298, 36.462593, 28.017000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013824, -0.032342, 0.999381,
		-0.032342, 0.998968, 0.031881,
		-0.999381, -0.031881, -0.014855,
		37.935482, 36.453030, 28.012543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311275, 37.081005, 28.352676>,  <38.635052, 36.475346, 28.022942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311275, 37.081005, 28.352676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054081, 36.775902, 28.380323>,  <37.899765, 36.592842, 28.396912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054081, 36.775902, 28.380323>,  <38.311275, 37.081005, 28.352676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054081, 36.775902, 28.380323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003852, 0.093464, 0.995615,
		-0.765869, 0.639899, -0.063034,
		-0.642985, -0.762754, 0.069117,
		37.861187, 36.547077, 28.401058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877113, 37.190811, 28.999491>,  <38.311275, 37.081005, 28.352676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877113, 37.190811, 28.999491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.848389, 36.801384, 28.912766>,  <37.831154, 36.567726, 28.860731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.848389, 36.801384, 28.912766>,  <37.877113, 37.190811, 28.999491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848389, 36.801384, 28.912766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009036, -0.216730, 0.976190,
		-0.997377, 0.072065, 0.006768,
		-0.071816, -0.973568, -0.216813,
		37.826843, 36.509315, 28.847721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374691, 36.951443, 29.411695>,  <37.877113, 37.190811, 28.999491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374691, 36.951443, 29.411695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.574711, 36.616287, 29.324154>,  <37.694721, 36.415195, 29.271629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.574711, 36.616287, 29.324154>,  <37.374691, 36.951443, 29.411695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574711, 36.616287, 29.324154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018390, -0.242386, 0.970006,
		-0.865801, -0.489077, -0.105796,
		0.500050, -0.837886, -0.218852,
		37.724728, 36.364922, 29.258499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182018, 36.526329, 29.912117>,  <37.374691, 36.951443, 29.411695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182018, 36.526329, 29.912117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.472908, 36.303879, 29.751183>,  <37.647442, 36.170410, 29.654621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.472908, 36.303879, 29.751183>,  <37.182018, 36.526329, 29.912117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472908, 36.303879, 29.751183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094321, -0.499627, 0.861090,
		-0.679893, -0.664151, -0.310884,
		0.727220, -0.556127, -0.402337,
		37.691074, 36.137039, 29.630482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028767, 35.829552, 30.177212>,  <37.182018, 36.526329, 29.912117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028767, 35.829552, 30.177212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404343, 35.793823, 30.044292>,  <37.629688, 35.772385, 29.964540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404343, 35.793823, 30.044292>,  <37.028767, 35.829552, 30.177212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404343, 35.793823, 30.044292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253673, -0.472807, 0.843862,
		-0.232486, -0.876627, -0.421278,
		0.938936, -0.089319, -0.332298,
		37.686024, 35.767029, 29.944603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294704, 35.136696, 30.350191>,  <37.028767, 35.829552, 30.177212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294704, 35.136696, 30.350191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.614502, 35.374821, 30.318153>,  <37.806381, 35.517696, 30.298931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.614502, 35.374821, 30.318153>,  <37.294704, 35.136696, 30.350191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614502, 35.374821, 30.318153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363469, -0.373296, 0.853546,
		0.478229, -0.711514, -0.514825,
		0.799492, 0.595313, -0.080092,
		37.854351, 35.553413, 30.294127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764889, 34.805759, 30.789520>,  <37.294704, 35.136696, 30.350191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764889, 34.805759, 30.789520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908947, 35.174068, 30.729565>,  <37.995380, 35.395054, 30.693592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908947, 35.174068, 30.729565>,  <37.764889, 34.805759, 30.789520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908947, 35.174068, 30.729565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238301, 0.064538, 0.969045,
		0.901947, -0.384715, -0.196178,
		0.360145, 0.920776, -0.149888,
		38.016991, 35.450302, 30.684599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455112, 34.785095, 30.861635>,  <37.764889, 34.805759, 30.789520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455112, 34.785095, 30.861635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.353741, 35.165417, 30.932905>,  <38.292915, 35.393608, 30.975666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.353741, 35.165417, 30.932905>,  <38.455112, 34.785095, 30.861635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353741, 35.165417, 30.932905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294390, -0.099644, 0.950477,
		0.921470, 0.293335, -0.254653,
		-0.253433, 0.950803, 0.178174,
		38.277710, 35.450657, 30.986357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107563, 35.194340, 31.188572>,  <38.455112, 34.785095, 30.861635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107563, 35.194340, 31.188572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784470, 35.412094, 31.279083>,  <38.590614, 35.542747, 31.333391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784470, 35.412094, 31.279083>,  <39.107563, 35.194340, 31.188572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784470, 35.412094, 31.279083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244184, -0.040419, 0.968886,
		0.536596, 0.837859, -0.100283,
		-0.807737, 0.544388, 0.226281,
		38.542149, 35.575409, 31.346968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356354, 35.599182, 31.719810>,  <39.107563, 35.194340, 31.188572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356354, 35.599182, 31.719810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.965313, 35.675194, 31.755974>,  <38.730686, 35.720802, 31.777672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.965313, 35.675194, 31.755974>,  <39.356354, 35.599182, 31.719810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965313, 35.675194, 31.755974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075760, -0.083008, 0.993665,
		0.196332, 0.978263, 0.066752,
		-0.977606, 0.190031, 0.090411,
		38.672031, 35.732204, 31.783096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335526, 36.071644, 32.243923>,  <39.356354, 35.599182, 31.719810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335526, 36.071644, 32.243923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984699, 35.879669, 32.235775>,  <38.774204, 35.764484, 32.230885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984699, 35.879669, 32.235775>,  <39.335526, 36.071644, 32.243923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984699, 35.879669, 32.235775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118364, -0.257016, 0.959131,
		-0.465559, 0.838810, 0.282227,
		-0.877066, -0.479938, -0.020371,
		38.721581, 35.735687, 32.229664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812565, 36.365562, 32.725506>,  <39.335526, 36.071644, 32.243923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812565, 36.365562, 32.725506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.767624, 35.972137, 32.668976>,  <38.740658, 35.736080, 32.635059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.767624, 35.972137, 32.668976>,  <38.812565, 36.365562, 32.725506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767624, 35.972137, 32.668976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199499, -0.161655, 0.966472,
		-0.973435, 0.080396, 0.214384,
		-0.112357, -0.983567, -0.141322,
		38.733917, 35.677067, 32.626579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716961, 36.913204, 33.299007>,  <38.812565, 36.365562, 32.725506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716961, 36.913204, 33.299007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688217, 37.180805, 33.594917>,  <38.670971, 37.341366, 33.772465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688217, 37.180805, 33.594917>,  <38.716961, 36.913204, 33.299007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688217, 37.180805, 33.594917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149245, 0.726131, -0.671163,
		-0.986186, -0.158636, 0.047667,
		-0.071858, 0.669005, 0.739776,
		38.666660, 37.381508, 33.816849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176414, 37.330666, 33.550236>,  <38.716961, 36.913204, 33.299007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176414, 37.330666, 33.550236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174065, 37.711548, 33.428082>,  <38.172657, 37.940079, 33.354790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174065, 37.711548, 33.428082>,  <38.176414, 37.330666, 33.550236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174065, 37.711548, 33.428082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864683, -0.158231, -0.476745,
		-0.502283, 0.261264, 0.824289,
		-0.005872, 0.952210, -0.305388,
		38.172302, 37.997211, 33.336464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492661, 37.671040, 33.555653>,  <38.176414, 37.330666, 33.550236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492661, 37.671040, 33.555653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.648636, 37.916428, 33.280960>,  <37.742222, 38.063660, 33.116146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.648636, 37.916428, 33.280960>,  <37.492661, 37.671040, 33.555653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648636, 37.916428, 33.280960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862027, -0.019056, -0.506504,
		-0.323813, 0.789486, 0.521400,
		0.389942, 0.613473, -0.686729,
		37.765617, 38.100468, 33.074940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000687, 38.217258, 33.425903>,  <37.492661, 37.671040, 33.555653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000687, 38.217258, 33.425903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.236092, 38.266197, 33.106232>,  <37.377335, 38.295559, 32.914429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.236092, 38.266197, 33.106232>,  <37.000687, 38.217258, 33.425903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236092, 38.266197, 33.106232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801926, 0.214037, -0.557765,
		0.102813, 0.969133, 0.224077,
		0.588509, 0.122348, -0.799179,
		37.412643, 38.302902, 32.866478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749065, 38.810253, 33.076717>,  <37.000687, 38.217258, 33.425903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749065, 38.810253, 33.076717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.985142, 38.643833, 32.799999>,  <37.126785, 38.543983, 32.633968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.985142, 38.643833, 32.799999>,  <36.749065, 38.810253, 33.076717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985142, 38.643833, 32.799999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595380, 0.354393, -0.721061,
		0.545163, 0.837443, -0.038547,
		0.590187, -0.416046, -0.691799,
		37.162197, 38.519020, 32.592461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886871, 39.388699, 32.506805>,  <36.749065, 38.810253, 33.076717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886871, 39.388699, 32.506805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.919907, 39.021393, 32.351898>,  <36.939728, 38.801010, 32.258953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.919907, 39.021393, 32.351898>,  <36.886871, 39.388699, 32.506805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919907, 39.021393, 32.351898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646933, 0.246186, -0.721713,
		0.758061, 0.310141, -0.573722,
		0.082591, -0.918262, -0.387265,
		36.944683, 38.745914, 32.235718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890404, 39.491776, 31.664289>,  <36.886871, 39.388699, 32.506805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890404, 39.491776, 31.664289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.827591, 39.108143, 31.758522>,  <36.789902, 38.877964, 31.815062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.827591, 39.108143, 31.758522>,  <36.890404, 39.491776, 31.664289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827591, 39.108143, 31.758522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698665, -0.060706, -0.712869,
		0.698002, -0.276536, -0.660546,
		-0.157035, -0.959084, 0.235580,
		36.780479, 38.820419, 31.829195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998123, 39.092617, 30.992102>,  <36.890404, 39.491776, 31.664289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998123, 39.092617, 30.992102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.768711, 38.878235, 31.239914>,  <36.631065, 38.749607, 31.388601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.768711, 38.878235, 31.239914>,  <36.998123, 39.092617, 30.992102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768711, 38.878235, 31.239914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661771, -0.142618, -0.736016,
		0.482826, -0.832114, -0.272882,
		-0.573531, -0.535953, 0.619529,
		36.596653, 38.717449, 31.425772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700901, 38.727283, 30.525856>,  <36.998123, 39.092617, 30.992102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700901, 38.727283, 30.525856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.488277, 38.629845, 30.850349>,  <36.360703, 38.571381, 31.045046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.488277, 38.629845, 30.850349>,  <36.700901, 38.727283, 30.525856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488277, 38.629845, 30.850349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792845, -0.193929, -0.577744,
		0.298057, -0.950291, -0.090047,
		-0.531563, -0.243594, 0.811236,
		36.328808, 38.556767, 31.093719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394806, 38.043896, 30.435204>,  <36.700901, 38.727283, 30.525856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394806, 38.043896, 30.435204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.168354, 38.249107, 30.693291>,  <36.032482, 38.372234, 30.848143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.168354, 38.249107, 30.693291>,  <36.394806, 38.043896, 30.435204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168354, 38.249107, 30.693291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777513, -0.072334, -0.624692,
		-0.273814, -0.855318, 0.439837,
		-0.566126, 0.513029, 0.645215,
		35.998516, 38.403015, 30.886856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759609, 37.738472, 30.345753>,  <36.394806, 38.043896, 30.435204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759609, 37.738472, 30.345753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.686405, 38.084839, 30.531950>,  <35.642483, 38.292660, 30.643669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.686405, 38.084839, 30.531950>,  <35.759609, 37.738472, 30.345753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686405, 38.084839, 30.531950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831871, 0.115936, -0.542724,
		-0.523924, -0.486558, 0.699117,
		-0.183014, 0.865921, 0.465495,
		35.631500, 38.344616, 30.671598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125248, 37.677200, 30.782475>,  <35.759609, 37.738472, 30.345753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125248, 37.677200, 30.782475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.201031, 38.044128, 30.642403>,  <35.246502, 38.264286, 30.558359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.201031, 38.044128, 30.642403>,  <35.125248, 37.677200, 30.782475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201031, 38.044128, 30.642403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832599, -0.038954, -0.552505,
		-0.520466, 0.396237, 0.756380,
		0.189459, 0.917321, -0.350181,
		35.257870, 38.319324, 30.537348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483829, 37.878109, 30.490305>,  <35.125248, 37.677200, 30.782475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483829, 37.878109, 30.490305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.725376, 38.179779, 30.387104>,  <34.870304, 38.360779, 30.325184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.725376, 38.179779, 30.387104>,  <34.483829, 37.878109, 30.490305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725376, 38.179779, 30.387104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556843, 0.167555, -0.813542,
		-0.570322, 0.634940, 0.521137,
		0.603870, 0.754172, -0.258002,
		34.906536, 38.406033, 30.309704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086830, 38.438747, 30.374390>,  <34.483829, 37.878109, 30.490305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086830, 38.438747, 30.374390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.423912, 38.501163, 30.168282>,  <34.626160, 38.538612, 30.044617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.423912, 38.501163, 30.168282>,  <34.086830, 38.438747, 30.374390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423912, 38.501163, 30.168282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538028, 0.209533, -0.816469,
		-0.019435, 0.965271, 0.260528,
		0.842703, 0.156040, -0.515270,
		34.676723, 38.547974, 30.013700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957932, 39.101944, 29.913242>,  <34.086830, 38.438747, 30.374390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957932, 39.101944, 29.913242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.275963, 38.932823, 29.739307>,  <34.466782, 38.831352, 29.634947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.275963, 38.932823, 29.739307>,  <33.957932, 39.101944, 29.913242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275963, 38.932823, 29.739307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333624, 0.293849, -0.895739,
		0.506497, 0.857258, 0.092576,
		0.795082, -0.422803, -0.434835,
		34.514488, 38.805981, 29.608856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876553, 39.750240, 30.233803>,  <33.957932, 39.101944, 29.913242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876553, 39.750240, 30.233803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.486694, 39.803207, 30.305939>,  <33.252777, 39.834988, 30.349220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.486694, 39.803207, 30.305939>,  <33.876553, 39.750240, 30.233803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486694, 39.803207, 30.305939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141002, -0.262270, 0.954637,
		0.173710, 0.955866, 0.236950,
		-0.974650, 0.132420, 0.180338,
		33.194298, 39.842934, 30.360041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835411, 40.054138, 30.968325>,  <33.876553, 39.750240, 30.233803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835411, 40.054138, 30.968325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.489872, 39.867794, 30.891655>,  <33.282547, 39.755989, 30.845654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.489872, 39.867794, 30.891655>,  <33.835411, 40.054138, 30.968325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489872, 39.867794, 30.891655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112409, -0.549161, 0.828122,
		-0.491049, 0.693826, 0.526760,
		-0.863849, -0.465861, -0.191673,
		33.230717, 39.728035, 30.834152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525291, 40.135105, 31.639475>,  <33.835411, 40.054138, 30.968325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525291, 40.135105, 31.639475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.350491, 39.840939, 31.432323>,  <33.245609, 39.664440, 31.308033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.350491, 39.840939, 31.432323>,  <33.525291, 40.135105, 31.639475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350491, 39.840939, 31.432323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045087, -0.592952, 0.803975,
		-0.898330, 0.327989, 0.292279,
		-0.437002, -0.735412, -0.517878,
		33.219391, 39.620316, 31.276960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969646, 39.984009, 32.032917>,  <33.525291, 40.135105, 31.639475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969646, 39.984009, 32.032917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.003284, 39.657078, 31.804913>,  <33.023468, 39.460918, 31.668110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.003284, 39.657078, 31.804913>,  <32.969646, 39.984009, 32.032917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003284, 39.657078, 31.804913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101365, -0.576084, 0.811081,
		-0.991289, -0.010427, -0.131292,
		0.084092, -0.817324, -0.570008,
		33.028511, 39.411880, 31.633909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437626, 39.450287, 32.249512>,  <32.969646, 39.984009, 32.032917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437626, 39.450287, 32.249512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.714111, 39.222820, 32.071148>,  <32.880005, 39.086342, 31.964128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.714111, 39.222820, 32.071148>,  <32.437626, 39.450287, 32.249512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714111, 39.222820, 32.071148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085578, -0.677126, 0.730874,
		-0.717561, -0.467034, -0.516707,
		0.691219, -0.568665, -0.445912,
		32.921478, 39.052219, 31.937374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257618, 38.831486, 32.342419>,  <32.437626, 39.450287, 32.249512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257618, 38.831486, 32.342419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.631851, 38.755058, 32.223640>,  <32.856392, 38.709202, 32.152374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.631851, 38.755058, 32.223640>,  <32.257618, 38.831486, 32.342419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631851, 38.755058, 32.223640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001751, -0.838424, 0.545016,
		-0.353101, -0.510428, -0.784081,
		0.935583, -0.191073, -0.296943,
		32.912525, 38.697735, 32.134556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239159, 38.190964, 32.079662>,  <32.257618, 38.831486, 32.342419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239159, 38.190964, 32.079662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.615005, 38.260780, 32.197411>,  <32.840515, 38.302670, 32.268059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.615005, 38.260780, 32.197411>,  <32.239159, 38.190964, 32.079662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615005, 38.260780, 32.197411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005013, -0.867088, 0.498129,
		0.342191, -0.466575, -0.815606,
		0.939617, 0.174544, 0.294371,
		32.896889, 38.313145, 32.285721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687283, 37.552170, 31.971079>,  <32.239159, 38.190964, 32.079662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687283, 37.552170, 31.971079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.855766, 37.769226, 32.261768>,  <32.956856, 37.899460, 32.436180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.855766, 37.769226, 32.261768>,  <32.687283, 37.552170, 31.971079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855766, 37.769226, 32.261768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075370, -0.819441, 0.568186,
		0.903827, -0.184551, -0.386054,
		0.421208, 0.542639, 0.726724,
		32.982128, 37.932018, 32.479786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132896, 37.065586, 32.284164>,  <32.687283, 37.552170, 31.971079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132896, 37.065586, 32.284164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.176907, 37.368504, 32.541660>,  <33.203312, 37.550255, 32.696159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.176907, 37.368504, 32.541660>,  <33.132896, 37.065586, 32.284164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176907, 37.368504, 32.541660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263928, -0.646685, 0.715640,
		0.958246, 0.091160, -0.271024,
		0.110029, 0.757290, 0.643743,
		33.209915, 37.595692, 32.734783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648731, 36.806435, 32.823750>,  <33.132896, 37.065586, 32.284164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648731, 36.806435, 32.823750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.461899, 37.115738, 32.995285>,  <33.349800, 37.301319, 33.098206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.461899, 37.115738, 32.995285>,  <33.648731, 36.806435, 32.823750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461899, 37.115738, 32.995285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031150, -0.470304, 0.881954,
		0.883668, 0.425299, 0.195581,
		-0.467076, 0.773263, 0.428841,
		33.321777, 37.347717, 33.123936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118580, 37.109226, 33.369492>,  <33.648731, 36.806435, 32.823750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118580, 37.109226, 33.369492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.724194, 37.152279, 33.420540>,  <33.487560, 37.178108, 33.451168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.724194, 37.152279, 33.420540>,  <34.118580, 37.109226, 33.369492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724194, 37.152279, 33.420540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075254, -0.395860, 0.915222,
		0.149026, 0.911982, 0.382205,
		-0.985966, 0.107629, 0.127623,
		33.428406, 37.184566, 33.458828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047756, 37.480412, 34.108337>,  <34.118580, 37.109226, 33.369492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047756, 37.480412, 34.108337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.697033, 37.312637, 34.014290>,  <33.486599, 37.211975, 33.957863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.697033, 37.312637, 34.014290>,  <34.047756, 37.480412, 34.108337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697033, 37.312637, 34.014290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034689, -0.432519, 0.900957,
		-0.479582, 0.798125, 0.364688,
		-0.876811, -0.419432, -0.235114,
		33.433990, 37.186810, 33.943756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.722889, 42.205784, 27.341707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470917, 41.902901, 27.272633>,  <32.319733, 41.721172, 27.231188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470917, 41.902901, 27.272633>,  <32.722889, 42.205784, 27.341707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470917, 41.902901, 27.272633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083048, -0.286749, 0.954399,
		-0.772197, 0.586866, 0.243517,
		-0.629933, -0.757208, -0.172688,
		32.281937, 41.675739, 27.220825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200397, 42.205532, 27.863104>,  <32.722889, 42.205784, 27.341707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200397, 42.205532, 27.863104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238323, 41.832882, 27.722773>,  <32.261078, 41.609291, 27.638573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238323, 41.832882, 27.722773>,  <32.200397, 42.205532, 27.863104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238323, 41.832882, 27.722773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018188, -0.350738, 0.936297,
		-0.995329, -0.095153, -0.016309,
		0.094812, -0.931627, -0.350830,
		32.266766, 41.553394, 27.617523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702219, 41.781506, 28.209517>,  <32.200397, 42.205532, 27.863104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702219, 41.781506, 28.209517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955288, 41.498840, 28.082798>,  <32.107128, 41.329243, 28.006767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955288, 41.498840, 28.082798>,  <31.702219, 41.781506, 28.209517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955288, 41.498840, 28.082798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023963, -0.426742, 0.904056,
		-0.774050, -0.564378, -0.286921,
		0.632671, -0.706660, -0.316795,
		32.145088, 41.286842, 27.987759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574295, 41.381947, 28.645269>,  <31.702219, 41.781506, 28.209517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574295, 41.381947, 28.645269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904221, 41.219887, 28.487516>,  <32.102177, 41.122650, 28.392864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904221, 41.219887, 28.487516>,  <31.574295, 41.381947, 28.645269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904221, 41.219887, 28.487516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212740, -0.423880, 0.880379,
		-0.523858, -0.810048, -0.263429,
		0.824812, -0.405152, -0.394383,
		32.151665, 41.098343, 28.369202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502743, 40.727123, 28.785158>,  <31.574295, 41.381947, 28.645269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502743, 40.727123, 28.785158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892159, 40.805710, 28.738474>,  <32.125809, 40.852863, 28.710463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892159, 40.805710, 28.738474>,  <31.502743, 40.727123, 28.785158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892159, 40.805710, 28.738474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190337, -0.414506, 0.889919,
		0.126464, -0.888586, -0.440933,
		0.973539, 0.196468, -0.116711,
		32.184219, 40.864651, 28.703461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726072, 40.234177, 29.223452>,  <31.502743, 40.727123, 28.785158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726072, 40.234177, 29.223452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074825, 40.417698, 29.154966>,  <32.284077, 40.527813, 29.113874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074825, 40.417698, 29.154966>,  <31.726072, 40.234177, 29.223452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074825, 40.417698, 29.154966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363562, -0.372208, 0.853981,
		0.328086, -0.806820, -0.491326,
		0.871885, 0.458806, -0.171213,
		32.336391, 40.555340, 29.103603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190582, 39.657223, 29.205397>,  <31.726072, 40.234177, 29.223452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190582, 39.657223, 29.205397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393658, 39.996132, 29.267864>,  <32.515503, 40.199478, 29.305346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393658, 39.996132, 29.267864>,  <32.190582, 39.657223, 29.205397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393658, 39.996132, 29.267864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360619, -0.373607, 0.854618,
		0.782438, -0.377559, -0.495217,
		0.507685, 0.847271, 0.156169,
		32.545963, 40.250313, 29.314714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877708, 39.487728, 29.213984>,  <32.190582, 39.657223, 29.205397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877708, 39.487728, 29.213984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849037, 39.826870, 29.424131>,  <32.831833, 40.030354, 29.550220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849037, 39.826870, 29.424131>,  <32.877708, 39.487728, 29.213984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849037, 39.826870, 29.424131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417574, -0.452834, 0.787765,
		0.905811, 0.275846, -0.321582,
		-0.071679, 0.847850, 0.525368,
		32.827534, 40.081226, 29.581741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493809, 39.537842, 29.527353>,  <32.877708, 39.487728, 29.213984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493809, 39.537842, 29.527353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233738, 39.758667, 29.736158>,  <33.077698, 39.891163, 29.861443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233738, 39.758667, 29.736158>,  <33.493809, 39.537842, 29.527353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233738, 39.758667, 29.736158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279370, -0.465218, 0.839955,
		0.706559, 0.691953, 0.148243,
		-0.650175, 0.552063, 0.522015,
		33.038685, 39.924286, 29.892763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270760, 39.722977, 29.412470>,  <33.493809, 39.537842, 29.527353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270760, 39.722977, 29.412470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427299, 39.374840, 29.292904>,  <34.521225, 39.165958, 29.221165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427299, 39.374840, 29.292904>,  <34.270760, 39.722977, 29.412470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427299, 39.374840, 29.292904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146384, 0.261812, -0.953953,
		0.908524, 0.417088, -0.024943,
		0.391352, -0.870340, -0.298917,
		34.544704, 39.113739, 29.203228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746376, 39.897903, 28.847231>,  <34.270760, 39.722977, 29.412470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746376, 39.897903, 28.847231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694263, 39.503475, 28.805882>,  <34.662994, 39.266819, 28.781071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694263, 39.503475, 28.805882>,  <34.746376, 39.897903, 28.847231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694263, 39.503475, 28.805882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061922, 0.095968, -0.993456,
		0.989542, -0.135830, 0.048557,
		-0.130281, -0.986073, -0.103375,
		34.655178, 39.207653, 28.774868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153534, 39.678734, 28.241899>,  <34.746376, 39.897903, 28.847231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153534, 39.678734, 28.241899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860283, 39.412228, 28.296476>,  <34.684330, 39.252323, 28.329224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860283, 39.412228, 28.296476>,  <35.153534, 39.678734, 28.241899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860283, 39.412228, 28.296476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331551, 0.174973, -0.927070,
		0.593796, -0.724901, -0.349177,
		-0.733130, -0.666261, 0.136444,
		34.640343, 39.212349, 28.337410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318928, 39.060688, 27.887743>,  <35.153534, 39.678734, 28.241899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318928, 39.060688, 27.887743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922165, 39.017776, 27.914881>,  <34.684105, 38.992027, 27.931164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922165, 39.017776, 27.914881>,  <35.318928, 39.060688, 27.887743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922165, 39.017776, 27.914881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071738, 0.032846, -0.996883,
		0.104719, -0.993686, -0.040277,
		-0.991911, -0.107282, 0.067845,
		34.624592, 38.985592, 27.935234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156006, 38.693020, 27.286337>,  <35.318928, 39.060688, 27.887743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156006, 38.693020, 27.286337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791584, 38.810829, 27.401743>,  <34.572933, 38.881516, 27.470987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791584, 38.810829, 27.401743>,  <35.156006, 38.693020, 27.286337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791584, 38.810829, 27.401743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289454, 0.041420, -0.956295,
		-0.293598, -0.954747, 0.047514,
		-0.911052, 0.294520, 0.288516,
		34.518269, 38.899185, 27.488298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776695, 38.204586, 27.004408>,  <35.156006, 38.693020, 27.286337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776695, 38.204586, 27.004408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569695, 38.543125, 27.054811>,  <34.445492, 38.746250, 27.085054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569695, 38.543125, 27.054811>,  <34.776695, 38.204586, 27.004408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569695, 38.543125, 27.054811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016349, 0.137455, -0.990373,
		-0.855524, -0.514583, -0.057296,
		-0.517504, 0.846351, 0.126009,
		34.414444, 38.797031, 27.092613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315727, 38.294556, 26.398209>,  <34.776695, 38.204586, 27.004408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315727, 38.294556, 26.398209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365910, 38.663391, 26.544641>,  <34.396019, 38.884693, 26.632502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365910, 38.663391, 26.544641>,  <34.315727, 38.294556, 26.398209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365910, 38.663391, 26.544641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027618, 0.372100, -0.927782,
		-0.991714, 0.106287, 0.072149,
		0.125458, 0.922087, 0.366082,
		34.403545, 38.940018, 26.654467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852131, 38.697609, 25.986738>,  <34.315727, 38.294556, 26.398209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852131, 38.697609, 25.986738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109673, 38.974022, 26.118149>,  <34.264198, 39.139870, 26.196995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109673, 38.974022, 26.118149>,  <33.852131, 38.697609, 25.986738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109673, 38.974022, 26.118149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124180, 0.518041, -0.846293,
		-0.755003, 0.504095, 0.419356,
		0.643856, 0.691029, 0.328524,
		34.302830, 39.181332, 26.216705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549915, 39.325592, 25.921810>,  <33.852131, 38.697609, 25.986738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549915, 39.325592, 25.921810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940643, 39.411194, 25.924059>,  <34.175079, 39.462555, 25.925407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940643, 39.411194, 25.924059>,  <33.549915, 39.325592, 25.921810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940643, 39.411194, 25.924059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131069, 0.618613, -0.774687,
		-0.169264, 0.755990, 0.632321,
		0.976817, 0.214004, 0.005622,
		34.233688, 39.475395, 25.925745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656685, 40.079376, 25.870424>,  <33.549915, 39.325592, 25.921810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656685, 40.079376, 25.870424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020245, 39.948597, 25.766880>,  <34.238380, 39.870129, 25.704754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020245, 39.948597, 25.766880>,  <33.656685, 40.079376, 25.870424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020245, 39.948597, 25.766880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019698, 0.653706, -0.756492,
		0.416553, 0.682475, 0.600592,
		0.908898, -0.326950, -0.258860,
		34.292915, 39.850513, 25.689222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990406, 40.711411, 25.798965>,  <33.656685, 40.079376, 25.870424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990406, 40.711411, 25.798965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201019, 40.434853, 25.601078>,  <34.327385, 40.268917, 25.482346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201019, 40.434853, 25.601078>,  <33.990406, 40.711411, 25.798965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201019, 40.434853, 25.601078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133821, 0.642059, -0.754885,
		0.839559, 0.331266, 0.430586,
		0.526529, -0.691392, -0.494716,
		34.358978, 40.227436, 25.452663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654995, 41.040108, 25.663193>,  <33.990406, 40.711411, 25.798965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654995, 41.040108, 25.663193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589687, 40.739059, 25.408033>,  <34.550503, 40.558430, 25.254938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589687, 40.739059, 25.408033>,  <34.654995, 41.040108, 25.663193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589687, 40.739059, 25.408033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201543, 0.607494, -0.768330,
		0.965777, -0.254005, 0.052502,
		-0.163265, -0.752617, -0.637897,
		34.540707, 40.513275, 25.216663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264465, 41.003132, 25.263241>,  <34.654995, 41.040108, 25.663193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264465, 41.003132, 25.263241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002247, 40.821709, 25.021732>,  <34.844913, 40.712852, 24.876827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002247, 40.821709, 25.021732>,  <35.264465, 41.003132, 25.263241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002247, 40.821709, 25.021732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505016, 0.331122, -0.797067,
		0.561441, -0.827430, 0.011989,
		-0.655548, -0.453561, -0.603771,
		34.805584, 40.685642, 24.840601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694469, 40.654324, 24.702862>,  <35.264465, 41.003132, 25.263241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694469, 40.654324, 24.702862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319019, 40.679703, 24.567242>,  <35.093750, 40.694931, 24.485868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319019, 40.679703, 24.567242>,  <35.694469, 40.654324, 24.702862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319019, 40.679703, 24.567242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339554, 0.342948, -0.875837,
		0.060705, -0.937209, -0.343445,
		-0.938626, 0.063450, -0.339051,
		35.037430, 40.698738, 24.465527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.466259, 35.720600, 22.598066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596230, 36.084141, 22.702686>,  <32.674213, 36.302265, 22.765459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596230, 36.084141, 22.702686>,  <32.466259, 35.720600, 22.598066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596230, 36.084141, 22.702686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171259, -0.328529, 0.928837,
		0.930104, -0.257011, -0.262398,
		0.324927, 0.908853, 0.261550,
		32.693707, 36.356796, 22.781151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960037, 35.602726, 23.082745>,  <32.466259, 35.720600, 22.598066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960037, 35.602726, 23.082745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.864288, 35.984344, 23.154860>,  <32.806839, 36.213314, 23.198128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.864288, 35.984344, 23.154860>,  <32.960037, 35.602726, 23.082745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864288, 35.984344, 23.154860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087004, -0.206017, 0.974673,
		0.967021, 0.217628, 0.132321,
		-0.239376, 0.954042, 0.180288,
		32.792477, 36.270557, 23.208946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491470, 35.971260, 23.556652>,  <32.960037, 35.602726, 23.082745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491470, 35.971260, 23.556652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.140347, 36.159012, 23.594887>,  <32.929672, 36.271664, 23.617826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.140347, 36.159012, 23.594887>,  <33.491470, 35.971260, 23.556652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140347, 36.159012, 23.594887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034047, -0.137902, 0.989861,
		0.477805, 0.872160, 0.105070,
		-0.877806, 0.469383, 0.095585,
		32.877007, 36.299828, 23.623562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591122, 36.489418, 23.998419>,  <33.491470, 35.971260, 23.556652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591122, 36.489418, 23.998419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.197147, 36.420300, 24.001047>,  <32.960762, 36.378830, 24.002625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.197147, 36.420300, 24.001047>,  <33.591122, 36.489418, 23.998419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197147, 36.420300, 24.001047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008975, -0.013141, 0.999873,
		-0.172689, 0.984870, 0.014494,
		-0.984936, -0.172797, 0.006570,
		32.901669, 36.368462, 24.003017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389999, 36.934303, 24.482292>,  <33.591122, 36.489418, 23.998419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389999, 36.934303, 24.482292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.077835, 36.688709, 24.434988>,  <32.890537, 36.541351, 24.406605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.077835, 36.688709, 24.434988>,  <33.389999, 36.934303, 24.482292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077835, 36.688709, 24.434988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178009, 0.036854, 0.983339,
		-0.599397, 0.788456, -0.138056,
		-0.780407, -0.613986, -0.118262,
		32.843712, 36.504513, 24.399509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839607, 37.320831, 24.803205>,  <33.389999, 36.934303, 24.482292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839607, 37.320831, 24.803205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.705357, 36.944878, 24.777990>,  <32.624805, 36.719307, 24.762861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.705357, 36.944878, 24.777990>,  <32.839607, 37.320831, 24.803205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705357, 36.944878, 24.777990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353044, 0.063462, 0.933452,
		-0.873335, 0.335549, -0.353119,
		-0.335628, -0.939883, -0.063040,
		32.604668, 36.662914, 24.759079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321571, 37.316010, 25.287872>,  <32.839607, 37.320831, 24.803205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321571, 37.316010, 25.287872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.316566, 36.935440, 25.164825>,  <32.313564, 36.707096, 25.090998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.316566, 36.935440, 25.164825>,  <32.321571, 37.316010, 25.287872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316566, 36.935440, 25.164825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344845, -0.284661, 0.894456,
		-0.938577, 0.117270, -0.324533,
		-0.012511, -0.951428, -0.307616,
		32.312813, 36.650013, 25.072540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646067, 37.125656, 25.520733>,  <32.321571, 37.316010, 25.287872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646067, 37.125656, 25.520733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.903673, 36.819763, 25.512449>,  <32.058235, 36.636227, 25.507479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.903673, 36.819763, 25.512449>,  <31.646067, 37.125656, 25.520733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903673, 36.819763, 25.512449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187621, -0.184133, 0.964828,
		-0.741648, -0.617479, -0.262064,
		0.644016, -0.764731, -0.020710,
		32.096878, 36.590343, 25.506237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355936, 36.594147, 25.928244>,  <31.646067, 37.125656, 25.520733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355936, 36.594147, 25.928244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.739706, 36.485729, 25.897161>,  <31.969969, 36.420677, 25.878513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.739706, 36.485729, 25.897161>,  <31.355936, 36.594147, 25.928244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739706, 36.485729, 25.897161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037105, -0.151821, 0.987711,
		-0.279514, -0.950518, -0.135604,
		0.959424, -0.271047, -0.077705,
		32.027534, 36.404415, 25.873850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330395, 36.070698, 26.344488>,  <31.355936, 36.594147, 25.928244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330395, 36.070698, 26.344488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.718287, 36.160275, 26.305555>,  <31.951021, 36.214020, 26.282196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.718287, 36.160275, 26.305555>,  <31.330395, 36.070698, 26.344488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718287, 36.160275, 26.305555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122813, -0.102803, 0.987091,
		0.211041, -0.969166, -0.127194,
		0.969731, 0.223938, -0.097330,
		32.009205, 36.227455, 26.276356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690365, 35.488098, 26.692533>,  <31.330395, 36.070698, 26.344488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690365, 35.488098, 26.692533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.907843, 35.823654, 26.682222>,  <32.038330, 36.024986, 26.676035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.907843, 35.823654, 26.682222>,  <31.690365, 35.488098, 26.692533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907843, 35.823654, 26.682222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363974, -0.207997, 0.907888,
		0.756252, -0.502999, -0.418420,
		0.543696, 0.838886, -0.025780,
		32.070953, 36.075321, 26.674488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426342, 35.238857, 26.600935>,  <31.690365, 35.488098, 26.692533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426342, 35.238857, 26.600935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.432346, 35.603573, 26.765089>,  <32.435947, 35.822403, 26.863581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.432346, 35.603573, 26.765089>,  <32.426342, 35.238857, 26.600935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432346, 35.603573, 26.765089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427100, -0.376952, 0.821883,
		0.904080, 0.162938, -0.395084,
		0.015012, 0.911788, 0.410386,
		32.436852, 35.877110, 26.888205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957912, 35.155766, 27.113417>,  <32.426342, 35.238857, 26.600935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957912, 35.155766, 27.113417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.787800, 35.500706, 27.223320>,  <32.685734, 35.707668, 27.289263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.787800, 35.500706, 27.223320>,  <32.957912, 35.155766, 27.113417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787800, 35.500706, 27.223320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387473, -0.100876, 0.916345,
		0.817926, 0.496164, -0.291236,
		-0.425279, 0.862349, 0.274759,
		32.660217, 35.759411, 27.305748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487736, 35.623207, 27.440840>,  <32.957912, 35.155766, 27.113417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487736, 35.623207, 27.440840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.126637, 35.735229, 27.571445>,  <32.909977, 35.802441, 27.649809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.126637, 35.735229, 27.571445>,  <33.487736, 35.623207, 27.440840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126637, 35.735229, 27.571445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272734, -0.214356, 0.937906,
		0.332653, 0.935747, 0.117130,
		-0.902750, 0.280052, 0.326516,
		32.855812, 35.819244, 27.669401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207870, 35.606400, 27.339237>,  <33.487736, 35.623207, 27.440840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207870, 35.606400, 27.339237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.574135, 35.451511, 27.382368>,  <34.793892, 35.358578, 27.408247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.574135, 35.451511, 27.382368>,  <34.207870, 35.606400, 27.339237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574135, 35.451511, 27.382368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209005, 0.229520, -0.950598,
		0.343346, 0.892960, 0.291094,
		0.915658, -0.387224, 0.107829,
		34.848831, 35.335342, 27.414717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712135, 36.013985, 27.073040>,  <34.207870, 35.606400, 27.339237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712135, 36.013985, 27.073040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855839, 35.643318, 27.028816>,  <34.942059, 35.420918, 27.002281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855839, 35.643318, 27.028816>,  <34.712135, 36.013985, 27.073040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855839, 35.643318, 27.028816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072977, 0.146002, -0.986589,
		0.930381, 0.346370, 0.120078,
		0.359256, -0.926667, -0.110561,
		34.963615, 35.365318, 26.995647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347305, 36.111973, 26.879454>,  <34.712135, 36.013985, 27.073040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347305, 36.111973, 26.879454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.290169, 35.732315, 26.767229>,  <35.255886, 35.504520, 26.699894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.290169, 35.732315, 26.767229>,  <35.347305, 36.111973, 26.879454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290169, 35.732315, 26.767229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445939, 0.191346, -0.874371,
		0.883591, -0.250014, 0.395929,
		-0.142845, -0.949147, -0.280563,
		35.247314, 35.447571, 26.683060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925846, 35.900867, 26.523832>,  <35.347305, 36.111973, 26.879454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925846, 35.900867, 26.523832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.647301, 35.646267, 26.391201>,  <35.480171, 35.493507, 26.311623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.647301, 35.646267, 26.391201>,  <35.925846, 35.900867, 26.523832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647301, 35.646267, 26.391201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252127, 0.215598, -0.943371,
		0.671943, -0.740531, 0.010344,
		-0.696365, -0.636500, -0.331577,
		35.438393, 35.455318, 26.291727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337063, 35.473671, 26.079010>,  <35.925846, 35.900867, 26.523832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337063, 35.473671, 26.079010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.958164, 35.392353, 25.979893>,  <35.730827, 35.343563, 25.920422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.958164, 35.392353, 25.979893>,  <36.337063, 35.473671, 26.079010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958164, 35.392353, 25.979893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207880, 0.198772, -0.957745,
		0.243962, -0.958728, -0.146024,
		-0.947242, -0.203298, -0.247793,
		35.673992, 35.331364, 25.905556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220402, 34.880215, 25.617529>,  <36.337063, 35.473671, 26.079010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220402, 34.880215, 25.617529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.878143, 35.081322, 25.568392>,  <35.672787, 35.201984, 25.538910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.878143, 35.081322, 25.568392>,  <36.220402, 34.880215, 25.617529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878143, 35.081322, 25.568392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142633, 0.000908, -0.989775,
		-0.497514, -0.864422, -0.072488,
		-0.855649, 0.502767, -0.122843,
		35.621449, 35.232151, 25.531538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950344, 34.593616, 24.962467>,  <36.220402, 34.880215, 25.617529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950344, 34.593616, 24.962467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.751144, 34.934200, 25.028200>,  <35.631626, 35.138550, 25.067640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.751144, 34.934200, 25.028200>,  <35.950344, 34.593616, 24.962467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751144, 34.934200, 25.028200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128682, 0.114846, -0.985013,
		-0.857576, -0.511684, 0.052375,
		-0.498000, 0.851464, 0.164334,
		35.601746, 35.189640, 25.077499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425613, 34.607357, 24.394400>,  <35.950344, 34.593616, 24.962467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425613, 34.607357, 24.394400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483437, 34.986565, 24.507792>,  <35.518131, 35.214088, 24.575827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483437, 34.986565, 24.507792>,  <35.425613, 34.607357, 24.394400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483437, 34.986565, 24.507792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054869, 0.278370, -0.958905,
		-0.987974, 0.154170, -0.011777,
		0.144556, 0.948020, 0.283481,
		35.526802, 35.270969, 24.592836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962067, 34.930267, 23.934357>,  <35.425613, 34.607357, 24.394400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962067, 34.930267, 23.934357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.189991, 35.225582, 24.078714>,  <35.326748, 35.402771, 24.165329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.189991, 35.225582, 24.078714>,  <34.962067, 34.930267, 23.934357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189991, 35.225582, 24.078714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043546, 0.411423, -0.910404,
		-0.820620, 0.534476, 0.202285,
		0.569813, 0.738287, 0.360896,
		35.360935, 35.447067, 24.186983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795315, 35.453575, 23.479078>,  <34.962067, 34.930267, 23.934357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795315, 35.453575, 23.479078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122478, 35.599106, 23.657360>,  <35.318775, 35.686424, 23.764328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122478, 35.599106, 23.657360>,  <34.795315, 35.453575, 23.479078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122478, 35.599106, 23.657360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175262, 0.580296, -0.795323,
		-0.548004, 0.728617, 0.410864,
		0.817909, 0.363831, 0.445703,
		35.367851, 35.708256, 23.791071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752914, 36.209274, 23.591782>,  <34.795315, 35.453575, 23.479078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752914, 36.209274, 23.591782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135975, 36.097858, 23.562626>,  <35.365810, 36.031010, 23.545132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135975, 36.097858, 23.562626>,  <34.752914, 36.209274, 23.591782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135975, 36.097858, 23.562626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134678, 0.657123, -0.741654,
		0.254475, 0.700433, 0.666811,
		0.957656, -0.278537, -0.072889,
		35.423271, 36.014297, 23.540760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098259, 36.960472, 23.598415>,  <34.752914, 36.209274, 23.591782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098259, 36.960472, 23.598415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.353577, 36.681450, 23.468193>,  <35.506767, 36.514034, 23.390059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.353577, 36.681450, 23.468193>,  <35.098259, 36.960472, 23.598415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353577, 36.681450, 23.468193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373149, 0.650286, -0.661731,
		0.673302, 0.300901, 0.675369,
		0.638299, -0.697558, -0.325558,
		35.545067, 36.472183, 23.370525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643879, 37.294487, 23.475716>,  <35.098259, 36.960472, 23.598415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643879, 37.294487, 23.475716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694550, 36.965874, 23.253351>,  <35.724953, 36.768703, 23.119932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694550, 36.965874, 23.253351>,  <35.643879, 37.294487, 23.475716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694550, 36.965874, 23.253351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097971, 0.568045, -0.817145,
		0.987095, 0.049047, 0.152442,
		0.126673, -0.821535, -0.555909,
		35.732552, 36.719414, 23.086578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169559, 37.420937, 23.032795>,  <35.643879, 37.294487, 23.475716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169559, 37.420937, 23.032795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957817, 37.126423, 22.864197>,  <35.830772, 36.949715, 22.763037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957817, 37.126423, 22.864197>,  <36.169559, 37.420937, 23.032795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957817, 37.126423, 22.864197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092855, 0.443550, -0.891427,
		0.843302, -0.511022, -0.166429,
		-0.529358, -0.736288, -0.421497,
		35.799011, 36.905537, 22.737747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745693, 37.819645, 22.680979>,  <36.169559, 37.420937, 23.032795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745693, 37.819645, 22.680979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924023, 38.158703, 22.796032>,  <37.031021, 38.362137, 22.865065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924023, 38.158703, 22.796032>,  <36.745693, 37.819645, 22.680979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924023, 38.158703, 22.796032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070720, -0.353688, 0.932686,
		0.892322, -0.395474, -0.217629,
		0.445826, 0.847647, 0.287635,
		37.057770, 38.412998, 22.882322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328979, 37.612801, 23.050089>,  <36.745693, 37.819645, 22.680979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328979, 37.612801, 23.050089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.244350, 37.984066, 23.172558>,  <37.193573, 38.206825, 23.246038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.244350, 37.984066, 23.172558>,  <37.328979, 37.612801, 23.050089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244350, 37.984066, 23.172558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199221, -0.265731, 0.943238,
		0.956842, 0.260564, -0.128688,
		-0.211577, 0.928167, 0.306172,
		37.180878, 38.262516, 23.264410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841297, 37.813747, 23.493969>,  <37.328979, 37.612801, 23.050089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841297, 37.813747, 23.493969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545010, 38.061539, 23.597954>,  <37.367237, 38.210213, 23.660345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545010, 38.061539, 23.597954>,  <37.841297, 37.813747, 23.493969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545010, 38.061539, 23.597954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227850, -0.132368, 0.964657,
		0.631993, 0.773774, -0.043101,
		-0.740722, 0.619477, 0.259960,
		37.322792, 38.247383, 23.675941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121246, 38.301922, 23.824759>,  <37.841297, 37.813747, 23.493969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121246, 38.301922, 23.824759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.747280, 38.311214, 23.966400>,  <37.522900, 38.316792, 24.051384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.747280, 38.311214, 23.966400>,  <38.121246, 38.301922, 23.824759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747280, 38.311214, 23.966400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347987, -0.135459, 0.927661,
		0.069521, 0.990510, 0.118557,
		-0.934918, 0.023235, 0.354102,
		37.466805, 38.318184, 24.072630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212704, 38.429520, 24.524632>,  <38.121246, 38.301922, 23.824759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212704, 38.429520, 24.524632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829113, 38.319344, 24.497787>,  <37.598961, 38.253239, 24.481682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829113, 38.319344, 24.497787>,  <38.212704, 38.429520, 24.524632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829113, 38.319344, 24.497787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007748, -0.262094, 0.965011,
		-0.283395, 0.924899, 0.253475,
		-0.958972, -0.275443, -0.067110,
		37.541420, 38.236710, 24.477654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898338, 38.589115, 25.201128>,  <38.212704, 38.429520, 24.524632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898338, 38.589115, 25.201128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634304, 38.327515, 25.053301>,  <37.475883, 38.170555, 24.964605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634304, 38.327515, 25.053301>,  <37.898338, 38.589115, 25.201128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634304, 38.327515, 25.053301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084648, -0.424082, 0.901659,
		-0.746409, 0.626452, 0.224569,
		-0.660082, -0.653997, -0.369566,
		37.436279, 38.131317, 24.942430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330509, 38.630714, 25.605820>,  <37.898338, 38.589115, 25.201128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330509, 38.630714, 25.605820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.291267, 38.269146, 25.439304>,  <37.267723, 38.052204, 25.339396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.291267, 38.269146, 25.439304>,  <37.330509, 38.630714, 25.605820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291267, 38.269146, 25.439304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006232, -0.417740, 0.908546,
		-0.995157, 0.091727, 0.035349,
		-0.098105, -0.903925, -0.416288,
		37.261837, 37.997967, 25.314419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801208, 38.349430, 26.045015>,  <37.330509, 38.630714, 25.605820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801208, 38.349430, 26.045015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983669, 38.059185, 25.838942>,  <37.093147, 37.885040, 25.715298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983669, 38.059185, 25.838942>,  <36.801208, 38.349430, 26.045015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983669, 38.059185, 25.838942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013281, -0.584409, 0.811351,
		-0.889803, -0.363256, -0.276215,
		0.456151, -0.725611, -0.515185,
		37.120514, 37.841503, 25.684385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312199, 37.701382, 26.177162>,  <36.801208, 38.349430, 26.045015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312199, 37.701382, 26.177162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685585, 37.610783, 26.065916>,  <36.909615, 37.556423, 25.999168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685585, 37.610783, 26.065916>,  <36.312199, 37.701382, 26.177162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685585, 37.610783, 26.065916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021896, -0.737958, 0.674491,
		-0.358007, -0.635701, -0.683897,
		0.933462, -0.226498, -0.278113,
		36.965622, 37.542831, 25.982483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401627, 36.856686, 26.129122>,  <36.312199, 37.701382, 26.177162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401627, 36.856686, 26.129122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756004, 37.033558, 26.185099>,  <36.968632, 37.139679, 26.218685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756004, 37.033558, 26.185099>,  <36.401627, 36.856686, 26.129122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756004, 37.033558, 26.185099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187894, -0.618052, 0.763353,
		0.424031, -0.649993, -0.630641,
		0.885942, 0.442179, 0.139943,
		37.021786, 37.166210, 26.227081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836136, 36.287998, 26.271915>,  <36.401627, 36.856686, 26.129122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836136, 36.287998, 26.271915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012627, 36.620880, 26.406227>,  <37.118523, 36.820610, 26.486814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012627, 36.620880, 26.406227>,  <36.836136, 36.287998, 26.271915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012627, 36.620880, 26.406227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171777, -0.445575, 0.878610,
		0.880801, -0.329988, -0.339554,
		0.441228, 0.832208, 0.335779,
		37.144997, 36.870544, 26.506962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426018, 35.973644, 26.449568>,  <36.836136, 36.287998, 26.271915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426018, 35.973644, 26.449568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455215, 36.324173, 26.640034>,  <37.472733, 36.534489, 26.754313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455215, 36.324173, 26.640034>,  <37.426018, 35.973644, 26.449568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455215, 36.324173, 26.640034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242694, -0.478695, 0.843772,
		0.967353, 0.053973, -0.247619,
		0.072993, 0.876321, 0.476166,
		37.477112, 36.587070, 26.782883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029297, 35.978245, 26.832851>,  <37.426018, 35.973644, 26.449568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029297, 35.978245, 26.832851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.810104, 36.254745, 27.021275>,  <37.678589, 36.420647, 27.134329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.810104, 36.254745, 27.021275>,  <38.029297, 35.978245, 26.832851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810104, 36.254745, 27.021275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352114, -0.320201, 0.879481,
		0.758773, 0.647803, -0.067935,
		-0.547977, 0.691248, 0.471060,
		37.645710, 36.462120, 27.162592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470284, 36.229511, 27.343159>,  <38.029297, 35.978245, 26.832851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470284, 36.229511, 27.343159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.111134, 36.348366, 27.473103>,  <37.895645, 36.419678, 27.551069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.111134, 36.348366, 27.473103>,  <38.470284, 36.229511, 27.343159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111134, 36.348366, 27.473103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285760, -0.168000, 0.943460,
		0.334910, 0.939941, 0.065934,
		-0.897874, 0.297133, 0.324862,
		37.841770, 36.437504, 27.570560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.610569, 40.252529, 23.911499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.274910, 40.469982, 23.904591>,  <35.073513, 40.600452, 23.900446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.274910, 40.469982, 23.904591>,  <35.610569, 40.252529, 23.911499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274910, 40.469982, 23.904591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241625, 0.344146, -0.907293,
		-0.487286, -0.765527, -0.420144,
		-0.839148, 0.543629, -0.017273,
		35.023167, 40.633072, 23.899408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151413, 40.061356, 23.303917>,  <35.610569, 40.252529, 23.911499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151413, 40.061356, 23.303917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.081112, 40.435497, 23.426704>,  <35.038933, 40.659981, 23.500378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.081112, 40.435497, 23.426704>,  <35.151413, 40.061356, 23.303917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081112, 40.435497, 23.426704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287069, 0.346966, -0.892864,
		-0.941649, -0.068799, -0.329490,
		-0.175750, 0.935351, 0.306970,
		35.028385, 40.716103, 23.518795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859634, 40.317219, 22.794163>,  <35.151413, 40.061356, 23.303917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859634, 40.317219, 22.794163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934208, 40.658539, 22.988945>,  <34.978954, 40.863331, 23.105814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934208, 40.658539, 22.988945>,  <34.859634, 40.317219, 22.794163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934208, 40.658539, 22.988945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062364, 0.484368, -0.872639,
		-0.980486, 0.193061, 0.037089,
		0.186437, 0.853297, 0.486956,
		34.990139, 40.914528, 23.135033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385616, 40.831181, 22.571329>,  <34.859634, 40.317219, 22.794163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385616, 40.831181, 22.571329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.696510, 41.034447, 22.719749>,  <34.883045, 41.156406, 22.808802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.696510, 41.034447, 22.719749>,  <34.385616, 40.831181, 22.571329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696510, 41.034447, 22.719749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044054, 0.544311, -0.837726,
		-0.627671, 0.667453, 0.400669,
		0.777231, 0.508166, 0.371053,
		34.929680, 41.186897, 22.831066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270622, 41.534729, 22.393272>,  <34.385616, 40.831181, 22.571329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270622, 41.534729, 22.393272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.657795, 41.562729, 22.489775>,  <34.890099, 41.579529, 22.547676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.657795, 41.562729, 22.489775>,  <34.270622, 41.534729, 22.393272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657795, 41.562729, 22.489775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140661, 0.644678, -0.751402,
		-0.208130, 0.761242, 0.614160,
		0.967934, 0.070001, 0.241254,
		34.948174, 41.583729, 22.562151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392914, 42.273872, 22.425289>,  <34.270622, 41.534729, 22.393272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392914, 42.273872, 22.425289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744850, 42.086334, 22.394150>,  <34.956013, 41.973812, 22.375467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744850, 42.086334, 22.394150>,  <34.392914, 42.273872, 22.425289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744850, 42.086334, 22.394150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294799, 0.666860, -0.684391,
		0.372786, 0.579208, 0.724948,
		0.879843, -0.468845, -0.077846,
		35.008804, 41.945683, 22.370796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874088, 42.781185, 22.441051>,  <34.392914, 42.273872, 22.425289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874088, 42.781185, 22.441051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.084118, 42.484612, 22.273922>,  <35.210136, 42.306667, 22.173645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.084118, 42.484612, 22.273922>,  <34.874088, 42.781185, 22.441051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084118, 42.484612, 22.273922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365081, 0.639711, -0.676377,
		0.768773, 0.202610, 0.606579,
		0.525076, -0.741431, -0.417823,
		35.241642, 42.262184, 22.148575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510628, 43.046661, 22.216002>,  <34.874088, 42.781185, 22.441051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510628, 43.046661, 22.216002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523251, 42.705593, 22.007402>,  <35.530823, 42.500954, 21.882242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523251, 42.705593, 22.007402>,  <35.510628, 43.046661, 22.216002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523251, 42.705593, 22.007402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383344, 0.492181, -0.781540,
		0.923066, -0.175251, 0.342397,
		0.031556, -0.852669, -0.521497,
		35.532719, 42.449791, 21.850954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201672, 43.013393, 21.808172>,  <35.510628, 43.046661, 22.216002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201672, 43.013393, 21.808172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930820, 42.783020, 21.624956>,  <35.768311, 42.644798, 21.515026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930820, 42.783020, 21.624956>,  <36.201672, 43.013393, 21.808172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930820, 42.783020, 21.624956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243207, 0.412318, -0.877977,
		0.694512, -0.705902, -0.139122,
		-0.677128, -0.575930, -0.458040,
		35.727680, 42.610241, 21.487545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595894, 42.632996, 21.316105>,  <36.201672, 43.013393, 21.808172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595894, 42.632996, 21.316105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.225502, 42.672726, 21.170391>,  <36.003269, 42.696564, 21.082964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.225502, 42.672726, 21.170391>,  <36.595894, 42.632996, 21.316105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225502, 42.672726, 21.170391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362276, 0.505598, -0.783024,
		0.106408, -0.857033, -0.504154,
		-0.925977, 0.099323, -0.364282,
		35.947708, 42.702522, 21.061106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707729, 42.570606, 20.651566>,  <36.595894, 42.632996, 21.316105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707729, 42.570606, 20.651566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.346062, 42.737659, 20.687477>,  <36.129059, 42.837891, 20.709024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.346062, 42.737659, 20.687477>,  <36.707729, 42.570606, 20.651566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346062, 42.737659, 20.687477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240793, 0.671886, -0.700419,
		-0.352837, -0.611681, -0.708062,
		-0.904171, 0.417631, 0.089778,
		36.074810, 42.862949, 20.714411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378494, 42.605598, 19.982054>,  <36.707729, 42.570606, 20.651566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378494, 42.605598, 19.982054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.263000, 42.904404, 20.221588>,  <36.193703, 43.083687, 20.365309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.263000, 42.904404, 20.221588>,  <36.378494, 42.605598, 19.982054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263000, 42.904404, 20.221588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253722, 0.662812, -0.704490,
		-0.923178, -0.051472, -0.380910,
		-0.288733, 0.747015, 0.598834,
		36.176380, 43.128510, 20.401237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901096, 43.156834, 19.656012>,  <36.378494, 42.605598, 19.982054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901096, 43.156834, 19.656012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133053, 43.298962, 19.949261>,  <36.272228, 43.384239, 20.125210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133053, 43.298962, 19.949261>,  <35.901096, 43.156834, 19.656012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133053, 43.298962, 19.949261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113531, 0.855854, -0.504603,
		-0.806742, 0.375849, 0.455966,
		0.579895, 0.355318, 0.733124,
		36.307022, 43.405556, 20.169197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393116, 42.722378, 19.221380>,  <35.901096, 43.156834, 19.656012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393116, 42.722378, 19.221380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475986, 42.731350, 19.612598>,  <35.525711, 42.736732, 19.847330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475986, 42.731350, 19.612598>,  <35.393116, 42.722378, 19.221380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475986, 42.731350, 19.612598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539542, 0.836570, 0.095105,
		-0.816071, -0.547401, 0.185421,
		0.207178, 0.022430, 0.978046,
		35.538139, 42.738079, 19.906012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974979, 42.314640, 18.982334>,  <35.393116, 42.722378, 19.221380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974979, 42.314640, 18.982334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029903, 41.975975, 18.776691>,  <36.062859, 41.772774, 18.653307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029903, 41.975975, 18.776691>,  <35.974979, 42.314640, 18.982334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029903, 41.975975, 18.776691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385705, -0.432355, 0.815046,
		-0.912348, -0.310204, 0.267198,
		0.137306, -0.846665, -0.514106,
		36.071095, 41.721977, 18.622459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588341, 41.635582, 19.348337>,  <35.974979, 42.314640, 18.982334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588341, 41.635582, 19.348337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899864, 41.506893, 19.132950>,  <36.086781, 41.429680, 19.003717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899864, 41.506893, 19.132950>,  <35.588341, 41.635582, 19.348337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899864, 41.506893, 19.132950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296496, -0.567676, 0.768006,
		-0.552752, -0.757789, -0.346729,
		0.778816, -0.321713, -0.538466,
		36.133507, 41.410378, 18.971409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535553, 40.857754, 19.358078>,  <35.588341, 41.635582, 19.348337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535553, 40.857754, 19.358078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.908604, 40.962921, 19.259220>,  <36.132435, 41.026020, 19.199905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.908604, 40.962921, 19.259220>,  <35.535553, 40.857754, 19.358078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908604, 40.962921, 19.259220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357876, -0.586313, 0.726748,
		0.046172, -0.766231, -0.640904,
		0.932627, 0.262919, -0.247145,
		36.188393, 41.041798, 19.185076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901524, 40.297634, 19.266277>,  <35.535553, 40.857754, 19.358078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901524, 40.297634, 19.266277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.188507, 40.563946, 19.348248>,  <36.360695, 40.723732, 19.397429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.188507, 40.563946, 19.348248>,  <35.901524, 40.297634, 19.266277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188507, 40.563946, 19.348248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244066, -0.515777, 0.821222,
		0.652449, -0.539176, -0.532541,
		0.717455, 0.665781, 0.204923,
		36.403744, 40.763680, 19.409725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493378, 39.866310, 19.418329>,  <35.901524, 40.297634, 19.266277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493378, 39.866310, 19.418329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.553143, 40.232834, 19.566950>,  <36.589001, 40.452747, 19.656122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.553143, 40.232834, 19.566950>,  <36.493378, 39.866310, 19.418329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553143, 40.232834, 19.566950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340227, -0.400468, 0.850806,
		0.928397, -0.000711, -0.371589,
		0.149414, 0.916310, 0.371551,
		36.597965, 40.507729, 19.678415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267632, 39.961445, 19.562822>,  <36.493378, 39.866310, 19.418329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267632, 39.961445, 19.562822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037891, 40.189102, 19.798178>,  <36.900047, 40.325695, 19.939392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037891, 40.189102, 19.798178>,  <37.267632, 39.961445, 19.562822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037891, 40.189102, 19.798178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513319, -0.309503, 0.800445,
		0.637676, 0.761764, -0.114390,
		-0.574346, 0.569143, 0.588390,
		36.865589, 40.359844, 19.974695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765160, 40.152004, 19.923113>,  <37.267632, 39.961445, 19.562822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765160, 40.152004, 19.923113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.425320, 40.209808, 20.126009>,  <37.221416, 40.244492, 20.247747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.425320, 40.209808, 20.126009>,  <37.765160, 40.152004, 19.923113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425320, 40.209808, 20.126009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485876, -0.159701, 0.859314,
		0.205185, 0.976531, 0.065469,
		-0.849602, 0.144509, 0.507241,
		37.170441, 40.253162, 20.278181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008289, 40.205910, 20.579639>,  <37.765160, 40.152004, 19.923113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008289, 40.205910, 20.579639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.616100, 40.151630, 20.636585>,  <37.380787, 40.119061, 20.670753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.616100, 40.151630, 20.636585>,  <38.008289, 40.205910, 20.579639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616100, 40.151630, 20.636585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168680, -0.207948, 0.963486,
		-0.101141, 0.968681, 0.226776,
		-0.980468, -0.135700, 0.142365,
		37.321960, 40.110920, 20.679295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836113, 40.522266, 21.304562>,  <38.008289, 40.205910, 20.579639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836113, 40.522266, 21.304562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548584, 40.269043, 21.189653>,  <37.376068, 40.117107, 21.120708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548584, 40.269043, 21.189653>,  <37.836113, 40.522266, 21.304562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548584, 40.269043, 21.189653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051375, -0.460471, 0.886187,
		-0.693293, 0.622252, 0.363520,
		-0.718822, -0.633063, -0.287273,
		37.332939, 40.079124, 21.103472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336563, 40.554348, 21.747555>,  <37.836113, 40.522266, 21.304562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336563, 40.554348, 21.747555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224903, 40.203712, 21.590750>,  <37.157906, 39.993332, 21.496666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224903, 40.203712, 21.590750>,  <37.336563, 40.554348, 21.747555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224903, 40.203712, 21.590750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099412, -0.379667, 0.919766,
		-0.955088, 0.295723, 0.018841,
		-0.279150, -0.876585, -0.392014,
		37.141159, 39.940739, 21.473146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747406, 40.244473, 22.154249>,  <37.336563, 40.554348, 21.747555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747406, 40.244473, 22.154249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914875, 39.951233, 21.939856>,  <37.015358, 39.775288, 21.811220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914875, 39.951233, 21.939856>,  <36.747406, 40.244473, 22.154249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914875, 39.951233, 21.939856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036661, -0.576077, 0.816573,
		-0.907397, -0.361527, -0.214312,
		0.418673, -0.733098, -0.535984,
		37.040478, 39.731304, 21.779060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406548, 39.662205, 22.385374>,  <36.747406, 40.244473, 22.154249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406548, 39.662205, 22.385374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.727322, 39.492950, 22.216681>,  <36.919785, 39.391399, 22.115463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.727322, 39.492950, 22.216681>,  <36.406548, 39.662205, 22.385374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727322, 39.492950, 22.216681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031754, -0.674744, 0.737368,
		-0.596569, -0.604712, -0.527663,
		0.801933, -0.423136, -0.421734,
		36.967899, 39.366009, 22.090160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206150, 39.051647, 22.207464>,  <36.406548, 39.662205, 22.385374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206150, 39.051647, 22.207464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602413, 39.022591, 22.253628>,  <36.840172, 39.005157, 22.281326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602413, 39.022591, 22.253628>,  <36.206150, 39.051647, 22.207464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602413, 39.022591, 22.253628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128026, -0.786820, 0.603758,
		0.046949, -0.612893, -0.788770,
		0.990659, -0.072637, 0.115407,
		36.899612, 39.000801, 22.288250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356556, 38.301327, 22.306953>,  <36.206150, 39.051647, 22.207464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356556, 38.301327, 22.306953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676804, 38.501022, 22.439486>,  <36.868950, 38.620838, 22.519005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676804, 38.501022, 22.439486>,  <36.356556, 38.301327, 22.306953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676804, 38.501022, 22.439486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029460, -0.585102, 0.810424,
		0.598454, -0.639078, -0.483149,
		0.800616, 0.499235, 0.331329,
		36.916988, 38.650791, 22.538885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268188, 37.458916, 22.295902>,  <36.356556, 38.301327, 22.306953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268188, 37.458916, 22.295902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926079, 37.251747, 22.302444>,  <35.720814, 37.127445, 22.306370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926079, 37.251747, 22.302444>,  <36.268188, 37.458916, 22.295902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926079, 37.251747, 22.302444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289860, 0.452015, -0.843602,
		0.429523, -0.726252, -0.536720,
		-0.855272, -0.517920, 0.016360,
		35.669498, 37.096371, 22.307352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120110, 37.178257, 21.571695>,  <36.268188, 37.458916, 22.295902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120110, 37.178257, 21.571695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.783489, 37.170219, 21.787619>,  <35.581516, 37.165398, 21.917173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.783489, 37.170219, 21.787619>,  <36.120110, 37.178257, 21.571695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783489, 37.170219, 21.787619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521396, 0.291482, -0.801988,
		-0.141228, -0.956365, -0.255774,
		-0.841547, -0.020096, 0.539810,
		35.531025, 37.164192, 21.949562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692055, 36.743874, 21.234262>,  <36.120110, 37.178257, 21.571695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692055, 36.743874, 21.234262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454346, 36.974854, 21.458189>,  <35.311718, 37.113441, 21.592545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454346, 36.974854, 21.458189>,  <35.692055, 36.743874, 21.234262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454346, 36.974854, 21.458189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488273, 0.294064, -0.821654,
		-0.639083, -0.761631, 0.107196,
		-0.594275, 0.577446, 0.559815,
		35.276062, 37.148087, 21.626133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048973, 36.665470, 21.022213>,  <35.692055, 36.743874, 21.234262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048973, 36.665470, 21.022213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.996506, 37.013039, 21.213112>,  <34.965027, 37.221581, 21.327652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.996506, 37.013039, 21.213112>,  <35.048973, 36.665470, 21.022213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996506, 37.013039, 21.213112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605104, 0.311154, -0.732825,
		-0.785267, -0.384905, 0.484978,
		-0.131165, 0.868925, 0.477247,
		34.957157, 37.273716, 21.356285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476048, 36.914925, 20.713366>,  <35.048973, 36.665470, 21.022213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476048, 36.914925, 20.713366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590042, 37.254986, 20.890463>,  <34.658440, 37.459023, 20.996721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590042, 37.254986, 20.890463>,  <34.476048, 36.914925, 20.713366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590042, 37.254986, 20.890463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410154, 0.525632, -0.745309,
		-0.866347, 0.030810, 0.498492,
		0.284987, 0.850154, 0.442743,
		34.675537, 37.510033, 21.023285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860760, 37.339916, 20.868717>,  <34.476048, 36.914925, 20.713366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860760, 37.339916, 20.868717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.185173, 37.568439, 20.818373>,  <34.379822, 37.705551, 20.788166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.185173, 37.568439, 20.818373>,  <33.860760, 37.339916, 20.868717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185173, 37.568439, 20.818373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485792, 0.537841, -0.689009,
		-0.325941, 0.619950, 0.713740,
		0.811030, 0.571305, -0.125862,
		34.428482, 37.739830, 20.780615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570473, 37.821457, 20.470795>,  <33.860760, 37.339916, 20.868717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570473, 37.821457, 20.470795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.946148, 37.958431, 20.460503>,  <34.171555, 38.040615, 20.454327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.946148, 37.958431, 20.460503>,  <33.570473, 37.821457, 20.470795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946148, 37.958431, 20.460503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246882, 0.621239, -0.743715,
		-0.238688, 0.704841, 0.668002,
		0.939190, 0.342434, -0.025730,
		34.227905, 38.061161, 20.452784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946785, 38.337204, 20.790134>,  <33.570473, 37.821457, 20.470795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946785, 38.337204, 20.790134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565887, 38.220013, 20.755745>,  <32.337349, 38.149700, 20.735111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565887, 38.220013, 20.755745>,  <32.946785, 38.337204, 20.790134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565887, 38.220013, 20.755745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129306, -0.642041, 0.755688,
		-0.276595, 0.708484, 0.649265,
		-0.952247, -0.292974, -0.085974,
		32.280212, 38.132122, 20.729952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606663, 38.434364, 21.399517>,  <32.946785, 38.337204, 20.790134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606663, 38.434364, 21.399517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.367523, 38.169857, 21.218281>,  <32.224037, 38.011150, 21.109539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.367523, 38.169857, 21.218281>,  <32.606663, 38.434364, 21.399517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367523, 38.169857, 21.218281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023047, -0.550818, 0.834307,
		-0.801274, 0.509236, 0.314068,
		-0.597854, -0.661270, -0.453093,
		32.188168, 37.971478, 21.082354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022888, 38.367649, 21.858566>,  <32.606663, 38.434364, 21.399517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022888, 38.367649, 21.858566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050545, 38.062923, 21.600931>,  <32.067139, 37.880089, 21.446350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050545, 38.062923, 21.600931>,  <32.022888, 38.367649, 21.858566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050545, 38.062923, 21.600931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182316, -0.625112, 0.758944,
		-0.980806, -0.169904, 0.095670,
		0.069143, -0.761819, -0.644090,
		32.071289, 37.834377, 21.407703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785006, 37.905457, 22.256939>,  <32.022888, 38.367649, 21.858566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785006, 37.905457, 22.256939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.954739, 37.696716, 21.960936>,  <32.056580, 37.571472, 21.783333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.954739, 37.696716, 21.960936>,  <31.785006, 37.905457, 22.256939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954739, 37.696716, 21.960936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206962, -0.739708, 0.640311,
		-0.881537, -0.424860, -0.205881,
		0.424334, -0.521848, -0.740010,
		32.082039, 37.540161, 21.738934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412209, 37.371811, 22.207193>,  <31.785006, 37.905457, 22.256939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412209, 37.371811, 22.207193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.779015, 37.300240, 22.064606>,  <31.999098, 37.257298, 21.979053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.779015, 37.300240, 22.064606>,  <31.412209, 37.371811, 22.207193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779015, 37.300240, 22.064606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142614, -0.687558, 0.711987,
		-0.372487, -0.703740, -0.604983,
		0.917014, -0.178926, -0.356469,
		32.054119, 37.246563, 21.957664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507820, 36.691837, 22.298075>,  <31.412209, 37.371811, 22.207193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507820, 36.691837, 22.298075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.886839, 36.812344, 22.255371>,  <32.114250, 36.884647, 22.229750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.886839, 36.812344, 22.255371>,  <31.507820, 36.691837, 22.298075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886839, 36.812344, 22.255371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265612, -0.556415, 0.787307,
		0.177785, -0.774366, -0.607248,
		0.947546, 0.301264, -0.106759,
		32.171104, 36.902721, 22.223343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845007, 36.099808, 22.478260>,  <31.507820, 36.691837, 22.298075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845007, 36.099808, 22.478260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.117477, 36.392483, 22.488333>,  <32.280960, 36.568089, 22.494375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.117477, 36.392483, 22.488333>,  <31.845007, 36.099808, 22.478260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117477, 36.392483, 22.488333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376944, -0.379992, 0.844701,
		0.627626, -0.565897, -0.534646,
		0.681175, 0.731688, 0.025181,
		32.321831, 36.611988, 22.495888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.817242, 44.154869, 21.089207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.174137, 44.002934, 21.186882>,  <33.388275, 43.911774, 21.245487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.174137, 44.002934, 21.186882>,  <32.817242, 44.154869, 21.089207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174137, 44.002934, 21.186882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418700, -0.493397, 0.762398,
		-0.169107, -0.782484, -0.599267,
		0.892241, -0.379840, 0.244190,
		33.441811, 43.888981, 21.260139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696400, 43.470711, 21.137489>,  <32.817242, 44.154869, 21.089207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696400, 43.470711, 21.137489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.020161, 43.570644, 21.350075>,  <33.214417, 43.630604, 21.477625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.020161, 43.570644, 21.350075>,  <32.696400, 43.470711, 21.137489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020161, 43.570644, 21.350075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374725, -0.477082, 0.794968,
		0.452165, -0.842599, -0.292530,
		0.809400, 0.249838, 0.531463,
		33.262981, 43.645596, 21.509514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728592, 42.905525, 21.573696>,  <32.696400, 43.470711, 21.137489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728592, 42.905525, 21.573696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.973598, 43.183041, 21.725216>,  <33.120602, 43.349548, 21.816128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.973598, 43.183041, 21.725216>,  <32.728592, 42.905525, 21.573696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973598, 43.183041, 21.725216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295433, -0.243555, 0.923797,
		0.733174, -0.677749, 0.055786,
		0.612516, 0.693785, 0.378798,
		33.157352, 43.391174, 21.838856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028683, 42.539268, 22.102516>,  <32.728592, 42.905525, 21.573696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028683, 42.539268, 22.102516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.099579, 42.926147, 22.175299>,  <33.142117, 43.158276, 22.218967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.099579, 42.926147, 22.175299>,  <33.028683, 42.539268, 22.102516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099579, 42.926147, 22.175299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211573, -0.143114, 0.966828,
		0.961157, -0.209858, 0.179268,
		0.177241, 0.967201, 0.181955,
		33.152752, 43.216309, 22.229885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579063, 42.581535, 22.556011>,  <33.028683, 42.539268, 22.102516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579063, 42.581535, 22.556011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.347332, 42.906094, 22.587038>,  <33.208294, 43.100826, 22.605654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.347332, 42.906094, 22.587038>,  <33.579063, 42.581535, 22.556011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347332, 42.906094, 22.587038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350809, -0.334108, 0.874817,
		0.735738, 0.479596, 0.478203,
		-0.579330, 0.811394, 0.077569,
		33.173534, 43.149513, 22.610310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593430, 42.827492, 23.284904>,  <33.579063, 42.581535, 22.556011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593430, 42.827492, 23.284904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.264904, 43.010300, 23.148331>,  <33.067787, 43.119984, 23.066387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.264904, 43.010300, 23.148331>,  <33.593430, 42.827492, 23.284904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264904, 43.010300, 23.148331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490967, -0.261484, 0.831010,
		0.290511, 0.850151, 0.439143,
		-0.821313, 0.457022, -0.341432,
		33.018509, 43.147408, 23.045900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334320, 43.216618, 23.867369>,  <33.593430, 42.827492, 23.284904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334320, 43.216618, 23.867369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.028721, 43.141071, 23.620584>,  <32.845364, 43.095745, 23.472513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.028721, 43.141071, 23.620584>,  <33.334320, 43.216618, 23.867369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028721, 43.141071, 23.620584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576415, -0.229881, 0.784156,
		-0.289926, 0.954717, 0.066765,
		-0.763995, -0.188864, -0.616962,
		32.799522, 43.084412, 23.435495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796925, 43.790951, 23.939186>,  <33.334320, 43.216618, 23.867369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796925, 43.790951, 23.939186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.606747, 43.471478, 23.791639>,  <32.492641, 43.279793, 23.703112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.606747, 43.471478, 23.791639>,  <32.796925, 43.790951, 23.939186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606747, 43.471478, 23.791639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360023, -0.205930, 0.909932,
		-0.802707, 0.565420, -0.189636,
		-0.475442, -0.798682, -0.368866,
		32.464115, 43.231873, 23.680979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384045, 43.608727, 24.430105>,  <32.796925, 43.790951, 23.939186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384045, 43.608727, 24.430105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.292969, 43.277840, 24.224630>,  <32.238323, 43.079308, 24.101345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.292969, 43.277840, 24.224630>,  <32.384045, 43.608727, 24.430105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292969, 43.277840, 24.224630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308670, -0.439022, 0.843790,
		-0.923515, 0.350682, -0.155375,
		-0.227689, -0.827213, -0.513689,
		32.224663, 43.029675, 24.070524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660624, 43.386093, 24.648989>,  <32.384045, 43.608727, 24.430105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660624, 43.386093, 24.648989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.821434, 43.060852, 24.480589>,  <31.917919, 42.865707, 24.379549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.821434, 43.060852, 24.480589>,  <31.660624, 43.386093, 24.648989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821434, 43.060852, 24.480589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230301, -0.534808, 0.812983,
		-0.886193, -0.229882, -0.402264,
		0.402024, -0.813102, -0.421000,
		31.942041, 42.816921, 24.354288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144354, 42.844761, 24.610006>,  <31.660624, 43.386093, 24.648989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144354, 42.844761, 24.610006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.504887, 42.671597, 24.615526>,  <31.721207, 42.567699, 24.618839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.504887, 42.671597, 24.615526>,  <31.144354, 42.844761, 24.610006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504887, 42.671597, 24.615526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255341, -0.505350, 0.824271,
		-0.349858, -0.746466, -0.566027,
		0.901332, -0.432908, 0.013803,
		31.775286, 42.541725, 24.619667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052097, 42.126434, 24.654684>,  <31.144354, 42.844761, 24.610006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052097, 42.126434, 24.654684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.434807, 42.162151, 24.765400>,  <31.664433, 42.183582, 24.831829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.434807, 42.162151, 24.765400>,  <31.052097, 42.126434, 24.654684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434807, 42.162151, 24.765400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209514, -0.448471, 0.868895,
		0.201719, -0.889326, -0.410376,
		0.956772, 0.089293, 0.276792,
		31.721838, 42.188938, 24.848438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920015, 41.513245, 24.192053>,  <31.052097, 42.126434, 24.654684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920015, 41.513245, 24.192053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.567844, 41.323677, 24.185791>,  <30.356541, 41.209938, 24.182034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.567844, 41.323677, 24.185791>,  <30.920015, 41.513245, 24.192053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567844, 41.323677, 24.185791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036389, -0.034614, -0.998738,
		0.472779, -0.879888, 0.047720,
		-0.880430, -0.473919, -0.015653,
		30.303715, 41.181503, 24.181095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104189, 41.091026, 23.710739>,  <30.920015, 41.513245, 24.192053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104189, 41.091026, 23.710739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706020, 41.118080, 23.737747>,  <30.467119, 41.134312, 23.753952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706020, 41.118080, 23.737747>,  <31.104189, 41.091026, 23.710739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706020, 41.118080, 23.737747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072998, -0.082099, -0.993947,
		-0.061670, -0.994327, 0.086660,
		-0.995424, 0.067623, 0.067521,
		30.407394, 41.138371, 23.758003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821600, 40.561684, 23.303959>,  <31.104189, 41.091026, 23.710739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821600, 40.561684, 23.303959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.505136, 40.804714, 23.332005>,  <30.315258, 40.950535, 23.348831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.505136, 40.804714, 23.332005>,  <30.821600, 40.561684, 23.303959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505136, 40.804714, 23.332005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171156, -0.109884, -0.979097,
		-0.587174, -0.786621, 0.190926,
		-0.791159, 0.607579, 0.070114,
		30.267790, 40.986988, 23.353039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378529, 40.267223, 22.827816>,  <30.821600, 40.561684, 23.303959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378529, 40.267223, 22.827816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.198339, 40.622948, 22.859324>,  <30.090225, 40.836380, 22.878229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.198339, 40.622948, 22.859324>,  <30.378529, 40.267223, 22.827816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198339, 40.622948, 22.859324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149673, 0.011755, -0.988666,
		-0.880155, -0.457156, 0.127810,
		-0.450472, 0.889309, 0.078770,
		30.063198, 40.889740, 22.882954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715677, 40.211285, 22.387823>,  <30.378529, 40.267223, 22.827816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715677, 40.211285, 22.387823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830948, 40.590363, 22.442705>,  <29.900110, 40.817810, 22.475634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830948, 40.590363, 22.442705>,  <29.715677, 40.211285, 22.387823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830948, 40.590363, 22.442705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140150, 0.183481, -0.972981,
		-0.947266, 0.261162, 0.185694,
		0.288177, 0.947697, 0.137203,
		29.917400, 40.874672, 22.483866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174402, 40.655182, 22.039953>,  <29.715677, 40.211285, 22.387823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174402, 40.655182, 22.039953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505678, 40.877956, 22.065016>,  <29.704443, 41.011620, 22.080053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505678, 40.877956, 22.065016>,  <29.174402, 40.655182, 22.039953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505678, 40.877956, 22.065016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065580, 0.207327, -0.976071,
		-0.556600, 0.804262, 0.208229,
		0.828188, 0.556937, 0.062655,
		29.754135, 41.045036, 22.083813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988277, 41.328049, 21.806173>,  <29.174402, 40.655182, 22.039953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988277, 41.328049, 21.806173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387335, 41.326874, 21.778742>,  <29.626768, 41.326168, 21.762283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387335, 41.326874, 21.778742>,  <28.988277, 41.328049, 21.806173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387335, 41.326874, 21.778742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066554, 0.203110, -0.976891,
		0.016800, 0.979152, 0.202436,
		0.997641, -0.002938, -0.068579,
		29.686626, 41.325993, 21.758167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187916, 41.942509, 21.457436>,  <28.988277, 41.328049, 21.806173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187916, 41.942509, 21.457436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.492579, 41.686161, 21.419153>,  <29.675377, 41.532352, 21.396183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.492579, 41.686161, 21.419153>,  <29.187916, 41.942509, 21.457436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492579, 41.686161, 21.419153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007384, 0.139108, -0.990250,
		0.647937, 0.754938, 0.101221,
		0.761658, -0.640872, -0.095708,
		29.721075, 41.493900, 21.390440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663839, 42.315697, 21.104750>,  <29.187916, 41.942509, 21.457436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663839, 42.315697, 21.104750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.772621, 41.936558, 21.038269>,  <29.837891, 41.709076, 20.998381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.772621, 41.936558, 21.038269>,  <29.663839, 42.315697, 21.104750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772621, 41.936558, 21.038269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166235, 0.216387, -0.962051,
		0.947843, 0.234007, 0.216413,
		0.271956, -0.947849, -0.166200,
		29.854208, 41.652203, 20.988409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319365, 42.296909, 20.727867>,  <29.663839, 42.315697, 21.104750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319365, 42.296909, 20.727867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151304, 41.939846, 20.662586>,  <30.050468, 41.725609, 20.623419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151304, 41.939846, 20.662586>,  <30.319365, 42.296909, 20.727867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151304, 41.939846, 20.662586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052841, 0.203605, -0.977626,
		0.905913, -0.402129, -0.132715,
		-0.420153, -0.892657, -0.163200,
		30.025259, 41.672050, 20.613626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703690, 42.069332, 20.245739>,  <30.319365, 42.296909, 20.727867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703690, 42.069332, 20.245739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.347731, 41.886978, 20.239317>,  <30.134155, 41.777565, 20.235464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.347731, 41.886978, 20.239317>,  <30.703690, 42.069332, 20.245739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347731, 41.886978, 20.239317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025654, -0.014874, -0.999560,
		0.455441, -0.889917, 0.024932,
		-0.889896, -0.455880, -0.016056,
		30.080761, 41.750214, 20.234501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760523, 41.779263, 19.582747>,  <30.703690, 42.069332, 20.245739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760523, 41.779263, 19.582747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376526, 41.735073, 19.685673>,  <30.146128, 41.708557, 19.747429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376526, 41.735073, 19.685673>,  <30.760523, 41.779263, 19.582747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376526, 41.735073, 19.685673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266353, 0.076552, -0.960831,
		0.086443, -0.990927, -0.102913,
		-0.959991, -0.110469, 0.257319,
		30.088528, 41.701931, 19.762869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494621, 41.342239, 19.119398>,  <30.760523, 41.779263, 19.582747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494621, 41.342239, 19.119398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.170185, 41.516571, 19.275440>,  <29.975523, 41.621170, 19.369066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.170185, 41.516571, 19.275440>,  <30.494621, 41.342239, 19.119398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170185, 41.516571, 19.275440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466336, -0.079241, -0.881051,
		-0.353079, -0.896532, 0.267516,
		-0.811089, 0.435833, 0.390107,
		29.926859, 41.647320, 19.392473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097944, 40.928585, 19.396246>,  <30.494621, 41.342239, 19.119398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097944, 40.928585, 19.396246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.085602, 40.632271, 19.127831>,  <31.078197, 40.454483, 18.966782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.085602, 40.632271, 19.127831>,  <31.097944, 40.928585, 19.396246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085602, 40.632271, 19.127831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287882, -0.649493, 0.703763,
		-0.957169, -0.171465, 0.233298,
		-0.030854, -0.740782, -0.671036,
		31.076345, 40.410038, 18.926519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699245, 40.447769, 19.765398>,  <31.097944, 40.928585, 19.396246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699245, 40.447769, 19.765398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.936018, 40.312435, 19.472782>,  <31.078081, 40.231236, 19.297213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.936018, 40.312435, 19.472782>,  <30.699245, 40.447769, 19.765398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936018, 40.312435, 19.472782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197328, -0.819174, 0.538531,
		-0.781460, -0.463126, -0.418132,
		0.591930, -0.338332, -0.731540,
		31.113596, 40.210934, 19.253321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549019, 39.728142, 19.607309>,  <30.699245, 40.447769, 19.765398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549019, 39.728142, 19.607309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.919144, 39.759068, 19.458815>,  <31.141218, 39.777622, 19.369717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.919144, 39.759068, 19.458815>,  <30.549019, 39.728142, 19.607309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919144, 39.759068, 19.458815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242907, -0.872623, 0.423704,
		-0.291191, -0.482235, -0.826231,
		0.925313, 0.077318, -0.371238,
		31.196737, 39.782265, 19.347443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742653, 39.075867, 19.323515>,  <30.549019, 39.728142, 19.607309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742653, 39.075867, 19.323515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083157, 39.268570, 19.406721>,  <31.287458, 39.384190, 19.456646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083157, 39.268570, 19.406721>,  <30.742653, 39.075867, 19.323515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083157, 39.268570, 19.406721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344590, -0.812170, 0.470783,
		0.395748, -0.329077, -0.857375,
		0.851258, 0.481755, 0.208018,
		31.338533, 39.413097, 19.469126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235584, 38.523003, 19.062479>,  <30.742653, 39.075867, 19.323515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235584, 38.523003, 19.062479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443127, 38.773685, 19.295040>,  <31.567652, 38.924095, 19.434578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443127, 38.773685, 19.295040>,  <31.235584, 38.523003, 19.062479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443127, 38.773685, 19.295040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303934, -0.770914, 0.559746,
		0.799008, -0.113718, -0.590469,
		0.518854, 0.626706, 0.581404,
		31.598783, 38.961697, 19.469461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849897, 38.232990, 19.082035>,  <31.235584, 38.523003, 19.062479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849897, 38.232990, 19.082035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.847431, 38.478371, 19.397919>,  <31.845951, 38.625599, 19.587448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.847431, 38.478371, 19.397919>,  <31.849897, 38.232990, 19.082035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847431, 38.478371, 19.397919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208895, -0.771509, 0.600946,
		0.977919, 0.168672, -0.123389,
		-0.006167, 0.613452, 0.789708,
		31.845581, 38.662407, 19.634830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549637, 38.178780, 19.409832>,  <31.849897, 38.232990, 19.082035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549637, 38.178780, 19.409832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331871, 38.327374, 19.710661>,  <32.201214, 38.416531, 19.891159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331871, 38.327374, 19.710661>,  <32.549637, 38.178780, 19.409832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331871, 38.327374, 19.710661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308923, -0.744772, 0.591508,
		0.779860, 0.554356, 0.290701,
		-0.544412, 0.371489, 0.752072,
		32.168549, 38.438820, 19.936283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925247, 38.134048, 20.082092>,  <32.549637, 38.178780, 19.409832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925247, 38.134048, 20.082092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552002, 38.199982, 20.209917>,  <32.328053, 38.239540, 20.286612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552002, 38.199982, 20.209917>,  <32.925247, 38.134048, 20.082092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552002, 38.199982, 20.209917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143376, -0.644463, 0.751073,
		0.329749, 0.746657, 0.577727,
		-0.933118, 0.164834, 0.319564,
		32.272068, 38.249432, 20.305786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480301, 38.710457, 20.157906>,  <32.925247, 38.134048, 20.082092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480301, 38.710457, 20.157906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.854656, 38.574905, 20.119370>,  <34.079269, 38.493576, 20.096249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.854656, 38.574905, 20.119370>,  <33.480301, 38.710457, 20.157906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854656, 38.574905, 20.119370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180509, 0.696076, -0.694907,
		0.302547, 0.632963, 0.712617,
		0.935886, -0.338876, -0.096340,
		34.135422, 38.473244, 20.090467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938892, 39.246555, 20.224426>,  <33.480301, 38.710457, 20.157906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938892, 39.246555, 20.224426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.148079, 38.981140, 20.010427>,  <34.273590, 38.821892, 19.882029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.148079, 38.981140, 20.010427>,  <33.938892, 39.246555, 20.224426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148079, 38.981140, 20.010427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302806, 0.731357, -0.611086,
		0.796754, 0.157575, 0.583398,
		0.522963, -0.663542, -0.534997,
		34.304970, 38.782078, 19.849928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604115, 39.570896, 20.016426>,  <33.938892, 39.246555, 20.224426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604115, 39.570896, 20.016426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.567707, 39.271557, 19.753613>,  <34.545864, 39.091953, 19.595924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.567707, 39.271557, 19.753613>,  <34.604115, 39.570896, 20.016426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567707, 39.271557, 19.753613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040262, 0.656470, -0.753277,
		0.995035, -0.095015, -0.029620,
		-0.091017, -0.748344, -0.657036,
		34.540401, 39.047054, 19.556501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163979, 39.555416, 19.538601>,  <34.604115, 39.570896, 20.016426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163979, 39.555416, 19.538601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.864201, 39.367867, 19.351629>,  <34.684334, 39.255337, 19.239447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.864201, 39.367867, 19.351629>,  <35.163979, 39.555416, 19.538601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864201, 39.367867, 19.351629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054625, 0.659813, -0.749442,
		0.659813, -0.587197, -0.468879,
		0.749442, 0.468879, 0.467428,
		34.639366, 39.227203, 19.211401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293819, 39.686340, 18.803242>,  <35.163979, 39.555416, 19.538601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293819, 39.686340, 18.803242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.920708, 39.542980, 18.818598>,  <34.696842, 39.456966, 18.827812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.920708, 39.542980, 18.818598>,  <35.293819, 39.686340, 18.803242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920708, 39.542980, 18.818598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264473, 0.608152, -0.748469,
		0.244901, -0.708310, -0.662058,
		-0.932780, -0.358397, 0.038392,
		34.640873, 39.435463, 18.830114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113434, 39.549503, 18.218307>,  <35.293819, 39.686340, 18.803242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113434, 39.549503, 18.218307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.748520, 39.587791, 18.377590>,  <34.529572, 39.610764, 18.473160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.748520, 39.587791, 18.377590>,  <35.113434, 39.549503, 18.218307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748520, 39.587791, 18.377590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279984, 0.563838, -0.776978,
		-0.298896, -0.820320, -0.487583,
		-0.912289, 0.095720, 0.398206,
		34.474834, 39.616508, 18.497051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700005, 39.336636, 17.629705>,  <35.113434, 39.549503, 18.218307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700005, 39.336636, 17.629705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.485897, 39.546318, 17.894640>,  <34.357433, 39.672127, 18.053600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.485897, 39.546318, 17.894640>,  <34.700005, 39.336636, 17.629705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485897, 39.546318, 17.894640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368733, 0.560458, -0.741568,
		-0.759948, -0.641166, -0.106704,
		-0.535271, 0.524208, 0.662338,
		34.325317, 39.703579, 18.093342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117058, 39.596313, 17.223810>,  <34.700005, 39.336636, 17.629705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117058, 39.596313, 17.223810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.144947, 39.832077, 17.545738>,  <34.161682, 39.973537, 17.738895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.144947, 39.832077, 17.545738>,  <34.117058, 39.596313, 17.223810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144947, 39.832077, 17.545738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226854, 0.795012, -0.562578,
		-0.971430, -0.143352, 0.189141,
		0.069722, 0.589412, 0.804818,
		34.165863, 40.008900, 17.787184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510941, 39.941238, 17.330893>,  <34.117058, 39.596313, 17.223810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510941, 39.941238, 17.330893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.807034, 40.170803, 17.470999>,  <33.984688, 40.308540, 17.555061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.807034, 40.170803, 17.470999>,  <33.510941, 39.941238, 17.330893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807034, 40.170803, 17.470999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283096, 0.738565, -0.611865,
		-0.609849, 0.353762, 0.709180,
		0.740230, 0.573912, 0.350264,
		34.029102, 40.342976, 17.576078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.130775, 34.497353, 32.262642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.528206, 34.503124, 32.217751>,  <35.766666, 34.506588, 32.190815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.528206, 34.503124, 32.217751>,  <35.130775, 34.497353, 32.262642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528206, 34.503124, 32.217751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105034, 0.486403, -0.867398,
		0.042073, 0.873615, 0.484795,
		0.993578, 0.014426, -0.112224,
		35.826279, 34.507450, 32.184082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379440, 35.150928, 32.190819>,  <35.130775, 34.497353, 32.262642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379440, 35.150928, 32.190819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.654610, 34.922531, 32.011608>,  <35.819710, 34.785492, 31.904081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.654610, 34.922531, 32.011608>,  <35.379440, 35.150928, 32.190819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654610, 34.922531, 32.011608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122433, 0.517160, -0.847086,
		0.715385, 0.637582, 0.285856,
		0.687920, -0.570995, -0.448030,
		35.860985, 34.751232, 31.877199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715401, 35.600079, 31.676079>,  <35.379440, 35.150928, 32.190819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715401, 35.600079, 31.676079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812016, 35.239521, 31.532328>,  <35.869984, 35.023186, 31.446077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812016, 35.239521, 31.532328>,  <35.715401, 35.600079, 31.676079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812016, 35.239521, 31.532328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072109, 0.352648, -0.932974,
		0.967709, 0.251263, 0.020179,
		0.241538, -0.901391, -0.359379,
		35.884476, 34.969105, 31.424515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047939, 35.755352, 31.043783>,  <35.715401, 35.600079, 31.676079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047939, 35.755352, 31.043783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985714, 35.363937, 30.989710>,  <35.948380, 35.129089, 30.957266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985714, 35.363937, 30.989710>,  <36.047939, 35.755352, 31.043783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985714, 35.363937, 30.989710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028806, 0.132297, -0.990791,
		0.987406, -0.158023, 0.007608,
		-0.155561, -0.978533, -0.135182,
		35.939045, 35.070377, 30.949156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379520, 35.640484, 30.390701>,  <36.047939, 35.755352, 31.043783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379520, 35.640484, 30.390701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134777, 35.328835, 30.445251>,  <35.987930, 35.141846, 30.477982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134777, 35.328835, 30.445251>,  <36.379520, 35.640484, 30.390701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134777, 35.328835, 30.445251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194340, -0.019047, -0.980749,
		0.766723, -0.626580, -0.139761,
		-0.611856, -0.779124, 0.136374,
		35.951221, 35.095097, 30.486164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505962, 35.197865, 29.915087>,  <36.379520, 35.640484, 30.390701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505962, 35.197865, 29.915087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129852, 35.112835, 30.021437>,  <35.904186, 35.061817, 30.085247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129852, 35.112835, 30.021437>,  <36.505962, 35.197865, 29.915087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129852, 35.112835, 30.021437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300738, 0.152834, -0.941381,
		0.159501, -0.965114, -0.207642,
		-0.940274, -0.212597, 0.265869,
		35.847771, 35.049065, 30.101200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359909, 34.815567, 29.414652>,  <36.505962, 35.197865, 29.915087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359909, 34.815567, 29.414652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003941, 34.891731, 29.580439>,  <35.790359, 34.937431, 29.679911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003941, 34.891731, 29.580439>,  <36.359909, 34.815567, 29.414652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003941, 34.891731, 29.580439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426185, -0.023408, -0.904333,
		-0.162497, -0.981424, 0.101984,
		-0.889922, 0.190415, 0.414465,
		35.736965, 34.948856, 29.704779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816772, 34.154934, 29.447130>,  <36.359909, 34.815567, 29.414652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816772, 34.154934, 29.447130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632233, 34.509781, 29.452499>,  <35.521511, 34.722691, 29.455721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632233, 34.509781, 29.452499>,  <35.816772, 34.154934, 29.447130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632233, 34.509781, 29.452499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435554, -0.213277, -0.874532,
		-0.772950, -0.409310, 0.484783,
		-0.461347, 0.887118, 0.013424,
		35.493828, 34.775917, 29.456528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231430, 34.020882, 28.982698>,  <35.816772, 34.154934, 29.447130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231430, 34.020882, 28.982698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221577, 34.415333, 29.048359>,  <35.215664, 34.652004, 29.087755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221577, 34.415333, 29.048359>,  <35.231430, 34.020882, 28.982698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221577, 34.415333, 29.048359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526236, 0.126821, -0.840828,
		-0.849982, -0.107096, 0.515811,
		-0.024634, 0.986127, 0.164153,
		35.214188, 34.711170, 29.097605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577801, 34.307556, 28.814837>,  <35.231430, 34.020882, 28.982698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577801, 34.307556, 28.814837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822620, 34.617989, 28.754042>,  <34.969513, 34.804249, 28.717566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822620, 34.617989, 28.754042>,  <34.577801, 34.307556, 28.814837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822620, 34.617989, 28.754042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510783, 0.241226, -0.825173,
		-0.603734, 0.582679, 0.544049,
		0.612050, 0.776077, -0.151986,
		35.006237, 34.850811, 28.708447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259007, 34.642601, 28.354445>,  <34.577801, 34.307556, 28.814837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259007, 34.642601, 28.354445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603287, 34.845715, 28.339760>,  <34.809856, 34.967583, 28.330950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603287, 34.845715, 28.339760>,  <34.259007, 34.642601, 28.354445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603287, 34.845715, 28.339760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273734, 0.400770, -0.874330,
		-0.429259, 0.762586, 0.483941,
		0.860701, 0.507785, -0.036712,
		34.861496, 34.998051, 28.328747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106155, 35.327847, 28.145079>,  <34.259007, 34.642601, 28.354445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106155, 35.327847, 28.145079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480076, 35.247738, 28.027756>,  <34.704430, 35.199673, 27.957361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480076, 35.247738, 28.027756>,  <34.106155, 35.327847, 28.145079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480076, 35.247738, 28.027756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220464, 0.320263, -0.921318,
		0.278449, 0.925918, 0.255231,
		0.934806, -0.200271, -0.293309,
		34.760517, 35.187656, 27.939764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539528, 35.818230, 28.164946>,  <34.106155, 35.327847, 28.145079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539528, 35.818230, 28.164946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139984, 35.804375, 28.178144>,  <32.900257, 35.796062, 28.186064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139984, 35.804375, 28.178144>,  <33.539528, 35.818230, 28.164946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139984, 35.804375, 28.178144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036008, -0.090258, 0.995267,
		-0.031495, 0.995316, 0.091402,
		-0.998855, -0.034638, 0.032996,
		32.840328, 35.793983, 28.188044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426285, 36.129013, 28.790083>,  <33.539528, 35.818230, 28.164946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426285, 36.129013, 28.790083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100681, 35.918331, 28.692123>,  <32.905319, 35.791924, 28.633348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100681, 35.918331, 28.692123>,  <33.426285, 36.129013, 28.790083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100681, 35.918331, 28.692123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110087, -0.274082, 0.955385,
		-0.570327, 0.804650, 0.165122,
		-0.814007, -0.526704, -0.244898,
		32.856480, 35.760319, 28.618654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946877, 36.275097, 29.308020>,  <33.426285, 36.129013, 28.790083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946877, 36.275097, 29.308020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804707, 35.935425, 29.151783>,  <32.719406, 35.731621, 29.058041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804707, 35.935425, 29.151783>,  <32.946877, 36.275097, 29.308020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804707, 35.935425, 29.151783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130979, -0.368506, 0.920352,
		-0.925483, 0.378275, 0.019750,
		-0.355424, -0.849183, -0.390592,
		32.698078, 35.680672, 29.034605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250065, 36.096714, 29.608669>,  <32.946877, 36.275097, 29.308020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250065, 36.096714, 29.608669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444366, 35.776344, 29.468634>,  <32.560947, 35.584122, 29.384613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444366, 35.776344, 29.468634>,  <32.250065, 36.096714, 29.608669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444366, 35.776344, 29.468634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174611, -0.481356, 0.858957,
		-0.856477, -0.356113, -0.373672,
		0.485755, -0.800924, -0.350088,
		32.590092, 35.536068, 29.363607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826912, 35.520351, 29.815804>,  <32.250065, 36.096714, 29.608669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826912, 35.520351, 29.815804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202072, 35.397041, 29.752171>,  <32.427170, 35.323055, 29.713991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202072, 35.397041, 29.752171>,  <31.826912, 35.520351, 29.815804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202072, 35.397041, 29.752171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009864, -0.482104, 0.876059,
		-0.346757, -0.820089, -0.455208,
		0.937903, -0.308270, -0.159084,
		32.483444, 35.304562, 29.704445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749741, 34.817764, 30.009295>,  <31.826912, 35.520351, 29.815804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749741, 34.817764, 30.009295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144142, 34.884087, 30.002312>,  <32.380783, 34.923878, 29.998121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144142, 34.884087, 30.002312>,  <31.749741, 34.817764, 30.009295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144142, 34.884087, 30.002312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107571, -0.552700, 0.826409,
		0.127371, -0.816721, -0.562800,
		0.986004, 0.165802, -0.017458,
		32.439945, 34.933826, 29.997074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937237, 34.242809, 30.304977>,  <31.749741, 34.817764, 30.009295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937237, 34.242809, 30.304977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254589, 34.479488, 30.362158>,  <32.445000, 34.621498, 30.396467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254589, 34.479488, 30.362158>,  <31.937237, 34.242809, 30.304977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254589, 34.479488, 30.362158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173431, -0.444827, 0.878664,
		0.583494, -0.672324, -0.455537,
		0.793383, 0.591700, 0.142953,
		32.492603, 34.656998, 30.405043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547508, 33.802666, 30.382673>,  <31.937237, 34.242809, 30.304977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547508, 33.802666, 30.382673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.580086, 34.166924, 30.544703>,  <32.599632, 34.385479, 30.641920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.580086, 34.166924, 30.544703>,  <32.547508, 33.802666, 30.382673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580086, 34.166924, 30.544703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190334, -0.413155, 0.890548,
		0.978335, 0.004570, -0.206976,
		0.081443, 0.910649, 0.405074,
		32.604519, 34.440117, 30.666225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855976, 33.612827, 30.902723>,  <32.547508, 33.802666, 30.382673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855976, 33.612827, 30.902723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792187, 33.990108, 31.019299>,  <32.753914, 34.216476, 31.089245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792187, 33.990108, 31.019299>,  <32.855976, 33.612827, 30.902723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792187, 33.990108, 31.019299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008710, -0.296551, 0.954978,
		0.987164, 0.149753, 0.055507,
		-0.159471, 0.943203, 0.291440,
		32.744347, 34.273071, 31.106730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332813, 33.764446, 31.350386>,  <32.855976, 33.612827, 30.902723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332813, 33.764446, 31.350386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058910, 34.036674, 31.454639>,  <32.894569, 34.200012, 31.517191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058910, 34.036674, 31.454639>,  <33.332813, 33.764446, 31.350386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058910, 34.036674, 31.454639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224498, -0.143255, 0.963887,
		0.693329, 0.718543, -0.054691,
		-0.684759, 0.680569, 0.260634,
		32.853481, 34.240845, 31.532829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614986, 34.193859, 31.864908>,  <33.332813, 33.764446, 31.350386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614986, 34.193859, 31.864908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221928, 34.255440, 31.906296>,  <32.986092, 34.292389, 31.931128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221928, 34.255440, 31.906296>,  <33.614986, 34.193859, 31.864908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221928, 34.255440, 31.906296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099350, -0.034227, 0.994464,
		0.156643, 0.987485, 0.018337,
		-0.982646, 0.153954, 0.103468,
		32.927135, 34.301624, 31.937336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568195, 34.718277, 32.202896>,  <33.614986, 34.193859, 31.864908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568195, 34.718277, 32.202896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232227, 34.514179, 32.276863>,  <33.030647, 34.391720, 32.321243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232227, 34.514179, 32.276863>,  <33.568195, 34.718277, 32.202896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232227, 34.514179, 32.276863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176323, 0.065689, 0.982138,
		-0.513276, 0.857518, 0.034794,
		-0.839915, -0.510243, 0.184917,
		32.980251, 34.361107, 32.332336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453060, 34.927612, 32.765156>,  <33.568195, 34.718277, 32.202896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453060, 34.927612, 32.765156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185253, 34.630898, 32.780701>,  <33.024570, 34.452869, 32.790028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185253, 34.630898, 32.780701>,  <33.453060, 34.927612, 32.765156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185253, 34.630898, 32.780701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146776, -0.080828, 0.985862,
		-0.728154, 0.665752, 0.162991,
		-0.669514, -0.741782, 0.038861,
		32.984398, 34.408363, 32.792358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990566, 35.071239, 33.316479>,  <33.453060, 34.927612, 32.765156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990566, 35.071239, 33.316479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.964130, 34.677361, 33.251984>,  <32.948269, 34.441032, 33.213287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.964130, 34.677361, 33.251984>,  <32.990566, 35.071239, 33.316479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964130, 34.677361, 33.251984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009470, -0.160961, 0.986915,
		-0.997769, 0.066750, 0.001313,
		-0.066088, -0.984701, -0.161234,
		32.944305, 34.381950, 33.203613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390934, 34.655369, 33.608280>,  <32.990566, 35.071239, 33.316479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390934, 34.655369, 33.608280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701813, 34.404549, 33.587234>,  <32.888340, 34.254055, 33.574608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701813, 34.404549, 33.587234>,  <32.390934, 34.655369, 33.608280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701813, 34.404549, 33.587234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058601, -0.155370, 0.986117,
		-0.626519, -0.763327, -0.157499,
		0.777200, -0.627050, -0.052611,
		32.934975, 34.216434, 33.571453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883812, 35.098076, 33.628300>,  <32.390934, 34.655369, 33.608280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883812, 35.098076, 33.628300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880203, 35.455555, 33.448868>,  <31.878038, 35.670044, 33.341209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880203, 35.455555, 33.448868>,  <31.883812, 35.098076, 33.628300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880203, 35.455555, 33.448868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842812, -0.248207, -0.477556,
		-0.538132, 0.373759, 0.755459,
		-0.009020, 0.893699, -0.448577,
		31.877497, 35.723663, 33.314293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333611, 35.120041, 33.163311>,  <31.883812, 35.098076, 33.628300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333611, 35.120041, 33.163311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.467644, 35.490177, 33.092365>,  <31.548063, 35.712261, 33.049797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.467644, 35.490177, 33.092365>,  <31.333611, 35.120041, 33.163311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467644, 35.490177, 33.092365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815296, 0.190416, -0.546840,
		-0.472241, 0.327846, 0.818233,
		0.335084, 0.925343, -0.177369,
		31.568169, 35.767780, 33.039154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707205, 35.565025, 33.038479>,  <31.333611, 35.120041, 33.163311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707205, 35.565025, 33.038479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008808, 35.764088, 32.866989>,  <31.189770, 35.883526, 32.764095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008808, 35.764088, 32.866989>,  <30.707205, 35.565025, 33.038479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008808, 35.764088, 32.866989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656035, 0.537782, -0.529535,
		-0.032968, 0.680533, 0.731976,
		0.754010, 0.497660, -0.428724,
		31.235010, 35.913387, 32.738373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401974, 36.285244, 32.951611>,  <30.707205, 35.565025, 33.038479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401974, 36.285244, 32.951611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727474, 36.270397, 32.719601>,  <30.922775, 36.261490, 32.580395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727474, 36.270397, 32.719601>,  <30.401974, 36.285244, 32.951611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727474, 36.270397, 32.719601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466423, 0.553734, -0.689803,
		0.346781, 0.831866, 0.433292,
		0.813753, -0.037113, -0.580025,
		30.971600, 36.259262, 32.545593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571121, 36.944115, 32.715225>,  <30.401974, 36.285244, 32.951611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571121, 36.944115, 32.715225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.751171, 36.718925, 32.437969>,  <30.859201, 36.583813, 32.271614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.751171, 36.718925, 32.437969>,  <30.571121, 36.944115, 32.715225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751171, 36.718925, 32.437969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312760, 0.627664, -0.712895,
		0.836403, 0.537679, 0.106450,
		0.450123, -0.562974, -0.693144,
		30.886208, 36.550034, 32.230026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034821, 37.300331, 32.439365>,  <30.571121, 36.944115, 32.715225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034821, 37.300331, 32.439365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.976074, 37.027081, 32.153214>,  <30.940826, 36.863129, 31.981522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.976074, 37.027081, 32.153214>,  <31.034821, 37.300331, 32.439365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976074, 37.027081, 32.153214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243974, 0.725897, -0.643079,
		0.958597, 0.080090, -0.273272,
		-0.146863, -0.683125, -0.715382,
		30.932014, 36.822144, 31.938599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180344, 37.581051, 31.813852>,  <31.034821, 37.300331, 32.439365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180344, 37.581051, 31.813852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.985941, 37.261684, 31.671682>,  <30.869299, 37.070065, 31.586380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.985941, 37.261684, 31.671682>,  <31.180344, 37.581051, 31.813852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985941, 37.261684, 31.671682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344465, 0.548763, -0.761711,
		0.803209, -0.247763, -0.541728,
		-0.486004, -0.798419, -0.355426,
		30.840139, 37.022160, 31.565054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533152, 37.284325, 31.188011>,  <31.180344, 37.581051, 31.813852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533152, 37.284325, 31.188011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.145691, 37.186855, 31.168684>,  <30.913214, 37.128372, 31.157087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.145691, 37.186855, 31.168684>,  <31.533152, 37.284325, 31.188011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145691, 37.186855, 31.168684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079624, 0.488783, -0.868764,
		0.235312, -0.837684, -0.492863,
		-0.968653, -0.243674, -0.048317,
		30.855095, 37.113754, 31.154188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501253, 37.098728, 30.503769>,  <31.533152, 37.284325, 31.188011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501253, 37.098728, 30.503769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.118025, 37.162086, 30.599279>,  <30.888088, 37.200100, 30.656586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.118025, 37.162086, 30.599279>,  <31.501253, 37.098728, 30.503769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118025, 37.162086, 30.599279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140299, 0.467270, -0.872912,
		-0.249838, -0.869810, -0.425455,
		-0.958070, 0.158396, 0.238775,
		30.830605, 37.209606, 30.670912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095001, 37.022881, 29.844299>,  <31.501253, 37.098728, 30.503769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095001, 37.022881, 29.844299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.841019, 37.200691, 30.097034>,  <30.688629, 37.307377, 30.248676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.841019, 37.200691, 30.097034>,  <31.095001, 37.022881, 29.844299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841019, 37.200691, 30.097034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355366, 0.558138, -0.749798,
		-0.685961, -0.700625, -0.196424,
		-0.634958, 0.444530, 0.631840,
		30.650532, 37.334049, 30.286587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335274, 36.936813, 29.624388>,  <31.095001, 37.022881, 29.844299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335274, 36.936813, 29.624388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.366625, 37.271854, 29.840641>,  <30.385435, 37.472878, 29.970392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.366625, 37.271854, 29.840641>,  <30.335274, 36.936813, 29.624388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366625, 37.271854, 29.840641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374901, 0.527258, -0.762528,
		-0.923746, -0.142918, 0.355343,
		0.078378, 0.837600, 0.540632,
		30.390139, 37.523136, 30.002831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676737, 37.242542, 29.561554>,  <30.335274, 36.936813, 29.624388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676737, 37.242542, 29.561554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.927681, 37.534412, 29.670362>,  <30.078247, 37.709534, 29.735647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.927681, 37.534412, 29.670362>,  <29.676737, 37.242542, 29.561554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927681, 37.534412, 29.670362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223758, 0.503495, -0.834521,
		-0.745888, 0.462680, 0.479143,
		0.627363, 0.729671, 0.272023,
		30.115891, 37.753315, 29.751968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299473, 37.882183, 29.450567>,  <29.676737, 37.242542, 29.561554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299473, 37.882183, 29.450567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.684658, 37.990028, 29.452244>,  <29.915770, 38.054733, 29.453249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.684658, 37.990028, 29.452244>,  <29.299473, 37.882183, 29.450567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684658, 37.990028, 29.452244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151345, 0.553289, -0.819126,
		-0.223162, 0.788152, 0.573599,
		0.962961, 0.269609, 0.004190,
		29.973547, 38.070911, 29.453501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178289, 38.606472, 29.460379>,  <29.299473, 37.882183, 29.450567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178289, 38.606472, 29.460379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.546953, 38.533703, 29.323298>,  <29.768152, 38.490040, 29.241049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.546953, 38.533703, 29.323298>,  <29.178289, 38.606472, 29.460379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546953, 38.533703, 29.323298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199082, 0.536397, -0.820149,
		0.333028, 0.824126, 0.458158,
		0.921661, -0.181922, -0.342704,
		29.823452, 38.479126, 29.220486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302942, 39.154678, 29.043068>,  <29.178289, 38.606472, 29.460379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302942, 39.154678, 29.043068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.591440, 38.901009, 28.931623>,  <29.764540, 38.748806, 28.864758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.591440, 38.901009, 28.931623>,  <29.302942, 39.154678, 29.043068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591440, 38.901009, 28.931623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033338, 0.433537, -0.900519,
		0.691876, 0.640208, 0.333829,
		0.721246, -0.634176, -0.278611,
		29.807814, 38.710754, 28.848040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886290, 39.501419, 28.941790>,  <29.302942, 39.154678, 29.043068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886290, 39.501419, 28.941790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.891264, 39.174915, 28.710770>,  <29.894249, 38.979012, 28.572157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.891264, 39.174915, 28.710770>,  <29.886290, 39.501419, 28.941790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891264, 39.174915, 28.710770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117254, 0.572419, -0.811534,
		0.993024, 0.077812, -0.088592,
		0.012436, -0.816261, -0.577550,
		29.894995, 38.930038, 28.537504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358963, 39.649612, 28.402002>,  <29.886290, 39.501419, 28.941790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358963, 39.649612, 28.402002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.141075, 39.343693, 28.264385>,  <30.010342, 39.160141, 28.181814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.141075, 39.343693, 28.264385>,  <30.358963, 39.649612, 28.402002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141075, 39.343693, 28.264385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013829, 0.402001, -0.915535,
		0.838505, -0.503467, -0.208401,
		-0.544719, -0.764798, -0.344042,
		29.977659, 39.114254, 28.161173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772108, 39.379272, 27.767775>,  <30.358963, 39.649612, 28.402002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772108, 39.379272, 27.767775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.399483, 39.236916, 27.738016>,  <30.175907, 39.151501, 27.720161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.399483, 39.236916, 27.738016>,  <30.772108, 39.379272, 27.767775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399483, 39.236916, 27.738016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027624, 0.273314, -0.961528,
		0.362534, -0.893667, -0.264440,
		-0.931562, -0.355891, -0.074399,
		30.120014, 39.130150, 27.715696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826391, 38.945366, 27.237440>,  <30.772108, 39.379272, 27.767775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826391, 38.945366, 27.237440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.456322, 39.086750, 27.292746>,  <30.234280, 39.171581, 27.325928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.456322, 39.086750, 27.292746>,  <30.826391, 38.945366, 27.237440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456322, 39.086750, 27.292746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049062, 0.249854, -0.967040,
		-0.376355, -0.901465, -0.213817,
		-0.925176, 0.353460, 0.138261,
		30.178768, 39.192787, 27.334225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524643, 38.820908, 26.662638>,  <30.826391, 38.945366, 27.237440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524643, 38.820908, 26.662638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.252623, 39.079330, 26.801283>,  <30.089411, 39.234383, 26.884470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.252623, 39.079330, 26.801283>,  <30.524643, 38.820908, 26.662638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252623, 39.079330, 26.801283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067349, 0.415717, -0.906997,
		-0.730066, -0.640147, -0.239196,
		-0.680050, 0.646058, 0.346614,
		30.048607, 39.273148, 26.905268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900400, 38.855793, 26.177313>,  <30.524643, 38.820908, 26.662638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900400, 38.855793, 26.177313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.935179, 39.197758, 26.381886>,  <29.956045, 39.402939, 26.504629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.935179, 39.197758, 26.381886>,  <29.900400, 38.855793, 26.177313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935179, 39.197758, 26.381886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055514, 0.508421, -0.859317,
		-0.994665, 0.103105, -0.003255,
		0.086945, 0.854913, 0.511433,
		29.961262, 39.454231, 26.535315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392365, 39.181011, 25.851303>,  <29.900400, 38.855793, 26.177313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392365, 39.181011, 25.851303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.620840, 39.448940, 26.041075>,  <29.757925, 39.609699, 26.154938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.620840, 39.448940, 26.041075>,  <29.392365, 39.181011, 25.851303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620840, 39.448940, 26.041075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004817, 0.575249, -0.817964,
		-0.820805, 0.469497, 0.325348,
		0.571188, 0.669822, 0.474429,
		29.792196, 39.649887, 26.183403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089378, 39.930862, 25.738966>,  <29.392365, 39.181011, 25.851303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089378, 39.930862, 25.738966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.472881, 39.992130, 25.834738>,  <29.702982, 40.028893, 25.892200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.472881, 39.992130, 25.834738>,  <29.089378, 39.930862, 25.738966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472881, 39.992130, 25.834738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076020, 0.673507, -0.735261,
		-0.273878, 0.723137, 0.634085,
		0.958755, 0.153169, 0.239432,
		29.760508, 40.038082, 25.906567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136787, 40.559521, 25.597422>,  <29.089378, 39.930862, 25.738966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136787, 40.559521, 25.597422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517942, 40.438808, 25.609671>,  <29.746635, 40.366383, 25.617020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517942, 40.438808, 25.609671>,  <29.136787, 40.559521, 25.597422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517942, 40.438808, 25.609671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221290, 0.622568, -0.750627,
		0.207458, 0.722038, 0.660017,
		0.952886, -0.301779, 0.030623,
		29.803808, 40.348274, 25.618858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488667, 41.131153, 25.621460>,  <29.136787, 40.559521, 25.597422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488667, 41.131153, 25.621460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.752884, 40.866577, 25.479374>,  <29.911415, 40.707832, 25.394121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.752884, 40.866577, 25.479374>,  <29.488667, 41.131153, 25.621460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752884, 40.866577, 25.479374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168403, 0.591601, -0.788447,
		0.731656, 0.460985, 0.502167,
		0.660545, -0.661439, -0.355217,
		29.951048, 40.668144, 25.372808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070293, 41.492546, 25.427292>,  <29.488667, 41.131153, 25.621460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070293, 41.492546, 25.427292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.107927, 41.150715, 25.223003>,  <30.130508, 40.945614, 25.100430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.107927, 41.150715, 25.223003>,  <30.070293, 41.492546, 25.427292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107927, 41.150715, 25.223003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082449, 0.517924, -0.851444,
		0.992144, 0.038002, 0.119189,
		0.094087, -0.854582, -0.510722,
		30.136154, 40.894341, 25.069786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710922, 41.583237, 24.968382>,  <30.070293, 41.492546, 25.427292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710922, 41.583237, 24.968382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.468925, 41.311810, 24.801756>,  <30.323727, 41.148952, 24.701780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.468925, 41.311810, 24.801756>,  <30.710922, 41.583237, 24.968382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468925, 41.311810, 24.801756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118510, 0.440603, -0.889845,
		0.787362, -0.587717, -0.186144,
		-0.604992, -0.678570, -0.416565,
		30.287428, 41.108238, 24.676786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264057, 41.390469, 24.823952>,  <30.710922, 41.583237, 24.968382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264057, 41.390469, 24.823952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557381, 41.612957, 24.980352>,  <31.733374, 41.746449, 25.074192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557381, 41.612957, 24.980352>,  <31.264057, 41.390469, 24.823952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557381, 41.612957, 24.980352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059782, -0.520111, 0.852004,
		0.677265, -0.648155, -0.348149,
		0.733306, 0.556219, 0.391001,
		31.777372, 41.779823, 25.097652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830378, 40.897861, 25.168505>,  <31.264057, 41.390469, 24.823952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830378, 40.897861, 25.168505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887983, 41.259361, 25.329752>,  <31.922546, 41.476261, 25.426500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887983, 41.259361, 25.329752>,  <31.830378, 40.897861, 25.168505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887983, 41.259361, 25.329752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282622, -0.427962, 0.858472,
		0.948359, -0.009700, -0.317050,
		0.144013, 0.903745, 0.403120,
		31.931187, 41.530483, 25.450687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544735, 40.953091, 25.569494>,  <31.830378, 40.897861, 25.168505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544735, 40.953091, 25.569494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322521, 41.252445, 25.714437>,  <32.189194, 41.432056, 25.801403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322521, 41.252445, 25.714437>,  <32.544735, 40.953091, 25.569494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322521, 41.252445, 25.714437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234113, -0.277381, 0.931800,
		0.797853, 0.602482, -0.021111,
		-0.555537, 0.748382, 0.362358,
		32.155861, 41.476959, 25.823145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882595, 41.341240, 26.044107>,  <32.544735, 40.953091, 25.569494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882595, 41.341240, 26.044107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.513283, 41.442745, 26.159456>,  <32.291695, 41.503647, 26.228664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.513283, 41.442745, 26.159456>,  <32.882595, 41.341240, 26.044107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513283, 41.442745, 26.159456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256912, -0.150164, 0.954697,
		0.285567, 0.955540, 0.073449,
		-0.923281, 0.253760, 0.288371,
		32.236298, 41.518871, 26.245968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028679, 41.708473, 26.758141>,  <32.882595, 41.341240, 26.044107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028679, 41.708473, 26.758141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.637836, 41.627602, 26.731653>,  <32.403332, 41.579079, 26.715761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.637836, 41.627602, 26.731653>,  <33.028679, 41.708473, 26.758141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637836, 41.627602, 26.731653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073122, 0.026861, 0.996961,
		-0.199786, 0.978980, -0.041030,
		-0.977107, -0.202179, -0.066218,
		32.344704, 41.566948, 26.711788>
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
